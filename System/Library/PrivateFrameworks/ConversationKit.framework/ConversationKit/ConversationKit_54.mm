uint64_t closure #1 in ScreenSharingInteraction.captureInteraction.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return MEMORY[0x1EEE33AF8]();
}

void ScreenSharingInteraction.captureInteraction.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction) = a1;
  v2 = a1;
  ScreenSharingInteraction.captureInteraction.didset(v3);
}

uint64_t key path getter for ScreenSharingInteraction.isEnabled : ScreenSharingInteraction@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

void ScreenSharingInteraction.isEnabled.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  v5 = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7, v5);
    (*((*v6 & *v2) + 0x128))(&v7);
    outlined consume of RemoteControlState(v7);
  }
}

uint64_t ScreenSharingInteraction.isEnabled.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ScreenSharingInteraction.isEnabled.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  ScreenSharingInteraction.isEnabled.didset(v4);
}

void (*ScreenSharingInteraction.isEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_12_1();
  *(v3 + 32) = *(v1 + v4);
  return ScreenSharingInteraction.isEnabled.modify;
}

void ScreenSharingInteraction.isEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  ScreenSharingInteraction.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

void ScreenSharingInteraction.displayScale.didset(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  v5 = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7, v5);
    (*((*v6 & *v2) + 0x128))(&v7);
    outlined consume of RemoteControlState(v7);
  }
}

double ScreenSharingInteraction.displayScale.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ScreenSharingInteraction.displayScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  ScreenSharingInteraction.displayScale.didset(v4);
}

void (*ScreenSharingInteraction.displayScale.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  OUTLINED_FUNCTION_12_1();
  v3[3] = *(v1 + v4);
  return ScreenSharingInteraction.displayScale.modify;
}

void ScreenSharingInteraction.displayScale.modify(uint64_t a1)
{
  v1 = *a1;
  ScreenSharingInteraction.displayScale.setter(*(*a1 + 24));

  free(v1);
}

uint64_t key path getter for ScreenSharingInteraction.deviceOrientation : ScreenSharingInteraction@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void ScreenSharingInteraction.deviceOrientation.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (v1)
  {
    swift_beginAccess();
    v2 = v1;
    CaptureUIInteraction.deviceOrientation.setter();
  }
}

uint64_t ScreenSharingInteraction.deviceOrientation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ScreenSharingInteraction.deviceOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;
  ScreenSharingInteraction.deviceOrientation.didset();
}

void (*ScreenSharingInteraction.deviceOrientation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ScreenSharingInteraction.deviceOrientation.modify;
}

void ScreenSharingInteraction.deviceOrientation.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ScreenSharingInteraction.deviceOrientation.didset();
  }
}

char *ScreenSharingInteraction.init(interactionController:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMR);
  OUTLINED_FUNCTION_1();
  v35 = v7;
  v36 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMd, _s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v38 = v12;
  v39 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  swift_unknownObjectWeakInit();
  if (specialized Array.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_cancellables] = v21;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled] = 1;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController] = a1;
  v22 = type metadata accessor for ScreenSharingInteraction();
  v41.receiver = v1;
  v41.super_class = v22;
  v23 = a1;
  v24 = objc_msgSendSuper2(&v41, sel_init);
  v25 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x110);
  v26 = v24;
  v25();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = MEMORY[0x1E695C068];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMR, MEMORY[0x1E695C068]);
  Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v20, v15);
  OUTLINED_FUNCTION_8_86();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *v23) + 0x190))(v28);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v29 = static OS_dispatch_queue.main.getter();
  v40 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v30);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<RemoteControlState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMR, v27);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v31 = v36;
  v32 = v37;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v5);

  (*(v35 + 8))(v10, v31);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<RemoteControlState>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMd, _s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v33 = v39;
  Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v32, v33);
  OUTLINED_FUNCTION_8_86();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v26;
}

void closure #1 in ScreenSharingInteraction.init(interactionController:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x120))(v2);
  }
}

void closure #2 in ScreenSharingInteraction.init(interactionController:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x128))(&v5);
  }
}

void ScreenSharingInteraction.updateCaptureInteraction(using:)(uint64_t a1)
{
  ScreenSharingInteraction.captureInteraction.setter(0);
  if (a1)
  {
    v3 = *(*a1 + 312);

    v5 = v3(v4);
    ScreenSharingInteraction.captureInteraction.setter(v5);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7);
    (*((*v6 & *v1) + 0x128))(&v7);

    outlined consume of RemoteControlState(v7);
  }
}

void ScreenSharingInteraction.updateCaptureInteraction(using:)(unint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractionState();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - v12);
  v14 = *a1;
  v15 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v11))
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Log.screenSharing);
    outlined copy of RemoteControlState(v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    outlined consume of RemoteControlState(v14);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v14;
      v37 = v35;
      *v19 = 136315138;
      outlined copy of RemoteControlState(v14);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Updating capture UI interaction for remote control state: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_27();
      v15 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_27();
    }

    v23 = *(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
    if (v23)
    {
      v24 = *((*v15 & *v2) + 0xE8);
      v25 = v23;
      v24();
      v27 = MEMORY[0x1E69C9D48];
      v28 = 1 << (v14 >> 61);
      if ((v28 & 0x23) != 0)
      {
        *v13 = v26;
        v27 = MEMORY[0x1E69C9D40];
      }

      else if ((v28 & 0xC) != 0)
      {
        v27 = MEMORY[0x1E69C9D50];
      }

      (*(v6 + 104))(v13, *v27, v4);
      goto LABEL_18;
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, &static Log.screenSharing);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Screen sharing interactions are disabled, pausing capture UI interaction", v32, 2u);
      OUTLINED_FUNCTION_27();
    }

    v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
    if (v33)
    {
      (*(v6 + 104))(v9, *MEMORY[0x1E69C9D48], v4);
      v25 = v33;
LABEL_18:
      CaptureUIInteraction.interactionState.setter();
    }
  }
}

id ScreenSharingInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenSharingInteraction.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenSharingInteraction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall ScreenSharingInteraction.willMove(to:)(UIView_optional *to)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(to);
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  v19 = v3;
  (*((*v2 & *v1) + 0x90))(0);
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (v4)
  {
    v5 = one-time initialization token for screenSharing;
    v6 = v4;
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.screenSharing);
    v8 = v19;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v13 = v8;
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Removing screen sharing capture interaction from previous view: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    [v8 removeInteraction_];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ScreenSharingInteraction.didMove(to:)(UIView_optional *to)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v4 = to;
  v3(to);
  if (!to)
  {
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v4;
  v19 = v5;
  [(UIView_optional *)v6 addInteraction:?];
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for screenSharing);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Log.screenSharing);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v13 = v8;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Adding screen sharing capture interaction to new view: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_7:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t dispatch thunk of ScreenSharingInteraction.updateCaptureInteraction(using:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

uint64_t partial apply for closure #1 in ScreenSharingInteraction.captureInteraction.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in ScreenSharingInteraction.captureInteraction.didset();
}

void __swiftcall UILabel.init(font:textColor:)(UILabel *__return_ptr retstr, UIFont font, UIColor_optional textColor)
{
  isa = textColor.value.super.isa;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setFont_];
  if (isa)
  {
    v6 = isa;
    [v5 setTextColor_];
  }
}

uint64_t default argument 1 of RemoteControlOnboardingView.init(requestingParticipant:horizontalSizeClass:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemoteControlOnboardingView.init(requestingParticipant:horizontalSizeClass:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_135();
  _s15ConversationKit11ParticipantVWObTm_5();
  v2 = *(type metadata accessor for RemoteControlOnboardingView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of CaptionSectioner.SpeakerSection?();
}

double PresentationAutomaticHeightModifier.calculatedHeight.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return v1;
}

void (*PresentationAutomaticHeightModifier.calculatedHeight.modify(double **a1, uint64_t a2, double a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  *(v6 + 7) = a2;
  v6[6] = a3;
  *v6 = a3;
  *(v6 + 1) = a2;

  *(v6 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return PresentationAutomaticHeightModifier.calculatedHeight.modify;
}

void PresentationAutomaticHeightModifier.calculatedHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v3;
  v1[5] = v2;
  State.wrappedValue.setter();

  free(v1);
}

double PresentationAutomaticHeightModifier.$calculatedHeight.getter(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.projectedValue.getter();
  return v3;
}

uint64_t PresentationAutomaticHeightModifier.body(content:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static Color.clear.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 16))(v9, a1);
  v16 = &v9[*(v6 + 36)];
  *v16 = v13;
  v16[1] = closure #1 in closure #1 in PresentationAutomaticHeightModifier.body(content:);
  v16[2] = 0;
  v16[3] = partial apply for closure #2 in closure #1 in PresentationAutomaticHeightModifier.body(content:);
  v16[4] = v14;
  v16[5] = v10;
  v16[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMR);
  type metadata accessor for PresentationDetent();
  *(swift_allocObject() + 16) = xmmword_1BC4BA940;
  *&v18[2] = a3;
  v18[3] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  static PresentationDetent.height(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>();
  View.presentationDetents(_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMR);
}

uint64_t View.presentationAutomaticHeight()(uint64_t a1, uint64_t a2)
{
  State.init(wrappedValue:)();
  MEMORY[0x1BFB1FAD0](&v5, a1, &type metadata for PresentationAutomaticHeightModifier, a2);
}

id ContactAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E695D0C0]);

  return [v3 initWithContact_];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ContactAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ContactAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ContactAvatarView(uint64_t a1)
{
  lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void RemoteControlOnboardingView.horizontalSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_2_12();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  type metadata accessor for RemoteControlOnboardingView(0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  else
  {
    v28 = static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v28, &dword_1BBC58000, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v26, v20);
  }

  OUTLINED_FUNCTION_30_0();
}

void RemoteControlOnboardingView.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for RemoteControlOnboardingView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundR0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGAUyA9_SgGGGtGG_AQyAmA06_FrameG0VGAQy15ConversationKit013ContactAvatarD033_E7E991686AA57F7698F87F3F451BA23ALLVA20_GA21_AQyAQyAA4TextVAUyAA13TextAlignmentOGGAA010_FixedSizeG0VGA21_A35_A21_AKyAIyAOyAQyAQyAQyAQyAQyA28_A0_GAA05_FlexyG0VGAA11_ClipEffectVyAA9RectangleVGGA3_yA5_yAA16RoundedRectangleVA9_GGGA14_GG_A52_tGGA21_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundR0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGAUyA9_SgGGGtGG_AQyAmA06_FrameG0VGAQy15ConversationKit013ContactAvatarD033_E7E991686AA57F7698F87F3F451BA23ALLVA20_GA21_AQyAQyAA4TextVAUyAA13TextAlignmentOGGAA010_FixedSizeG0VGA21_A35_A21_AKyAIyAOyAQyAQyAQyAQyAQyA28_A0_GAA05_FlexyG0VGAA11_ClipEffectVyAA9RectangleVGGA3_yA5_yAA16RoundedRectangleVA9_GGGA14_GG_A52_tGGA21_tGGMR);
  closure #1 in RemoteControlOnboardingView.body.getter(v1, &v6[*(v7 + 44)]);
  v8 = static Edge.Set.all.getter();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGMR) + 36)];
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  _s15ConversationKit11ParticipantVWOcTm_11();
  v10 = swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGMR) + 36)];
  *v11 = partial apply for closure #2 in RemoteControlOnboardingView.body.getter;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GMR) + 36)] = 256;
  v14[1] = 0;
  State.init(wrappedValue:)();
  v12 = v14[3];
  v13 = &v6[*(v3 + 36)];
  *v13 = v14[2];
  *(v13 + 1) = v12;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>>>)>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ContactAvatarView, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Col();
  View.interactiveDismissDisabled(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMR);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v169 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v168 = (&v138 - v6);
  v157 = type metadata accessor for UserInterfaceSizeClass();
  v173 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v174);
  v160 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v152 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v138 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v172 = &v138 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v138 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v138 - v22;
  v23 = type metadata accessor for RemoteControlOnboardingView(0) - 8;
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundJ0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAIyAYSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundJ0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAIyAYSgGGGMR);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v138 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v167 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v138 - v33;
  *v34 = static VerticalAlignment.center.getter();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAOyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundQ0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGASyA7_SgGGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAOyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundQ0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGASyA7_SgGGGtGGMR) + 44);
  v166 = v34;
  v36 = &v34[v35];
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v37 = *(v25 + 16);
  v38 = v165;
  v37(v165, v29, v24);
  *v36 = 0;
  v36[8] = 1;
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundK0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAKyA_SgGGGtMd, &_s7SwiftUI6SpacerV_AA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundK0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAKyA_SgGGGtMR) + 48)];
  v40 = v157;
  v37(v39, v38, v24);
  v41 = *(v25 + 8);
  v42 = v29;
  v43 = v156;
  v41(v42, v24);
  v41(v38, v24);
  v44 = v174;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v164 = v281;
  v165 = v279;
  v162 = v284;
  v163 = v283;
  v320 = 1;
  v318 = v280;
  v316 = v282;
  v175 = a1;
  Participant.contactDetails.getter();
  v45 = v241;

  v54 = v173;
  if (!v45)
  {
    v55 = *(v175 + *(type metadata accessor for Participant(0) + 28));
    if (v55)
    {
      v46 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
    }

    else
    {
      v46 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    }

    v45 = v46;
    v54 = v173;
  }

  v161 = v45;
  v56 = v158;
  RemoteControlOnboardingView.horizontalSizeClass.getter(v46, v47, v48, v49, v50, v51, v52, v53, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, KeyPath);
  v57 = *(v54 + 104);
  v58 = v171;
  LODWORD(v155) = *MEMORY[0x1E697FF40];
  v154 = v57;
  v57(v171);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v40);
  v59 = *(v44 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v60 = v43;
  if (__swift_getEnumTagSinglePayload(v43, 1, v40) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v60 = v43;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (__swift_getEnumTagSinglePayload(v43 + v59, 1, v40) == 1)
    {
      v61 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
      v62 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
LABEL_12:
      v64 = v60;
      goto LABEL_14;
    }

LABEL_11:
    v61 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    v62 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR;
    goto LABEL_12;
  }

  v63 = v151;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v40) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v171, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v54 + 8))(v63, v40);
    goto LABEL_11;
  }

  v65 = v153;
  (*(v54 + 32))(v153, v60 + v59, v40);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v54 + 8);
  v66(v65, v40);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v171, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v66(v63, v40);
  v64 = v60;
  v61 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
  v62 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
LABEL_14:
  v67 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, v61, v62);
  v68 = v160;
  v69 = v172;
  v70 = v174;
  RemoteControlOnboardingView.horizontalSizeClass.getter(v67, v71, v72, v73, v74, v75, v76, v77, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, KeyPath);
  v78 = v159;
  v154(v159, v155, v40);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v40);
  v79 = *(v70 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v68, 1, v40) != 1)
  {
    v82 = v152;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v68 + v79, 1, v40) != 1)
    {
      v84 = v173;
      v85 = v153;
      (*(v173 + 32))(v153, v68 + v79, v40);
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v86 = *(v84 + 8);
      v86(v85, v40);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v172, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v86(v82, v40);
      v83 = v68;
      v80 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
      v81 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
      goto LABEL_22;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v172, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v173 + 8))(v82, v40);
    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (__swift_getEnumTagSinglePayload(v68 + v79, 1, v40) != 1)
  {
LABEL_19:
    v80 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    v81 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR;
    goto LABEL_20;
  }

  v80 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
  v81 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
LABEL_20:
  v83 = v68;
