unint64_t ProtectedAppSource.init(fixedAppSource:)(unsigned __int8 a1)
{
  v1 = 0x6C7070612E6D6F63;
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000013;
    if (a1 == 3)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v1 = v5;
    }

    v6 = 0xD000000000000011;
    if (!a1)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0xD000000000000012;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProtectedFixedAppSource(MomentsUI::ProtectedFixedAppSource *a1, MomentsUI::ProtectedFixedAppSource *a2)
{
  v2 = *a2;
  v3 = ProtectedAppSource.init(fixedAppSource:)(*a1);
  v4 = ProtectedAppSource.init(fixedAppSource:)(v2);
  if (v3.bundleIdentifier._countAndFlagsBits == v4.bundleIdentifier._countAndFlagsBits && v3.bundleIdentifier._object == v4.bundleIdentifier._object)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ProtectedFixedAppSource(uint64_t a1)
{
  ProtectedAppSource.init(fixedAppSource:)(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProtectedFixedAppSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ProtectedAppSource.init(fixedAppSource:)(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ProtectedFixedAppSource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ProtectedFixedAppSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ProtectedFixedAppSource@<X0>(MomentsUI::ProtectedAppSource *a1@<X8>)
{
  v4 = ProtectedAppSource.init(fixedAppSource:)(*v1);
  result = v4.bundleIdentifier._countAndFlagsBits;
  *a1 = v4;
  return result;
}

Swift::Int ProtectedAppChallengeResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

id one-time initialization function for accessGuard()
{
  result = [objc_opt_self() sharedGuard];
  static ProtectedAppsManager.accessGuard = result;
  return result;
}

uint64_t *ProtectedAppsManager.accessGuard.unsafeMutableAddressor()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  return &static ProtectedAppsManager.accessGuard;
}

id static ProtectedAppsManager.accessGuard.getter()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  v1 = static ProtectedAppsManager.accessGuard;

  return v1;
}

uint64_t ProtectedAppsManager.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate;
  swift_beginAccess();
  return outlined init with copy of ProtectedAppsManagerDelegate?(v1 + v3, a1);
}

uint64_t ProtectedAppsManager.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsManagerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ProtectedAppsManager.monitoring.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProtectedAppsManager.monitoring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double ProtectedAppsManager.monitoringSubjects.getter()
{
  swift_beginAccess();

  return result;
}

double ProtectedAppsManager.monitoringSubjects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoringSubjects;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t key path getter for ProtectedAppsManager.shouldDismissOverlayPostAuthentication : ProtectedAppsManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t ProtectedAppsManager.shouldDismissOverlayPostAuthentication.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t ProtectedAppsManager.shouldDismissOverlayPostAuthentication.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*ProtectedAppsManager.shouldDismissOverlayPostAuthentication.modify(uint64_t *a1))(void *a1)
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
  return BlurGradientView.colors.modify;
}

uint64_t key path setter for ProtectedAppsManager.$shouldDismissOverlayPostAuthentication : ProtectedAppsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

uint64_t ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ProtectedAppsManager.$shouldDismissOverlayPostAuthentication.modify(uint64_t *a1))(uint64_t a1, char a2)
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

  v10 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager__shouldDismissOverlayPostAuthentication;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

id ProtectedAppsManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_delegate];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoring] = 0;
  *&v0[OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager_monitoringSubjects] = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtC9MomentsUI20ProtectedAppsManager__shouldDismissOverlayPostAuthentication;
  v11 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v4, v1);
  v7 = type metadata accessor for ProtectedAppsManager(0);
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ProtectedAppsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ProtectedAppsManager.shouldDropContentFrom(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = MEMORY[0x21CE91FC0](a1, a2);
  v6 = [v4 applicationWithBundleIdentifier_];

  v7 = [v6 isHidden];
  return v7;
}

uint64_t closure #1 in static ProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4((*(a3 + 16) & 1) == 0);
    }
  }

  return result;
}

uint64_t closure #2 in static ProtectedAppsManager.requiresChallenge(appSources:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if ([a1 BOOLValue])
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static CommonLogger.viewModel);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v30);
      v15 = "protected apps requires authentication, appSource=%s";
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 0;
      if (one-time initialization token for viewModel != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static CommonLogger.viewModel);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v30);
      v15 = "protected apps requires no authentication, appSource=%s";
    }

    _os_log_impl(&dword_21607C000, v11, v12, v15, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
LABEL_17:

    return a6();
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static CommonLogger.viewModel);

  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v29 = a6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    v30[1] = a4;
    *v21 = 134218242;
    v30[2] = a5;
    lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 4) = StringProtocol.hash.getter();

    *(v21 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v24;
    }

    else
    {
      v25 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_21607C000, v19, v20, "protected apps unlock, appSource=%ld, error=%s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CE94770](v22, -1, -1);
    MEMORY[0x21CE94770](v21, -1, -1);

    a6 = v29;
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return a6();
}

uint64_t closure #1 in static ProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4(*(a3 + 16));
    }
  }

  return result;
}

uint64_t closure #2 in static ProtectedAppsManager.requestAccess(appSources:completion:)(char a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static CommonLogger.viewModel);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v28);
      *(v12 + 12) = 1024;
      *(v12 + 14) = 1;
      _os_log_impl(&dword_21607C000, v10, v11, "protected apps unlock, appSource=%s, success=%{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static CommonLogger.viewModel);

    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v27 = a6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v28);
      *(v20 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v22 = Error.localizedDescription.getter();
        v24 = v23;
      }

      else
      {
        v24 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v28);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_21607C000, v18, v19, "protected apps unlock, appSource=%s, error=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);

      a6 = v27;
    }

    else
    {
    }

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  return a6();
}

void closure #1 in ProtectedAppsManager.authenticate()(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xC0))(0);
  }

  else
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (!v2)
    {
      return;
    }

    v3 = v2;
    (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(1);
  }
}

void specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = v7;
  v8[5] = a2;
  v8[6] = a3;
  v9 = *(a1 + 16);
  if (v9)
  {
    v19 = objc_opt_self();

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = one-time initialization token for accessGuard;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static ProtectedAppsManager.accessGuard;
      v15 = MEMORY[0x21CE91FC0](v11, v12);
      v16 = [v19 applicationWithBundleIdentifier_];

      v17 = swift_allocObject();
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v7;
      v17[5] = partial apply for closure #1 in static ProtectedAppsManager.requestAccess(appSources:completion:);
      v17[6] = v8;
      aBlock[4] = partial apply for closure #2 in static ProtectedAppsManager.requestAccess(appSources:completion:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_55_0;
      v18 = _Block_copy(aBlock);

      [v14 authenticateForSubject:v16 completion:v18];
      _Block_release(v18);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

void specialized static ProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = a1;
  v8[4] = v7;
  v8[5] = a2;
  v8[6] = a3;
  v9 = *(a1 + 16);
  if (v9)
  {
    v19 = objc_opt_self();

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = one-time initialization token for accessGuard;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = static ProtectedAppsManager.accessGuard;
      v15 = MEMORY[0x21CE91FC0](v11, v12);
      v16 = [v19 applicationWithBundleIdentifier_];

      v17 = swift_allocObject();
      v17[2] = v7;
      v17[3] = v11;
      v17[4] = v12;
      v17[5] = partial apply for closure #1 in static ProtectedAppsManager.requiresChallenge(appSources:completion:);
      v17[6] = v8;
      aBlock[4] = partial apply for closure #2 in static ProtectedAppsManager.requiresChallenge(appSources:completion:);
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NotificationApprovedApplicationList?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_29;
      v18 = _Block_copy(aBlock);

      [v14 getIsChallengeCurrentlyRequiredForSubject:v16 completion:v18];
      _Block_release(v18);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type ProtectedAppSource and conformance ProtectedAppSource()
{
  result = lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppSource and conformance ProtectedAppSource);
  }

  return result;
}

unint64_t specialized ProtectedFixedAppSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ProtectedFixedAppSource.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of ProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd, &_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd, &_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProtectedAppsManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for ProtectedAppsManager;
  if (!type metadata singleton initialization cache for ProtectedAppsManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_40:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v33 = v1 + 32;
  v34 = v1 & 0xFFFFFFFFFFFFFF8;
  v36 = v2;
  v37 = v1;
  v35 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v6 = MEMORY[0x21CE93180](v3, v1);
    }

    else
    {
      if (v3 >= *(v34 + 16))
      {
        goto LABEL_39;
      }

      v6 = *(v33 + 8 * v3);
    }

    v5 = v6;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_38;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      break;
    }

LABEL_5:

    if (v3 == v2)
    {
      return;
    }
  }

  v39 = v5;
  v1 = v38;
  v8 = (*((*MEMORY[0x277D85000] & *v38) + 0xA0))();
  v9 = 0;
  v11 = v8 + 56;
  v10 = *(v8 + 56);
  v41 = v8;
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  if ((v13 & v10) == 0)
  {
LABEL_17:
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        v5 = v39;
        v2 = v36;
        v1 = v37;
        v4 = v35;
        goto LABEL_5;
      }

      v14 = *(v11 + 8 * v16);
      ++v9;
      if (v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v16 = v9;
LABEL_20:
    v17 = (*(v41 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = [v40 bundleIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v22;

    if (v21 == v19 && v1 == v18)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_28;
    }

    v14 &= v14 - 1;

    v9 = v16;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static CommonLogger.viewModel);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315138;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v45);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_21607C000, v26, v27, "[subscribeToChanges] App status changed, validating conditions, appBundleId=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  else
  {
  }

  (*((*MEMORY[0x277D85000] & *v38) + 0x70))(v45);
  if (v45[3])
  {
    outlined init with copy of DBObject(v45, v42);
    outlined destroy of ProtectedAppsManagerDelegate?(v45);
    v31 = v43;
    v32 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v32 + 8))(v31, v32);

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {

    outlined destroy of ProtectedAppsManagerDelegate?(v45);
  }
}

unint64_t lazy protocol witness table accessor for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource()
{
  result = lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource;
  if (!lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedFixedAppSource and conformance ProtectedFixedAppSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult()
{
  result = lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult;
  if (!lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppChallengeResult and conformance ProtectedAppChallengeResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult()
{
  result = lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult;
  if (!lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtectedAppAuthenticationResult and conformance ProtectedAppAuthenticationResult);
  }

  return result;
}

void type metadata completion function for ProtectedAppsManager(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined destroy of ProtectedAppsManagerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMd, &_s9MomentsUI28ProtectedAppsManagerDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static DBLivePhotoModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void *DBLivePhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  swift_allocObject();
  v23 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v23;
}

void *DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v17 = specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v17;
}

uint64_t DBLivePhotoModel.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBLivePhotoModel.init(from:)(void *a1)
{
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBLivePhotoModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBLivePhotoModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

void *specialized DBLivePhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v17 = v16;
  v165 = a8;
  v149 = a7;
  v155 = a6;
  v153 = a5;
  *&v167 = a3;
  v150 = v17;
  *&v166 = *v17;
  v140 = type metadata accessor for Date();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v163 = &v130 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v162 = &v130 - v25;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMR);
  v142 = *(v161 - 8);
  v26 = MEMORY[0x28223BE20](v161);
  v134 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v133 = &v130 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v130 - v30;
  v32 = type metadata accessor for DateInterval();
  v159 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v147 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v158 = &v130 - v35;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v154 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v130 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v144 = &v130 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v130 - v45;
  MEMORY[0x28223BE20](v44);
  LODWORD(v160) = *a16;
  v148 = v37;
  v47 = *(v37 + 16);
  v145 = &v130 - v48;
  v137 = a1;
  v47();
  v146 = v46;
  v136 = a2;
  v164 = v36;
  v152 = (v37 + 16);
  v151 = v47;
  (v47)(v46, a2, v36);
  v49 = *(a4 + 16);
  v156 = v32;
  v143 = MEMORY[0x277D84F90];
  if (v49)
  {
    v169 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v50 = v169;
    v51 = *(v169 + 16);
    v52 = 32;
    v53 = v165;
    do
    {
      v54 = *(a4 + v52);
      v169 = v50;
      v55 = *(v50 + 24);
      if (v51 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v51 + 1, 1);
        v50 = v169;
      }

      *(v50 + 16) = v51 + 1;
      *(v50 + v51 + 32) = v54;
      ++v52;
      ++v51;
      --v49;
    }

    while (v49);

    v32 = v156;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
    v53 = v165;
  }

  v56 = v153;
  if (!v155)
  {
    v56 = 0;
  }

  v153 = v56;
  v57 = 0xE000000000000000;
  if (v155)
  {
    v57 = v155;
  }

  v155 = v57;
  outlined init with copy of DateInterval?(v149, v31);
  v58 = v159;
  v59 = *(v159 + 48);
  if (v59(v31, 1, v32) == 1)
  {
    DateInterval.init()();
    if (v59(v31, 1, v32) != 1)
    {
      outlined destroy of UTType?(v31, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }
  }

  else
  {
    (*(v58 + 32))(v158, v31, v32);
  }

  v141 = a15;
  if (v53 && (, v60 = PairedPhotoVideo.assetData.getter(), , v60))
  {
    v165 = v60;
  }

  else
  {
    v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v61 = v150;
  v62 = v150 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect;
  v63 = *(a9 + 16);
  *v62 = *a9;
  *(v62 + 1) = v63;
  v62[32] = *(a9 + 32);
  v64 = v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect;
  v65 = *(a10 + 16);
  *v64 = *a10;
  *(v64 + 16) = v65;
  *(v64 + 32) = *(a10 + 32);
  v66 = v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect;
  *(v66 + 32) = *(a11 + 32);
  v67 = *(a11 + 16);
  *v66 = *a11;
  *(v66 + 16) = v67;
  v68 = (v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
  *v68 = a12;
  v68[1] = a13;
  v69 = (v61 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v70 = v141;
  *v69 = a14;
  v69[1] = v70;
  v71 = v144;
  v72 = v164;
  v73 = v151;
  v151(v144, v145, v164);
  v73(v157, v146, v72);
  v132 = type metadata accessor for DBAssetModel(0);
  static DBAssetModel.subscript.getter(v166, &v170);
  LODWORD(v141) = v170;
  v74 = *(v159 + 16);
  v75 = v147;
  v76 = v156;
  v74(v147, v158, v156);
  *(v61 + 16) = 0;
  *&v166 = v61 + 16;
  v131 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v73((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v71, v72);
  v130 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v73((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v157, v72);
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v141;
  v77 = v167;
  v152 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v167;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v50;
  v78 = (v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v79 = v155;
  *v78 = v153;
  v78[1] = v79;
  v74((v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v75, v76);
  v80 = v77;
  v81 = v165;
  specialized Dictionary.compactMapValues<A>(_:)(v165);
  v135 = 0;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v82;
  *(v61 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v83 = v82;
  swift_beginAccess();
  *(v61 + 16) = v160;
  v84 = *(v81 + 64);
  *&v167 = v81 + 64;
  v85 = 1 << *(v81 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & v84;
  v88 = (v85 + 63) >> 6;
  v89 = (v148 + 48);
  v152 = (v148 + 32);
  v90 = (v142 + 56);
  v160 = (v142 + 48);
  v141 = v83;

  v91 = 0;
  v92 = v163;
  v93 = v81;
  v153 = v89;
  v151 = v88;
  v155 = v90;
  v165 = v81;
  while (v87)
  {
    v94 = v91;
LABEL_28:
    v95 = __clz(__rbit64(v87)) | (v94 << 6);
    v96 = *(*(v93 + 56) + 8 * v95);
    v97 = *(*v96 + 192);
    *&v166 = *(*(v93 + 48) + 16 * v95 + 8);

    v97(v98);
    v99 = v164;
    if ((*v89)(v92, 1, v164) == 1)
    {
      outlined destroy of UTType?(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v100 = v162;
      v61 = v161;
      (*v90)(v162, 1, 1, v161);
    }

    else
    {
      v101 = *v152;
      (*v152)(v154, v163, v99);
      v61 = v161;
      v102 = *(v161 + 48);
      v100 = v162;
      v101();
      v90 = v155;
      v92 = v163;
      *(v100 + v102) = v96;
      v88 = v151;
      v89 = v153;
      (*v90)(v100, 0, 1, v61);
    }

    v87 &= v87 - 1;

    if ((*v160)(v100, 1, v61) == 1)
    {
      outlined destroy of UTType?(v100, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR);
      v91 = v94;
      v93 = v165;
    }

    else
    {
      v103 = v133;
      outlined init with take of (UUID, DBAssetData)(v100, v133);
      outlined init with take of (UUID, DBAssetData)(v103, v134);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
      }

      v105 = v143[2];
      v104 = v143[3];
      if (v105 >= v104 >> 1)
      {
        v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v143);
      }

      v106 = v143;
      v143[2] = v105 + 1;
      outlined init with take of (UUID, DBAssetData)(v134, v106 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105);
      v91 = v94;
      v90 = v155;
      v93 = v165;
    }
  }

  while (1)
  {
    v94 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);

      v128 = *(v148 + 8);
      v129 = v164;
      v128(v61 + v131, v164);
      v128(v61 + v130, v129);

      (*(v159 + 8))(v61 + v92, v156);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_44;
    }

    if (v94 >= v88)
    {
      break;
    }

    v87 = *(v167 + 8 * v94);
    ++v91;
    if (v87)
    {
      goto LABEL_28;
    }
  }

  if (v143[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMR);
    v107 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v107 = MEMORY[0x277D84F98];
  }

  v108 = v150;
  v109 = v156;
  v168 = v107;

  v111 = v135;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v110, 1, &v168);
  if (!v111)
  {

    v112 = v168;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    v114 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v114 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v114[1] = v113;
    v115 = swift_allocObject();
    *(v115 + 16) = v112;
    v116 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v116 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v116[1] = v115;
    v117 = (v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v117 = closure #3 in DBAssetModel.init(from:);
    v117[1] = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v141;
    swift_beginAccess();
    v167 = *v114;
    swift_beginAccess();
    v166 = *v116;
    swift_beginAccess();
    v119 = *v117;
    v120 = v117[1];
    v121 = v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v121 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v121 + 8) = v118;
    v122 = v166;
    *(v121 + 16) = v167;
    *(v121 + 32) = v122;
    *(v121 + 48) = v119;
    *(v121 + 56) = v120;

    v123 = v138;
    static Date.now.getter();
    outlined destroy of UTType?(v149, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v124 = *(v148 + 8);
    v125 = v164;
    v124(v136, v164);
    v124(v137, v125);
    v126 = *(v159 + 8);
    v126(v147, v109);
    v124(v157, v125);
    v124(v144, v125);
    v126(v158, v109);
    v124(v146, v125);
    v124(v145, v125);
    (*(v139 + 32))(v108 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v123, v140);
    return v108;
  }

LABEL_44:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DBLivePhotoModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBLivePhotoModel;
  if (!type metadata singleton initialization cache for DBLivePhotoModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DBLivePhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseLivePhoto:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a9 + 32);
  v18 = *(a10 + 32);
  v19 = *(a11 + 32);
  v20 = *(v16 + 448);
  v21 = *(a9 + 16);
  v29[0] = *a9;
  v29[1] = v21;
  v30 = v17;
  v22 = *(a10 + 16);
  v27[0] = *a10;
  v27[1] = v22;
  v28 = v18;
  v23 = *(a11 + 16);
  v25[0] = *a11;
  v25[1] = v23;
  v26 = v19;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, v29, v27, v25, a12, a13, a14, a15, a16);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI11CloudDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpi35IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C6H6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for CloudDevice(0);
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  if (v5)
  {
    v32 = v1;
    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = a1 + 64;
    v7 = _HashTable.startBucket.getter();
    v8 = *(a1 + 36);
    v37 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    v36 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
    v9 = 0;
    v10 = *MEMORY[0x277CBBF28];
    v34 = v8;
    v35 = v10;
    v33 = a1 + 72;
    v38 = a1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_20;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_21;
      }

      v41 = v9;
      v8 = v5;
      v13 = *(a1 + 56);
      v14 = v39;
      outlined init with copy of CloudDevice(v13 + *(v40 + 72) * v7, v39, type metadata accessor for CloudDevice);
      v16 = *v14;
      v15 = v14[1];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = 0x73656369766544;
      v20._object = 0xE700000000000000;
      v21._countAndFlagsBits = v17;
      v21._object = v19;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v21).super.isa;
      v23._countAndFlagsBits = v16;
      v23._object = v15;
      CKRecordID.init(recordName:zoneID:)(v23, isa);
      v24 = v14;
      a1 = v38;
      outlined destroy of CloudDevice(v24, type metadata accessor for CloudDevice);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 = 1 << *(a1 + 32);
      if (v7 >= v11)
      {
        goto LABEL_22;
      }

      v25 = *(v6 + 8 * v12);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v5 = v8;
      LODWORD(v8) = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v11 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v12 << 6;
        v28 = v12 + 1;
        v29 = (v33 + 8 * v12);
        while (v28 < (v11 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            outlined consume of Set<UIScene>.Index._Variant(v7, v34, 0);
            v11 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v7, v34, 0);
      }

LABEL_4:
      v9 = v41 + 1;
      v7 = v11;
      if (v41 + 1 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI15CloudMetaDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpj36IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C10hI7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for CloudMetaDevice(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  if (v5)
  {
    v31 = v1;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = a1 + 64;
    v7 = _HashTable.startBucket.getter();
    v8 = *(a1 + 36);
    v36 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    v35 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
    v9 = 0;
    v32 = a1 + 72;
    v33 = v8;
    v34 = *MEMORY[0x277CBBF28];
    v37 = a1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_20;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_21;
      }

      v40 = v9;
      v8 = v5;
      v12 = *(a1 + 56);
      v13 = v38;
      outlined init with copy of CloudDevice(v12 + *(v39 + 72) * v7, v38, type metadata accessor for CloudMetaDevice);
      v15 = *v13;
      v14 = v13[1];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19._countAndFlagsBits = 0x617461646174656DLL;
      v19._object = 0xED0000656E6F7A5FLL;
      v20._countAndFlagsBits = v16;
      v20._object = v18;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v20).super.isa;
      v22._countAndFlagsBits = v15;
      v22._object = v14;
      CKRecordID.init(recordName:zoneID:)(v22, isa);
      v23 = v13;
      a1 = v37;
      outlined destroy of CloudDevice(v23, type metadata accessor for CloudMetaDevice);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_22;
      }

      v24 = *(v6 + 8 * v11);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v5 = v8;
      LODWORD(v8) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v10 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v11 << 6;
        v27 = v11 + 1;
        v28 = (v32 + 8 * v11);
        while (v27 < (v10 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            outlined consume of Set<UIScene>.Index._Variant(v7, v33, 0);
            v10 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        outlined consume of Set<UIScene>.Index._Variant(v7, v33, 0);
      }

LABEL_4:
      v9 = v40 + 1;
      v7 = v10;
      if (v40 + 1 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for CloudDevice(0);
    v17 = *(v10 - 8);
    outlined init with copy of CloudDevice(v9 + *(v17 + 72) * v8, a4, type metadata accessor for CloudDevice);
    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for CloudDevice(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v3)
    {
    }
  }
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t static CloudDevicesDB.commonSecondaryCapabilities.getter()
{
  if (one-time initialization token for $commonSecondaryCapabilities != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t CloudDevicesDB.becomePrimary()()
{
  v1[29] = v0;
  v1[30] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v1[42] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice(0);
  v1[43] = v4;
  v1[44] = *(v4 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v0, 0);
}

{
  v139 = v0;
  v1 = v0[29];
  static CloudLog.LogBeginInfo(_:_:)(0, "becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) != 2)
    {
LABEL_17:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v28 = v0[38];
      v29 = v0[35];
      v30 = v0[36];
      v31 = __swift_project_value_buffer(v29, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v30 + 16))(v28, v31, v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[38];
      v36 = v0[35];
      v37 = v0[36];
      if (v34)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v138[0] = v39;
        *v38 = 136446466;
        swift_beginAccess();
        v40 = StaticString.description.getter();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v138);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2082;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
        _os_log_impl(&dword_21607C000, v32, v33, "%{public}s.%{public}s Cannot become primary", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v39, -1, -1);
        MEMORY[0x21CE94770](v38, -1, -1);
      }

      (*(v37 + 8))(v35, v36);
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[42];
  CloudDevicesDB.currentDevice.getter(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of UTType?(v0[42], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_17;
  }

  v7 = v0[46];
  v8 = v0[43];
  outlined init with take of CloudDevice(v0[42], v7, type metadata accessor for CloudDevice);
  v9 = v7 + *(v8 + 40);
  if (*(v9 + 8))
  {
    v10 = -1;
  }

  else
  {
    v10 = *v9;
  }

  CloudDevice.Idiom.init(rawValue:)(v10);
  if (LOBYTE(v138[0]) != 1)
  {
    outlined destroy of CloudDevice(v0[46], type metadata accessor for CloudDevice);
    goto LABEL_17;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v11 = v0[41];
  v12 = v0[35];
  v13 = v0[36];
  v14 = __swift_project_value_buffer(v12, static CloudDevicesDB.Log);
  swift_beginAccess();
  v132 = v14;
  v130 = *(v13 + 16);
  v130(v11, v14, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[41];
  v20 = v0[35];
  v19 = v0[36];
  v137 = v0;
  if (v17)
  {
    v135 = v0[41];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v138[0] = v22;
    *v21 = 136446466;
    swift_beginAccess();
    v23 = StaticString.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v138);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    _os_log_impl(&dword_21607C000, v15, v16, "%{public}s.%{public}s Becoming Primary", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v22, -1, -1);
    MEMORY[0x21CE94770](v21, -1, -1);

    v26 = *(v19 + 8);
    v27 = v135;
  }

  else
  {

    v26 = *(v19 + 8);
    v27 = v18;
  }

  v136 = v26;
  v26(v27, v20);
  v45 = v0[46];
  v46 = v0[43];
  v47 = v0[34];
  v48 = v0[32];
  v49 = v0[33];
  static Date.now.getter();
  v50 = *(v46 + 28);
  outlined destroy of UTType?(v45 + v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = *(v49 + 16);
  v51(v45 + v50, v47, v48);
  v52 = *(v49 + 56);
  v52(v45 + v50, 0, 1, v48);
  v53 = *(v46 + 56);
  outlined destroy of UTType?(v45 + v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51(v45 + v53, v47, v48);
  v128 = v52;
  v52(v45 + v53, 0, 1, v48);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v54 = static DefaultsManager.momentsUI;
  v55 = v137;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    [v54 setValue:isa forKey:v57];
  }

  v58 = v137[46];
  v59 = v137[43];
  v60 = v137[40];
  v61 = v137[35];
  v63 = v137[31];
  v62 = v137[32];
  v64 = (v58 + *(v59 + 68));

  *v64 = xmmword_21658F9D0;
  static Date.distantPast.getter();
  v128(v63, 0, 1, v62);
  outlined assign with take of Date?(v63, v58 + *(v59 + 72));
  v65 = CloudDevice.description()();
  v130(v60, v132, v61);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v137[40];
  v70 = v137[35];
  if (v68)
  {
    v129 = v137[40];
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v138[0] = v72;
    *v71 = 136446722;
    swift_beginAccess();
    v73 = StaticString.description.getter();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v138);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    *(v71 + 22) = 2080;
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65._countAndFlagsBits, v65._object, v138);

    *(v71 + 24) = v76;
    _os_log_impl(&dword_21607C000, v66, v67, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v71, 0x20u);
    swift_arrayDestroy();
    v77 = v72;
    v55 = v137;
    MEMORY[0x21CE94770](v77, -1, -1);
    MEMORY[0x21CE94770](v71, -1, -1);

    v79 = v70;
    v78 = v129;
  }

  else
  {

    v78 = v69;
    v79 = v70;
  }

  v136(v78, v79);
  v81 = v55[45];
  v80 = v55[46];
  v82 = *v80;
  v83 = v80[1];
  outlined init with copy of CloudDevice(v80, v81, type metadata accessor for CloudDevice);
  v84 = *(v2 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138[0] = v84;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v82, v83, isUniquelyReferenced_nonNull_native);

  *(v2 + 8) = v138[0];

  CloudDevicesDB.persistLocalData()();
  v87 = v55[35];
  if (v86)
  {
    v130(v55[37], v132, v87);
    v88 = v86;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v91 = os_log_type_enabled(v89, v90);
    v92 = v55[46];
    v93 = v55[37];
    v94 = v55[34];
    v95 = v55[35];
    v96 = v55[32];
    v97 = v55[33];
    if (v91)
    {
      v134 = v55[32];
      v98 = swift_slowAlloc();
      v131 = v93;
      v99 = swift_slowAlloc();
      v133 = v92;
      v100 = swift_slowAlloc();
      v138[0] = v100;
      *v98 = 136446722;
      swift_beginAccess();
      v101 = StaticString.description.getter();
      v127 = v95;
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v138);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2082;
      *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
      *(v98 + 22) = 2112;
      v104 = v86;
      v105 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 24) = v105;
      *v99 = v105;
      _os_log_impl(&dword_21607C000, v89, v90, "%{public}s.%{public}s Failed to persist local data: %@", v98, 0x20u);
      outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v99, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v100, -1, -1);
      MEMORY[0x21CE94770](v98, -1, -1);

      v136(v131, v127);
      (*(v97 + 8))(v94, v134);
      v106 = v133;
    }

    else
    {

      v136(v93, v95);
      (*(v97 + 8))(v94, v96);
      v106 = v92;
    }

    outlined destroy of CloudDevice(v106, type metadata accessor for CloudDevice);
    v0 = v55;
LABEL_22:
    static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v43 = v0[1];

    return v43();
  }

  v130(v55[39], v132, v87);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = v55[46];
    v110 = v55[43];
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v138[0] = v112;
    *v111 = 136446722;
    swift_beginAccess();
    v113 = StaticString.description.getter();
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v138);

    *(v111 + 4) = v115;
    *(v111 + 12) = 2082;
    *(v111 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7250656D6F636562, 0xEF29287972616D69, v138);
    *(v111 + 22) = 2080;
    swift_beginAccess();
    v116 = (v109 + *(v110 + 32));
    if (v116[1])
    {
      v117 = *v116;
      v118 = v116[1];
    }

    else
    {
      v118 = 0xE700000000000000;
      v117 = 0x6E776F6E6B6E55;
    }

    v123 = v55[39];
    v124 = v55[35];

    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v138);

    *(v111 + 24) = v125;
    _os_log_impl(&dword_21607C000, v107, v108, "%{public}s.%{public}s Became Primary: %s", v111, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v112, -1, -1);
    MEMORY[0x21CE94770](v111, -1, -1);

    v121 = v123;
    v122 = v124;
  }

  else
  {
    v119 = v55[39];
    v120 = v55[35];

    v121 = v119;
    v122 = v120;
  }

  v136(v121, v122);
  v126 = swift_task_alloc();
  v55[47] = v126;
  *v126 = v55;
  v126[1] = CloudDevicesDB.becomePrimary();

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v1, 0);
}

{
  v1 = v0[29];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[48] = v3;
  if (v3 && (type metadata accessor for CloudManager(0), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[49] = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.becomePrimary();

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0x7250656D6F636562, 0xEF29287972616D69, 974);
  }

  else
  {
    v6 = v0[46];
    (*(v0[33] + 8))(v0[34], v0[32]);
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.becomePrimary(), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[46];
  (*(v0[33] + 8))(v0[34], v0[32]);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("becomePrimary()", 15, 2, v0[30], &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}

void CloudDevicesDB.primaryDevice.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudDevice(0);
  v23[0] = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 2 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state))
    {
      v15 = *(v9 + 8);
      v16 = 1 << *(v15 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v15 + 64);
      v19 = (v16 + 63) >> 6;

      v20 = 0;
      while (v18)
      {
LABEL_16:
        outlined init with copy of CloudDevice(*(v15 + 56) + *(v23[0] + 72) * (__clz(__rbit64(v18)) | (v20 << 6)), v8, type metadata accessor for CloudDevice);
        outlined init with take of CloudDevice(v8, v6, type metadata accessor for CloudDevice);
        v22 = v6[*(v3 + 60)];
        if (v22 != 2 && (v22 & 1) != 0)
        {

          outlined init with take of CloudDevice(v6, a1, type metadata accessor for CloudDevice);
          (*(v23[0] + 56))(a1, 0, 1, v3);
          return;
        }

        v18 &= v18 - 1;
        outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          (*(v23[0] + 56))(a1, 1, 1, v3);
          return;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v14 = *(v23[0] + 56);

      v14(a1, 1, 1, v3);
    }
  }

  else
  {

    static CloudDevice.primaryPhone(in:)(v10, a1);

    v12 = *(v9 + 8);
    MEMORY[0x28223BE20](v11);
    v23[-2] = a1;

    v13 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in CloudDevicesDB.primaryDevice.getter, &v23[-4], v12);

    *(v9 + 8) = v13;
  }
}

uint64_t static CloudDevicesDB.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudDevicesDB.Class = a1;
  unk_27CA92698 = a2;
  byte_27CA926A0 = a3;
  return result;
}

