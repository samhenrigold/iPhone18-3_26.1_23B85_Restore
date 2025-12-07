uint64_t ObjectCaptureSession.startDetecting()(const char *a1, void (*a2)(void), const char *a3, ...)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23B824000, v6, v7, a1, v8, 2u);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  a2();
  return 1;
}

Swift::Void __swiftcall ObjectCaptureSession.startCapturing()()
{
  v0 = type metadata accessor for DataModel.Error(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "startCapturing() called!", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  DataModel.startCapturing()();
  if (v7)
  {
    v27[0] = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
LABEL_9:

      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v26 = v7;
        v27[0] = v13;
        *v12 = 136446210;
        v14 = v7;
        v15 = String.init<A>(describing:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v27);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_23B824000, v10, v11, "Got Unknown error = %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x23EEB0B70](v13, -1, -1);
        MEMORY[0x23EEB0B70](v12, -1, -1);
      }

      ObjectCaptureSession.switchToErrorState(error:)(v7);
      return;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ObjectCaptureSession.Configuration(v2, type metadata accessor for DataModel.Error);
      goto LABEL_9;
    }

    v19 = *v2;
    v18 = v2[1];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v26);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_23B824000, v20, v21, "startCapturing() called in invalid state %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x23EEB0B70](v23, -1, -1);
      MEMORY[0x23EEB0B70](v22, -1, -1);

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ObjectCaptureSession.beginNewScanPassAfterFlip()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_5:
    outlined destroy of ObjectCaptureSession.Configuration(v4, type metadata accessor for DataModel.State);
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        swift_getKeyPath();
        v19 = v1;
        lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = v1[2];
        outlined copy of ObjectCaptureSession.CaptureState(v19);
        v16 = String.init<A>(describing:)();
        v1 = v17;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_23B824000, v12, v13, "Can't beginNewScanPassAfterFlip() from state == %{public}s  Must be .paused from .capturing", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x23EEB0B70](v15, -1, -1);
        MEMORY[0x23EEB0B70](v14, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v10 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v10 - 8) + 48))(v4, 8, v10) != 3)
  {
    goto LABEL_5;
  }

  ObjectCaptureSession.verifyObjectCentricModeOrFail()();
  DataModel.beginNextSegment()();
}

Swift::Void __swiftcall ObjectCaptureSession.beginNewScanPass()()
{
  v0 = type metadata accessor for DataModel.State(0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = (v27 - v4);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
LABEL_6:
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = v3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[1] = v3;
      v28 = v18;
      *v17 = 136446210;
      v19 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(describing:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v28);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_23B824000, v15, v16, "Begin new scan pass failed: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x23EEB0B70](v18, -1, -1);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    else
    {
    }

    return;
  }

  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    v11 = type metadata accessor for DataModel.Error(0);
    (*(*(v11 - 8) + 56))(v3, 1, 8, v11);
    v12 = specialized static DataModel.State.== infix(_:_:)(v5, v3);
    outlined destroy of ObjectCaptureSession.Configuration(v3, type metadata accessor for DataModel.State);
    outlined destroy of ObjectCaptureSession.Configuration(v5, type metadata accessor for DataModel.State);
    if ((v12 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, logger);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_23B824000, v24, v25, "Cannot call beginNewScanPass() unless capturing or paused during capture.", v26, 2u);
          MEMORY[0x23EEB0B70](v26, -1, -1);
        }

        __break(1u);
LABEL_16:
        swift_once();
      }
    }
  }

  ObjectCaptureSession.verifyObjectCentricModeOrFail()();
  DataModel.beginNewOrbit()();
  if (v3)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }
}

Swift::Void __swiftcall ObjectCaptureSession.finish()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "finish() called!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_getKeyPath();
  v18 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) == 3)
  {
    DataModel.stopCapturing()();
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {

      return;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, "startCapturing() punting!  Got error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v8, v16, "Ignoring call: finish() called in state != .capturing", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }
}

uint64_t ObjectCaptureSession.resume()(const char *a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, a1, v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  return a2();
}

Swift::Void __swiftcall ObjectCaptureSession.requestImageCapture()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v4 + 4) = *(v0 + 35);

    _os_log_impl(&dword_23B824000, v2, v3, "Requesting a manual shot...  canRequestImageCapture=%{BOOL,public}d", v4, 8u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  else
  {
  }

  DataModel.takeManualShot()();
}

uint64_t ObjectCaptureSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySbGMd, &_s17RealityFoundation6AtomicVySbGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30[-v7];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "~~~ ObjectCaptureSession deinit was called! ~~~", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown);
  v14 = *(*v13 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v8, v13 + v14, v5);
  Atomic.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  if (v30[31] == 1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "~~~ Already tornDown properly in deinit, nothing to do.", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }

  else
  {
    AllAsync = ObjectCaptureSession.unsafeGetAllAsyncStreams()();
    v19 = type metadata accessor for TaskPriority();
    v20 = *(*(v19 - 8) + 56);
    v20(v4, 1, 1, v19);
    type metadata accessor for MainActor();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = AllAsync;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in nonisolated_PrivateTearDown(of:), v22);

    v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
    v20(v4, 1, 1, v19);
    swift_retain_n();
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v23;
    v26[4] = v24;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in nonisolated_PrivateTearDown(of:), v26);

    specialized static ObjectCaptureSession.stopResourceLogging()("Stopping resource logging timer...", &unk_284E411F8, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging());
  }

  outlined consume of ObjectCaptureSession.CaptureState(*(v1 + 16));

  outlined destroy of ObjectCaptureSession.Configuration(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration, type metadata accessor for ObjectCaptureSession.Configuration);

  v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession___observationRegistrar;
  v28 = type metadata accessor for ObservationRegistrar();
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  return v1;
}

uint64_t ObjectCaptureSession.__deallocating_deinit()
{
  ObjectCaptureSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t ObjectCaptureSession.subscriptions.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t key path getter for ObjectCaptureSession.subscriptions : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t closure #1 in ObjectCaptureSession.subscriptions.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void ObjectCaptureSession.setState(_:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v18 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v1[2];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (v3 == 3)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      case 4:
        if (v3 != 4)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      case 5:
        if (v3 == 5)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v4 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v4 != 2)
  {
LABEL_16:
    if (v3 < 6)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = v4;
LABEL_28:
    outlined copy of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v4);
    outlined consume of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v4);
    return;
  }

  if (v3 == 2)
  {
    goto LABEL_28;
  }

LABEL_19:
  outlined copy of ObjectCaptureSession.CaptureState(v2[2]);
  outlined copy of ObjectCaptureSession.CaptureState(v4);
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  v18 = v3;
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  ObjectCaptureSession.state.setter(&v18);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined copy of ObjectCaptureSession.CaptureState(v2[2]);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v10 + 4) = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  swift_getKeyPath();
  v18 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v2[2];
  outlined copy of ObjectCaptureSession.CaptureState(v18);
  dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  outlined consume of ObjectCaptureSession.CaptureState(v18);
  if (v3 >= 5)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "Entering terminal state, so calling tearDown()...", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    ObjectCaptureSession.tearDown()();
  }
}

Swift::Int ObjectCaptureSession.setFeedback(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v18 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = _sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(*(v1 + 24), a1);
  if ((result & 1) == 0)
  {

    ObjectCaptureSession.feedback.setter(v5);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback(v11, v12, v13);

      v14 = Set.description.getter();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v18);

      *(v9 + 4) = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    swift_getKeyPath();
    v18 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v2 + 24);

    dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setCameraTracking(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 32);
  if (v4 == 5)
  {
    if (v2 == 5)
    {
      return result;
    }
  }

  else if (v4 == 4)
  {
    if (v2 == 4)
    {
      return result;
    }
  }

  else if ((v2 & 0xFE) != 4 && v4 == v2)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v14 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  swift_getKeyPath();
  v14 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v14) = *(v1 + 32);
  return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
}

uint64_t ObjectCaptureSession.setIsPaused(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 33) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 33))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 33))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v14) = *(v2 + 33);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setUserCompletedScanPass(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 34) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 34))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 34))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v14) = *(v2 + 34);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setNumberOfShotsTaken(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v13 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x23EEB0B70](v9, -1, -1);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    swift_getKeyPath();
    v13 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v1 + 40);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setCanRequestImageCapture(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 35) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 35))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 35))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    swift_getKeyPath();
    v14 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v14) = *(v2 + 35);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t closure #1 in static ObjectCaptureSession.startResourceLogging()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in static ObjectCaptureSession.startResourceLogging(), v2, v1);
}

{

  type metadata accessor for ResourceTimedLogger();
  result = swift_initStaticObject();
  v2 = *(result + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = v4;
    v5 = *(result + 24);
    if (!v5 || ![v5 isValid])
    {
      ResourceTimedLogger.startNewTimer()();
    }

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of PerspectiveCameraComponent?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
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

  outlined destroy of PerspectiveCameraComponent?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #1 in static ObjectCaptureSession.stopResourceLogging()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in static ObjectCaptureSession.stopResourceLogging(), v2, v1);
}

{

  type metadata accessor for ResourceTimedLogger();
  swift_initStaticObject();
  ResourceTimedLogger.unrequestLogging()();
  v1 = *(v0 + 8);

  return v1();
}

void ObjectCaptureSession.tearDown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySbGMd, &_s17RealityFoundation6AtomicVySbGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown);
  v7 = *(*v6 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  Atomic.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (v12[8])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "Already tornDown, nothing to do...", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }
  }

  else
  {
    ObjectCaptureSession.logAnalyticsEventsOnTearDown()();
    ObjectCaptureSession.finishAysncStreams()();
    DataModel.tearDown()();
    specialized static ObjectCaptureSession.stopResourceLogging()("Stopping resource logging timer...", &unk_284E411F8, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging());
    v12[39] = 1;
    swift_beginAccess();
    Atomic.wrappedValue.setter();
    swift_endAccess();
  }
}

void ObjectCaptureSession.switchToErrorState(error:)(void *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B824000, v4, v5, "Switch to error state.  Got error= %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EEB0B70](v7, -1, -1);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v13 = a1;
  v12 = a1;
  ObjectCaptureSession.setState(_:)(&v13);
  outlined consume of ObjectCaptureSession.CaptureState(a1);
  DataModel.cancelCapturing()();
}

uint64_t ObjectCaptureSession.subscribeToInternalPublishers()()
{
  v1 = v0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v67 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v48 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMR);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v50 = v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMR);
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  MEMORY[0x28223BE20](v10);
  v49 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - v15;
  v17 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v57 = MEMORY[0x277CBCEC8];
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<DataModel.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR, MEMORY[0x277CBCEC8]);
  Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  v69 = v0;
  v18 = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = v0;
  swift_getKeyPath();
  v48[1] = v18;
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v65 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  v21 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  v22 = *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8);
  *v20 = partial apply for closure #2 in ObjectCaptureSession.subscribeToInternalPublishers();
  v20[1] = v19;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v21, v22);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v51 = type metadata accessor for OS_dispatch_queue();
  v23 = static OS_dispatch_queue.main.getter();
  v69 = v23;
  v60 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = *(v60 - 8);
  v25 = *(v24 + 56);
  v62 = v24 + 56;
  v63 = v25;
  v26 = v66;
  v25(v66, 1, 1, v60);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR, v57);
  v61 = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x277D85228]);
  v27 = v49;
  v28 = v53;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v26, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v54 + 8))(v9, v28);
  swift_allocObject();
  swift_weakInit();
  v29 = MEMORY[0x277CBCD60];
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Int>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
  v30 = v55;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v27, v30);
  swift_getKeyPath();
  v69 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v52 = v17;
  swift_beginAccess();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v31 = v58;
  Published.projectedValue.getter();
  swift_endAccess();
  v32 = static OS_dispatch_queue.main.getter();
  v69 = v32;
  v33 = v66;
  v63(v66, 1, 1, v60);
  v57 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, v57);
  v34 = v50;
  v35 = v59;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v33, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v36 = *(v67 + 8);
  v67 += 8;
  v55 = v36;
  v36(v31, v35);
  swift_allocObject();
  swift_weakInit();
  v54 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Bool>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMR, v29);
  v37 = v64;
  Publisher<>.sink(receiveValue:)();

  v38 = *(v68 + 8);
  v68 += 8;
  v53 = v38;
  v38(v34, v37);
  swift_getKeyPath();
  v69 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v39 = static OS_dispatch_queue.main.getter();
  v69 = v39;
  v40 = v66;
  v63(v66, 1, 1, v60);
  v41 = v59;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v40, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v55(v31, v41);
  swift_allocObject();
  swift_weakInit();
  v42 = v64;
  Publisher<>.sink(receiveValue:)();

  v53(v34, v42);
  swift_getKeyPath();
  v69 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v43 = v58;
  Published.projectedValue.getter();
  swift_endAccess();
  v44 = static OS_dispatch_queue.main.getter();
  v69 = v44;
  v45 = v66;
  v63(v66, 1, 1, v60);
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v45, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v55(v43, v41);
  swift_allocObject();
  swift_weakInit();
  v46 = v64;
  Publisher<>.sink(receiveValue:)();

  v53(v34, v46);
  swift_getKeyPath();
  v69 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v69 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #1 in ObjectCaptureSession.subscribeToInternalPublishers()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectCaptureSession.onStateChange(into:)(a1);
  }

  return result;
}