LABEL_22:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, v80, v81);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v172 = v285;
  LODWORD(v171) = v286;
  v160 = v287;
  LODWORD(v159) = v288;
  v157 = v290;
  v158 = v289;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v155 = v291;
  v156 = v293;
  v173 = v296;
  v174 = v295;
  v256 = 1;
  v254 = v292;
  v252 = v294;
  v145 = objc_opt_self();
  v87 = [v145 conversationKit];
  v321._object = 0xE000000000000000;
  v88.value._countAndFlagsBits = 0x61737265766E6F43;
  v88.value._object = 0xEF74694B6E6F6974;
  v89._object = 0x80000001BC511F00;
  v89._countAndFlagsBits = 0xD000000000000018;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v321._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v88, v87, v90, v321);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v92 = v241;

  Participant.name(_:)();
  v94 = v93;
  v96 = v95;

  *(v91 + 56) = MEMORY[0x1E69E6158];
  *(v91 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v91 + 32) = v94;
  *(v91 + 40) = v96;
  v97 = String.init(format:_:)();
  v99 = v98;

  v241 = v97;
  v242 = v99;
  v144 = lazy protocol witness table accessor for type String and conformance String();
  v100 = Text.init<A>(_:)();
  v102 = v101;
  LOBYTE(v91) = v103;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v104 = Text.font(_:)();
  v106 = v105;
  LOBYTE(v92) = v107;

  outlined consume of Text.Storage(v100, v102, v91 & 1);

  LODWORD(v241) = static HierarchicalShapeStyle.primary.getter();
  v108 = Text.foregroundStyle<A>(_:)();
  v153 = v109;
  v154 = v108;
  LOBYTE(v102) = v110;
  v152 = v111;
  outlined consume of Text.Storage(v104, v106, v92 & 1);

  KeyPath = swift_getKeyPath();
  HIDWORD(v147) = v102 & 1;
  LOBYTE(v241) = v102 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v146 = v297;
  v148 = v299;
  v150 = v302;
  v151 = v301;
  v262 = 1;
  v260 = v298;
  v258 = v300;
  v112 = [v145 conversationKit];
  v322._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0xD000000000000024;
  v113._object = 0x80000001BC511F20;
  v114.value._countAndFlagsBits = 0x61737265766E6F43;
  v114.value._object = 0xEF74694B6E6F6974;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v322._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v112, v115, v322);

  v116 = String.init(format:_:)();
  v118 = v117;

  v241 = v116;
  v242 = v118;
  v119 = Text.init<A>(_:)();
  v121 = v120;
  LOBYTE(v92) = v122;
  LODWORD(v241) = static HierarchicalShapeStyle.primary.getter();
  v123 = Text.foregroundStyle<A>(_:)();
  v144 = v124;
  v145 = v123;
  v126 = v125;
  v143 = v127;
  outlined consume of Text.Storage(v119, v121, v92 & 1);

  v128 = swift_getKeyPath();
  LOBYTE(v92) = v126 & 1;
  LOBYTE(v241) = v126 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v129 = v303;
  v142 = v307;
  v140 = v305;
  v141 = v308;
  v268 = 1;
  v266 = v304;
  v264 = v306;
  v130 = static VerticalAlignment.center.getter();
  v131 = v168;
  *v168 = v130;
  *(v131 + 8) = 0;
  *(v131 + 16) = 1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA4TextVAA08_PaddingG0VGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeD0VyAA07RoundedR0VAA5ColorVGGGAA022_EnvironmentKeyWritingT0VyA7_SgGGG_A16_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA4TextVAA08_PaddingG0VGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeD0VyAA07RoundedR0VAA5ColorVGGGAA022_EnvironmentKeyWritingT0VyA7_SgGGG_A16_tGGMR);
  closure #3 in closure #1 in RemoteControlOnboardingView.body.getter(v175, v131 + *(v132 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v133 = v309;
  v175 = v313;
  v138 = v311;
  v139 = v314;
  v274 = 1;
  v272 = v310;
  v270 = v312;
  v135 = v166;
  v134 = v167;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v233 = v165;
  v236 = v164;
  v239 = v163;
  v240 = v162;
  v231 = v320;
  *v232 = *v319;
  *&v232[3] = *&v319[3];
  v234 = v318;
  *v235 = *v317;
  *&v235[3] = *&v317[3];
  v237 = v316;
  *v238 = *v315;
  v230 = 0;
  *&v238[3] = *&v315[3];
  v241 = v134;
  v242 = &v230;
  v224[0] = v161;
  v224[1] = v172;
  v225 = v171;
  v226 = v160;
  v227 = v159;
  v228 = v158;
  v229 = v157;
  v213 = 0;
  v214 = v256;
  *v215 = *v255;
  *&v215[3] = *&v255[3];
  v216 = v155;
  v217 = v254;
  *v218 = *v253;
  *&v218[3] = *&v253[3];
  v219 = v156;
  v220 = v252;
  *&v221[3] = *&v251[3];
  *v221 = *v251;
  v222 = v174;
  v223 = v173;
  v243 = v224;
  v244 = &v213;
  *&v211 = v154;
  *(&v211 + 1) = v153;
  LOBYTE(v212[0]) = BYTE4(v147);
  *(&v212[0] + 1) = v152;
  *&v212[1] = KeyPath;
  WORD4(v212[1]) = 1;
  BYTE10(v212[1]) = 1;
  v200 = 0;
  v201 = v262;
  *v202 = *v261;
  *&v202[3] = *&v261[3];
  v203 = v146;
  v204 = v260;
  *v205 = *v259;
  *&v205[3] = *&v259[3];
  v206 = v148;
  v207 = v258;
  *&v208[3] = *&v257[3];
  *v208 = *v257;
  v209 = v151;
  v210 = v150;
  v245 = &v211;
  v246 = &v200;
  *&v198 = v145;
  *(&v198 + 1) = v144;
  LOBYTE(v199[0]) = v92;
  *(&v199[0] + 1) = v143;
  *&v199[1] = v128;
  WORD4(v199[1]) = 1;
  BYTE10(v199[1]) = 1;
  v187 = 0;
  v188 = v268;
  *v189 = *v267;
  *&v189[3] = *&v267[3];
  v190 = v129;
  v191 = v266;
  *v192 = *v265;
  *&v192[3] = *&v265[3];
  v193 = v140;
  v194 = v264;
  *&v195[3] = *&v263[3];
  *v195 = *v263;
  v196 = v142;
  v197 = v141;
  v247 = &v198;
  v248 = &v187;
  v136 = v169;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v176 = 0;
  v177 = v274;
  *v178 = *v273;
  *&v178[3] = *&v273[3];
  v179 = v133;
  v180 = v272;
  *v181 = *v271;
  *&v181[3] = *&v271[3];
  v182 = v138;
  v183 = v270;
  *v184 = *v269;
  *&v184[3] = *&v269[3];
  v185 = v175;
  v186 = v139;
  v249 = v136;
  v250 = &v176;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA6HStackVyAFyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundQ0VyAA06_ShapeC0VyAA6CircleVAA5ColorVGGGATyA8_SgGGGtGG_APyAlA06_FrameT0VGAPy15ConversationKit013ContactAvatarC033_E7E991686AA57F7698F87F3F451BA23ALLVA19_GA20_APyAPyAA4TextVATyAA13TextAlignmentOGGAA010_FixedSizeT0VGA20_A34_A20_AJyAFyANyAPyAPyAPyAPyAPyA27_A_GAA05_FlexyT0VGAA11_ClipEffectVyAA9RectangleVGGA2_yA4_yAA16RoundedRectangleVA8_GGGA13_GG_A51_tGGA20_QP_Tt1g5(&v241, v170);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v131, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v135, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMR);
  v275 = v198;
  v276[0] = v199[0];
  *(v276 + 11) = *(v199 + 11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v275, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMR);
  v277 = v211;
  v278[0] = v212[0];
  *(v278 + 11) = *(v212 + 11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v277, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMR);

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMR);
}

Swift::Void __swiftcall RemoteControlOnboardingView.didDismiss(remoteControl:)(Swift::Bool remoteControl)
{
  type metadata accessor for DismissAction();
  OUTLINED_FUNCTION_2_12();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x1F8))(remoteControl);
  type metadata accessor for RemoteControlOnboardingView(0);
  specialized Environment.wrappedValue.getter(v7);
  DismissAction.callAsFunction()();
  (*(v3 + 8))(v7);
}

uint64_t closure #2 in closure #1 in closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32[-v3];
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32[-v10];
  Image.init(systemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v13 = Image.symbolRenderingMode(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF0], v5);
  v14 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  static Font.Weight.bold.getter();
  v15 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  LOBYTE(v6) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v32[8] = 0;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = [objc_opt_self() quaternaryLabelColor];
  v29 = Color.init(uiColor:)();
  v30 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v6;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = 0;
  *(a1 + 72) = v29;
  *(a1 + 80) = 256;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = result;
  *(a1 + 112) = v30;
  return result;
}

uint64_t closure #3 in closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v26 = a2;
  v2 = type metadata accessor for RemoteControlOnboardingView(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v22[0] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24 = v22 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v23 = v22 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  v14 = v23;
  Button.init(action:label:)();
  v15 = *(v5 + 16);
  v16 = v24;
  v15(v24, v13, v4);
  v17 = v25;
  v15(v25, v14, v4);
  v18 = v26;
  v15(v26, v16, v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGG_A8_tMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGG_A8_tMR);
  v15((v18 + *(v19 + 48)), v17, v4);
  v20 = *(v5 + 8);
  v20(v14, v4);
  v20(v13, v4);
  v20(v17, v4);
  return (v20)(v16, v4);
}

void closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter()
{
  closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter();
}

{
  OUTLINED_FUNCTION_29();
  v48 = v0;
  v49 = v1;
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = [objc_opt_self() conversationKit];
  v54._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = v6;
  v13._object = v4;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v54);

  v15 = String.init(format:_:)();
  v17 = v16;

  v53[0] = v15;
  v53[1] = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v45 = v24;
  v46 = v23;
  LOBYTE(v6) = v25;
  v27 = v26;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  LOBYTE(v18) = static Edge.Set.all.getter();
  LOBYTE(v6) = v6 & 1;
  v51 = v6;
  v50 = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(v53);
  memcpy(&v52[7], v53, 0x70uLL);
  v28 = &v10[*(v7 + 44)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  (*(v31 + 104))(&v28[v29], v30);
  *v28 = v47;
  v32 = [objc_opt_self() quaternaryLabelColor];
  v33 = Color.init(uiColor:)();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  *&v28[*(v34 + 52)] = v33;
  *&v28[*(v34 + 56)] = 256;
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMR) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = v45;
  *v10 = v46;
  *(v10 + 1) = v39;
  v10[16] = v6;
  *(v10 + 3) = v27;
  v10[32] = v18;
  *(v10 + 56) = 0u;
  *(v10 + 40) = 0u;
  v10[72] = 1;
  v40 = memcpy(v10 + 73, v52, 0x77uLL);
  *(v10 + 96) = 0;
  v41 = v48(v40);
  KeyPath = swift_getKeyPath();
  v43 = v49;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMR) + 36));
  *v44 = KeyPath;
  v44[1] = v41;
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteControlOnboardingView.body.getter(uint64_t a1, char a2)
{
  type metadata accessor for DismissAction();
  OUTLINED_FUNCTION_2_12();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x1F8))(a2 & 1);
  type metadata accessor for RemoteControlOnboardingView(0);
  specialized Environment.wrappedValue.getter(v9);
  DismissAction.callAsFunction()();
  return (*(v5 + 8))(v9, v2);
}

void closure #4 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter()
{
  __asm { FMOV            V0.2D, #26.0 }

  closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter();
}

uint64_t closure #2 in RemoteControlOnboardingView.body.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Defaults.shared;
  v3 = (*(*static Defaults.shared + 928))();
  Participant.contactDetails.getter();

  if (v16)
  {
    v4 = [v16 identifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = *(a1 + *(type metadata accessor for Participant(0) + 28));
    if (v8 && (outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v8), v9))
    {
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      v11 = String.hashWithSalt(salt:)(v10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + 16 * v12 + 32) = v11;
    }

    else
    {
    }
  }

  return (*(*v2 + 936))(v3);
}

uint64_t type metadata accessor for RemoteControlOnboardingView(uint64_t a1)
{
  result = type metadata singleton initialization cache for RemoteControlOnboardingView;
  if (!type metadata singleton initialization cache for RemoteControlOnboardingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PresentationAutomaticHeightModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA5ColorVAA015_GeometryActionD0Vy12CoreGraphics7CGFloatVGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA5ColorVAA015_GeometryActionD0Vy12CoreGraphics7CGFloatVGGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in RemoteControlOnboardingView.body.getter()
{
  v1 = *(type metadata accessor for RemoteControlOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in RemoteControlOnboardingView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier()
{
  result = lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier;
  if (!lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationAutomaticHeightModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationAutomaticHeightModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for RemoteControlOnboardingView(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<DismissAction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DismissAction>)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DismissAction>);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAA15ModifiedContentVyAA01_c9Modifier_I0Vy15ConversationKit0f15AutomaticHeightJ0VGAA011_BackgroundJ0VyAIyAA5ColorVAA015_GeometryActionJ0Vy12CoreGraphics7CGFloatVGGGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView()
{
  result = lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView;
  if (!lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView;
  if (!lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Circle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA6CircleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA6CircleVAA5ColorVGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMR, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_5Tm_2()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RemoteControlOnboardingView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
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
      OUTLINED_FUNCTION_7_0();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
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

  v5 = type metadata accessor for Participant(0);
  v6 = v5[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v7 + 8))(v3 + v6);
  v8 = (v3 + v5[7]);
  if (*v8)
  {
  }

  v9 = v3 + v5[14];
  v10 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v11 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9 + v11, v10);
  }

  v12 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 8))(v3 + v12);
  }

  else
  {
  }

  v14 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(v3 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

ConversationKit::CallHoldingButtonConfiguration __swiftcall CallHoldingButtonConfiguration.init(isEnabled:isHidden:)(Swift::Bool isEnabled, Swift::Bool isHidden)
{
  *v2 = isEnabled;
  v2[1] = isHidden;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t storeEnumTagSinglePayload for CallHoldingButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

Swift::String __swiftcall TUCall.waitOnHoldSubtitle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = [v0 imageURL];
  if (!v5)
  {
    v14 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
    outlined destroy of URL?(v4);
    goto LABEL_6;
  }

  v6 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  outlined destroy of URL?(v4);
  v8 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v0);
  if (!v9)
  {
LABEL_6:
    v15 = [v0 displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;

    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v22 = v8;
  v23 = v9;
  v12 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v0);
  if (v13)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    MEMORY[0x1BFB20B10](v12);

    MEMORY[0x1BFB20B10](v20, v21);

    v10 = v22;
    v11 = v23;
  }

LABEL_7:
  v17 = v10;
  v18 = v11;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

id @objc TUCall.waitOnHoldSubtitle()(void *a1)
{
  v1 = a1;
  v2 = TUCall.waitOnHoldSubtitle()();

  v3 = MEMORY[0x1BFB209B0](v2._countAndFlagsBits, v2._object);

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(void *a1)
{
  v1 = [a1 companyDepartment];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  outlined init with copy of TaskPriority?(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TapInteractionHandler?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      OUTLINED_FUNCTION_24();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_28_0();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_24();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

id WaitOnHoldServiceComposer.compose()()
{
  v0 = objc_allocWithZone(type metadata accessor for WaitOnHoldService());

  return [v0 init];
}

id WaitOnHoldService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WaitOnHoldServiceComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WaitOnHoldServiceComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for WaitOnHoldService.cancellables : WaitOnHoldService@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

double WaitOnHoldService.cancellables.getter()
{
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_cancellables, v2);

  return result;
}

double WaitOnHoldService.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_cancellables;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = a1;

  return result;
}

uint64_t key path getter for WaitOnHoldService.requiresUserAttention : WaitOnHoldService@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t WaitOnHoldService.requiresUserAttention.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention, v3);
  return *(v0 + v1);
}

uint64_t WaitOnHoldService.requiresUserAttention.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t WaitOnHoldService.requiresUserAttentionReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v10 = *(v9 + 232);
    v16 = v11;

    v10(v12);

    return (*(v16 + 32))(a1, v8, v3);
  }

  else
  {
    v14 = *MEMORY[0x1E6995C70];
    v15 = *(v5 + 104);

    return v15(a1, v14, v3);
  }
}

double WaitOnHoldService.statusMessages.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v4 = *(v3 + 360);
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMR);
    OUTLINED_FUNCTION_3_132();
    *(a1 + 32) = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMR, v6);
    __swift_allocate_boxed_opaque_existential_1(a1);

    v4(v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double WaitOnHoldService.transcriptUpdates.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v4 = *(v3 + 368);
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMR);
    OUTLINED_FUNCTION_3_132();
    *(a1 + 32) = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMR, v6);
    __swift_allocate_boxed_opaque_existential_1(a1);

    v4(v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void WaitOnHoldService.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_1();
  v90 = v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMR);
  OUTLINED_FUNCTION_1();
  v85 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v84 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v88 = v9;
  v89 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v86 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v83 = v14;
  v15 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v82 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMd, &_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMR);
  OUTLINED_FUNCTION_1();
  v77 = v22;
  v78 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v80 = v26;
  v81 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  v79 = v29;
  v30 = type metadata accessor for AttributeContainer();
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v40 = v39 - v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_cancellables] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets] = 0;
  v41 = &v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID];
  *v41 = 0;
  v41[1] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention] = 0;
  v42 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v43 = __swift_project_value_buffer(v34, &static Logger.callHolding);
  (*(v36 + 16))(v40, v43, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore31CallScreeningActivityControllerCyAA0E7WrapperCGMd, &_s20CommunicationsUICore31CallScreeningActivityControllerCyAA0E7WrapperCGMR);
  swift_allocObject();
  *&v1[v42] = CallScreeningActivityController.init(logger:)();
  v44 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v45.super.isa = v44;
  OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC500610, v46, v47, v45);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation16AttributedStringVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation16AttributedStringVSgs5NeverOGMR);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessagePublisher] = CurrentValueSubject.init(_:)();
  v92.receiver = v1;
  v92.super_class = type metadata accessor for WaitOnHoldService();
  v52 = objc_msgSendSuper2(&v92, sel_init);
  WaitOnHoldService.stopActivity()();
  v76 = objc_opt_self();
  v53 = [v76 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.compactMap<A>(_:)();
  v75 = *(v17 + 8);
  v75(v82, v15);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v54 = static OS_dispatch_queue.main.getter();
  v74 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<NSNotificationCenter.Publisher, TUCall> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMd, &_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMR, MEMORY[0x1E695BC80]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v83, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v77 + 8))(v25, v78);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CompactMap<NSNotificationCenter.Publisher, TUCall>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  Publisher<>.sink(receiveValue:)();

  (*(v81 + 8))(v79, v80);
  OUTLINED_FUNCTION_46_20();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v60 = [v76 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallCSgMd, &_sSo6TUCallCSgMR);
  Publisher.map<A>(_:)();
  v75(v82, v15);
  v91 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v74);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUCall?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMR, MEMORY[0x1E695BD60]);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v83, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v85 + 8))(v84, v87);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Map<NSNotificationCenter.Publisher, TUCall?>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMR, v59);
  Publisher<>.sink(receiveValue:)();

  (*(v88 + 8))(v86, v89);
  OUTLINED_FUNCTION_46_20();
  AnyCancellable.store(in:)();
  swift_endAccess();

  static TaskPriority.background.getter();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  OUTLINED_FUNCTION_20();
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_37_0();
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v68;
  v70 = OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(v70, v71, v90, v72, v73);

  outlined destroy of TapInteractionHandler?(v90, &_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_30_0();
}

void closure #2 in WaitOnHoldService.init()(void **a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call);
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v11 = [v6 callUUID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [v10 callUUID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {

LABEL_18:
        return;
      }
    }

    v21 = [v6 smartHoldingSession];
    if (!v21)
    {
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x130))();
      WaitOnHoldService.stopActivity()();
      v25 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
      type metadata accessor for MainActor();
      v26 = static MainActor.shared.getter();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      *(v27 + 16) = v26;
      *(v27 + 24) = v28;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      return;
    }

    v22 = v21;
    v23 = [v21 state] == 3;
    (*((*MEMORY[0x1E69E7D40] & *v8) + 0x130))(v23);
    v24 = [v22 state];
    if (v24 && v24 != 3)
    {
      WaitOnHoldService.stopActivity()();
    }

    else
    {
      WaitOnHoldService.startActivity()();
    }

    v29 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v29);
    type metadata accessor for MainActor();
    v30 = v22;
    v31 = v6;
    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v30;
    v33[5] = v31;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    goto LABEL_18;
  }
}

uint64_t closure #1 in closure #2 in WaitOnHoldService.init()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in WaitOnHoldService.init(), v2, v1);
}