uint64_t static CloudDevicesDB.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudDevicesDB.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudDevicesDB.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CloudDevicesDB.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudDevicesDB@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t one-time initialization function for cloudRecordTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658CA50;
  v1 = type metadata accessor for CloudDevice(0);
  result = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice, &protocol conformance descriptor for CloudDevice);
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  static CloudDevicesDB.cloudRecordTypes = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658E190;
  v1 = type metadata accessor for CloudSyncSnapshot();
  v2 = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncSnapshot and conformance CloudSyncSnapshot, type metadata accessor for CloudSyncSnapshot, &protocol conformance descriptor for CloudSyncSnapshot);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CloudSyncSuggestion();
  v4 = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncSuggestion and conformance CloudSyncSuggestion, type metadata accessor for CloudSyncSuggestion, &protocol conformance descriptor for CloudSyncSuggestion);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CloudSyncAssetData();
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CloudSyncAssetData and conformance CloudSyncAssetData, type metadata accessor for CloudSyncAssetData, &protocol conformance descriptor for CloudSyncAssetData);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  static CloudSyncDB.cloudRecordTypes = v0;
  return result;
}

double static CloudDevicesDB.cloudRecordTypes.getter()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static CloudDevicesDB.cloudRecordTypes.setter(uint64_t a1)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevicesDB.cloudRecordTypes = a1;

  return result;
}

uint64_t (*static CloudDevicesDB.cloudRecordTypes.modify(uint64_t a1))()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

double key path getter for static CloudDevicesDB.cloudRecordTypes : CloudDevicesDB.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CloudDevicesDB.cloudRecordTypes;

  return result;
}

double key path setter for static CloudDevicesDB.cloudRecordTypes : CloudDevicesDB.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for cloudRecordTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevicesDB.cloudRecordTypes = v1;

  return result;
}

void one-time initialization function for defaultDeviceDBURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, static CloudDevicesDB.defaultDeviceDBURL);
  __swift_project_value_buffer(v4, static CloudDevicesDB.defaultDeviceDBURL);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      strcpy(v12, "Devices.json");
      HIBYTE(v12[6]) = 0;
      v12[7] = -5120;
      (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v8, v4);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t CloudDevicesDB.Log.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static CloudDevicesDB.defaultDeviceDBURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultDeviceDBURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static CloudDevicesDB.defaultDeviceDBURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double key path setter for CloudDevicesDB.cloudManager : CloudDevicesDB(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return result;
}

double CloudDevicesDB.cloudManager.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

uint64_t CloudDevicesDB.onboarded.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CloudDevicesDB.onboarded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CloudDevicesDB.State.CodingKeys()
{
  v1 = 0x53746E756F636361;
  v2 = 0x73656369766564;
  if (*v0 != 2)
  {
    v2 = 0x697665446174656DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudDevicesDB.State.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CloudDevicesDB.State.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudDevicesDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudDevicesDB.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudDevicesDB.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v17 = v1[1];
  v9 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = v8;
  v18 = 0;
  lazy protocol witness table accessor for type CloudManagerAccountState and conformance CloudManagerAccountState();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v12;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI11CloudDeviceVGMd, &_sSDySS9MomentsUI11CloudDeviceVGMR);
    lazy protocol witness table accessor for type [String : CloudDevice] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI15CloudMetaDeviceVGMd, &_sSDySS9MomentsUI15CloudMetaDeviceVGMR);
    lazy protocol witness table accessor for type [String : CloudMetaDevice] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

MomentsUI::CloudDevicesDB::State __swiftcall CloudDevicesDB.State.init()()
{
  v1 = v0;
  *v0 = 515;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(v2);
  *(v1 + 16) = v3;
  result.metaDevices._rawValue = v5;
  result.devices._rawValue = v4;
  result.accountState = v3;
  result.cloudQuotaExceeded = SBYTE1(v3);
  return result;
}

MomentsUI::CloudDevicesDB::State __swiftcall CloudDevicesDB.State.init(accountState:cloudQuotaExceeded:devices:metaDevices:)(MomentsUI::CloudManagerAccountState_optional accountState, Swift::Bool_optional cloudQuotaExceeded, Swift::OpaquePointer devices, Swift::OpaquePointer metaDevices)
{
  *v4 = *accountState.value;
  *(v4 + 1) = cloudQuotaExceeded;
  *(v4 + 8) = devices;
  *(v4 + 16) = metaDevices;
  result.metaDevices = devices;
  LOBYTE(result.devices._rawValue) = cloudQuotaExceeded;
  result.accountState = accountState;
  return result;
}

void CloudDevicesDB.State.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI14CloudDevicesDBC5StateV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = MEMORY[0x277D84F90];
  v14[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v6;
    v17 = 0;
    lazy protocol witness table accessor for type CloudManagerAccountState and conformance CloudManagerAccountState();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v15;
    LOBYTE(v15) = 1;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI11CloudDeviceVGMd, &_sSDySS9MomentsUI11CloudDeviceVGMR);
    v17 = 2;
    lazy protocol witness table accessor for type [String : CloudDevice] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS9MomentsUI15CloudMetaDeviceVGMd, &_sSDySS9MomentsUI15CloudMetaDeviceVGMR);
    v17 = 3;
    lazy protocol witness table accessor for type [String : CloudMetaDevice] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 8))(v8, v5);

    v13 = v15;
    *a2 = v11;
    *(a2 + 1) = v16;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

double CloudDevicesDB.devices.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8) = a1;

  return result;
}

double (*CloudDevicesDB.devices.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  a1[2] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *a1 = *(v1 + v2 + 8);
  a1[1] = v1;

  return CloudDevicesDB.devices.modify;
}

double CloudDevicesDB.devices.modify(uint64_t *a1)
{
  *(a1[1] + a1[2] + 8) = *a1;

  return result;
}

double CloudDevicesDB.metaDevices.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16) = a1;

  return result;
}

double (*CloudDevicesDB.metaDevices.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  a1[2] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *a1 = *(v1 + v2 + 16);
  a1[1] = v1;

  return CloudDevicesDB.metaDevices.modify;
}

double CloudDevicesDB.metaDevices.modify(uint64_t *a1)
{
  *(a1[1] + a1[2] + 16) = *a1;

  return result;
}

uint64_t CloudDevicesDB.primaryDevicePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<CloudDevice?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMR, MEMORY[0x277CBCE20]);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CloudDevicesDB._isRefreshing.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t CloudDevicesDB.newlyOnboardedDevicesPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type CurrentValueSubject<[CloudDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMR, MEMORY[0x277CBCE48]);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t key path getter for CloudDevicesDB.snapshotEventAggregation : CloudDevicesDB@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v11[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v11[3] = v3[3];
  v11[4] = v6;
  v11[2] = v5;
  v11[1] = v4;
  v7 = v3[3];
  a2[2] = v3[2];
  a2[3] = v7;
  a2[4] = v3[4];
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  return outlined init with copy of DateInterval?(v11, v10, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
}

uint64_t key path setter for CloudDevicesDB.snapshotEventAggregation : CloudDevicesDB(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17 = a1[4];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v18[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v18[3] = v4[3];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v8 = v15;
  v9 = v17;
  v10 = v14;
  v4[3] = v16;
  v4[4] = v9;
  v4[1] = v10;
  v4[2] = v8;
  *v4 = v13;
  outlined init with copy of DateInterval?(&v13, v12, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
  return outlined destroy of UTType?(v18, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
}

uint64_t CloudDevicesDB.snapshotEventAggregation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return outlined init with copy of DateInterval?(v10, v9, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
}

uint64_t CloudDevicesDB.snapshotEventAggregation.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v9[4] = v3[4];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  return outlined destroy of UTType?(v9, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
}

uint64_t key path setter for CloudDevicesDB.lastSnapshotAnalyticsCreationDate : CloudDevicesDB(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of DateInterval?(a1, &v14 - v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t CloudDevicesDB.lastSnapshotAnalyticsCreationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t CloudDevicesDB.lastSnapshotAnalyticsCreationDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t CloudDevicesDB.__allocating_init(emptyDB:config:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = swift_allocObject();
  CloudDevicesDB.init(emptyDB:config:)(v3, a2);
  return v4;
}

char *CloudDevicesDB.init(emptyDB:config:)(int a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = *v2;
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v49 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_deviceDBURL;
  if (one-time initialization token for defaultDeviceDBURL != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, static CloudDevicesDB.defaultDeviceDBURL);
  v53 = *(v7 + 16);
  v54 = v15;
  v49 = v16;
  v53(v3 + v15);
  v17 = (v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  *v17 = 0;
  v17[1] = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboardedSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded) = 2;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__accountStateSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGenerationSubscription) = 0;
  v18 = (v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpaceSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace) = 3;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cloudQuotaExceededSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailableSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable) = 2;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailableSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable) = 2;
  v19 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_primaryDeviceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMR);
  swift_allocObject();
  *(v3 + v19) = PassthroughSubject.init()();
  v20 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB___isRefreshing;
  LOBYTE(v58[0]) = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v3 + v20, v14, v11);
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cancelRefresh) = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__lastFullRefresh;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(v3 + v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_newlyOnboardedDevicesSubject;
  v58[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMR);
  swift_allocObject();
  *(v3 + v24) = CurrentValueSubject.init(_:)();
  *(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber) = 0;
  v25 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotWeeklyAnalytics;
  type metadata accessor for DBSnapshotWeeklyAnalytics(0);
  swift_allocObject();
  *(v3 + v25) = DBSnapshotWeeklyAnalytics.init()();
  v26 = v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation;
  *v26 = 1;
  *(v26 + 9) = 0;
  *(v26 + 56) = 0u;
  *(v26 + 40) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 8) = 0u;
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotAnalyticsCreationDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21658CA50;
  v28 = MEMORY[0x277D839D8];
  *(v27 + 56) = MEMORY[0x277D839B0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v50 & 1;
  v29 = v51;
  static CloudLog.LogBegin(_:_:)(v27, "init(emptyDB:config:)", 21, 2, v51, &protocol witness table for CloudDevicesDB);

  v30 = v52;
  if (*(v52 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000216583B10), (v32 & 1) != 0))
  {
    outlined init with copy of Any(*(v30 + 56) + 32 * v31, v58);

    v33 = v56;
    v34 = swift_dynamicCast();
    (*(v7 + 56))(v33, v34 ^ 1u, 1, v6);
    v35 = (*(v7 + 48))(v33, 1, v6);
    v36 = v55;
    if (v35 != 1)
    {
      (*(v7 + 32))(v55, v33, v6);
      v37 = v57;
      v38 = v53;
      goto LABEL_10;
    }
  }

  else
  {

    v33 = v56;
    (*(v7 + 56))(v56, 1, 1, v6);
    v36 = v55;
  }

  v38 = v53;
  (v53)(v36, v49, v6);
  v39 = (*(v7 + 48))(v33, 1, v6);
  v37 = v57;
  if (v39 != 1)
  {
    outlined destroy of UTType?(v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

LABEL_10:
  v40 = v54;
  swift_beginAccess();
  (*(v7 + 40))(v3 + v40, v36, v6);
  swift_endAccess();
  v38(v37, v3 + v40, v6);
  v41 = Data.init(contentsOf:options:)();
  v43 = v42;
  (*(v7 + 8))(v37, v6);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type CloudDevicesDB.State and conformance CloudDevicesDB.State();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v41, v43);

  v46 = BYTE1(v58[0]);
  v47 = v58[1];
  v48 = v58[2];
  v44 = v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *v44 = v58[0];
  v44[1] = v46;
  *(v44 + 1) = v47;
  *(v44 + 2) = v48;
  static CloudLog.LogEnd(_:)("init(emptyDB:config:)", 21, 2, v29, &protocol witness table for CloudDevicesDB);
  return v3;
}

uint64_t CloudDevicesDB.initialized()()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMd, &_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMR);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd, &_s7Combine9PublishedV9PublisherVySbSg_GMR);
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMR);
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v0, 0);
}

{
  v1 = v0[12];
  static CloudLog.LogBegin(_:_:)(0, "initialized()", 13, 2, v0[13], &protocol witness table for CloudDevicesDB);
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v3 = *v2;
  v0[29] = *v2;
  if (v3)
  {
    v4 = v2[1];
    v0[30] = v4;
    v0[31] = swift_getObjectType();
    v0[32] = *(v4 + 248);
    v0[33] = (v4 + 248) & 0xFFFFFFFFFFFFLL | 0xB8A8000000000000;
    swift_unknownObjectRetain();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[34] = v6;
    v0[35] = v5;

    return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v6, v5);
  }

  else
  {
    v7 = v0[12];
    v8 = [objc_opt_self() defaultCenter];
    v9 = *MEMORY[0x277CBE620];
    v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v0[5] = &block_descriptor_30;
    v10 = _Block_copy(v0 + 2);

    v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
    v12 = swift_task_alloc();
    v0[67] = v12;
    *v12 = v0;
    v12[1] = CloudDevicesDB.initialized();

    return CloudDevicesDB.checkDB(forceUpdate:)(0);
  }
}

{
  v1 = *(v0 + 240);
  (*(v0 + 256))(*(v0 + 248), v1);
  *(v0 + 288) = *(v1 + 264);
  *(v0 + 296) = (v1 + 264) & 0xFFFFFFFFFFFFLL | 0xBE62000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 288))(*(v0 + 248), v1);
  *(v0 + 304) = *(v1 + 328);
  *(v0 + 312) = (v1 + 328) & 0xFFFFFFFFFFFFLL | 0x5804000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 304))(*(v0 + 248), v1);
  *(v0 + 320) = *(v1 + 280);
  *(v0 + 328) = (v1 + 280) & 0xFFFFFFFFFFFFLL | 0x4AFD000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 320))(*(v0 + 248), v1);
  *(v0 + 336) = *(v1 + 288);
  *(v0 + 344) = (v1 + 288) & 0xFFFFFFFFFFFFLL | 0x75DB000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 336))(*(v0 + 248), v1);
  *(v0 + 352) = *(v1 + 296);
  *(v0 + 360) = (v1 + 296) & 0xFFFFFFFFFFFFLL | 0x9CEE000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 240);
  (*(v0 + 352))(*(v0 + 248), v1);
  *(v0 + 368) = *(v1 + 304);
  *(v0 + 376) = (v1 + 304) & 0xFFFFFFFFFFFFLL | 0xB4E9000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v2, v3);
}

{
  v1 = *(v0 + 96);
  (*(v0 + 368))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[28];
  v2 = v0[12];
  v3 = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, type metadata accessor for CloudDevicesDB, &protocol conformance descriptor for CloudDevicesDB);
  v0[48] = v3;
  v4 = swift_task_alloc();
  v0[49] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, v3, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #1 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[25];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[51] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #2 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[19];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[53] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #3 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = swift_task_alloc();
  v0[55] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = CloudDevicesDB.initialized();
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #4 in CloudDevicesDB.initialized(), v5, v7);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[24];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[57] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #5 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[59] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[60] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #6 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[48];
  v2 = v0[22];
  v3 = v0[12];
  v4 = swift_task_alloc();
  v0[61] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = CloudDevicesDB.initialized();
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v1, 0x696C616974696E69, 0xED0000292864657ALL, partial apply for closure #7 in CloudDevicesDB.initialized(), v4, v6);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber;
  v0[63] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotEventSubscriber;
  if (*(v1 + v2))
  {
    swift_unknownObjectRelease();
    v3 = v0[27];
    v25 = v0[26];
    v26 = v0[28];
    v4 = v0[23];
    v5 = v0[20];
    v23 = v0[19];
    v24 = v0[25];
    v6 = v0[18];
    v21 = v0[24];
    v22 = v0[17];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = *(v0[21] + 8);
    v10(v0[22], v5);
    v10(v4, v5);
    v10(v21, v5);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v23, v22);
    v10(v24, v5);
    (*(v3 + 8))(v26, v25);
    v11 = v0[12];
    v12 = [objc_opt_self() defaultCenter];
    v13 = *MEMORY[0x277CBE620];
    v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
    v0[7] = v11;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v0[5] = &block_descriptor_30;
    v14 = _Block_copy(v0 + 2);

    v15 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = CloudDevicesDB.initialized();

    return CloudDevicesDB.checkDB(forceUpdate:)(0);
  }

  else
  {
    v18 = v0[30] + 360;
    v0[64] = *v18;
    v0[65] = v18 & 0xFFFFFFFFFFFFLL | 0x1E7D000000000000;
    v19 = v0[34];
    v20 = v0[35];

    return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v19, v20);
  }
}

{
  v1 = *(v0 + 96);
  *(v0 + 528) = (*(v0 + 512))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  v1 = v0[63];
  v2 = v0[12];
  v3 = v0[13];
  v0[11] = v0[66];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<DBSnapshotAnalytics.SnapshotEvent?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMR, MEMORY[0x277CBCD90]);
  v5 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();

  *(v2 + v1) = v5;

  v6 = v0[27];
  v25 = v0[26];
  v26 = v0[28];
  v7 = v0[23];
  v8 = v0[20];
  v23 = v0[19];
  v24 = v0[25];
  v9 = v0[18];
  v21 = v0[24];
  v22 = v0[17];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = *(v0[21] + 8);
  v13(v0[22], v8);
  v13(v7, v8);
  v13(v21, v8);
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v23, v22);
  v13(v24, v8);
  (*(v6 + 8))(v26, v25);
  v14 = v0[12];
  v15 = [objc_opt_self() defaultCenter];
  v16 = *MEMORY[0x277CBE620];
  v0[6] = partial apply for closure #9 in CloudDevicesDB.initialized();
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v0[5] = &block_descriptor_30;
  v17 = _Block_copy(v0 + 2);

  v18 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v17];
  _Block_release(v17);

  swift_unknownObjectRelease();
  v19 = swift_task_alloc();
  v0[67] = v19;
  *v19 = v0;
  v19[1] = CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.initialized(), v1, 0);
}

{
  static CloudLog.LogEnd(_:)("initialized()", 13, 2, *(v0 + 104), &protocol witness table for CloudDevicesDB);

  v1 = *(v0 + 8);

  return v1();
}

double closure #1 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMR);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMR);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd, &_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMR, MEMORY[0x277CBCEC8]);
  Publisher.removeDuplicates(by:)();
  (*(v4 + 16))(v6, v18, v3);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v20;
  *(v12 + 24) = v10;
  (*(v4 + 32))(v12 + v11, v6, v3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GGMR, MEMORY[0x277CBCBE0]);

  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v14);
  *(v13 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__accountStateSubscription) = v15;

  return result;
}