uint64_t closure #2 in ObjectCaptureSession.subscribeToInternalPublishers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectCaptureSession.onFeedback(frameFeedback:frameCameraTracking:)(a1, a2);
  }

  return result;
}

uint64_t closure #3 in ObjectCaptureSession.subscribeToInternalPublishers()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ObjectCaptureSession.setNumberOfShotsTaken(_:)(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = ObjectCaptureSession.updateFlippabilityIfNeeded(set:)(v4);

    ObjectCaptureSession.updateOverCaptureIfNeeded(set:)(v5);

    ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v5);
  }

  return result;
}

uint64_t closure #4 in ObjectCaptureSession.subscribeToInternalPublishers()(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t closure #6 in ObjectCaptureSession.subscribeToInternalPublishers()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_23B824000, v4, v5, "Auto detection failure is now %{BOOL}d: updating feedback...", v6, 8u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    v10 = v8;
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v8 + 24);

    if (v2)
    {
      specialized Set._Variant.insert(_:)(&v9, 8);
    }

    else
    {
      specialized Set._Variant.remove(_:)(8u, &v9);
    }

    ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v10);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ObjectCaptureSession.updateOverCaptureIfNeeded(set:)(uint64_t a1)
{
  type metadata accessor for ObjectCaptureSession();
  v2 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  static ObjectCaptureSession.hardwareSpecs.getter();
  v6 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  (*(v3 + 8))(v5, v2);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349312;
    swift_getKeyPath();
    v14 = v1;
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v10 + 4) = *(v1 + 40);

    *(v10 + 12) = 2050;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_23B824000, v8, v9, "Shots: %{public}ld  Limit: %{public}ld", v10, 0x16u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v6 < *(v1 + 40))
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349312;
      swift_getKeyPath();
      v14 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v13 + 4) = *(v1 + 40);

      *(v13 + 12) = 2050;
      *(v13 + 14) = v6;
      _os_log_impl(&dword_23B824000, v11, v12, "Adding .overCapturing since %{public}ld > %{public}ld", v13, 0x16u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    else
    {
    }

    specialized Set._Variant.insert(_:)(&v14, 7);
  }
}

uint64_t ObjectCaptureSession.updateFlippabilityIfNeeded(set:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
  }

  v11 = a1;
  v3 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable);
  if (v3 == 2 || (v3 & 1) != 0)
  {

    return v11;
  }

  specialized Set._Variant.insert(_:)(&v10, 6);
  if (specialized Set.contains(_:)(6u, a1))
  {
    return v11;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Adding .objectNotFlippable persistently to the Feedback set.", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  return v11;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t one-time initialization function for allFrameFeedbackMessages()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVGMd, &_ss23_ContiguousArrayStorageCy6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVGMR);
  type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B91AE90;
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  static ObjectCaptureSession.Frame.Feedback.lowLight.getter();
  static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
  static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
  static ObjectCaptureSession.Frame.Feedback.tooDark.getter();
  result = static ObjectCaptureSession.Frame.Feedback.outOfFieldOfView.getter();
  static ObjectCaptureSession.allFrameFeedbackMessages = v0;
  return result;
}

uint64_t ObjectCaptureSession.onFeedback(frameFeedback:frameCameraTracking:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v45 = a1;
  v2 = type metadata accessor for ARCamera.TrackingState.Reason();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ARCamera.TrackingState();
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x277D84FA0];
  if (one-time initialization token for allFrameFeedbackMessages != -1)
  {
    swift_once();
  }

  v6 = static ObjectCaptureSession.allFrameFeedbackMessages;
  v7 = *(static ObjectCaptureSession.allFrameFeedbackMessages + 2);
  if (v7)
  {
    v8 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
    v9 = v8;
    v10 = *(v8 - 8);
    v44 = *(v10 + 16);
    v11 = &v6[(*(v10 + 80) + 32) & ~*(v10 + 80)];
    v13 = *(v10 + 64);
    v12 = *(v10 + 72);
    v14 = (v10 + 8);
    do
    {
      MEMORY[0x28223BE20](v8);
      v44(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v9);
      lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217638], MEMORY[0x282217658]);
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v15 = specialized static ObjectCaptureSession.toOCSFeedbackSet(ocsFeedback:)(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        specialized Set.formUnion<A>(_:)(v15);
      }

      v8 = (*v14)(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  swift_getKeyPath();
  v16 = v43;
  v47 = v43;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (specialized Set.contains(_:)(6u, *(v16 + 24)))
  {
    specialized Set._Variant.insert(_:)(&v47, 6);
  }

  swift_getKeyPath();
  v47 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = specialized Set.contains(_:)(7u, *(v16 + 24));
  v18 = v42;
  v19 = v39;
  if (v17)
  {
    specialized Set._Variant.insert(_:)(&v47, 7);
  }

  swift_getKeyPath();
  v47 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (specialized Set.contains(_:)(8u, *(v16 + 24)))
  {
    specialized Set._Variant.insert(_:)(&v47, 8);
  }

  ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v48);

  type metadata accessor for ObjectCaptureSession(0);
  outlined init with copy of ObjectCaptureSession.Error(v40, v19, MEMORY[0x277D82DB0]);
  v20 = v41;
  v21 = (*(v41 + 48))(v19, 2, v18);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }
  }

  else
  {
    v23 = v38;
    (*(v20 + 32))(v38, v19, v18);
    static ObjectCaptureSession.fromARCameraTrackingReason(arReason:)(v23, &v47);
    (*(v20 + 8))(v23, v18);
    v22 = v47;
  }

  swift_getKeyPath();
  v47 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v16 + 32);
  if (v25 == 5)
  {
    if (v22 == 5)
    {
      return result;
    }
  }

  else if (v25 == 4)
  {
    if (v22 == 4)
    {
      return result;
    }
  }

  else if ((v22 & 0xFE) != 4 && v25 == v22)
  {
    return result;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47 = v30;
    *v29 = 136446466;
    swift_getKeyPath();
    v46 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v46) = *(v16 + 32);
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v47);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    LOBYTE(v46) = v22;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v47);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_23B824000, v27, v28, "Camera tracking switching from %{public}s to %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v30, -1, -1);
    MEMORY[0x23EEB0B70](v29, -1, -1);
  }

  LOBYTE(v47) = v22;
  return ObjectCaptureSession.setCameraTracking(_:)(&v47);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(uint64_t a1)
{
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((_sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(a1, *(v1 + 24)) & 1) == 0)
  {
    ObjectCaptureSession.setFeedback(_:)(a1);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback(v8, v9, v10);

      v11 = Set.description.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_23B824000, v4, v5, "Published new Feedback set: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x23EEB0B70](v7, -1, -1);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }
  }
}

void ObjectCaptureSession.onStateChange(into:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v101 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v103 = &v101 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v104 = &v101 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v101 - v16;
  v109 = type metadata accessor for DataModel.State(0);
  v18 = MEMORY[0x28223BE20](v109);
  v105 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v101 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v101 - v25;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, logger);
  v111 = a1;
  outlined init with copy of ObjectCaptureSession.Error(a1, v26, type metadata accessor for DataModel.State);
  v108 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v112 = v24;
  v106 = v11;
  v102 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v107 = v4;
    v34 = v33;
    v114 = v33;
    *v32 = 136446210;
    outlined init with copy of ObjectCaptureSession.Error(v26, v112, type metadata accessor for DataModel.State);
    v35 = String.init<A>(describing:)();
    v36 = v17;
    v37 = v2;
    v39 = v38;
    outlined destroy of ObjectCaptureSession.Configuration(v26, type metadata accessor for DataModel.State);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v39, &v114);
    v2 = v37;
    v17 = v36;

    *(v32 + 4) = v40;
    _os_log_impl(&dword_23B824000, v29, v30, "Switching state into: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v41 = v34;
    v4 = v107;
    MEMORY[0x23EEB0B70](v41, -1, -1);
    v42 = v32;
    v24 = v112;
    MEMORY[0x23EEB0B70](v42, -1, -1);
  }

  else
  {

    outlined destroy of ObjectCaptureSession.Configuration(v26, type metadata accessor for DataModel.State);
  }

  (*(v5 + 56))(v24, 3, 8, v4);
  v43 = v111;
  v44 = specialized static DataModel.State.== infix(_:_:)(v111, v24);
  outlined destroy of ObjectCaptureSession.Configuration(v24, type metadata accessor for DataModel.State);
  if ((v44 & 1) == 0)
  {
    ObjectCaptureSession.setIsPaused(_:)(0);
  }

  swift_getKeyPath();
  v114 = v2;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = v2[2];
  v46 = v110;
  outlined init with copy of ObjectCaptureSession.Error(v43, v110, type metadata accessor for DataModel.State);
  v47 = (*(v5 + 48))(v46, 8, v4);
  if (v47 > 3)
  {
    if (v47 > 5)
    {
      if (v47 == 6)
      {
        v45 = 3;
      }

      else if (v47 == 7)
      {
        v45 = 4;
      }

      else
      {
        v45 = 5;
      }

      goto LABEL_28;
    }

    if (v47 != 4)
    {
      v45 = 2;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v47 > 1)
  {
    if (v47 != 2)
    {
      outlined copy of ObjectCaptureSession.CaptureState(v45);
      ObjectCaptureSession.setIsPaused(_:)(1);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = v2;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v114 = v64;
        *v63 = 136446210;
        swift_getKeyPath();
        v113 = v62;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v113 = v62[2];
        outlined copy of ObjectCaptureSession.CaptureState(v113);
        v65 = String.init<A>(describing:)();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v114);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_23B824000, v60, v61, "Setting isPaused=true  fromState = %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        MEMORY[0x23EEB0B70](v64, -1, -1);
        MEMORY[0x23EEB0B70](v63, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_23:
    v45 = 1;
LABEL_28:
    v114 = v45;
    outlined copy of ObjectCaptureSession.CaptureState(v45);
    ObjectCaptureSession.setState(_:)(&v114);
    outlined consume of ObjectCaptureSession.CaptureState(v45);
    outlined consume of ObjectCaptureSession.CaptureState(v45);
    return;
  }

  if (v47)
  {
    v45 = 0;
    goto LABEL_28;
  }

  outlined init with take of DataModel.Error(v46, v17);
  swift_getKeyPath();
  v114 = v2;
  outlined copy of ObjectCaptureSession.CaptureState(v45);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v2[2] < 6uLL)
  {
    v48 = v104;
    outlined init with copy of ObjectCaptureSession.Error(v17, v104, type metadata accessor for DataModel.Error);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v107 = v4;
      v52 = v51;
      v53 = swift_slowAlloc();
      v114 = v53;
      *v52 = 136446210;
      outlined init with copy of ObjectCaptureSession.Error(v48, v103, type metadata accessor for DataModel.Error);
      v54 = String.init<A>(describing:)();
      v55 = v2;
      v57 = v56;
      outlined destroy of ObjectCaptureSession.Configuration(v48, type metadata accessor for DataModel.Error);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, &v114);
      v2 = v55;

      *(v52 + 4) = v58;
      _os_log_impl(&dword_23B824000, v49, v50, "Capturing failed with error: %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x23EEB0B70](v53, -1, -1);
      v59 = v52;
      v4 = v107;
      MEMORY[0x23EEB0B70](v59, -1, -1);
    }

    else
    {

      outlined destroy of ObjectCaptureSession.Configuration(v48, type metadata accessor for DataModel.Error);
    }

    v81 = v106;
    outlined init with copy of ObjectCaptureSession.Error(v17, v106, type metadata accessor for DataModel.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      type metadata accessor for ObjectCaptureSession.Error(0);
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error, &protocol conformance descriptor for ObjectCaptureSession.Error);
      v88 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      outlined consume of ObjectCaptureSession.CaptureState(v45);
      outlined destroy of ObjectCaptureSession.Configuration(v17, type metadata accessor for DataModel.Error);
      v45 = v88;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v83 = type metadata accessor for ObjectCaptureSession.Error();
      v84 = *(v83 - 8);
      MEMORY[0x28223BE20](v83);
      v86 = &v101 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v84 + 32))(v86, v81, v83);
      v87 = specialized static ObjectCaptureSession.fromOCSError(_:)(v86);
      outlined consume of ObjectCaptureSession.CaptureState(v45);
      (*(v84 + 8))(v86, v83);
      outlined destroy of ObjectCaptureSession.Configuration(v17, type metadata accessor for DataModel.Error);
      v45 = v87;
    }

    else
    {
      v89 = v102;
      outlined init with copy of ObjectCaptureSession.Error(v17, v102, type metadata accessor for DataModel.Error);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v107 = v4;
        v93 = v92;
        v94 = swift_slowAlloc();
        v114 = v94;
        *v93 = 136446210;
        outlined init with copy of ObjectCaptureSession.Error(v89, v103, type metadata accessor for DataModel.Error);
        v95 = String.init<A>(describing:)();
        v112 = v2;
        v97 = v96;
        outlined destroy of ObjectCaptureSession.Configuration(v89, type metadata accessor for DataModel.Error);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v114);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_23B824000, v90, v91, "Got unexpected error: %{public}s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        MEMORY[0x23EEB0B70](v94, -1, -1);
        MEMORY[0x23EEB0B70](v93, -1, -1);
      }

      else
      {

        outlined destroy of ObjectCaptureSession.Configuration(v89, type metadata accessor for DataModel.Error);
      }

      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      v99 = swift_allocError();
      outlined init with take of DataModel.Error(v17, v100);
      outlined consume of ObjectCaptureSession.CaptureState(v45);
      outlined destroy of ObjectCaptureSession.Configuration(v81, type metadata accessor for DataModel.Error);
      v45 = v99;
    }

    goto LABEL_28;
  }

  v110 = v17;
  v68 = v43;
  v69 = v105;
  outlined init with copy of ObjectCaptureSession.Error(v68, v105, type metadata accessor for DataModel.State);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v114 = v111;
    *v72 = 136446466;
    swift_getKeyPath();
    v113 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v113 = v2[2];
    outlined copy of ObjectCaptureSession.CaptureState(v113);
    v73 = String.init<A>(describing:)();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v114);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2082;
    outlined init with copy of ObjectCaptureSession.Error(v69, v112, type metadata accessor for DataModel.State);
    v76 = String.init<A>(describing:)();
    v78 = v77;
    outlined destroy of ObjectCaptureSession.Configuration(v69, type metadata accessor for DataModel.State);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v114);

    *(v72 + 14) = v79;
    _os_log_impl(&dword_23B824000, v70, v71, "onStateChange(): ObjectCaptureSession was already in error state=%{public}s but got an internal error state=%{public}s which will be ignored.", v72, 0x16u);
    v80 = v111;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v80, -1, -1);
    MEMORY[0x23EEB0B70](v72, -1, -1);
    outlined consume of ObjectCaptureSession.CaptureState(v45);
  }

  else
  {
    outlined consume of ObjectCaptureSession.CaptureState(v45);

    outlined destroy of ObjectCaptureSession.Configuration(v69, type metadata accessor for DataModel.State);
  }

  outlined destroy of ObjectCaptureSession.Configuration(v110, type metadata accessor for DataModel.Error);
}