{
  OUTLINED_FUNCTION_9();

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.callHolding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v3);
    OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v4, v2, "Dismissing Wait on Hold tip because SmartHolding session has ended");
    OUTLINED_FUNCTION_26();
  }

  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t closure #2 in closure #2 in WaitOnHoldService.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in WaitOnHoldService.init(), v7, v6);
}

uint64_t closure #2 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);

  v2 = [v1 state] == 2 && objc_msgSend(*(v0 + 24), sel_smartHoldingAvailability) == 1;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.callHolding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Updating Tip, deleteHold: %{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0(v0[10] + 16, (v0 + 2));
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = type metadata accessor for WaitOnHoldController();
    v0[13] = WaitOnHoldController.__allocating_init()();
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = closure #5 in WaitOnHoldService.init();

    return MEMORY[0x1EEDF27E8]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
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
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = closure #5 in WaitOnHoldService.init();
  }

  else
  {

    v7 = closure #5 in WaitOnHoldService.init();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 128) = *(v0 + 120);
  WaitOnHoldController.__allocating_init()();
  *(v0 + 144) = WaitOnHoldController.hasAvailableAssets.getter() & 1;

  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = OUTLINED_FUNCTION_12_68();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

void closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  specialized closure #1 in closure #5 in WaitOnHoldService.init()(v0 + 64, v1);
  if (v2)
  {
  }

  else
  {
    MEMORY[0x1BFB23F10](v0 + 64);

    MEMORY[0x1EEE6DFA0](closure #5 in WaitOnHoldService.init(), 0, 0);
  }
}

uint64_t closure #5 in WaitOnHoldService.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v21 = *(v18 + 120);
  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v22, &static Logger.callHolding);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v18 + 120);
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_42();
    v29 = swift_slowAlloc();
    a9 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a9);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_47_14(&dword_1BBC58000, v33, v34, "WaitOnHoldController prewarming failed: %s");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  *(v18 + 128) = 0;
  WaitOnHoldController.__allocating_init()();
  *(v18 + 144) = WaitOnHoldController.hasAvailableAssets.getter() & 1;

  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v18 + 136) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_12_68();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

void specialized closure #1 in closure #5 in WaitOnHoldService.init()(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets] = a2 & 1;
  }

  if (a2)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()();
    }
  }
}

void WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v65 - v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call);
  if (!v16 || *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets) != 1)
  {
    goto LABEL_5;
  }

  v67 = v15;
  v68 = v65 - v14;
  v17 = v16;
  v1 = &off_1E7FE9000;
  v18 = [v17 callUUID];
  v69 = v8;
  v19 = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v69;
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {

    outlined destroy of TapInteractionHandler?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_5:
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.callHolding);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v24);
      _os_log_impl(&dword_1BBC58000, v22, v23, "Not starting hold detection: missing call or assets", v1, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_10;
  }

  v65[0] = *(v67 + 32);
  v65[1] = v67 + 32;
  (v65[0])(v68, v7, v20);
  v26 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID);
  v25 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID + 8);

  v66 = v17;
  v27 = [v17 callUUID];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v25)
  {
    if (v26 == v28 && v25 == v30)
    {

      goto LABEL_27;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_27:
      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v41, &static Logger.callHolding);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = OUTLINED_FUNCTION_18_0(v43);
      v45 = v66;
      v46 = v69;
      if (v44)
      {
        v47 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v47);
        v49 = "Not starting hold detection: have already started hold detection for this call";
LABEL_35:
        OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v48, v43, v49);
        OUTLINED_FUNCTION_26();

LABEL_37:
        (*(v67 + 8))(v68, v46);
        goto LABEL_10;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 currentAudioAndVideoCallCount];

  if (v34 != 1)
  {
    v45 = v66;
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v50, &static Logger.callHolding);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v51 = OUTLINED_FUNCTION_18_0(v43);
    v46 = v69;
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v52);
      v49 = "Not starting hold detection: more than one call ongoing";
      goto LABEL_35;
    }

LABEL_36:

    goto LABEL_37;
  }

  v35 = v66;
  if ([v66 smartHoldingHoldDetectionAvailability] == 1 && (objc_msgSend(v35, sel_isWaitOnHoldActive) & 1) == 0)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    OUTLINED_FUNCTION_20();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = v67;
    v59 = v69;
    (*(v67 + 16))(v12, v68, v69);
    type metadata accessor for MainActor();
    v60 = v35;

    v61 = static MainActor.shared.getter();
    v62 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v63 = swift_allocObject();
    v64 = MEMORY[0x1E69E85E0];
    v63[2] = v61;
    v63[3] = v64;
    v63[4] = v60;
    (v65[0])(v63 + v62, v12, v59);
    *(v63 + ((v10 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v58 + 8))(v68, v59);
  }

  else
  {
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v36, &static Logger.callHolding);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v38))
    {
      v39 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v39);
      OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v40, v38, "Not starting hold detection: call is not eligible");
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    (*(v67 + 8))(v68, v69);
  }

LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v8;
  v6[27] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded(), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v21 = v18[22];
  v22 = type metadata accessor for Logger();
  v18[28] = OUTLINED_FUNCTION_52(v22, &static Logger.callHolding);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18[22];
    v27 = OUTLINED_FUNCTION_42();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 136315138;
    v29 = [v26 callUUID];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &a9);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Begining hold detection for call %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }

  v34 = [objc_opt_self() sharedInstance];
  v18[29] = v34;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18[30] = isa;
  v18[2] = v18;
  v18[3] = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  v36 = swift_continuation_init();
  v18[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v18[10] = MEMORY[0x1E69E9820];
  v18[11] = 1107296256;
  v18[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v18[13] = &block_descriptor_77;
  v18[14] = v36;
  [v34 performSmartHoldingRequestWithType:1 forCallWithUUID:isa completion:v18 + 10];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v37);
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 248) = v4;
  v5 = v3[27];
  v6 = v3[26];
  if (v4)
  {
    v7 = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  }

  else
  {
    v7 = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);

  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 80);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(v0 + 176) callUUID];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = &v5[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID];
    *v10 = v7;
    v10[1] = v9;
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  v18 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];

  swift_willThrow();

  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v3) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[31];
    v7 = OUTLINED_FUNCTION_42();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_47_14(&dword_1BBC58000, v12, v13, "Unable to start hold detection: %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
    v14 = v0[31];
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = type metadata accessor for AttributedString();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMR);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v8;
  v4[25] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateForCall(withUUID:), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_4_0(v0[11] + 16, (v0 + 2));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService), v0[26] = v3, , v2, v3))
  {
    v4 = v0[11];
    OUTLINED_FUNCTION_0_1();
    (*(v5 + 360))();
    OUTLINED_FUNCTION_3_132();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v6, v7, v8, v9);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    OUTLINED_FUNCTION_4_0(v4 + 16, (v0 + 5));
    OUTLINED_FUNCTION_4_0(v4 + 16, (v0 + 8));
    v10 = static MainActor.shared.getter();
    v0[27] = v10;
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_11_84(v11);
    v13 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v12, v10, v13);
  }

  else
  {

    OUTLINED_FUNCTION_48_16();

    OUTLINED_FUNCTION_13();

    return v14();
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

  if (!v0)
  {

    v8 = *(v3 + 192);
    v9 = *(v3 + 200);

    return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateForCall(withUUID:), v8, v9);
  }

  return result;
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v11 = v10[16];
  v12 = v10[12];
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v10[20] + 8))(v10[21], v10[19]);

LABEL_5:
    OUTLINED_FUNCTION_48_16();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  (*(v10[13] + 32))(v10[14], v11, v12);
  if (static Task<>.isCancelled.getter())
  {
    v14 = v10[20];
    v13 = v10[21];
    v15 = v10[19];
    v17 = v10[13];
    v16 = v10[14];
    v18 = v10[12];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v31 = v10[14];
    v30 = v10[15];
    v32 = v10[12];
    v33 = v10[13];

    (*(v33 + 16))(v30, v31, v32);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
    CurrentValueSubject.send(_:)();

    outlined destroy of TapInteractionHandler?(v30, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    WaitOnHoldService.updateActivity(message:)(v10[14]);
  }

  (*(v10[13] + 8))(v10[14], v10[12]);
  v10[27] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
  v39 = swift_task_alloc();
  v10[28] = v39;
  *v39 = v10;
  OUTLINED_FUNCTION_11_84(v39);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D8D0](v40, v41, v42);
}

void WaitOnHoldService.startActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call];
  if (v3)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    type metadata accessor for MainActor();
    v8 = v3;
    v9 = v0;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v8;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in WaitOnHoldService.startActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd, &_s20CommunicationsUICore14ActivitySymbolVSgMR);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd, &_s20CommunicationsUICore18ActivityLabelStyleOSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for IntelligenceActivityAttributes();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  type metadata accessor for AttributeContainer();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for AttributedString();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v10;
  v5[26] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.startActivity(), v10, v9);
}

uint64_t closure #1 in WaitOnHoldService.startActivity()()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  v0[27] = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  v0[28] = *(v1 + v2);
  v5 = (*MEMORY[0x1E6995FD0] + MEMORY[0x1E6995FD0]);

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WaitOnHoldService.startActivity();

  return v5();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.startActivity(), v5, v4);
}

{
  v1 = v0[4];
  v2 = [v1 waitOnHoldSubtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v1);
  if (v3)
  {
    if (*(v3 + 16))
    {
    }
  }

  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[19];
  v41 = v0[4];
  v8 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v9.super.isa = v8;
  OUTLINED_FUNCTION_17_0(v10, v11, v12, v13, v9);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v6 + 16))(v5, v4, v7);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v14 = [v41 imageURL];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[14];
  v42 = v0[27];
  v18 = v0[3];
  v19 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
  type metadata accessor for ActivityLabelStyle();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
  IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)();
  CurrentValueSubject.value.getter();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
  v0[30] = *(v18 + v42);
  v43 = (*MEMORY[0x1E6995FD8] + MEMORY[0x1E6995FD8]);

  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = closure #1 in WaitOnHoldService.startActivity();
  v38 = v0[17];
  v39 = v0[11];

  return v43(v0 + 2, v38, v39);
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
  v3[32] = v0;

  if (v0)
  {
    v7 = v3[25];
    v8 = v3[26];
    v9 = closure #1 in WaitOnHoldService.startActivity();
  }

  else
  {

    v7 = v3[25];
    v8 = v3[26];
    v9 = closure #1 in WaitOnHoldService.startActivity();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_23_45();

  OUTLINED_FUNCTION_13();

  return v10();
}

{

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = v0[32];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = OUTLINED_FUNCTION_28_0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[23];
  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[16];
  v23 = v0[15];
  v24 = v0[17];
  v12 = v0[10];
  v22 = v0[11];
  v13 = v0[9];
  if (v6)
  {
    v21 = v0[23];
    v14 = OUTLINED_FUNCTION_42();
    v20 = v9;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to start the WOH Live Activity: %@", v14, 0xCu);
    outlined destroy of TapInteractionHandler?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v9 = v20;
    OUTLINED_FUNCTION_27();
    v8 = v21;
    OUTLINED_FUNCTION_27();
  }

  (*(v12 + 8))(v22, v13);
  (*(v11 + 8))(v24, v23);
  (*(v10 + 8))(v8, v9);
  OUTLINED_FUNCTION_23_45();

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t WaitOnHoldService.stopActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in WaitOnHoldService.stopActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.stopActivity(), v6, v5);
}

uint64_t closure #1 in WaitOnHoldService.stopActivity()()
{
  OUTLINED_FUNCTION_24_0();

  dispatch thunk of CallScreeningActivityController.stopActivity()();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t WaitOnHoldService.updateActivity(message:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  (*(v5 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  type metadata accessor for MainActor();
  v15 = v1;
  v16 = static MainActor.shared.getter();
  v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = v15;
  (*(v5 + 32))(&v18[v17], &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in WaitOnHoldService.updateActivity(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd, &_s20CommunicationsUICore14ActivitySymbolVSgMR);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateActivity(message:), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.updateActivity(message:)()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;

  dispatch thunk of CallScreeningActivityController.currentActivity.getter();

  v3 = v0[2];
  v0[16] = v3;
  if (v3)
  {
    v4 = v0[9];
    v5 = v0[4];
    v6 = v0[5];
    v0[17] = *(v1 + v2);
    v0[3] = v3;
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(v4, v6, v7);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    v14 = type metadata accessor for ActivitySymbol();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x128);

    v21(v22);
    IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
    v32 = (*MEMORY[0x1E6995FE8] + MEMORY[0x1E6995FE8]);
    v23 = swift_task_alloc();
    v0[18] = v23;
    *v23 = v0;
    v23[1] = closure #1 in WaitOnHoldService.updateActivity(message:);
    v24 = v0[12];

    return v32(v0 + 3, v24);
  }

  else
  {

    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v26, &static Logger.callHolding);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_18_0(v28))
    {
      v29 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v29);
      OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v30, v28, "Failed to update the WOH Live Activity, there is no Activity.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_38_24();

    OUTLINED_FUNCTION_13();

    return v31();
  }
}

{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v10 = v9;
  *(v3 + 152) = v0;

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_44();

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = OUTLINED_FUNCTION_28_0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to update the WOH Live Activity: %@", v8, 0xCu);
    outlined destroy of TapInteractionHandler?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_13();

  return v12();
}

id WaitOnHoldService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaitOnHoldService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #5 in WaitOnHoldService.init()(v4, v5, v6, v0);
}

uint64_t specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(void *a1, char *a2, uint64_t a3)
{
  v95 = a2;
  v77 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = v65 - v5;
  v86 = type metadata accessor for NSNotificationCenter.Publisher();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR);
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v88 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = v65 - v13;
  v14 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd, &_s7Combine9PublishedVySaySSGGMR);
  v76 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v75 = v65 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd, &_s7Combine9PublishedVy10Foundation16AttributedStringVGMR);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = v65 - v18;
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for AttributedString();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v65 - v26;
  v72 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40, &protocol conformance descriptor for TUCall);
  *(a3 + 32) = MEMORY[0x1E69E7CD0];
  v79 = a3 + 32;
  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  v28 = *MEMORY[0x1E6995C70];
  v69 = v15;
  v29 = *(v15 + 104);
  v66 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  v70 = v14;
  v65[1] = v15 + 104;
  v65[0] = v29;
  v29(a3 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v28, v14);
  v71 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  v30 = [objc_opt_self() conversationKit];
  v97._object = 0xE000000000000000;
  v31.value._countAndFlagsBits = 0x61737265766E6F43;
  v31.value._object = 0xEF74694B6E6F6974;
  v32._object = 0x80000001BC500610;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v97._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v97);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v34 = *(v22 + 16);
  v34(v24, v27, v21);
  Published.init(initialValue:)();
  v35 = *(v22 + 8);
  v80 = v22 + 8;
  v78 = v35;
  v35(v27, v21);
  (*(v73 + 32))(a3 + v71, v19, v74);
  v36 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  v96 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v37 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(a3 + v36, v37, v81);
  v38 = v77;
  v39 = v72;
  *(a3 + 16) = v77;
  *(a3 + 24) = v39;
  v81 = v21;
  v34(v27, v95, v21);
  v40 = v38;
  WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v27);
  v41 = [v40 smartHoldingSession];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 transcription];
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = *(v44 + 16);

    if (v45)
    {
      [v42 requiresUserAttentionReason];
      v46 = v67;
      WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
      v47 = v70;
      if (__swift_getEnumTagSinglePayload(v46, 1, v70) == 1)
      {
        v48 = v68;
        (v65[0])(v68, *MEMORY[0x1E6995C90], v47);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
        v50 = v69;
        if (EnumTagSinglePayload != 1)
        {
          outlined destroy of TapInteractionHandler?(v46, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
        }
      }

      else
      {
        v50 = v69;
        v48 = v68;
        (*(v69 + 32))(v68, v46, v47);
      }

      v51 = v66;
      swift_beginAccess();
      (*(v50 + 40))(a3 + v51, v48, v47);
      swift_endAccess();
      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v42);
    }
  }

  else
  {
    v42 = v40;
  }

  v52 = [objc_opt_self() defaultCenter];
  v53 = v82;
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd, &_sSo21TUSmartHoldingSessionCSgMR);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  v54 = v83;
  v55 = v86;
  Publisher.map<A>(_:)();

  (*(v84 + 8))(v53, v55);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR, MEMORY[0x1E695BD60]);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  v56 = v87;
  v57 = v88;
  Publisher<>.removeDuplicates()();
  (*(v85 + 8))(v54, v56);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v58 = static OS_dispatch_queue.main.getter();
  v96 = v58;
  v59 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v60 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v59);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR, MEMORY[0x1E695BD38]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v62 = v90;
  v61 = v91;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v60, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v89 + 8))(v57, v62);

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v63 = v93;
  Publisher<>.sink(receiveValue:)();

  (*(v92 + 8))(v61, v63);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v78(v95, v81);
  return a3;
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WaitOnHoldService.updateForCall(withUUID:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.updateForCall(withUUID:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.updateActivity(message:)()
{
  OUTLINED_FUNCTION_44();
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_22(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.updateActivity(message:)(v6, v7, v8, v2, v9);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.startActivity()()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.startActivity()(v6, v7, v8, v2, v1);
}

unint64_t lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21TUSmartHoldingSessionCSgMd, &_sSo21TUSmartHoldingSessionCSgMR);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUSmartHoldingSession and conformance NSObject, &lazy cache variable for type metadata for TUSmartHoldingSession, 0x1E69D8CE8, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  type metadata accessor for UUID();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_69();

  return closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(v3, v4, v5, v6, v7, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_67()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_13_5();

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_13_5();

  return closure #1 in closure #2 in WaitOnHoldService.init()();
}

uint64_t partial apply for closure #2 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #2 in closure #2 in WaitOnHoldService.init()(v6, v7, v8, v2, v1);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.stopActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.stopActivity()(v4, v5, v6, v0);
}

unint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  result = specialized Array.count.getter();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = specialized Array._customRemoveLast()();
  if (result)
  {
    return result;
  }

  v1 = specialized Array.count.getter();
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    goto LABEL_8;
  }

  return specialized Array.remove(at:)(result);
}

void specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    specialized Array._customRemoveLast()(&v3);
    if (v4)
    {
      outlined init with take of TapInteractionHandler(&v3, a1);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v3, &_s15ConversationKit6Notice_pSgMd, &_s15ConversationKit6Notice_pSgMR);
      specialized Array.remove(at:)(*(*v1 + 16) - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_20_46();

  return specialized WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)(v0, v1, v2, v3, v4);
}

