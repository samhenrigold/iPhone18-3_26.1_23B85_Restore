unint64_t lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus()
{
  result = lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus;
  if (!lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus)
  {
    type metadata accessor for CallScreeningStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus;
  if (!lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus)
  {
    type metadata accessor for CallScreeningStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus);
  }

  return result;
}

uint64_t sub_1BBCCD160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CallScreeningStatus();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v5, v4);
}

{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[19];
  v21 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[6];
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v8);
  OUTLINED_FUNCTION_5_23();
  outlined init with copy of AnsweringMachineCallStatus(v7, v2, v9);
  static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_3_39(v11, MEMORY[0x1E69E85E0]);
  outlined init with take of CallScreening.CallStateObserver(v2, v12 + v10, v13);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v0[28] = v14;
  v0[4] = *(*(v7 + *(v21 + 24)) + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMR);
  v16 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMR, MEMORY[0x1E695BF88]);
  MEMORY[0x1BFB1DE80](v15, v16);
  AsyncPublisher.makeAsyncIterator()();
  (*(v5 + 8))(v4, v6);
  v0[29] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<AnsweringMachineCallStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[30] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_1_46(v17);

  return MEMORY[0x1EEE6D8C8](v19);
}

{
  OUTLINED_FUNCTION_9();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v3, v4, "Started listening to call state changes for StateMachine");
    OUTLINED_FUNCTION_27();
  }

  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);

  return CallScreening.CallStateObserver.updateStateMachine()();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
      OUTLINED_FUNCTION_28_5();
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
    }

    v8 = closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
      OUTLINED_FUNCTION_28_5();
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
    }

    v8 = closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v1, v2);
}

{
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[9]) == 1)
  {
    v2 = v0[28];
    (*(v0[16] + 8))(v0[17], v0[15]);

    MEMORY[0x1BFB21000](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v5, v6, "Stopped listening to call state changes for StateMachine");
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();

    return v7();
  }

  else
  {
    v9 = v0[18];
    v10 = v0[6];
    outlined init with take of CallScreening.CallStateObserver(v1, v0[10], type metadata accessor for AnsweringMachineCallStatus);
    v0[32] = *(v10 + *(v9 + 20));
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);

    return CKStateMachine<>.update(with:)();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 40) = *(v0 + 248);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = MEMORY[0x1E69E73E0];
  v3 = OUTLINED_FUNCTION_31_9(v1);
  v4 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v3, v2, v4);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    v7 = v3[25];
    v8 = v3[26];

    return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v7, v8);
  }

  else
  {
    v12 = (v3[7] + *v3[7]);
    v9 = swift_task_alloc();
    v3[35] = v9;
    *v9 = v5;
    v9[1] = closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
    v10 = v3[10];

    return v12(v10);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of AnsweringMachineCallStatus(v0[10]);
  v0[29] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<AnsweringMachineCallStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMR);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[30] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_46(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for shared);
  }

  v0 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v0[2] = specialized CKStateMachine.description.getter();
  v0[3] = v1;
  v0[36] = v1;
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v2, v3);
}

void AudioCallManager.CallsCache.addCall(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *v2;
  v5 = v2[2];
  v6 = *(v4 + 96);
  v8[1] = *(v4 + 80);
  v8[2] = v6;
  v9 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd, &_sSo10NSMapTableCMR);
  OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(a2, v8, v5, v7, MEMORY[0x1E69E7CA8] + 8);
}

void closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

void closure #1 in AudioCallManager.CallsCache.addCall(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = (*(a6 + 16))(a3, a6);
  v9 = MEMORY[0x1BFB209B0](v8);

  [v7 setObject:a2 forKey:v9];
}

uint64_t AudioCallManager.resolveAndPresent()()
{
  *(v1 + 112) = v0;
  *(v1 + 120) = *v0;
  return MEMORY[0x1EEE6DFA0](AudioCallManager.resolveAndPresent(), 0, 0);
}

{
  v21 = v0;
  v1 = v0[15];
  AudioCallManager.callsCache.getter();
  v2 = AudioCallManager.CallsCache.calls.getter();

  v0[12] = v2;
  v3 = swift_task_alloc();
  v4 = v1[10];
  v3[2] = v4;
  v19 = v1[11];
  v3[3] = v19;
  v5 = v1[12];
  v3[4] = v5;
  v18 = v1[13];
  v3[5] = v18;
  type metadata accessor for Array();
  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();

  AudioCallManager.callsCache.getter();
  v6 = AudioCallManager.CallsCache.calls.getter();

  v0[13] = v6;
  v7 = swift_task_alloc();
  *&v8 = v4;
  *(&v8 + 1) = v19;
  *&v9 = v5;
  *(&v9 + 1) = v18;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  _ArrayProtocol.filter(_:)();

  v10 = static Array.+ infix(_:_:)();

  v11 = Array.startIndex.getter();

  after[0] = v11;
  if (v11 != MEMORY[0x1BFB20DE0](v10, v4))
  {
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v16 = *(v10 + 32 + 8 * v11);
        swift_unknownObjectRetain();
      }

      else
      {
        v16 = _ArrayBuffer._getElementSlowPath(_:)();
      }

      Array.formIndex(after:)(after);
      AudioCallManager.callsCache.getter();
      AudioCallManager.CallsCache.removeCall(_:)(v16);

      swift_unknownObjectRelease();
      v17 = MEMORY[0x1BFB20DE0](v10, v4);
      v11 = after[0];
    }

    while (after[0] != v17);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[16] = v12;
  *v12 = v13;
  v12[1] = AudioCallManager.resolveAndPresent();

  return AudioCallManager.resolveCallDisplay()();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](AudioCallManager.resolveAndPresent(), 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  AudioCallManager.presentCallsUsingPresentation(_:)(v0 + 16);
  outlined destroy of CallsPresentation(v0 + 16);
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()()
{
  OUTLINED_FUNCTION_24_0();

  CallHoldingButtonViewModel.updateButtonState()();
  OUTLINED_FUNCTION_13();

  return v0();
}

void CallHoldingButtonViewModel.updateButtonState()()
{
  v2 = v0;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 currentCalls];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter();
  swift_beginAccess();
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v7)
    {

      v15 = 0;
      v4 = 0;
      goto LABEL_17;
    }

    if (v8)
    {
      v9 = MEMORY[0x1BFB22010](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v4 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_30;
    }

    v1 = [v9 callUUID];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == *(v2 + 32) && v12 == *(v2 + 40))
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }

    ++v7;
  }

LABEL_16:

  v15 = [v4 status];
LABEL_17:
  v33[26] = v6 == v7;
  v16 = specialized Sequence<>.contains(_:)(v15 | ((v6 == v7) << 32), &outlined read-only object #0 of CallHoldingButtonViewModel.updateButtonState());
  if (v4)
  {
    v17 = [v4 smartHoldingAvailability] != 1;
  }

  else
  {
    v17 = 1;
  }

  swift_beginAccess();
  v18 = *(v2 + 60);
  if (v16 || (v18 & 1) == 0)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    LOBYTE(v1) = CallHoldingButtonViewModel.isWaitOnHoldActive()() ^ 1;
    v18 = *(v2 + 60);
  }

  if (v17 || (v18 & 1) == 0)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    LODWORD(v8) = *(v2 + 72);
  }

  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000020, 0x80000001BC5123D0);
  v7 = v20;
  if (v20)
  {
    v21 = v20;
    v22 = MEMORY[0x1BFB209B0](0x6E65646469487369, 0xE800000000000000);
    LODWORD(v5) = [v21 BOOLForKey_];
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (one-time initialization token for callHolding != -1)
  {
    goto LABEL_42;
  }

LABEL_30:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.callHolding);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109632;
    *(v26 + 4) = v1 & 1;
    *(v26 + 8) = 1024;
    *(v26 + 10) = v8;
    *(v26 + 14) = 1024;
    *(v26 + 16) = v5;
    _os_log_impl(&dword_1BBC58000, v24, v25, "CallHoldingButtonViewModel: enabled: %{BOOL}d, canShow: %{BOOL}d, isHiddenOverride: %{BOOL}d", v26, 0x14u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = *(v2 + 24);
    if (v1)
    {
      v30 = v5 ^ 1;
      v31 = v5 ^ 1;
      if (v8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      if (v8)
      {
LABEL_38:
        ObjectType = swift_getObjectType();
        v33[0] = v31;
        v33[1] = v5;
        (*(v29 + 8))(v33, ObjectType, v29);

        goto LABEL_39;
      }
    }

    LOBYTE(v5) = 1;
    v31 = v30;
    goto LABEL_38;
  }

LABEL_39:
}

uint64_t AudioCallManager.CallsCache.calls.getter()
{
  v1 = v0[2];
  v2 = *(*v0 + 96);
  v7 = *(*v0 + 80);
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd, &_sSo10NSMapTableCMR);
  v4 = type metadata accessor for Array();
  OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(partial apply for closure #1 in AudioCallManager.CallsCache.calls.getter, v6, v1, v3, v4);
  return v9;
}

Swift::Void __swiftcall CallHoldingButtonViewController.configureButton(_:)(ConversationKit::CallHoldingButtonConfiguration a1)
{
  v2 = v1;
  v3 = *(*&a1.isEnabled + 1);
  v4 = CallHoldingButtonViewController.button.getter();
  [v4 setHidden_];

  v5 = OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button;
  v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button);
  CallHoldingButton.isEnabled.setter();

  v7 = *(v2 + v5);

  [v7 updateConfiguration];
}

BOOL closure #1 in AudioCallManager.resolveAndPresent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 120))(a2, a3) & 1) == 0)
  {
    return 0;
  }

  (*(a3 + 192))(a2, a3);
  v5 = specialized Set.count.getter();

  return v5 > 1;
}

id CallHoldingButtonViewController.button.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button);
  }

  else
  {
    v4 = v0;
    type metadata accessor for CallHoldingButton();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 addTarget:v4 action:sel_buttonTapped forControlEvents:64];
    swift_beginAccess();
    CallHoldingButton.isEnabled.setter();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t AudioCallManager.resolveCallDisplay()()
{
  OUTLINED_FUNCTION_24_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[14] = *v0;
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AudioCallManager.resolveCallDisplay(), v4, v3);
}

{
  v20 = v0;
  v1 = *(v0 + 104);

  v3 = (*(*v1 + 304))(v2);
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 104);
    AudioCallManager.callsCache.getter();
    AudioCallManager.CallsCache.calls.getter();

    if ((*(*v7 + 256))(v8) & 1) != 0 && ((*(**(v0 + 104) + 280))())
    {
      type metadata accessor for SpringBoardUtilities();
      v9 = !static SpringBoardUtilities.checkSpringBoardState(for:)(0xD00000000000002DLL, 0x80000001BC4F49E0);
    }

    else
    {
      v9 = 0;
    }

    if (AudioCallManager.callResolver.getter())
    {
      v11 = v10;
      v12 = *(v0 + 96);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_AA18CompactPresentableAA04FullE0pMd, &_s15ConversationKit4Call_AA18CompactPresentableAA04FullE0pMR);
      v14 = _arrayForceCast<A, B>(_:)();

      (*(v11 + 32))(__src, v14, v5, v6, v9, ObjectType, v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      memcpy(v12, __src, 0x50uLL);
      goto LABEL_11;
    }

    v15 = *(v0 + 96);
    swift_unknownObjectRelease();

    *(v0 + 48) = 0;
    v16 = 0uLL;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    v15 = *(v0 + 96);
    v16 = 0uLL;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  *(v0 + 56) = v16;
  *(v0 + 72) = v16;
  *(v0 + 88) = 0;
  v15[3] = v16;
  v15[4] = v16;
  v15[1] = v16;
  v15[2] = v16;
  *v15 = v16;
  outlined assign with take of Participant?(v0 + 16, v15, &_s15ConversationKit18CompactPresentable_pSgMd, &_s15ConversationKit18CompactPresentable_pSgMR);
  outlined assign with take of Participant?(v0 + 56, v15 + 40, &_s15ConversationKit15FullPresentable_pSgMd, &_s15ConversationKit15FullPresentable_pSgMR);
LABEL_11:
  OUTLINED_FUNCTION_13();

  return v17();
}

id CallHoldingButtonViewModel.isWaitOnHoldActive()()
{
  v1 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  v4 = MEMORY[0x1BFB209B0](v2, v3);

  v5 = [v1 callWithCallUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 isWaitOnHoldActive];

  return v6;
}

void closure #1 in AudioCallManager.CallsCache.removeCall(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = (*(a6 + 16))(a3, a6);
  v8 = MEMORY[0x1BFB209B0](v7);

  [v6 removeObjectForKey_];
}

uint64_t partial apply for closure #1 in ShareViewController.startProcessInputItemsTask()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in ShareViewController.startProcessInputItemsTask();

  return closure #1 in ShareViewController.startProcessInputItemsTask()(v3, v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();

      v9 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_37_3())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_0();
      (*(v15 + 8))(v1 + v4);
      v16 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v16);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v17)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  v18 = v0[9];
  v19 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_58(v19))
  {
    OUTLINED_FUNCTION_71();
    (*(v20 + 8))(v5 + v18, v2);
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_47Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v1 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v1))
      {
        OUTLINED_FUNCTION_16_3();
        v2 = OUTLINED_FUNCTION_53_0();
        v3(v2);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v4 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v4))
      {
        OUTLINED_FUNCTION_16_3();
        v5 = OUTLINED_FUNCTION_53_0();
        v6(v5);
      }

      OUTLINED_FUNCTION_73_0();
      if (v7)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v8 = OUTLINED_FUNCTION_53_0();
        v9(v8);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v0);
      v11 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v11);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v12)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v13 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v13))
  {
    OUTLINED_FUNCTION_71();
    v14 = OUTLINED_FUNCTION_177();
    v15(v14);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
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
      (*(v13 + 8))(v0 + v2);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v15 = (v3 + *(v14 + 48));

      if (v15[15] >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v15 + 12);
      }

      if (v15[39])
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v14 + 64) + 8))
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
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v10 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8 + v10, v9);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_6()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      v2 = type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = type metadata accessor for Date();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();

      v9 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      v12 = *(v5 + *(v2 + 44));
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v15 + 8))(v1 + v4);
      v16 = type metadata accessor for RecentOngoingConversationMetadata(0);

      OUTLINED_FUNCTION_91_1();
      v2 = v5 + *(v16 + 28);
      if (*v2)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  v17 = v0[9];
  v18 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_58(v18))
  {
    (*(*(v2 - 8) + 8))(v5 + v17, v2);
  }

  OUTLINED_FUNCTION_59_2();

  return swift_deallocObject();
}