uint64_t static ObjectCaptureSession.fromARCameraTrackingReason(arReason:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ARCamera.TrackingState.Reason();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  result = (*(v5 + 88))(v10, v4);
  if (result == *MEMORY[0x277D82D90])
  {
    v13 = 0;
LABEL_9:
    *a2 = v13;
    return result;
  }

  if (result == *MEMORY[0x277D82DA0])
  {
    v13 = 2;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277D82DA8])
  {
    v13 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277D82D98])
  {
    v13 = 1;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v15 = 0xD000000000000019;
  v16 = 0x800000023B924B20;
  v11(v8, a1, v4);
  v14 = String.init<A>(describing:)();
  MEMORY[0x23EEAF590](v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void ObjectCaptureSession.finishAysncStreams()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Finishing all async update streams...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  AllAsync = ObjectCaptureSession.unsafeGetAllAsyncStreams()();
  v5 = *(AllAsync + 16);
  if (v5)
  {
    v6 = AllAsync + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of Finishable.finish()();
      swift_unknownObjectRelease();
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23B824000, oslog, v7, "done finishing all async update streams.", v8, 2u);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }
}

uint64_t ObjectCaptureSession.unsafeGetAllAsyncStreams()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation10Finishable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation10Finishable_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23B91AEA0;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater);
  v3 = MEMORY[0x277CDB538];
  v4 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<ObjectCaptureSession.CaptureState> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMR, MEMORY[0x277CDB538]);
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater);
  v6 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Set<ObjectCaptureSession.Feedback>> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR, v3);
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater);
  v8 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<ObjectCaptureSession.Tracking> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR, v3);
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater);
  v10 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Bool> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMR, v3);
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater);
  *(v1 + 96) = v11;
  *(v1 + 104) = v10;
  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater);
  *(v1 + 112) = v12;
  *(v1 + 120) = v10;
  v13 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater);
  v14 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Int> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMR, v3);
  *(v1 + 128) = v13;
  *(v1 + 136) = v14;
  v15 = v2;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  return v1;
}

void ObjectCaptureSession.verifyObjectCentricModeOrFail()()
{
  if (*(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, logger);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_23B824000, v2, v3, "Invalid call in area mode!", v4, 2u);
        MEMORY[0x23EEB0B70](v4, -1, -1);
      }

      __break(1u);
LABEL_6:
      swift_once();
    }
  }
}

uint64_t ObjectCaptureSession.logAnalyticsEventsOnStartUp()()
{
  v1 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent();
  v9 = *(inited - 8);
  MEMORY[0x28223BE20](inited);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID;
  v13 = *(v5 + 16);
  v18 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v20 = v4;
  v13(v7, v18 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v4);
  AnalyticsManager.ObjectCaptureSessionInitEvent.init(sessionID:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)();

  (*(v9 + 8))(v11, inited);
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static AnalyticsManager.shared.getter();
  v13(v7, v18 + v12, v20);
  AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent.init(sessionID:bundleID:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)();

  return (*(v21 + 8))(v3, v22);
}

uint64_t ObjectCaptureSession.logAnalyticsEventsOnTearDown()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMd, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - v7;
  v8 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent.Status();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(v9 + 104);
  v15(&v27 - v13, *MEMORY[0x277CDB398], v8);
  swift_getKeyPath();
  v36 = v0;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v16 = v8;
  v17 = v9;
  v18 = v31;

  v19 = v0[2];
  if (v19 >= 5)
  {
    v28 = v15;
    v29 = v12;
    if (v19 != 5)
    {
      v27 = v14;
      v36 = v19;
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = type metadata accessor for ObjectCaptureSession.Error(0);
      v22 = v30;
      v23 = swift_dynamicCast();
      v24 = *(*(v21 - 8) + 56);
      v25 = v28;
      if (v23)
      {
        v24(v22, 0, 1, v21);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v14 = v27;
          (*(v17 + 8))(v27, v16);
          outlined destroy of ObjectCaptureSession.Configuration(v22, type metadata accessor for ObjectCaptureSession.Error);
          v25(v14, *MEMORY[0x277CDB3A8], v16);
          goto LABEL_11;
        }

        outlined destroy of ObjectCaptureSession.Configuration(v22, type metadata accessor for ObjectCaptureSession.Error);
      }

      else
      {
        v24(v22, 1, 1, v21);
        outlined destroy of PerspectiveCameraComponent?(v22, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMd, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMR);
      }

      v14 = v27;
      goto LABEL_11;
    }

    (*(v17 + 8))(v14, v16);
    v28(v14, *MEMORY[0x277CDB3A0], v16);
LABEL_11:
    v12 = v29;
  }

  type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  (*(v34 + 16))(v35, *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v18);
  (*(v17 + 16))(v12, v14, v16);
  AnalyticsManager.ObjectCaptureSessionStatusEvent.init(sessionID:status:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:)();

  (*(v32 + 8))(v5, v33);
  return (*(v17 + 8))(v14, v16);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ObjectCaptureSession@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObjectCaptureSession(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t UnsafeSendableInstance.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Atomic();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in nonisolated_PrivateTearDown(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in nonisolated_PrivateTearDown(of:), v6, v5);
}

{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in nonisolated_PrivateTearDown(of:), v6, v5);
}

uint64_t closure #1 in nonisolated_PrivateTearDown(of:)()
{

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "~~~~ ObjectCaptureSession delayed deinit finishing all update streams...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 16) + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of Finishable.finish()();
      swift_unknownObjectRelease();
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "~~~~ done: ObjectCaptureSession delayed deinit finishing all update streams.", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

{

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "~~~~ ObjectCaptureSession delayed deinit cleaning up DataModel...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  DataModel.tearDown()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "~~~~ done: ObjectCaptureSession delayed deinit cleaning up DataModel.", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t ObjectCaptureSession.shouldPlayHaptics.getter()
{
  swift_getKeyPath();
  v3 = v0;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  return v2;
}

uint64_t key path getter for ObjectCaptureSession.shouldPlayHaptics : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  v6 = v3;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a2 = v5;
  return result;
}

void ObjectCaptureSession.shouldPlayHaptics.setter(char a1)
{
  v1 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  if (v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v6 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v6, v4, "Cannot change shouldPlayHaptics since device does not support haptics!", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }
  }
}

void closure #1 in ObjectCaptureSession.shouldPlayHaptics.setter(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldPlayHaptics.didset();
}

void (*ObjectCaptureSession.shouldPlayHaptics.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  *(a1 + 16) = *a1;
  return ObjectCaptureSession.shouldPlayHaptics.modify;
}

uint64_t ObjectCaptureSession.isAutoCaptureEnabled.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
}

uint64_t key path getter for ObjectCaptureSession.isAutoCaptureEnabled : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(*(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
  return result;
}

uint64_t key path setter for ObjectCaptureSession.isAutoCaptureEnabled : ObjectCaptureSession(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ObjectCaptureSession.isAutoCaptureEnabled.setter(char a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*ObjectCaptureSession.isAutoCaptureEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession, &protocol conformance descriptor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v4 + 32) = *(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
  return ObjectCaptureSession.isAutoCaptureEnabled.modify;
}

void ObjectCaptureSession.isAutoCaptureEnabled.modify(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DataModel.state : DataModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);
}

uint64_t key path setter for DataModel.state : DataModel(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for DataModel.State(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  outlined init with copy of ObjectCaptureSession.Error(a1, &v10 - v7, type metadata accessor for DataModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of ObjectCaptureSession.Error(v8, v6, type metadata accessor for DataModel.State);

  static Published.subscript.setter();
  return outlined destroy of ObjectCaptureSession.Configuration(v8, type metadata accessor for DataModel.State);
}

uint64_t key path getter for DataModel.shouldPlayHaptics : DataModel@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

void key path setter for DataModel.shouldPlayHaptics : DataModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldPlayHaptics.didset();
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x23EEAFE40](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
          while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return specialized _NativeSet.isEqual(to:)(v8, v7);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17KeyframeAnimationC0H0VyAC14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17KeyframeAnimationC0H0VyAC14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17CameraPathManagerC10PoseSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17CameraPathManagerC10PoseSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 96 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21FreeformCloudRendererC19AnchorMetalResource33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21FreeformCloudRendererC19AnchorMetalResource33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo25geom_interpolating_key_3faGMd, &_ss23_ContiguousArrayStorageCySo25geom_interpolating_key_3faGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13TubeGeneratorC10CurvePointVySo16CameraPathVertexV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13TubeGeneratorC10CurvePointVySo16CameraPathVertexV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI20ContinuousShotCircle33_D8FE582B883C2D49039B52B4C90B8CC0LLC0I4DataVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI20ContinuousShotCircle33_D8FE582B883C2D49039B52B4C90B8CC0LLC0I4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMd, &_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int specialized Set._Variant.remove(_:)@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a1);
  result = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = specialized _NativeSet._delete(at:)(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 9;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x23EEAFE40](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static ObjectCaptureSession.CaptureState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 != 3)
      {
        goto LABEL_21;
      }
    }

    else if (v2 == 4)
    {
      if (v3 != 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      if (v3 != 5)
      {
        goto LABEL_21;
      }
    }

LABEL_19:
    v5 = 1;
    goto LABEL_22;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_19;
    }

LABEL_21:
    outlined copy of ObjectCaptureSession.CaptureState(*a1);
    v5 = 0;
    goto LABEL_22;
  }