uint64_t key path setter for WaitOnHoldStatusMessageService.call : WaitOnHoldStatusMessageService(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return WaitOnHoldStatusMessageService.call.setter(v2, v1);
}

uint64_t WaitOnHoldStatusMessageService.call.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

double WaitOnHoldStatusMessageService.cancellables.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5(v2 + 32, a2);

  return result;
}

double WaitOnHoldStatusMessageService.cancellables.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);
  *(v2 + 32) = a1;

  return result;
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttention.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 40, a2);
  *(v2 + 40) = a1;
  return result;
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttentionReason.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, a1);
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttentionReason.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v6);
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_25_40();
  v7(v6);

  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v2);
}

uint64_t key path getter for WaitOnHoldStatusMessageService.transcriptEvents : WaitOnHoldStatusMessageService@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t WaitOnHoldStatusMessageService.transcriptEvents.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WaitOnHoldStatusMessageService.transcriptEvents.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for WaitOnHoldStatusMessageService.$transcriptEvents : WaitOnHoldStatusMessageService(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd, &_s7Combine9PublishedV9PublisherVySaySSG_GMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return WaitOnHoldStatusMessageService.$transcriptEvents.setter(v5);
}

uint64_t WaitOnHoldStatusMessageService.$transcriptEvents.getter()
{
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd, &_s7Combine9PublishedVySaySSGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WaitOnHoldStatusMessageService.$transcriptEvents.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd, &_s7Combine9PublishedV9PublisherVySaySSG_GMR);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v7 = OUTLINED_FUNCTION_25_40();
  v8(v7);
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd, &_s7Combine9PublishedVySaySSGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_20_46();

  return specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(v0, v1, v2, v3, v4);
}

void closure #1 in WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  Notification.object.getter();
  if (!v20)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if (swift_dynamicCast())
  {
    v4 = [v18 callUUID];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    OUTLINED_FUNCTION_4_0(a1 + 16, v19);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      OUTLINED_FUNCTION_0_1();
      (*(v9 + 136))();
      v11 = v10;

      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 56))(ObjectType, v11);
      v15 = v14;
      swift_unknownObjectRelease();
      if (v5 == v13 && v7 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {

          goto LABEL_11;
        }
      }

      Strong = [v18 smartHoldingSession];
    }

    else
    {
    }

    goto LABEL_16;
  }

LABEL_11:
  Strong = 0;
LABEL_16:
  *a2 = Strong;
}

void closure #2 in WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(void **a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  v7 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26[-v15];
  v17 = *a1;
  OUTLINED_FUNCTION_4_0(a2 + 16, v27);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (v17)
    {
      v20 = v17;
      if ([v20 state] == 3)
      {
        OUTLINED_FUNCTION_0_1();
        (*(v21 + 192))(1);
        [v20 requiresUserAttentionReason];
        WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
        OUTLINED_FUNCTION_26_39(v2, 1);
        if (v22)
        {
          v9[13](v13, *MEMORY[0x1E6995C90], v7);
          OUTLINED_FUNCTION_26_39(v2, 1);
          if (!v22)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
          }
        }

        else
        {
          v9[4](v13, v2, v7);
        }

        v25 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
        OUTLINED_FUNCTION_30_2(v19 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v26);
        v9[5](v19 + v25, v13, v7);
        swift_endAccess();
      }

      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v20);
    }

    else
    {
      OUTLINED_FUNCTION_0_1();
      (*(v23 + 192))(0);
      (v9)[13](v16, *MEMORY[0x1E6995C70], v7);
      v24 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
      OUTLINED_FUNCTION_30_2(v19 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v26);
      (v9)[5](v19 + v24, v16, v7);
      swift_endAccess();
      swift_beginAccess();
      *(v19 + 48) = MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t WaitOnHoldStatusMessageService.values.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd, &_s7Combine9PublishedVy10Foundation16AttributedStringVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  v9 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v7, &_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMR, v8);
  MEMORY[0x1BFB1DE80](v1, v9);
  return (*(v3 + 8))(v6, v1);
}

uint64_t WaitOnHoldStatusMessageService.transcriptUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd, &_s7Combine9PublishedV9PublisherVySaySSG_GMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  (*(*v0 + 328))(v5);
  OUTLINED_FUNCTION_6_10();
  v10 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v8, &_s7Combine9PublishedV9PublisherVySaySSG_GMd, &_s7Combine9PublishedV9PublisherVySaySSG_GMR, v9);
  MEMORY[0x1BFB1DE80](v1, v10);
  return (*(v3 + 8))(v7, v1);
}

uint64_t WaitOnHoldStatusMessageService.updateSmartHoldingEvents(smartHoldingSession:)(void *a1)
{
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v62 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_24_41();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v61 - v8;
  v10 = [a1 events];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSmartHoldingEvent, 0x1E69D8CE0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Array.count.getter();

  if (v11 < 1)
  {
    return 1;
  }

  v61[0] = v3;
  v63 = v1;
  v12 = [a1 events];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v65[0] = MEMORY[0x1E69E7CC0];
  v14 = specialized Array.count.getter();
  for (i = 0; v14 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB22010](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ([v16 eventType] == 1)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v18 = v65[0];
  v19 = specialized Array.count.getter();
  v20 = v63;
  OUTLINED_FUNCTION_4_0(v63 + 48, v65);
  if (v19 != specialized Array.count.getter())
  {
    if (specialized Array.count.getter() < v19)
    {
      v39 = specialized Array.count.getter();
      v40 = __OFSUB__(v19, v39);
      v41 = v19 - v39;
      if (!v40)
      {
        specialized BidirectionalCollection.suffix(_:)(v41, v18);
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        OUTLINED_FUNCTION_30_2(v20 + 48, v64);
        specialized Array.append<A>(contentsOf:)(v43, v45, v47, v49);
        swift_endAccess();
        return 1;
      }

      goto LABEL_42;
    }

    if (one-time initialization token for callHolding != -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, &static Logger.callHolding);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_25(v53))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v54, v55, "HoldAssist: The events list has fewer records than expected.");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  v22 = specialized BidirectionalCollection.last.getter(v21);

  if (v22)
  {
    v23 = specialized BidirectionalCollection.last.getter(v18);

    if (v23)
    {
      v24 = [v23 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 date];
      v26 = v61[1];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v27 = v61[0];
      LOBYTE(v25) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = *(v62 + 8);
      v28(v26, v27);
      v28(v9, v27);
      if ((v25 & 1) == 0)
      {
        v29 = [v23 text];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = [v22 text];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v30 == v34 && v32 == v36)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_30_2(v63 + 48, v64);

            MEMORY[0x1BFB20CC0]();
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            return 1;
          }
        }
      }

      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
      }

      v56 = type metadata accessor for Logger();
      v57 = __swift_project_value_buffer(v56, &static Logger.callHolding);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_25(v59))
      {
        v60 = OUTLINED_FUNCTION_33();
        *v60 = 0;
        _os_log_impl(&dword_1BBC58000, v58, v57, "HoldAssist: Most recent utterance was out of date.", v60, 2u);
        MEMORY[0x1BFB23DF0](v60, -1, -1);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for AttributeContainer();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v76 = v18;
  v77 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_24_41();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v73 = objc_opt_self();
  v22 = [v73 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_68(0xD00000000000001ALL, 0x80000001BC500610, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  AttributeContainer.init()();
  v75 = v21;
  AttributedString.init(_:attributes:)();
  if (WaitOnHoldStatusMessageService.updateSmartHoldingEvents(smartHoldingSession:)(a1))
  {
    v69 = v11;
    v70 = v7;
    v71 = v5;
    v72 = v16;
    OUTLINED_FUNCTION_4_0((v3 + 6), v78);
    v23 = v3[6];
    v24 = specialized Array.count.getter();
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v1 = v24;
      v79 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v1 < 0)
      {
        __break(1u);
LABEL_38:
        OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
        goto LABEL_33;
      }

      v68 = v3;
      v26 = 0;
      v25 = v79;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1BFB22010](v26, v23);
        }

        else
        {
          v27 = *(v23 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = [v27 text];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v79 = v25;
        v33 = *(v25 + 16);
        if (v33 >= *(v25 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v25 = v79;
        }

        v26 = v26 + 1;
        *(v25 + 16) = v33 + 1;
        v34 = v25 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
      }

      while (v1 != v26);

      v3 = v68;
    }

    WaitOnHoldStatusMessageService.transcriptEvents.setter(v25);
    v5 = v71;
    v11 = v69;
    v7 = v70;
  }

  (*(*v3 + 232))();
  v35 = (*(v7 + 88))(v11, v5);
  if (v35 != *MEMORY[0x1E6995C78])
  {
    v40 = v74;
    if (v35 == *MEMORY[0x1E6995C80])
    {
      v42 = [v73 conversationKit];
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_68(v43, v44, v45, v46);

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v11 = v76;
LABEL_24:
      v53 = v75;
      v54 = v77;
      (*(v11 + 8))(v75, v77);
      (*(v11 + 32))(v53, v40, v54);
LABEL_25:
      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, &static Logger.callHolding);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v57))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v58, v59, "Updating status message to <redacted>");
        OUTLINED_FUNCTION_26();
      }

      (*(v11 + 16))(v40, v53, v54);
      WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v40);
      return (*(v11 + 8))(v53, v54);
    }

    v47 = v11;
    v11 = v76;
    if (v35 != *MEMORY[0x1E6995C88])
    {
      (*(v7 + 8))(v47, v5);
      v54 = v77;
      v53 = v75;
      goto LABEL_25;
    }

    v48 = [v73 conversationKit];
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_68(v49, v50, v51, v52);

    AttributeContainer.init()();
LABEL_23:
    AttributedString.init(_:attributes:)();
    goto LABEL_24;
  }

  v36 = (*(*v3 + 304))();
  v37 = specialized BidirectionalCollection.last.getter(v36);
  v39 = v38;

  v40 = v74;
  v11 = v76;
  if (v39)
  {
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v79 = 34;
      v80 = 0xE100000000000000;
      MEMORY[0x1BFB20B10](v37, v39);

      MEMORY[0x1BFB20B10](34, 0xE100000000000000);
      AttributeContainer.init()();
      goto LABEL_23;
    }
  }

  if (one-time initialization token for callHolding != -1)
  {
    goto LABEL_38;
  }

LABEL_33:
  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, &static Logger.callHolding);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.fault.getter();
  v63 = OUTLINED_FUNCTION_25(v62);
  v54 = v77;
  v53 = v75;
  if (v63)
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v64, v65, "HoldAssist: received a remoteAgentDetected status without a transcript.");
    OUTLINED_FUNCTION_26();
  }

  return (*(v11 + 8))(v53, v54);
}

uint64_t WaitOnHoldStatusMessageService.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd, &_s7Combine9PublishedVy10Foundation16AttributedStringVGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd, &_s7Combine9PublishedVySaySSGGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t WaitOnHoldStatusMessageService.__deallocating_deinit()
{
  WaitOnHoldStatusMessageService.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path setter for WaitOnHoldStatusMessageService.requiresUserAttentionReason : WaitOnHoldStatusMessageService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t specialized WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for WaitOnHoldStatusMessageService(0);
  v9 = swift_allocObject();

  return specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(a1, a2, v9, a4, a5);
}

uint64_t specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a5;
  v102 = a2;
  v103 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v120 = v8;
  v112 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v110 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v108 = v12 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR);
  OUTLINED_FUNCTION_1();
  v111 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v109 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR);
  OUTLINED_FUNCTION_1();
  v115 = v17;
  v116 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v114 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v118 = v21;
  v119 = v20;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v117 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  v92 = v26;
  v27 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v93 = v32 - v31;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd, &_s7Combine9PublishedVySaySSGGMR);
  OUTLINED_FUNCTION_1();
  v100 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  v99 = v35;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd, &_s7Combine9PublishedVy10Foundation16AttributedStringVGMR);
  OUTLINED_FUNCTION_1();
  v97 = v36;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v90 - v38;
  v40 = type metadata accessor for AttributeContainer();
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  v42 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  v48 = v46 - v47;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = v90 - v51;
  *(a3 + 32) = MEMORY[0x1E69E7CD0];
  v105 = a3 + 32;
  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  v53 = *MEMORY[0x1E6995C70];
  v94 = v29;
  v54 = *(v29 + 104);
  v91 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  v95 = v27;
  v90[1] = v29 + 104;
  v90[0] = v54;
  v54(a3 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v53, v27, v50);
  v96 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  v55 = [objc_opt_self() conversationKit];
  v122._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v56._object = 0x80000001BC500610;
  v56._countAndFlagsBits = 0xD00000000000001ALL;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v122._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v58, v55, v57, v122);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v59 = *(v44 + 16);
  v59(v48, v52, v42);
  v60 = v102;
  Published.init(initialValue:)();
  v61 = *(v44 + 8);
  v106 = v44 + 8;
  v104 = v61;
  v61(v52, v42);
  (*(v97 + 32))(a3 + v96, v39, v98);
  v62 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  v121 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v63 = v99;
  Published.init(initialValue:)();
  (*(v100 + 32))(a3 + v62, v63, v101);
  v64 = v107;
  *(a3 + 16) = v103;
  *(a3 + 24) = v64;
  v107 = v42;
  v59(v52, v60, v42);
  swift_unknownObjectRetain();
  WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v52);
  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65 && (v66 = [v65 smartHoldingSession]) != 0)
  {
    v67 = v66;
    v68 = [v66 transcription];
    v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = *(v69 + 16);

    if (v70)
    {
      [v67 requiresUserAttentionReason];
      v71 = v92;
      WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
      v72 = v95;
      OUTLINED_FUNCTION_26_39(v71, 1);
      if (v73)
      {
        v75 = v93;
        (v90[0])(v93, *MEMORY[0x1E6995C90], v72);
        OUTLINED_FUNCTION_26_39(v71, 1);
        v74 = v94;
        if (!v73)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMR);
        }
      }

      else
      {
        v74 = v94;
        v75 = v93;
        (*(v94 + 32))(v93, v71, v72);
      }

      v76 = v91;
      OUTLINED_FUNCTION_30_2(a3 + v91, &v121);
      (*(v74 + 40))(a3 + v76, v75, v72);
      swift_endAccess();
      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v67);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v77 = [objc_opt_self() defaultCenter];
  v78 = v108;
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd, &_sSo21TUSmartHoldingSessionCSgMR);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v79 = v109;
  v80 = v112;
  Publisher.map<A>(_:)();

  (*(v110 + 8))(v78, v80);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR, MEMORY[0x1E695BD60]);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  v81 = v113;
  v82 = v114;
  Publisher<>.removeDuplicates()();
  (*(v111 + 8))(v79, v81);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v83 = static OS_dispatch_queue.main.getter();
  v121 = v83;
  v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v85 = v120;
  __swift_storeEnumTagSinglePayload(v120, 1, 1, v84);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR, MEMORY[0x1E695BD38]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v87 = v116;
  v86 = v117;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v115 + 8))(v82, v87);

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v88 = v119;
  Publisher<>.sink(receiveValue:)();

  (*(v118 + 8))(v86, v88);
  OUTLINED_FUNCTION_30_2(v105, &v121);
  AnyCancellable.store(in:)();
  swift_endAccess();

  v104(v60, v107);
  return a3;
}

uint64_t type metadata accessor for WaitOnHoldStatusMessageService(uint64_t a1)
{
  result = type metadata singleton initialization cache for WaitOnHoldStatusMessageService;
  if (!type metadata singleton initialization cache for WaitOnHoldStatusMessageService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaitOnHoldStatusMessageService(uint64_t a1)
{
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<AttributedString>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<[String]>(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<AttributedString>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<AttributedString>)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<AttributedString>);
    }
  }
}

void type metadata accessor for Published<[String]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[String]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[String]>);
    }
  }
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

id CallHoldingButtonViewController.init(_:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate];
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___callHoldingDebugView] = 0;
  v11 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallHoldingButtonViewModel();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel] = CallHoldingButtonViewModel.init(_:callCenter:)(a1, a2, v11);
  *(v10 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v12;
}

id CallHoldingButtonViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallHoldingButtonViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___callHoldingDebugView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallHoldingButtonViewController.viewDidLoad()()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  OUTLINED_FUNCTION_6_0(v2 + 16, v3);
  *(v2 + 24) = &protocol witness table for CallHoldingButtonViewController;
  swift_unknownObjectWeakAssign();
  v4 = CallHoldingButtonViewController.button.getter();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA7F0;
  v9 = [*&v0[v7] topAnchor];
  v10 = OUTLINED_FUNCTION_3_133();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = OUTLINED_FUNCTION_2_136();
  *(v8 + 32) = v13;
  v14 = [*&v0[v7] leadingAnchor];
  v15 = OUTLINED_FUNCTION_3_133();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = OUTLINED_FUNCTION_2_136();
  *(v8 + 40) = v18;
  v19 = [*&v0[v7] trailingAnchor];
  v20 = OUTLINED_FUNCTION_3_133();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = OUTLINED_FUNCTION_2_136();
  *(v8 + 48) = v23;
  v24 = [*&v0[v7] bottomAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v24 constraintEqualToAnchor_];
  *(v8 + 56) = v29;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  *(v2 + 24) = &protocol witness table for CallHoldingButtonViewController;
  swift_unknownObjectWeakAssign();
  v31 = [v0 view];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() callDetailsButtonMaxSize];
    [v32 setMaximumContentSizeCategory_];

    return;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall CallHoldingButtonViewController.buttonTapped()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  swift_beginAccess();
  if (*(v4 + 60) == 1)
  {
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    type metadata accessor for MainActor();
    v6 = v0;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in CallHoldingButtonViewController.buttonTapped()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewController.buttonTapped(), v6, v5);
}

uint64_t closure #1 in CallHoldingButtonViewController.buttonTapped()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingButtonViewController.buttonTapped();

  return CallHoldingButtonViewModel.setCallHoldingActive(isActive:)();
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = closure #1 in CallHoldingButtonViewController.buttonTapped();
  }

  else
  {
    v5 = closure #1 in CallHoldingButtonViewController.buttonTapped();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v15 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Setting call holding active failed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v11 = *(v0 + 88);
  CallHoldingButtonViewController.showSmartHoldingFailedAlert()();

  OUTLINED_FUNCTION_13();

  return v12();
}