id closure #1 in ConversationController.handleCallStatusDidChange(_:)(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v5 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v6 = *v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v4) = specialized == infix(_:_:)(a1, v4, v6);
  swift_unknownObjectRelease();
  if (v4)
  {
    v7 = v5[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 184);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    v11 = [v10 supportsDynamicSystemUI];

    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      v13 = [v12 groupConversations];

      if (v13)
      {
        if (TUDeviceHasChinaSKU())
        {
          v14 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged;
          swift_beginAccess();
          v15 = *v14;
          if (*v14)
          {
            v16 = *(v14 + 8);
            v17 = v5[1];
            outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v15, v16);
            v18 = swift_unknownObjectRetain();
            v15(v18, v17);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v15, v16);
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  result = [a1 status];
  if (result == 6)
  {
    v20 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange;
    result = swift_beginAccess();
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 8);
      v23 = v5[1];
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v21, v22);
      v24 = swift_unknownObjectRetain();
      v21(v24, v23);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v21, v22);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized == infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    v3 = 1;
    return v3 & 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3 = static NSObject.== infix(_:_:)();
LABEL_9:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v3 & 1;
    }

    goto LABEL_10;
  }

  type metadata accessor for PlaceholderCall(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3 = static PlaceholderCall.== infix(_:_:)(v5);
      goto LABEL_9;
    }

LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  _StringGuts.grow(_:)(40);

  swift_getObjectType();
  v7 = _typeName(_:qualified:)();
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](0x203A736872202CLL, 0xE700000000000000);
  swift_getObjectType();
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1BFB20B10](v8);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id @nonobjc UIWindowScene.traitCollection.getter()
{
  v1 = [v0 traitCollection];

  return v1;
}

void closure #6 in ConversationControlsManager.setupConversationControllerLocalStateObservers()(char a1, char *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1BBC58000, v11, v12, "carPlayConnectedDidChange: %{BOOL}d", v13, 8u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v14 = ConversationController.localVideoSupported.getter();
  v15 = v14;
  v17 = ConversationControlsManager.localVideoButtonState.getter(v14, v16);
  ConversationControlsManager.localVideoButtonState.setter(v17 & 0x100 | v15 & 1u, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], BYTE2(v26[1]), SHIBYTE(v26[1]));
}

uint64_t ConversationControlsManager.localVideoButtonState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_0();
  static Published.subscript.getter();

  return v3;
}

void ConversationControlsManager.localVideoButtonState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, char a13)
{
  OUTLINED_FUNCTION_272();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_208();
  static Published.subscript.getter();

  swift_getKeyPath();
  OUTLINED_FUNCTION_332();
  swift_getKeyPath();
  v13;
  OUTLINED_FUNCTION_30_20();
  static Published.subscript.setter();
  if (a13)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  ConversationControlsManager.localVideoButtonState.didset(v14 | a12);
  OUTLINED_FUNCTION_194_0();
}

uint64_t OUTLINED_FUNCTION_362()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void ConversationControlsManager.localVideoButtonState.didset(int a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x6E0);
  v4 = v3() ^ a1;
  if (v4 & 1) != 0 || ((v4 >> 8))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19[0] = v10;
      *v9 = 136315138;
      v3();
      v11 = >> prefix<A>(_:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "localVideoButtonState: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      v14 = v9;
      v2 = MEMORY[0x1E69E7D40];
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    if ((*((*v2 & *v6) + 0x380))() & 1) != 0 || (swift_beginAccess(), (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation))
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1BBC58000, v15, v16, "Not posting alert for the local video state changing since we're in an AVLess conversation", v17, 2u);
        MEMORY[0x1BFB23DF0](v17, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        v18 = ConversationControlsManager.localVideoStateChangedAlert.getter();
        (*((*v2 & *v6) + 0x8E0))(v18);
      }
    }
  }
}

uint64_t sub_1BBCD0124(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CallScreeningStatus();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t outlined init with take of CallScreening.CallStateObserver(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t CKStateMachine<>.update(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[19] = v2;
  v1[20] = v0;
  type metadata accessor for AnsweringMachineCallStatus(0);
  v1[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for shared);
  }

  v3 = static CKStateMachineActor.shared;
  v1[22] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CKStateMachine<>.update(with:), v3, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  *(v0 + 184) = direct field offset for CKStateMachine.logger;
  outlined init with copy of AnsweringMachineCallStatus(v2, v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = specialized CKStateMachine.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = AnsweringMachineCallStatus.description.getter();
    v13 = v12;
    outlined destroy of AnsweringMachineCallStatus(v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Updating %{public}s with callupdate %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of AnsweringMachineCallStatus(v6);
  }

  v15 = (*(v0 + 160) + *(**(v0 + 160) + 104));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  *(v0 + 64) = *(v15 + 6);
  *(v0 + 32) = v17;
  *(v0 + 48) = v18;
  *(v0 + 16) = v16;
  outlined init with copy of CallScreening.State(v0 + 16, v0 + 72);
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = CKStateMachine<>.update(with:);

  return CallScreening.State.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v3 + 200) = v0;

  if (v0)
  {
    v6 = *(v3 + 176);

    return MEMORY[0x1EEE6DFA0](CKStateMachine<>.update(with:), v6, 0);
  }

  else
  {
    outlined destroy of CallScreening.State(v3 + 16);

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

{
  v1 = *(v0 + 200);
  outlined destroy of CallScreening.State(v0 + 16);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Failed to update callStatus with error: %{public}@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t closure #1 in AudioCallManager.CallsCache.calls.getter@<X0>(id *a1@<X0>, uint64_t *a6@<X8>)
{
  v10 = [*a1 objectEnumerator];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSEnumeratorCSgMd, &_sSo12NSEnumeratorCSgMR);
  v7 = type metadata accessor for Array();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in AudioCallManager.CallsCache.calls.getter, MEMORY[0x1E69E73E0], v7, v8, &v11);

  result = v11;
  if (!v11)
  {
    result = static Array._allocateUninitialized(_:)();
  }

  *a6 = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v21, 1, v27);
}

uint64_t closure #1 in closure #1 in AudioCallManager.CallsCache.calls.getter@<X0>(uint64_t *a6@<X8>)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSEnumerator, 0x1E695DF28);
  lazy protocol witness table accessor for type NSEnumerator and conformance NSEnumerator();
  result = Sequence.compactMap<A>(_:)();
  *a6 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSEnumerator and conformance NSEnumerator()
{
  result = lazy protocol witness table cache variable for type NSEnumerator and conformance NSEnumerator;
  if (!lazy protocol witness table cache variable for type NSEnumerator and conformance NSEnumerator)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSEnumerator, 0x1E695DF28);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSEnumerator and conformance NSEnumerator);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AudioCallManager.CallsCache.calls.getter@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  outlined init with copy of Any(a1, &v5);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
  }

  return result;
}

unint64_t specialized CKStateMachine.description.getter()
{
  *(&v9[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v7 = 0xD000000000000016;
  v8 = 0x80000001BC4F5930;
  *&v9[0] = v0;
  v1 = _Pointer.debugDescription.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC4F5950);
  v2 = *&v9[0] + *(**&v9[0] + 104);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v3;
  v9[2] = *(v2 + 32);
  v10 = *(v2 + 48);
  outlined init with copy of CallScreening.State(v9, &v6);
  v4 = CallScreening.State.description.getter();
  MEMORY[0x1BFB20B10](v4);

  outlined destroy of CallScreening.State(v9);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v7;
}

uint64_t CallsPresentation.init(compact:full:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  outlined assign with take of Participant?(a1, a3, &_s15ConversationKit18CompactPresentable_pSgMd, &_s15ConversationKit18CompactPresentable_pSgMR);
  return outlined assign with take of Participant?(a2, a3 + 40, &_s15ConversationKit15FullPresentable_pSgMd, &_s15ConversationKit15FullPresentable_pSgMR);
}

id TUCall.associatedCallGroup(in:)(void *a1)
{
  v2 = [a1 currentCallGroups];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter();
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {

      return 0;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6 == 0, v3);
    result = v6 ? MEMORY[0x1BFB22010](v5, v3) : *(v3 + 8 * v5 + 32);
    v8 = result;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [result calls];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v1;
    MEMORY[0x1EEE9AC00](v11);
    v12[2] = &v13;
    LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v10);

    if (v9)
    {

      return v8;
    }

    ++v5;
  }

  __break(1u);
  return result;
}

unint64_t CallScreening.State.description.getter()
{
  result = 0x6C616974696E692ELL;
  switch(*(v0 + 48) >> 61)
  {
    case 1:
      return 0xD000000000000019;
    case 2:
      OUTLINED_FUNCTION_3_32();
      v3 = 0x676E696B63617274;
      v2 = specialized CallScreeningTrackingState.description.getter();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_4_22();
      v2 = specialized CallScreeningAnsweringState.description.getter();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_3_32();
      OUTLINED_FUNCTION_4_22();
      v2 = specialized CallScreeningScreeningState.description.getter();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_3_32();
      v3 = 0x20676E69646E652ELL;
      v2 = specialized CallScreeningEndingState.description.getter();
LABEL_7:
      MEMORY[0x1BFB20B10](v2);

      result = v3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CallScreening.State.update(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[25] = v2;
  v1[26] = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8(&one-time initialization token for shared);
  }

  v3 = static CKStateMachineActor.shared;
  v1[27] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreening.State.update(with:), v3, 0);
}

{
  v1 = *(v0 + 208);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  switch(v8 >> 61)
  {
    case 1uLL:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27CallScreeningListeningStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd, &_s15ConversationKit27CallScreeningListeningStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMR);
      v17 = &protocol witness table for CallScreeningListeningState<A>;
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for CallScreeningListeningState<A>;
      *(v0 + 16) = v3;
      *(v0 + 24) = v2;
      *(v0 + 32) = v4;
      goto LABEL_10;
    case 2uLL:
      *(v0 + 104) = v4;
      *(v0 + 112) = v5;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26CallScreeningTrackingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd, &_s15ConversationKit26CallScreeningTrackingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMR);
      v17 = &protocol witness table for CallScreeningTrackingState<A>;
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for CallScreeningTrackingState<A>;
      OUTLINED_FUNCTION_53_3();
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_1_109(v20);
      v21[6] = v6;
      v21[7] = v7;

      outlined init with copy of String(v0 + 104, v0 + 184);
      goto LABEL_10;
    case 3uLL:
      *(v0 + 120) = v3;
      *(v0 + 128) = v2;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27CallScreeningAnsweringStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd, &_s15ConversationKit27CallScreeningAnsweringStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMR);
      v17 = &protocol witness table for CallScreeningAnsweringState<A>;
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for CallScreeningAnsweringState<A>;
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_1_109(v22)[6] = v6;
      outlined init with copy of String(v0 + 120, v0 + 168);
      goto LABEL_10;
    case 4uLL:
      v15 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      *(v0 + 136) = v3;
      *(v0 + 144) = v2;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013CallScreeningD5StateVyAA14CKStateMachineCyAA0cD0O0E0OGGMd, &_s15ConversationKit013CallScreeningD5StateVyAA14CKStateMachineCyAA0cD0O0E0OGGMR);
      v17 = &protocol witness table for CallScreeningScreeningState<A>;
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for CallScreeningScreeningState<A>;
      v18 = swift_allocObject();
      v19 = OUTLINED_FUNCTION_1_109(v18);
      v19[6] = v6;
      v19[7] = v7;
      v19[8] = v15;
      outlined init with copy of String(v0 + 136, v0 + 152);

      goto LABEL_10;
    case 5uLL:
      *(v0 + 56) = v3;
      *(v0 + 64) = v2;
      *(v0 + 72) = v4;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24CallScreeningEndingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd, &_s15ConversationKit24CallScreeningEndingStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMR);
      v17 = &protocol witness table for CallScreeningEndingState<A>;
      *(v0 + 40) = v16;
      *(v0 + 48) = &protocol witness table for CallScreeningEndingState<A>;
      OUTLINED_FUNCTION_53_3();
      v23 = swift_allocObject();
      v24 = OUTLINED_FUNCTION_1_109(v23);
      v24[6] = v6;
      v24[7] = v7;
      outlined init with copy of CallScreening.EndingAction(v0 + 56, v0 + 80);