void closure #2 in closure #1 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v15 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state);
  if (v12 != 3)
  {
    v31 = v13;
    v32 = a4;
    if (v15 == 3)
    {
      v16 = v13;
      goto LABEL_7;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v19 = 0x65696E6544636374;
      }

      else
      {
        v19 = 0x6E4964656E676973;
      }

      if (v12 == 1)
      {
        v20 = 0xE900000000000064;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (v15)
      {
LABEL_19:
        if (v15 == 1)
        {
          v21 = 0x65696E6544636374;
        }

        else
        {
          v21 = 0x6E4964656E676973;
        }

        if (v15 == 1)
        {
          v22 = 0xE900000000000064;
        }

        else
        {
          v22 = 0xE800000000000000;
        }

        if (v19 != v21)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0xE900000000000074;
      v19 = 0x754F64656E676973;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    v22 = 0xE900000000000074;
    if (v19 != 0x754F64656E676973)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v20 == v22)
    {
      v23 = v13;

      goto LABEL_32;
    }

LABEL_31:
    v29[1] = v20;
    v24 = v13;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v25 = v24;

    if ((v30 & 1) == 0)
    {
LABEL_7:
      *(a2 + v14) = v12;
      v17 = 1;
      if (v12 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

LABEL_32:
    v17 = 0;
    if (v12 != 2)
    {
      goto LABEL_33;
    }

LABEL_35:
    (*(v9 + 16))(v11, v32, v8);
    v27 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = v17;
    *(v28 + 32) = a3;
    (*(v9 + 32))(v28 + v27, v11, v8);

    specialized BTask.init(name:operation:)(0xD000000000000036, 0x8000000216584780, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized(), v28);

    return;
  }

  if (v15 != 3)
  {
    v31 = v13;
    v32 = a4;
    v18 = v13;
    v17 = 0;
    if (v15 == 2)
    {
      goto LABEL_35;
    }

LABEL_33:
    CloudDevicesDB.deleteLocalData()();
    if (v26)
    {
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v6[8] = a5;
  v6[9] = a6;
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(v7);
}

uint64_t closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()()
{

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized(), 0, 0);
}

uint64_t CloudDevicesDB.checkDB(forceUpdate:)(char a1)
{
  *(v2 + 840) = v1;
  *(v2 + 2206) = a1;
  *(v2 + 848) = *v1;
  *(v2 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  *(v2 + 880) = swift_task_alloc();
  v3 = type metadata accessor for CloudDevice(0);
  *(v2 + 888) = v3;
  *(v2 + 896) = *(v3 - 8);
  *(v2 + 904) = swift_task_alloc();
  *(v2 + 912) = swift_task_alloc();
  *(v2 + 920) = swift_task_alloc();
  *(v2 + 928) = swift_task_alloc();
  *(v2 + 936) = swift_task_alloc();
  *(v2 + 944) = swift_task_alloc();
  *(v2 + 952) = swift_task_alloc();
  *(v2 + 960) = swift_task_alloc();
  *(v2 + 968) = swift_task_alloc();
  *(v2 + 976) = swift_task_alloc();
  *(v2 + 984) = swift_task_alloc();
  *(v2 + 992) = swift_task_alloc();
  *(v2 + 1000) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 1008) = v4;
  *(v2 + 1016) = *(v4 - 8);
  *(v2 + 1024) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v2 + 1032) = v5;
  *(v2 + 1040) = *(v5 - 8);
  *(v2 + 1048) = swift_task_alloc();
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  *(v2 + 1080) = swift_task_alloc();
  *(v2 + 1088) = swift_task_alloc();
  *(v2 + 1096) = swift_task_alloc();
  *(v2 + 1104) = swift_task_alloc();
  *(v2 + 1112) = swift_task_alloc();
  *(v2 + 1120) = swift_task_alloc();
  *(v2 + 1128) = swift_task_alloc();
  *(v2 + 1136) = swift_task_alloc();
  *(v2 + 1144) = swift_task_alloc();
  *(v2 + 1152) = swift_task_alloc();
  *(v2 + 1160) = swift_task_alloc();
  *(v2 + 1168) = swift_task_alloc();
  *(v2 + 1176) = swift_task_alloc();
  *(v2 + 1184) = swift_task_alloc();
  *(v2 + 1192) = swift_task_alloc();
  *(v2 + 1200) = swift_task_alloc();
  *(v2 + 1208) = swift_task_alloc();
  *(v2 + 1216) = swift_task_alloc();
  *(v2 + 1224) = swift_task_alloc();
  *(v2 + 1232) = swift_task_alloc();
  *(v2 + 1240) = swift_task_alloc();
  *(v2 + 1248) = swift_task_alloc();
  *(v2 + 1256) = swift_task_alloc();
  *(v2 + 1264) = swift_task_alloc();
  *(v2 + 1272) = swift_task_alloc();
  *(v2 + 1280) = swift_task_alloc();
  *(v2 + 1288) = swift_task_alloc();
  *(v2 + 1296) = swift_task_alloc();
  *(v2 + 1304) = swift_task_alloc();
  *(v2 + 1312) = swift_task_alloc();
  *(v2 + 1320) = swift_task_alloc();
  *(v2 + 1328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  *(v2 + 1352) = swift_task_alloc();
  *(v2 + 1360) = swift_task_alloc();
  *(v2 + 1368) = swift_task_alloc();
  *(v2 + 1376) = swift_task_alloc();
  *(v2 + 1384) = swift_task_alloc();
  *(v2 + 1392) = swift_task_alloc();
  *(v2 + 1400) = swift_task_alloc();
  *(v2 + 1408) = swift_task_alloc();
  *(v2 + 1416) = swift_task_alloc();
  *(v2 + 1424) = swift_task_alloc();
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1440) = swift_task_alloc();
  *(v2 + 1448) = swift_task_alloc();
  *(v2 + 1456) = swift_task_alloc();
  *(v2 + 1464) = swift_task_alloc();
  *(v2 + 1472) = swift_task_alloc();
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1488) = swift_task_alloc();
  *(v2 + 1496) = swift_task_alloc();
  *(v2 + 1504) = swift_task_alloc();
  *(v2 + 1512) = swift_task_alloc();
  *(v2 + 1520) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  *(v2 + 1536) = swift_task_alloc();
  *(v2 + 1544) = swift_task_alloc();
  *(v2 + 1552) = swift_task_alloc();
  *(v2 + 1560) = swift_task_alloc();
  *(v2 + 1568) = swift_task_alloc();
  *(v2 + 1576) = swift_task_alloc();
  *(v2 + 1584) = swift_task_alloc();
  *(v2 + 1592) = swift_task_alloc();
  *(v2 + 1600) = swift_task_alloc();
  *(v2 + 1608) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 1616) = v6;
  *(v2 + 1624) = *(v6 - 8);
  *(v2 + 1632) = swift_task_alloc();
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();
  *(v2 + 1656) = swift_task_alloc();
  *(v2 + 1664) = swift_task_alloc();
  *(v2 + 1672) = swift_task_alloc();
  *(v2 + 1680) = swift_task_alloc();
  *(v2 + 1688) = swift_task_alloc();
  *(v2 + 1696) = swift_task_alloc();
  *(v2 + 1704) = swift_task_alloc();
  *(v2 + 1712) = swift_task_alloc();
  *(v2 + 1720) = swift_task_alloc();
  *(v2 + 1728) = swift_task_alloc();
  *(v2 + 1736) = swift_task_alloc();
  *(v2 + 1744) = swift_task_alloc();
  *(v2 + 1752) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  *(v2 + 1760) = swift_task_alloc();
  *(v2 + 1768) = swift_task_alloc();
  *(v2 + 1776) = swift_task_alloc();
  *(v2 + 1784) = swift_task_alloc();
  *(v2 + 1792) = swift_task_alloc();
  *(v2 + 1800) = swift_task_alloc();
  *(v2 + 1808) = swift_task_alloc();
  *(v2 + 1816) = swift_task_alloc();
  *(v2 + 1824) = swift_task_alloc();
  *(v2 + 1832) = swift_task_alloc();
  *(v2 + 1840) = swift_task_alloc();
  *(v2 + 1848) = swift_task_alloc();
  *(v2 + 1856) = swift_task_alloc();
  *(v2 + 1864) = swift_task_alloc();
  *(v2 + 1872) = swift_task_alloc();
  *(v2 + 1880) = swift_task_alloc();
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  *(v2 + 1928) = swift_task_alloc();
  *(v2 + 1936) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v2 = *(*v1 + 840);
  *(*v1 + 2207) = a1;

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v2, 0);
}

uint64_t CloudDevicesDB.checkDB(forceUpdate:)()
{
  v935 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 2206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd, &_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D839B0];
  *(v3 + 16) = xmmword_21658CA50;
  v5 = MEMORY[0x277D839D8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  static CloudLog.LogBeginInfo(_:_:)(v3, "checkDB(forceUpdate:)", 21, 2, v1, &protocol witness table for CloudDevicesDB);

  swift_beginAccess();
  v6 = static CloudManager.deviceID;
  v7 = qword_2811A6948;
  *(v0 + 1944) = qword_2811A6948;
  if (!v6 && v7 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_297;
  }

  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v10)
  {

LABEL_297:
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v684 = *(v0 + 8);

    return v684();
  }

  v910 = v6;
  v11 = *(v0 + 1936);
  v12 = *(v0 + 1928);
  v13 = *(v0 + 896);
  v14 = *(v0 + 888);
  v15 = *(v0 + 840);
  v887 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v922 = v17;
  *(v0 + 1952) = v17;
  swift_beginAccess();
  v18 = static CloudManager.currentID;
  v19 = qword_2811A6918;
  *(v0 + 1960) = static CloudManager.currentID;
  *(v0 + 1968) = v19;
  v20 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  *(v0 + 1976) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v21 = v15 + v20;
  v22 = *(v21 + 8);

  specialized Dictionary.subscript.getter(v18, v19, v22, v11);

  v23 = *(v13 + 56);
  *(v0 + 1984) = v23;
  *(v0 + 1992) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v12, 1, 1, v14);
  v24 = *(v13 + 48);
  *(v0 + 2000) = v24;
  *(v0 + 2008) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v25 = v24(v11, 1, v14);
  *(v0 + 2200) = v25;
  if (v25 == 1)
  {
    v26 = v21;
    v870 = v23;
    v862 = v24;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 1752);
    v28 = *(v0 + 1624);
    v29 = *(v0 + 1616);
    v30 = __swift_project_value_buffer(v29, static CloudDevicesDB.Log);
    swift_beginAccess();
    v829 = v30;
    v827 = *(v28 + 16);
    v827(v27, v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1752);
    v35 = *(v0 + 1624);
    v36 = *(v0 + 1616);
    v866 = v26;
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v933 = v38;
      *v37 = 136446466;
      swift_beginAccess();
      v39 = StaticString.description.getter();
      v855 = v34;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v933);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
      _os_log_impl(&dword_21607C000, v31, v32, "%{public}s.%{public}s Restoring device state from defaults", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v37, -1, -1);

      (*(v35 + 8))(v855, v36);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    v46 = *(v0 + 1600);
    v47 = *(v0 + 1592);
    v48 = *(v0 + 1584);
    v49 = *(v0 + 1576);
    v50 = *(v0 + 1568);
    v51 = *(v0 + 1040);
    v52 = *(v0 + 1032);
    static DefaultsManager.Cloud.registrationDate.getter(*(v0 + 1608));
    static DefaultsManager.Cloud.onboardingDate.getter(v46);
    static DefaultsManager.Cloud.lastInformedOfNewlyOnboardedDevices.getter(v47);
    static DefaultsManager.Cloud.becamePrimaryDate.getter(v48);
    static DefaultsManager.Cloud.declinedPrimaryDate.getter(v49);
    outlined init with copy of DateInterval?(v48, v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v53 = *(v51 + 48);
    v54 = v53(v50, 1, v52);
    v55 = *(v0 + 1568);
    if (v54 == 1)
    {
      v56 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v55, 1, v56) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1568), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1328), *(v0 + 1568), *(v0 + 1032));
    }

    v64 = *(v0 + 1560);
    v65 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1576), v64, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v66 = v53(v64, 1, v65);
    v67 = *(v0 + 1560);
    if (v66 == 1)
    {
      v68 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v67, 1, v68) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1560), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1320), *(v0 + 1560), *(v0 + 1032));
    }

    v69 = *(v0 + 1552);
    v70 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1608), v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v71 = v53(v69, 1, v70);
    v72 = *(v0 + 1552);
    if (v71 == 1)
    {
      v73 = *(v0 + 1032);
      static Date.distantFuture.getter();
      if (v53(v72, 1, v73) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1552), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1312), *(v0 + 1552), *(v0 + 1032));
    }

    v74 = *(v0 + 1544);
    v75 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1600), v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v76 = v53(v74, 1, v75);
    v77 = *(v0 + 1544);
    if (v76 == 1)
    {
      v78 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v77, 1, v78) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1544), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1304), *(v0 + 1544), *(v0 + 1032));
    }

    v79 = *(v0 + 1536);
    v80 = *(v0 + 1032);
    outlined init with copy of DateInterval?(*(v0 + 1592), v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v81 = v53(v79, 1, v80);
    v82 = *(v0 + 1536);
    if (v81 == 1)
    {
      v83 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v53(v82, 1, v83) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1536), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1296), v82, *(v0 + 1032));
    }

    v84 = *(v0 + 1920);
    v85 = *(v0 + 1520);
    v86 = *(v0 + 1512);
    v837 = *(v0 + 1504);
    v87 = *(v0 + 1032);
    v88 = *(v0 + 1024);
    v89 = *(v0 + 1016);
    v856 = *(v0 + 1008);
    v90 = *(v0 + 888);
    v91 = *(*(v0 + 1040) + 56);
    (v91)(*(v0 + 1528), 1, 1, v87);
    (v91)(v85, 1, 1, v87);
    (v91)(v86, 1, 1, v87);
    (v91)(v837, 1, 1, v87);
    static Date.now.getter();
    static Date.distantPast.getter();
    static Date.distantPast.getter();

    UUID.init()();
    v92 = UUID.uuidString.getter();
    v94 = v93;
    (*(v89 + 8))(v88, v856);
    *v84 = v92;
    *(v84 + 8) = v94;
    *(v84 + 16) = 0u;
    *(v84 + 32) = 0u;
    v795 = v90[7];
    (v91)(v84 + v795, 1, 1, v87);
    v95 = (v84 + v90[8]);
    *v95 = 0;
    v95[1] = 0;
    v96 = (v84 + v90[9]);
    *v96 = 0;
    v96[1] = 0;
    v797 = v96;
    v97 = v84 + v90[10];
    *v97 = 0;
    v857 = 1;
    v799 = v97;
    *(v97 + 8) = 1;
    v98 = (v84 + v90[11]);
    *v98 = 0;
    v98[1] = 0;
    v801 = v98;
    v99 = (v84 + v90[12]);
    *v99 = 0;
    v99[1] = 0;
    v802 = v99;
    v803 = v90[13];
    *(v84 + v803) = MEMORY[0x277D84F90];
    v804 = v84 + v90[14];
    v91();
    *(v84 + v90[15]) = 2;
    v808 = v84 + v90[16];
    v91();
    v100 = (v84 + v90[17]);
    *v100 = 0;
    v100[1] = 0;
    v806 = v100;
    v809 = v84 + v90[18];
    v91();
    v811 = v84 + v90[19];
    v91();
    v821 = v84 + v90[20];
    v91();
    v101 = v84 + v90[21];
    (v91)(v101, 1, 1, v87);
    v838 = v84 + v90[22];
    v91();
    v825 = v84 + v90[23];
    v91();
    v823 = v84 + v90[24];
    v91();
    v815 = v84 + v90[25];
    v91();
    v817 = v84 + v90[26];
    *v817 = xmmword_21658E040;
    v102 = (v84 + v90[27]);
    *v102 = 0;
    v102[1] = 0;
    v813 = v102;
    v819 = v84 + v90[28];
    *v819 = xmmword_21658E040;
    v103 = v84 + v90[29];
    v845 = v91;
    (v91)(v103, 1, 1, v87);
    v104 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v104 = v910 & 0xFFFFFFFFFFFFLL;
    }

    if (v104)
    {
      v858 = v101;
      v105 = HIBYTE(v922) & 0xF;
      v106 = v887;
      if ((v922 & 0x2000000000000000) == 0)
      {
        v105 = v887 & 0xFFFFFFFFFFFFLL;
      }

      v107 = v922;
      if (v105)
      {
        v877 = v103;
        v833 = *(v0 + 1920);
        v108 = *(v0 + 1288);
        v109 = *(v0 + 1040);
        v110 = *(v0 + 1032);
        *(v84 + 16) = v910;
        *(v84 + 24) = v7;
        *(v84 + 32) = v887;
        *(v84 + 40) = v922;
        v933 = v910;
        v934 = v7;

        MEMORY[0x21CE92100](46, 0xE100000000000000);

        MEMORY[0x21CE92100](v887, v922);

        v111 = v934;
        *v833 = v933;
        *(v84 + 8) = v111;
        outlined destroy of UTType?(v84 + v795, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v109 + 16))(v84 + v795, v108, v110);
        (v845)(v84 + v795, 0, 1, v110);
        *v95 = specialized static CloudDevice._getDeviceName()();
        v95[1] = v112;
        *v797 = specialized static CloudDevice._getOSVersion()();
        v797[1] = v113;
        *v799 = specialized static CloudDevice._getIdiom()();
        *(v799 + 8) = 0;
        v114 = static Locale.preferredLanguages.getter();
        if (v114[2])
        {
          v116 = v114[4];
          v115 = v114[5];
        }

        else
        {

          v115 = 0xE200000000000000;
          v116 = 28261;
        }

        v913 = *(v0 + 1928);
        v924 = *(v0 + 1920);
        v900 = *(v0 + 1608);
        v834 = *(v0 + 1600);
        v830 = *(v0 + 1592);
        v828 = *(v0 + 1584);
        v800 = *(v0 + 1576);
        v792 = *(v0 + 1528);
        v793 = *(v0 + 1520);
        v794 = *(v0 + 1512);
        v796 = *(v0 + 1504);
        v163 = *(v0 + 1328);
        v787 = *(v0 + 1320);
        v789 = *(v0 + 1312);
        v790 = *(v0 + 1304);
        v791 = *(v0 + 1296);
        v164 = *(v0 + 1288);
        v788 = *(v0 + 1280);
        v798 = *(v0 + 1272);
        v165 = *(v0 + 1040);
        v166 = *(v0 + 1032);
        v890 = *(v0 + 888);
        *v801 = v116;
        v801[1] = v115;
        *v802 = specialized static CloudDevice._getProductType()();
        v802[1] = v167;
        (*(v165 + 8))(v164, v166);
        *(v84 + v803) = MEMORY[0x277D84F90];
        outlined destroy of UTType?(v804, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168 = *(v165 + 32);
        v168(v804, v163, v166);
        (v845)(v804, 0, 1, v166);
        outlined destroy of UTType?(v808, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v808, v787, v166);
        (v845)(v808, 0, 1, v166);
        *v806 = xmmword_21658F9D0;
        outlined destroy of UTType?(v809, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v809, v788, v166);
        (v845)(v809, 0, 1, v166);
        outlined destroy of UTType?(v811, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v811, v789, v166);
        (v845)(v811, 0, 1, v166);
        outlined destroy of UTType?(v821, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v821, v790, v166);
        (v845)(v821, 0, 1, v166);
        outlined destroy of UTType?(v858, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v858, v791, v166);
        (v845)(v858, 0, 1, v166);
        outlined assign with take of Date?(v792, v838);
        outlined assign with take of Date?(v793, v825);
        outlined assign with take of Date?(v794, v823);
        outlined assign with take of Date?(v796, v815);
        outlined consume of Data?(*v817, *(v817 + 8));
        *v817 = xmmword_21658E040;
        *v813 = 0;
        v813[1] = 0;
        outlined consume of Data?(*v819, *(v819 + 8));
        *v819 = xmmword_21658E040;
        outlined destroy of UTType?(v877, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168(v877, v798, v166);
        (v845)(v877, 0, 1, v166);
        outlined destroy of UTType?(v800, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of UTType?(v828, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of UTType?(v830, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of UTType?(v834, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of UTType?(v900, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of UTType?(v913, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v23 = v870;
        v870(v924, 0, 1, v890);
        outlined init with take of URL?(v924, v913, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v21 = v866;
        v24 = v862;
        goto LABEL_143;
      }

      v857 = 2;
    }

    else
    {
      v106 = v910;
      v107 = v7;
    }

    v872 = *(v0 + 1928);
    v875 = *(v0 + 1936);
    v841 = *(v0 + 1920);
    v889 = *(v0 + 1744);
    v912 = *(v0 + 1616);
    v865 = *(v0 + 1600);
    v868 = *(v0 + 1608);
    v864 = *(v0 + 1592);
    v846 = *(v0 + 1576);
    v851 = *(v0 + 1584);
    v816 = *(v0 + 1528);
    v812 = *(v0 + 1520);
    v810 = *(v0 + 1512);
    v807 = *(v0 + 1504);
    v839 = *(v0 + 1328);
    v824 = *(v0 + 1320);
    v820 = *(v0 + 1312);
    v818 = *(v0 + 1304);
    v814 = *(v0 + 1296);
    v826 = *(v0 + 1288);
    v822 = *(v0 + 1280);
    v805 = *(v0 + 1272);
    v139 = *(v0 + 1040);
    v140 = *(v0 + 1032);

    v141 = type metadata accessor for EncodingError();
    v142 = swift_allocError();
    v144 = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR);
    v144[3] = MEMORY[0x277D837D0];
    *v144 = v106;
    v144[1] = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_21658CA50;
    *(v145 + 56) = &type metadata for CloudDevice.CodingKeys;
    *(v145 + 64) = lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys();
    *(v145 + 32) = v857;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v141 - 8) + 104))(v144, *MEMORY[0x277D841A8], v141);
    swift_willThrow();
    v146 = *(v139 + 8);
    v146(v805, v140);
    outlined destroy of UTType?(v807, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v810, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v812, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v816, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v146(v814, v140);
    v146(v818, v140);
    v146(v820, v140);
    v146(v822, v140);
    v146(v824, v140);
    v146(v839, v140);
    v146(v826, v140);
    outlined destroy of CloudDevice(v841, type metadata accessor for CloudDevice);

    outlined destroy of UTType?(v846, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v851, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v864, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v865, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v868, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v872, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of UTType?(v875, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v827(v889, v829, v912);
    v147 = v142;
    v148 = v142;
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 1744);
    v153 = *(v0 + 1624);
    v154 = *(v0 + 1616);
    if (v151)
    {
      v931 = *(v0 + 1616);
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v933 = v157;
      *v155 = 136446722;
      swift_beginAccess();
      v158 = StaticString.description.getter();
      v923 = v152;
      v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, &v933);

      *(v155 + 4) = v160;
      *(v155 + 12) = 2082;
      *(v155 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
      *(v155 + 22) = 2112;
      v161 = v142;
      v162 = _swift_stdlib_bridgeErrorToNSError();
      *(v155 + 24) = v162;
      *v156 = v162;

      _os_log_impl(&dword_21607C000, v149, v150, "%{public}s.%{public}s Check failed: %@", v155, 0x20u);
      outlined destroy of UTType?(v156, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v156, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v157, -1, -1);
      MEMORY[0x21CE94770](v155, -1, -1);

      (*(v153 + 8))(v923, v931);
    }

    else
    {

      (*(v153 + 8))(v152, v154);
    }

    goto LABEL_248;
  }

  v42 = *(v0 + 1912);
  v43 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1936), v42, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v44 = v24(v42, 1, v43);
  v45 = *(v0 + 1912);
  if (v44 == 1)
  {
    outlined destroy of UTType?(v45, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_143;
  }

  v867 = v21;
  v57 = *(v0 + 1496);
  v58 = *(v0 + 1040);
  v59 = *(v0 + 1032);
  outlined init with take of CloudDevice(v45, *(v0 + 1000), type metadata accessor for CloudDevice);
  static DefaultsManager.Cloud.onboardingDate.getter(v57);
  v60 = *(v58 + 48);
  v61 = v60(v57, 1, v59);
  v62 = *(v0 + 1496);
  if (v61 == 1)
  {
    v63 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v62, 1, v63) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1496), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1264), *(v0 + 1496), *(v0 + 1032));
  }

  v117 = *(v0 + 1488);
  v118 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 80), v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v119 = v60(v117, 1, v118);
  v120 = *(v0 + 1488);
  if (v119 == 1)
  {
    v121 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v120, 1, v121) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1488), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1256), *(v0 + 1488), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v122 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v124 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
      [v122 setValue:isa forKey:v124];
    }
  }

  v125 = *(v0 + 1480);
  v126 = *(v0 + 1032);
  v888 = *(*(v0 + 888) + 76);
  v899 = *(v0 + 1000);
  outlined init with copy of DateInterval?(v899 + v888, v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v127 = v60(v125, 1, v126);
  v128 = *(v0 + 1480);
  if (v127 == 1)
  {
    v129 = *(v0 + 1032);
    static Date.distantFuture.getter();
    if (v60(v128, 1, v129) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1480), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1248), *(v0 + 1480), *(v0 + 1032));
  }

  v130 = *(v0 + 1240);
  v131 = *(v0 + 1040);
  v132 = *(v0 + 1032);
  static Date.distantFuture.getter();
  v133 = static Date.== infix(_:_:)();
  v911 = *(v131 + 8);
  v911(v130, v132);
  v863 = v24;
  v871 = v23;
  if (v133)
  {
    v134 = *(v0 + 1000) + *(*(v0 + 888) + 112);
    v135 = specialized static CloudSyncDB.getCKRecord(_:)(*v134, *(v134 + 8));
    if (v135)
    {
      v136 = v135;
      v137 = [v135 creationDate];

      if (v137)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v138 = 0;
      }

      else
      {
        v138 = 1;
      }

      v169 = *(v0 + 1472);
      v170 = *(v0 + 1464);
      v171 = *(v0 + 1032);
      v172 = *(*(v0 + 1040) + 56);
      v172(v170, v138, 1, v171);
      outlined init with take of URL?(v170, v169, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v60(v169, 1, v171) != 1)
      {
        v878 = v172;
        (*(*(v0 + 1040) + 32))(*(v0 + 1232), *(v0 + 1472), *(v0 + 1032));
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v173 = *(v0 + 1736);
        v174 = *(v0 + 1624);
        v175 = *(v0 + 1616);
        v859 = *(v0 + 1232);
        v176 = *(v0 + 1224);
        v177 = *(v0 + 1040);
        v178 = *(v0 + 1032);
        v179 = __swift_project_value_buffer(v175, static CloudDevicesDB.Log);
        swift_beginAccess();
        (*(v174 + 16))(v173, v179, v175);
        v852 = *(v177 + 16);
        v852(v176, v859, v178);
        v180 = Logger.logObject.getter();
        v847 = static os_log_type_t.info.getter();
        v181 = os_log_type_enabled(v180, v847);
        v182 = *(v0 + 1928);
        v183 = *(v0 + 1736);
        v184 = *(v0 + 1624);
        v185 = *(v0 + 1616);
        v186 = *(v0 + 1224);
        v187 = *(v0 + 1032);
        if (v181)
        {
          v842 = *(v0 + 1616);
          v188 = swift_slowAlloc();
          v835 = swift_slowAlloc();
          v933 = v835;
          *v188 = 136446722;
          swift_beginAccess();
          v189 = StaticString.description.getter();
          v831 = v183;
          v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v190, &v933);

          *(v188 + 4) = v191;
          *(v188 + 12) = 2082;
          *(v188 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
          *(v188 + 22) = 2080;
          lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v192 = dispatch thunk of CustomStringConvertible.description.getter();
          v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v193, &v933);

          *(v188 + 24) = v194;
          v911(v186, v187);
          _os_log_impl(&dword_21607C000, v180, v847, "%{public}s.%{public}s Importing registration date from CloudKit: %s", v188, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v835, -1, -1);
          MEMORY[0x21CE94770](v188, -1, -1);

          (*(v184 + 8))(v831, v842);
        }

        else
        {

          v911(v186, v187);
          (*(v184 + 8))(v183, v185);
        }

        outlined destroy of UTType?(v182, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v195 = *(v0 + 1928);
        v848 = *(v0 + 1248);
        v196 = *(v0 + 1232);
        v197 = *(v0 + 1040);
        v198 = *(v0 + 1032);
        v199 = *(v0 + 1000);
        v843 = *(v0 + 888);
        outlined destroy of UTType?(v899 + v888, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v852(v899 + v888, v196, v198);
        v878(v899 + v888, 0, 1, v198);
        outlined init with copy of CloudDevice(v199, v195, type metadata accessor for CloudDevice);
        v871(v195, 0, 1, v843);
        (*(v197 + 40))(v848, v196, v198);
        goto LABEL_80;
      }
    }

    else
    {
      (*(*(v0 + 1040) + 56))(*(v0 + 1472), 1, 1, *(v0 + 1032));
    }

    outlined destroy of UTType?(*(v0 + 1472), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_80:
  v200 = *(v0 + 1456);
  v201 = *(v0 + 1032);
  static DefaultsManager.Cloud.registrationDate.getter(v200);
  v202 = v60(v200, 1, v201);
  v203 = *(v0 + 1456);
  if (v202 == 1)
  {
    v204 = *(v0 + 1032);
    static Date.distantFuture.getter();
    if (v60(v203, 1, v204) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1456), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1216), *(v0 + 1456), *(v0 + 1032));
  }

  if (static Date.< infix(_:_:)())
  {
    (*(*(v0 + 1040) + 16))(*(v0 + 1208), *(v0 + 1248), *(v0 + 1032));
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v205 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v206 = Date._bridgeToObjectiveC()().super.isa;
      v207 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
      [v205 setValue:v206 forKey:v207];
    }

    v911(*(v0 + 1208), *(v0 + 1032));
  }

  v208 = *(v0 + 1240);
  v209 = *(v0 + 1032);
  static Date.distantPast.getter();
  lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v210 = dispatch thunk of static Equatable.== infix(_:_:)();
  v911(v208, v209);
  if ((v210 & 1) == 0)
  {
    v211 = *(v0 + 1240);
    v212 = *(v0 + 1032);
    static Date.distantFuture.getter();
    v213 = dispatch thunk of static Equatable.== infix(_:_:)();
    v911(v211, v212);
    if (v213 & 1) == 0 && (static Date.< infix(_:_:)())
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v214 = *(v0 + 1728);
      v215 = *(v0 + 1624);
      v216 = *(v0 + 1616);
      v879 = *(v0 + 1256);
      v217 = *(v0 + 1200);
      v218 = *(v0 + 1040);
      v219 = *(v0 + 1032);
      v220 = __swift_project_value_buffer(v216, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v215 + 16))(v214, v220, v216);
      v860 = *(v218 + 16);
      v860(v217, v879, v219);
      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.info.getter();
      v223 = os_log_type_enabled(v221, v222);
      v224 = *(v0 + 1928);
      v225 = *(v0 + 1728);
      v226 = *(v0 + 1624);
      v227 = *(v0 + 1616);
      if (v223)
      {
        v832 = *(v0 + 1200);
        v228 = *(v0 + 1032);
        v853 = *(v0 + 1616);
        v229 = swift_slowAlloc();
        v844 = swift_slowAlloc();
        v933 = v844;
        *v229 = 136446978;
        v849 = v224;
        swift_beginAccess();
        v230 = StaticString.description.getter();
        v836 = v225;
        v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v231, &v933);

        *(v229 + 4) = v232;
        *(v229 + 12) = 2082;
        *(v229 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
        *(v229 + 22) = 2080;
        swift_beginAccess();
        lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v233 = dispatch thunk of CustomStringConvertible.description.getter();
        v235 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v234, &v933);

        *(v229 + 24) = v235;
        *(v229 + 32) = 2080;
        v236 = dispatch thunk of CustomStringConvertible.description.getter();
        v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v237, &v933);

        *(v229 + 34) = v238;
        v911(v832, v228);
        _os_log_impl(&dword_21607C000, v221, v222, "%{public}s.%{public}s Adjusting registration date: %s to %s", v229, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v844, -1, -1);
        MEMORY[0x21CE94770](v229, -1, -1);

        (*(v226 + 8))(v836, v853);
        v239 = v849;
      }

      else
      {
        v240 = *(v0 + 1200);
        v241 = *(v0 + 1032);

        v911(v240, v241);
        (*(v226 + 8))(v225, v227);
        v239 = v224;
      }

      outlined destroy of UTType?(v239, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v242 = *(v0 + 1928);
      v243 = *(v0 + 1256);
      v850 = *(v0 + 1248);
      v854 = *(v0 + 1192);
      v244 = *(v0 + 1040);
      v245 = *(v0 + 1032);
      v840 = *(v0 + 1000);
      v246 = *(v0 + 888);
      outlined destroy of UTType?(v899 + v888, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v860(v899 + v888, v243, v245);
      (*(v244 + 56))(v899 + v888, 0, 1, v245);
      outlined init with copy of CloudDevice(v840, v242, type metadata accessor for CloudDevice);
      v871(v242, 0, 1, v246);
      swift_beginAccess();
      (*(v244 + 24))(v850, v243, v245);
      v860(v854, v850, v245);
      if (one-time initialization token for momentsUI != -1)
      {
        swift_once();
      }

      v247 = static DefaultsManager.momentsUI;
      if (static DefaultsManager.momentsUI)
      {
        v248 = Date._bridgeToObjectiveC()().super.isa;
        v249 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216581140);
        [v247 setValue:v248 forKey:v249];
      }

      v911(*(v0 + 1192), *(v0 + 1032));
    }
  }

  v250 = *(v0 + 1448);
  v251 = *(v0 + 1032);
  static DefaultsManager.Cloud.lastInformedOfNewlyOnboardedDevices.getter(v250);
  v252 = v60(v250, 1, v251);
  v253 = *(v0 + 1448);
  if (v252 == 1)
  {
    v254 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v253, 1, v254) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1448), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1184), *(v0 + 1448), *(v0 + 1032));
  }

  v255 = *(v0 + 1440);
  v256 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 84), v255, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v257 = v60(v255, 1, v256);
  v258 = *(v0 + 1440);
  if (v257 == 1)
  {
    v259 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v258, 1, v259) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1440), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1176), *(v0 + 1440), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v260 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v261 = Date._bridgeToObjectiveC()().super.isa;
      v262 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
      [v260 setValue:v261 forKey:v262];
    }
  }

  v263 = *(v0 + 1432);
  v264 = *(v0 + 1032);
  static DefaultsManager.Cloud.becamePrimaryDate.getter(v263);
  v265 = v60(v263, 1, v264);
  v266 = *(v0 + 1432);
  if (v265 == 1)
  {
    v267 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v266, 1, v267) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1432), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1168), *(v0 + 1432), *(v0 + 1032));
  }

  v268 = *(v0 + 1424);
  v269 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 56), v268, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v270 = v60(v268, 1, v269);
  v271 = *(v0 + 1424);
  if (v270 == 1)
  {
    v272 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v271, 1, v272) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1424), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1160), *(v0 + 1424), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v273 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v274 = Date._bridgeToObjectiveC()().super.isa;
      v275 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
      [v273 setValue:v274 forKey:v275];
    }
  }

  v276 = *(v0 + 1416);
  v277 = *(v0 + 1032);
  static DefaultsManager.Cloud.declinedPrimaryDate.getter(v276);
  v278 = v60(v276, 1, v277);
  v279 = *(v0 + 1416);
  if (v278 == 1)
  {
    v280 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v279, 1, v280) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1416), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1152), *(v0 + 1416), *(v0 + 1032));
  }

  v281 = *(v0 + 1408);
  v282 = *(v0 + 1032);
  outlined init with copy of DateInterval?(*(v0 + 1000) + *(*(v0 + 888) + 64), v281, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v283 = v60(v281, 1, v282);
  v284 = *(v0 + 1408);
  if (v283 == 1)
  {
    v285 = *(v0 + 1032);
    static Date.distantPast.getter();
    if (v60(v284, 1, v285) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1408), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 1040) + 32))(*(v0 + 1144), *(v0 + 1408), *(v0 + 1032));
  }

  if (static Date.> infix(_:_:)())
  {
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v286 = static DefaultsManager.momentsUI;
    if (static DefaultsManager.momentsUI)
    {
      v287 = Date._bridgeToObjectiveC()().super.isa;
      v288 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
      [v286 setValue:v287 forKey:v288];
    }
  }

  v861 = *(v0 + 1256);
  v901 = *(v0 + 1248);
  v289 = *(v0 + 1216);
  v290 = *(v0 + 1184);
  v291 = *(v0 + 1176);
  v292 = *(v0 + 1168);
  v293 = *(v0 + 1160);
  v294 = *(v0 + 1152);
  v295 = *(v0 + 1032);
  v880 = *(v0 + 1264);
  v891 = *(v0 + 1000);
  v911(*(v0 + 1144), v295);
  v911(v294, v295);
  v911(v293, v295);
  v911(v292, v295);
  v911(v291, v295);
  v911(v290, v295);
  v911(v289, v295);
  v911(v861, v295);
  v911(v880, v295);
  v911(v901, v295);
  outlined destroy of CloudDevice(v891, type metadata accessor for CloudDevice);
  v21 = v867;
  v24 = v863;
  v23 = v871;