void CallHoldingButtonViewController.showSmartHoldingFailedAlert()()
{
  v1 = v0;
  if (one-time initialization token for callHolding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Showing alert for Wait on Hold session failed.", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = _TUIsInternalInstall();
  if (v6)
  {
    v7 = 0xD00000000000003BLL;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (v6)
  {
    v8 = "SmartHolding Failed";
  }

  else
  {
    v8 = "$_callHoldingDebugView";
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v9 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(0xD000000000000013, 0x80000001BC5122D0, v7, v8 | 0x8000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v10 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v9 addAction_];
  [v9 setPreferredAction_];
  [v1 presentViewController:v9 animated:1 completion:0];
}

Swift::Void __swiftcall CallHoldingButtonViewController.invertColor(_:)(Swift::Bool a1)
{
  v2 = CallHoldingButtonViewController.button.getter();
  CallHoldingButton.overrideTintColor(_:)(a1);
}

Swift::Void __swiftcall CallHoldingButtonViewController.textSizeDidChange()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsDisplay];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CallHoldingButtonViewController.setWaitOnHoldActive(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  swift_beginAccess();
  if (*(v6 + 60) == 1)
  {
    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    type metadata accessor for MainActor();
    v8 = v1;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v8;
    *(v10 + 40) = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:), v7, v6);
}

uint64_t closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);

  return CallHoldingButtonViewModel.setCallHoldingActive(isActive:)();
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);
  }

  else
  {
    v5 = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v17 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Setting call holding to %{BOOL}d failed: %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

id CallHoldingButtonViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CallHoldingButtonViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewController.buttonTapped()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_5_0(v3);

  return closure #1 in CallHoldingButtonViewController.buttonTapped()(v4, v5, v6, v2);
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_5_0(v4);

  return closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)(v5, v6, v7, v2, v3);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ15ConversationKit18DropdownMenuButtonV_A3KQP_Tt1g5@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v13 = *v9;
  v12 = v9[1];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(v2 + 1);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = *(v3 + 1);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = *(v8 + 1);
  *(a2 + 96) = v13;
  *(a2 + 104) = v12;
  *(a2 + 112) = *(v9 + 1);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA6HStackVyAFyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundQ0VyAA06_ShapeC0VyAA6CircleVAA5ColorVGGGATyA8_SgGGGtGG_APyAlA06_FrameT0VGAPy15ConversationKit013ContactAvatarC033_E7E991686AA57F7698F87F3F451BA23ALLVA19_GA20_APyAPyAA4TextVATyAA13TextAlignmentOGGAA010_FixedSizeT0VGA20_A34_A20_AJyAFyANyAPyAPyAPyAPyAPyA27_A_GAA05_FlexyT0VGAA11_ClipEffectVyAA9RectangleVGGA2_yA4_yAA16RoundedRectangleVA8_GGGA13_GG_A51_tGGA20_QP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Conversation?(*a1, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGG_AKyAgA06_FrameQ0VGAKy15ConversationKit013ContactAvatarE033_E7E991686AA57F7698F87F3F451BA23ALLVA14_GA15_AKyAKyAA4TextVAOyAA13TextAlignmentOGGAA010_FixedSizeQ0VGA15_A29_A15_ACyAEyAIyAKyAKyAKyAKyAKyA22_AVGAA05_FlexvQ0VGAA11_ClipEffectVyAA9RectangleVGGAYyA_yAA16RoundedRectangleVA3_GGGA8_GG_A46_tGGA15_tMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGG_AKyAgA06_FrameQ0VGAKy15ConversationKit013ContactAvatarE033_E7E991686AA57F7698F87F3F451BA23ALLVA14_GA15_AKyAKyAA4TextVAOyAA13TextAlignmentOGGAA010_FixedSizeQ0VGA15_A29_A15_ACyAEyAIyAKyAKyAKyAKyAKyA22_AVGAA05_FlexvQ0VGAA11_ClipEffectVyAA9RectangleVGGAYyA_yAA16RoundedRectangleVA3_GGGA8_GG_A46_tGGA15_tMR);
  OUTLINED_FUNCTION_1_140(a2 + v4[12]);
  v6 = a2 + v5[16];
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  *v6 = *v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  v14 = (a2 + v5[20]);
  v16 = a1[3];
  v15 = a1[4];
  v17 = v16[3];
  v19 = *v16;
  v18 = v16[1];
  v14[2] = v16[2];
  v14[3] = v17;
  *v14 = v19;
  v14[1] = v18;
  v20 = v5[24];
  v21 = *(v15 + 27);
  v22 = v15[1];
  v37 = *v15;
  v38[0] = v22;
  *(v38 + 11) = v21;
  memmove((a2 + v20), v15, 0x2BuLL);
  v24 = a1[5];
  v23 = a1[6];
  v26 = v24[2];
  v25 = v24[3];
  v27 = *v24;
  v28 = v24[1];
  v29 = (a2 + v4[28]);
  v29[2] = v26;
  v29[3] = v25;
  *v29 = v27;
  v29[1] = v28;
  v30 = v4[32];
  v31 = *v23;
  v32 = v23[1];
  *&v40[11] = *(v23 + 27);
  v39 = v31;
  *v40 = v32;
  memmove((a2 + v30), v23, 0x2BuLL);
  OUTLINED_FUNCTION_1_140(a2 + v4[36]);
  outlined init with copy of Conversation?(v33, a2 + v4[40], &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMR);
  OUTLINED_FUNCTION_1_140(a2 + v4[44]);
  v34 = v9;
  outlined init with copy of Conversation?(&v37, v36, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMR);
  return outlined init with copy of Conversation?(&v39, v36, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMR);
}

double _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionC0VA2rA6SpacerVQP_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x49uLL);
  memcpy(__src, v4, 0x49uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v5[1];
  v8 = v5[3];
  v22 = v5[2];
  v23 = *v5;
  v9 = v6[1];
  v10 = v6[3];
  v20 = v6[2];
  v21 = *v6;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v11[1];
  v19 = *v11;
  v15 = v11[2];
  v14 = v11[3];
  v16 = *v12;
  v25 = *(v12 + 8);
  v17 = v25;
  memcpy(a2, __src, 0x50uLL);
  *(a2 + 80) = v23;
  *(a2 + 88) = v7;
  *(a2 + 96) = v22;
  *(a2 + 104) = v8;
  *(a2 + 112) = v21;
  *(a2 + 120) = v9;
  *(a2 + 128) = v20;
  *(a2 + 136) = v10;
  *(a2 + 144) = v19;
  *(a2 + 152) = v13;
  *(a2 + 160) = v15;
  *(a2 + 168) = v14;
  *(a2 + 176) = v16;
  *(a2 + 184) = v17;
  outlined init with copy of Conversation?(__dst, v24, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);

  return result;
}

double CallHoldingDebugView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = static HorizontalAlignment.center.getter();
  v17 = 0;
  closure #1 in CallHoldingDebugView.body.getter(a1, a2, a3, __src);
  memcpy(__dst, __src, 0xB9uLL);
  memcpy(v19, __src, 0xB9uLL);
  outlined init with copy of Conversation?(__dst, v14, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMR);
  outlined destroy of TapInteractionHandler?(v19, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMR);
  memcpy(&v16[7], __dst, 0xB9uLL);
  v10 = v17;
  v11 = static Edge.Set.all.getter();
  LOBYTE(__src[0]) = 1;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  *a4 = v9;
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = v10;
  memcpy((a4 + 17), v16, 0xC0uLL);
  *(a4 + 216) = v11;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 1;
  *(a4 + 264) = partial apply for closure #2 in CallHoldingDebugView.body.getter;
  *(a4 + 272) = v12;
  *(a4 + 280) = 0;
  *(a4 + 288) = 0;

  return result;
}

uint64_t closure #1 in CallHoldingDebugView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.largeTitle.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.bold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(__src[0]) = 0;
  __dst[0] = a1;
  __dst[1] = a2;
  __dst[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd, &_s7SwiftUI5StateVySSGMR);
  State.wrappedValue.getter();
  v30 = __src[0];
  v31 = __src[1];
  __src[0] = v15;
  __src[1] = v17;
  LOBYTE(__src[2]) = v19 & 1;
  __src[3] = v21;
  LOBYTE(__src[4]) = v12;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  LOBYTE(__src[9]) = 0;
  strcpy(v42, "Holding State");
  v42[7] = -4864;
  v43 = v30;
  v44 = v31;
  v46[0] = __src;
  v46[1] = v42;
  strcpy(v39, "Transcription");
  v39[7] = -4864;
  v40 = 0;
  v41 = 0xE000000000000000;
  v38[0] = 0xD000000000000010;
  v38[1] = 0x80000001BC512350;
  v38[2] = 0;
  v38[3] = 0xE000000000000000;
  v46[2] = v39;
  v46[3] = v38;
  v36 = 0;
  v37 = 1;
  v46[4] = &v36;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionC0VA2rA6SpacerVQP_Tt1g5(v46, a4);

  memcpy(__dst, __src, 0x49uLL);
  return outlined destroy of TapInteractionHandler?(__dst, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
}

uint64_t CallHoldingDebugView.fetchHoldingState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = type metadata accessor for WaitOnHoldState();
  v6[25] = v9;
  v10 = *(v9 - 8);
  v6[26] = v10;
  v6[27] = *(v10 + 64);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[30] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[31] = v12;
  v6[32] = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingDebugView.fetchHoldingState(), v12, v11);
}

uint64_t closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  type metadata accessor for WaitOnHoldController();
  v0[33] = WaitOnHoldController.__allocating_init()();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingDebugView.fetchHoldingState();
  v2 = v0[29];

  return MEMORY[0x1EEDF27D8](v2);
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = closure #1 in CallHoldingDebugView.fetchHoldingState();
  }

  else
  {
    v5 = closure #1 in CallHoldingDebugView.fetchHoldingState();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[29];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v17 = v0[24];
  v23 = v0[23];
  v24 = v0[22];
  v21 = v1;
  v22 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  type metadata accessor for OS_dispatch_queue();
  v18 = static OS_dispatch_queue.main.getter();
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v10 = v9 + v8;
  v11 = v4;
  (*(v3 + 32))(v10, v2, v4);
  v0[12] = partial apply for closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState();
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = thunk for @escaping @callee_guaranteed () -> ();
  v0[11] = &block_descriptor_21;
  v12 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v14);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v17, v19, v12);
  _Block_release(v12);

  (*(v22 + 8))(v19, v20);
  (*(v23 + 8))(v17, v24);
  (*(v3 + 8))(v21, v11);

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[35];
  v2 = v0[24];
  v3 = v0[21];
  v17 = v0[23];
  v18 = v0[22];
  v4 = v0[19];
  v16 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];

  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v1;
  v0[6] = partial apply for closure #2 in closure #1 in CallHoldingDebugView.fetchHoldingState();
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_78;
  v9 = _Block_copy(v0 + 2);

  v10 = v1;
  static DispatchQoS.unspecified.getter();
  v0[14] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v11, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v12);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v2, v3, v9);

  _Block_release(v9);

  (*(v16 + 8))(v3, v4);
  (*(v17 + 8))(v2, v18);

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WaitOnHoldState();
  _print_unlocked<A, B>(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd, &_s7SwiftUI5StateVySSGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(24);

  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  MEMORY[0x1BFB20B10](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd, &_s7SwiftUI5StateVySSGMR);
  return State.wrappedValue.setter();
}

void SectionView.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *SectionView.body.getter@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = static HorizontalAlignment.center.getter();
  LOBYTE(__src[0]) = 0;
  closure #1 in SectionView.body.getter(a3, a4, v14);
  *&v11[7] = v14[0];
  *&v11[23] = v14[1];
  *&v11[39] = v14[2];
  *&v11[55] = v14[3];
  LOBYTE(a4) = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  memcpy(&v12[7], __src, 0x70uLL);
  *a5 = v9;
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = 0;
  memcpy((a5 + 17), v11, 0x47uLL);
  *(a5 + 88) = a4;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 1;
  return memcpy((a5 + 129), v12, 0x77uLL);
}

double closure #1 in SectionView.body.getter@<D0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.headline.getter();
  v13 = Text.font(_:)();
  v35 = v14;
  v36 = v13;
  v34 = v15;
  v17 = v16;

  outlined consume of Text.Storage(v8, v10, v12 & 1);

  v18 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v18 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    static Font.body.getter();
    v24 = Text.font(_:)();
    v26 = v25;
    v33 = v17;
    v28 = v27;
    v30 = v29;

    outlined consume of Text.Storage(v19, v21, v23 & 1);

    v31 = v28 & 1;
    v17 = v33;
    outlined copy of Text.Storage(v24, v26, v31);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v31 = 0;
    v30 = 0;
  }

  outlined copy of Text.Storage(v36, v35, v34 & 1);

  outlined copy of Text?(v24, v26, v31, v30);
  outlined consume of Text?(v24, v26, v31, v30);
  *a5 = v36;
  *(a5 + 8) = v35;
  *(a5 + 16) = v34 & 1;
  *(a5 + 24) = v17;
  *(a5 + 32) = v24;
  *(a5 + 40) = v26;
  *(a5 + 48) = v31;
  *(a5 + 56) = v30;
  outlined consume of Text?(v24, v26, v31, v30);
  outlined consume of Text.Storage(v36, v35, v34 & 1);

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionG0VA2oA6SpacerVtGGAKGAA25_AppearanceActionModifierVGMd, "ZW\b");
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionG0VA2oA6SpacerVtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionG0VA2oA6SpacerVtGGAKGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionE0VA2oA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionE0VA2oA6SpacerVtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGAA010_FlexFrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGAA010_FlexFrameJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMR, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CallHoldingDebugView.fetchHoldingState()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  v1 = *(type metadata accessor for WaitOnHoldState() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()(v2, v3, v4, v5);
}

uint64_t CallHoldingButtonViewModel.__allocating_init(_:callCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CallHoldingButtonViewModel.init(_:callCenter:)(a1, a2, a3);
  return v6;
}

uint64_t CallHoldingButtonViewModel.setCallHoldingActive(isActive:)()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 296) = v0;
  *(v1 + 360) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v3);
  *(v1 + 304) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v1 + 312) = v4;
  *(v1 + 320) = *(v4 - 8);
  *(v1 + 328) = swift_task_alloc();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.callHolding);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BBC58000, v2, v3, "setCallHoldingActive: %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_27();
  }

  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 296);

  OUTLINED_FUNCTION_4_0(v8 + 32, v0 + 272);

  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
  {
    outlined destroy of TapInteractionHandler?(*(v0 + 304), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Could not generate UUID from callUUID string", v11, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();

    return v12();
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 360);
    (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
    v16 = *(v14 + 64);
    v17.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 336) = v17;
    if (v15 == 1)
    {
      v18 = v0 + 80;
      *(v0 + 80) = v0;
      *(v0 + 88) = CallHoldingButtonViewModel.setCallHoldingActive(isActive:);
      v19 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      *(v0 + 232) = &block_descriptor_4;
      *(v0 + 240) = v19;
      [v16 performSmartHoldingRequestWithType:3 forCallWithUUID:v17.super.isa completion:v0 + 208];
    }

    else
    {
      v18 = v0 + 16;
      *(v0 + 16) = v0;
      *(v0 + 24) = CallHoldingButtonViewModel.setCallHoldingActive(isActive:);
      v20 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      *(v0 + 168) = &block_descriptor_79;
      *(v0 + 176) = v20;
      [v16 performSmartHoldingRequestWithType:4 forCallWithUUID:v17.super.isa completion:v0 + 144];
    }

    return MEMORY[0x1EEE6DEC8](v18);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 112);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t CallHoldingButtonViewModel.setCallHoldingActive(isActive:)(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[42];
  (*(v1[40] + 8))(v1[41], v1[39]);

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  swift_willThrow();
  v2 = v1[42];
  (*(v1[40] + 8))(v1[41], v1[39]);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t CallHoldingButtonViewModel.callUUID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return CallHoldingButtonViewModel.callUUID.didset();
}

void CallHoldingButtonViewModel.delegate.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void (*CallHoldingButtonViewModel.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_30_2(v1 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CallRecordingButtonViewModel.delegate.modify;
}

uint64_t CallHoldingButtonViewModel.callUUID.getter()
{
  OUTLINED_FUNCTION_4_0(v0 + 32, v3);
  v1 = *(v0 + 32);

  return v1;
}

double key path getter for CallHoldingButtonViewModel.callUUID : CallHoldingButtonViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t key path setter for CallHoldingButtonViewModel.callUUID : CallHoldingButtonViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallHoldingButtonViewModel.callUUID.setter(v1, v2);
}

uint64_t (*CallHoldingButtonViewModel.callUUID.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_30_2(v1 + 32, a1);
  return CallHoldingButtonViewModel.callUUID.modify;
}

uint64_t CallHoldingButtonViewModel.callUUID.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CallHoldingButtonViewModel.callUUID.didset();
  }

  return result;
}

uint64_t CallHoldingButtonViewModel.holdingAvailability.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 60, a2);
  *(v2 + 60) = a1;
  return result;
}

uint64_t CallHoldingButtonViewModel.init(_:callCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = a2;
  *(v3 + 48) = v11;
  *(v3 + 56) = 0;
  *(v3 + 60) = 1;
  *(v3 + 72) = 0;
  *(v3 + 32) = a1;
  *(v3 + 64) = a3;
  v12 = a3;
  CallHoldingButtonViewModel.observeNotification()();
  static TaskPriority.background.getter();
  v13 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in CallHoldingButtonViewModel.init(_:callCenter:), v15);

  outlined destroy of TapInteractionHandler?(v10, &_sScPSgMd, &_sScPSgMR);
  return v3;
}