LABEL_10:

      __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
      OUTLINED_FUNCTION_5_87(v17);
      v28 = (v25 + *v25);
      v26 = swift_task_alloc();
      *(v0 + 224) = v26;
      *v26 = v0;
      v26[1] = CallScreening.State.update(with:);
      v27 = *(v0 + 200);

      result = (v28)(v27, v16, v17);
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14CKStateMachineC5ErrorOyAA13CallScreeningO5StateO_GMd, &_s15ConversationKit14CKStateMachineC5ErrorOyAA13CallScreeningO5StateO_GMR);
      lazy protocol witness table accessor for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error();
      swift_allocError();
      v10 = v9;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1BFB20B10](0xD000000000000036, 0x80000001BC505B70);
      v11 = AnsweringMachineCallStatus.description.getter();
      MEMORY[0x1BFB20B10](v11);

      MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC505BB0);
      v12 = CallScreening.State.description.getter();
      MEMORY[0x1BFB20B10](v12);

      *v10 = 0;
      *(v10 + 8) = 0xE000000000000000;
      *(v10 + 73) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_13();

      result = v13();
      break;
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = CallScreening.State.update(with:);
  }

  else
  {
    v4 = CallScreening.State.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1BBCD1900()
{
  outlined consume of CallScreening.EndingAction(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_53_3();

  return swift_deallocObject();
}

uint64_t sub_1BBCD1948()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCD1998()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCD19E0()
{

  OUTLINED_FUNCTION_53_3();

  return swift_deallocObject();
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningListeningState<A>(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *v9 = v3;
  v9[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningListeningState<A>;

  return CallScreeningListeningState.update(with:)(a1, v6, v7, v8, v10, v11);
}

uint64_t CallScreeningListeningState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = type metadata accessor for CallScreeningStatus();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for AnsweringMachineCallStatus(0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CKStateMachineActor.shared;
  v6[21] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningListeningState.update(with:), v9, 0);
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit15FullPresentable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void CallScreeningListeningState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = *(v4 + 48);
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  *(v4 + 32) = *(v4 + 64);
  v7 = type metadata accessor for CallScreeningListeningState(0, v5, v6, a4);
  OUTLINED_FUNCTION_0_215();
  WitnessTable = swift_getWitnessTable();
  v9 = CallScreeningState.stateMachine.getter(v7, WitnessTable);
  *(v4 + 176) = v9;
  if (v9)
  {
    v10 = *(v4 + 128);
    v11 = *(v4 + 72);
    v12 = *(v4 + 40);
    v13 = *(v4 + 80);
    v14 = *(v13 + 16);
    *(v4 + 184) = v14;
    *(v4 + 192) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0x5F58000000000000;
    v14(v11);
    outlined init with copy of AnsweringMachineCallStatus(v12, v10);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v4 + 160);
    v20 = *(v4 + 136);
    v19 = *(v4 + 144);
    v21 = *(v4 + 128);
    if (v17)
    {
      v35 = *(v4 + 160);
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v22 = 136446466;

      v23 = OUTLINED_FUNCTION_1_182();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, 0xEE00657461745367, &v36);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = AnsweringMachineCallStatus.description.getter();
      v27 = v26;
      outlined destroy of AnsweringMachineCallStatus(v21);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v36);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1BBC58000, v15, v16, "%{public}s recieved callUpdate %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      v29 = *(v19 + 8);
      v29(v35, v20);
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v21);
      v29 = *(v19 + 8);
      v29(v18, v20);
    }

    *(v4 + 200) = v29;
    v32 = swift_task_alloc();
    *(v4 + 208) = v32;
    *v32 = v4;
    v32[1] = CallScreeningListeningState.update(with:);
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_8_104();

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_13_3();

  __asm { BRAA            X1, X16 }
}

uint64_t CallScreeningState.stateMachine.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  v3 = (*(*v2 + 104))();

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14CKStateMachineCyAA13CallScreeningO5StateOGMd, &_s15ConversationKit14CKStateMachineCyAA13CallScreeningO5StateOGMR);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CallScreeningStateMachine.logger.getter in conformance <> CKStateMachine<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for CKStateMachine.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void closure #2 in CallRecordingButtonViewModel.observeNotification()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Notification.object.getter();
    if (!v16)
    {

      outlined destroy of TapInteractionHandler?(v15, &_sypSgMd, &_sypSgMR);
      return;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v4 = [v14 callUUID];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == *(v3 + 40) && v7 == *(v3 + 48))
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    v10 = [v14 recordingAvailability];
    swift_beginAccess();
    *(v3 + 60) = v10;
    CallRecordingButtonViewModel.updateButtonState()();
    v11 = [v14 recordingSession];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 recordingState];
    }

    else
    {
      v13 = 0;
    }

    swift_beginAccess();
    *(v3 + 64) = v13;
    *(v3 + 68) = v12 == 0;
    CallRecordingButtonViewModel.updateButtonState()();
    goto LABEL_17;
  }
}

uint64_t partial apply for closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = type metadata accessor for TelephonyUtilitiesServices(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_92(v6);
  *v7 = v8;
  v7[1] = CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:);

  return closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v2, v0 + v5);
}

uint64_t type metadata accessor for TelephonyUtilitiesServices(uint64_t a1)
{
  result = type metadata singleton initialization cache for TelephonyUtilitiesServices;
  if (!type metadata singleton initialization cache for TelephonyUtilitiesServices)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioCallManager.presentCallsUsingPresentation(_:)(uint64_t a1)
{
  v3 = outlined init with copy of Participant?(a1, v14, &_s15ConversationKit18CompactPresentable_pSgMd, &_s15ConversationKit18CompactPresentable_pSgMR);
  OUTLINED_FUNCTION_15_22(v3, v4);
  if (v1)
  {
    if (AudioCallManager.callPresenter.getter())
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(a1, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    result = AudioCallManager.callPresenter.getter();
    if (result)
    {
      v12 = v11;
      v13 = swift_getObjectType();
      (*(v12 + 16))(a1 + 40, v13, v12);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = outlined init with copy of Participant?(a1 + 40, v14, &_s15ConversationKit15FullPresentable_pSgMd, &_s15ConversationKit15FullPresentable_pSgMR);
    return OUTLINED_FUNCTION_15_22(v5, v6);
  }

  return result;
}

uint64_t closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v4, v3);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice, 0x1E69870A0);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient, 0x1E6996408);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  OUTLINED_FUNCTION_39_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v0 = OUTLINED_FUNCTION_45_10();
  return OUTLINED_FUNCTION_94_1(v0);
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t ScreenSharingStateMonitor.currentlySharingParticipant.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_currentlySharingParticipant;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v7, v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_30_2(v1 + v7, v9);
  outlined assign with copy of Participant?(a1, v1 + v7);
  swift_endAccess();
  ScreenSharingStateMonitor.currentlySharingParticipant.didset(v6);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
}

uint64_t outlined assign with copy of Participant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ScreenSharingStateMonitor.currentlySharingParticipant.didset(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v74 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSg_ADtMd, &_s15ConversationKit11ParticipantVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  v23 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_currentlySharingParticipant;
  swift_beginAccess();
  v24 = *(v20 + 56);
  v78 = a1;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v81 = v1;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v23, &v22[v24], &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v22, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v22[v24], 1, v3) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    goto LABEL_6;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(v22, v18, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(&v22[v24], 1, v3) == 1)
  {
    outlined destroy of Participant(v18);
LABEL_6:
    v26 = &_s15ConversationKit11ParticipantVSg_ADtMd;
    v27 = &_s15ConversationKit11ParticipantVSg_ADtMR;
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, v26, v27);
LABEL_12:
    outlined init with copy of (CGFloat, AutoplayCandidate)(v78, v15, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v30 = 0;
      v31 = v81;
      v32 = v79;
    }

    else
    {
      v33 = Participant.screenState.getter();
      v31 = v81;
      v32 = v79;
      if (v33 == 2)
      {
        v30 = 0;
      }

      else
      {
        v30 = Participant.isReceivingScreenFrames.getter();
      }

      outlined destroy of Participant(v15);
    }

    if (__swift_getEnumTagSinglePayload(v31 + v23, 1, v3))
    {
      v34 = 0;
    }

    else
    {
      outlined init with copy of Participant(v31 + v23, v32);
      if (Participant.screenState.getter() == 2)
      {
        v34 = 0;
      }

      else
      {
        v34 = Participant.isReceivingScreenFrames.getter();
      }

      outlined destroy of Participant(v32);
    }

    if (__swift_getEnumTagSinglePayload(v31 + v23, 1, v3))
    {
      v35 = (v30 ^ 1) & v34;
    }

    else
    {
      v36 = v76;
      outlined init with copy of Participant(v31 + v23, v76);
      v37 = Participant.screenState.getter();
      outlined destroy of Participant(v36);
      if (v30)
      {
        v35 = v37 != 2;
      }

      else
      {
        v35 = v34;
      }
    }

    if ((v30 & 1) != (v35 & 1))
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v38 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BC4BA940;
      v40 = v35 & 1;
      v82 = v40;
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      v44 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Screen sharing state will change to %@", 38, 2, &dword_1BBC58000, v38, v44, v39);

      ScreenSharingStateMonitor.didChangeScreenSharingState(_:)(v40);
    }

    v45 = v31 + v23;
    v46 = v80;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v45, v80, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v46, 1, v3) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v47 = static OS_os_log.conversationKit;
      v48 = static os_log_type_t.default.getter();
      return os_log(_:dso:log:type:_:)("No participant.  Skipping screen info update.", 45, 2, &dword_1BBC58000, v47, v48, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v49 = v46;
      v50 = v77;
      outlined init with take of Participant(v49, v77);
      ScreenSharingStateMonitor.didUpdateScreenInfoForParticipant(_:)(v50);
      return outlined destroy of Participant(v50);
    }
  }

  v28 = v75;
  outlined init with take of Participant(&v22[v24], v75);
  static Participant.State.== infix(_:_:)();
  if ((v29 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*(v28 + *(v3 + 28)) == 0) != (*&v18[*(v3 + 28)] == 0))
  {
    outlined destroy of Participant(v28);
    outlined destroy of Participant(v18);
    v26 = &_s15ConversationKit11ParticipantVSgMd;
    v27 = &_s15ConversationKit11ParticipantVSgMR;
    goto LABEL_11;
  }

  v51 = *(v3 + 24);
  v52 = v18[v51];
  v53 = v18[v51 + 1];
  v54 = v18[v51 + 2];
  v55 = v18[v51 + 3];
  v56 = v18[v51 + 4];
  v57 = (v28 + v51);
  v58 = *v57;
  v59 = v57[1];
  v60 = v57[2];
  v61 = v57[3];
  v62 = v57[4];
  if (v56)
  {
    v63 = 0x100000000;
  }

  else
  {
    v63 = 0;
  }

  if (v55)
  {
    v64 = 0x1000000;
  }

  else
  {
    v64 = 0;
  }

  v65 = v54 == 0;
  v66 = 0x10000;
  if (v65)
  {
    v67 = 0;
  }

  else
  {
    v67 = 0x10000;
  }

  v65 = v53 == 0;
  v68 = 256;
  if (v65)
  {
    v69 = 0;
  }

  else
  {
    v69 = 256;
  }

  v70 = v69 | v52 | v67 | v64;
  if (v62)
  {
    v71 = 0x100000000;
  }

  else
  {
    v71 = 0;
  }

  if (v61)
  {
    v72 = 0x1000000;
  }

  else
  {
    v72 = 0;
  }

  if (!v60)
  {
    v66 = 0;
  }

  if (!v59)
  {
    v68 = 0;
  }

  v73 = static Participant.Capabilities.== infix(_:_:)(v70 | v63, v68 | v58 | v66 | v72 | v71);
  outlined destroy of Participant(v28);
  outlined destroy of Participant(v18);
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (!v73)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t ScreenSharingStateMonitor.didChangeScreenSharingState(_:)(char a1)
{
  v4 = ScreenSharingStateMonitor.currentObservers()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  v5 = static OS_os_log.conversationKit;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = OUTLINED_FUNCTION_54(v6);
  *(v7 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = lazy protocol witness table accessor for type String and conformance String();
  v17 = OUTLINED_FUNCTION_14_27(v9);
  v10 = String.init<A>(reflecting:)();
  *(v7 + 96) = v8;
  *(v7 + 104) = v2;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Changed Screen Sharing state to %@; notifying %@ observers", 58, 2, &dword_1BBC58000, v5, v12, v7, v17);

  result = specialized Array.count.getter();
  if (!result)
  {
  }

  v14 = result;
  if (result >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB22010](i, v4);
      }

      else
      {
        v16 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v16 respondsToSelector_])
      {
        [v16 screenSharingStateMonitor:v1 didUpdateScreenSharingState:a1 & 1];
      }

      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t ScreenSharingStateMonitor.currentObservers()()
{
  v1 = v0;
  v38 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_observations;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v0 + v2) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v39 = *(v0 + v2);

  v12 = 0;
  v40 = v5;
  v41 = v0;
  v43 = v2;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (v13 << 9) | (8 * v14);
    v16 = *(*(v39 + 48) + v15);
    outlined init with copy of ScreenSharingStateMonitor.Observation(*(v39 + 56) + v15, &v47);
    v45 = v16;
    outlined init with take of ScreenSharingStateMonitor.Observation(&v47, &v46);
LABEL_11:
    outlined init with take of (key: ObjectIdentifier, value: ScreenSharingStateMonitor.Observation)?(&v45, &v50);
    v17 = v50;
    if (!v50)
    {

      return v38;
    }

    outlined init with take of ScreenSharingStateMonitor.Observation(&v51, v49);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = swift_unknownObjectRetain();
      MEMORY[0x1BFB20CC0](v37);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
      result = outlined destroy of ScreenSharingStateMonitor.Observation(v49);
      v38 = v52;
    }

    else
    {
      OUTLINED_FUNCTION_30_2(v1 + v2, &v45);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      v20 = v19;
      if (v19)
      {
        v21 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v1 + v43);
        v23 = v44;
        *(v1 + v43) = 0x8000000000000000;
        v24 = *(v23 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd, &_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
        v25 = v44;
        outlined init with take of ScreenSharingStateMonitor.Observation(*(v44 + 56) + 8 * v21, &v47);
        _NativeDictionary._delete(at:)();
        *(v1 + v43) = v25;
      }

      else
      {
        v47 = 0;
      }

      v48 = (v20 & 1) == 0;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v47, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
      swift_endAccess();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_89();
        swift_once();
      }

      v42 = static OS_os_log.conversationKit;
      v26 = static os_log_type_t.debug.getter();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = OUTLINED_FUNCTION_54(v27);
      *(v28 + 16) = xmmword_1BC4BAA20;
      outlined init with copy of ScreenSharingStateMonitor.Observation(v49, &v45);
      LOBYTE(v46) = 0;
      outlined init with copy of (CGFloat, AutoplayCandidate)(&v45, &v47, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
      if (v48)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v47, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v45, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
        v29 = 0xE300000000000000;
        v30 = 7104878;
      }

      else
      {
        outlined init with take of ScreenSharingStateMonitor.Observation(&v47, &v44);
        outlined init with copy of ScreenSharingStateMonitor.Observation(&v44, &v47);
        v30 = String.init<A>(reflecting:)();
        v29 = v31;
        outlined destroy of ScreenSharingStateMonitor.Observation(&v44);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v45, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMR);
      }

      v32 = MEMORY[0x1E69E6158];
      *(v28 + 56) = MEMORY[0x1E69E6158];
      v33 = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 64) = v33;
      *(v28 + 32) = v30;
      *(v28 + 40) = v29;
      v45 = ObjectIdentifier.debugDescription.getter();
      v46 = v34;
      v35 = String.init<A>(reflecting:)();
      *(v28 + 96) = v32;
      *(v28 + 104) = v33;
      *(v28 + 72) = v35;
      *(v28 + 80) = v36;
      os_log(_:dso:log:type:_:)("Pruning deallocated Screen Sharing observer %@ with ID %@", 57, 2, &dword_1BBC58000, v42, v26, v28);

      result = outlined destroy of ScreenSharingStateMonitor.Observation(v49);
      v5 = v40;
      v1 = v41;
      v2 = v43;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_11;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of (key: ObjectIdentifier, value: ScreenSharingStateMonitor.Observation)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSO3key_15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLV5valuetSgMd, &_sSO3key_15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 16);

  TelephonyUtilitiesServices.isScreenable(callUUID:manualScreening:)(v1[1], 0);
  OUTLINED_FUNCTION_0_23();
  v4 = v3 & 1;

  return v2(v4);
}