LABEL_143:
  v296 = *(v0 + 1896);
  v297 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v296, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v24(v296, 1, v297) == 1)
  {
    v298 = *(v0 + 1896);
    v299 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1904), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v24(v298, 1, v299) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1896), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v300 = *(v0 + 1904);
    v301 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1896), v300, type metadata accessor for CloudDevice);
    v23(v300, 0, 1, v301);
  }

  v302 = *(v0 + 1904);
  if (v24(v302, 1, *(v0 + 888)) != 1)
  {
    v309 = *(v0 + 840);
    outlined init with take of CloudDevice(v302, *(v0 + 992), type metadata accessor for CloudDevice);
    v310 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration;
    *(v0 + 2016) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration;
    v311 = (v309 + v310);
    v313 = *v311;
    v312 = v311[1];
    *(v0 + 2024) = v312;
    v314 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace;
    *(v0 + 2032) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace;
    *(v0 + 2204) = *(v309 + v314);
    v315 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable;
    v316 = *(v21 + 1);
    *(v0 + 2040) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable;
    v317 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable;
    v318 = *(v309 + v315);
    *(v0 + 2048) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable;
    v319 = *(v309 + v317);

    v320 = swift_task_alloc();
    *(v0 + 2056) = v320;
    *v320 = v0;
    v320[1] = CloudDevicesDB.checkDB(forceUpdate:);
    v321 = *(v0 + 840);

    return CloudDevice.hasEnvironmentChanged(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v321, v313, v312, (v0 + 2204), v316, v318, v319);
  }

  outlined destroy of UTType?(v302, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v303 = *(v0 + 2000);
  v304 = *(v0 + 1880);
  v305 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v304, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v303(v304, 1, v305) == 1)
  {
    v306 = *(v0 + 2000);
    v307 = *(v0 + 1880);
    v308 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1888), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v306(v307, 1, v308) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1880), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v323 = *(v0 + 1984);
    v324 = *(v0 + 1888);
    v325 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1880), v324, type metadata accessor for CloudDevice);
    v323(v324, 0, 1, v325);
  }

  v326 = *(v0 + 1888);
  if ((*(v0 + 2000))(v326, 1, *(v0 + 888)) == 1)
  {
    outlined destroy of UTType?(v326, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  }

  else
  {
    v327 = *(v0 + 840);
    outlined init with take of CloudDevice(v326, *(v0 + 984), type metadata accessor for CloudDevice);
    v328 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
    swift_beginAccess();
    v329 = *(v327 + v328);
    v330 = *(v0 + 984);
    if (v329 != 2)
    {
      if ((CloudDevice.onboarded.getter() ^ v329))
      {
        if (v329)
        {
          v331 = *(v0 + 1136);
          v332 = *(v0 + 1040);
          v333 = *(v0 + 1032);
          v334 = *(v0 + 984);
          v335 = *(v0 + 888);
          static Date.now.getter();
          v336 = *(v335 + 80);
          outlined destroy of UTType?(v334 + v336, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          (*(v332 + 16))(v334 + v336, v331, v333);
          (*(v332 + 56))(v334 + v336, 0, 1, v333);
          if (one-time initialization token for momentsUI != -1)
          {
            swift_once();
          }

          v337 = (v0 + 1136);
        }

        else
        {
          v338 = *(v0 + 1400);
          v339 = *(v0 + 1040);
          v340 = *(v0 + 1032);
          v341 = *(v0 + 984);
          v342 = *(v0 + 888);
          static Date.distantPast.getter();
          (*(v339 + 56))(v338, 0, 1, v340);
          outlined assign with take of Date?(v338, v341 + *(v342 + 80));
          static Date.distantPast.getter();
          if (one-time initialization token for momentsUI != -1)
          {
            swift_once();
          }

          v337 = (v0 + 1128);
        }

        v343 = static DefaultsManager.momentsUI;
        v344 = *v337;
        if (static DefaultsManager.momentsUI)
        {
          v345 = Date._bridgeToObjectiveC()().super.isa;
          v346 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v343 setValue:v345 forKey:v346];
        }

        (*(*(v0 + 1040) + 8))(v344, *(v0 + 1032));
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v347 = *(v0 + 1712);
        v348 = *(v0 + 1624);
        v349 = *(v0 + 1616);
        v350 = __swift_project_value_buffer(v349, static CloudDevicesDB.Log);
        swift_beginAccess();
        (*(v348 + 16))(v347, v350, v349);
        v351 = Logger.logObject.getter();
        v352 = static os_log_type_t.info.getter();
        v353 = os_log_type_enabled(v351, v352);
        v354 = *(v0 + 1928);
        v355 = *(v0 + 1712);
        v356 = *(v0 + 1624);
        v357 = *(v0 + 1616);
        if (v353)
        {
          v925 = *(v0 + 1712);
          v358 = swift_slowAlloc();
          v914 = v354;
          v359 = swift_slowAlloc();
          v933 = v359;
          *v358 = 136446722;
          swift_beginAccess();
          v360 = StaticString.description.getter();
          v362 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v360, v361, &v933);

          *(v358 + 4) = v362;
          *(v358 + 12) = 2082;
          *(v358 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
          *(v358 + 22) = 1024;
          *(v358 + 24) = v329 & 1;
          _os_log_impl(&dword_21607C000, v351, v352, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v358, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v359, -1, -1);
          MEMORY[0x21CE94770](v358, -1, -1);

          (*(v356 + 8))(v925, v357);
          v363 = v914;
        }

        else
        {

          (*(v356 + 8))(v355, v357);
          v363 = v354;
        }

        outlined destroy of UTType?(v363, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v364 = *(v0 + 1984);
        v365 = *(v0 + 1928);
        v366 = *(v0 + 984);
        v367 = *(v0 + 888);
        outlined init with copy of CloudDevice(v366, v365, type metadata accessor for CloudDevice);
        v364(v365, 0, 1, v367);
        v330 = v366;
      }

      else
      {
        v330 = *(v0 + 984);
      }
    }

    outlined destroy of CloudDevice(v330, type metadata accessor for CloudDevice);
  }

  v368 = *(v0 + 2000);
  v369 = *(v0 + 1864);
  v370 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v369, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v368(v369, 1, v370) == 1)
  {
    v371 = *(v0 + 2000);
    v372 = *(v0 + 1864);
    v373 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1872), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v371(v372, 1, v373) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1864), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v374 = *(v0 + 1984);
    v375 = *(v0 + 1872);
    v376 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1864), v375, type metadata accessor for CloudDevice);
    v374(v375, 0, 1, v376);
  }

  v377 = *(v0 + 1872);
  v378 = *(v0 + 888);
  if ((*(v0 + 2000))(v377, 1, v378) == 1)
  {
    outlined destroy of UTType?(v377, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_231;
  }

  v379 = *(v0 + 976);
  outlined init with take of CloudDevice(v377, v379, type metadata accessor for CloudDevice);
  v380 = (v379 + *(v378 + 68));
  v381 = v380[1];
  if (v381)
  {
    v915 = (v379 + *(v378 + 68));
    v926 = v380[1];
    v382 = *v380;
    if (*v380)
    {
      v383 = 0;
    }

    else
    {
      v383 = v381 == 0xE000000000000000;
    }

    v384 = v383;
    if (v383 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v892 = v384;
      v902 = v382;
      v385 = *(v0 + 1392);
      v386 = *(v0 + 1040);
      v387 = *(v0 + 1032);
      v388 = *(v0 + 976);
      v389 = *(v0 + 880);
      v390 = *(v0 + 872);
      v391 = *(*(v0 + 888) + 72);

      static Date.distantPast.getter();
      (*(v386 + 56))(v385, 0, 1, v387);
      v392 = *(v390 + 48);
      outlined init with copy of DateInterval?(v388 + v391, v389, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of DateInterval?(v385, v389 + v392, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v393 = *(v386 + 48);
      if (v393(v389, 1, v387) == 1)
      {
        v394 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (v393(v389 + v392, 1, v394) == 1)
        {
          v395 = *(v0 + 880);

          v396 = &_s10Foundation4DateVSgMd;
          v397 = &_s10Foundation4DateVSgMR;
LABEL_195:
          outlined destroy of UTType?(v395, v396, v397);
          goto LABEL_230;
        }

        goto LABEL_198;
      }

      v398 = *(v0 + 1032);
      outlined init with copy of DateInterval?(*(v0 + 880), *(v0 + 1384), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v399 = v393(v389 + v392, 1, v398);
      v400 = *(v0 + 1392);
      v401 = *(v0 + 1384);
      if (v399 == 1)
      {
        v402 = *(v0 + 1040);
        v403 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v402 + 8))(v401, v403);
LABEL_198:
        outlined destroy of UTType?(*(v0 + 880), &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        v381 = v926;
        v382 = v902;
        goto LABEL_201;
      }

      v404 = *(v0 + 1240);
      v405 = *(v0 + 1040);
      v406 = *(v0 + 1032);
      v881 = *(v0 + 880);
      (*(v405 + 32))(v404, v389 + v392, v406);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v407 = dispatch thunk of static Equatable.== infix(_:_:)();
      v408 = *(v405 + 8);
      v408(v404, v406);
      outlined destroy of UTType?(v400, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v408(v401, v406);
      outlined destroy of UTType?(v881, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v381 = v926;
      v382 = v902;
      v384 = v892;
      if (v407)
      {
LABEL_229:

        goto LABEL_230;
      }
    }

    else
    {
    }

LABEL_201:
    v409 = *(v0 + 2000);
    v410 = *(v0 + 1856);
    v411 = *(v0 + 888);
    v412 = *(v0 + 840) + *(v0 + 1976);
    static Date.now.getter();
    v413 = *(v412 + 8);

    specialized Dictionary.subscript.getter(v382, v381, v413, v410);

    LODWORD(v411) = v409(v410, 1, v411);
    outlined destroy of UTType?(v410, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v411 == 1)
    {
      v414 = *(v0 + 1400);
      v415 = *(v0 + 1120);
      v416 = *(v0 + 1040);
      v417 = *(v0 + 1032);
      v418 = *(v0 + 976);
      v419 = *(v0 + 888);
      v420 = *(v419 + 28);
      outlined destroy of UTType?(v418 + v420, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v416 + 16))(v418 + v420, v415, v417);
      v421 = *(v416 + 56);
      v421(v418 + v420, 0, 1, v417);

      *v915 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v421(v414, 0, 1, v417);
      outlined assign with take of Date?(v414, v418 + *(v419 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v422 = *(v0 + 1704);
      v423 = *(v0 + 1624);
      v424 = *(v0 + 1616);
      v425 = __swift_project_value_buffer(v424, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v423 + 16))(v422, v425, v424);
      v426 = Logger.logObject.getter();
      v427 = static os_log_type_t.info.getter();
      v428 = os_log_type_enabled(v426, v427);
      v429 = *(v0 + 1928);
      v430 = *(v0 + 1704);
      v431 = *(v0 + 1624);
      v432 = *(v0 + 1616);
      v433 = *(v0 + 1120);
      v434 = *(v0 + 1040);
      v435 = *(v0 + 1032);
      if (v428)
      {
        v916 = *(v0 + 1616);
        v436 = swift_slowAlloc();
        v903 = v433;
        v437 = swift_slowAlloc();
        v933 = v437;
        *v436 = 136446466;
        swift_beginAccess();
        v438 = StaticString.description.getter();
        v882 = v429;
        v440 = v430;
        v441 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v438, v439, &v933);

        *(v436 + 4) = v441;
        *(v436 + 12) = 2082;
        *(v436 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);

        _os_log_impl(&dword_21607C000, v426, v427, "%{public}s.%{public}s Cleanup invalid nomination", v436, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v437, -1, -1);
        MEMORY[0x21CE94770](v436, -1, -1);

        (*(v431 + 8))(v440, v916);
        (*(v434 + 8))(v903, v435);
        v442 = v882;
LABEL_212:
        outlined destroy of UTType?(v442, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v448 = *(v0 + 1984);
        v449 = *(v0 + 1928);
        v450 = *(v0 + 888);
        outlined init with copy of CloudDevice(*(v0 + 976), v449, type metadata accessor for CloudDevice);
        v448(v449, 0, 1, v450);
        goto LABEL_230;
      }

      (*(v431 + 8))(v430, v432);
      (*(v434 + 8))(v433, v435);
LABEL_211:
      v442 = v429;
      goto LABEL_212;
    }

    if (v384)
    {
      goto LABEL_228;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v443 = *(v0 + 2000);
      v444 = *(v0 + 1848);
      v445 = *(v0 + 888);
      CloudDevicesDB.primaryDevice.getter(v444);
      v446 = v443(v444, 1, v445);
      v447 = *(v0 + 1848);
      if (v446 == 1)
      {
        outlined destroy of UTType?(v447, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      }

      else
      {
        v451 = v382;
        v452 = *(v0 + 1376);
        v453 = *(v0 + 1040);
        v454 = *(v0 + 1032);
        v455 = *(v0 + 968);
        v456 = *(v0 + 888);
        outlined init with take of CloudDevice(v447, v455, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v455 + *(v456 + 56), v452, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v457 = *(v453 + 48);
        v458 = v457(v452, 1, v454);
        v459 = *(v0 + 1376);
        if (v458 == 1)
        {
          v460 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v457(v459, 1, v460) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1376), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1112), *(v0 + 1376), *(v0 + 1032));
        }

        v461 = *(v0 + 1368);
        v462 = *(v0 + 1032);
        v463 = *(*(v0 + 888) + 72);
        v904 = *(v0 + 976);
        outlined init with copy of DateInterval?(v904 + v463, v461, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v464 = v457(v461, 1, v462);
        v465 = *(v0 + 1368);
        if (v464 == 1)
        {
          v466 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v457(v465, 1, v466) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1368), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1104), *(v0 + 1368), *(v0 + 1032));
        }

        v467 = *(v0 + 1112);
        v468 = *(v0 + 1104);
        v469 = *(v0 + 1040);
        v470 = *(v0 + 1032);
        v471 = static Date.> infix(_:_:)();
        v472 = *(v469 + 8);
        v472(v468, v470);
        v472(v467, v470);
        if (v471)
        {
          v893 = v472;
          v473 = *(v0 + 1400);
          v474 = *(v0 + 1120);
          v475 = *(v0 + 1040);
          v476 = *(v0 + 1032);
          v477 = *(v0 + 976);
          v478 = *(*(v0 + 888) + 28);
          outlined destroy of UTType?(v477 + v478, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          (*(v475 + 16))(v477 + v478, v474, v476);
          v479 = *(v475 + 56);
          v479(v477 + v478, 0, 1, v476);

          *v915 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v479(v473, 0, 1, v476);
          outlined assign with take of Date?(v473, v904 + v463);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v480 = *(v0 + 1696);
          v481 = *(v0 + 1624);
          v482 = *(v0 + 1616);
          v483 = __swift_project_value_buffer(v482, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v481 + 16))(v480, v483, v482);
          v484 = Logger.logObject.getter();
          v485 = static os_log_type_t.info.getter();
          v486 = os_log_type_enabled(v484, v485);
          v429 = *(v0 + 1928);
          v487 = *(v0 + 1696);
          v488 = *(v0 + 1624);
          v917 = *(v0 + 1616);
          v489 = *(v0 + 1120);
          v490 = *(v0 + 1032);
          v491 = *(v0 + 968);
          if (!v486)
          {

            (*(v488 + 8))(v487, v917);
            outlined destroy of CloudDevice(v491, type metadata accessor for CloudDevice);
            v893(v489, v490);
            goto LABEL_211;
          }

          v905 = *(v0 + 1032);
          v492 = swift_slowAlloc();
          v933 = swift_slowAlloc();
          v873 = v489;
          v493 = v933;
          *v492 = 136446466;
          swift_beginAccess();
          v494 = StaticString.description.getter();
          v876 = v429;
          v496 = v487;
          v497 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v494, v495, &v933);

          *(v492 + 4) = v497;
          *(v492 + 12) = 2082;
          *(v492 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);

          _os_log_impl(&dword_21607C000, v484, v485, "%{public}s.%{public}s Cleanup stale nomination", v492, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v493, -1, -1);
          MEMORY[0x21CE94770](v492, -1, -1);

          (*(v488 + 8))(v496, v917);
          outlined destroy of CloudDevice(v491, type metadata accessor for CloudDevice);
          v893(v873, v905);
          goto LABEL_328;
        }

        outlined destroy of CloudDevice(*(v0 + 968), type metadata accessor for CloudDevice);
        v382 = v451;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_228:
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));
      goto LABEL_229;
    }

    v690 = *(v0 + 2000);
    v691 = *(v0 + 1840);
    v692 = *(v0 + 888);
    v693 = *(*(v0 + 840) + *(v0 + 1976) + 8);

    specialized Dictionary.subscript.getter(v382, v381, v693, v691);

    v694 = v690(v691, 1, v692);
    v395 = *(v0 + 1840);
    if (v694 == 1)
    {
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));

      v396 = &_s9MomentsUI11CloudDeviceVSgMd;
      v397 = &_s9MomentsUI11CloudDeviceVSgMR;
      goto LABEL_195;
    }

    v703 = *(v0 + 1360);
    v704 = *(v0 + 1040);
    v705 = *(v0 + 1032);
    v706 = *(v0 + 960);
    v707 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1840), v706, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v706 + *(v707 + 64), v703, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v708 = *(v704 + 48);
    v709 = v708(v703, 1, v705);
    v710 = *(v0 + 1360);
    if (v709 == 1)
    {
      v711 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v708(v710, 1, v711) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1360), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1096), *(v0 + 1360), *(v0 + 1032));
    }

    v734 = *(v0 + 1352);
    v735 = *(v0 + 1032);
    v736 = *(v0 + 976);
    v737 = *(*(v0 + 888) + 72);
    outlined init with copy of DateInterval?(v736 + v737, v734, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v738 = v708(v734, 1, v735);
    v739 = *(v0 + 1352);
    if (v738 == 1)
    {
      v740 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v708(v739, 1, v740) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1352), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1088), *(v0 + 1352), *(v0 + 1032));
    }

    v741 = *(v0 + 1096);
    v742 = *(v0 + 1088);
    v743 = *(v0 + 1040);
    v744 = *(v0 + 1032);
    v745 = static Date.> infix(_:_:)();
    v746 = *(v743 + 8);
    v746(v742, v744);
    v746(v741, v744);
    if ((v745 & 1) == 0)
    {
      v772 = *(v0 + 1120);
      v773 = *(v0 + 1032);
      v774 = *(v0 + 960);

      outlined destroy of CloudDevice(v774, type metadata accessor for CloudDevice);
      v746(v772, v773);
      goto LABEL_230;
    }

    v909 = v746;
    v747 = *(v0 + 1400);
    v748 = *(v0 + 1120);
    v749 = *(v0 + 1040);
    v750 = *(v0 + 1032);
    v751 = *(v0 + 976);
    v752 = *(*(v0 + 888) + 28);
    outlined destroy of UTType?(v751 + v752, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v749 + 16))(v751 + v752, v748, v750);
    v753 = *(v749 + 56);
    v753(v751 + v752, 0, 1, v750);

    *v915 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v753(v747, 0, 1, v750);
    outlined assign with take of Date?(v747, v736 + v737);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v754 = *(v0 + 1688);
    v755 = *(v0 + 1624);
    v756 = *(v0 + 1616);
    v757 = __swift_project_value_buffer(v756, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v755 + 16))(v754, v757, v756);
    v758 = Logger.logObject.getter();
    v759 = static os_log_type_t.info.getter();
    v760 = os_log_type_enabled(v758, v759);
    v429 = *(v0 + 1928);
    v761 = *(v0 + 1688);
    v762 = *(v0 + 1624);
    v921 = *(v0 + 1616);
    v763 = *(v0 + 1120);
    v764 = *(v0 + 1032);
    v765 = *(v0 + 960);
    if (!v760)
    {

      (*(v762 + 8))(v761, v921);
      outlined destroy of CloudDevice(v765, type metadata accessor for CloudDevice);
      v909(v763, v764);
      goto LABEL_211;
    }

    v898 = *(v0 + 1032);
    v766 = swift_slowAlloc();
    v933 = swift_slowAlloc();
    v874 = v763;
    v767 = v933;
    *v766 = 136446466;
    swift_beginAccess();
    v768 = StaticString.description.getter();
    v876 = v429;
    v770 = v761;
    v771 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v768, v769, &v933);

    *(v766 + 4) = v771;
    *(v766 + 12) = 2082;
    *(v766 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);

    _os_log_impl(&dword_21607C000, v758, v759, "%{public}s.%{public}s Cleanup stale nomination", v766, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v767, -1, -1);
    MEMORY[0x21CE94770](v766, -1, -1);

    (*(v762 + 8))(v770, v921);
    outlined destroy of CloudDevice(v765, type metadata accessor for CloudDevice);
    v909(v874, v898);