Swift::Void __swiftcall CallHoldingButtonViewModel.observeNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR);
  OUTLINED_FUNCTION_1();
  v32 = v16;
  v33 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v34 = v21;
  v35 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  v26 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd, &_sSo21TUSmartHoldingSessionCSgMR);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v9, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMR, MEMORY[0x1E695BD60]);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v15, v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v27 = static OS_dispatch_queue.main.getter();
  v37 = v27;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v28);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMR, MEMORY[0x1E695BD38]);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v29 = v32;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v33 + 8))(v20, v29);
  swift_allocObject();
  v30 = v36;
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v31 = v34;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_28_0();

  (*(v35 + 8))(v25, v31);
  OUTLINED_FUNCTION_30_2(v30 + 48, &v37);
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0(v0[13] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v0[15] = type metadata accessor for WaitOnHoldController();
    v0[16] = WaitOnHoldController.__allocating_init()();
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CallHoldingButtonViewModel.init(_:callCenter:);

    return MEMORY[0x1EEDF27E8]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  WaitOnHoldController.__allocating_init()();
  WaitOnHoldController.hasAvailableAssets.getter();

  OUTLINED_FUNCTION_17_52();
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = OUTLINED_FUNCTION_2_137();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_4_0(v0 + 88, v0 + 40);
  if (swift_weakLoadStrong())
  {
    CallHoldingButtonViewModel.updateButtonState()();
  }

  swift_weakDestroy();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v18 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13(&one-time initialization token for callHolding);
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v4, v5, "WaitOnHoldController prewarming failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  WaitOnHoldController.__allocating_init()();
  WaitOnHoldController.hasAvailableAssets.getter();

  OUTLINED_FUNCTION_17_52();
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v13 = OUTLINED_FUNCTION_2_137();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void closure #1 in CallHoldingButtonViewModel.observeNotification()(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v5)
  {
    outlined destroy of TapInteractionHandler?(v4, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v3 smartHoldingSession];

LABEL_6:
  *a1 = v2;
}

uint64_t closure #2 in CallHoldingButtonViewModel.observeNotification()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (one-time initialization token for callHolding != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Logger.callHolding);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = CallHoldingButtonViewModel.isWaitOnHoldActive()() & 1;

      _os_log_impl(&dword_1BBC58000, v8, v9, "TUCallSmartHoldingSessionChanged, isWaitOnHoldActive: %{BOOL}d", v10, 8u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {
    }

    v11 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification(), v6, v5);
}

uint64_t CallHoldingButtonViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return v0;
}

uint64_t CallHoldingButtonViewModel.__deallocating_deinit()
{
  CallHoldingButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()(v3, v4, v5, v6);
}

uint64_t CallHoldingTranscriptViewModelComposer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t *a1, uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd, &_s20CommunicationsUICore18ActivityLabelStyleOSgMR);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v99 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v96 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v88 - v17;
  v92 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v106 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v103 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v88 - v23;
  v24 = type metadata accessor for AttributeContainer();
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v105 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v93 = objc_opt_self();
  v37 = [v93 conversationKit];
  v38.super.isa = v37;
  OUTLINED_FUNCTION_17_0(0xD00000000000002ALL, 0x80000001BC512400, 0x61737265766E6F43, 0xEF74694B6E6F6974, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC4BA940;
  v88 = a1;
  ObjectType = swift_getObjectType();
  v41 = (*(v104 + 72))();
  v43 = v42;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  String.init(format:_:)();

  AttributeContainer.init()();
  v94 = v27;
  AttributedString.init(_:attributes:)();
  v44 = *(v105 + 16);
  v97 = v36;
  v100 = v28;
  v90 = v44;
  v91 = v105 + 16;
  v44(v33, v36, v28);
  type metadata accessor for WaitOnHoldStatusMessageService(0);
  v45 = swift_allocObject();
  v46 = swift_unknownObjectRetain();
  v47 = specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(v46, v33, v45, ObjectType, v104);
  v48 = (*v47 + 232);
  v49 = v89;
  v104 = *v48;
  v88 = v48;
  (v104)(v47);
  v50 = v106;
  v51 = *(v106 + 104);
  v52 = v103;
  v53 = v92;
  v51(v103, *MEMORY[0x1E6995C88], v92);
  lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v54 = v52;
  v55 = v53;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = *(v50 + 8);
  v56(v54, v55);
  v106 = v50 + 8;
  v57 = (v56)(v49, v55);
  if (v107 == v108 || ((v104)(v57), v58 = v103, v51(v103, *MEMORY[0x1E6995C80], v55), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v56(v58, v55), v56(v49, v55), v107 == v108))
  {
    v59 = v47;
    Image.init(systemName:)();
  }

  else
  {
    v59 = v47;
  }

  v60 = v97;
  v61 = v100;
  v90(v95, v97, v100);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);

  v65 = [v93 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v66.super.isa = v65;
  OUTLINED_FUNCTION_17_0(v67, v68, v69, v70, v66);

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v61);
  v74 = type metadata accessor for ActivityLabelStyle();
  __swift_storeEnumTagSinglePayload(v98, 1, 1, v74);
  __swift_storeEnumTagSinglePayload(v99, 1, 1, v74);
  type metadata accessor for IntelligenceMessageViewModel();
  swift_allocObject();
  v75 = IntelligenceMessageViewModel.init(statusMessageLeadingImage:statusMessage:secondaryMessage:centerAlignText:spacingToDivider:lineLimit:messageStyle:secondaryMessageStyle:)();
  static TaskPriority.userInitiated.getter();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  v80 = swift_allocObject();
  v81 = v102;
  swift_weakInit();
  type metadata accessor for MainActor();

  v82 = static MainActor.shared.getter();
  v83 = swift_allocObject();
  v84 = MEMORY[0x1E69E85E0];
  v83[2] = v82;
  v83[3] = v84;
  v83[4] = v59;
  v83[5] = v80;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v86 = v85;

  (*(v105 + 8))(v60, v61);
  *(v81 + 24) = v86;

  swift_beginAccess();
  *(v81 + 16) = v75;

  return v75;
}

uint64_t CallHoldingTranscriptViewModelComposer.deinit()
{
  if (*(v0 + 24))
  {

    MEMORY[0x1BFB21000](v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + 24) = 0;

  return v0;
}

uint64_t CallHoldingTranscriptViewModelComposer.__deallocating_deinit()
{
  CallHoldingTranscriptViewModelComposer.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  type metadata accessor for AttributeContainer();
  v5[38] = swift_task_alloc();
  v6 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v7 = type metadata accessor for AttributedString();
  v5[43] = v7;
  v5[44] = *(v7 - 8);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMR);
  v5[49] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for MainActor();
  v5[54] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[55] = v10;
  v5[56] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:), v10, v9);
}

uint64_t closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOGMd, &_ss23_ContiguousArrayStorageCy16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOGMR);
  v4 = *(v1 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v0 + 456) = v6;
  *(v6 + 16) = xmmword_1BC4BAA20;
  v7 = v6 + v5;
  *(v0 + 504) = *MEMORY[0x1E6995C88];
  v8 = *(v1 + 104);
  *(v0 + 464) = v8;
  *(v0 + 472) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v7);
  *(v0 + 508) = *MEMORY[0x1E6995C80];
  v9 = (v8)(v7 + v4);
  (*(*v2 + 360))(v9);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMR, MEMORY[0x1E695BF48]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 16);
  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 40);
  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 64);
  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 88);
  OUTLINED_FUNCTION_4_0(v3 + 16, v0 + 112);
  v10 = static MainActor.shared.getter();
  *(v0 + 480) = v10;
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_1_141(v11);
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v12, v10, v13);
}

{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (!v0)
  {

    v4 = *(v2 + 440);
    v5 = *(v2 + 448);

    return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:), v4, v5);
  }

  return result;
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  (*(*(v0 + 352) + 32))(*(v0 + 360), v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 408);
    v3 = *(v0 + 416);
    v5 = *(v0 + 400);

    v6 = OUTLINED_FUNCTION_32_2();
    v7(v6);
    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 504);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v16 = *(**(v0 + 288) + 232);
  v16();
  v10(v13, v11, v14);
  lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_32_2();
  v17(v18);
  v19 = (v17)(v12, v14);
  if (*(v0 + 256) == *(v0 + 264) || (v20 = *(v0 + 508), v61 = v17, v21 = *(v0 + 464), v23 = *(v0 + 328), v22 = *(v0 + 336), v24 = *(v0 + 312), (v16)(v19), v21(v23, v20, v24), v17 = v61, dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), (v61)(v23, v24), (v61)(v22, v24), *(v0 + 272) == *(v0 + 280)))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v26 = Strong;
    OUTLINED_FUNCTION_4_0(Strong + 16, v0 + 232);
    if (*(v26 + 16))
    {

      Image.init(systemName:)();
      IntelligenceMessageViewModel.updateLeadingImage(image:)();
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v27 = Strong;
    OUTLINED_FUNCTION_4_0(Strong + 16, v0 + 136);
    if (*(v27 + 16))
    {

      IntelligenceMessageViewModel.updateLeadingImage(image:)();
    }
  }

LABEL_17:
  v28 = *(v0 + 456);
  v29 = *(v0 + 336);
  (v16)(Strong);
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  LOBYTE(v28) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v30, v28);

  v31 = OUTLINED_FUNCTION_32_2();
  v17(v31);
  v32 = swift_weakLoadStrong();
  v33 = v32;
  if (v28)
  {
    if (v32)
    {
      OUTLINED_FUNCTION_4_0(v32 + 16, v0 + 208);
      if (*(v33 + 16))
      {
        v34 = *(v0 + 368);
        v35 = *(v0 + 344);

        v36 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v40 = v39 + 9;
        v41 = 0x80000001BC5124C0;
LABEL_24:
        v42.super.isa = v36;
        OUTLINED_FUNCTION_17_0(v40, v41, v37, v38, v42);

        String.init(format:_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v35);
        IntelligenceMessageViewModel.updateSecondaryMessage(message:)();

        outlined destroy of AttributedString?(v34);
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if (v32)
  {
    OUTLINED_FUNCTION_4_0(v32 + 16, v0 + 160);
    if (*(v33 + 16))
    {
      v34 = *(v0 + 368);
      v35 = *(v0 + 344);

      v36 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v41 = 0x80000001BC512430;
      v40 = 0xD00000000000001ALL;
      goto LABEL_24;
    }

LABEL_25:
  }

LABEL_26:
  v46 = swift_weakLoadStrong();
  if (v46)
  {
    v47 = v46;
    swift_beginAccess();
    if (*(v47 + 16))
    {
      v49 = *(v0 + 360);
      v48 = *(v0 + 368);
      v50 = *(v0 + 344);
      v51 = *(v0 + 352);
      swift_endAccess();

      (*(v51 + 16))(v48, v49, v50);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
      IntelligenceMessageViewModel.updateStatusMessage(message:)();

      outlined destroy of AttributedString?(v48);
      v55 = OUTLINED_FUNCTION_32_2();
      v56(v55);
    }

    else
    {
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
      swift_endAccess();
    }
  }

  else
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v57 = static MainActor.shared.getter();
  *(v0 + 480) = v57;
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMR);
  v58 = swift_task_alloc();
  *(v0 + 488) = v58;
  *v58 = v0;
  v59 = OUTLINED_FUNCTION_1_141(v58);
  v60 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v59, v57, v60);
}

uint64_t CallHoldingTranscriptViewModelComposer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason()
{
  result = lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason;
  if (!lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason)
  {
    type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason);
  }

  return result;
}

uint64_t partial apply for closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(a1, v4, v5, v7, v6);
}

id WaitOnHoldViewComposer.compose(with:waitOnHoldServiceProvider:)(void *a1, uint64_t a2)
{
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySbGMd, &_s7Combine4JustVySbGMR);
  OUTLINED_FUNCTION_1();
  v53 = v4;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - v5;
  type metadata accessor for WaitOnHoldMiddleView();
  OUTLINED_FUNCTION_1();
  v55 = v7;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v21);
  v58[0] = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28CNKWaitOnHoldServiceProvider_pMd, &_sSo28CNKWaitOnHoldServiceProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pMd, &_s16CommunicationsUI25WaitOnHoldServiceProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
  }

  v22 = objc_opt_self();
  v23 = [v22 conversationKit];
  v61._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v23, v24, v61);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v27 = [v50 waitOnHoldSubtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  v28 = [v22 conversationKit];
  v62._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v28, v29, v62);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
  outlined init with copy of WaitOnHoldServiceProtocol?(v59, v58);
  type metadata accessor for WaitOnHoldViewModel();
  swift_allocObject();
  WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)();

  v32 = v57;
  WaitOnHoldMiddleView.init(viewModel:)();
  v34 = v55;
  v33 = v56;
  v35 = *(v55 + 16);
  v35(v11, v32, v56);
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37MaskSizingLockScreenHostingControllerCy16CommunicationsUI20WaitOnHoldMiddleViewVGMd, &_s15ConversationKit37MaskSizingLockScreenHostingControllerCy16CommunicationsUI20WaitOnHoldMiddleViewVGMR));
  v35(v51, v11, v33);
  v37 = LockScreenHostingController.init(rootView:)();
  v38 = *(v34 + 8);
  v38(v11, v33);
  v39 = [objc_opt_self() preferredFontForTextStyle_];
  [v39 pointSize];

  LOBYTE(v58[0]) = 1;
  v40 = v52;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Bool> and conformance Just<A>();
  v41 = v54;
  Publisher.eraseToAnyPublisher()();
  (*(v53 + 8))(v40, v41);
  v42 = objc_allocWithZone(type metadata accessor for BlurryMaskView());
  v43 = BlurryMaskView.init(textSize:isBottomVisiblePublisher:topPositions:)();
  v44 = v37;
  result = [v44 view];
  if (result)
  {
    v46 = result;
    [result setMaskView_];

    result = [v44 view];
    if (result)
    {
      v47 = result;
      v48 = [objc_opt_self() clearColor];
      [v47 setBackgroundColor_];

      v38(v57, v33);
      outlined destroy of WaitOnHoldServiceProtocol?(v59);
      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of WaitOnHoldServiceProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMd, &_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Just<Bool> and conformance Just<A>()
{
  result = lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>;
  if (!lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine4JustVySbGMd, &_s7Combine4JustVySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>);
  }

  return result;
}

uint64_t outlined destroy of WaitOnHoldServiceProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMd, &_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WaitOnHoldViewComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WaitOnHoldViewComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WaitOnHoldViewComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNKWaitOnHoldViewComposerFactory.makeViewComposer()()
{
  v0 = objc_allocWithZone(type metadata accessor for WaitOnHoldViewComposer());

  return [v0 init];
}

CNKWaitOnHoldViewComposerFactory __swiftcall CNKWaitOnHoldViewComposerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for CNKWaitOnHoldViewComposerFactory()
{
  result = lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory;
  if (!lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory);
  }

  return result;
}

uint64_t VideoReaction.systemImageName.getter(uint64_t a1)
{
  v1 = VideoReaction.rawValue.getter(a1);
  v2 = AVCaptureReactionSystemImageNameForType(v1);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

ConversationKit::VideoReaction_optional __swiftcall VideoReaction.init(rawValue:)(__C::AVCaptureReactionType rawValue)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  v6 = v6 && v1 == v5;
  if (v6)
  {

    return 0;
  }

  OUTLINED_FUNCTION_0_41(v4);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v9)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_41(v8);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v12)
  {

    return 2;
  }

  OUTLINED_FUNCTION_0_41(v11);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v15)
  {

    return 3;
  }

  OUTLINED_FUNCTION_0_41(v14);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v18)
  {

    return 4;
  }

  OUTLINED_FUNCTION_0_41(v17);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 4;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v21)
  {

    return 5;
  }

  OUTLINED_FUNCTION_0_41(v20);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 5;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v24)
  {

    return 6;
  }

  OUTLINED_FUNCTION_0_41(v23);
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 6;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v6 && v1 == v27)
  {

    return 7;
  }

  else
  {
    v29 = OUTLINED_FUNCTION_0_41(v26);

    if (v29)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t VideoReactionPickerViewModel.isShowingPicker.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoReactionPickerViewModel.isShowingPicker.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t VideoReactionPickerViewModel.anchorPoint.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoReactionPickerViewModel.anchorPoint.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t VideoReactionPickerViewModel.init(onReaction:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CGPointVSgGMd, &_s7Combine9PublishedVySo7CGPointVSgGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__isShowingPicker;
  LOBYTE(v19) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__anchorPoint;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, "X_\b");
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v14, v8, v5);
  v15 = (v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame);
  *v15 = 0u;
  v15[1] = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_bubbleGrowsRightwards) = 2;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) = 3;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_shouldHidePickerAfterReaction) = 1;
  v16 = (v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_onReaction);
  *v16 = a1;
  v16[1] = a2;
  return v2;
}

uint64_t VideoReactionPickerViewModel.sendReaction(_:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_shouldHidePickerAfterReaction) == 1)
  {
    VideoReactionPickerViewModel.isShowingPicker.setter(0);
  }

  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_onReaction);

  v3(a1);
}

uint64_t VideoReactionPickerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__isShowingPicker;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__anchorPoint;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CGPointVSgGMd, &_s7Combine9PublishedVySo7CGPointVSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t VideoReactionPickerViewModel.__deallocating_deinit()
{
  VideoReactionPickerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance VideoReactionPickerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoReactionPickerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

ConversationKit::VideoReaction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VideoReaction@<W0>(__C::AVCaptureReactionType *a1@<X0>, ConversationKit::VideoReaction_optional *a2@<X8>)
{
  result.value = VideoReaction.init(rawValue:)(a1->_rawValue).value;
  a2->value = result.value;
  return result;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance VideoReaction@<X0>(void *a1@<X8>)
{
  result = VideoReaction.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t VideoReaction.accessibilityLabel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v7._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v2._object = (v1 | 0x8000000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v4, v0, v3, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

double VideoReaction.rotationParameters.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    static UnitPoint.topTrailing.getter();
  }

  else
  {
    if (a1 != 1)
    {
      v1 = 0.0;
      static UnitPoint.center.getter();
      return v1;
    }

    static UnitPoint.bottomLeading.getter();
  }

  return -0.785398163;
}

uint64_t VideoReactionButtonStyle.makeBody(configuration:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VG_AKyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAQSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VG_AKyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAQSgGGtGGMR);
  OUTLINED_FUNCTION_46();
  return closure #1 in VideoReactionButtonStyle.makeBody(configuration:)(v4);
}

uint64_t closure #1 in VideoReactionButtonStyle.makeBody(configuration:)@<X0>(_OWORD *a1@<X8>)
{
  v28 = type metadata accessor for ButtonStyleConfiguration.Label();
  v27 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v13 = [objc_opt_self() labelColor];
    v14 = Color.init(uiColor:)();
  }

  else
  {
    v14 = static Color.clear.getter();
  }

  v26 = v14;
  VideoReactionButtonStyle.backgroundSize.getter();
  VideoReactionButtonStyle.backgroundSize.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v35[3] = *&v35[27];
  *&v35[11] = *&v35[35];
  *&v35[19] = *&v35[43];
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v15 = static Color.black.getter();
  }

  else
  {
    v16 = [objc_opt_self() labelColor];
    v15 = Color.init(uiColor:)();
  }

  v17 = v15;
  KeyPath = swift_getKeyPath();
  (*(v27 + 32))(v9, v4, v28);
  v19 = &v9[*(v25 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v9, v12, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, v6, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v20 = v26;
  *&v29[0] = v26;
  WORD4(v29[0]) = 256;
  *(v29 + 10) = *v35;
  *(&v29[1] + 10) = *&v35[8];
  *(&v29[2] + 10) = *&v35[16];
  *(&v29[3] + 1) = *&v35[23];
  v21 = v29[1];
  *a1 = v29[0];
  a1[1] = v21;
  v22 = v29[3];
  a1[2] = v29[2];
  a1[3] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVG_ACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAISgGGtMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVG_ACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAISgGGtMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, a1 + *(v23 + 48), &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v29, &v30, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v30 = v20;
  v31 = 256;
  v32 = *v35;
  v33 = *&v35[8];
  *v34 = *&v35[16];
  *&v34[14] = *&v35[23];
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMR);
}