LABEL_16:
  if (v3 < 6)
  {
    goto LABEL_21;
  }

  v4 = v2;
  v5 = 1;
LABEL_22:
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v2);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  return v5;
}

uint64_t specialized static ObjectCaptureSession.stopResourceLogging()(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, a1, v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a3, v14);
}

uint64_t type metadata accessor for ObjectCaptureSession.Error(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id outlined copy of ObjectCaptureSession.CaptureState(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ObjectCaptureSession.Error(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized ObjectCaptureSession.logConfiguration(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - v9;
  v10 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "Configuration {", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  outlined init with copy of ObjectCaptureSession.Error(a1, v12, type metadata accessor for ObjectCaptureSession.Configuration);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    v20 = v12[*(v10 + 20)];
    outlined destroy of ObjectCaptureSession.Configuration(v12, type metadata accessor for ObjectCaptureSession.Configuration);
    *(v19 + 4) = v20;
    _os_log_impl(&dword_23B824000, v17, v18, "\tisOverCaptureEnabled: %{BOOL,public}d", v19, 8u);
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }

  else
  {
    outlined destroy of ObjectCaptureSession.Configuration(v12, type metadata accessor for ObjectCaptureSession.Configuration);
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23B824000, v21, v22, "\tcheckpointDirectory: nil", v23, 2u);
      MEMORY[0x23EEB0B70](v23, -1, -1);
    }
  }

  else
  {
    v24 = v41;
    (*(v6 + 32))(v41, v4, v5);
    v25 = v40;
    (*(v6 + 16))(v40, v24, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v28 = 141558274;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2080;
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v6 + 8);
      v32(v25, v5);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v42);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_23B824000, v26, v27, "\tcheckpointDirectory: %{mask.hash}s", v28, 0x16u);
      v34 = v39;
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x23EEB0B70](v34, -1, -1);
      MEMORY[0x23EEB0B70](v28, -1, -1);

      v32(v41, v5);
    }

    else
    {

      v35 = *(v6 + 8);
      v35(v25, v5);
      v35(v24, v5);
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_23B824000, v36, v37, "} \\ Configuration", v38, 2u);
    MEMORY[0x23EEB0B70](v38, -1, -1);
  }
}

uint64_t outlined destroy of ObjectCaptureSession.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in nonisolated_PrivateTearDown(of:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in nonisolated_PrivateTearDown(of:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in nonisolated_PrivateTearDown(of:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void outlined consume of ObjectCaptureSession.CaptureState(id a1)
{
  if (a1 >= 6)
  {
  }
}

void partial apply for closure #1 in ObjectCaptureSession.isAutoCaptureEnabled.setter()
{
  partial apply for closure #1 in ObjectCaptureSession.isAutoCaptureEnabled.setter();
}

{
  *(*(*(v0 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) = *(v0 + 24);
  DataModel.isAutoCaptureEnabled.didset();
}

unint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason);
  }

  return result;
}

uint64_t type metadata completion function for ObjectCaptureSession(uint64_t a1)
{
  result = type metadata accessor for ObjectCaptureSession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ObjectCaptureSession.state.getter()
{
  return (*(*v0 + 264))();
}

{
  return MEMORY[0x2821527C0]();
}

uint64_t dispatch thunk of ObjectCaptureSession.resume()()
{
  return (*(*v0 + 696))();
}

{
  return MEMORY[0x2821527E0]();
}

uint64_t dispatch thunk of ObjectCaptureSession.finish()()
{
  return (*(*v0 + 752))();
}

{
  return MEMORY[0x2821527D8]();
}

uint64_t dispatch thunk of ObjectCaptureSession.cancel()()
{
  return (*(*v0 + 760))();
}

{
  return MEMORY[0x2821527D0]();
}

uint64_t type metadata completion function for ObjectCaptureSession.Updates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a4(0, *(a3 + 16));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7 = (a5)(0, *(a4 + 16), a3);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for ObjectCaptureSession.Error(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for (requiredBytes: Int64)()
{
  result = lazy cache variable for type metadata for (requiredBytes: Int64);
  if (!lazy cache variable for type metadata for (requiredBytes: Int64))
  {
    result = MEMORY[0x277D84A28];
    atomic_store(MEMORY[0x277D84A28], &lazy cache variable for type metadata for (requiredBytes: Int64));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.CaptureState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.CaptureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ObjectCaptureSession.CaptureState(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Feedback(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Feedback(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Tracking(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Tracking(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ObjectCaptureSession.Tracking(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ObjectCaptureSession.Tracking(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Tracking.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Tracking.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for ObjectCaptureSession.Configuration(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t type metadata completion function for UnsafeSendableInstance(uint64_t a1)
{
  result = type metadata accessor for Atomic();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for UnsafeSendable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeSendable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for UnsafeSendable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t outlined init with take of DataModel.Error(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ObjectCaptureSession.fromOCSError(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Error();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (!MEMORY[0x277D00440] || v7 != *MEMORY[0x277D00440])
  {
    if (MEMORY[0x277D00430] && v7 == *MEMORY[0x277D00430] || MEMORY[0x277D00448] && v7 == *MEMORY[0x277D00448] || MEMORY[0x277D00450] && v7 == *MEMORY[0x277D00450] || MEMORY[0x277D00460] && v7 == *MEMORY[0x277D00460])
    {
      type metadata accessor for ObjectCaptureSession.Error(0);
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error, &protocol conformance descriptor for ObjectCaptureSession.Error);
      v8 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      return v8;
    }

    if ((!MEMORY[0x277D00438] || v7 != *MEMORY[0x277D00438]) && (!MEMORY[0x277D00458] || v7 != *MEMORY[0x277D00458]))
    {
      lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, MEMORY[0x2822175E8], MEMORY[0x2822175F8]);
      v8 = swift_allocError();
      v6(v10, a1, v2);
      (*(v3 + 8))(v5, v2);
      return v8;
    }
  }

  lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, MEMORY[0x2822175E8], MEMORY[0x2822175F8]);
  v8 = swift_allocError();
  v6(v9, a1, v2);
  return v8;
}

uint64_t specialized static ObjectCaptureSession.toOCSFeedbackSet(ocsFeedback:)(uint64_t a1)
{
  v26 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v25[-1] - v5;
  v7 = (*(v3 + 16))(&v25[-1] - v5, a1, v2);
  MEMORY[0x28223BE20](v7);
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217638], MEMORY[0x282217650]);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v10 = v9(&v25[-1] - v5, v2);
  if (v8)
  {
    v9(&v25[-1] - v5, v2);
    v11 = 2;
LABEL_13:
    specialized Set._Variant.insert(_:)(v25, v11);
    return v26;
  }

  v24 = a1;
  MEMORY[0x28223BE20](v10);
  static ObjectCaptureSession.Frame.Feedback.tooDark.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = v9(&v25[-1] - v5, v2);
  if (v12)
  {
    v9(&v25[-1] - v5, v2);
    v11 = 4;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v13);
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.lowLight.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v9(&v25[-1] - v14, v2);
  if (v15)
  {
    v9(v6, v2);
    v11 = 3;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v16);
  static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = v9(&v25[-1] - v14, v2);
  if (v17)
  {
    v9(v6, v2);
    v11 = 1;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v18);
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = v9(&v25[-1] - v19, v2);
  if (v20)
  {
    v9(v6, v2);
    v11 = 0;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v21);
  static ObjectCaptureSession.Frame.Feedback.outOfFieldOfView.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9(&v25[-1] - v19, v2);
  if (v22)
  {
    v9(v6, v2);
    v11 = 5;
    goto LABEL_13;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x23EEAF590](0xD000000000000026, 0x800000023B924AF0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in ObjectCaptureSession.feedback.setter()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void partial apply for closure #1 in ObjectCaptureSession.state.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  outlined copy of ObjectCaptureSession.CaptureState(v1);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
}

uint64_t partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #1 in static ObjectCaptureSession.stopResourceLogging()();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = ObjectCaptureSession.Updates.Iterator.next();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of ObjectCaptureSession.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static ObjectCaptureSession.startResourceLogging()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in static ObjectCaptureSession.startResourceLogging()();
}

uint64_t RealityViewCameraContent.project<A>(point:to:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v5 = type metadata accessor for CoordinateSpace();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  result = ARView.project(_:)();
  if ((v11 & 1) == 0)
  {
    v12 = *&result;
    dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
    v13 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v9, v8, v12);
    (*(v6 + 8))(v8, v5);
    return *&v13;
  }

  return result;
}

double specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for GeometryProxy();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Scene.AnchorCollection();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CoordinateSpace();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = v10;
    v34 = v4;
    (*(v18 + 104))(v20, *MEMORY[0x277CDF958], v17);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970], MEMORY[0x277CDF978]);
    v21 = a1;
    v32[1] = a2;
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v18 + 8))(v20, v17);
    if (v22)
    {
LABEL_5:

      return a3;
    }

    dispatch thunk of ARView.scene.getter();
    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v38[4] == v38[0])
    {
      (*(v14 + 8))(v16, v13);
      goto LABEL_5;
    }

    v24 = dispatch thunk of Collection.subscript.read();

    v24(v38, 0);
    (*(v14 + 8))(v16, v13);

    v26 = v33;
    specialized RealityCoordinateSpaceProjecting.getProxy(from:)(v25, v33);

    v28 = v36;
    v27 = v37;
    if ((*(v36 + 48))(v26, 1, v37) == 1)
    {

      outlined destroy of PerspectiveCameraComponent?(v26, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
    }

    else
    {
      v29 = v35;
      (*(v28 + 32))(v35, v26, v27);
      GeometryProxy.frame(in:)();
      v31 = v30;

      (*(v28 + 8))(v29, v27);
      return a3 - v31;
    }
  }

  return a3;
}

double RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(void *a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for GeometryProxy();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Scene.AnchorCollection();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoordinateSpace();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v8;
    v32 = v9;
    (*(v16 + 104))(v18, *MEMORY[0x277CDF958], v15);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970], MEMORY[0x277CDF978]);
    v19 = a1;
    v30 = a2;
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v18, v15);
    if (v20)
    {
    }

    else
    {
      dispatch thunk of ARView.scene.getter();
      dispatch thunk of Scene.anchors.getter();

      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v35[4] == v35[0])
      {

        (*(v12 + 8))(v14, v11);
      }

      else
      {
        v21 = dispatch thunk of Collection.subscript.read();

        v21(v35, 0);
        (*(v12 + 8))(v14, v11);

        v23 = v31;
        RealityCoordinateSpaceProjecting.getProxy(from:)(v22, v31);

        v24 = v34;
        v25 = v32;
        if ((*(v34 + 48))(v23, 1, v32) == 1)
        {

          outlined destroy of PerspectiveCameraComponent?(v23, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
        }

        else
        {
          v26 = v33;
          (*(v24 + 32))(v33, v23, v25);
          GeometryProxy.frame(in:)();
          v28 = v27;

          (*(v24 + 8))(v26, v25);
          return a3 - v28;
        }
      }
    }
  }

  return a3;
}

uint64_t RealityCoordinateSpaceProjecting.getProxy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RealityViewCameraComponent(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v18 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  dispatch thunk of Entity.components.getter();
  v20 = lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent, &protocol conformance descriptor for RealityViewCameraComponent);
  Entity.ComponentSet.subscript.getter();

  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = *(v11 + 48);
  if (v14(v5, 1, v10) == 1)
  {
    while (1)
    {
      outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
      v22 = a1;

      swift_getAtKeyPath();

      a1 = v23;

      if (!a1)
      {
        break;
      }

      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.subscript.getter();

      v13(v9, v6);
      if (v14(v5, 1, v10) != 1)
      {
        goto LABEL_4;
      }
    }

    v17 = type metadata accessor for GeometryProxy();
    return (*(*(v17 - 8) + 56))(v19, 1, 1, v17);
  }

  else
  {
LABEL_4:

    v15 = v18;
    outlined init with take of RealityViewCameraComponent(v5, v18);
    return outlined init with take of GeometryProxy?(v15, v19);
  }
}

unint64_t RealityViewCameraContent.unproject<A, B>(_:from:to:ontoPlane:)(double a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a10;
  v43 = a12;
  v38[1] = a9;
  v38[2] = a11;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v41 = a8;
  v40 = type metadata accessor for __RealityCoordinateSpaceContext();
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v17 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CoordinateSpace();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v12;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v24, v23, a1);
  (*(v21 + 8))(v23, v20);
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  MEMORY[0x23EEAD680](v26);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v14 + 8))(v16, v40);
  v27 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v17 + 8))(v19, v39);
  if (v27)
  {
    v49 = v27;
    if (active)
    {
      v48 = active;
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);

      dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v31 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v33)
    {
      v30 = v31;
      goto LABEL_8;
    }

    v35.n128_u64[0] = v31;
    v35.n128_u64[1] = v32;
    v47 = v35;
    type metadata accessor for Entity();
    HasTransform.convert(position:from:)();
    v47 = v36;

    return v47.n128_u64[0];
  }

  else
  {
    v28 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v29)
    {
      v30 = v28;
LABEL_8:

      return v30;
    }

    v37 = v28;

    return v37;
  }
}