LABEL_328:
    v442 = v876;
    goto LABEL_212;
  }

LABEL_230:
  outlined destroy of CloudDevice(*(v0 + 976), type metadata accessor for CloudDevice);
LABEL_231:
  v498 = *(v0 + 2000);
  v499 = *(v0 + 1824);
  v500 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v499, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v498(v499, 1, v500) == 1)
  {
    v501 = *(v0 + 2000);
    v502 = *(v0 + 1824);
    v503 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1832), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v501(v502, 1, v503) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1824), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v504 = *(v0 + 1984);
    v505 = *(v0 + 1832);
    v506 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1824), v505, type metadata accessor for CloudDevice);
    v504(v505, 0, 1, v506);
  }

  v507 = *(v0 + 1832);
  v508 = *(v0 + 888);
  if ((*(v0 + 2000))(v507, 1, v508) != 1)
  {
    v509 = *(v0 + 1344);
    v510 = *(v0 + 1040);
    v511 = *(v0 + 1032);
    v512 = *(v0 + 952);
    outlined init with take of CloudDevice(v507, v512, type metadata accessor for CloudDevice);
    v513 = *(v508 + 56);
    outlined init with copy of DateInterval?(v512 + v513, v509, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v514 = *(v510 + 48);
    if (v514(v509, 1, v511) == 1)
    {
      v515 = *(v0 + 952);
      outlined destroy of UTType?(*(v0 + 1344), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_243:
      v527 = v515;
      goto LABEL_244;
    }

    v883 = v513;
    v894 = v512;
    v516 = *(v0 + 1240);
    v517 = *(v0 + 1040);
    v518 = *(v0 + 1032);
    v927 = *(v517 + 32);
    v927(*(v0 + 1080), *(v0 + 1344), v518);
    static Date.distantPast.getter();
    v519 = static Date.> infix(_:_:)();
    v520 = *(v517 + 8);
    v520(v516, v518);
    if ((v519 & 1) == 0)
    {
      v515 = *(v0 + 952);
      v520(*(v0 + 1080), *(v0 + 1032));
      goto LABEL_243;
    }

    v521 = *(v0 + 2000);
    v522 = *(v0 + 1816);
    v523 = *(v0 + 888);
    CloudDevicesDB.primaryDevice.getter(v522);
    v524 = v521(v522, 1, v523);
    v525 = *(v0 + 1816);
    if (v524 == 1)
    {
      v526 = *(v0 + 952);
      v520(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of UTType?(v525, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v527 = v526;
LABEL_244:
      outlined destroy of CloudDevice(v527, type metadata accessor for CloudDevice);
      goto LABEL_245;
    }

    v686 = *(v0 + 952);
    v687 = *(v0 + 944);
    outlined init with take of CloudDevice(*(v0 + 1816), v687, type metadata accessor for CloudDevice);
    if (*v687 == *v686 && v687[1] == v686[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v688 = *(v0 + 952);
      v689 = *(v0 + 944);
      v520(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of CloudDevice(v689, type metadata accessor for CloudDevice);
      v527 = v688;
      goto LABEL_244;
    }

    v695 = *(v0 + 1336);
    v696 = *(v0 + 1032);
    v697 = *(v0 + 944);
    static Date.now.getter();
    outlined init with copy of DateInterval?(v697 + *(v508 + 56), v695, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v698 = v514(v695, 1, v696);
    v699 = *(v0 + 1336);
    if (v698 == 1)
    {
      v700 = *(v0 + 1080);
      v701 = *(v0 + 1032);
      v702 = *(v0 + 944);
      v520(*(v0 + 1072), v701);
      v520(v700, v701);
      outlined destroy of CloudDevice(v702, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v699, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_338:
      v527 = *(v0 + 952);
      goto LABEL_244;
    }

    v712 = *(v0 + 1240);
    v713 = *(v0 + 1032);
    v927(*(v0 + 1064), *(v0 + 1336), v713);
    static Date.distantPast.getter();
    v714 = static Date.> infix(_:_:)();
    v715 = v713;
    v716 = v520;
    v520(v712, v715);
    if (v714)
    {
      Date.timeIntervalSince(_:)();
      if (v717 > 86400.0)
      {
        v718 = *(v0 + 1984);
        v719 = *(v0 + 1928);
        v720 = *(v0 + 1400);
        v721 = *(v0 + 1040);
        v722 = *(v0 + 1032);
        v723 = *(v0 + 952);
        v724 = *(v0 + 888);
        static Date.distantPast.getter();
        v725 = *(v721 + 56);
        v725(v720, 0, 1, v722);
        outlined assign with take of Date?(v720, v894 + v883);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v719, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v725(v720, 0, 1, v722);
        outlined assign with take of Date?(v720, v723 + *(v724 + 64));
        outlined init with copy of CloudDevice(v723, v719, type metadata accessor for CloudDevice);
        v718(v719, 0, 1, v724);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v726 = static DefaultsManager.momentsUI;
        v727 = *(v0 + 1056);
        v728 = *(v0 + 1032);
        if (static DefaultsManager.momentsUI)
        {
          v729 = Date._bridgeToObjectiveC()().super.isa;
          v730 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v726 setValue:v729 forKey:v730];

          v731 = v520;
          v520(v727, v728);
          static Date.distantPast.getter();
          v732 = Date._bridgeToObjectiveC()().super.isa;
          v733 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v726 setValue:v732 forKey:v733];
        }

        else
        {
          v731 = v520;
          v520(v727, v728);
          static Date.distantPast.getter();
        }

        v782 = *(v0 + 1080);
        v783 = *(v0 + 1072);
        v784 = *(v0 + 1064);
        v785 = *(v0 + 1032);
        v786 = *(v0 + 944);
        v731(*(v0 + 1048), v785);
        v731(v784, v785);
        v731(v783, v785);
        v731(v782, v785);
        v781 = v786;
        goto LABEL_337;
      }

      v775 = *(v0 + 1080);
      v776 = *(v0 + 1072);
      v777 = *(v0 + 1064);
      v778 = *(v0 + 1032);
      v779 = *(v0 + 944);
      v780 = v778;
      v716 = v520;
    }

    else
    {
      v775 = *(v0 + 1080);
      v776 = *(v0 + 1072);
      v777 = *(v0 + 1064);
      v778 = *(v0 + 1032);
      v779 = *(v0 + 944);
      v780 = v778;
    }

    v716(v777, v780);
    v716(v776, v778);
    v716(v775, v778);
    v781 = v779;
LABEL_337:
    outlined destroy of CloudDevice(v781, type metadata accessor for CloudDevice);
    goto LABEL_338;
  }

  outlined destroy of UTType?(v507, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_245:
  v528 = *(v0 + 2000);
  v529 = *(v0 + 1808);
  v530 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v529, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v528(v529, 1, v530) == 1)
  {
    v531 = *(v0 + 1808);
    outlined destroy of UTType?(*(v0 + 1928), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  }

  else
  {
    outlined init with take of CloudDevice(*(v0 + 1808), *(v0 + 936), type metadata accessor for CloudDevice);
    v554 = CloudDevice.description()();
    *(v0 + 2080) = v554._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v555 = *(v0 + 1680);
    v556 = *(v0 + 1624);
    v557 = *(v0 + 1616);
    v558 = __swift_project_value_buffer(v557, static CloudDevicesDB.Log);
    *(v0 + 2088) = v558;
    swift_beginAccess();
    v559 = *(v556 + 16);
    *(v0 + 2096) = v559;
    *(v0 + 2104) = (v556 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v908 = v559;
    v559(v555, v558, v557);
    swift_bridgeObjectRetain_n();
    v560 = Logger.logObject.getter();
    v561 = static os_log_type_t.debug.getter();
    v562 = os_log_type_enabled(v560, v561);
    v563 = *(v0 + 1680);
    v564 = *(v0 + 1624);
    v929 = *(v0 + 1616);
    if (v562)
    {
      v565 = swift_slowAlloc();
      v566 = swift_slowAlloc();
      v933 = v566;
      *v565 = 136446722;
      swift_beginAccess();
      v567 = StaticString.description.getter();
      v884 = v563;
      v569 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v567, v568, &v933);

      *(v565 + 4) = v569;
      *(v565 + 12) = 2082;
      *(v565 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
      *(v565 + 22) = 2080;

      v570 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v554._countAndFlagsBits, v554._object, &v933);

      *(v565 + 24) = v570;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v560, v561, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v565, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v566, -1, -1);
      MEMORY[0x21CE94770](v565, -1, -1);

      v571 = *(v564 + 8);
      v571(v884, v929);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v571 = *(v564 + 8);
      v571(v563, v929);
    }

    *(v0 + 2112) = v571;
    v623 = *(v0 + 1968);
    v624 = *(v0 + 1960);
    v625 = *(v0 + 928);
    v626 = *(v0 + 840) + *(v0 + 1976);
    v627 = *(v626 + 8);
    outlined init with copy of CloudDevice(*(v0 + 936), v625, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v933 = v627;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v625, v624, v623, isUniquelyReferenced_nonNull_native);

    *(v626 + 8) = v933;

    CloudDevicesDB.persistLocalData()();
    if (v629)
    {
      v908(*(v0 + 1632), v558, *(v0 + 1616));
      v630 = v629;
      v631 = v629;
      v632 = Logger.logObject.getter();
      v633 = static os_log_type_t.error.getter();
      v634 = os_log_type_enabled(v632, v633);
      v635 = *(v0 + 1928);
      v636 = *(v0 + 1632);
      v637 = *(v0 + 1616);
      v638 = *(v0 + 936);
      if (v634)
      {
        v897 = *(v0 + 1616);
        v639 = swift_slowAlloc();
        v886 = v636;
        v640 = swift_slowAlloc();
        v933 = swift_slowAlloc();
        v641 = v933;
        *v639 = 136446722;
        swift_beginAccess();
        v642 = StaticString.description.getter();
        v869 = v638;
        v644 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v642, v643, &v933);

        *(v639 + 4) = v644;
        *(v639 + 12) = 2082;
        *(v639 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
        *(v639 + 22) = 2112;
        v645 = v629;
        v646 = _swift_stdlib_bridgeErrorToNSError();
        *(v639 + 24) = v646;
        *v640 = v646;

        _os_log_impl(&dword_21607C000, v632, v633, "%{public}s.%{public}s Failed to persist local data: %@", v639, 0x20u);
        outlined destroy of UTType?(v640, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x21CE94770](v640, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v641, -1, -1);
        MEMORY[0x21CE94770](v639, -1, -1);

        v571(v886, v897);
        outlined destroy of CloudDevice(v869, type metadata accessor for CloudDevice);
      }

      else
      {

        v571(v636, v637);
        outlined destroy of CloudDevice(v638, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v635, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v683 = *(v0 + 1936);
      goto LABEL_296;
    }

    v647 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v648 = *v647;
    *(v0 + 2120) = *v647;
    if (v648)
    {
      v649 = *(v0 + 936);
      v930 = v647[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
      v919 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v650 = *(v919 - 8);
      v651 = (*(v650 + 80) + 32) & ~*(v650 + 80);
      v652 = swift_allocObject();
      *(v0 + 2128) = v652;
      *(v652 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
      v653 = *v649;
      v654 = v649[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
      v655 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v657 = v656;
      swift_unknownObjectRetain();

      v658._countAndFlagsBits = 0x73656369766544;
      v658._object = 0xE700000000000000;
      v659._countAndFlagsBits = v655;
      v659._object = v657;
      v660 = CKRecordZoneID.init(zoneName:ownerName:)(v658, v659).super.isa;
      v661._countAndFlagsBits = v653;
      v661._object = v654;
      *(v652 + v651) = CKRecordID.init(recordName:zoneID:)(v661, v660);
      (*(v650 + 104))(v652 + v651, *MEMORY[0x277CBBC68], v919);
      ObjectType = swift_getObjectType();
      v663 = swift_task_alloc();
      *(v0 + 2136) = v663;
      *v663 = v0;
      v663[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v652, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v930);
    }

    v531 = *(v0 + 1928);
    v685 = *(v0 + 936);

    outlined destroy of CloudDevice(v685, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v531, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_248:
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v532 = *(v0 + 1800);
  v533 = *(v0 + 1792);
  v534 = *(v0 + 1656);
  v535 = *(v0 + 1624);
  v536 = *(v0 + 1616);
  v537 = __swift_project_value_buffer(v536, static CloudDevicesDB.Log);
  swift_beginAccess();
  v928 = v537;
  v918 = *(v535 + 16);
  v918(v534, v537, v536);
  outlined init with copy of DateInterval?(v532, v533, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v538 = Logger.logObject.getter();
  v539 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v538, v539))
  {
    v895 = *(v0 + 2000);
    v540 = *(v0 + 1792);
    v541 = *(v0 + 1784);
    v542 = *(v0 + 888);
    v543 = swift_slowAlloc();
    v906 = swift_slowAlloc();
    v933 = v906;
    *v543 = 136446722;
    swift_beginAccess();
    v544 = StaticString.description.getter();
    v546 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v544, v545, &v933);

    *(v543 + 4) = v546;
    *(v543 + 12) = 2082;
    *(v543 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
    *(v543 + 22) = 2080;
    outlined init with copy of DateInterval?(v540, v541, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v547 = v895(v541, 1, v542);
    v548 = *(v0 + 1784);
    if (v547 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v549 = 0xE500000000000000;
      v550 = 0x3E6C696E3CLL;
    }

    else
    {
      v550 = *v548;
      v549 = v548[1];

      outlined destroy of CloudDevice(v548, type metadata accessor for CloudDevice);
    }

    v572 = *(v0 + 1792);
    v573 = *(v0 + 1656);
    v574 = *(v0 + 1624);
    v575 = *(v0 + 1616);
    v576 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v550, v549, &v933);

    *(v543 + 24) = v576;
    outlined destroy of UTType?(v572, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    _os_log_impl(&dword_21607C000, v538, v539, "%{public}s.%{public}s newPrimary = %s", v543, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v906, -1, -1);
    MEMORY[0x21CE94770](v543, -1, -1);

    v907 = *(v574 + 8);
    v907(v573, v575);
  }

  else
  {
    v551 = *(v0 + 1656);
    v552 = *(v0 + 1624);
    v553 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v907 = *(v552 + 8);
    v907(v551, v553);
  }

  v577 = *(v0 + 2000);
  v578 = *(v0 + 1800);
  v579 = *(v0 + 1776);
  v580 = *(v0 + 888);
  v581 = *(v0 + 864);
  v582 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v579);
  v583 = *(v582 + 48);
  outlined init with copy of DateInterval?(v579, v581, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of DateInterval?(v578, v581 + v583, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v584 = v577(v581, 1, v580);
  v585 = *(v0 + 2000);
  if (v584 == 1)
  {
    v586 = *(v0 + 888);
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v585(v581 + v583, 1, v586) == 1)
    {
      outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_267:
      v594 = *(v0 + 1648);
      v595 = *(v0 + 1616);

      v597 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v596);

      v918(v594, v928, v595);
      swift_bridgeObjectRetain_n();
      v598 = Logger.logObject.getter();
      v599 = static os_log_type_t.debug.getter();
      v600 = os_log_type_enabled(v598, v599);
      v601 = *(v0 + 1648);
      v602 = *(v0 + 1616);
      if (v600)
      {
        v885 = *(v0 + 888);
        v603 = swift_slowAlloc();
        v604 = swift_slowAlloc();
        v933 = v604;
        *v603 = 136446722;
        v896 = v601;
        swift_beginAccess();
        v605 = StaticString.description.getter();
        v607 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v605, v606, &v933);

        *(v603 + 4) = v607;
        *(v603 + 12) = 2082;
        *(v603 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
        *(v603 + 22) = 2080;

        v609 = MEMORY[0x21CE922B0](v608, v885);
        v611 = v610;

        v612 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v609, v611, &v933);

        *(v603 + 24) = v612;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v598, v599, "%{public}s.%{public}s newlyOnboarded = %s", v603, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v604, -1, -1);
        MEMORY[0x21CE94770](v603, -1, -1);

        v613 = v896;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v613 = v601;
      }

      v907(v613, v602);
      *(v0 + 832) = v597;

      CurrentValueSubject.send(_:)();

      goto LABEL_271;
    }

    goto LABEL_265;
  }

  v587 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v588 = v585(v581 + v583, 1, v587);
  v589 = *(v0 + 1776);
  v590 = *(v0 + 1768);
  if (v588 == 1)
  {
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of CloudDevice(v590, type metadata accessor for CloudDevice);
LABEL_265:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
    goto LABEL_271;
  }

  v591 = *(v0 + 928);
  v592 = *(v0 + 864);
  outlined init with take of CloudDevice(v581 + v583, v591, type metadata accessor for CloudDevice);
  v593 = specialized static CloudDevice.== infix(_:_:)(v590, v591);
  outlined destroy of CloudDevice(v591, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v589, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of CloudDevice(v590, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v592, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v593)
  {
    goto LABEL_267;
  }

LABEL_271:
  v614 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_293:
    v683 = *v614;
LABEL_296:
    outlined destroy of UTType?(v683, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_297;
  }

  v615 = *(v0 + 2000);
  v616 = *(v0 + 1760);
  v617 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v616, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v615(v616, 1, v617) == 1)
  {
    outlined destroy of UTType?(*v614, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v614 = (v0 + 1760);
    goto LABEL_293;
  }

  v618 = *(v0 + 904);
  v619 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v618, type metadata accessor for CloudDevice);
  v620 = (v618 + *(v619 + 108));
  if (v620[1])
  {
    v621 = *v620;
    v622 = v620[1];
  }

  else
  {
    v664 = *(v0 + 904);
    v621 = *v664;
    v622 = v664[1];
  }

  *(v0 + 2152) = v622;
  *(v0 + 2144) = v621;
  v918(*(v0 + 1640), v928, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v665 = Logger.logObject.getter();
  v666 = static os_log_type_t.error.getter();
  v667 = os_log_type_enabled(v665, v666);
  v668 = *(v0 + 1640);
  v669 = *(v0 + 1616);
  if (v667)
  {
    v932 = *(v0 + 1616);
    v670 = swift_slowAlloc();
    v671 = swift_slowAlloc();
    v933 = v671;
    *v670 = 136446722;
    swift_beginAccess();
    v672 = StaticString.description.getter();
    v920 = v668;
    v674 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v672, v673, &v933);

    *(v670 + 4) = v674;
    *(v670 + 12) = 2082;
    *(v670 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, &v933);
    *(v670 + 22) = 2080;

    v675 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v621, v622, &v933);

    *(v670 + 24) = v675;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v665, v666, "%{public}s.%{public}s generation: %s", v670, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v671, -1, -1);
    MEMORY[0x21CE94770](v670, -1, -1);

    v676 = v920;
    v677 = v932;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v676 = v668;
    v677 = v669;
  }

  v907(v676, v677);
  v678 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v679 = *v678;
  *(v0 + 2160) = *v678;
  if (!v679)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_293;
  }

  v680 = v678[1];
  *(v0 + 2168) = v680;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v680 + 144);
  *(v0 + 2192) = (v680 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v682 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v682, v681);
}

{
  v524 = v0;
  if ((*(v0 + 2207) & 1) != 0 || *(v0 + 2206))
  {
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2040);
    v11 = *(v0 + 2032);
    v12 = *(v0 + 840);
    v13 = v12 + *(v0 + 1976);
    v14 = (v12 + *(v0 + 2016));
    v16 = *v14;
    v15 = v14[1];
    *(v0 + 2064) = v15;
    *(v0 + 2205) = *(v12 + v11);
    v17 = *(v12 + v10);
    v18 = *(v12 + v9);
    v19 = *(v13 + 1);

    v20 = swift_task_alloc();
    *(v0 + 2072) = v20;
    *v20 = v0;
    v20[1] = CloudDevicesDB.checkDB(forceUpdate:);
    v21 = *(v0 + 840);

    return CloudDevice.updateEnvironment(cloudDevicesDB:snapshotGeneration:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(v21, v16, v15, (v0 + 2205), v19, v17, v18);
  }

  outlined destroy of CloudDevice(*(v0 + 992), type metadata accessor for CloudDevice);
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v2, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v4 = v1(v2, 1, v3);
  v5 = *(v0 + 1888);
  v6 = *(v0 + 1880);
  v7 = *(v0 + 888);
  if (v4 == 1)
  {
    v8 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1888), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v8(v6, 1, v7) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1880), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v23 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1880), *(v0 + 1888), type metadata accessor for CloudDevice);
    v23(v5, 0, 1, v7);
  }

  v24 = *(v0 + 1888);
  if ((*(v0 + 2000))(v24, 1, *(v0 + 888)) == 1)
  {
    outlined destroy of UTType?(v24, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_32;
  }

  v25 = *(v0 + 840);
  outlined init with take of CloudDevice(v24, *(v0 + 984), type metadata accessor for CloudDevice);
  v26 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = *(v0 + 984);
  if (v27 != 2)
  {
    if ((CloudDevice.onboarded.getter() ^ v27))
    {
      if (v27)
      {
        v29 = *(v0 + 1136);
        v30 = *(v0 + 1040);
        v31 = *(v0 + 1032);
        v32 = *(v0 + 984);
        v33 = *(v0 + 888);
        static Date.now.getter();
        v34 = *(v33 + 80);
        outlined destroy of UTType?(v32 + v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v30 + 16))(v32 + v34, v29, v31);
        (*(v30 + 56))(v32 + v34, 0, 1, v31);
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v35 = (v0 + 1136);
        v36 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
LABEL_18:
          v37 = *v35;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v39 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v36 setValue:isa forKey:v39];

LABEL_25:
          (*(*(v0 + 1040) + 8))(v37, *(v0 + 1032));
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v45 = *(v0 + 1712);
          v46 = *(v0 + 1624);
          v47 = *(v0 + 1616);
          v48 = __swift_project_value_buffer(v47, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v46 + 16))(v45, v48, v47);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.info.getter();
          v51 = os_log_type_enabled(v49, v50);
          v52 = *(v0 + 1928);
          v53 = *(v0 + 1712);
          v54 = *(v0 + 1624);
          v55 = *(v0 + 1616);
          if (v51)
          {
            v517 = *(v0 + 1712);
            v56 = swift_slowAlloc();
            v510 = v52;
            v57 = swift_slowAlloc();
            v523[0] = v57;
            *v56 = 136446722;
            swift_beginAccess();
            v58 = StaticString.description.getter();
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v523);

            *(v56 + 4) = v60;
            *(v56 + 12) = 2082;
            *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
            *(v56 + 22) = 1024;
            *(v56 + 24) = v27 & 1;
            _os_log_impl(&dword_21607C000, v49, v50, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v56, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v57, -1, -1);
            MEMORY[0x21CE94770](v56, -1, -1);

            (*(v54 + 8))(v517, v55);
            v61 = v510;
          }

          else
          {

            (*(v54 + 8))(v53, v55);
            v61 = v52;
          }

          outlined destroy of UTType?(v61, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
          v62 = *(v0 + 1984);
          v63 = *(v0 + 1928);
          v64 = *(v0 + 984);
          v65 = *(v0 + 888);
          outlined init with copy of CloudDevice(v64, v63, type metadata accessor for CloudDevice);
          v62(v63, 0, 1, v65);
          v28 = v64;
          goto LABEL_31;
        }
      }

      else
      {
        v40 = *(v0 + 1400);
        v41 = *(v0 + 1040);
        v42 = *(v0 + 1032);
        v43 = *(v0 + 984);
        v44 = *(v0 + 888);
        static Date.distantPast.getter();
        (*(v41 + 56))(v40, 0, 1, v42);
        outlined assign with take of Date?(v40, v43 + *(v44 + 80));
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v35 = (v0 + 1128);
        v36 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
          goto LABEL_18;
        }
      }

      v37 = *v35;
      goto LABEL_25;
    }

    v28 = *(v0 + 984);
  }

LABEL_31:
  outlined destroy of CloudDevice(v28, type metadata accessor for CloudDevice);