double VideoReactionButtonStyle.backgroundSize.getter()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  specialized Environment.wrappedValue.getter(&v13 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E697E728], v0);
  v8 = static DynamicTypeSize.< infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    return 44.0;
  }

  specialized Environment.wrappedValue.getter(v6);
  v7(v3, *MEMORY[0x1E697E6C0], v0);
  v11 = static DynamicTypeSize.< infix(_:_:)();
  v9(v3, v0);
  v9(v6, v0);
  if (v11)
  {
    return 50.6;
  }

  specialized Environment.wrappedValue.getter(v6);
  v7(v3, *MEMORY[0x1E697E6D8], v0);
  v12 = static DynamicTypeSize.< infix(_:_:)();
  v9(v3, v0);
  v9(v6, v0);
  result = 81.84;
  if (v12)
  {
    return 62.04;
  }

  return result;
}

uint64_t VideoReactionButtonStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t VideoReactionButton.reaction.setter(char a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

void (*VideoReactionButton.reaction.modify())()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.showDelay.setter(double a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

void (*VideoReactionButton.showDelay.modify())()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.moveDelay.setter(double a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void (*VideoReactionButton.moveDelay.modify())()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v103 = type metadata accessor for VideoReactionButtonStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for VideoReactionButton(0);
  v7 = *(v6 - 8);
  v116 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = v8;
  v9 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMR);
  OUTLINED_FUNCTION_1();
  v101 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v96 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionfE0VQo_MR);
  OUTLINED_FUNCTION_1();
  v113 = v14;
  v114 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v96 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v20);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v22);
  v96[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v112 = v24;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v26);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v28);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  v111 = v30;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGA30_GMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v32);
  v117 = v9;
  v99 = type metadata accessor for VideoReactionButton;
  outlined init with copy of VideoReactionButton(v1, v9, type metadata accessor for VideoReactionButton);
  v33 = *(v7 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = swift_allocObject();
  outlined init with take of VideoReactionButton(v9, v35 + v34, type metadata accessor for VideoReactionButton);
  v119 = v1;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  v37 = v13;
  Button.init(action:label:)();
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMR, MEMORY[0x1E697D680]);
  v39 = lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle, type metadata accessor for VideoReactionButtonStyle, &protocol conformance descriptor for VideoReactionButtonStyle);
  v40 = v18;
  v41 = v98;
  v42 = v103;
  View.buttonStyle<A>(_:)();
  outlined destroy of VideoReactionButtonStyle();
  (*(v101 + 8))(v37, v41);
  v43 = v36;
  LODWORD(v101) = *(v36 + *(v116 + 40));
  v124 = VideoReaction.accessibilityLabel.getter();
  v125 = v44;
  v120 = v41;
  v121 = v42;
  v122 = v38;
  v123 = v39;
  v45 = v117;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v46 = v100;
  v47 = v113;
  View.accessibilityLabel<A>(_:)();

  (*(v114 + 8))(v40, v47);
  v48 = static Alignment.center.getter();
  v50 = v49;
  v51 = v99;
  outlined init with copy of VideoReactionButton(v43, v45, v99);
  v113 = v33;
  v52 = swift_allocObject();
  v114 = v34;
  v53 = v45;
  v54 = v43;
  v55 = v51;
  v56 = v102;
  outlined init with take of VideoReactionButton(v53, v52 + v34, v55);
  v57 = (v46 + *(v104 + 44));
  *v57 = closure #1 in closure #3 in VideoReactionButton.body.getter;
  v57[1] = 0;
  v57[2] = partial apply for closure #2 in closure #3 in VideoReactionButton.body.getter;
  v57[3] = v52;
  v57[4] = v48;
  v57[5] = v50;
  v58 = v43 + *(v116 + 36);
  v59 = *(v58 + 8);
  LOBYTE(v120) = *v58;
  v121 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v60 = 0;
  if (v124)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  static UnitPoint.center.getter();
  v63 = v62;
  v65 = v64;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v46, v56, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMR);
  v66 = v56 + *(v105 + 44);
  *v66 = v61;
  *(v66 + 8) = v61;
  *(v66 + 16) = v63;
  *(v66 + 24) = v65;
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v67 = v101;
  if ((v124 & 1) == 0)
  {
    if (v101 == 2)
    {
      static UnitPoint.topTrailing.getter();
      v60 = 0xBFE921FB54442D18;
      goto LABEL_14;
    }

    if (v101 == 1)
    {
      static UnitPoint.bottomLeading.getter();
      v60 = 0xBFE921FB54442D18;
      OUTLINED_FUNCTION_12_69();
LABEL_13:
      static UnitPoint.bottomLeading.getter();
      goto LABEL_15;
    }

    static UnitPoint.center.getter();
  }

  if (v67 != 2)
  {
    v68 = v67 == 1;
    v43 = v97;
    v34 = v96[1];
    v67 = v96[0];
    if (!v68)
    {
      static UnitPoint.center.getter();
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_12_69();
  static UnitPoint.topTrailing.getter();
LABEL_15:
  v71 = v69;
  v72 = v70;
  v73 = v112;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v56, v112, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMR);
  v74 = (v73 + *(v67 + 36));
  *v74 = v60;
  v74[1] = v71;
  v74[2] = v72;
  v75 = VideoReactionButton.transformAnimation.getter();
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v76 = v124;
  v77 = v73;
  v78 = v108;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v77, v108, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMR);
  v79 = v78 + *(v110 + 36);
  *v79 = v75;
  *(v79 + 8) = v76;
  v80 = v109;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v78, v109, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMR);
  v81 = (v80 + *(v106 + 36));
  *v81 = 0x3FF0000000000000;
  v81[1] = 0;
  v81[2] = 0;
  v81[3] = 0x3FF0000000000000;
  v81[4] = 0;
  v81[5] = 0;
  VideoReactionButton.offset.getter();
  v83 = v82;
  v84 = v111;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v80, v111, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMR);
  v85 = (v84 + *(v107 + 36));
  *v85 = v83;
  v85[1] = 0;
  v86 = VideoReactionButton.offsetAnimation.getter();
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v87 = v124;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v84, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMR);
  v88 = v34 + *(v43 + 36);
  *v88 = v86;
  *(v88 + 8) = v87;
  if (*v54)
  {

    v89 = VideoReactionPickerViewModel.isShowingPicker.getter();

    LOBYTE(v120) = v89 & 1;
    v90 = v117;
    outlined init with copy of VideoReactionButton(v54, v117, type metadata accessor for VideoReactionButton);
    v91 = v114;
    v92 = swift_allocObject();
    outlined init with take of VideoReactionButton(v90, v92 + v91, type metadata accessor for VideoReactionButton);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    View.onChange<A>(of:initial:_:)();

    return sub_1BBCF7508(v34);
  }

  else
  {
    type metadata accessor for VideoReactionPickerViewModel(0);
    OUTLINED_FUNCTION_0_174();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v94, v95, &protocol conformance descriptor for VideoReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in VideoReactionButton.body.getter(void *a1)
{
  if (*a1)
  {
    v1 = *(a1 + *(type metadata accessor for VideoReactionButton(0) + 32));

    VideoReactionPickerViewModel.sendReaction(_:)(v1);
  }

  else
  {
    type metadata accessor for VideoReactionPickerViewModel(0);
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel, &protocol conformance descriptor for VideoReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in VideoReactionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v35 = a1;
  v42 = a2;
  v40 = type metadata accessor for DynamicTypeSize();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v41 = type metadata accessor for Image.Scale();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VideoReactionButton(0);
  v17 = VideoReaction.rawValue.getter(*(v2 + *(v16 + 32)));
  v18 = AVCaptureReactionSystemImageNameForType(v17);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = Image.init(systemName:)();
  (*(v13 + 104))(v15, *MEMORY[0x1E6980F08], v12);
  v19 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  static Font.Weight.semibold.getter();
  v20 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(v7);
  v22 = v37;
  v23 = v40;
  (*(v3 + 104))(v37, *MEMORY[0x1E697E6C8], v40);
  LOBYTE(v2) = static DynamicTypeSize.< infix(_:_:)();
  v24 = *(v3 + 8);
  v24(v22, v23);
  v24(v7, v23);
  v26 = v38;
  v25 = v39;
  v27 = MEMORY[0x1E69816E0];
  if ((v2 & 1) == 0)
  {
    v27 = MEMORY[0x1E69816C8];
  }

  v28 = v41;
  (*(v39 + 104))(v38, *v27, v41);
  v29 = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
  v31 = v42;
  v32 = (v42 + *(v30 + 36));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR);
  result = (*(v25 + 32))(v32 + *(v33 + 28), v26, v28);
  *v32 = v29;
  *v31 = v36;
  v31[1] = KeyPath;
  v31[2] = v20;
  return result;
}

void closure #1 in closure #3 in VideoReactionButton.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NamedCoordinateSpace();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static Color.clear.getter();
  v16[0] = 0xD000000000000019;
  v16[1] = 0x80000001BC4DCD20;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  MidX = CGRectGetMidX(v17);
  *a1 = v6;
  *(a1 + 8) = MidX;
}

uint64_t closure #2 in closure #3 in VideoReactionButton.body.getter(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMR);
  result = State.wrappedValue.getter();
  if (v3 == 1)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t VideoReactionButton.transformAnimation.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v0 = 0;
  if (v2 == 1)
  {
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    v0 = Animation.delay(_:)();
  }

  return v0;
}

uint64_t VideoReactionButton.offset.getter()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VideoReactionButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v0 + *(v11 + 28);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(aBlock) = v13;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if ((v37 & 1) == 0)
  {
    v16 = v0 + *(v8 + 24);
    v17 = *v16;
    v18 = v16[8];
    v19 = *(v16 + 2);
    aBlock = v17;
    LOBYTE(v32) = v18;
    v33 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMR);
    result = State.wrappedValue.getter();
    if ((v38 & 1) == 0)
    {
      v28 = v2;
      if (*v0)
      {

        VideoReactionPickerViewModel.anchorPoint.getter();
        v21 = v20;

        if ((v21 & 1) == 0)
        {

          v22 = VideoReactionPickerViewModel.isShowingPicker.getter();

          if (v22)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v23 = static OS_dispatch_queue.main.getter();
            outlined init with copy of VideoReactionButton(v0, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoReactionButton);
            v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
            v25 = swift_allocObject();
            outlined init with take of VideoReactionButton(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for VideoReactionButton);
            v35 = partial apply for closure #1 in VideoReactionButton.offset.getter;
            v36 = v25;
            aBlock = MEMORY[0x1E69E9820];
            v32 = 1107296256;
            v33 = thunk for @escaping @callee_guaranteed () -> ();
            v34 = &block_descriptor_119;
            v26 = _Block_copy(&aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x1BFB215C0](0, v7, v4, v26);
            _Block_release(v26);

            (*(v28 + 8))(v4, v1);
            return (*(v29 + 8))(v7, v30);
          }
        }
      }

      else
      {
        type metadata accessor for VideoReactionPickerViewModel(0);
        lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel, &protocol conformance descriptor for VideoReactionPickerViewModel);
        result = EnvironmentObject.error()();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t VideoReactionButton.offsetAnimation.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v0 = 0;
  if (v2 == 1)
  {
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    v0 = Animation.delay(_:)();
  }

  return v0;
}

void closure #4 in VideoReactionButton.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for VideoReactionButton(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
  }
}

uint64_t closure #1 in VideoReactionButton.offset.getter(uint64_t a1)
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t VideoReactionButton.init(reaction:showDelay:moveDelay:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  type metadata accessor for VideoReactionPickerViewModel(0);
  OUTLINED_FUNCTION_0_174();
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v8, v9, &protocol conformance descriptor for VideoReactionPickerViewModel);
  *a2 = EnvironmentObject.init()();
  a2[1] = v10;
  v11 = type metadata accessor for VideoReactionButton(0);
  v12 = v11[5];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd, &_s12CoreGraphics7CGFloatVSgMR);
  State.init(wrappedValue:)();
  *v13 = v16;
  v13[8] = v17;
  *(v13 + 2) = v18;
  v14 = a2 + v11[7];
  result = State.init(wrappedValue:)();
  *v14 = v16;
  *(v14 + 1) = v17;
  *(a2 + v11[8]) = a1;
  *(a2 + v11[9]) = a3;
  *(a2 + v11[10]) = a4;
  return result;
}

uint64_t VideoReactionButtonRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySnySiGSiAA05TupleD0Vy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySnySiGSiAA05TupleD0Vy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGGGMR);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(VideoReactionButton, Spacer?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMd, &_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMR, MEMORY[0x1E6981F48]);
  return ForEach<>.init(_:id:content:)();
}

void closure #1 in closure #1 in VideoReactionButtonRow.body.getter(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for VideoReactionButton(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - v14);
  v16 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 >= *(a2 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v17 = *(a2 + v16 + 32);
  v18 = v16 * 0.1 + a4;
  type metadata accessor for VideoReactionPickerViewModel(0);
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel, &protocol conformance descriptor for VideoReactionPickerViewModel);
  *v15 = EnvironmentObject.init()();
  v15[1] = v19;
  v20 = v10[5];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v21 = v15 + v10[6];
  v30 = 0;
  v22 = 1;
  v31 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd, &_s12CoreGraphics7CGFloatVSgMR);
  State.init(wrappedValue:)();
  v23 = v33;
  v24 = v34;
  *v21 = v32;
  v21[8] = v23;
  *(v21 + 2) = v24;
  v25 = v15 + v10[7];
  LOBYTE(v30) = 0;
  State.init(wrappedValue:)();
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  *(v15 + v10[8]) = v17;
  *(v15 + v10[9]) = v18;
  *(v15 + v10[10]) = a5;
  if (specialized BidirectionalCollection.last.getter(a2) == 8)
  {
    v27 = 0;
  }

  else
  {
    v27 = specialized == infix<A>(_:_:)();
    v22 = (v27 & 1) == 0;
  }

  outlined init with copy of VideoReactionButton(v15, v12, type metadata accessor for VideoReactionButton);
  outlined init with copy of VideoReactionButton(v12, a3, type metadata accessor for VideoReactionButton);
  v28 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19VideoReactionButtonV_7SwiftUI6SpacerVSgtMd, &_s15ConversationKit19VideoReactionButtonV_7SwiftUI6SpacerVSgtMR) + 48);
  *v28 = 0;
  *(v28 + 8) = v22;
  *(v28 + 9) = v27 & 1;
  outlined destroy of VideoReactionButtonStyle();
  outlined destroy of VideoReactionButtonStyle();
}

uint64_t VideoReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v49 = v4;
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v48 = v6 - v5;
  v7 = type metadata accessor for VideoReactionPickerBubble(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA6VStackVyAA05TupleC0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerC5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyAIyAIyAIyAA06_ShapeC0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA6VStackVyAA05TupleC0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerC5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyAIyAIyAIyAA06_ShapeC0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_MR);
  OUTLINED_FUNCTION_1();
  v52 = v11;
  v53 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v51 = v13;
  v14 = VideoReactionPickerBubble.buttonVerticalSpacing.getter();
  v46 = static HorizontalAlignment.center.getter();
  v58 = 0;
  v15 = *(v1 + 8);
  type metadata accessor for VideoReactionPickerViewModel(0);
  OUTLINED_FUNCTION_0_174();
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v16, v17, &protocol conformance descriptor for VideoReactionPickerViewModel);
  v45 = static ObservableObject.environmentStore.getter();
  outlined init with copy of VideoReactionButton(v1, &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VideoReactionPickerBubble);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v44 = swift_allocObject();
  outlined init with take of VideoReactionButton(&v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v44 + v18, type metadata accessor for VideoReactionPickerBubble);
  swift_beginAccess();
  v47 = v15;

  v43 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v59 = 0;
  if (one-time initialization token for defaultTipWidth != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(&v60[3] + 1) = *&v60[28];
  *(&v60[11] + 1) = *&v60[36];
  *(&v60[19] + 1) = *&v60[44];
  v27 = static Alignment.center.getter();
  v29 = v28;
  outlined init with copy of VideoReactionButton(v2, &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VideoReactionPickerBubble);
  v30 = swift_allocObject();
  outlined init with take of VideoReactionButton(&v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v30 + v18, type metadata accessor for VideoReactionPickerBubble);
  *&v57[0] = v46;
  *(v57 + 1) = v14;
  LOBYTE(v57[1]) = 0;
  *(&v57[1] + 1) = *v62;
  DWORD1(v57[1]) = *&v62[3];
  *(&v57[1] + 1) = &outlined read-only object #0 of closure #1 in VideoReactionPickerBubble.body.getter;
  v57[2] = vdupq_n_s64(0x3FB999999999999AuLL);
  *&v57[3] = &outlined read-only object #1 of closure #1 in VideoReactionPickerBubble.body.getter;
  *(&v57[3] + 8) = xmmword_1BC4DCC30;
  *(&v57[4] + 1) = v45;
  v57[5] = v47;
  *&v57[6] = 0;
  *(&v57[6] + 1) = partial apply for closure #2 in VideoReactionPickerBubble.body.getter;
  *&v57[7] = v44;
  BYTE8(v57[7]) = v43;
  HIDWORD(v57[7]) = *&v61[3];
  *(&v57[7] + 9) = *v61;
  *&v57[8] = v20;
  *(&v57[8] + 1) = v22;
  *&v57[9] = v24;
  *(&v57[9] + 1) = v26;
  LOBYTE(v57[10]) = 0;
  *(&v57[10] + 1) = *v60;
  *(&v57[11] + 1) = *&v60[8];
  *(&v57[12] + 1) = *&v60[16];
  *&v57[13] = *(&v60[23] + 1);
  *(&v57[13] + 1) = partial apply for closure #1 in closure #3 in VideoReactionPickerBubble.body.getter;
  *&v57[14] = v30;
  *(&v57[14] + 1) = v27;
  *&v57[15] = v29;
  *(&v57[15] + 1) = 0xD000000000000019;
  *&v57[16] = 0x80000001BC4DCD20;
  v31 = v48;
  static AccessibilityChildBehavior.contain.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd, "V]\b");
  v33 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>();
  v34 = v51;
  View.accessibilityElement(children:)();
  (*(v49 + 8))(v31, v50);
  memcpy(v63, v57, 0x108uLL);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd, "V]\b");
  v35 = [objc_opt_self() conversationKit];
  v64._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v35, v36, v64);

  v57[0] = v39;
  v55 = v32;
  v56 = v33;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v40 = v53;
  View.accessibilityLabel<A>(_:)();

  return (*(v52 + 8))(v34, v40);
}