void TelephonyUtilitiesServices.preScreeningChecks(callUUID:function:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TelephonyUtilitiesServices(0);
  if ((*(v5 + *(v8 + 28)))())
  {
    v29 = a1;
    v28 = *v5;
    v9 = [*v5 currentCalls];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = specialized Array.count.getter();
    v12 = 0;
    while (v11 != v12)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB22010](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v15 = [v13 isConnected];

      ++v12;
      if (v15)
      {

        goto LABEL_15;
      }
    }

    v24 = [v28 activeVideoCall];
    if (!v24)
    {
      return;
    }

LABEL_15:
    TelephonyUtilitiesServices.setCallLVMUnavailableReason(callUUID:reason:)(v29, a2, 8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446466;
    v25 = StaticString.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v30);

    *(v18 + 4) = v27;
    *(v18 + 12) = 2082;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, a2, &v30);
    v23 = "%{public}s: %{public}s can not be screened because we already have an active call.";
    goto LABEL_17;
  }

  TelephonyUtilitiesServices.setCallLVMUnavailableReason(callUUID:reason:)(a1, a2, 6);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446466;
    v20 = StaticString.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v30);
    v23 = "%{public}s: %{public}s can not be screened because answering machine is unavailable.";
LABEL_17:
    _os_log_impl(&dword_1BBC58000, v16, v17, v23, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v19, -1, -1);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

LABEL_18:
}

Swift::Bool __swiftcall TelephonyUtilitiesServices.isScreenable(callUUID:manualScreening:)(Swift::String callUUID, Swift::Bool manualScreening)
{
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  TelephonyUtilitiesServices.preScreeningChecks(callUUID:function:)(callUUID._countAndFlagsBits, callUUID._object, "isScreenable(callUUID:manualScreening:)", 39, 2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = TelephonyUtilitiesServices.getCallFor(callUUID:)(countAndFlagsBits, object);
  if (!v6)
  {
    type metadata accessor for TelephonyUtilitiesServices(0);
    OUTLINED_FUNCTION_26_20();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_9_44();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v24 = swift_slowAlloc();
      v52 = v24;
      *v23 = 136446466;
      v26 = OUTLINED_FUNCTION_4_60(v24, v25);
      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *(v23 + 14) = OUTLINED_FUNCTION_11_42(v26, v27);
      _os_log_impl(&dword_1BBC58000, v19, v20, "%{public}s: Tracked call %{public}s no longer exists, returning NO for isScreenable", v23, 0x16u);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v28 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v28);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    goto LABEL_11;
  }

  v7 = v6;
  if (![v6 isIncoming])
  {
    type metadata accessor for TelephonyUtilitiesServices(0);
    OUTLINED_FUNCTION_26_20();
    v19 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v19, v29))
    {
LABEL_16:

LABEL_17:
      return 0;
    }

    OUTLINED_FUNCTION_9_44();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136446466;
    v33 = OUTLINED_FUNCTION_4_60(v31, v32);
    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    *(v30 + 14) = OUTLINED_FUNCTION_11_42(v33, v34);
    v35 = "%{public}s: Tracked call %{public}s can not be screened because its not an incoming call";
    goto LABEL_14;
  }

  if (manualScreening)
  {
    if (![v7 isEligibleForManualScreening])
    {
LABEL_6:
      type metadata accessor for TelephonyUtilitiesServices(0);
      OUTLINED_FUNCTION_26_20();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_23();
        v11 = swift_slowAlloc();
        v52 = v11;
        *v10 = 136446722;
        v13 = OUTLINED_FUNCTION_4_60(v11, v12);
        *(v10 + 4) = v13;
        *(v10 + 12) = 2082;
        *(v10 + 14) = OUTLINED_FUNCTION_11_42(v13, v14);
        *(v10 + 22) = 2082;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v15 = String.init<A>(describing:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v52);

        *(v10 + 24) = v17;
        _os_log_impl(&dword_1BBC58000, v8, v9, "%{public}s: Tracked call %{public}s Is not eligible for screening, recieved %{public}s from TUCall.isEligibleForScreening", v10, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        v18 = OUTLINED_FUNCTION_2_78();
        MEMORY[0x1BFB23DF0](v18);
      }

      TelephonyUtilitiesServices.setCallLVMUnavailableReason(callUUID:reason:)(countAndFlagsBits, object, [v7 liveVoicemailUnavailableReason]);
      goto LABEL_17;
    }
  }

  else if (([v7 isEligibleForScreening] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ([v7 isRTT] && !TUCallScreeningRTTEnabled())
  {
    type metadata accessor for TelephonyUtilitiesServices(0);
    OUTLINED_FUNCTION_26_20();
    v19 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v19, v29))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_9_44();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v30 = 136446466;
    v50 = OUTLINED_FUNCTION_4_60(v48, v49);
    *(v30 + 4) = v50;
    *(v30 + 12) = 2082;
    *(v30 + 14) = OUTLINED_FUNCTION_11_42(v50, v51);
    v35 = "%{public}s: Tracked call %{public}s Is not eligible for screening, it is a RTT call.";
LABEL_14:
    _os_log_impl(&dword_1BBC58000, v19, v29, v35, v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
LABEL_15:
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_16;
  }

  if ([v7 status] == 4)
  {

    return 1;
  }

  type metadata accessor for TelephonyUtilitiesServices(0);
  OUTLINED_FUNCTION_26_20();
  v7 = v7;
  v19 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = OUTLINED_FUNCTION_14_28();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_23();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v40 = 136446722;
    v43 = OUTLINED_FUNCTION_4_60(v41, v42);
    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    *(v40 + 14) = OUTLINED_FUNCTION_11_42(v43, v44);
    *(v40 + 22) = 2082;
    [v7 status];
    type metadata accessor for TUCallStatus(0);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v52);

    *(v40 + 24) = v47;
    _os_log_impl(&dword_1BBC58000, v19, v37, "%{public}s: Tracked call %{public}s Is not eligible for screening, status is %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_15;
  }

LABEL_11:
  return 0;
}

void TelephonyUtilitiesServices.setCallLVMUnavailableReason(callUUID:reason:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = TelephonyUtilitiesServices.getCallFor(callUUID:)(a1, a2);
  if (v7)
  {
    oslog = v7;
    [*v3 setLiveVoicemailUnavailableReason:a3 forCall:?];
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136446466;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x80000001BC4FF7C0, &v12);
      *(v9 + 12) = 2082;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
      _os_log_impl(&dword_1BBC58000, oslog, v8, "%{public}s: Tracked call %{public}s no longer exists, unable to set LVM unavailable reason.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }
  }
}

uint64_t ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(char a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  v4 = ScreenSharingStateMonitor.currentObservers()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  v5 = static OS_os_log.conversationKit;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = OUTLINED_FUNCTION_54(v6);
  *(v7 + 16) = xmmword_1BC4BAA20;
  String.init<A>(reflecting:)();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = lazy protocol witness table accessor for type String and conformance String();
  v17 = OUTLINED_FUNCTION_14_27(v9);
  v10 = String.init<A>(reflecting:)();
  *(v7 + 96) = v8;
  *(v7 + 104) = v2;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Changed Screen Sharing Broadcasting state to %@; notifying %@ observers", 71, 2, &dword_1BBC58000, v5, v12, v7, v17);

  result = specialized Array.count.getter();
  if (!result)
  {
  }

  v14 = result;
  if (result >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB22010](i, v4);
      }

      else
      {
        v16 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v16 respondsToSelector_])
      {
        [v16 screenSharingStateMonitor:v1 didUpdateScreenSharingBroadcastingState:a1 & 1];
      }

      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  OUTLINED_FUNCTION_0_23();

  return v5(v2);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  v3[1] = CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:);
  v5 = OUTLINED_FUNCTION_206();

  return CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v5, v6, v1, 0);
}

uint64_t ScreenSharingStateMonitor.isBroadcastingScreenSharing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing;
  result = OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallScreeningListeningState.update(with:)()
{
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  v4 = *(v3 + 168);
  v5 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v8 + 232) = v7;

  return MEMORY[0x1EEE6DFA0](CallScreeningListeningState.update(with:), v4, 0);
}

{
  if ((*(v0 + 232) & 1) != 0 || (v1 = *(v0 + 104), v2 = *(v0 + 88), v3 = *(v0 + 96), (*(v3 + 104))(v1, *MEMORY[0x1E6995E98], v2), v4 = CallScreeningStatus.isBaseCase(_:)(), (*(v3 + 8))(v1, v2), (v4 & 1) == 0))
  {
    v20 = swift_task_alloc();
    *(v0 + 216) = v20;
    *v20 = v0;
    v20[1] = CallScreeningListeningState.update(with:);
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X8, X16 }
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 40);
  (*(v0 + 184))(*(v0 + 72), *(v0 + 80));
  outlined init with copy of AnsweringMachineCallStatus(v6, v5);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 200);
  v11 = *(v0 + 152);
  v26 = *(v0 + 136);
  v12 = *(v0 + 120);
  if (v9)
  {
    v25 = *(v0 + 200);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;

    v14 = OUTLINED_FUNCTION_1_182();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, 0xEE00657461745367, &v28);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2082;
    v16 = AnsweringMachineCallStatus.description.getter();
    v18 = v17;
    outlined destroy of AnsweringMachineCallStatus(v12);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v28);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1BBC58000, v7, v8, "%{public}s Cannot screen call with %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    swift_unknownObjectRelease();

    v25(v11, v26);
  }

  else
  {

    swift_unknownObjectRelease();
    outlined destroy of AnsweringMachineCallStatus(v12);
    v10(v11, v26);
  }

  OUTLINED_FUNCTION_8_104();

  OUTLINED_FUNCTION_5_102();

  return v23();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = CallScreeningListeningState.update(with:);
  }

  else
  {
    v6 = CallScreeningListeningState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_104();

  OUTLINED_FUNCTION_5_102();

  return v0();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ScreenSharingInteractionController.hasJoinedOneToOneConversation.didset(char a1, uint64_t *a2, const char *a3)
{
  v5 = v3;
  v6 = a1 & 1;
  v7 = *a2;
  result = OUTLINED_FUNCTION_4_5(&v5[*a2], a2);
  if (v5[v7] != v6)
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v9, &static Log.screenSharing);
    v10 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v5[v7];

      _os_log_impl(&dword_1BBC58000, v11, v12, a3, v13, 8u);
      OUTLINED_FUNCTION_2_2();
    }

    else
    {

      v11 = v10;
    }

    return ScreenSharingInteractionController.updateInteractionSession()();
  }

  return result;
}

id CNKCallParticipantLabelDescriptorFactory.makeLabel()()
{
  v0 = objc_allocWithZone(type metadata accessor for CallParticipantLabelDescriptor());
  OUTLINED_FUNCTION_11_89();
  return CallParticipantLabelDescriptor.init(strings:secondaryString:sourceString:durationString:layoutState:)(v1, v2, v3, v4, v5, v6, 0, 0);
}

uint64_t ScreenSharingInteractionController.hasJoinedOneToOneConversation.setter(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_318();
  v7 = v6;
  v9 = *v8;
  swift_beginAccess();
  v10 = *(v4 + v9);
  *(v4 + v9) = v7;
  return ScreenSharingInteractionController.hasJoinedOneToOneConversation.didset(v10, v5, v3);
}

uint64_t ScreenSharingStateMonitor.isBroadcastingScreenSharing.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing, a2);
  return *(v2 + v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_13();

  return v8();
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningListeningState<A>()
{
  v1 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id CNKScreenSharingInteractionControllerFactory.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ScreenSharingInteractionController.shared;

  return v1;
}

uint64_t ScreenSharingInteractionController.remoteControlStatus.getter()
{
  if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))())
  {
    return 1;
  }

  OUTLINED_FUNCTION_27_15();
  v2 = (*(v1 + 456))();

  return v2;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.compose()()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_130(v1);
  v3 = OUTLINED_FUNCTION_46();

  return implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.compose()(v3, v4);
}

uint64_t ScreenSharingInteractionController.session.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_2();
  static Published.subscript.getter();

  return v3;
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.compose()(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.compose();

  return ViewModelCallStatusUpdateService.updateViewModel(with:)(a1, a2);
}

void CNKBannerPresentationManager.conversationIsAVLess.getter()
{
  OUTLINED_FUNCTION_11_97();
  v0 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_19_1(v1);
  OUTLINED_FUNCTION_5_130();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 472);
  v5 = v4;
  OUTLINED_FUNCTION_9_97();
  v6 = v3();

  if (v6)
  {
    OUTLINED_FUNCTION_2_20();
    (*(v7 + 896))();
  }

  OUTLINED_FUNCTION_10_84();
}

uint64_t ViewModelCallStatusUpdateService.updateViewModel(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for CallScreeningStatus();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ViewModelCallStatusUpdateService.updateViewModel(with:), v5, v4);
}