LABEL_32:
  v66 = *(v0 + 2000);
  v67 = *(v0 + 1864);
  v68 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v67, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v69 = v66(v67, 1, v68);
  v70 = *(v0 + 1872);
  v71 = *(v0 + 1864);
  v72 = *(v0 + 888);
  if (v69 == 1)
  {
    v73 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1872), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v73(v71, 1, v72) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1864), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v74 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1864), *(v0 + 1872), type metadata accessor for CloudDevice);
    v74(v70, 0, 1, v72);
  }

  v75 = *(v0 + 1872);
  v76 = *(v0 + 888);
  if ((*(v0 + 2000))(v75, 1, v76) == 1)
  {
    outlined destroy of UTType?(v75, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_86;
  }

  v77 = *(v0 + 976);
  outlined init with take of CloudDevice(v75, v77, type metadata accessor for CloudDevice);
  v78 = (v77 + *(v76 + 68));
  v79 = v78[1];
  if (v79)
  {
    v511 = (v77 + *(v76 + 68));
    v518 = v78[1];
    v80 = *v78;
    if (*v78)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79 == 0xE000000000000000;
    }

    v82 = v81;
    if (v81 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v496 = v82;
      v502 = v80;
      v83 = *(v0 + 1392);
      v84 = *(v0 + 1040);
      v85 = *(v0 + 1032);
      v86 = *(v0 + 976);
      v87 = *(v0 + 880);
      v88 = *(v0 + 872);
      v89 = *(*(v0 + 888) + 72);

      static Date.distantPast.getter();
      (*(v84 + 56))(v83, 0, 1, v85);
      v90 = *(v88 + 48);
      outlined init with copy of DateInterval?(v86 + v89, v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of DateInterval?(v83, v87 + v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v91 = *(v84 + 48);
      if (v91(v87, 1, v85) == 1)
      {
        v92 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (v91(v87 + v90, 1, v92) == 1)
        {
          v93 = *(v0 + 880);

          v94 = &_s10Foundation4DateVSgMd;
          v95 = &_s10Foundation4DateVSgMR;
LABEL_50:
          outlined destroy of UTType?(v93, v94, v95);
          goto LABEL_85;
        }

        goto LABEL_53;
      }

      v96 = *(v0 + 1032);
      outlined init with copy of DateInterval?(*(v0 + 880), *(v0 + 1384), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v97 = v91(v87 + v90, 1, v96);
      v98 = *(v0 + 1392);
      v99 = *(v0 + 1384);
      if (v97 == 1)
      {
        v100 = *(v0 + 1040);
        v101 = *(v0 + 1032);
        outlined destroy of UTType?(*(v0 + 1392), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v100 + 8))(v99, v101);
LABEL_53:
        outlined destroy of UTType?(*(v0 + 880), &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        v79 = v518;
        v80 = v502;
        goto LABEL_56;
      }

      v102 = *(v0 + 1240);
      v103 = *(v0 + 1040);
      v104 = *(v0 + 1032);
      v489 = *(v0 + 880);
      (*(v103 + 32))(v102, v87 + v90, v104);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106 = *(v103 + 8);
      v106(v102, v104);
      outlined destroy of UTType?(v98, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v106(v99, v104);
      outlined destroy of UTType?(v489, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v79 = v518;
      v80 = v502;
      v82 = v496;
      if (v105)
      {
LABEL_84:

        goto LABEL_85;
      }
    }

    else
    {
    }

LABEL_56:
    v107 = *(v0 + 2000);
    v108 = *(v0 + 1856);
    v109 = *(v0 + 888);
    v110 = *(v0 + 840) + *(v0 + 1976);
    static Date.now.getter();
    v111 = *(v110 + 8);

    specialized Dictionary.subscript.getter(v80, v79, v111, v108);

    LODWORD(v109) = v107(v108, 1, v109);
    outlined destroy of UTType?(v108, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v109 == 1)
    {
      v112 = *(v0 + 1400);
      v113 = *(v0 + 1120);
      v114 = *(v0 + 1040);
      v115 = *(v0 + 1032);
      v116 = *(v0 + 976);
      v117 = *(v0 + 888);
      v118 = *(v117 + 28);
      outlined destroy of UTType?(v116 + v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v114 + 16))(v116 + v118, v113, v115);
      v119 = *(v114 + 56);
      v119(v116 + v118, 0, 1, v115);

      *v511 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v119(v112, 0, 1, v115);
      outlined assign with take of Date?(v112, v116 + *(v117 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v120 = *(v0 + 1704);
      v121 = *(v0 + 1624);
      v122 = *(v0 + 1616);
      v123 = __swift_project_value_buffer(v122, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v121 + 16))(v120, v123, v122);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.info.getter();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 1928);
      v128 = *(v0 + 1704);
      v129 = *(v0 + 1624);
      v130 = *(v0 + 1616);
      v131 = *(v0 + 1120);
      v132 = *(v0 + 1040);
      v133 = *(v0 + 1032);
      if (v126)
      {
        v512 = *(v0 + 1616);
        v134 = swift_slowAlloc();
        v503 = v131;
        v135 = swift_slowAlloc();
        v523[0] = v135;
        *v134 = 136446466;
        swift_beginAccess();
        v136 = StaticString.description.getter();
        v490 = v127;
        v138 = v128;
        v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, v523);

        *(v134 + 4) = v139;
        *(v134 + 12) = 2082;
        *(v134 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);

        _os_log_impl(&dword_21607C000, v124, v125, "%{public}s.%{public}s Cleanup invalid nomination", v134, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v135, -1, -1);
        MEMORY[0x21CE94770](v134, -1, -1);

        (*(v129 + 8))(v138, v512);
        (*(v132 + 8))(v503, v133);
        v140 = v490;
LABEL_67:
        outlined destroy of UTType?(v140, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v146 = *(v0 + 1984);
        v147 = *(v0 + 1928);
        v148 = *(v0 + 888);
        outlined init with copy of CloudDevice(*(v0 + 976), v147, type metadata accessor for CloudDevice);
        v146(v147, 0, 1, v148);
        goto LABEL_85;
      }

      (*(v129 + 8))(v128, v130);
      (*(v132 + 8))(v131, v133);
LABEL_66:
      v140 = v127;
      goto LABEL_67;
    }

    if (v82)
    {
      goto LABEL_83;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v141 = *(v0 + 2000);
      v142 = *(v0 + 1848);
      v143 = *(v0 + 888);
      CloudDevicesDB.primaryDevice.getter(v142);
      v144 = v141(v142, 1, v143);
      v145 = *(v0 + 1848);
      if (v144 == 1)
      {
        outlined destroy of UTType?(v145, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      }

      else
      {
        v149 = v80;
        v150 = *(v0 + 1376);
        v151 = *(v0 + 1040);
        v152 = *(v0 + 1032);
        v153 = *(v0 + 968);
        v154 = *(v0 + 888);
        outlined init with take of CloudDevice(v145, v153, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v153 + *(v154 + 56), v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v155 = *(v151 + 48);
        v156 = v155(v150, 1, v152);
        v157 = *(v0 + 1376);
        if (v156 == 1)
        {
          v158 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v155(v157, 1, v158) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1376), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1112), *(v0 + 1376), *(v0 + 1032));
        }

        v159 = *(v0 + 1368);
        v160 = *(v0 + 1032);
        v161 = *(*(v0 + 888) + 72);
        v504 = *(v0 + 976);
        outlined init with copy of DateInterval?(v504 + v161, v159, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v162 = v155(v159, 1, v160);
        v163 = *(v0 + 1368);
        if (v162 == 1)
        {
          v164 = *(v0 + 1032);
          static Date.distantPast.getter();
          if (v155(v163, 1, v164) != 1)
          {
            outlined destroy of UTType?(*(v0 + 1368), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(*(v0 + 1040) + 32))(*(v0 + 1104), *(v0 + 1368), *(v0 + 1032));
        }

        v165 = *(v0 + 1112);
        v166 = *(v0 + 1104);
        v167 = *(v0 + 1040);
        v168 = *(v0 + 1032);
        v169 = static Date.> infix(_:_:)();
        v170 = *(v167 + 8);
        v170(v166, v168);
        v170(v165, v168);
        if (v169)
        {
          v497 = v170;
          v171 = *(v0 + 1400);
          v172 = *(v0 + 1120);
          v173 = *(v0 + 1040);
          v174 = *(v0 + 1032);
          v175 = *(v0 + 976);
          v176 = *(*(v0 + 888) + 28);
          outlined destroy of UTType?(v175 + v176, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          (*(v173 + 16))(v175 + v176, v172, v174);
          v177 = *(v173 + 56);
          v177(v175 + v176, 0, 1, v174);

          *v511 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v177(v171, 0, 1, v174);
          outlined assign with take of Date?(v171, v504 + v161);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v178 = *(v0 + 1696);
          v179 = *(v0 + 1624);
          v180 = *(v0 + 1616);
          v181 = __swift_project_value_buffer(v180, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v179 + 16))(v178, v181, v180);
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.info.getter();
          v184 = os_log_type_enabled(v182, v183);
          v127 = *(v0 + 1928);
          v185 = *(v0 + 1696);
          v186 = *(v0 + 1624);
          v513 = *(v0 + 1616);
          v187 = *(v0 + 1120);
          v188 = *(v0 + 1032);
          v189 = *(v0 + 968);
          if (!v184)
          {

            (*(v186 + 8))(v185, v513);
            outlined destroy of CloudDevice(v189, type metadata accessor for CloudDevice);
            v497(v187, v188);
            goto LABEL_66;
          }

          v505 = *(v0 + 1032);
          v190 = swift_slowAlloc();
          v523[0] = swift_slowAlloc();
          v484 = v187;
          v191 = v523[0];
          *v190 = 136446466;
          swift_beginAccess();
          v192 = StaticString.description.getter();
          v486 = v127;
          v194 = v185;
          v195 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v193, v523);

          *(v190 + 4) = v195;
          *(v190 + 12) = 2082;
          *(v190 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);

          _os_log_impl(&dword_21607C000, v182, v183, "%{public}s.%{public}s Cleanup stale nomination", v190, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v191, -1, -1);
          MEMORY[0x21CE94770](v190, -1, -1);

          (*(v186 + 8))(v194, v513);
          outlined destroy of CloudDevice(v189, type metadata accessor for CloudDevice);
          v497(v484, v505);
          goto LABEL_180;
        }

        outlined destroy of CloudDevice(*(v0 + 968), type metadata accessor for CloudDevice);
        v80 = v149;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_83:
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));
      goto LABEL_84;
    }

    v387 = *(v0 + 2000);
    v388 = *(v0 + 1840);
    v389 = *(v0 + 888);
    v390 = *(*(v0 + 840) + *(v0 + 1976) + 8);

    specialized Dictionary.subscript.getter(v80, v79, v390, v388);

    v391 = v387(v388, 1, v389);
    v93 = *(v0 + 1840);
    if (v391 == 1)
    {
      (*(*(v0 + 1040) + 8))(*(v0 + 1120), *(v0 + 1032));

      v94 = &_s9MomentsUI11CloudDeviceVSgMd;
      v95 = &_s9MomentsUI11CloudDeviceVSgMR;
      goto LABEL_50;
    }

    v400 = *(v0 + 1360);
    v401 = *(v0 + 1040);
    v402 = *(v0 + 1032);
    v403 = *(v0 + 960);
    v404 = *(v0 + 888);
    outlined init with take of CloudDevice(*(v0 + 1840), v403, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v403 + *(v404 + 64), v400, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v405 = *(v401 + 48);
    v406 = v405(v400, 1, v402);
    v407 = *(v0 + 1360);
    if (v406 == 1)
    {
      v408 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v405(v407, 1, v408) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1360), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1096), *(v0 + 1360), *(v0 + 1032));
    }

    v430 = *(v0 + 1352);
    v431 = *(v0 + 1032);
    v432 = *(v0 + 976);
    v433 = *(*(v0 + 888) + 72);
    outlined init with copy of DateInterval?(v432 + v433, v430, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v434 = v405(v430, 1, v431);
    v435 = *(v0 + 1352);
    if (v434 == 1)
    {
      v436 = *(v0 + 1032);
      static Date.distantPast.getter();
      if (v405(v435, 1, v436) != 1)
      {
        outlined destroy of UTType?(*(v0 + 1352), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(*(v0 + 1040) + 32))(*(v0 + 1088), *(v0 + 1352), *(v0 + 1032));
    }

    v437 = *(v0 + 1096);
    v438 = *(v0 + 1088);
    v439 = *(v0 + 1040);
    v440 = *(v0 + 1032);
    v441 = static Date.> infix(_:_:)();
    v442 = *(v439 + 8);
    v442(v438, v440);
    v442(v437, v440);
    if ((v441 & 1) == 0)
    {
      v468 = *(v0 + 1120);
      v469 = *(v0 + 1032);
      v470 = *(v0 + 960);

      outlined destroy of CloudDevice(v470, type metadata accessor for CloudDevice);
      v442(v468, v469);
      goto LABEL_85;
    }

    v509 = v442;
    v443 = *(v0 + 1400);
    v444 = *(v0 + 1120);
    v445 = *(v0 + 1040);
    v446 = *(v0 + 1032);
    v447 = *(v0 + 976);
    v448 = *(*(v0 + 888) + 28);
    outlined destroy of UTType?(v447 + v448, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v445 + 16))(v447 + v448, v444, v446);
    v449 = *(v445 + 56);
    v449(v447 + v448, 0, 1, v446);

    *v511 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v449(v443, 0, 1, v446);
    outlined assign with take of Date?(v443, v432 + v433);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v450 = *(v0 + 1688);
    v451 = *(v0 + 1624);
    v452 = *(v0 + 1616);
    v453 = __swift_project_value_buffer(v452, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v451 + 16))(v450, v453, v452);
    v454 = Logger.logObject.getter();
    v455 = static os_log_type_t.info.getter();
    v456 = os_log_type_enabled(v454, v455);
    v127 = *(v0 + 1928);
    v457 = *(v0 + 1688);
    v458 = *(v0 + 1624);
    v516 = *(v0 + 1616);
    v459 = *(v0 + 1120);
    v460 = *(v0 + 1032);
    v461 = *(v0 + 960);
    if (!v456)
    {

      (*(v458 + 8))(v457, v516);
      outlined destroy of CloudDevice(v461, type metadata accessor for CloudDevice);
      v509(v459, v460);
      goto LABEL_66;
    }

    v501 = *(v0 + 1032);
    v462 = swift_slowAlloc();
    v523[0] = swift_slowAlloc();
    v485 = v459;
    v463 = v523[0];
    *v462 = 136446466;
    swift_beginAccess();
    v464 = StaticString.description.getter();
    v486 = v127;
    v466 = v457;
    v467 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v464, v465, v523);

    *(v462 + 4) = v467;
    *(v462 + 12) = 2082;
    *(v462 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);

    _os_log_impl(&dword_21607C000, v454, v455, "%{public}s.%{public}s Cleanup stale nomination", v462, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v463, -1, -1);
    MEMORY[0x21CE94770](v462, -1, -1);

    (*(v458 + 8))(v466, v516);
    outlined destroy of CloudDevice(v461, type metadata accessor for CloudDevice);
    v509(v485, v501);
LABEL_180:
    v140 = v486;
    goto LABEL_67;
  }

LABEL_85:
  outlined destroy of CloudDevice(*(v0 + 976), type metadata accessor for CloudDevice);