void *RealityViewCameraContent.ray<A, B>(through:in:to:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a5@<X5>, __n128 *a6@<X8>, double a7@<D0>)
{
  v35 = a3;
  v36 = a5;
  v34 = a1;
  v39 = a6;
  v9 = type metadata accessor for __RealityCoordinateSpaceContext();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoordinateSpace();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v7;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v19, v18, a7);
  (*(v16 + 8))(v18, v15);
  result = ARView.ray(through:)();
  v21 = v40;
  v22 = v41;
  v23 = v42;
  if ((v42 & 1) == 0)
  {
    v37 = v41;
    v38 = v40;
    dispatch thunk of ARView.scene.getter();
    active = dispatch thunk of Scene.internalActiveCamera.getter();

    MEMORY[0x23EEAD680](active);
    dispatch thunk of RealityCoordinateSpace._resolve(in:)();
    (*(v32 + 8))(v11, v33);
    v25 = __ResolvedRealityCoordinateSpace.entity.getter();
    result = (*(v30 + 8))(v14, v31);
    if (v25)
    {
      type metadata accessor for Entity();
      HasTransform.convert(direction:from:)();
      v37 = v26;
      HasTransform.convert(position:from:)();
      v38 = v27;

      v22 = v37;
      v21 = v38;
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v22 = v37;
      v21 = v38;
    }
  }

  v28 = v39;
  *v39 = v21;
  v28[1] = v22;
  v28[2].n128_u8[0] = v23;
  return result;
}

uint64_t RealityViewCameraContent.entity<A>(at:in:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double, double))
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  v13 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v12, v11, a1);
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  return a5(v13, v15);
}

uint64_t RealityViewCameraContent.hitTest<A>(point:in:query:mask:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v6;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v12, v11, a1);
  (*(v9 + 8))(v11, v8);
  return ARView.hitTest(_:query:mask:)();
}

double protocol witness for RealityCoordinateSpaceProjecting.ray<A, B>(through:in:to:) in conformance RealityViewCameraContent@<D0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a5@<X5>, __n128 *a6@<X8>, double a7@<D0>)
{
  RealityViewCameraContent.ray<A, B>(through:in:to:)(a1, a3, a5, v10, a7);
  result = v10[0].n128_f64[0];
  v9 = v10[1];
  *a6 = v10[0];
  a6[1] = v9;
  a6[2].n128_u8[0] = v11;
  return result;
}

uint64_t EntityTargetValue.project<A>(point:to:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v7 = type metadata accessor for CoordinateSpace();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + *(a3 + 32));
  if (!v11)
  {
    return 0;
  }

  result = ARView.project(_:)();
  if ((v13 & 1) == 0)
  {
    v14 = *&result;
    dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
    v15 = RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v11, v10, v14);
    (*(v8 + 8))(v10, v7);
    return *&v15;
  }

  return result;
}

uint64_t EntityTargetValue.unproject<A, B>(_:from:to:ontoPlane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, double a8, double a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13)
{
  v45 = a5;
  *&v46 = a7;
  v39 = a4;
  v40 = a6;
  v37[2] = a12;
  v37[3] = a13;
  v37[1] = a11;
  v37[0] = a10;
  v43 = a2;
  v38 = a1;
  v44 = type metadata accessor for __RealityCoordinateSpaceContext();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v18 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CoordinateSpace();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v13 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v25, v24, a8);
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    dispatch thunk of ARView.scene.getter();
    active = dispatch thunk of Scene.internalActiveCamera.getter();
  }

  else
  {
    active = 0;
  }

  MEMORY[0x23EEAD680](v27);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v41 + 8))(v17, v44);
  v28 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v18 + 8))(v20, v42);
  if (!v28)
  {
    if (v25)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v48 = v28;
  if (!active)
  {
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

  v47 = active;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);

  dispatch thunk of static Equatable.== infix(_:_:)();

  if (!v25)
  {
    goto LABEL_14;
  }

LABEL_9:
  v29 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
  if (v31)
  {
    v32 = v29;

    return v32;
  }

  else if (v28)
  {
    *&v34 = v29;
    *(&v34 + 1) = v30;
    v46 = v34;
    type metadata accessor for Entity();
    HasTransform.convert(position:from:)();
    v46 = v35;

    return v46;
  }

  else
  {
    v36 = v29;

    return v36;
  }
}

void *EntityTargetValue.ray<A, B>(through:in:to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>, double a8@<D0>)
{
  v38 = a6;
  v39.n128_u64[0] = a5;
  v36 = a1;
  v37 = a4;
  v40 = a7;
  v11 = type metadata accessor for __RealityCoordinateSpaceContext();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CoordinateSpace();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v8 + *(a2 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v21, v20, a8);
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    result = ARView.ray(through:)();
    v23 = v41;
    v24 = v42;
    v25 = v43;
    if ((v43 & 1) == 0)
    {
      v31 = v42;
      v39 = v41;
      dispatch thunk of ARView.scene.getter();
      active = dispatch thunk of Scene.internalActiveCamera.getter();

      MEMORY[0x23EEAD680](active);
      dispatch thunk of RealityCoordinateSpace._resolve(in:)();
      (*(v34 + 8))(v13, v35);
      v27 = __ResolvedRealityCoordinateSpace.entity.getter();
      result = (*(v32 + 8))(v16, v33);
      if (v27)
      {
        type metadata accessor for Entity();
        HasTransform.convert(direction:from:)();
        v31 = v28;
        HasTransform.convert(position:from:)();
        v39 = v29;

        v24 = v31;
        v23 = v39;
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v23 = v39;
        v24 = v31;
      }
    }
  }

  else
  {
    v23 = 0uLL;
    v25 = 1;
    v24 = 0uLL;
  }

  v30 = v40;
  *v40 = v23;
  v30[1] = v24;
  v30[2].n128_u8[0] = v25;
  return result;
}

uint64_t EntityTargetValue.entity<A>(at:in:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v12, v11, a1);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return ARView.entity(at:)();
  }

  else
  {
    return 0;
  }
}

uint64_t EntityTargetValue.entities<A>(at:in:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v12, v11, a1);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return ARView.entities(at:)();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t EntityTargetValue.hitTest<A>(point:in:query:mask:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = a4;
  v10 = type metadata accessor for CoordinateSpace();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v7 + *(a5 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v14, v13, a1);
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    return ARView.hitTest(_:query:mask:)();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

double protocol witness for RealityCoordinateSpaceProjecting.ray<A, B>(through:in:to:) in conformance EntityTargetValue<A>@<D0>(uint64_t a1@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>, double a8@<D0>)
{
  EntityTargetValue.ray<A, B>(through:in:to:)(a1, a6, a3, a4, a5, v11, a8);
  result = v11[0].n128_f64[0];
  v10 = v11[1];
  *a7 = v11[0];
  a7[1] = v10;
  a7[2].n128_u8[0] = v12;
  return result;
}

uint64_t EntityTargetValue.unproject<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LocalCoordinateSpace();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v13 = v16;
  static CoordinateSpaceProtocol<>.local.getter();
  v14 = EntityTargetValue.unproject<A, B>(_:from:to:)(v13, v12, a2, a3, v9, a4, MEMORY[0x277CE0380], a5);
  (*(v10 + 8))(v12, v9);
  return v14;
}

uint64_t EntityTargetValue.unproject<A, B>(_:from:to:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a6;
  *&v43 = a8;
  v41 = a3;
  v11 = type metadata accessor for __RealityCoordinateSpaceContext();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CoordinateSpace();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + *(a4 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v20, v19, a1);
  (*(v17 + 8))(v19, v16);
  if (!v20)
  {
    return 0;
  }

  v21 = v8 + *(a4 + 36);
  if (*(v21 + 64))
  {
    return 0;
  }

  v35[3] = *v21;
  v35[2] = *(v21 + 16);
  v35[1] = *(v21 + 32);
  v35[0] = *(v21 + 48);
  v22 = v20;
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  if (!active)
  {

    return 0;
  }

  v24 = swift_retain_n();
  v25 = v36;
  MEMORY[0x23EEAD680](v24);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v39 + 8))(v25, v40);
  v26 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v37 + 8))(v15, v38);
  if (v26)
  {
    v44 = active;
    v45 = v26;
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);

    dispatch thunk of static Equatable.== infix(_:_:)();

    v27 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v28)
    {
      v29 = v27;
LABEL_11:

      return v29;
    }

    HasTransform.convert(position:from:)();
    v43 = v33;

    return v43;
  }

  else
  {

    v31 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v32)
    {
      v29 = v31;
      goto LABEL_11;
    }

    v34 = v31;

    return v34;
  }
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double ObjectCapturePointCloudView.init(session:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  ObjectCapturePointCloudView.init(session:segment:)(a1, *(*(v4 + v5) + 16) - 1, &v8);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

void ObjectCapturePointCloudView.init(session:segment:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  State.init(wrappedValue:)();
  v6 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v8 = *(*(v6 + v7) + 16) - 1;
  if (v8 >= a2)
  {
    v8 = a2;
  }

  v9 = v8 & ~(v8 >> 63);
  if (v9 != a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349312;
      *(v13 + 4) = a2;
      *(v13 + 12) = 2050;
      *(v13 + 14) = v9;
      _os_log_impl(&dword_23B824000, v11, v12, "Invalid segment ID %{public}ld provided.  Replacing with: %{public}ld...", v13, 0x16u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }

  *a3 = a1;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v9;
}

uint64_t ObjectCapturePointCloudView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMR);
  closure #1 in ObjectCapturePointCloudView.body.getter(v3, v4, v6, v5, (a1 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = partial apply for closure #2 in ObjectCapturePointCloudView.body.getter;
  v10[3] = v9;
}

void *closure #1 in ObjectCapturePointCloudView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v53 = type metadata accessor for FreeformFullView(0);
  MEMORY[0x28223BE20](v53);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0V_GMR);
  MEMORY[0x28223BE20](v55);
  v11 = &v44[-v10];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0V_GMR);
  MEMORY[0x28223BE20](v51);
  v13 = &v44[-v12];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
  MEMORY[0x28223BE20](v54);
  v52 = &v44[-v14];
  v15 = type metadata accessor for Color.RGBColorSpace();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v44[-v21];
  v23 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v24 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (*(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    v50 = v20;
    if (v24 == 1)
    {
      v59 = a2 & 1;
      v60 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      v46 = v57;
      v47 = v56;
      v45 = v58;
      v25 = type metadata accessor for CoveragePointCloudFullView(0);
      v26 = v25[5];
      *(v22 + v26) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
      v48 = a5;

      *v22 = ObservedObject.init(wrappedValue:)();
      v22[1] = v27;
      v28 = v22 + v25[6];
      v29 = v46;
      *v28 = v47;
      *(v28 + 1) = v29;
      v28[16] = v45;
      *(v22 + v25[8]) = 0;
      v30 = v49;
      *(v22 + v25[9]) = v49;
      v31 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
      *(v22 + v25[7]) = v31;
      *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMd, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMR) + 52)) = v30;
      (*(v16 + 104))(v18, *MEMORY[0x277CE0EE0], v15);
      v32 = v31;
      v33 = Color.init(_:white:opacity:)();
      v34 = static Edge.Set.all.getter();
      v35 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMR) + 36);
      *v35 = v33;
      v35[8] = v34;
      v36 = static SafeAreaRegions.all.getter();
      v37 = static Edge.Set.all.getter();
      v38 = v22 + *(v50 + 36);
      *v38 = v36;
      v38[8] = v37;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v22, v13, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView, &protocol conformance descriptor for FreeformFullView);
      v39 = v52;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PerspectiveCameraComponent?(v39, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      return outlined destroy of PerspectiveCameraComponent?(v22, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    }

    else
    {
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

      *v9 = ObservedObject.init(wrappedValue:)();
      v9[1] = v41;
      v42 = *(v53 + 20);
      *(v9 + v42) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of FreeformFullView(v9, v13);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView, &protocol conformance descriptor for FreeformFullView);
      v43 = v52;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v43, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PerspectiveCameraComponent?(v43, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      return outlined destroy of FreeformFullView(v9);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #2 in ObjectCapturePointCloudView.body.getter(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;

  CameraFrustumRendererForShots.showShotLocations.didset(v2);
}

uint64_t protocol witness for View.body.getter in conformance ObjectCapturePointCloudView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMR);
  closure #1 in ObjectCapturePointCloudView.body.getter(v3, v4, v6, v5, (a1 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = closure #2 in ObjectCapturePointCloudView.body.getterpartial apply;
  v10[3] = v9;
}