uint64_t ViewModelCallStatusUpdateService.updateViewModel(with:)()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2 == TranscriptionViewModel.callUUID.getter() && v3 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = v0[2];
  v9 = 0;
  v10 = 1 << *(v8 + 32);
  if ((v10 & 0x1D) == 0)
  {
    if ((v10 & 0x60) != 0)
    {
      v9 = 3;
    }

    else
    {
      v14 = v0[5];
      v13 = v0[6];
      v15 = v0[4];
      v16 = type metadata accessor for AnsweringMachineCallStatus(0);
      (*(v14 + 16))(v13, v8 + *(v16 + 28), v15);
      v17 = (*(v14 + 88))(v13, v15);
      v18 = *MEMORY[0x1E6995EA0];
      (*(v14 + 8))(v13, v15);
      if (v17 == v18)
      {
        if (*(v0[2] + *(v16 + 44)))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  TranscriptionViewModel.state.setter(v9, v7);
LABEL_12:

  v11 = v0[1];

  return v11();
}

void *BannerPresentationManager.handedOffCall.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_handedOffCall;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t ShareActivitiesMoreMenuViewModel.__deallocating_deinit()
{
  ShareActivitiesMoreMenuViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BBCD5DF8()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.callUUID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id *ShareActivitiesMoreMenuViewModel.deinit()
{
  MEMORY[0x1BFB23F10](v0 + 2);
  MEMORY[0x1BFB23F10](v0 + 3);

  v1 = OBJC_IVAR____TtC15ConversationKit32ShareActivitiesMoreMenuViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t TranscriptionViewModel.callUUID.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t TranscriptionViewModel.state.setter(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1BBCD5F84()
{
  OUTLINED_FUNCTION_2_5();
  result = TranscriptionViewModel.state.getter();
  *v0 = result;
  return result;
}

void ConversationControlsManager.__deallocating_deinit()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v3 = v4;
    specialized GameControllerManager.removeResponder(_:)(v3, v9);
  }

  OUTLINED_FUNCTION_53_12();
  (*(v10 + 672))();
  OUTLINED_FUNCTION_264();
  ObjectType = swift_getObjectType();
  v12 = (*(v3 + 12))(ObjectType, v3);
  swift_unknownObjectRelease();
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_12();
    v14 = (*(v13 + 1824))(v33);
    *(v15 + 8) = 0;
    *(v15 + 16) = 1;
    v14(v33, 0);
  }

  v16 = [*&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] neighborhoodActivityConduit];
  v17 = [v16 approvalDelegate];
  v18 = *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_approvalDelegate];
  if (!v17)
  {
    if (v18)
    {
      goto LABEL_13;
    }

    v20 = 0;
    goto LABEL_11;
  }

  v19 = v17;
  if (v18)
  {
    swift_unknownObjectRelease();
    if (v19 != v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    [v16 setApprovalDelegate_];
    goto LABEL_13;
  }

  v21 = 0;
  swift_unknownObjectRelease();
LABEL_13:
  if (one-time initialization token for avLessLeaveConfirmationPresentedDate != -1)
  {
    OUTLINED_FUNCTION_77_8(&one-time initialization token for avLessLeaveConfirmationPresentedDate);
  }

  OUTLINED_FUNCTION_52(v5, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_208();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_3_62(v1);
  if (v22)
  {
    outlined destroy of CallControlsService?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_33_0();
    v24(v23);
    v25 = *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter];
    CNKCoreAnalyticsReporter.reportAVLessLeaveConfirmation(presentedAt:action:)(v2, 2);

    v26 = OUTLINED_FUNCTION_206();
    v27(v26);
  }

  v28 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle;
  if (*&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle])
  {
    OUTLINED_FUNCTION_0_1();
    v30 = *(v29 + 104);

    v30(v31);

    *&v4[v28] = 0;
  }

  else
  {
  }

  v32.receiver = v4;
  v32.super_class = type metadata accessor for ConversationControlsManager(0);
  objc_msgSendSuper2(&v32, sel_dealloc);
  OUTLINED_FUNCTION_30_0();
}

uint64_t (*ConversationControlsManager.shareMenuButtonState.modify(uint64_t a1))(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  *v1 = ConversationControlsManager.shareMenuButtonState.getter();
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return ConversationControlsManager.shareMenuButtonState.modify;
}

uint64_t ConversationControlsManager.shareMenuButtonState.modify(unsigned __int8 *a1)
{
  if (a1[17])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ConversationControlsManager.shareMenuButtonState.setter(v2 | *a1, *(a1 + 1), v1 | a1[16]);
}

void HUDActivityManager.forceSuppressSystemApertureOverAssociatedScene.setter(char a1)
{
  OUTLINED_FUNCTION_137();
  v3 = (*(v2 + 176))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_26_40();
    v7 = (*(v5 + 512))();

    if (v7)
    {
      OUTLINED_FUNCTION_26_40();
      (*(v6 + 1104))(a1 & 1);
    }
  }
}

uint64_t ConversationControlsJoinCountdownActionController.__deallocating_deinit()
{
  ConversationControlsJoinCountdownActionController.deinit();

  return swift_deallocClassInstance();
}

id *ConversationControlsJoinCountdownActionController.deinit()
{

  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.__deallocating_deinit()
{
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownStart);
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownEnded);

  return swift_deallocClassInstance();
}

id CallGameController.disconnectControllers()()
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd, &_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMR);
  v1 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v3 = &v45 - v2;
  v4 = type metadata accessor for GameControllerPressAction(0);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController, 0x1E696B1C0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = specialized Array.count.getter();
  v46 = v0;
  swift_beginAccess();
  v9 = 0;
  v47 = v8 & 0xC000000000000001;
  v49 = v8;
  v45 = v8 + 32;
  v60 = (v1 + 8);
  *&v10 = 136315138;
  v51 = v10;
  while (v9 != v48)
  {
    v11 = v47;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v9, v47 == 0, v49);
    if (v11)
    {
      result = MEMORY[0x1BFB22010](v9, v49);
    }

    else
    {
      result = *(v45 + 8 * v9);
    }

    v62 = result;
    v13 = __OFADD__(v9, 1);
    v14 = v9 + 1;
    if (v13)
    {
      goto LABEL_33;
    }

    v50 = v14;
    v15 = *(v46 + 32);
    v18 = *(v15 + 56);
    v17 = v15 + 56;
    v16 = v18;
    v19 = 1 << *(*(v46 + 32) + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v16;
    v22 = (v19 + 63) >> 6;
    v59 = *(v46 + 32);
    result = swift_bridgeObjectRetain_n();
    v23 = 0;
    v56 = v22;
    for (i = v17; v21; v17 = i)
    {
LABEL_14:
      outlined init with copy of CallGameController.GameControllerEventBox(*(v59 + 48) + 40 * (__clz(__rbit64(v21)) | (v23 << 6)), v70);
      v69[3] = &type metadata for CallGameController.GameControllerEventBox;
      v69[4] = lazy protocol witness table accessor for type CallGameController.GameControllerEventBox and conformance CallGameController.GameControllerEventBox();
      v25 = swift_allocObject();
      v69[0] = v25;
      outlined init with copy of CallGameController.GameControllerEventBox(v70, (v25 + 2));
      if (one-time initialization token for conversationControlsGaming != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationControlsGaming);
      outlined init with copy of IDSLookupManager(v69, v68);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v55 = v28;
        v29 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v67 = v54;
        v58 = v29;
        *v29 = v51;
        outlined init with copy of IDSLookupManager(v68, v66);
        outlined init with copy of GameControllerEvent?(v66, &v63);
        if (v64)
        {
          outlined init with take of TapInteractionHandler(&v63, v65);
          outlined init with copy of IDSLookupManager(v65, &v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19GameControllerEvent_pMd, &_s15ConversationKit19GameControllerEvent_pMR);
          v53 = String.init<A>(reflecting:)();
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1(v65);
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v63, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
          v31 = 0xE300000000000000;
          v53 = 7104878;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v68);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v31, &v67);

        v33 = v58;
        *(v58 + 1) = v32;
        _os_log_impl(&dword_1BBC58000, v27, v55, "Disconnecting controller from event: %s", v33, 0xCu);
        v34 = v54;
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1BFB23DF0](v34, -1, -1);
        MEMORY[0x1BFB23DF0](v33, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v68);
      }

      v35 = v25[5];
      v36 = v25[6];
      __swift_project_boxed_opaque_existential_1(v25 + 2, v35);
      v37 = (*(v36 + 16))(v35, v36);
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = *(v52 + 80);
        v58 = v37;
        v40 = v37 + ((v39 + 32) & ~v39);
        v41 = *(v52 + 72);
        do
        {
          outlined init with copy of CountdownVoucher(v40, v6, type metadata accessor for GameControllerPressAction);
          v42 = [v62 input];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput, 0x1E696B1C8);
          GCDevicePhysicalInputState.buttons.getter();

          v43 = GCPhysicalInputElementCollection<>.subscript.getter();
          (*v60)(v3, v61);
          if (v43)
          {
            v44 = [v43 pressedInput];
            swift_unknownObjectRelease();
            [v44 setPressedDidChangeHandler_];
            swift_unknownObjectRelease();
          }

          outlined destroy of CountdownVoucher(v6, type metadata accessor for GameControllerPressAction);
          v40 += v41;
          --v38;
        }

        while (v38);
      }

      v21 &= v21 - 1;
      __swift_destroy_boxed_opaque_existential_1(v69);
      result = outlined destroy of CallGameController.GameControllerEventBox(v70);
      v22 = v56;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = *(v17 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_14;
      }
    }

    v9 = v50;
  }
}

uint64_t sub_1BBCD744C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t CallGameController.deinit()
{
  CallGameController.disconnectControllers()();

  return v0;
}

uint64_t CallGameController.__deallocating_deinit()
{
  CallGameController.deinit();

  return swift_deallocClassInstance();
}

id Defaults.Observation.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_key];
  v3 = *&v0[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_key + 8];
  v4 = *&v0[OBJC_IVAR____TtCC15ConversationKit8Defaults11Observation_userDefault];
  v5 = v0;

  v6 = MEMORY[0x1BFB209B0](v2, v3);

  [v4 removeObserver:v5 forKeyPath:v6];

  v8.receiver = v5;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_1BBCD76D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t CollaborationInitiationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for EphemeralAlert(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t EntitlementsChecker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallScreeningRTTHelper.callStatusChanged(_:)()
{
  OUTLINED_FUNCTION_12_50();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_87(v1);

  return closure #1 in CallScreeningRTTHelper.callStatusChanged(_:)(v2, v3, v4, v5, v6, v7);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t closure #1 in CallScreeningRTTHelper.callStatusChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreeningRTTHelper.callStatusChanged(_:), v9, v8);
}

uint64_t closure #1 in CallScreeningRTTHelper.callStatusChanged(_:)()
{

  v1 = OUTLINED_FUNCTION_13_48();
  v2(v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_23();
    *(v9 + 4) = OUTLINED_FUNCTION_17_42(4.8751e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
    OUTLINED_FUNCTION_16_41(&dword_1BBC58000, v18, v19, "CallScreeningRTTHelper: removing saved captions for inactive call with callUUID %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  (*(v7 + 8))(v6, v8);
  v21 = v0[6];
  v20 = v0[7];
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v21, v20);
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v22();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_34_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd, &_ss17_NativeDictionaryVySSSay15ConversationKit22TranscriptionViewModelC7CaptionVGGMR);
  OUTLINED_FUNCTION_130_0();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4);
  OUTLINED_FUNCTION_35_8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v3 + 56) + 8 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMd, &_sSay15ConversationKit22TranscriptionViewModelC7CaptionVGMR);
  _NativeDictionary._delete(at:)();
  *v5 = v3;
  return v17;
}

{
  v5 = v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_34_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo7UIImageCSgGMd, &_ss17_NativeDictionaryVySSSo7UIImageCSgGMR);
  OUTLINED_FUNCTION_130_0();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4);
  OUTLINED_FUNCTION_35_8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v3 + 56) + 8 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd, &_sSo7UIImageCSgMR);
  _NativeDictionary._delete(at:)();
  *v5 = v3;
  return v17;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_15_1();
  v2 = OUTLINED_FUNCTION_14_5();
  v3(v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for ShareCardStatusHeaderView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    switch(*(v3 + 40))
    {
      case 1:
        __swift_destroy_boxed_opaque_existential_1(v3);
        break;
      case 2:
      case 4:

        break;
      case 3:

        break;
      case 6:
        swift_unknownObjectRelease();
        break;
      default:
        break;
    }

    v5 = *(v3 + 56);
    if (v5)
    {
    }

    v6 = v4[9];
    v7 = type metadata accessor for AttributedString();
    if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    v8 = (v3 + v4[10]);
    if (*v8)
    {
    }

    v9 = v3 + v4[15];
    if (*(v9 + 40) <= 0xFDu)
    {
      outlined consume of ConversationControlsRecipe.Actions(*v9);
    }

    v10 = v3 + v4[17];
    if (*(v10 + 16) != 255)
    {
      outlined consume of PreCallControlsContext(*v10);
    }

    v11 = (v3 + v4[18]);
    if (*v11 != 1)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd, &_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMR);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ClarityUIButtonRowContainer(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_44Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  if (*(v0 + 64))
  {
  }

  OUTLINED_FUNCTION_77_0();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for TranscriptionView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for RedactionReasons();
    OUTLINED_FUNCTION_7_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for ClarityUIOutgoingCallActionsView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR) + 32);
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v2 + v3);
  v5 = (v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for VideoReactionButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    OUTLINED_FUNCTION_7_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = *(type metadata accessor for ClarityUIFavoritesView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR) + 32);
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for VideoMessageControlsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  outlined consume of Environment<UIInterfaceOrientation>.Content(*v2, *(v2 + 8));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v5 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  type metadata accessor for AnsweringMachineStatusService(0);
  OUTLINED_FUNCTION_25_2();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = *(v0 + 28);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v1 + v3 + v4);
  OUTLINED_FUNCTION_51_20();
  OUTLINED_FUNCTION_43_24();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for ClarityUIRootView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    OUTLINED_FUNCTION_7_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 28);
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd, &_s7SwiftUI5StateVyAA14NavigationPathVGMR);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AccessibilityCaptionsReader(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  outlined consume of Environment<Bool>.Content(*(v6 + 16), *(v6 + 24));
  v7 = *(v5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for RedactionReasons();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v6 + *(v5 + 44);
  v10 = type metadata accessor for AccessibilityTechnologies();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI23AccessibilityFocusStateVySbGMd, &_s7SwiftUI23AccessibilityFocusStateVySbGMR);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  type metadata accessor for ClarityPreviewView(0);
  OUTLINED_FUNCTION_35_7();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR) + 32);
  type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 8))(v3 + v4);
  v6 = (v3 + *(v0 + 20));

  v7 = v3 + *(v0 + 24);

  if (*(v7 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  type metadata accessor for TranscriptLabel(0);
  OUTLINED_FUNCTION_25_2();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for RedactionReasons();
    OUTLINED_FUNCTION_15_1();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_323();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{

  return swift_deallocObject();
}

id ConversationController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_287();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v3, v11);
    OUTLINED_FUNCTION_45_26();
    v4 = swift_allocObject();
    outlined init with take of TapInteractionHandler(v11, v4 + 16);
    v10[4] = partial apply for closure #1 in ConversationController.deinit;
    v10[5] = v4;
    OUTLINED_FUNCTION_1_25();
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v10[2] = v5;
    v10[3] = &block_descriptor_113_0;
    v6 = _Block_copy(v10);

    TUDispatchMainIfNecessary();
    _Block_release(v6);
  }

  ConversationController.unregisterForMoments()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v7 = static OS_os_log.conversationKit;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Released ConversationController", 31, 2, &dword_1BBC58000, v7, v8, MEMORY[0x1E69E7CC0]);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t sub_1BBCD95EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_45_26();

  return swift_deallocObject();
}