LABEL_86:
  v196 = *(v0 + 2000);
  v197 = *(v0 + 1824);
  v198 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v197, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v199 = v196(v197, 1, v198);
  v200 = *(v0 + 1832);
  v201 = *(v0 + 1824);
  v202 = *(v0 + 888);
  if (v199 == 1)
  {
    v203 = *(v0 + 2000);
    outlined init with copy of DateInterval?(*(v0 + 1936), *(v0 + 1832), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v203(v201, 1, v202) != 1)
    {
      outlined destroy of UTType?(*(v0 + 1824), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v204 = *(v0 + 1984);
    outlined init with take of CloudDevice(*(v0 + 1824), *(v0 + 1832), type metadata accessor for CloudDevice);
    v204(v200, 0, 1, v202);
  }

  v205 = *(v0 + 1832);
  v206 = *(v0 + 888);
  if ((*(v0 + 2000))(v205, 1, v206) == 1)
  {
    outlined destroy of UTType?(v205, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_100;
  }

  v207 = *(v0 + 1344);
  v208 = *(v0 + 1040);
  v209 = *(v0 + 1032);
  v210 = *(v0 + 952);
  outlined init with take of CloudDevice(v205, v210, type metadata accessor for CloudDevice);
  v211 = *(v206 + 56);
  outlined init with copy of DateInterval?(v210 + v211, v207, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v212 = *(v208 + 48);
  if (v212(v207, 1, v209) == 1)
  {
    v213 = *(v0 + 952);
    outlined destroy of UTType?(*(v0 + 1344), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_98:
    v225 = v213;
    goto LABEL_99;
  }

  v491 = v211;
  v498 = v210;
  v214 = *(v0 + 1240);
  v215 = *(v0 + 1040);
  v216 = *(v0 + 1032);
  v519 = *(v215 + 32);
  v519(*(v0 + 1080), *(v0 + 1344), v216);
  static Date.distantPast.getter();
  v217 = static Date.> infix(_:_:)();
  v218 = *(v215 + 8);
  v218(v214, v216);
  if ((v217 & 1) == 0)
  {
    v213 = *(v0 + 952);
    v218(*(v0 + 1080), *(v0 + 1032));
    goto LABEL_98;
  }

  v219 = *(v0 + 2000);
  v220 = *(v0 + 1816);
  v221 = *(v0 + 888);
  CloudDevicesDB.primaryDevice.getter(v220);
  v222 = v219(v220, 1, v221);
  v223 = *(v0 + 1816);
  if (v222 != 1)
  {
    v383 = *(v0 + 952);
    v384 = *(v0 + 944);
    outlined init with take of CloudDevice(*(v0 + 1816), v384, type metadata accessor for CloudDevice);
    if (*v384 == *v383 && v384[1] == v383[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v385 = *(v0 + 952);
      v386 = *(v0 + 944);
      v218(*(v0 + 1080), *(v0 + 1032));
      outlined destroy of CloudDevice(v386, type metadata accessor for CloudDevice);
      v225 = v385;
      goto LABEL_99;
    }

    v392 = *(v0 + 1336);
    v393 = *(v0 + 1032);
    v394 = *(v0 + 944);
    static Date.now.getter();
    outlined init with copy of DateInterval?(v394 + *(v206 + 56), v392, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v395 = v212(v392, 1, v393);
    v396 = *(v0 + 1336);
    if (v395 == 1)
    {
      v397 = *(v0 + 1080);
      v398 = *(v0 + 1032);
      v399 = *(v0 + 944);
      v218(*(v0 + 1072), v398);
      v218(v397, v398);
      outlined destroy of CloudDevice(v399, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v396, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_190:
      v225 = *(v0 + 952);
      goto LABEL_99;
    }

    v409 = *(v0 + 1240);
    v410 = *(v0 + 1032);
    v519(*(v0 + 1064), *(v0 + 1336), v410);
    static Date.distantPast.getter();
    v411 = static Date.> infix(_:_:)();
    v412 = v410;
    v413 = v218;
    v218(v409, v412);
    if (v411)
    {
      Date.timeIntervalSince(_:)();
      if (v414 > 86400.0)
      {
        v415 = *(v0 + 1984);
        v416 = *(v0 + 1928);
        v417 = *(v0 + 1400);
        v418 = *(v0 + 1040);
        v419 = *(v0 + 1032);
        v420 = *(v0 + 952);
        v421 = *(v0 + 888);
        static Date.distantPast.getter();
        v422 = *(v418 + 56);
        v422(v417, 0, 1, v419);
        outlined assign with take of Date?(v417, v498 + v491);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v416, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v422(v417, 0, 1, v419);
        outlined assign with take of Date?(v417, v420 + *(v421 + 64));
        outlined init with copy of CloudDevice(v420, v416, type metadata accessor for CloudDevice);
        v415(v416, 0, 1, v421);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v423 = static DefaultsManager.momentsUI;
        v424 = *(v0 + 1056);
        v425 = *(v0 + 1032);
        if (static DefaultsManager.momentsUI)
        {
          v426 = Date._bridgeToObjectiveC()().super.isa;
          v427 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v423 setValue:v426 forKey:v427];

          v218(v424, v425);
          static Date.distantPast.getter();
          v428 = Date._bridgeToObjectiveC()().super.isa;
          v429 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v423 setValue:v428 forKey:v429];
        }

        else
        {
          v218(v424, v425);
          static Date.distantPast.getter();
        }

        v478 = *(v0 + 1080);
        v479 = *(v0 + 1072);
        v480 = *(v0 + 1064);
        v481 = *(v0 + 1032);
        v482 = *(v0 + 944);
        v218(*(v0 + 1048), v481);
        v218(v480, v481);
        v218(v479, v481);
        v218(v478, v481);
        v477 = v482;
        goto LABEL_189;
      }

      v471 = *(v0 + 1080);
      v472 = *(v0 + 1072);
      v473 = *(v0 + 1064);
      v474 = *(v0 + 1032);
      v475 = *(v0 + 944);
      v476 = v474;
      v413 = v218;
    }

    else
    {
      v471 = *(v0 + 1080);
      v472 = *(v0 + 1072);
      v473 = *(v0 + 1064);
      v474 = *(v0 + 1032);
      v475 = *(v0 + 944);
      v476 = v474;
    }

    v413(v473, v476);
    v413(v472, v474);
    v413(v471, v474);
    v477 = v475;
LABEL_189:
    outlined destroy of CloudDevice(v477, type metadata accessor for CloudDevice);
    goto LABEL_190;
  }

  v224 = *(v0 + 952);
  v218(*(v0 + 1080), *(v0 + 1032));
  outlined destroy of UTType?(v223, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v225 = v224;
LABEL_99:
  outlined destroy of CloudDevice(v225, type metadata accessor for CloudDevice);
LABEL_100:
  v226 = *(v0 + 2000);
  v227 = *(v0 + 1808);
  v228 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1928), v227, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v226(v227, 1, v228) == 1)
  {
    v229 = *(v0 + 1808);
    outlined destroy of UTType?(*(v0 + 1928), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  }

  else
  {
    outlined init with take of CloudDevice(*(v0 + 1808), *(v0 + 936), type metadata accessor for CloudDevice);
    v249 = CloudDevice.description()();
    *(v0 + 2080) = v249._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v250 = *(v0 + 1680);
    v251 = *(v0 + 1624);
    v252 = *(v0 + 1616);
    v253 = __swift_project_value_buffer(v252, static CloudDevicesDB.Log);
    *(v0 + 2088) = v253;
    swift_beginAccess();
    v254 = *(v251 + 16);
    *(v0 + 2096) = v254;
    *(v0 + 2104) = (v251 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v507 = v254;
    v254(v250, v253, v252);
    swift_bridgeObjectRetain_n();
    v255 = Logger.logObject.getter();
    v256 = static os_log_type_t.debug.getter();
    v257 = os_log_type_enabled(v255, v256);
    v258 = *(v0 + 1680);
    v259 = *(v0 + 1624);
    v520 = *(v0 + 1616);
    if (v257)
    {
      v260 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v523[0] = v261;
      *v260 = 136446722;
      swift_beginAccess();
      v262 = StaticString.description.getter();
      v493 = v258;
      v264 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v263, v523);

      *(v260 + 4) = v264;
      *(v260 + 12) = 2082;
      *(v260 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
      *(v260 + 22) = 2080;

      v265 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v249._countAndFlagsBits, v249._object, v523);

      *(v260 + 24) = v265;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v255, v256, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v260, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v261, -1, -1);
      MEMORY[0x21CE94770](v260, -1, -1);

      v266 = *(v259 + 8);
      v266(v493, v520);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v266 = *(v259 + 8);
      v266(v258, v520);
    }

    *(v0 + 2112) = v266;
    v270 = *(v0 + 1968);
    v271 = *(v0 + 1960);
    v272 = *(v0 + 928);
    v273 = *(v0 + 840) + *(v0 + 1976);
    v274 = *(v273 + 8);
    outlined init with copy of CloudDevice(*(v0 + 936), v272, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v523[0] = v274;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v272, v271, v270, isUniquelyReferenced_nonNull_native);

    *(v273 + 8) = v523[0];

    CloudDevicesDB.persistLocalData()();
    if (v276)
    {
      v507(*(v0 + 1632), v253, *(v0 + 1616));
      v277 = v276;
      v278 = v276;
      v279 = Logger.logObject.getter();
      v280 = static os_log_type_t.error.getter();
      v281 = os_log_type_enabled(v279, v280);
      v282 = *(v0 + 1928);
      v283 = *(v0 + 1632);
      v284 = *(v0 + 1616);
      v285 = *(v0 + 936);
      if (v281)
      {
        v494 = *(v0 + 1616);
        v286 = swift_slowAlloc();
        v487 = v283;
        v287 = swift_slowAlloc();
        v523[0] = swift_slowAlloc();
        v288 = v523[0];
        *v286 = 136446722;
        swift_beginAccess();
        v289 = StaticString.description.getter();
        v483 = v285;
        v291 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v289, v290, v523);

        *(v286 + 4) = v291;
        *(v286 + 12) = 2082;
        *(v286 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
        *(v286 + 22) = 2112;
        v292 = v276;
        v293 = _swift_stdlib_bridgeErrorToNSError();
        *(v286 + 24) = v293;
        *v287 = v293;

        _os_log_impl(&dword_21607C000, v279, v280, "%{public}s.%{public}s Failed to persist local data: %@", v286, 0x20u);
        outlined destroy of UTType?(v287, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x21CE94770](v287, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v288, -1, -1);
        MEMORY[0x21CE94770](v286, -1, -1);

        v266(v487, v494);
        outlined destroy of CloudDevice(v483, type metadata accessor for CloudDevice);
      }

      else
      {

        v266(v283, v284);
        outlined destroy of CloudDevice(v285, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v282, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v311 = (v0 + 1936);
      goto LABEL_150;
    }

    v294 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v295 = *v294;
    *(v0 + 2120) = *v294;
    if (v295)
    {
      v296 = *(v0 + 936);
      v521 = v294[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
      v515 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v297 = *(v515 - 8);
      v298 = (*(v297 + 80) + 32) & ~*(v297 + 80);
      v299 = swift_allocObject();
      *(v0 + 2128) = v299;
      *(v299 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
      v300 = *v296;
      v301 = v296[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
      v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v304 = v303;
      swift_unknownObjectRetain();

      v305._countAndFlagsBits = 0x73656369766544;
      v305._object = 0xE700000000000000;
      v306._countAndFlagsBits = v302;
      v306._object = v304;
      v307 = CKRecordZoneID.init(zoneName:ownerName:)(v305, v306).super.isa;
      v308._countAndFlagsBits = v300;
      v308._object = v301;
      *(v299 + v298) = CKRecordID.init(recordName:zoneID:)(v308, v307);
      (*(v297 + 104))(v299 + v298, *MEMORY[0x277CBBC68], v515);
      ObjectType = swift_getObjectType();
      v310 = swift_task_alloc();
      *(v0 + 2136) = v310;
      *v310 = v0;
      v310[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v299, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v521);
    }

    v229 = *(v0 + 1928);
    v362 = *(v0 + 936);

    outlined destroy of CloudDevice(v362, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v229, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v230 = *(v0 + 1800);
  v231 = *(v0 + 1792);
  v232 = *(v0 + 1656);
  v233 = *(v0 + 1624);
  v234 = *(v0 + 1616);
  v235 = __swift_project_value_buffer(v234, static CloudDevicesDB.Log);
  swift_beginAccess();
  v514 = v235;
  v506 = *(v233 + 16);
  v506(v232, v235, v234);
  outlined init with copy of DateInterval?(v230, v231, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v236 = Logger.logObject.getter();
  v237 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v236, v237))
  {
    v492 = *(v0 + 2000);
    v238 = *(v0 + 1792);
    v239 = *(v0 + 1784);
    v240 = *(v0 + 888);
    v241 = swift_slowAlloc();
    v499 = swift_slowAlloc();
    v523[0] = v499;
    *v241 = 136446722;
    swift_beginAccess();
    v242 = StaticString.description.getter();
    v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v242, v243, v523);

    *(v241 + 4) = v244;
    *(v241 + 12) = 2082;
    *(v241 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
    *(v241 + 22) = 2080;
    outlined init with copy of DateInterval?(v238, v239, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v245 = v492(v239, 1, v240);
    v246 = *(v0 + 1784);
    if (v245 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v247 = 0xE500000000000000;
      v248 = 0x3E6C696E3CLL;
    }

    else
    {
      v248 = *v246;
      v247 = v246[1];

      outlined destroy of CloudDevice(v246, type metadata accessor for CloudDevice);
    }

    v312 = *(v0 + 1792);
    v313 = *(v0 + 1656);
    v314 = *(v0 + 1624);
    v315 = *(v0 + 1616);
    v316 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248, v247, v523);

    *(v241 + 24) = v316;
    outlined destroy of UTType?(v312, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    _os_log_impl(&dword_21607C000, v236, v237, "%{public}s.%{public}s newPrimary = %s", v241, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v499, -1, -1);
    MEMORY[0x21CE94770](v241, -1, -1);

    v500 = *(v314 + 8);
    v500(v313, v315);
  }

  else
  {
    v267 = *(v0 + 1656);
    v268 = *(v0 + 1624);
    v269 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v500 = *(v268 + 8);
    v500(v267, v269);
  }

  v317 = *(v0 + 2000);
  v318 = *(v0 + 1800);
  v319 = *(v0 + 1776);
  v320 = *(v0 + 888);
  v321 = *(v0 + 864);
  v322 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v319);
  v323 = *(v322 + 48);
  outlined init with copy of DateInterval?(v319, v321, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of DateInterval?(v318, v321 + v323, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v324 = v317(v321, 1, v320);
  v325 = *(v0 + 2000);
  if (v324 == 1)
  {
    v326 = *(v0 + 888);
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v325(v321 + v323, 1, v326) == 1)
    {
      outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_131:
      v334 = *(v0 + 1648);
      v335 = *(v0 + 1616);

      v337 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v336);

      v506(v334, v514, v335);
      swift_bridgeObjectRetain_n();
      v338 = Logger.logObject.getter();
      v339 = static os_log_type_t.debug.getter();
      v340 = os_log_type_enabled(v338, v339);
      v341 = *(v0 + 1648);
      v342 = *(v0 + 1616);
      if (v340)
      {
        v488 = *(v0 + 888);
        v343 = swift_slowAlloc();
        v344 = swift_slowAlloc();
        v523[0] = v344;
        *v343 = 136446722;
        v495 = v341;
        swift_beginAccess();
        v345 = StaticString.description.getter();
        v347 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v346, v523);

        *(v343 + 4) = v347;
        *(v343 + 12) = 2082;
        *(v343 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
        *(v343 + 22) = 2080;

        v349 = MEMORY[0x21CE922B0](v348, v488);
        v351 = v350;

        v352 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v349, v351, v523);

        *(v343 + 24) = v352;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v338, v339, "%{public}s.%{public}s newlyOnboarded = %s", v343, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v344, -1, -1);
        MEMORY[0x21CE94770](v343, -1, -1);

        v353 = v495;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v353 = v341;
      }

      v500(v353, v342);
      *(v0 + 832) = v337;

      CurrentValueSubject.send(_:)();

      goto LABEL_135;
    }

    goto LABEL_129;
  }

  v327 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v328 = v325(v321 + v323, 1, v327);
  v329 = *(v0 + 1776);
  v330 = *(v0 + 1768);
  if (v328 == 1)
  {
    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of CloudDevice(v330, type metadata accessor for CloudDevice);
LABEL_129:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
    goto LABEL_135;
  }

  v331 = *(v0 + 928);
  v332 = *(v0 + 864);
  outlined init with take of CloudDevice(v321 + v323, v331, type metadata accessor for CloudDevice);
  v333 = specialized static CloudDevice.== infix(_:_:)(v330, v331);
  outlined destroy of CloudDevice(v331, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v329, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of CloudDevice(v330, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v332, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v333)
  {
    goto LABEL_131;
  }

LABEL_135:
  v311 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_150:
    outlined destroy of UTType?(*v311, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v382 = *(v0 + 8);

    return v382();
  }

  v354 = *(v0 + 2000);
  v355 = *(v0 + 1760);
  v356 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v355, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v354(v355, 1, v356) == 1)
  {
    outlined destroy of UTType?(*v311, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v311 = (v0 + 1760);
    goto LABEL_150;
  }

  v357 = *(v0 + 904);
  v358 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v357, type metadata accessor for CloudDevice);
  v359 = (v357 + *(v358 + 108));
  if (v359[1])
  {
    v360 = *v359;
    v361 = v359[1];
  }

  else
  {
    v363 = *(v0 + 904);
    v360 = *v363;
    v361 = v363[1];
  }

  *(v0 + 2152) = v361;
  *(v0 + 2144) = v360;
  v506(*(v0 + 1640), v514, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v364 = Logger.logObject.getter();
  v365 = static os_log_type_t.error.getter();
  v366 = os_log_type_enabled(v364, v365);
  v367 = *(v0 + 1640);
  v368 = *(v0 + 1616);
  if (v366)
  {
    v522 = *(v0 + 1616);
    v369 = swift_slowAlloc();
    v370 = swift_slowAlloc();
    v523[0] = v370;
    *v369 = 136446722;
    swift_beginAccess();
    v371 = StaticString.description.getter();
    v508 = v367;
    v373 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v371, v372, v523);

    *(v369 + 4) = v373;
    *(v369 + 12) = 2082;
    *(v369 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v523);
    *(v369 + 22) = 2080;

    v374 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v360, v361, v523);

    *(v369 + 24) = v374;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v364, v365, "%{public}s.%{public}s generation: %s", v369, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v370, -1, -1);
    MEMORY[0x21CE94770](v369, -1, -1);

    v375 = v508;
    v376 = v522;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v375 = v367;
    v376 = v368;
  }

  v500(v375, v376);
  v377 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v378 = *v377;
  *(v0 + 2160) = *v377;
  if (!v378)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_150;
  }

  v379 = v377[1];
  *(v0 + 2168) = v379;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v379 + 144);
  *(v0 + 2192) = (v379 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v381 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v381, v380);
}

{
  v1 = *(*v0 + 840);

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v532 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[215];
  v2 = v0[203];
  v3 = v0[202];
  v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[241];
  v9 = v0[215];
  v10 = v0[203];
  v11 = v0[202];
  if (v7)
  {
    v524 = v0[241];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v531[0] = v13;
    *v12 = 136446466;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v531);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
    _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Device environment changed", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
    v17 = v524;
  }

  else
  {

    (*(v10 + 8))(v9, v11);
    v17 = v8;
  }

  outlined destroy of UTType?(v17, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v18 = v0[248];
  v19 = v0[241];
  v20 = v0[111];
  outlined init with take of CloudDevice(v0[124], v19, type metadata accessor for CloudDevice);
  v18(v19, 0, 1, v20);
  v21 = v0[250];
  v22 = v0[235];
  v23 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v22, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v21(v22, 1, v23) == 1)
  {
    v24 = v0[250];
    v25 = v0[235];
    v26 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[236], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v24(v25, 1, v26) != 1)
    {
      outlined destroy of UTType?(v0[235], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v27 = v0[248];
    v28 = v0[236];
    v29 = v0[111];
    outlined init with take of CloudDevice(v0[235], v28, type metadata accessor for CloudDevice);
    v27(v28, 0, 1, v29);
  }

  v30 = v0[236];
  if ((v0[250])(v30, 1, v0[111]) == 1)
  {
    outlined destroy of UTType?(v30, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_32;
  }

  v31 = v0[105];
  outlined init with take of CloudDevice(v30, v0[123], type metadata accessor for CloudDevice);
  v32 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = v0[123];
  if (v33 != 2)
  {
    if ((CloudDevice.onboarded.getter() ^ v33))
    {
      if (v33)
      {
        v35 = v0[142];
        v36 = v0[130];
        v37 = v0[129];
        v38 = v0[123];
        v39 = v0[111];
        static Date.now.getter();
        v40 = *(v39 + 80);
        outlined destroy of UTType?(v38 + v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v36 + 16))(v38 + v40, v35, v37);
        (*(v36 + 56))(v38 + v40, 0, 1, v37);
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v41 = v0 + 142;
        v42 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
LABEL_18:
          v43 = *v41;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v45 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v42 setValue:isa forKey:v45];

LABEL_25:
          (*(v0[130] + 8))(v43, v0[129]);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v51 = v0[214];
          v52 = v0[203];
          v53 = v0[202];
          v54 = __swift_project_value_buffer(v53, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v52 + 16))(v51, v54, v53);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.info.getter();
          v57 = os_log_type_enabled(v55, v56);
          v58 = v0[241];
          v59 = v0[214];
          v60 = v0[203];
          v61 = v0[202];
          if (v57)
          {
            v525 = v0[214];
            v62 = swift_slowAlloc();
            v517 = v58;
            v63 = swift_slowAlloc();
            v531[0] = v63;
            *v62 = 136446722;
            swift_beginAccess();
            v64 = StaticString.description.getter();
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v531);

            *(v62 + 4) = v66;
            *(v62 + 12) = 2082;
            *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
            *(v62 + 22) = 1024;
            *(v62 + 24) = v33 & 1;
            _os_log_impl(&dword_21607C000, v55, v56, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v62, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v63, -1, -1);
            MEMORY[0x21CE94770](v62, -1, -1);

            (*(v60 + 8))(v525, v61);
            v67 = v517;
          }

          else
          {

            (*(v60 + 8))(v59, v61);
            v67 = v58;
          }

          outlined destroy of UTType?(v67, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
          v68 = v0[248];
          v69 = v0[241];
          v70 = v0[123];
          v71 = v0[111];
          outlined init with copy of CloudDevice(v70, v69, type metadata accessor for CloudDevice);
          v68(v69, 0, 1, v71);
          v34 = v70;
          goto LABEL_31;
        }
      }

      else
      {
        v46 = v0[175];
        v47 = v0[130];
        v48 = v0[129];
        v49 = v0[123];
        v50 = v0[111];
        static Date.distantPast.getter();
        (*(v47 + 56))(v46, 0, 1, v48);
        outlined assign with take of Date?(v46, v49 + *(v50 + 80));
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v41 = v0 + 141;
        v42 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
          goto LABEL_18;
        }
      }

      v43 = *v41;
      goto LABEL_25;
    }

    v34 = v0[123];
  }

LABEL_31:
  outlined destroy of CloudDevice(v34, type metadata accessor for CloudDevice);
LABEL_32:
  v72 = v0[250];
  v73 = v0[233];
  v74 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v73, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v72(v73, 1, v74) == 1)
  {
    v75 = v0[250];
    v76 = v0[233];
    v77 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[234], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v75(v76, 1, v77) != 1)
    {
      outlined destroy of UTType?(v0[233], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v78 = v0[248];
    v79 = v0[234];
    v80 = v0[111];
    outlined init with take of CloudDevice(v0[233], v79, type metadata accessor for CloudDevice);
    v78(v79, 0, 1, v80);
  }

  v81 = v0[234];
  v82 = v0[111];
  if ((v0[250])(v81, 1, v82) == 1)
  {
    outlined destroy of UTType?(v81, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_86;
  }

  v83 = v0[122];
  outlined init with take of CloudDevice(v81, v83, type metadata accessor for CloudDevice);
  v84 = (v83 + *(v82 + 68));
  v85 = v84[1];
  if (v85)
  {
    v518 = (v83 + *(v82 + 68));
    v526 = v84[1];
    v86 = *v84;
    if (*v84)
    {
      v87 = 0;
    }

    else
    {
      v87 = v85 == 0xE000000000000000;
    }

    v88 = v87;
    if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v503 = v88;
      v509 = v86;
      v89 = v0[174];
      v90 = v0[130];
      v91 = v0[129];
      v92 = v0[122];
      v93 = v0[110];
      v94 = v0[109];
      v95 = *(v0[111] + 72);

      static Date.distantPast.getter();
      (*(v90 + 56))(v89, 0, 1, v91);
      v96 = *(v94 + 48);
      outlined init with copy of DateInterval?(v92 + v95, v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of DateInterval?(v89, v93 + v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v97 = *(v90 + 48);
      if (v97(v93, 1, v91) == 1)
      {
        v98 = v0[129];
        outlined destroy of UTType?(v0[174], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if (v97(v93 + v96, 1, v98) == 1)
        {
          v99 = v0[110];

          v100 = &_s10Foundation4DateVSgMd;
          v101 = &_s10Foundation4DateVSgMR;
LABEL_50:
          outlined destroy of UTType?(v99, v100, v101);
          goto LABEL_85;
        }

        goto LABEL_53;
      }

      v102 = v0[129];
      outlined init with copy of DateInterval?(v0[110], v0[173], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v103 = v97(v93 + v96, 1, v102);
      v104 = v0[174];
      v105 = v0[173];
      if (v103 == 1)
      {
        v106 = v0[130];
        v107 = v0[129];
        outlined destroy of UTType?(v0[174], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        (*(v106 + 8))(v105, v107);
LABEL_53:
        outlined destroy of UTType?(v0[110], &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        v85 = v526;
        v86 = v509;
        goto LABEL_56;
      }

      v108 = v0[155];
      v109 = v0[130];
      v110 = v0[129];
      v496 = v0[110];
      (*(v109 + 32))(v108, v93 + v96, v110);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v111 = dispatch thunk of static Equatable.== infix(_:_:)();
      v112 = *(v109 + 8);
      v112(v108, v110);
      outlined destroy of UTType?(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v112(v105, v110);
      outlined destroy of UTType?(v496, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v85 = v526;
      v86 = v509;
      v88 = v503;
      if (v111)
      {
LABEL_84:

        goto LABEL_85;
      }
    }

    else
    {
    }

LABEL_56:
    v113 = v0[250];
    v114 = v0[232];
    v115 = v0[111];
    v116 = v0[105] + v0[247];
    static Date.now.getter();
    v117 = *(v116 + 8);

    specialized Dictionary.subscript.getter(v86, v85, v117, v114);

    LODWORD(v115) = v113(v114, 1, v115);
    outlined destroy of UTType?(v114, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v115 == 1)
    {
      v118 = v0[175];
      v119 = v0[140];
      v120 = v0[130];
      v121 = v0[129];
      v122 = v0[122];
      v123 = v0[111];
      v124 = *(v123 + 28);
      outlined destroy of UTType?(v122 + v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v120 + 16))(v122 + v124, v119, v121);
      v125 = *(v120 + 56);
      v125(v122 + v124, 0, 1, v121);

      *v518 = xmmword_21658F9D0;
      static Date.distantPast.getter();
      v125(v118, 0, 1, v121);
      outlined assign with take of Date?(v118, v122 + *(v123 + 72));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v126 = v0[213];
      v127 = v0[203];
      v128 = v0[202];
      v129 = __swift_project_value_buffer(v128, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v127 + 16))(v126, v129, v128);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.info.getter();
      v132 = os_log_type_enabled(v130, v131);
      v133 = v0[241];
      v134 = v0[213];
      v135 = v0[203];
      v136 = v0[202];
      v137 = v0[140];
      v138 = v0[130];
      v139 = v0[129];
      if (v132)
      {
        v519 = v0[202];
        v140 = swift_slowAlloc();
        v510 = v137;
        v141 = swift_slowAlloc();
        v531[0] = v141;
        *v140 = 136446466;
        swift_beginAccess();
        v142 = StaticString.description.getter();
        v497 = v133;
        v144 = v134;
        v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, v531);

        *(v140 + 4) = v145;
        *(v140 + 12) = 2082;
        *(v140 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);

        _os_log_impl(&dword_21607C000, v130, v131, "%{public}s.%{public}s Cleanup invalid nomination", v140, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v141, -1, -1);
        MEMORY[0x21CE94770](v140, -1, -1);

        (*(v135 + 8))(v144, v519);
        (*(v138 + 8))(v510, v139);
        v146 = v497;
LABEL_67:
        outlined destroy of UTType?(v146, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v152 = v0[248];
        v153 = v0[241];
        v154 = v0[111];
        outlined init with copy of CloudDevice(v0[122], v153, type metadata accessor for CloudDevice);
        v152(v153, 0, 1, v154);
        goto LABEL_85;
      }

      (*(v135 + 8))(v134, v136);
      (*(v138 + 8))(v137, v139);
LABEL_66:
      v146 = v133;
      goto LABEL_67;
    }

    if (v88)
    {
      goto LABEL_83;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v147 = v0[250];
      v148 = v0[231];
      v149 = v0[111];
      CloudDevicesDB.primaryDevice.getter(v148);
      v150 = v147(v148, 1, v149);
      v151 = v0[231];
      if (v150 == 1)
      {
        outlined destroy of UTType?(v151, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      }

      else
      {
        v155 = v86;
        v156 = v0[172];
        v157 = v0[130];
        v158 = v0[129];
        v159 = v0[121];
        v160 = v0[111];
        outlined init with take of CloudDevice(v151, v159, type metadata accessor for CloudDevice);
        outlined init with copy of DateInterval?(v159 + *(v160 + 56), v156, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v161 = *(v157 + 48);
        v162 = v161(v156, 1, v158);
        v163 = v0[172];
        if (v162 == 1)
        {
          v164 = v0[129];
          static Date.distantPast.getter();
          if (v161(v163, 1, v164) != 1)
          {
            outlined destroy of UTType?(v0[172], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(v0[130] + 32))(v0[139], v0[172], v0[129]);
        }

        v165 = v0[171];
        v166 = v0[129];
        v167 = *(v0[111] + 72);
        v511 = v0[122];
        outlined init with copy of DateInterval?(v511 + v167, v165, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v168 = v161(v165, 1, v166);
        v169 = v0[171];
        if (v168 == 1)
        {
          v170 = v0[129];
          static Date.distantPast.getter();
          if (v161(v169, 1, v170) != 1)
          {
            outlined destroy of UTType?(v0[171], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          (*(v0[130] + 32))(v0[138], v0[171], v0[129]);
        }

        v171 = v0[139];
        v172 = v0[138];
        v173 = v0[130];
        v174 = v0[129];
        v175 = static Date.> infix(_:_:)();
        v176 = *(v173 + 8);
        v176(v172, v174);
        v176(v171, v174);
        if (v175)
        {
          v504 = v176;
          v177 = v0[175];
          v178 = v0[140];
          v179 = v0[130];
          v180 = v0[129];
          v181 = v0[122];
          v182 = *(v0[111] + 28);
          outlined destroy of UTType?(v181 + v182, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          (*(v179 + 16))(v181 + v182, v178, v180);
          v183 = *(v179 + 56);
          v183(v181 + v182, 0, 1, v180);

          *v518 = xmmword_21658F9D0;
          static Date.distantPast.getter();
          v183(v177, 0, 1, v180);
          outlined assign with take of Date?(v177, v511 + v167);
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v184 = v0[212];
          v185 = v0[203];
          v186 = v0[202];
          v187 = __swift_project_value_buffer(v186, static CloudDevicesDB.Log);
          swift_beginAccess();
          (*(v185 + 16))(v184, v187, v186);
          v188 = Logger.logObject.getter();
          v189 = static os_log_type_t.info.getter();
          v190 = os_log_type_enabled(v188, v189);
          v133 = v0[241];
          v191 = v0[212];
          v192 = v0[203];
          v520 = v0[202];
          v193 = v0[140];
          v194 = v0[129];
          v195 = v0[121];
          if (!v190)
          {

            (*(v192 + 8))(v191, v520);
            outlined destroy of CloudDevice(v195, type metadata accessor for CloudDevice);
            v504(v193, v194);
            goto LABEL_66;
          }

          v512 = v0[129];
          v196 = swift_slowAlloc();
          v531[0] = swift_slowAlloc();
          v491 = v193;
          v197 = v531[0];
          *v196 = 136446466;
          swift_beginAccess();
          v198 = StaticString.description.getter();
          v493 = v133;
          v200 = v191;
          v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v199, v531);

          *(v196 + 4) = v201;
          *(v196 + 12) = 2082;
          *(v196 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);

          _os_log_impl(&dword_21607C000, v188, v189, "%{public}s.%{public}s Cleanup stale nomination", v196, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v197, -1, -1);
          MEMORY[0x21CE94770](v196, -1, -1);

          (*(v192 + 8))(v200, v520);
          outlined destroy of CloudDevice(v195, type metadata accessor for CloudDevice);
          v504(v491, v512);
          goto LABEL_180;
        }

        outlined destroy of CloudDevice(v0[121], type metadata accessor for CloudDevice);
        v86 = v155;
      }
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_83:
      (*(v0[130] + 8))(v0[140], v0[129]);
      goto LABEL_84;
    }

    v394 = v0[250];
    v395 = v0[230];
    v396 = v0[111];
    v397 = *(v0[105] + v0[247] + 8);

    specialized Dictionary.subscript.getter(v86, v85, v397, v395);

    v398 = v394(v395, 1, v396);
    v99 = v0[230];
    if (v398 == 1)
    {
      (*(v0[130] + 8))(v0[140], v0[129]);

      v100 = &_s9MomentsUI11CloudDeviceVSgMd;
      v101 = &_s9MomentsUI11CloudDeviceVSgMR;
      goto LABEL_50;
    }

    v407 = v0[170];
    v408 = v0[130];
    v409 = v0[129];
    v410 = v0[120];
    v411 = v0[111];
    outlined init with take of CloudDevice(v0[230], v410, type metadata accessor for CloudDevice);
    outlined init with copy of DateInterval?(v410 + *(v411 + 64), v407, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v412 = *(v408 + 48);
    v413 = v412(v407, 1, v409);
    v414 = v0[170];
    if (v413 == 1)
    {
      v415 = v0[129];
      static Date.distantPast.getter();
      if (v412(v414, 1, v415) != 1)
      {
        outlined destroy of UTType?(v0[170], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v0[130] + 32))(v0[137], v0[170], v0[129]);
    }

    v437 = v0[169];
    v438 = v0[129];
    v439 = v0[122];
    v440 = *(v0[111] + 72);
    outlined init with copy of DateInterval?(v439 + v440, v437, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v441 = v412(v437, 1, v438);
    v442 = v0[169];
    if (v441 == 1)
    {
      v443 = v0[129];
      static Date.distantPast.getter();
      if (v412(v442, 1, v443) != 1)
      {
        outlined destroy of UTType?(v0[169], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v0[130] + 32))(v0[136], v0[169], v0[129]);
    }

    v444 = v0[137];
    v445 = v0[136];
    v446 = v0[130];
    v447 = v0[129];
    v448 = static Date.> infix(_:_:)();
    v449 = *(v446 + 8);
    v449(v445, v447);
    v449(v444, v447);
    if ((v448 & 1) == 0)
    {
      v475 = v0[140];
      v476 = v0[129];
      v477 = v0[120];

      outlined destroy of CloudDevice(v477, type metadata accessor for CloudDevice);
      v449(v475, v476);
      goto LABEL_85;
    }

    v516 = v449;
    v450 = v0[175];
    v451 = v0[140];
    v452 = v0[130];
    v453 = v0[129];
    v454 = v0[122];
    v455 = *(v0[111] + 28);
    outlined destroy of UTType?(v454 + v455, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v452 + 16))(v454 + v455, v451, v453);
    v456 = *(v452 + 56);
    v456(v454 + v455, 0, 1, v453);

    *v518 = xmmword_21658F9D0;
    static Date.distantPast.getter();
    v456(v450, 0, 1, v453);
    outlined assign with take of Date?(v450, v439 + v440);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v457 = v0[211];
    v458 = v0[203];
    v459 = v0[202];
    v460 = __swift_project_value_buffer(v459, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v458 + 16))(v457, v460, v459);
    v461 = Logger.logObject.getter();
    v462 = static os_log_type_t.info.getter();
    v463 = os_log_type_enabled(v461, v462);
    v133 = v0[241];
    v464 = v0[211];
    v465 = v0[203];
    v523 = v0[202];
    v466 = v0[140];
    v467 = v0[129];
    v468 = v0[120];
    if (!v463)
    {

      (*(v465 + 8))(v464, v523);
      outlined destroy of CloudDevice(v468, type metadata accessor for CloudDevice);
      v516(v466, v467);
      goto LABEL_66;
    }

    v508 = v0[129];
    v469 = swift_slowAlloc();
    v531[0] = swift_slowAlloc();
    v492 = v466;
    v470 = v531[0];
    *v469 = 136446466;
    swift_beginAccess();
    v471 = StaticString.description.getter();
    v493 = v133;
    v473 = v464;
    v474 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v471, v472, v531);

    *(v469 + 4) = v474;
    *(v469 + 12) = 2082;
    *(v469 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);

    _os_log_impl(&dword_21607C000, v461, v462, "%{public}s.%{public}s Cleanup stale nomination", v469, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v470, -1, -1);
    MEMORY[0x21CE94770](v469, -1, -1);

    (*(v465 + 8))(v473, v523);
    outlined destroy of CloudDevice(v468, type metadata accessor for CloudDevice);
    v516(v492, v508);
LABEL_180:
    v146 = v493;
    goto LABEL_67;
  }

LABEL_85:
  outlined destroy of CloudDevice(v0[122], type metadata accessor for CloudDevice);
LABEL_86:
  v202 = v0[250];
  v203 = v0[228];
  v204 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v203, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v202(v203, 1, v204) == 1)
  {
    v205 = v0[250];
    v206 = v0[228];
    v207 = v0[111];
    outlined init with copy of DateInterval?(v0[242], v0[229], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v205(v206, 1, v207) != 1)
    {
      outlined destroy of UTType?(v0[228], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    }
  }

  else
  {
    v208 = v0[248];
    v209 = v0[229];
    v210 = v0[111];
    outlined init with take of CloudDevice(v0[228], v209, type metadata accessor for CloudDevice);
    v208(v209, 0, 1, v210);
  }

  v211 = v0[229];
  v212 = v0[111];
  if ((v0[250])(v211, 1, v212) == 1)
  {
    outlined destroy of UTType?(v211, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    goto LABEL_100;
  }

  v213 = v0[168];
  v214 = v0[130];
  v215 = v0[129];
  v216 = v0[119];
  outlined init with take of CloudDevice(v211, v216, type metadata accessor for CloudDevice);
  v217 = *(v212 + 56);
  outlined init with copy of DateInterval?(v216 + v217, v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v218 = *(v214 + 48);
  if (v218(v213, 1, v215) == 1)
  {
    v219 = v0[119];
    outlined destroy of UTType?(v0[168], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_98:
    v231 = v219;
    goto LABEL_99;
  }

  v498 = v217;
  v505 = v216;
  v220 = v0[155];
  v221 = v0[130];
  v222 = v0[129];
  v527 = *(v221 + 32);
  v527(v0[135], v0[168], v222);
  static Date.distantPast.getter();
  v223 = static Date.> infix(_:_:)();
  v224 = *(v221 + 8);
  v224(v220, v222);
  if ((v223 & 1) == 0)
  {
    v219 = v0[119];
    v224(v0[135], v0[129]);
    goto LABEL_98;
  }

  v225 = v0[250];
  v226 = v0[227];
  v227 = v0[111];
  CloudDevicesDB.primaryDevice.getter(v226);
  v228 = v225(v226, 1, v227);
  v229 = v0[227];
  if (v228 != 1)
  {
    v390 = v0[119];
    v391 = v0[118];
    outlined init with take of CloudDevice(v0[227], v391, type metadata accessor for CloudDevice);
    if (*v391 == *v390 && v391[1] == v390[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v392 = v0[119];
      v393 = v0[118];
      v224(v0[135], v0[129]);
      outlined destroy of CloudDevice(v393, type metadata accessor for CloudDevice);
      v231 = v392;
      goto LABEL_99;
    }

    v399 = v0[167];
    v400 = v0[129];
    v401 = v0[118];
    static Date.now.getter();
    outlined init with copy of DateInterval?(v401 + *(v212 + 56), v399, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v402 = v218(v399, 1, v400);
    v403 = v0[167];
    if (v402 == 1)
    {
      v404 = v0[135];
      v405 = v0[129];
      v406 = v0[118];
      v224(v0[134], v405);
      v224(v404, v405);
      outlined destroy of CloudDevice(v406, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v403, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_190:
      v231 = v0[119];
      goto LABEL_99;
    }

    v416 = v0[155];
    v417 = v0[129];
    v527(v0[133], v0[167], v417);
    static Date.distantPast.getter();
    v418 = static Date.> infix(_:_:)();
    v419 = v417;
    v420 = v224;
    v224(v416, v419);
    if (v418)
    {
      Date.timeIntervalSince(_:)();
      if (v421 > 86400.0)
      {
        v422 = v0[248];
        v423 = v0[241];
        v424 = v0[175];
        v425 = v0[130];
        v426 = v0[129];
        v427 = v0[119];
        v428 = v0[111];
        static Date.distantPast.getter();
        v429 = *(v425 + 56);
        v429(v424, 0, 1, v426);
        outlined assign with take of Date?(v424, v505 + v498);
        static Date.distantPast.getter();
        outlined destroy of UTType?(v423, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v429(v424, 0, 1, v426);
        outlined assign with take of Date?(v424, v427 + *(v428 + 64));
        outlined init with copy of CloudDevice(v427, v423, type metadata accessor for CloudDevice);
        v422(v423, 0, 1, v428);
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v430 = static DefaultsManager.momentsUI;
        v431 = v0[132];
        v432 = v0[129];
        if (static DefaultsManager.momentsUI)
        {
          v433 = Date._bridgeToObjectiveC()().super.isa;
          v434 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
          [v430 setValue:v433 forKey:v434];

          v224(v431, v432);
          static Date.distantPast.getter();
          v435 = Date._bridgeToObjectiveC()().super.isa;
          v436 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x80000002165811B0);
          [v430 setValue:v435 forKey:v436];
        }

        else
        {
          v224(v431, v432);
          static Date.distantPast.getter();
        }

        v485 = v0[135];
        v486 = v0[134];
        v487 = v0[133];
        v488 = v0[129];
        v489 = v0[118];
        v224(v0[131], v488);
        v224(v487, v488);
        v224(v486, v488);
        v224(v485, v488);
        v484 = v489;
        goto LABEL_189;
      }

      v478 = v0[135];
      v479 = v0[134];
      v480 = v0[133];
      v481 = v0[129];
      v482 = v0[118];
      v483 = v481;
      v420 = v224;
    }

    else
    {
      v478 = v0[135];
      v479 = v0[134];
      v480 = v0[133];
      v481 = v0[129];
      v482 = v0[118];
      v483 = v481;
    }

    v420(v480, v483);
    v420(v479, v481);
    v420(v478, v481);
    v484 = v482;
LABEL_189:
    outlined destroy of CloudDevice(v484, type metadata accessor for CloudDevice);
    goto LABEL_190;
  }

  v230 = v0[119];
  v224(v0[135], v0[129]);
  outlined destroy of UTType?(v229, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v231 = v230;
LABEL_99:
  outlined destroy of CloudDevice(v231, type metadata accessor for CloudDevice);
LABEL_100:
  v232 = v0[250];
  v233 = v0[226];
  v234 = v0[111];
  outlined init with copy of DateInterval?(v0[241], v233, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v232(v233, 1, v234) == 1)
  {
    v235 = v0[226];
    outlined destroy of UTType?(v0[241], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  }

  else
  {
    outlined init with take of CloudDevice(v0[226], v0[117], type metadata accessor for CloudDevice);
    v255 = CloudDevice.description()();
    v0[260] = v255._object;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v256 = v0[210];
    v257 = v0[203];
    v258 = v0[202];
    v259 = __swift_project_value_buffer(v258, static CloudDevicesDB.Log);
    v0[261] = v259;
    swift_beginAccess();
    v260 = *(v257 + 16);
    v0[262] = v260;
    v0[263] = (v257 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v514 = v260;
    v260(v256, v259, v258);
    swift_bridgeObjectRetain_n();
    v261 = Logger.logObject.getter();
    v262 = static os_log_type_t.debug.getter();
    v263 = os_log_type_enabled(v261, v262);
    v264 = v0[210];
    v265 = v0[203];
    v528 = v0[202];
    if (v263)
    {
      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v531[0] = v267;
      *v266 = 136446722;
      swift_beginAccess();
      v268 = StaticString.description.getter();
      v500 = v264;
      v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v269, v531);

      *(v266 + 4) = v270;
      *(v266 + 12) = 2082;
      *(v266 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
      *(v266 + 22) = 2080;

      v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255._countAndFlagsBits, v255._object, v531);

      *(v266 + 24) = v271;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_21607C000, v261, v262, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v266, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v267, -1, -1);
      MEMORY[0x21CE94770](v266, -1, -1);

      v272 = *(v265 + 8);
      v272(v500, v528);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v272 = *(v265 + 8);
      v272(v264, v528);
    }

    v0[264] = v272;
    v276 = v0[246];
    v277 = v0[245];
    v278 = v0[116];
    v279 = v0[105] + v0[247];
    v280 = *(v279 + 8);
    outlined init with copy of CloudDevice(v0[117], v278, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v531[0] = v280;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v278, v277, v276, isUniquelyReferenced_nonNull_native);

    *(v279 + 8) = v531[0];

    CloudDevicesDB.persistLocalData()();
    if (v282)
    {
      v514(v0[204], v259, v0[202]);
      v283 = v282;
      v284 = v282;
      v285 = Logger.logObject.getter();
      v286 = static os_log_type_t.error.getter();
      v287 = os_log_type_enabled(v285, v286);
      v288 = v0[241];
      v289 = v0[204];
      v290 = v0[202];
      v291 = v0[117];
      if (v287)
      {
        v501 = v0[202];
        v292 = swift_slowAlloc();
        v494 = v289;
        v293 = swift_slowAlloc();
        v531[0] = swift_slowAlloc();
        v294 = v531[0];
        *v292 = 136446722;
        swift_beginAccess();
        v295 = StaticString.description.getter();
        v490 = v291;
        v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v295, v296, v531);

        *(v292 + 4) = v297;
        *(v292 + 12) = 2082;
        *(v292 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
        *(v292 + 22) = 2112;
        v298 = v282;
        v299 = _swift_stdlib_bridgeErrorToNSError();
        *(v292 + 24) = v299;
        *v293 = v299;

        _os_log_impl(&dword_21607C000, v285, v286, "%{public}s.%{public}s Failed to persist local data: %@", v292, 0x20u);
        outlined destroy of UTType?(v293, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x21CE94770](v293, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v294, -1, -1);
        MEMORY[0x21CE94770](v292, -1, -1);

        v272(v494, v501);
        outlined destroy of CloudDevice(v490, type metadata accessor for CloudDevice);
      }

      else
      {

        v272(v289, v290);
        outlined destroy of CloudDevice(v291, type metadata accessor for CloudDevice);
      }

      outlined destroy of UTType?(v288, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v318 = v0 + 242;
      goto LABEL_150;
    }

    v300 = (v0[105] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v301 = *v300;
    v0[265] = *v300;
    if (v301)
    {
      v302 = v0[117];
      v529 = v300[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
      v522 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v303 = *(v522 - 8);
      v304 = (*(v303 + 80) + 32) & ~*(v303 + 80);
      v305 = swift_allocObject();
      v0[266] = v305;
      *(v305 + 16) = xmmword_21658CA50;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
      v306 = *v302;
      v307 = v302[1];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
      v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v310 = v309;
      swift_unknownObjectRetain();

      v311._countAndFlagsBits = 0x73656369766544;
      v311._object = 0xE700000000000000;
      v312._countAndFlagsBits = v308;
      v312._object = v310;
      v313 = CKRecordZoneID.init(zoneName:ownerName:)(v311, v312).super.isa;
      v314._countAndFlagsBits = v306;
      v314._object = v307;
      *(v305 + v304) = CKRecordID.init(recordName:zoneID:)(v314, v313);
      (*(v303 + 104))(v305 + v304, *MEMORY[0x277CBBC68], v522);
      ObjectType = swift_getObjectType();
      v316 = swift_task_alloc();
      v0[267] = v316;
      *v316 = v0;
      v316[1] = CloudDevicesDB.checkDB(forceUpdate:);

      return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v305, 0xD000000000000015, 0x8000000216583B60, 1653, ObjectType, v529);
    }

    v235 = v0[241];
    v369 = v0[117];

    outlined destroy of CloudDevice(v369, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v235, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of UTType?(v0[242], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  CloudDevicesDB.primaryDevice.getter(v0[225]);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v236 = v0[225];
  v237 = v0[224];
  v238 = v0[207];
  v239 = v0[203];
  v240 = v0[202];
  v241 = __swift_project_value_buffer(v240, static CloudDevicesDB.Log);
  swift_beginAccess();
  v521 = v241;
  v513 = *(v239 + 16);
  v513(v238, v241, v240);
  outlined init with copy of DateInterval?(v236, v237, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v242 = Logger.logObject.getter();
  v243 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v242, v243))
  {
    v499 = v0[250];
    v244 = v0[224];
    v245 = v0[223];
    v246 = v0[111];
    v247 = swift_slowAlloc();
    v506 = swift_slowAlloc();
    v531[0] = v506;
    *v247 = 136446722;
    swift_beginAccess();
    v248 = StaticString.description.getter();
    v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v248, v249, v531);

    *(v247 + 4) = v250;
    *(v247 + 12) = 2082;
    *(v247 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
    *(v247 + 22) = 2080;
    outlined init with copy of DateInterval?(v244, v245, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v251 = v499(v245, 1, v246);
    v252 = v0[223];
    if (v251 == 1)
    {
      outlined destroy of UTType?(v0[223], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v253 = 0xE500000000000000;
      v254 = 0x3E6C696E3CLL;
    }

    else
    {
      v254 = *v252;
      v253 = v252[1];

      outlined destroy of CloudDevice(v252, type metadata accessor for CloudDevice);
    }

    v319 = v0[224];
    v320 = v0[207];
    v321 = v0[203];
    v322 = v0[202];
    v323 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v253, v531);

    *(v247 + 24) = v323;
    outlined destroy of UTType?(v319, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    _os_log_impl(&dword_21607C000, v242, v243, "%{public}s.%{public}s newPrimary = %s", v247, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v506, -1, -1);
    MEMORY[0x21CE94770](v247, -1, -1);

    v507 = *(v321 + 8);
    v507(v320, v322);
  }

  else
  {
    v273 = v0[207];
    v274 = v0[203];
    v275 = v0[202];
    outlined destroy of UTType?(v0[224], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v507 = *(v274 + 8);
    v507(v273, v275);
  }

  v324 = v0[250];
  v325 = v0[225];
  v326 = v0[222];
  v327 = v0[111];
  v328 = v0[108];
  v329 = v0[107];

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v326);
  v330 = *(v329 + 48);
  outlined init with copy of DateInterval?(v326, v328, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of DateInterval?(v325, v328 + v330, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v331 = v324(v328, 1, v327);
  v332 = v0[250];
  if (v331 == 1)
  {
    v333 = v0[111];
    outlined destroy of UTType?(v0[222], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v332(v328 + v330, 1, v333) == 1)
    {
      outlined destroy of UTType?(v0[108], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_131:
      v341 = v0[206];
      v342 = v0[202];

      v344 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v343);

      v513(v341, v521, v342);
      swift_bridgeObjectRetain_n();
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.debug.getter();
      v347 = os_log_type_enabled(v345, v346);
      v348 = v0[206];
      v349 = v0[202];
      if (v347)
      {
        v495 = v0[111];
        v350 = swift_slowAlloc();
        v351 = swift_slowAlloc();
        v531[0] = v351;
        *v350 = 136446722;
        v502 = v348;
        swift_beginAccess();
        v352 = StaticString.description.getter();
        v354 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v352, v353, v531);

        *(v350 + 4) = v354;
        *(v350 + 12) = 2082;
        *(v350 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
        *(v350 + 22) = 2080;

        v356 = MEMORY[0x21CE922B0](v355, v495);
        v358 = v357;

        v359 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v356, v358, v531);

        *(v350 + 24) = v359;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_21607C000, v345, v346, "%{public}s.%{public}s newlyOnboarded = %s", v350, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v351, -1, -1);
        MEMORY[0x21CE94770](v350, -1, -1);

        v360 = v502;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v360 = v348;
      }

      v507(v360, v349);
      v0[104] = v344;

      CurrentValueSubject.send(_:)();

      goto LABEL_135;
    }

    goto LABEL_129;
  }

  v334 = v0[111];
  outlined init with copy of DateInterval?(v0[108], v0[221], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v335 = v332(v328 + v330, 1, v334);
  v336 = v0[222];
  v337 = v0[221];
  if (v335 == 1)
  {
    outlined destroy of UTType?(v0[222], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of CloudDevice(v337, type metadata accessor for CloudDevice);
LABEL_129:
    outlined destroy of UTType?(v0[108], &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
    goto LABEL_135;
  }

  v338 = v0[116];
  v339 = v0[108];
  outlined init with take of CloudDevice(v328 + v330, v338, type metadata accessor for CloudDevice);
  v340 = specialized static CloudDevice.== infix(_:_:)(v337, v338);
  outlined destroy of CloudDevice(v338, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v336, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of CloudDevice(v337, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v339, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v340)
  {
    goto LABEL_131;
  }

LABEL_135:
  v318 = v0 + 225;
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_150:
    outlined destroy of UTType?(*v318, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, v0[106], &protocol witness table for CloudDevicesDB);

    v389 = v0[1];

    return v389();
  }

  v361 = v0[250];
  v362 = v0[220];
  v363 = v0[111];
  outlined init with copy of DateInterval?(v0[225], v362, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v361(v362, 1, v363) == 1)
  {
    outlined destroy of UTType?(*v318, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v318 = v0 + 220;
    goto LABEL_150;
  }

  v364 = v0[113];
  v365 = v0[111];
  outlined init with take of CloudDevice(v0[220], v364, type metadata accessor for CloudDevice);
  v366 = (v364 + *(v365 + 108));
  if (v366[1])
  {
    v367 = *v366;
    v368 = v366[1];
  }

  else
  {
    v370 = v0[113];
    v367 = *v370;
    v368 = v370[1];
  }

  v0[269] = v368;
  v0[268] = v367;
  v513(v0[205], v521, v0[202]);
  swift_bridgeObjectRetain_n();

  v371 = Logger.logObject.getter();
  v372 = static os_log_type_t.error.getter();
  v373 = os_log_type_enabled(v371, v372);
  v374 = v0[205];
  v375 = v0[202];
  if (v373)
  {
    v530 = v0[202];
    v376 = swift_slowAlloc();
    v377 = swift_slowAlloc();
    v531[0] = v377;
    *v376 = 136446722;
    swift_beginAccess();
    v378 = StaticString.description.getter();
    v515 = v374;
    v380 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v379, v531);

    *(v376 + 4) = v380;
    *(v376 + 12) = 2082;
    *(v376 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v531);
    *(v376 + 22) = 2080;

    v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v367, v368, v531);

    *(v376 + 24) = v381;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v371, v372, "%{public}s.%{public}s generation: %s", v376, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v377, -1, -1);
    MEMORY[0x21CE94770](v376, -1, -1);

    v382 = v515;
    v383 = v530;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v382 = v374;
    v383 = v375;
  }

  v507(v382, v383);
  v384 = (v0[105] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v385 = *v384;
  v0[270] = *v384;
  if (!v385)
  {

    outlined destroy of CloudDevice(v0[113], type metadata accessor for CloudDevice);
    goto LABEL_150;
  }

  v386 = v384[1];
  v0[271] = v386;
  v0[272] = swift_getObjectType();
  v0[273] = *(v386 + 144);
  v0[274] = (v386 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v388 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v388, v387);
}

{
  v1 = *(*v0 + 840);

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  v146 = v0;
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 936);
  if (*(v0 + 2200) == 1)
  {
    v5 = *(v0 + 920);
    v1(*(v0 + 1672), v2, v3);
    outlined init with copy of CloudDevice(v4, v5, type metadata accessor for CloudDevice);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2112);
    v10 = *(v0 + 1928);
    v141 = *(v0 + 1616);
    v143 = *(v0 + 1672);
    v11 = *(v0 + 936);
    v12 = *(v0 + 920);
    if (v8)
    {
      v129 = *(v0 + 888);
      v133 = *(v0 + 1928);
      v13 = swift_slowAlloc();
      v132 = v9;
      v14 = swift_slowAlloc();
      v145[0] = v14;
      *v13 = 136446722;
      v131 = v11;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v145);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
      *(v13 + 22) = 2080;
      v18 = (v12 + *(v129 + 32));
      v19 = v18[1];
      if (v19)
      {
        v20 = *v18;
      }

      else
      {
        v20 = 0x6E776F6E6B6E55;
      }

      if (v19)
      {
        v21 = v18[1];
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v145);

      *(v13 + 24) = v22;

      outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
      v23 = "%{public}s.%{public}s Created new local device record: %s";
LABEL_18:
      _os_log_impl(&dword_21607C000, v6, v7, v23, v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);

      swift_unknownObjectRelease();
      v132(v143, v141);
      outlined destroy of CloudDevice(v131, type metadata accessor for CloudDevice);
      v34 = v133;
      goto LABEL_20;
    }
  }

  else
  {
    v24 = *(v0 + 912);
    v1(*(v0 + 1664), v2, v3);
    outlined init with copy of CloudDevice(v4, v24, type metadata accessor for CloudDevice);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2112);
    v10 = *(v0 + 1928);
    v141 = *(v0 + 1616);
    v143 = *(v0 + 1664);
    v11 = *(v0 + 936);
    v12 = *(v0 + 912);
    if (v25)
    {
      v130 = *(v0 + 888);
      v133 = *(v0 + 1928);
      v13 = swift_slowAlloc();
      v132 = v9;
      v14 = swift_slowAlloc();
      v145[0] = v14;
      *v13 = 136446722;
      v131 = v11;
      swift_beginAccess();
      v26 = StaticString.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v145);

      *(v13 + 4) = v28;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
      *(v13 + 22) = 2080;
      v29 = (v12 + *(v130 + 32));
      v30 = v29[1];
      if (v30)
      {
        v31 = *v29;
      }

      else
      {
        v31 = 0x6E776F6E6B6E55;
      }

      if (v30)
      {
        v32 = v29[1];
      }

      else
      {
        v32 = 0xE700000000000000;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v145);

      *(v13 + 24) = v33;

      outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
      v23 = "%{public}s.%{public}s Updated new local device record: %s";
      goto LABEL_18;
    }
  }

  swift_unknownObjectRelease();
  outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);

  v9(v143, v141);
  outlined destroy of CloudDevice(v11, type metadata accessor for CloudDevice);
  v34 = v10;
LABEL_20:
  outlined destroy of UTType?(v34, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined destroy of UTType?(*(v0 + 1936), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  CloudDevicesDB.primaryDevice.getter(*(v0 + 1800));
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1800);
  v36 = *(v0 + 1792);
  v37 = *(v0 + 1656);
  v38 = *(v0 + 1624);
  v39 = *(v0 + 1616);
  v40 = __swift_project_value_buffer(v39, static CloudDevicesDB.Log);
  swift_beginAccess();
  v142 = v40;
  v139 = *(v38 + 16);
  v139(v37, v40, v39);
  outlined init with copy of DateInterval?(v35, v36, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v135 = *(v0 + 2000);
    v43 = *(v0 + 1792);
    v44 = *(v0 + 1784);
    v45 = *(v0 + 888);
    v46 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v145[0] = v137;
    *v46 = 136446722;
    swift_beginAccess();
    v47 = StaticString.description.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v145);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v46 + 22) = 2080;
    outlined init with copy of DateInterval?(v43, v44, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v50 = v135(v44, 1, v45);
    v51 = *(v0 + 1784);
    if (v50 == 1)
    {
      outlined destroy of UTType?(*(v0 + 1784), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v52 = 0xE500000000000000;
      v53 = 0x3E6C696E3CLL;
    }

    else
    {
      v53 = *v51;
      v52 = v51[1];

      outlined destroy of CloudDevice(v51, type metadata accessor for CloudDevice);
    }

    v57 = *(v0 + 1792);
    v58 = *(v0 + 1656);
    v59 = *(v0 + 1624);
    v60 = *(v0 + 1616);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v145);

    *(v46 + 24) = v61;
    outlined destroy of UTType?(v57, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    _os_log_impl(&dword_21607C000, v41, v42, "%{public}s.%{public}s newPrimary = %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v137, -1, -1);
    MEMORY[0x21CE94770](v46, -1, -1);

    v138 = *(v59 + 8);
    v138(v58, v60);
  }

  else
  {
    v54 = *(v0 + 1656);
    v55 = *(v0 + 1624);
    v56 = *(v0 + 1616);
    outlined destroy of UTType?(*(v0 + 1792), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);

    v138 = *(v55 + 8);
    v138(v54, v56);
  }

  v62 = *(v0 + 2000);
  v63 = *(v0 + 1800);
  v64 = *(v0 + 1776);
  v65 = *(v0 + 888);
  v66 = *(v0 + 864);
  v67 = *(v0 + 856);

  PassthroughSubject.send(_:)();

  CloudDevicesDB.currentDevice.getter(v64);
  v68 = *(v67 + 48);
  outlined init with copy of DateInterval?(v64, v66, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  outlined init with copy of DateInterval?(v63, v66 + v68, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v69 = v62(v66, 1, v65);
  v70 = *(v0 + 2000);
  if (v69 != 1)
  {
    v72 = *(v0 + 888);
    outlined init with copy of DateInterval?(*(v0 + 864), *(v0 + 1768), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v73 = v70(v66 + v68, 1, v72);
    v74 = *(v0 + 1776);
    v75 = *(v0 + 1768);
    if (v73 != 1)
    {
      v76 = *(v0 + 928);
      v77 = *(v0 + 864);
      outlined init with take of CloudDevice(v66 + v68, v76, type metadata accessor for CloudDevice);
      v78 = specialized static CloudDevice.== infix(_:_:)(v75, v76);
      outlined destroy of CloudDevice(v76, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v74, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined destroy of CloudDevice(v75, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v77, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      if ((v78 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of CloudDevice(v75, type metadata accessor for CloudDevice);
LABEL_33:
    outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
    goto LABEL_39;
  }

  v71 = *(v0 + 888);
  outlined destroy of UTType?(*(v0 + 1776), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v70(v66 + v68, 1, v71) != 1)
  {
    goto LABEL_33;
  }

  outlined destroy of UTType?(*(v0 + 864), &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_35:
  v79 = *(v0 + 1648);
  v80 = *(v0 + 1616);

  v82 = specialized static CloudDevice.newlyOnboardedDevices(in:)(v81);

  v139(v79, v142, v80);
  swift_bridgeObjectRetain_n();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = *(v0 + 1648);
  v87 = *(v0 + 1616);
  if (v85)
  {
    v134 = *(v0 + 888);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v145[0] = v89;
    *v88 = 136446722;
    v136 = v86;
    swift_beginAccess();
    v90 = StaticString.description.getter();
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v145);

    *(v88 + 4) = v92;
    *(v88 + 12) = 2082;
    *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v88 + 22) = 2080;

    v94 = MEMORY[0x21CE922B0](v93, v134);
    v96 = v95;

    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v145);

    *(v88 + 24) = v97;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v83, v84, "%{public}s.%{public}s newlyOnboarded = %s", v88, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v89, -1, -1);
    MEMORY[0x21CE94770](v88, -1, -1);

    v98 = v136;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v98 = v86;
  }

  v138(v98, v87);
  *(v0 + 832) = v82;

  CurrentValueSubject.send(_:)();

LABEL_39:
  v99 = (v0 + 1800);
  swift_beginAccess();
  if (!static CloudManager.systemIdiom)
  {
LABEL_53:
    outlined destroy of UTType?(*v99, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, *(v0 + 848), &protocol witness table for CloudDevicesDB);

    v127 = *(v0 + 8);

    return v127();
  }

  v100 = *(v0 + 2000);
  v101 = *(v0 + 1760);
  v102 = *(v0 + 888);
  outlined init with copy of DateInterval?(*(v0 + 1800), v101, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  if (v100(v101, 1, v102) == 1)
  {
    outlined destroy of UTType?(*v99, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v99 = (v0 + 1760);
    goto LABEL_53;
  }

  v103 = *(v0 + 904);
  v104 = *(v0 + 888);
  outlined init with take of CloudDevice(*(v0 + 1760), v103, type metadata accessor for CloudDevice);
  v105 = (v103 + *(v104 + 108));
  if (v105[1])
  {
    v106 = *v105;
    v107 = v105[1];
  }

  else
  {
    v108 = *(v0 + 904);
    v106 = *v108;
    v107 = v108[1];
  }

  *(v0 + 2152) = v107;
  *(v0 + 2144) = v106;
  v139(*(v0 + 1640), v142, *(v0 + 1616));
  swift_bridgeObjectRetain_n();

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v0 + 1640);
  v113 = *(v0 + 1616);
  if (v111)
  {
    v144 = *(v0 + 1616);
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v145[0] = v115;
    *v114 = 136446722;
    swift_beginAccess();
    v116 = StaticString.description.getter();
    v140 = v112;
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v145);

    *(v114 + 4) = v118;
    *(v114 + 12) = 2082;
    *(v114 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216583B60, v145);
    *(v114 + 22) = 2080;

    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v145);

    *(v114 + 24) = v119;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_21607C000, v109, v110, "%{public}s.%{public}s generation: %s", v114, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v115, -1, -1);
    MEMORY[0x21CE94770](v114, -1, -1);

    v120 = v140;
    v121 = v144;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v120 = v112;
    v121 = v113;
  }

  v138(v120, v121);
  v122 = (*(v0 + 840) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v123 = *v122;
  *(v0 + 2160) = *v122;
  if (!v123)
  {

    outlined destroy of CloudDevice(*(v0 + 904), type metadata accessor for CloudDevice);
    goto LABEL_53;
  }

  v124 = v122[1];
  *(v0 + 2168) = v124;
  *(v0 + 2176) = swift_getObjectType();
  *(v0 + 2184) = *(v124 + 144);
  *(v0 + 2192) = (v124 + 144) & 0xFFFFFFFFFFFFLL | 0xDB33000000000000;
  swift_unknownObjectRetain();
  v126 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v126, v125);
}

{
  v1 = *(v0 + 840);
  (*(v0 + 2184))(*(v0 + 2144), *(v0 + 2152), *(v0 + 2176), *(v0 + 2168));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](CloudDevicesDB.checkDB(forceUpdate:), v1, 0);
}

{
  outlined destroy of CloudDevice(v0[113], type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v0[225], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  static CloudLog.LogEndInfo(_:)("checkDB(forceUpdate:)", 21, 2, v0[106], &protocol witness table for CloudDevicesDB);

  v1 = v0[1];

  return v1();
}