uint64_t ObjectCapturePointCloudView.showShotLocations(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(*(*v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  v9 = *(v8 + 24);
  *(v8 + 24) = a1;

  CameraFrustumRendererForShots.showShotLocations.didset(v9);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
}

uint64_t getEnumTagSinglePayload for ObjectCapturePointCloudView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectCapturePointCloudView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView, &protocol conformance descriptor for FreeformFullView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type IDView<CoveragePointCloudFullView, Int> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMd, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMR, MEMORY[0x277CE1148]);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t outlined init with copy of FreeformFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformFullView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FreeformFullView(uint64_t a1)
{
  v2 = type metadata accessor for FreeformFullView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FreeformMeshManager.init(config:)()
{
  v1 = v0;
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 72) = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23B824000, v4, v5, "Initialized MeshManager with configuration: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EEB0B70](v7, -1, -1);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  return v1;
}

Swift::Void __swiftcall FreeformMeshManager.add(meshAnchors:)(Swift::OpaquePointer meshAnchors)
{
  v3 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v80 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v84 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v64 - v8;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v69 = *(isUniquelyReferenced_nonNull_native - 8);
  v10 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v85 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v81 = &v64 - v15;
  v89 = v1;
  v65 = *(v1 + 72);
  os_unfair_lock_lock(v65 + 4);
  if (one-time initialization token for logger != -1)
  {
LABEL_28:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v67 = v14;
  if (v19)
  {
    v20 = isUniquelyReferenced_nonNull_native;
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = *(meshAnchors._rawValue + 2);

    _os_log_impl(&dword_23B824000, v17, v18, "Received mesh update with %{public}ld anchors", v21, 0xCu);
    v22 = v21;
    isUniquelyReferenced_nonNull_native = v20;
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  else
  {
  }

  v23 = *(meshAnchors._rawValue + 2);
  v24 = v81;
  if (!v23)
  {
LABEL_25:
    os_unfair_lock_unlock(v65 + 4);
    return;
  }

  v25 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
  v26 = *(v25 - 8);
  meshAnchors._rawValue = meshAnchors._rawValue + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v27 = swift_beginAccess();
  v28 = *(v26 + 16);
  v26 += 16;
  v86 = v28;
  v29 = (v69 + 8);
  v78 = (v80 + 56);
  v66 = v80 + 48;
  v75 = (v26 - 8);
  v72 = (v26 + 40);
  v68 = v69 + 16;
  v30 = *(v26 + 48);
  v74 = *(v26 + 56);
  v87 = v26;
  v77 = v30;
  v73 = v3;
  v76 = v25;
  v70 = (v69 + 8);
  while (1)
  {
    MEMORY[0x28223BE20](v27);
    v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86(v32, meshAnchors._rawValue, v25);
    ObjectCaptureSession.Mesh.Anchor.identifier.getter();
    v33 = *(v89 + 16);
    v34 = *(v33 + 16);
    v88 = &v64;
    if (v34)
    {

      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
      if (v36)
      {
        v37 = v80;
        v38 = isUniquelyReferenced_nonNull_native;
        v39 = v79;
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v33 + 56) + *(v80 + 72) * v35, v79);
        rawValue = *v29;
        rawValue(v24, v38);

        (*(v37 + 56))(v39, 0, 1, v3);
        outlined destroy of PerspectiveCameraComponent?(v39, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
        v40 = v67;
        ObjectCaptureSession.Mesh.Anchor.identifier.getter();
        v82 = FreeformMeshManager.meshAnchors.modify(v91);
        v41 = specialized Dictionary.subscript.modify(v90);
        v43 = v42;
        if ((*(v37 + 48))(v42, 1, v3))
        {
          (v41)(v90, 0);
          rawValue(v40, v38);
          (v82)(v91, 0);
          isUniquelyReferenced_nonNull_native = v38;
          v24 = v81;
          v25 = v76;
        }

        else
        {
          v62 = *(v73 + 24);
          outlined destroy of PerspectiveCameraComponent?(v43 + v62, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v25 = v76;
          v86((v43 + v62), v32, v76);
          v63 = v43 + v62;
          v3 = v73;
          (*v72)(v63, 0, 1, v25);
          (v41)(v90, 0);
          rawValue(v40, v38);
          (v82)(v91, 0);
          isUniquelyReferenced_nonNull_native = v38;
          v24 = v81;
        }

        goto LABEL_9;
      }
    }

    rawValue = meshAnchors._rawValue;
    meshAnchors._rawValue = v23;
    v14 = isUniquelyReferenced_nonNull_native;
    v82 = *v29;
    (v82)(v24, isUniquelyReferenced_nonNull_native);
    v44 = v79;
    (*v78)(v79, 1, 1, v3);
    outlined destroy of PerspectiveCameraComponent?(v44, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v45 = v85;
    ObjectCaptureSession.Mesh.Anchor.identifier.getter();
    v46 = *v72;
    v47 = v3;
    v48 = v25;
    v49 = v71;
    (*v72)(v71, 1, 1, v48);
    v46(v49 + v47[5], 1, 1, v48);
    v50 = v47[6];
    v86((v49 + v50), v32, v48);
    v46(v49 + v50, 0, 1, v48);
    *(v49 + v47[7]) = 0;
    v3 = v89;
    swift_beginAccess();
    outlined init with take of FreeformMeshManager.MeshAnchor(v49, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *(v3 + 16);
    v51 = v90[0];
    *(v3 + 16) = 0x8000000000000000;
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v3 = v52;
    if (v51[3] >= v56)
    {
      v24 = v81;
      v23 = meshAnchors._rawValue;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v51 = v90[0];
      }

      goto LABEL_21;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
    v51 = v90[0];
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
    v24 = v81;
    if ((v3 & 1) != (v58 & 1))
    {
      break;
    }

    v53 = v57;
    v23 = meshAnchors._rawValue;
LABEL_21:
    isUniquelyReferenced_nonNull_native = v14;
    meshAnchors._rawValue = rawValue;
    v29 = v70;
    if (v3)
    {
      outlined assign with take of FreeformMeshManager.MeshAnchor(v84, v51[7] + *(v80 + 72) * v53);
      (v82)(v85, v14);
    }

    else
    {
      v51[(v53 >> 6) + 8] |= 1 << v53;
      v14 = v85;
      (*(v69 + 16))(v51[6] + *(v69 + 72) * v53, v85, isUniquelyReferenced_nonNull_native);
      outlined init with take of FreeformMeshManager.MeshAnchor(v84, v51[7] + *(v80 + 72) * v53);
      (v82)(v14, isUniquelyReferenced_nonNull_native);
      v59 = v51[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_27;
      }

      v51[2] = v61;
    }

    *(v89 + 16) = v51;

    swift_endAccess();
    v3 = v73;
    v25 = v76;
LABEL_9:
    v27 = (*v75)(v32, v25);
    meshAnchors._rawValue = meshAnchors._rawValue + v74;
    if (!--v23)
    {
      goto LABEL_25;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void FreeformMeshManager.advanceWithRemoval()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v313 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v341[0] = &v313 - v10;
  MEMORY[0x28223BE20](v9);
  v347 = &v313 - v11;
  v369 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v362 = *(v369 - 1);
  v12 = MEMORY[0x28223BE20](v369);
  v14 = (&v313 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v348 = &v313 - v15;
  v16 = type metadata accessor for UUID();
  v354 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v336 = &v313 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v332 = &v313 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v313 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v325 = &v313 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v313 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v313 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v318 = &v313 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v317 = &v313 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v313.n128_u64 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v321 = &v313 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v320 = &v313 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v319 = &v313 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v370 = &v313 - v46;
  MEMORY[0x28223BE20](v45);
  v352 = &v313 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v51 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v337 = &v313 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v345 = (&v313 - v55);
  MEMORY[0x28223BE20](v54);
  v344.i64[0] = &v313 - v56;
  if (one-time initialization token for logger == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v322 = v38;
    v323 = v31;
    v324 = v28;
    v331 = v23;
    v333 = v8;
    v338 = v51;
    v339 = v5;
    v57 = type metadata accessor for Logger();
    v341[1] = __swift_project_value_buffer(v57, logger);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_23B824000, v58, v59, "Advance is updating mesh anchors...", v60, 2u);
      MEMORY[0x23EEB0B70](v60, -1, -1);
    }

    swift_beginAccess();
    v61 = *(v1 + 16);
    v51 = (v61 + 64);
    v62 = 1 << *(v61 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v61 + 64);
    v8 = ((v62 + 63) >> 6);
    v350 = (v354 + 16);
    v365 = (v354 + 32);
    v363 = (v362 + 56);
    v356 = v362 + 48;
    v364 = (v354 + 8);
    v340 = v61;

    v330 = 0;
    v355 = 0;
    v353 = 0;
    v38 = 0;
    v23 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd;
    v28 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR;
    *&v65 = 136446210;
    v335 = v65;
    v351 = v1;
    v1 = v64;
    v366 = v16;
    v367.i64[0] = v14;
    v31 = v345;
    v343 = v51;
    v342 = v8;
    while (1)
    {
      if (!v1)
      {
        if (v8 <= (v38 + 1))
        {
          v68 = (v38 + 1);
        }

        else
        {
          v68 = v8;
        }

        v5 = (v68 - 1);
        while (1)
        {
          v67 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v67 >= v8)
          {
            v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
            (*(*(v122 - 8) + 56))(v31, 1, 1, v122);
            v361 = 0;
            v38 = v5;
            goto LABEL_21;
          }

          v1 = *&v51[8 * v67];
          ++v38;
          if (v1)
          {
            v38 = v67;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_127;
      }

      v67 = v38;
LABEL_20:
      v361 = ((v1 - 1) & v1);
      v69 = __clz(__rbit64(v1)) | (v67 << 6);
      v70 = v340;
      v71 = v354;
      v72 = v352;
      (*(v354 + 16))(v352, *(v340 + 48) + *(v354 + 72) * v69, v16);
      v8 = v348;
      outlined init with copy of FreeformMeshManager.MeshAnchor(*(v70 + 56) + *(v362 + 72) * v69, v348);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v74 = *(v73 + 48);
      (*(v71 + 32))(v31, v72, v16);
      outlined init with take of FreeformMeshManager.MeshAnchor(v8, v31 + v74);
      (*(*(v73 - 8) + 56))(v31, 0, 1, v73);
LABEL_21:
      v75 = v344.i64[0];
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v31, v344.i64[0]);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v76 = *(v23 - 1);
      v1 = v76 + 48;
      v28 = *(v76 + 48);
      if ((v28)(v75, 1, v23) == 1)
      {
        break;
      }

      v360 = v38;
      v77 = *(v23 + 12);
      (*v365)(v370, v75, v16);
      outlined init with take of FreeformMeshManager.MeshAnchor(v75 + v77, v367.i64[0]);
      v78 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
      v359.n128_u64[0] = &v313;
      v371 = *(v78 - 8);
      v23 = *(v371 + 64);
      MEMORY[0x28223BE20](v78);
      v79 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
      v80 = v369[6];
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v82 = *(*(v81 - 8) + 64);
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v81 - 8);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v367.i64[0] + v80, &v313 - v83, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v84 = *(v371 + 48);
      v368 = v78;
      v85 = v78;
      v86 = v371 + 48;
      v358.i64[0] = v84;
      v87 = v84(&v313 - v83, 1, v85);
      v346.i64[0] = v82;
      *&v357 = v86;
      if (v87 == 1)
      {
        v88 = outlined destroy of PerspectiveCameraComponent?(&v313 - v83, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v359.n128_u64[0] = &v313;
        v89 = MEMORY[0x28223BE20](v88);
        v90 = &v313 - v79;
        MEMORY[0x28223BE20](v89);
        v14 = (&v313 - v83);
        v16 = v351;
        v91 = v351[1].i64[0];
        if (*(v91 + 16))
        {

          v92 = specialized __RawDictionaryStorage.find<A>(_:)(v370);
          if (v93)
          {
            outlined init with copy of FreeformMeshManager.MeshAnchor(*(v91 + 56) + *(v362 + 72) * v92, v347);
            v94 = 0;
          }

          else
          {
            v94 = 1;
          }

          v38 = v360;
        }

        else
        {
          v94 = 1;
          v38 = v360;
        }

        v8 = *v363;
        v95 = v347;
        v96 = v94;
        v97 = v369;
        (*v363)(v347, v96, 1, v369);
        *&v349 = *v356;
        if ((v349)(v95, 1, v97))
        {
          outlined destroy of PerspectiveCameraComponent?(v95, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
          (*(v371 + 56))(v14, 1, 1, v368);
        }

        else
        {
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v95 + v97[5], v14, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          outlined destroy of PerspectiveCameraComponent?(v95, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
          v5 = v368;
          if ((v358.i64[0])(v14, 1, v368) != 1)
          {
            (*(v371 + 32))(v90, v14, v5);
            v31 = v90;
            if (ObjectCaptureSession.Mesh.Anchor.didRemove.getter())
            {
              swift_beginAccess();
              v51 = *(v16 + 16);
              v98 = specialized __RawDictionaryStorage.find<A>(_:)(v370);
              v28 = v369;
              if (v99)
              {
                v5 = v98;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v51 = *(v16 + 16);
                v372 = v51;
                v101 = v341[0];
                if (!isUniquelyReferenced_nonNull_native)
                {
                  specialized _NativeDictionary.copy()();
                  v51 = v372;
                }

                (*(v354 + 8))(*(v51 + 6) + *(v354 + 72) * v5, v366);
                outlined init with take of FreeformMeshManager.MeshAnchor(*(v51 + 7) + *(v362 + 72) * v5, v101);
                specialized _NativeDictionary._delete(at:)(v5, v51);
                v102 = 0;
                *(v16 + 16) = v51;
              }

              else
              {
                v102 = 1;
                v101 = v341[0];
              }

              (v8)(v101, v102, 1, v28);
              outlined destroy of PerspectiveCameraComponent?(v101, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
              v103 = swift_endAccess();
              v355 = v353 + 1;
              v1 = v368;
              if (__OFADD__(v353, 1))
              {
                goto LABEL_128;
              }

              v360 = &v313;
              MEMORY[0x28223BE20](v103);
              v104 = &v313 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
              v105 = v371;
              (*(v371 + 16))(v104, v31, v1);
              v14 = Logger.logObject.getter();
              v106 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v106))
              {
                v107 = swift_slowAlloc();
                v358.i64[0] = v31;
                v108 = v107;
                v353 = v107;
                v109 = swift_slowAlloc();
                v373 = v109;
                *v108 = v335;
                v110 = v352;
                ObjectCaptureSession.Mesh.Anchor.identifier.getter();
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v111 = v366;
                *&v349 = dispatch thunk of CustomStringConvertible.description.getter();
                v112 = v1;
                v114 = v113;
                *&v357 = *v364;
                (v357)(v110, v111);
                v115 = *(v105 + 8);
                v116 = v104;
                v117 = v112;
                v115(v116, v112);
                v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v349, v114, &v373);

                v119 = v353;
                *(v353 + 4) = v118;
                v120 = v106;
                v121 = v119;
                _os_log_impl(&dword_23B824000, v14, v120, "Removed mesh anchor %{public}s", v119, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v109);
                MEMORY[0x23EEB0B70](v109, -1, -1);
                MEMORY[0x23EEB0B70](v121, -1, -1);

                v115(v358.i64[0], v117);
                v16 = v111;
                outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
                (v357)(v370, v111);
              }

              else
              {

                v66 = *(v105 + 8);
                v66(v104, v1);
                v66(v31, v1);
                outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
                v16 = v366;
                (*v364)(v370, v366);
              }

              v31 = v345;
              v51 = v343;
              v1 = v361;
              v353 = v355;
              goto LABEL_9;
            }

            (*(v371 + 8))(v90, v368);
            goto LABEL_53;
          }
        }

        outlined destroy of PerspectiveCameraComponent?(v14, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
LABEL_53:
        v160 = v369;
        v161 = *v350;
        v162 = v331;
        v163 = v366;
        (*v350)(v331, v370);
        v164 = FreeformMeshManager.meshAnchors.modify(&v373);
        v165 = specialized Dictionary.subscript.modify(&v372);
        v167 = v166;
        if (!(v349)(v166, 1, v160))
        {
          v168 = v160[5];
          outlined destroy of PerspectiveCameraComponent?(v167 + v168, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v169 = v167 + v168;
          v16 = v351;
          (*(v371 + 56))(v169, 1, 1, v368);
        }

        (v165)(&v372, 0);
        v334 = *v364;
        v334(v162, v163);
        (v164)(&v373, 0);
        v170 = v332;
        v161(v332, v370, v163);
        v171 = v170;
        v172 = FreeformMeshManager.meshAnchors.modify(&v373);
        v173 = specialized Dictionary.subscript.modify(&v372);
        v175 = v174;
        v176 = (v349)(v174, 1, v160);
        v31 = v345;
        if (!v176)
        {
          *(v175 + v160[7]) = 0;
        }

        (v173)(&v372, 0);
        v334(v171, v163);
        v177 = (v172)(&v373, 0);
        v134 = v23;
        goto LABEL_76;
      }

      v329 = v23;
      v123 = v368;
      (*(v371 + 32))(&v313 - v79, &v313 - v83, v368);
      v124 = ObjectCaptureSession.Mesh.Anchor.didRemove.getter();
      v328 = &v313 - v79;
      if ((v124 & 1) == 0)
      {
        *&v349 = &v313;
        v178 = v346.i64[0];
        MEMORY[0x28223BE20](v124);
        v179 = (v178 + 15) & 0xFFFFFFFFFFFFFFF0;
        v180 = v367.i64[0];
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v367.i64[0], &v313 - v179, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v181 = v358.i64[0];
        v182 = (v358.i64[0])(&v313 - v179, 1, v123);
        v183 = outlined destroy of PerspectiveCameraComponent?(&v313 - v179, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v38 = v360;
        v134 = v329;
        if (v182 == 1)
        {
          *&v349 = &v313;
          MEMORY[0x28223BE20](v183);
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v180 + v184, &v313 - v179, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v185 = v181(&v313 - v179, 1, v123);
          outlined destroy of PerspectiveCameraComponent?(&v313 - v179, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v186 = v350;
          v187 = *v350;
          if (v185 == 1)
          {
            v327 = (v350 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            v188 = v317;
            v189 = v366;
            (v187)(v317, v370);
            v16 = v351;
            v190 = FreeformMeshManager.meshAnchors.modify(&v373);
            v191 = specialized Dictionary.subscript.modify(&v372);
            v193 = v192;
            v194 = *v356;
            v326 = v356 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
            *&v349 = v194;
            if (!v194(v192, 1, v369))
            {
              *(v193 + v369[7]) = 1;
            }

LABEL_65:
            (v191)(&v372, 0);
            v334 = *v364;
            v334(v188, v189);
            (v190)(&v373, 0);
            v198 = v323;
            v187(v323, v370, v189);
            v199 = FreeformMeshManager.meshAnchors.modify(&v373);
            v200 = specialized Dictionary.subscript.modify(&v372);
            v202 = v201;
            if (!(v349)(v201, 1, v369))
            {
              outlined assign with copy of ObjectCaptureSession.Mesh.Anchor?(v367.i64[0], v202 + v369[5]);
            }

            (v200)(&v372, 0);
            v334(v198, v189);
            (v199)(&v373, 0);
            v203 = v324;
            v187(v324, v370, v189);
            v204 = FreeformMeshManager.meshAnchors.modify(&v373);
            v205 = specialized Dictionary.subscript.modify(&v372);
            v207 = v206;
            if (!(v349)(v206, 1, v369))
            {
              outlined destroy of PerspectiveCameraComponent?(v207, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
              v208 = v371;
              v209 = v187;
              v210 = v368;
              (*(v371 + 16))(v207, v328, v368);
              v211 = v208;
              v134 = v329;
              v212 = v210;
              v187 = v209;
              (*(v211 + 56))(v207, 0, 1, v212);
            }

            (v205)(&v372, 0);
            v334(v203, v189);
            (v204)(&v373, 0);
            v213 = v325;
            v187(v325, v370, v189);
            v214 = FreeformMeshManager.meshAnchors.modify(&v373);
            v215 = specialized Dictionary.subscript.modify(&v372);
            v217 = v216;
            v218 = v369;
            if ((v349)(v216, 1, v369))
            {
              (v215)(&v372, 0);
              v334(v213, v189);
              (v214)(&v373, 0);
              v219 = v368;
              v220 = v371;
            }

            else
            {
              v225 = v218[6];
              outlined destroy of PerspectiveCameraComponent?(v217 + v225, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
              v220 = v371;
              v226 = v217 + v225;
              v16 = v351;
              v227 = v368;
              (*(v371 + 56))(v226, 1, 1, v368);
              (v215)(&v372, 0);
              v334(v213, v189);
              (v214)(&v373, 0);
              v219 = v227;
            }

            v177 = (*(v220 + 8))(v328, v219);
            v31 = v345;
            if (__OFADD__(v330, 1))
            {
              __break(1u);
              return;
            }

            ++v330;
            goto LABEL_76;
          }
        }

        else
        {
          v186 = v350;
          v187 = *v350;
        }

        v16 = v351;
        v188 = v318;
        v327 = (v186 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
        v189 = v366;
        v187(v318, v370, v366);
        v190 = FreeformMeshManager.meshAnchors.modify(&v373);
        v191 = specialized Dictionary.subscript.modify(&v372);
        v196 = v195;
        v197 = *v356;
        v326 = v356 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        *&v349 = v197;
        if (!v197(v195, 1, v369))
        {
          *(v196 + v369[7]) = 0;
        }

        goto LABEL_65;
      }

      v125 = *v350;
      v126 = v319;
      v127 = v366;
      (*v350)(v319, v370, v366);
      v16 = v351;
      v128 = FreeformMeshManager.meshAnchors.modify(&v373);
      v129 = specialized Dictionary.subscript.modify(&v372);
      v131 = v130;
      v132 = v369;
      *&v349 = *v356;
      v133 = (v349)(v130, 1, v369);
      v38 = v360;
      v134 = v329;
      if (!v133)
      {
        *(v131 + v132[7]) = 0;
      }

      (v129)(&v372, 0);
      v334 = *v364;
      v334(v126, v127);
      (v128)(&v373, 0);
      v135 = v321;
      v136 = v320;
      v125(v320, v370, v127);
      v327 = FreeformMeshManager.meshAnchors.modify(&v373);
      v137 = specialized Dictionary.subscript.modify(&v372);
      v139 = v138;
      if (!(v349)(v138, 1, v132))
      {
        v140 = v132[5];
        outlined destroy of PerspectiveCameraComponent?(v139 + v140, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v141 = v371;
        v142 = v125;
        v143 = v127;
        v144 = v368;
        (*(v371 + 16))(v139 + v140, v328, v368);
        v145 = v141;
        v134 = v329;
        v146 = v139 + v140;
        v16 = v351;
        v147 = v144;
        v127 = v143;
        v125 = v142;
        v132 = v369;
        (*(v145 + 56))(v146, 0, 1, v147);
      }

      (v137)(&v372, 0);
      v334(v136, v127);
      v327(&v373, 0);
      v125(v135, v370, v127);
      v148 = FreeformMeshManager.meshAnchors.modify(&v373);
      v149 = specialized Dictionary.subscript.modify(&v372);
      v151 = v150;
      if (!(v349)(v150, 1, v132))
      {
        outlined destroy of PerspectiveCameraComponent?(v151, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        (*(v371 + 56))(v151, 1, 1, v368);
      }

      (v149)(&v372, 0);
      v334(v135, v127);
      (v148)(&v373, 0);
      v152 = v322;
      v125(v322, v370, v127);
      v153 = FreeformMeshManager.meshAnchors.modify(&v373);
      v154 = specialized Dictionary.subscript.modify(&v372);
      v156 = v155;
      v157 = v369;
      if ((v349)(v155, 1, v369))
      {
        (v154)(&v372, 0);
        v334(v152, v127);
        (v153)(&v373, 0);
        v158 = v368;
        v159 = v371;
      }

      else
      {
        v221 = v157[6];
        outlined destroy of PerspectiveCameraComponent?(v156 + v221, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v222 = v127;
        v159 = v371;
        v223 = v156 + v221;
        v16 = v351;
        v224 = v368;
        (*(v371 + 56))(v223, 1, 1, v368);
        (v154)(&v372, 0);
        v334(v152, v222);
        (v153)(&v373, 0);
        v158 = v224;
      }

      v177 = (*(v159 + 8))(v328, v158);
      v31 = v345;
LABEL_76:
      v228 = MEMORY[0x28223BE20](v177);
      v229 = &v313 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = &v313;
      MEMORY[0x28223BE20](v228);
      v231 = &v313 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
      v232 = *(v16 + 16);
      if (*(v232 + 16))
      {

        v233 = specialized __RawDictionaryStorage.find<A>(_:)(v370);
        if (v234)
        {
          outlined init with copy of FreeformMeshManager.MeshAnchor(*(v232 + 56) + *(v362 + 72) * v233, v333);
          v235 = 0;
        }

        else
        {
          v235 = 1;
        }
      }

      else
      {
        v235 = 1;
      }

      v236 = v333;
      v237 = v235;
      v238 = v369;
      (*v363)(v333, v237, 1, v369);
      if ((v349)(v236, 1, v238))
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
        v16 = v366;
        v334(v370, v366);
        outlined destroy of PerspectiveCameraComponent?(v236, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
        (*(v371 + 56))(v231, 1, 1, v368);
LABEL_86:
        v51 = v343;
        v1 = v361;
        outlined destroy of PerspectiveCameraComponent?(v231, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        goto LABEL_9;
      }

      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v236, v231, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      outlined destroy of PerspectiveCameraComponent?(v236, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
      v239 = v368;
      if ((v358.i64[0])(v231, 1, v368) == 1)
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
        v16 = v366;
        v334(v370, v366);
        goto LABEL_86;
      }

      v360 = &v313;
      v240 = v371;
      (*(v371 + 32))(v229, v231, v239);
      *v242.i64 = specialized FreeformMeshManager.computeBoundingBoxWorld(for:)();
      v51 = v343;
      v1 = v361;
      v241.i32[3] = 0;
      v242.i32[3] = 0;
      if (*(v16 + 64))
      {
        v243 = vminnmq_f32(v241, v242);
        v243.i32[3] = v315.n128_i32[3];
        v359 = v243;
        v244 = vmaxnmq_f32(v241, v242);
        v244.i32[3] = v316;
        v358 = v244;
        BoundingBox.init(min:max:)();
        v357 = v245;
        v349 = v246;
        (*(v240 + 8))(v229, v239);
        outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
        v247 = v366;
        v334(v370, v366);
        v248 = v349;
        *(v16 + 32) = v357;
        *(v16 + 48) = v248;
        *(v16 + 64) = 0;
        v16 = v247;
        v315 = v359;
        v249 = v358;
        v250 = &v344;
      }

      else
      {
        v251 = vminnmq_f32(v241, v242);
        v251.i32[3] = 0;
        v252 = *(v16 + 32);
        v252.i32[3] = 0;
        v253 = vminnmq_f32(v251, v252);
        v253.i32[3] = v313.n128_i32[3];
        v359 = v253;
        v254 = vmaxnmq_f32(v241, v242);
        v254.i32[3] = 0;
        v255 = *(v16 + 48);
        v255.i32[3] = 0;
        v256 = vmaxnmq_f32(v254, v255);
        v256.i32[3] = v314;
        v358 = v256;
        BoundingBox.init(min:max:)();
        v357 = v257;
        v349 = v258;
        (*(v240 + 8))(v229, v239);
        outlined destroy of FreeformMeshManager.MeshAnchor(v367.i64[0]);
        v259 = v366;
        v334(v370, v366);
        v260 = v349;
        *(v16 + 32) = v357;
        *(v16 + 48) = v260;
        *(v16 + 64) = 0;
        v16 = v259;
        v313 = v359;
        v249 = v358;
        v250 = v341;
      }

      v250[-16] = v249;
LABEL_9:
      v8 = v342;
      v23 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd;
      v28 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR;
    }

    if (v355 < 1)
    {
      goto LABEL_123;
    }

    v261 = v351[1].i64[0];
    v16 = v261 + 64;
    v262 = 1 << *(v261 + 32);
    v263 = -1;
    if (v262 < 64)
    {
      v263 = ~(-1 << v262);
    }

    v38 = v263 & *(v261 + 64);
    v51 = ((v262 + 63) >> 6);
    v361 = (v76 + 56);
    v353 = v261;

    v5 = 0;
    v31 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
    v14 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    v360 = v16;
    v359.n128_u64[0] = v51;
    v358.i64[0] = v28;
    if (!v38)
    {
LABEL_99:
      if (v51 <= v5 + 1)
      {
        v265 = (v5 + 1);
      }

      else
      {
        v265 = v51;
      }

      v266 = (v265 - 1);
      while (1)
      {
        v264 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v264 >= v51)
        {
          v38 = 0;
          v278 = 1;
          v5 = v266;
          v277 = v338;
          goto LABEL_108;
        }

        v38 = *(v16 + 8 * v264);
        ++v5;
        if (v38)
        {
          v5 = v264;
          goto LABEL_107;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      continue;
    }

    break;
  }

  while (1)
  {
    v264 = v5;
LABEL_107:
    v267 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v268 = v267 | (v264 << 6);
    v269 = v353;
    v270 = v354;
    v271 = v352;
    v272 = v366;
    (*(v354 + 16))(v352, *(v353 + 48) + *(v354 + 72) * v268, v366);
    v273 = *(v269 + 56) + *(v362 + 72) * v268;
    v274 = v348;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v273, v348);
    v275 = *(v23 + 12);
    v276 = *(v270 + 32);
    v277 = v338;
    v276(v338, v271, v272);
    outlined init with take of FreeformMeshManager.MeshAnchor(v274, v277 + v275);
    v278 = 0;
LABEL_108:
    (*v361)(v277, v278, 1, v23);
    v279 = v337;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v277, v337);
    if ((v28)(v279, 1, v23) == 1)
    {
      break;
    }

    outlined destroy of FreeformMeshManager.MeshAnchor(v279 + *(v23 + 12));
    v280 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    v368 = &v313;
    v370 = *(v280 - 8);
    v371 = v280;
    MEMORY[0x28223BE20](v280);
    *&v357 = &v313 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
    v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    MEMORY[0x28223BE20](v282 - 8);
    v8 = &v313 - v283;
    v284 = v366;
    v285 = v336;
    (*v365)(v336, v279, v366);
    v286 = v351[1].i64[0];
    v287 = *(v286 + 16);
    v367.i64[0] = &v313;
    if (v287)
    {

      v288 = specialized __RawDictionaryStorage.find<A>(_:)(v285);
      v16 = v360;
      if (v289)
      {
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v286 + 56) + *(v362 + 72) * v288, v339);
        (*v364)(v285, v366);

        v290 = 0;
      }

      else
      {

        (*v364)(v285, v366);
        v290 = 1;
      }
    }

    else
    {
      (*v364)(v285, v284);
      v290 = 1;
      v16 = v360;
    }

    v291 = v339;
    v292 = v369;
    (*v363)(v339, v290, 1, v369);
    v293 = (*v356)(v291, 1, v292);
    v294 = v370;
    if (v293)
    {
      outlined destroy of PerspectiveCameraComponent?(v291, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
      (*(v294 + 56))(v8, 1, 1, v371);
      v31 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
      v14 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
LABEL_97:
      outlined destroy of PerspectiveCameraComponent?(v8, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v51 = v359.n128_u64[0];
      v28 = v358.i64[0];
      if (!v38)
      {
        goto LABEL_99;
      }

      continue;
    }

    v31 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
    v14 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v291, v8, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    outlined destroy of PerspectiveCameraComponent?(v291, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v295 = v371;
    if ((*(v294 + 48))(v8, 1, v371) == 1)
    {
      goto LABEL_97;
    }

    (*(v294 + 32))(v357, v8, v295);
    *v298.i64 = specialized FreeformMeshManager.computeBoundingBoxWorld(for:)();
    v296 = v351;
    v297.i32[3] = 0;
    v298.i32[3] = 0;
    if (v351[4].i8[0])
    {
      v299 = vminnmq_f32(v297, v298);
      v299.i32[3] = v346.i32[3];
      v346 = v299;
      v300 = vmaxnmq_f32(v297, v298);
      v301 = &v370;
    }

    else
    {
      v302 = vminnmq_f32(v297, v298);
      v302.i32[3] = 0;
      v303 = v351[2];
      v303.i32[3] = 0;
      v304 = vminnmq_f32(v302, v303);
      v304.i32[3] = v344.i32[3];
      v344 = v304;
      v305 = vmaxnmq_f32(v297, v298);
      v305.i32[3] = 0;
      v306 = v351[3];
      v306.i32[3] = 0;
      v300 = vmaxnmq_f32(v305, v306);
      v301 = &v367;
    }

    v300.i32[3] = HIDWORD(*(v301 - 16));
    *(v301 - 16) = v300;
    BoundingBox.init(min:max:)();
    v367 = v307;
    v349 = v308;
    v14 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    v28 = v358.i64[0];
    (*(v370 + 8))(v357, v371);
    v309 = v349;
    v296[2] = v367;
    v296[3] = v309;
    v296[4].i8[0] = 0;
    v51 = v359.n128_u64[0];
    if (!v38)
    {
      goto LABEL_99;
    }
  }

LABEL_123:
  v310 = Logger.logObject.getter();
  v311 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v310, v311))
  {
    v312 = swift_slowAlloc();
    *v312 = 134349312;
    *(v312 + 4) = v330;
    *(v312 + 12) = 2050;
    *(v312 + 14) = v355;
    _os_log_impl(&dword_23B824000, v310, v311, "... done updating %{public}ld and removing %{public}ld mesh anchors.", v312, 0x16u);
    MEMORY[0x23EEB0B70](v312, -1, -1);
  }
}

uint64_t FreeformMeshManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FreeformMeshManager.MeshAnchor(uint64_t a1)
{
  result = type metadata singleton initialization cache for FreeformMeshManager.MeshAnchor;
  if (!type metadata singleton initialization cache for FreeformMeshManager.MeshAnchor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformMeshManager.MeshAnchor(uint64_t a1)
{
  type metadata accessor for ObjectCaptureSession.Mesh.Anchor?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for ObjectCaptureSession.Mesh.Anchor?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCaptureSession.Mesh.Anchor?)
  {
    type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObjectCaptureSession.Mesh.Anchor?);
    }
  }
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[12] = specialized _NativeDictionary.subscript.modify(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = type metadata accessor for UUID();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_21;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a3 & 1);
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    outlined init with take of FreeformMeshManager.MeshAnchor(*(*v4 + 56) + *(v15 + 72) * v23, v20);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5, v6, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      outlined init with take of FreeformMeshManager.MeshAnchor(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        outlined init with take of FreeformMeshManager.MeshAnchor(v13, v14);
        specialized _NativeDictionary._insert(at:key:value:)(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5, v16, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      outlined init with take of FreeformMeshManager.MeshAnchor(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      outlined init with take of FreeformMeshManager.MeshAnchor(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  outlined destroy of PerspectiveCameraComponent?(v9, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    specialized _NativeDictionary._delete(at:)(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  outlined destroy of PerspectiveCameraComponent?(v22, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FreeformMeshManager.MeshAnchor(uint64_t a1)
{
  v2 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double specialized FreeformMeshManager.computeBoundingBoxWorld(for:)()
{
  ObjectCaptureSession.Mesh.Anchor.transform.getter();
  ObjectCaptureSession.Mesh.Anchor.corner.getter();
  ObjectCaptureSession.Mesh.Anchor.transform.getter();
  ObjectCaptureSession.Mesh.Anchor.corner.getter();
  ObjectCaptureSession.Mesh.Anchor.extent.getter();

  BoundingBox.init(min:max:)();
  return result;
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

uint64_t outlined assign with copy of ObjectCaptureSession.Mesh.Anchor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of FreeformMeshManager.MeshAnchor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DynamicScanVolumeEstimator.BoxAlgorithm()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DynamicScanVolumeEstimator.BoxAlgorithm.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t *a1@<X8>)
{
  v2 = 0x67696C4173697861;
  if (*v1)
  {
    v2 = 0x4179746976617267;
  }

  v3 = 0xEB0000000064656ELL;
  if (*v1)
  {
    v3 = 0xEE0064656E67696CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DynamicScanVolumeEstimator.BoxAlgorithm(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4179746976617267;
  }

  else
  {
    v3 = 0x67696C4173697861;
  }

  if (v2)
  {
    v4 = 0xEB0000000064656ELL;
  }

  else
  {
    v4 = 0xEE0064656E67696CLL;
  }

  if (*a2)
  {
    v5 = 0x4179746976617267;
  }

  else
  {
    v5 = 0x67696C4173697861;
  }

  if (*a2)
  {
    v6 = 0xEE0064656E67696CLL;
  }

  else
  {
    v6 = 0xEB0000000064656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}