Swift::Void __swiftcall ConversationController.unregisterForMoments()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider);
  if (v7)
  {
    *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
    v24 = v6;
    v8 = ConversationController.momentsController.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v23 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v25[4] = partial apply for closure #1 in ConversationController.unregisterForMoments();
    v25[5] = v9;
    OUTLINED_FUNCTION_5_73();
    v25[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v25[2] = v10;
    v25[3] = &block_descriptor_119_0;
    v11 = _Block_copy(v25);
    v22 = v8;
    v21 = v7;

    static DispatchQoS.unspecified.getter();
    v25[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v12, v13);
    v14 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v16, v17, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v18);
    _Block_release(v11);

    v19 = OUTLINED_FUNCTION_309();
    v20(v19);
    (*(v4 + 8))(v1, v24);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCD9894()
{
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t IDSCapabilitiesChecker.__deallocating_deinit()
{
  IDSCapabilitiesChecker.deinit();

  return swift_deallocClassInstance();
}

void *IDSCapabilitiesChecker.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

void closure #1 in BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem] = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(a2, a3 & 1);
  }
}

void BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd, &_s15ConversationKit19SessionActionNoticeVSgMR);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v65 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x200))(v7);
  if (!v11)
  {

    updatedExistingBanner #1 () in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(v2, a2 & 1, a1);
    return;
  }

  v12 = v11;
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.banners);
  outlined init with copy of ConversationControlsType(a1, &v72);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v66 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67 = v12;
    v20 = v14;
    v21 = v19;
    v71 = v19;
    *v18 = 136446466;
    outlined init with copy of ConversationControlsType(&v72, &v68);
    v22 = a1;
    v23 = a2;
    v24 = specialized >> prefix<A>(_:)(&v68);
    v26 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v68, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsType(&v72);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v71);

    *(v18 + 4) = v27;
    a2 = v23;
    a1 = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v15, v16, "updatePresentedSystemApertureHUD for type %{public}s replacingNotice: %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v28 = v21;
    v14 = v20;
    v12 = v67;
    v10 = MEMORY[0x1E69E7D40];
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsType(&v72);
  }

  if ((shouldUpdate #1 (existing:) in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(v12, v3, a2 & 1) & 1) == 0)
  {
    (*((*v10 & *v12) + 0x428))(a1);
    goto LABEL_31;
  }

  if (Features.callManagerEnabled.getter() & 1) != 0 && (a2)
  {
    (*((*v10 & **(v3 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_activityManager)) + 0x128))();
  }

  BannerPresentationManager.updatePresentedSystemApertureElement(type:sizeClass:dismissPresentedBannerReason:)(a1, 0, 1, 0, 0, &v72);
  v29 = v72;
  if (v72 != 12)
  {
    if (v72 - 9 <= 1)
    {
      updatedExistingBanner #1 () in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(v3, a2 & 1, a1);
LABEL_31:

      return;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v67 = v12;
      v65[1] = v14;
      v33 = v32;
      v34 = swift_slowAlloc();
      v72 = v34;
      *v33 = 136315138;
      LOBYTE(v68) = v29;
      v35 = String.init<A>(reflecting:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v72);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Unable to update presented system aperture element: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      v12 = v67;
      v10 = MEMORY[0x1E69E7D40];
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }
  }

  v38 = *(v3 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager);
  if (v38)
  {
    v39 = *((*v10 & *v38) + 0x2B0);
    v67 = v38;
    if ((v39() & 1) != 0 && !Features.shouldShowFullScreenCallWaiting.getter())
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1BBC58000, v55, v56, "Skipping dismiss presented banner for updating SystemAperture HUD", v57, 2u);
        MEMORY[0x1BFB23DF0](v57, -1, -1);
      }

      goto LABEL_31;
    }
  }

  v72 = 23;
  v73 = 0u;
  v74 = 0u;
  v75 = 7;
  v40 = static ConversationControlsType.== infix(_:_:)(a1, &v72);
  outlined destroy of ConversationControlsType(&v72);
  if (v40 & 1) != 0 || (v72 = 24, v73 = 0u, v74 = 0u, v75 = 7, v41 = static ConversationControlsType.== infix(_:_:)(a1, &v72), v42 = outlined destroy of ConversationControlsType(&v72), (v41))
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v43, v44))
    {
LABEL_30:

      goto LABEL_31;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Skipping dismiss presented banner for updating SystemAperture HUD for GreenTea3P call";
LABEL_29:
    _os_log_impl(&dword_1BBC58000, v43, v44, v46, v45, 2u);
    MEMORY[0x1BFB23DF0](v45, -1, -1);
    goto LABEL_30;
  }

  v47 = a2;
  v48 = v66;
  if ((v47 & 1) == 0)
  {
    v42 = (*((*v10 & *v3) + 0x1E8))(v42);
    if (v42)
    {
      v49 = v42;
      (*((*v10 & *v42) + 0x1F0))(&v72);
      ConversationControlsType.canShowOverICS.getter();
      v51 = v50;
      outlined destroy of ConversationControlsType(&v72);
      if (v51)
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1BBC58000, v52, v53, "Skipping dismiss presented notice", v54, 2u);
          MEMORY[0x1BFB23DF0](v54, -1, -1);
        }

        goto LABEL_31;
      }
    }
  }

  v58 = (*((*v10 & *v3) + 0x1E8))(v42);
  if (!v58)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    goto LABEL_46;
  }

  v59 = v58;
  (*((*v10 & *v58) + 0x1F0))(&v72);

  ConversationControlsType.associatedNotice.getter(&v68);
  outlined destroy of ConversationControlsType(&v72);
  if (!*(&v69 + 1))
  {
LABEL_46:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v68, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    v60 = type metadata accessor for SessionActionNotice(0);
    v62 = v48;
    v61 = 1;
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  v60 = type metadata accessor for SessionActionNotice(0);
  v61 = swift_dynamicCast() ^ 1;
  v62 = v48;
LABEL_47:
  __swift_storeEnumTagSinglePayload(v62, v61, 1, v60);
  type metadata accessor for SessionActionNotice(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v60);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit19SessionActionNoticeVSgMd, &_s15ConversationKit19SessionActionNoticeVSgMR);
  if (!EnumTagSinglePayload)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_30;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Skipping dismiss presented banner for because we don't want to stamp out shareplay notices";
    goto LABEL_29;
  }

  v64 = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC517260);
  [v3 dismissPresentedBannerForReason:v64 animated:1];
}

void updatedExistingBanner #1 () in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(void *a1, char a2, uint64_t a3)
{
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1E8))();
  if (v6)
  {
    v7 = v6;
    if (shouldUpdate #1 (existing:) in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(v6, a1, a2 & 1) & 1) != 0 && (canUpdateBanner #1 (to:) in BannerPresentationManager._updatePresentedHUD(type:replacingNotice:)(a3, a1))
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.banners);
      outlined init with copy of ConversationControlsType(a3, v28);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27 = v12;
        *v11 = 136446466;
        outlined init with copy of ConversationControlsType(v28, v26);
        v13 = specialized >> prefix<A>(_:)(v26);
        v15 = v14;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        outlined destroy of ConversationControlsType(v28);
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v27);

        *(v11 + 4) = v16;
        *(v11 + 12) = 1024;
        *(v11 + 14) = a2 & 1;
        _os_log_impl(&dword_1BBC58000, v9, v10, "updatePresentedHUD for type %{public}s replacingNotice: %{BOOL}d", v11, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
        MEMORY[0x1BFB23DF0](v11, -1, -1);
      }

      else
      {

        outlined destroy of ConversationControlsType(v28);
      }

      return;
    }
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.banners);
  outlined init with copy of ConversationControlsType(a3, v28);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446466;
    outlined init with copy of ConversationControlsType(v28, v26);
    v22 = specialized >> prefix<A>(_:)(v26);
    v24 = v23;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsType(v28);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

    *(v20 + 4) = v25;
    *(v20 + 12) = 1024;
    *(v20 + 14) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v18, v19, "skipping updatePresentedHUD for type %{public}s replacingNotice: %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsType(v28);
  }
}

uint64_t specialized >> prefix<A>(_:)(uint64_t a1)
{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v2, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (v3[24] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v2, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    v4 = v2;
    v5[0] = *v3;
    *(v5 + 9) = *&v3[9];
    outlined init with copy of ConversationControlsType(&v4, &v2);
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_24_23();
    outlined destroy of ConversationControlsType(&v4);
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit21AudioSampleNormalizer_pSgMd, &_s15ConversationKit21AudioSampleNormalizer_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21AudioSampleNormalizer_pMd, &_s15ConversationKit21AudioSampleNormalizer_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit21AudioSampleNormalizer_pSgMd, &_s15ConversationKit21AudioSampleNormalizer_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  v1 = outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v11, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
  if (BYTE8(v12) == 0xFF)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    OUTLINED_FUNCTION_61_6(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v12);
    v15 = v13;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v14, v11, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMR);
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_24_23();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMd, &_s15ConversationKit0A12ControlsTypeO_AA18HUDActivityManagerC14RelevanceScoreVtMR);
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v2, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v2[3] == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    memcpy(__dst, v2, 0xD1uLL);
    outlined init with copy of Participant.ScreenInfo(__dst, v2);
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_24_23();
    outlined destroy of Participant.ScreenInfo(__dst);
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19GameControllerEvent_pMd, &_s15ConversationKit19GameControllerEvent_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit19GameControllerEvent_pSgMd, &_s15ConversationKit19GameControllerEvent_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  v1 = outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v11, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMR);
  if (v13 == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    OUTLINED_FUNCTION_61_6(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v12);
    v14[48] = v13;
    outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v14, v11);
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_24_23();
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v14);
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v18, &_s15ConversationKit18PeoplePickerHandle_pSgMd, &_s15ConversationKit18PeoplePickerHandle_pSgMR);
  if (v20)
  {
    v1 = outlined init with take of TapInteractionHandler(&v18, v22);
    OUTLINED_FUNCTION_71_4(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19, v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18PeoplePickerHandle_pMd, &_s15ConversationKit18PeoplePickerHandle_pMR);
    OUTLINED_FUNCTION_69_4(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v18, &_s15ConversationKit18PeoplePickerHandle_pSgMd, &_s15ConversationKit18PeoplePickerHandle_pSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v2, &_sypSgMd, &_sypSgMR);
  if (v3)
  {
    outlined init with take of Any(&v2, v4);
    outlined init with copy of Any(v4, &v2);
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_24_23();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v2, &_sypSgMd, &_sypSgMR);
    OUTLINED_FUNCTION_11_48();
  }

  return OUTLINED_FUNCTION_38_2();
}

uint64_t getEnumTagSinglePayload for ConversationControlsType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConversationControlsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BBCDB094()
{
  if (OUTLINED_FUNCTION_37_4())
  {
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_1BBCDB0E8()
{
  if (OUTLINED_FUNCTION_37_4())
  {
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBCDB138()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_1BBCDB168()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t _sSo21CLFCommunicationLimitas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromC1Cyx01_C5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo38UIApplicationOpenExternalURLOptionsKeya_Tt1gq5Tm(a2);
  *a1 = result;
  return result;
}

void _sSo27CNKInCallControlButtonStyleVSYSCSY8rawValuexSg03RawG0Qz_tcfCTW_0(uint64_t a1@<X8>)
{
  sub_1BBCDB070();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t _sSo27TUCallRecordingAvailabilityVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BBCDB078(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance RemoteControlRequirements@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BBCDB370(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_15())
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_1BBCDB3C8(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_15())
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  OUTLINED_FUNCTION_12_2();
  return swift_getWitnessTable();
}

uint64_t _sSo8_NSRangeVwet_0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_43_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_3();
  }
}

uint64_t storeEnumTagSinglePayload for GridLayout.GridSize(uint64_t result, int a2, int a3)
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

uint64_t _sSo23NSDirectionalEdgeInsetsVwet_0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_43_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_3();
  }
}

uint64_t storeEnumTagSinglePayload for ControlsButtonProvider.ImageGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

_DWORD *_sSo30UIFontDescriptorSymbolicTraitsVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1BBCDB55C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

id sub_1BBCDB594@<X0>(uint64_t *a1@<X8>)
{
  result = CallRecordingPillViewController.countdownView.getter();
  *a1 = result;
  return result;
}