double VideoReactionPickerBubble.buttonVerticalSpacing.getter()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  type metadata accessor for VideoReactionPickerBubble(0);
  specialized Environment.wrappedValue.getter(v6);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E697E6C0], v0);
  v8 = static DynamicTypeSize.< infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  result = 6.0;
  if ((v8 & 1) == 0)
  {
    specialized Environment.wrappedValue.getter(v6);
    v7(v3, *MEMORY[0x1E697E6C8], v0);
    v11 = static DynamicTypeSize.< infix(_:_:)();
    v9(v3, v0);
    v9(v6, v0);
    result = 2.0;
    if ((v11 & 1) == 0)
    {
      specialized Environment.wrappedValue.getter(v6);
      v7(v3, *MEMORY[0x1E697E6D8], v0);
      v12 = static DynamicTypeSize.< infix(_:_:)();
      v9(v3, v0);
      v9(v6, v0);
      result = 4.0;
      if (v12)
      {
        return 5.0;
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #3 in VideoReactionPickerBubble.body.getter@<X0>(uint64_t a2@<X8>)
{
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGMR);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGMR);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGMR);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - v11;
  v12 = VideoReactionPickerBubble.anchorPoint(for:)();
  v14 = v13;
  v15 = VideoReactionPickerBubble.bubbleGrowsRightwards(for:)();
  v16 = VideoReactionPickerBubble.cornerRadius.getter();
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  v20 = 1.0;
  if (VideoReactionPickerViewModel.isShowingPicker.getter())
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = v19 == 1;
  static Material.regular.getter();
  *v5 = v12;
  *(v5 + 1) = v14;
  *(v5 + 2) = v21;
  *(v5 + 3) = v16;
  v23 = v15 & 1;
  v5[32] = v15 & 1;
  v5[33] = v22;
  *&v5[*(v3 + 64)] = 256;
  static Color.white.getter();
  v24 = Color.opacity(_:)();

  v25 = VideoReactionPickerBubble.cornerRadius.getter();
  v26 = [v17 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v28 = VideoReactionPickerViewModel.isShowingPicker.getter();
  *&v47 = v24;
  if ((v28 & 1) == 0)
  {
    v20 = 0.0;
  }

  *(&v47 + 1) = v12;
  *v48 = v14;
  *&v48[8] = v20;
  *&v48[16] = v25;
  v48[24] = v23;
  v48[25] = v27 == 1;
  *&v48[26] = 256;
  v29 = v5;
  v30 = v43;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v29, v43, &_s7SwiftUI10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGMd, &_s7SwiftUI10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGMR);
  v31 = (v30 + *(v7 + 44));
  v32 = *v48;
  *v31 = v47;
  v31[1] = v32;
  *(v31 + 28) = *&v48[12];
  v49[0] = v24;
  *&v49[1] = v12;
  v49[2] = v14;
  *&v49[3] = v20;
  *&v49[4] = v25;
  v50 = v23;
  v51 = v27 == 1;
  v52 = 256;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v47, v46, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorV15ConversationKit13ThoughtBubbleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorV15ConversationKit13ThoughtBubbleVGMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorV15ConversationKit13ThoughtBubbleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorV15ConversationKit13ThoughtBubbleVGMR);
  static Color.white.getter();
  v33 = [v17 currentDevice];
  [v33 userInterfaceIdiom];

  v34 = v44;
  v35 = Color.opacity(_:)();

  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v30, v34, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGMR);
  v36 = v34 + *(v10 + 44);
  *v36 = v35;
  *(v36 + 8) = xmmword_1BC4DCC40;
  *(v36 + 24) = 0x4014000000000000;
  if (VideoReactionPickerViewModel.isShowingPicker.getter())
  {
    v37 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  }

  else
  {
    v37 = 0;
  }

  v38 = VideoReactionPickerViewModel.isShowingPicker.getter();
  v39 = v34;
  v40 = v45;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v39, v45, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGAA010_AnimationN0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA021_InsettableBackgroundE8ModifierVyAA5ColorVAHGGAA13_ShadowEffectVGAA010_AnimationN0VySbGGMR);
  v42 = v40 + *(result + 36);
  *v42 = v37;
  *(v42 + 8) = v38 & 1;
  return result;
}

double VideoReactionPickerBubble.anchorPoint(for:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VideoReactionPickerBubble(0);
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for GlobalCoordinateSpace();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v0;
  v13 = *(v0 + 8);
  *&v14 = COERCE_DOUBLE(VideoReactionPickerViewModel.anchorPoint.getter());
  if ((v15 & 1) == 0)
  {
    return *&v14;
  }

  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v10 + 8))(v12, v9);
  v76.origin.x = v17;
  v76.origin.y = v19;
  v76.size.width = v21;
  v76.size.height = v23;
  MidY = CGRectGetMidY(v76);
  v25 = (v13 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame);
  v26 = CGRectGetMidY(*(v13 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame));
  v77.origin.x = v17;
  v77.origin.y = v19;
  v77.size.width = v21;
  v77.size.height = v23;
  MaxX = CGRectGetMaxX(v77);
  v28 = CGRectGetMaxX(*v25);
  v78.origin.x = v17;
  v78.origin.y = v19;
  v62 = v21;
  v78.size.width = v21;
  v78.size.height = v23;
  MinX = CGRectGetMinX(v78);
  v30 = CGRectGetMinX(*v25);
  if (v26 >= MidY)
  {
    if (MinX >= v30)
    {
      if (v28 >= MaxX)
      {
        x = v25->origin.x;
        y = v25->origin.y;
        width = v25->size.width;
        height = v25->size.height;
        if ((*(v13 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) & 0xFD) != 0)
        {
          CGRectGetMaxX(*&x);
        }

        else
        {
          CGRectGetMinX(*&x);
        }

        CGRectGetMinY(*v25);
      }

      else
      {
        CGRectGetMaxX(*v25);
        CGRectGetMinY(*v25);
      }
    }
  }

  else
  {
    if (MinX >= v30)
    {
      if (v28 >= MaxX)
      {
        v32 = v25->origin.x;
        v33 = v25->origin.y;
        v34 = v25->size.width;
        v35 = v25->size.height;
        if ((*(v13 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) & 0xFD) != 0)
        {
          CGRectGetMaxX(*&v32);
        }

        else
        {
          CGRectGetMinX(*&v32);
        }
      }

      else
      {
        CGRectGetMaxX(*v25);
      }
    }

    else
    {
      CGRectGetMinX(*v25);
    }

    CGRectGetMaxY(*v25);
  }

  TPNumberPadCharacter.rawValue.getter();
  v31 = v40;
  v42 = v41;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.conversationKit);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v69 = v47;
    *v46 = 136315394;
    aBlock = v17;
    v71 = *&v19;
    v72 = *&v62;
    v73 = v23;
    type metadata accessor for CGRect(0);
    v48 = String.init<A>(reflecting:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v69);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    aBlock = v31;
    v71 = v42;
    type metadata accessor for CGPoint(0);
    v51 = String.init<A>(reflecting:)();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v69);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_1BBC58000, v44, v45, "frameInGlobalCoordinates:%s, anchorPointInBubbleCoordinates:%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v47, -1, -1);
    MEMORY[0x1BFB23DF0](v46, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v54 = static OS_dispatch_queue.main.getter();
  outlined init with copy of VideoReactionButton(v64, &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoReactionPickerBubble);
  v55 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v56 = swift_allocObject();
  outlined init with take of VideoReactionButton(&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55, type metadata accessor for VideoReactionPickerBubble);
  v57 = (v56 + ((v8 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v57 = v31;
  *(v57 + 1) = v42;
  v74 = partial apply for closure #1 in VideoReactionPickerBubble.anchorPoint(for:);
  v75 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = thunk for @escaping @callee_guaranteed () -> ();
  v73 = COERCE_DOUBLE(&block_descriptor_113);
  v58 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v59 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v6, v3, v58);
  _Block_release(v58);

  (*(v67 + 8))(v3, v59);
  (*(v65 + 8))(v6, v66);
  return v31;
}

uint64_t VideoReactionPickerBubble.bubbleGrowsRightwards(for:)()
{
  v1 = type metadata accessor for GlobalCoordinateSpace();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_bubbleGrowsRightwards;
  v7 = *(v5 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_bubbleGrowsRightwards);
  if (v7 == 2)
  {
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    (*(v2 + 8))(v4, v1);
    v16 = v9;
    v17 = v11;
    v18 = v13;
    v19 = v15;
    if ((*(v5 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) & 0xFD) != 0)
    {
      MinX = CGRectGetMinX(*&v16);
      LOBYTE(v7) = MinX <= CGRectGetMinX(*(v5 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame));
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v16);
      LOBYTE(v7) = MaxX < CGRectGetMaxX(*(v5 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame));
    }

    *(v5 + v6) = v7;
  }

  return v7 & 1;
}

double VideoReactionPickerBubble.cornerRadius.getter()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  type metadata accessor for VideoReactionPickerBubble(0);
  specialized Environment.wrappedValue.getter(v6);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E697E6C0], v0);
  v8 = static DynamicTypeSize.< infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  result = 22.0;
  if ((v8 & 1) == 0)
  {
    specialized Environment.wrappedValue.getter(v6);
    v7(v3, *MEMORY[0x1E697E6D8], v0);
    v11 = static DynamicTypeSize.< infix(_:_:)();
    v9(v3, v0);
    v9(v6, v0);
    result = 40.0;
    if (v11)
    {
      return 31.0;
    }
  }

  return result;
}

uint64_t key path getter for VideoReactionPickerViewController.shouldHidePickerAfterReaction : VideoReactionPickerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t (*VideoReactionPickerViewController.shouldHidePickerAfterReaction.modify(uint64_t a1))(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_model);
  *a1 = v1;
  *(a1 + 8) = *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_shouldHidePickerAfterReaction);
  return VideoReactionPickerViewController.shouldHidePickerAfterReaction.modify;
}

id VideoReactionPickerViewController.init(onReaction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_reactionPickerBubble;
  v7 = type metadata accessor for VideoReactionPickerBubble(0);
  __swift_storeEnumTagSinglePayload(&v3[v6], 1, 1, v7);
  type metadata accessor for VideoReactionPickerViewModel(0);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_model] = VideoReactionPickerViewModel.init(onReaction:)(a1, a2);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for VideoReactionPickerViewController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);

  return v8;
}

id VideoReactionPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VideoReactionPickerViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_reactionPickerBubble;
  v2 = type metadata accessor for VideoReactionPickerBubble(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall VideoReactionPickerViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VideoReactionPickerViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];

    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() clearColor];
      [v4 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall VideoReactionPickerViewController.initializeReactionPickerBubbleIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for VideoReactionPickerBubble(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25VideoReactionPickerBubbleVSgMd, &_s15ConversationKit25VideoReactionPickerBubbleVSgMR);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v14 = OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_reactionPickerBubble;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v14, v13, &_s15ConversationKit25VideoReactionPickerBubbleVSgMd, &_s15ConversationKit25VideoReactionPickerBubbleVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v2);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit25VideoReactionPickerBubbleVSgMd, &_s15ConversationKit25VideoReactionPickerBubbleVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    v61 = v14;
    type metadata accessor for VideoReactionPickerViewModel(0);
    OUTLINED_FUNCTION_0_174();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v16, v17, &protocol conformance descriptor for VideoReactionPickerViewModel);

    *v6 = ObservedObject.init(wrappedValue:)();
    v6[1] = v18;
    v19 = *(v2 + 20);
    *(v6 + v19) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerBubble and conformance VideoReactionPickerBubble, type metadata accessor for VideoReactionPickerBubble, &protocol conformance descriptor for VideoReactionPickerBubble);
    v20 = View.inLockScreenHostingController()();
    [v1 addChildViewController_];
    v21 = OUTLINED_FUNCTION_20_47();
    if (v21)
    {
      v22 = v21;
      v23 = OUTLINED_FUNCTION_18_49();
      if (v23)
      {
        v24 = v23;
        [v22 addSubview_];

        v25 = OUTLINED_FUNCTION_18_49();
        if (v25)
        {
          [v25 setTranslatesAutoresizingMaskIntoConstraints_];

          v26 = OUTLINED_FUNCTION_18_49();
          if (v26)
          {
            v27 = [objc_opt_self() clearColor];
            [v26 setBackgroundColor_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_1BC4BA7F0;
            v29 = OUTLINED_FUNCTION_18_49();

            if (v29)
            {
              v60 = v10;
              v30 = [v29 topAnchor];

              v31 = OUTLINED_FUNCTION_20_47();
              if (v31)
              {
                v32 = v31;
                v33 = [v31 topAnchor];

                v34 = [v30 constraintEqualToAnchor_];
                *(v28 + 32) = v34;
                v35 = OUTLINED_FUNCTION_18_49();

                if (v35)
                {
                  v36 = [v35 bottomAnchor];

                  v37 = OUTLINED_FUNCTION_20_47();
                  if (v37)
                  {
                    v38 = v37;
                    v39 = [v37 bottomAnchor];

                    v40 = [v36 constraintEqualToAnchor_];
                    *(v28 + 40) = v40;
                    v41 = OUTLINED_FUNCTION_18_49();

                    if (v41)
                    {
                      v42 = [v41 leadingAnchor];

                      v43 = OUTLINED_FUNCTION_20_47();
                      if (v43)
                      {
                        v44 = v43;
                        v45 = [v43 leadingAnchor];

                        v46 = [v42 constraintEqualToAnchor_];
                        *(v28 + 48) = v46;
                        v47 = OUTLINED_FUNCTION_18_49();

                        if (v47)
                        {
                          v59 = v2;
                          v48 = [v47 trailingAnchor];

                          v49 = OUTLINED_FUNCTION_20_47();
                          if (v49)
                          {
                            v50 = v49;
                            v51 = objc_opt_self();
                            v52 = [v50 trailingAnchor];

                            v53 = [v48 constraintEqualToAnchor_];
                            *(v28 + 56) = v53;
                            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
                            isa = Array._bridgeToObjectiveC()().super.isa;

                            [v51 activateConstraints_];

                            [v20 didMoveToParentViewController_];
                            v55 = v6;
                            v56 = v60;
                            outlined init with take of VideoReactionButton(v55, v60, type metadata accessor for VideoReactionPickerBubble);
                            __swift_storeEnumTagSinglePayload(v56, 0, 1, v59);
                            v57 = v61;
                            swift_beginAccess();
                            outlined assign with take of VideoReactionPickerBubble?(v56, v1 + v57);
                            swift_endAccess();
                            return;
                          }

LABEL_27:
                          __break(1u);
                          return;
                        }

LABEL_26:
                        __break(1u);
                        goto LABEL_27;
                      }

LABEL_25:
                      __break(1u);
                      goto LABEL_26;
                    }

LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

Swift::Void __swiftcall VideoReactionPickerViewController.showReactionPicker(from:corner:)(UIView *from, ConversationKit::MultiwayViewConstraintsController::MultiwayCorner corner)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v6);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  v14 = [v3 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setAlpha_];

  v16 = *&v3[OBJC_IVAR____TtC15ConversationKit33VideoReactionPickerViewController_model];
  [(UIView *)from bounds];
  [(UIView *)from convertRect:0 toView:?];
  v17 = (v16 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame);
  *v17 = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  *(v16 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) = corner;
  VideoReactionPickerViewModel.anchorPoint.setter(0, 0, 1);
  *(v16 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_bubbleGrowsRightwards) = 2;
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationKit);
  v23 = from;
  v24 = v3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315394;
    [(UIView *)v23 frame];
    type metadata accessor for CGRect(0);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v35);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v35);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1BBC58000, v25, v26, "sourceViewFrame:%s, convertedFrame:%s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v27, -1, -1);
  }

  VideoReactionPickerViewModel.isShowingPicker.setter(1);
}

Swift::Void __swiftcall VideoReactionPickerViewController.hideReactionPicker()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = (v7 - v6);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
LABEL_5:
    swift_once();
  }

  v10 = (*(*static Defaults.shared + 1056))();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v21 = partial apply for closure #1 in VideoReactionPickerViewController.hideReactionPicker();
  v22 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed () -> ();
  v20 = &block_descriptor_80;
  v12 = _Block_copy(&aBlock);
  v13 = v1;

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v21 = partial apply for closure #2 in VideoReactionPickerViewController.hideReactionPicker();
  v22 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v20 = &block_descriptor_30_2;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v2 animateWithDuration:v12 animations:v15 completion:v10];
  _Block_release(v15);
  _Block_release(v12);
}