id sub_1BBCDB5C4@<X0>(uint64_t *a1@<X8>)
{
  result = CallRecordingPillViewController.recordingView.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDB5F4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_1BBCDB650()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

id sub_1BBCDB6CC@<X0>(uint64_t *a1@<X8>)
{
  result = TapInteraction.numberOfTapsRequired.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDB760()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDB810()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_15_1();
  v0 = OUTLINED_FUNCTION_14_5();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1BBCDB8CC()
{
  OUTLINED_FUNCTION_2_28();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_1_32();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd, &_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMR);
  v5 = OUTLINED_FUNCTION_3_20(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BBCDB948(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_28();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMd, &_s7SwiftUI5StateVy15ConversationKit0D14ControlsRecipeVSgGMR);
    v8 = OUTLINED_FUNCTION_3_20(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1BBCDB9D0()
{
  OUTLINED_FUNCTION_2_28();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_1_32();
  }

  v4 = v0;
  type metadata accessor for ConversationControlsRecipe(0);
  v5 = OUTLINED_FUNCTION_3_20(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1BBCDBA40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_28();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    type metadata accessor for ConversationControlsRecipe(0);
    v8 = OUTLINED_FUNCTION_3_20(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1BBCDBABC()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCDBAF0()
{
  v1 = *(type metadata accessor for GameControllerPressAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  type metadata accessor for GCButtonElementName();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1BBCDBBDC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDBC5C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDBD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1BBCDBD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BBCDBE88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 168))();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1BBCDC0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 8);
    if (v4 > 4)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for ActivitySymbol();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1BBCDC194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd, &_s15ConversationKit18SystemApertureIconVSgMR);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for ActivitySymbol();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BBCDC264()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDC29C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC2D4@<X0>(_BYTE *a1@<X8>)
{
  result = CallControlsViewController.isOneToOneModeEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCDC360@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlsViewController.sizeUpdater.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1BBCDC3BC()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.incomingCommunicationLimit.getter(v1, v2);
  *v0 = result;
  return result;
}

id sub_1BBCDC3E8()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.outgoingCommunicationLimit.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC414()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.recentsEnabled.getter(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDC468()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.inCallKeypadEnabled.getter(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDC4BC()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.speakerOptionEnabled.getter(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDC510()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDC54C()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.speakerOptionEnabledObserver.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC578()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.inCallKeypadEnabledObserver.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC5A4()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.recentsEnabledObserver.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC5D0()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.outgoingCommunicationLimitObserver.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC5FC()
{
  OUTLINED_FUNCTION_2_5();
  result = ClarityUIPreferences.incomingCommunicationLimitObserver.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDC638()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC678()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDC6B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC6E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BBCDC720()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDC758()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC7A8()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDC7E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC818@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDC884()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDC8BC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDC934@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 160))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDC9E0()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6insertySb8inserted_x17memberAfterInserttxFSo36TUConversationBroadcastingAttributesV_Tgq5_0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return OUTLINED_FUNCTION_7_28(v3 != a2);
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6insertySb8inserted_x17memberAfterInserttxFSo30UIFontDescriptorSymbolicTraitsV_Tgq5_0(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return OUTLINED_FUNCTION_7_28(v3 != a2);
}

uint64_t sub_1BBCDCA98()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDCAE0()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewController.allowsMinimization.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDCB34()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewController.isGroupCall.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDCB88()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewController.callName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1BBCDCBB4()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewController.groupImage.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDCBE0()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewController.languageModelDownloadingProgress.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1BBCDCC14()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDCC54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDCC94@<X0>(uint64_t *a1@<X8>)
{
  result = CancelConfirmationViewModel.config.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDCCCC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDCD08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1BBCDCDB0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDCE3C()
{
  swift_unknownObjectRelease();

  outlined consume of StateObject<SyncedScreeningAlphaGradientView<A>.AnimatedState>.Storage<A>();

  return swift_deallocObject();
}

uint64_t sub_1BBCDCEA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for BackgroundView(255, *a1, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd, &_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState(255, v4, v5, v6);
  OUTLINED_FUNCTION_6_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_17();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>();
  OUTLINED_FUNCTION_4_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_31();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_37();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCDD170()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDD1F0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySo15VideoAttributesCSgGMd, &_s15Synchronization5MutexVySo15VideoAttributesCSgGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BBCDD220@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonsStackView.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDD250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BBCDD2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BBCDD340()
{
  v1 = type metadata accessor for ButtonsStackView(0);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1BBCDD404()
{
  v1 = type metadata accessor for ButtonsStackView(0);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit21ButtonsStackViewModelCGMR);
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1BBCDD4DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGG_014CommunicationsB004BlurhG0VQo_AA023AccessibilityAttachmentM0VGMR);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBCDD540()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDD578()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 160))();
  *v0 = result;
  return result;
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6removeyxSgxF15ConversationKit0E14ControlsActionO13ButtonOptionsV_Tgq5_0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1BBCDD610()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 152))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCDD698()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 176))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBCDD7E4()
{
  outlined consume of CallScreening.EndingAction(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_53_3();

  return swift_deallocObject();
}

uint64_t sub_1BBCDD82C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDD87C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDD8C4()
{

  OUTLINED_FUNCTION_53_3();

  return swift_deallocObject();
}

uint64_t sub_1BBCDD910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for AudioCallMiddleContainerView(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

__n128 sub_1BBCDDA18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BBCDDA60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI18_AnimationModifierVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd, &_s7SwiftUI18_AnimationModifierVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMR);
  OUTLINED_FUNCTION_3_33();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _AnimationModifier<[TranscriptionViewModel.Caption]> and conformance _AnimationModifier<A>();
  OUTLINED_FUNCTION_12_2();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_33();
  type metadata accessor for AccessibilityCaptionsReader(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2_41();
  return swift_getWitnessTable();
}

__n128 sub_1BBCDDAE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BBCDDAF4()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDDB68()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  outlined consume of CallScreening.EndingAction(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1BBCDDBC4()
{
  swift_unknownObjectRelease();
  outlined consume of CallScreening.EndingAction(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCDDC28()
{
  outlined consume of CallScreening.EndingAction(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1BBCDDCD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_16_23();
  type metadata accessor for Participant(v6);
  OUTLINED_FUNCTION_29_2();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_55_1(*(v4 + a3[9] + 8));
    }

    v9 = v11;
    v10 = a3[6];
  }

  return __swift_getEnumTagSinglePayload(v4 + v10, v3, v9);
}

void sub_1BBCDDDB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_16_23();
  type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_29_2();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v14 + 84) != a3)
    {
      *(v5 + a4[9] + 8) = (v4 - 1);
      return;
    }

    v11 = v13;
    v12 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(v5 + v12, v4, v4, v11);
}

uint64_t sub_1BBCDDEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_16_23();
  type metadata accessor for CaptionSectioner.SectionID(v6);
  OUTLINED_FUNCTION_29_2();
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    type metadata accessor for Participant(0);
    OUTLINED_FUNCTION_29_2();
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_55_1(*(v4 + *(a3 + 24)));
    }

    v9 = v11;
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

void sub_1BBCDDF98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_16_23();
  type metadata accessor for CaptionSectioner.SectionID(v8);
  OUTLINED_FUNCTION_29_2();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    type metadata accessor for Participant(0);
    OUTLINED_FUNCTION_29_2();
    if (*(v14 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return;
    }

    v11 = v13;
    v12 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1BBCDE078()
{
  OUTLINED_FUNCTION_16_23();
  v2 = type metadata accessor for UUID();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BBCDE0B8()
{
  OUTLINED_FUNCTION_16_23();
  v2 = type metadata accessor for UUID();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1BBCDE100@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.isMoreMenuPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCDE160()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CommunicationsUI10IconButtonVyytGMd, &_s16CommunicationsUI10IconButtonVyytGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGSgMR);
  OUTLINED_FUNCTION_0_40();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v0, &_s16CommunicationsUI10IconButtonVyytGMd, &_s16CommunicationsUI10IconButtonVyytGMR, v1);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBCDE20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBCDE280()
{
  type metadata accessor for CallScreening.CallStateObserver(0);
  OUTLINED_FUNCTION_25_2();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1BBCDE380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCDE428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCDE4D0()
{

  return swift_deallocObject();
}

double _sSlsE5first7ElementQzSgvgSay15ConversationKit8Activity_pG_Tg5_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of IDSLookupManager(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BBCDE540()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDE578()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDE5B0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDE630()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDE668()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDE6DC(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_3_42(v1, MEMORY[0x1E6981840], v1);
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGRectVAESQ12CoreGraphicsyHCg_GMd, &_s7SwiftUI23_GeometryActionModifierVySo6CGRectVAESQ12CoreGraphicsyHCg_GMR);
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCDE800()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCDE838()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDE870@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = CallControlsMenuViewModel.contextCancellable.getter(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDE8DC()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewModel.source.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDE908()
{
  OUTLINED_FUNCTION_2_5();
  v2 = CaptionsStateSource.allowsMinimization.getter(v0, v1);
  return OUTLINED_FUNCTION_38_1(v2);
}

uint64_t sub_1BBCDE954()
{
  OUTLINED_FUNCTION_2_5();
  v2 = CaptionsStateSource.isMinimized.getter(v0, v1);
  return OUTLINED_FUNCTION_38_1(v2);
}

uint64_t sub_1BBCDE9A0()
{
  OUTLINED_FUNCTION_2_5();
  v2 = CaptionsStateSource.isGroupCall.getter(v0, v1);
  return OUTLINED_FUNCTION_38_1(v2);
}

uint64_t sub_1BBCDE9EC()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsStateSource.callName.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

void *sub_1BBCDEA18()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsStateSource.groupImage.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDEA68()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

void sub_1BBCDEAF4()
{
  OUTLINED_FUNCTION_2_5();
  CaptionsViewModel.cancellables.getter(v1, v2);
  *v0 = v3;
}

void sub_1BBCDEB20()
{
  OUTLINED_FUNCTION_2_5();
  CaptionsStateSource.participants.getter(v1, v2);
  *v0 = v3;
}

void sub_1BBCDEB4C()
{
  OUTLINED_FUNCTION_2_5();
  CaptionsStateSource.sections.getter(v1, v2);
  *v0 = v3;
}

void sub_1BBCDEB78()
{
  OUTLINED_FUNCTION_2_5();
  CaptionsStateSource.cancellables.getter(v1, v2);
  *v0 = v3;
}

uint64_t sub_1BBCDEBA4()
{
  OUTLINED_FUNCTION_2_5();
  v2 = CaptionsViewModel.allowsMinimization.getter(v0, v1);
  return OUTLINED_FUNCTION_38_1(v2);
}

uint64_t sub_1BBCDEBF0()
{
  OUTLINED_FUNCTION_2_5();
  v2 = CaptionsViewModel.isGroupCall.getter(v0, v1);
  return OUTLINED_FUNCTION_38_1(v2);
}

uint64_t sub_1BBCDEC3C()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewModel.callName.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

void *sub_1BBCDEC90()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewModel.groupImage.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDECD8()
{

  return swift_deallocObject();
}

void *sub_1BBCDED10()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewModel.suppressionTimer.getter(v1, v2);
  *v0 = result;
  return result;
}

void *sub_1BBCDED3C()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptionsViewModel.expirationTimer.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCDED88()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCDEE0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1BBCDEEF0()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v6))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCDEFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1BBCDF028()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDF060()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_14_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCDF0A0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCDF134()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCDF16C()
{
  v1 = type metadata accessor for ConversationControlsRecipe(0);
  v2 = (*(*(v1 - 1) + 80) + 26) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  switch(*(v0 + v2 + 40))
  {
    case 1:
      __swift_destroy_boxed_opaque_existential_1((v0 + v2));
      break;
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 6:
      swift_unknownObjectRelease();
      break;
    default:
      break;
  }

  v4 = *(v3 + 56);
  if (v4)
  {
  }

  v5 = v1[9];
  v6 = type metadata accessor for AttributedString();
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  v7 = (v3 + v1[10]);
  if (*v7)
  {
  }

  v8 = v3 + v1[15];
  if (*(v8 + 40) <= 0xFDu)
  {
    outlined consume of ConversationControlsRecipe.Actions(*v8);
  }

  v9 = v3 + v1[17];
  if (*(v9 + 16) != 255)
  {
    outlined consume of PreCallControlsContext(*v9);
  }

  v10 = (v3 + v1[18]);
  if (*v10 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCDF3A8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDF3F0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCDF460@<X0>(_BYTE *a1@<X8>)
{
  result = CallRecordingButtonViewModel.educationScreenShown.getter();
  *a1 = result & 1;
  return result;
}

uint64_t _s15ConversationKit20RemoteControlMessageO23CancelRequestCodingKeys33_B8390C2C0E5BC76934C805A5CBEB1B05LLOs0H3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = RemoteControlMessage.CancelRequestCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCDF70C()
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    type metadata accessor for Date();
    v5 = OUTLINED_FUNCTION_64_0();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_1BBCDF794(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == a3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for Date();
    v9 = OUTLINED_FUNCTION_64_0();
  }

  return __swift_storeEnumTagSinglePayload(v9, v3, v3, v8);
}

uint64_t sub_1BBCDF824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 28));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1BBCDF914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = v4 + 1;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1BBCDF9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v10 + 84) != v3)
    {
      v12 = *(v4 + *(a3 + 24));
      if (v12 >= 3)
      {
        return v12 - 2;
      }

      else
      {
        return 0;
      }
    }

    v9 = OUTLINED_FUNCTION_64_0();
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1BBCDFAC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_29_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_29_2();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = v4 + 2;
      return;
    }

    v11 = OUTLINED_FUNCTION_64_0();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1BBCDFC6C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCDFCBC@<X0>(_BYTE *a1@<X8>)
{
  result = ClarityUIDialerView.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCDFD50@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.interfaceOrientation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCDFDCC()
{
  v1 = v0[2];
  v7[0] = v0[1];
  v7[1] = v1;
  v7[2] = v0[3];
  v2 = type metadata accessor for ScreenSharingContentView(0, v7);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));
  outlined consume of Environment<UIInterfaceOrientation>.Content(*v3, v3[8]);
  v4 = *(v2 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(&v3[v4], 1, v5))
    {
      (*(*(v5 - 8) + 8))(&v3[v4], v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCDFF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 68);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 76));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BBCE000C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 68);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 76)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE00C4(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMd, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F7RoleKey33_29D1C8137BB167A1D34FE391A0AB3398LLVGGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleV6_InsetVAA8MaterialVGSgGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleV6_InsetVAA8MaterialVGSgGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA9RectangleV6_InsetVAA8MaterialVGAA13_OffsetEffectVGSgGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA9RectangleV6_InsetVAA8MaterialVGAA13_OffsetEffectVGSgGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_12_22();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_3_49();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingContentC0VGMd, "H'\a", v4);
  OUTLINED_FUNCTION_12_22();
  type metadata accessor for _VariadicView.Tree();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4EdgeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4EdgeOGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1_22();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7SwiftUI11_LayoutRootVy15ConversationKit020ScreenSharingContentC0VGMd, "H'\a", v6);
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_30();
  swift_getWitnessTable();
  v7 = MEMORY[0x1E6980A18];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
  OUTLINED_FUNCTION_4_21();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Edge> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4EdgeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4EdgeOGMR, v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for GeometryReader();
  OUTLINED_FUNCTION_2_37();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCE0340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GCButtonElementName();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE03EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GCButtonElementName();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE04C8()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0524()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE055C()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0598()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1BBCE0610(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BBCE0658()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE068C()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0744()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE078C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BBCE07F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBCE0904@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  result = (*(v2 + 152))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE0950()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE0A34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE0AE0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0B48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0BD0()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0C04()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE0C38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1BBCE0C78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_1BBCE0CB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 center];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BBCE0D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE0E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE0EC0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE0F00()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE0FA4()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE0FDC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE101C()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1BBCE10DC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE1114()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE114C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE1184()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE11C8@<X0>(uint64_t *a1@<X8>)
{
  result = ClarityUIDialerKeypadView.enteredNumbers.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBCE11F8@<X0>(_BYTE *a1@<X8>)
{
  result = ClarityUIDialerKeypadView.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCE1258(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BBCE12C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyAA6VStackVyAGyAA5ImageV_AA4TextVtGGG_15ConversationKit021ClarityUIDialerKeypadG0V04BackjI033_800E451BA992F5BB88AE265BE36FA5DELLVQo__AiAEAJyQrqd__AaKRd__lFQOyAV_AY013PrimaryActionjI0A_LLVQo_tGGAA14_PaddingLayoutVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBCE1320()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE141C()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1450()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBCE14DC()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1520()
{

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1564()
{

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE15A0()
{
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1620()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE1660()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE1698()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCE16E8()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1720()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();

      v9 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_37_3())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_0();
      (*(v15 + 8))(v1 + v4);
      v16 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v16);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v17)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  v18 = v0[9];
  v19 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_58(v19))
  {
    OUTLINED_FUNCTION_71();
    (*(v20 + 8))(v5 + v18, v2);
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1A08()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  v7 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v8 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v8))
      {
        OUTLINED_FUNCTION_16_3();
        v9 = OUTLINED_FUNCTION_53_0();
        v10(v9);
      }

      OUTLINED_FUNCTION_91_1();

      v11 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_25_21(v11))
      {
        OUTLINED_FUNCTION_16_3();
        v12 = OUTLINED_FUNCTION_53_0();
        v13(v12);
      }

      OUTLINED_FUNCTION_73_0();
      if (v14)
      {
      }

      if (!OUTLINED_FUNCTION_37_3())
      {
        OUTLINED_FUNCTION_16_3();
        v15 = OUTLINED_FUNCTION_53_0();
        v16(v15);
      }

      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_0();
      (*(v17 + 8))(v1 + v4);
      v18 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v18);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v19)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_59_2();
  v20 = v0[9];
  v21 = type metadata accessor for Date();
  if (!OUTLINED_FUNCTION_58(v21))
  {
    OUTLINED_FUNCTION_71();
    (*(v22 + 8))(v7 + v20, v2);
  }

  OUTLINED_FUNCTION_59_2();

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1CFC()
{
  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1D54()
{
  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t sub_1BBCE1EB0()
{
  OUTLINED_FUNCTION_6_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ControlSizeOGMd, &_s7SwiftUI11EnvironmentVyAA11ControlSizeOGMR);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BBCE1F00()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ControlSizeOGMd, &_s7SwiftUI11EnvironmentVyAA11ControlSizeOGMR);
  v0 = OUTLINED_FUNCTION_9_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1BBCE1F48()
{
  OUTLINED_FUNCTION_6_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1BBCE1F98()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v0 = OUTLINED_FUNCTION_9_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1BBCE1FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BBCE2098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_7();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_9_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }

  return result;
}

uint64_t sub_1BBCE2154()
{
  v1 = *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
    {
      (*(*(v3 - 8) + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BBCE2294()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCE22CC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2304()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 232))();
  *v0 = result & 1;
  return result;
}

__n128 sub_1BBCE2388(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BBCE2394()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 256))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCE2428()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 280))();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1BBCE24BC()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 304))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBCE2534()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2574()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1BBCE264C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE26D4()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2754()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMd, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMR);
  OUTLINED_FUNCTION_1_69();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v0, v1, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMR, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBCE27EC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR);
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_41();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMR, v2);
  OUTLINED_FUNCTION_4_45();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMR, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_64();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, v6);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Circle and conformance Circle();
  type metadata accessor for PlatterShadowedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCE2A04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBCE2AF4()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2B84()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE2C1C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BBCE2C54()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2CC4()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE2DA4()
{

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE2DD8()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_77_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE2E44()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v2 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v2))
      {
        OUTLINED_FUNCTION_16_3();
        v3 = OUTLINED_FUNCTION_53_0();
        v4(v3);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v5 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v5))
      {
        OUTLINED_FUNCTION_16_3();
        v6 = OUTLINED_FUNCTION_53_0();
        v7(v6);
      }

      OUTLINED_FUNCTION_73_0();
      if (v8)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v9 = OUTLINED_FUNCTION_53_0();
        v10(v9);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v11 + 8))(v1);
      v12 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v12);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v13)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v14 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v14))
  {
    OUTLINED_FUNCTION_71();
    v15 = OUTLINED_FUNCTION_177();
    v16(v15);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();

  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE30C8()
{
  OUTLINED_FUNCTION_34_0();
  v1 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = (v7 + *(v9 + 80) + 8) & ~*(v9 + 80);
  (*(v3 + 8))(v0 + v4, v1);

  (*(v10 + 8))(v0 + v11, v8);
  OUTLINED_FUNCTION_1_3();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3214()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3268()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v1 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v1))
      {
        OUTLINED_FUNCTION_16_3();
        v2 = OUTLINED_FUNCTION_53_0();
        v3(v2);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v4 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v4))
      {
        OUTLINED_FUNCTION_16_3();
        v5 = OUTLINED_FUNCTION_53_0();
        v6(v5);
      }

      OUTLINED_FUNCTION_73_0();
      if (v7)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v8 = OUTLINED_FUNCTION_53_0();
        v9(v8);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v0);
      v11 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v11);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v12)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v13 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v13))
  {
    OUTLINED_FUNCTION_71();
    v14 = OUTLINED_FUNCTION_177();
    v15(v14);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE34CC()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v6 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v6))
      {
        OUTLINED_FUNCTION_16_3();
        v7 = OUTLINED_FUNCTION_53_0();
        v8(v7);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v9 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v9))
      {
        OUTLINED_FUNCTION_16_3();
        v10 = OUTLINED_FUNCTION_53_0();
        v11(v10);
      }

      OUTLINED_FUNCTION_73_0();
      if (v12)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v13 = OUTLINED_FUNCTION_53_0();
        v14(v13);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v15 + 8))(v1);
      v16 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v16);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v17)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v18 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v18))
  {
    OUTLINED_FUNCTION_71();
    v19 = OUTLINED_FUNCTION_177();
    v20(v19);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();

  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3748()
{
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3840()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3890()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_226();
  v1(v0);
  OUTLINED_FUNCTION_222();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3938()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3968()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_226();
  v2(v1);
  OUTLINED_FUNCTION_222();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3A18()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3A8C()
{
  type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();

  v1 = OUTLINED_FUNCTION_226();
  v2(v1);
  OUTLINED_FUNCTION_222();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3B34()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();

  OUTLINED_FUNCTION_262_0();
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      type metadata accessor for RecentCallRecentItemMetadata(0);
      v1 = OUTLINED_FUNCTION_90_1();
      if (!OUTLINED_FUNCTION_25_21(v1))
      {
        OUTLINED_FUNCTION_16_3();
        v2 = OUTLINED_FUNCTION_53_0();
        v3(v2);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v4 = OUTLINED_FUNCTION_261();
      if (!OUTLINED_FUNCTION_25_21(v4))
      {
        OUTLINED_FUNCTION_16_3();
        v5 = OUTLINED_FUNCTION_53_0();
        v6(v5);
      }

      OUTLINED_FUNCTION_73_0();
      if (v7)
      {
      }

      if (!OUTLINED_FUNCTION_52_7())
      {
        OUTLINED_FUNCTION_16_3();
        v8 = OUTLINED_FUNCTION_53_0();
        v9(v8);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v0);
      v11 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v11);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v12)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v13 = OUTLINED_FUNCTION_260_0();
  if (!OUTLINED_FUNCTION_58(v13))
  {
    OUTLINED_FUNCTION_71();
    v14 = OUTLINED_FUNCTION_177();
    v15(v14);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3DC0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE3E14()
{
  OUTLINED_FUNCTION_50_2();
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_35_7();
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v3 + 64) + v4 + 7;

  v6 = (v1 + v4);
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 3u:
    case 4u:

      v7 = type metadata accessor for RecentCallRecentItemMetadata(0);
      v8 = v7[5];
      v9 = type metadata accessor for Date();
      if (!OUTLINED_FUNCTION_265())
      {
        OUTLINED_FUNCTION_16_3();
        (*(v10 + 8))(v6 + v8, v9);
      }

      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_233();
      v11 = v7[10];
      v12 = type metadata accessor for UUID();
      if (!OUTLINED_FUNCTION_265())
      {
        OUTLINED_FUNCTION_16_3();
        (*(v13 + 8))(v6 + v11, v12);
      }

      v14 = *(v6 + v7[11]);
      if (v14)
      {
      }

      v15 = v7[12];
      if (!OUTLINED_FUNCTION_265())
      {
        OUTLINED_FUNCTION_16_3();
        (*(v16 + 8))(v6 + v15, v12);
      }

      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_231();
      break;
    case 1u:
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_15_1();
      (*(v17 + 8))(v6);
      v18 = type metadata accessor for RecentOngoingConversationMetadata(0);
      OUTLINED_FUNCTION_89(v18);
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_72();
      if (v19)
      {

        goto LABEL_14;
      }

      break;
    case 2u:

LABEL_14:

      break;
    default:
      break;
  }

  v20 = v5 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_96_4();
  v21 = *(v0 + 36);
  v22 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v6 + v21, 1, v22))
  {
    OUTLINED_FUNCTION_71();
    (*(v23 + 8))(v6 + v21, v22);
  }

  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_95_0();
  if (*(v1 + v20))
  {
  }

  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_49();

  return swift_deallocObject();
}

uint64_t sub_1BBCE40FC()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t sub_1BBCE42EC@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 128))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCE4378@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 176))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCE4424@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 368))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE44BC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  result = (*(v2 + 464))();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE4584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for IndexPath();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1BBCE45D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for IndexPath();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BBCE4680(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_59_1();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCE4718()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE4754()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE478C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewP09Sensitived8AnalysisB0E12interventionyQrAF12InterventionV4KindOFQOyAA08ModifiedD0Vy014CommunicationsB0017ContactAvatarTileE0VAA12_FrameLayoutVG_Qo_ASGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BBCE47EC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE4874()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.asrAssetIdentifier.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1BBCE48A0()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.captionsRecognizerStateManager.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1BBCE48CC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t sub_1BBCE4904()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE4940()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE4980()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.call.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1BBCE49AC()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.asrAvailability.getter(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BBCE4A00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE4A68()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE4AD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = CallTranslationHUDViewModel.isTranslationStarted.getter(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBCE4B2C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB1E970]();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE4B84@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = CallTranslationHUDViewModel.displayTranscripts.getter(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BBCE4BC8()
{
  v0 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAKyAA6VStackVyAA05TupleC0VyAA6HStackVyAOy014CommunicationsB0027CallTranslationLanguagePairC0V_AKyAKyAKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAA4TextVG_AA08BorderedwU0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA05_ClipE0VyAA7CapsuleVGGAA011_ForegroundU8ModifierVyAA012HierarchicalhU0VGGtGG_AcAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyAKyAA06ScrollC0VyAKyAMyAKyAZA4_ySiSgGGSgGAA16_FlexFrameLayoutVGGA38_G_Qo_tGGAA14_PaddingLayoutVGA38_G_Qo_Md, &_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAKyAA6VStackVyAA05TupleC0VyAA6HStackVyAOy014CommunicationsB0027CallTranslationLanguagePairC0V_AKyAKyAKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAA4TextVG_AA08BorderedwU0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA05_ClipE0VyAA7CapsuleVGGAA011_ForegroundU8ModifierVyAA012HierarchicalhU0VGGtGG_AcAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyAKyAA06ScrollC0VyAKyAMyAKyAZA4_ySiSgGGSgGAA16_FlexFrameLayoutVGGA38_G_Qo_tGGAA14_PaddingLayoutVGA38_G_Qo_MR);
  OUTLINED_FUNCTION_4_50();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(v2, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMR, v3);
  OUTLINED_FUNCTION_3_68();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBCE4CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE4D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE4DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE4EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMR);
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v0, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMR, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBCE4F30()
{
  v1 = *(type metadata accessor for ClarityUIContactsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR) + 32);
  v4 = type metadata accessor for NavigationPath();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1BBCE5070()
{
  v1 = *(type metadata accessor for CallControlsMenuView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_1BBCE5168@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlsMenuView.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE5198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE5250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd, &_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE5348(void *a1)
{
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_1();
  return swift_getWitnessTable();
}

uint64_t sub_1BBCE53F8()
{
  outlined consume of CallControlsType(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1BBCE5438()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1BBCE5484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BBCE5498()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE54CC()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE5508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BBCE55B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBCE5698()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE56E0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE571C()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE5750()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE57A0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE57E8()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE5838()
{
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE586C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCE58AC()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE58E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BBCE5928()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCE5960()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1BBCE5A28()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

id sub_1BBCE5A68@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentController.shield.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBCE5AA0()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE5B34()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE5B90()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 120))();
  *v0 = result;
  return result;
}

uint64_t sub_1BBCE5BD4()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 168))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1BBCE5C18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BBCE5C58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1BBCE5CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBCE5D9C()
{

  return swift_deallocObject();
}

uint64_t sub_1BBCE5DDC()
{
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
      (*(v12 + 8))(v0 + v2);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v14 = (v3 + *(v13 + 48));

      if (v14[15] >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v14 + 12);
      }

      if (v14[39])
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v13 + 64) + 8))
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
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v10 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8 + v10, v9);
  }

  return swift_deallocObject();
}