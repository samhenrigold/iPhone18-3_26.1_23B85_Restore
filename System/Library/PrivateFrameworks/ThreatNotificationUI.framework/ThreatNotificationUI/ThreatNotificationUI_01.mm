uint64_t TNUIActionItemConfiguration.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TNUIActionItemConfiguration.footer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TNUIActionItemConfiguration(0) + 28);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t specialized static TNUIActionItemConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (!specialized static TNUIActionIdentifier.== infix(_:_:)(&v7, &v6) || (a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TNUIActionItemConfiguration(0);

  return static AttributedString.== infix(_:_:)();
}

uint64_t type metadata completion function for TNUIActionItemConfiguration(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL TNUIPrivacyViewController.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNUIPrivacyViewController.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIPrivacyViewController()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIPrivacyViewController(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TNUIPrivacyViewController@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TNUIPrivacyViewController, *a1);

  *a2 = v3 != 0;
  return result;
}

id protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.getter in conformance OBPrivacyPresenter()
{
  v1 = [v0 presentingViewController];

  return v1;
}

void protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.setter in conformance OBPrivacyPresenter(void *a1)
{
  [v1 setPresentingViewController_];
}

void (*protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 presentingViewController];
  return protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter;
}

void protocol witness for TNUIPrivacyViewControllerPresenting.presentingViewController.modify in conformance OBPrivacyPresenter(id *a1)
{
  v1 = *a1;
  [a1[1] setPresentingViewController_];
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void specialized static TNUIPrivacyViewController.privacyViewController(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    if (v1 == 1)
    {
      v1 = MEMORY[0x223D615B0](0xD000000000000024, 0x800000021E675CF0);
      v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

      if (v2)
      {
        return;
      }

      __break(1u);
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v2[2];
    v4 = 2 * v3;
    do
    {
      v5 = v2[3];
      v6 = v3 + 1;
      if (v3 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v3 + 1, 1);
      }

      v2[2] = v6;
      v7 = &v2[v4];
      *(v7 + 4) = 0xD000000000000024;
      *(v7 + 5) = 0x800000021E675CF0;
      v4 += 2;
      v3 = v6;
      --v1;
    }

    while (v1);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() presenterForPrivacyUnifiedAboutWithIdentifiers_];

  if (!v9)
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController;
  if (!lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIPrivacyViewController and conformance TNUIPrivacyViewController);
  }

  return result;
}

uint64_t TNUICoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUICoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return TNUICoordinator.delegate.modify;
}

void TNUICoordinator.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

id TNUICoordinator.rootViewController.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*TNUICoordinator.rootViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TNUICoordinator.rootViewController.getter();
  return TNUICoordinator.rootViewController.modify;
}

void TNUICoordinator.rootViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t TNUICoordinator.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TNUICoordinator.flow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  return result;
}

uint64_t TNUICoordinator.__allocating_init(userInfo:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TNUICoordinator.init(userInfo:)(a1);
  return v2;
}

uint64_t TNUICoordinator.init(userInfo:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  v4 = v1 + 40;
  *(v4 - 8) = 0;
  *(v4 + 8) = 0;
  swift_beginAccess();
  *v4 = a1;
  type metadata accessor for TNCDeviceInfoProvider();

  static TNCDeviceInfoProvider.shared.getter();
  v5 = dispatch thunk of TNCDeviceInfoProvider.isInternalBuild.getter();

  if ((v5 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v18[0] = static TNCFollowUpItem.UserInfoKey.testEnvironmentKey.getter();
  v18[1] = v6;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v8 & 1) == 0))
  {

    outlined destroy of AnyHashable(v21);
LABEL_12:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v7, &v19);
  outlined destroy of AnyHashable(v21);

  if (!*(&v20 + 1))
  {
LABEL_13:
    outlined destroy of CheckedContinuation<(), Error>?(&v19, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v18[0]) = 0;
    v15 = type metadata accessor for TNCLDMManager();
    swift_allocObject();
    v16 = TNCLDMManager.init()();
    v22 = v15;
    v23 = MEMORY[0x277D71448];
    v21[0] = v16;
    goto LABEL_15;
  }

  v9 = v21[0];
  v10 = type metadata accessor for TNCLDMManagerMock();
  swift_allocObject();
  v11 = TNCLDMManagerMock.init()();
  *&v19 = static TNCFollowUpItem.TestEnvironmentKey.ldmEnabledKey.getter();
  *(&v19 + 1) = v12;
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(v9 + 56) + 32 * v13, &v19);
    outlined destroy of AnyHashable(v21);

    swift_dynamicCast();
  }

  else
  {

    outlined destroy of AnyHashable(v21);
  }

  dispatch thunk of TNCLDMManagerMock.isEnabled.setter();
  LOBYTE(v18[0]) = 1;
  v22 = v10;
  v23 = MEMORY[0x277D71470];
  v21[0] = v11;
LABEL_15:
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(v18, v21, &v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  *(v2 + 56) = v19;
  return v2;
}

uint64_t TNUICoordinator.__allocating_init(dependencyContainer:userInfo:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TNUICoordinator.init(dependencyContainer:userInfo:)(a1, a2);
  return v4;
}

uint64_t TNUICoordinator.init(dependencyContainer:userInfo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  outlined init with copy of (ObjectIdentifier, Sendable)(a1, &v13, &_sypSgMd, &_sypSgMR);
  if (v14)
  {
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_sypSgMd, &_sypSgMR);
    outlined init with take of Sendable(&v13, &v10);
    outlined init with take of Sendable(&v10, &v13);
    swift_dynamicCast();
    v5 = v9;
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(&v13, &_sypSgMd, &_sypSgMR);
    LOBYTE(v9) = 0;
    v6 = type metadata accessor for TNCLDMManager();
    swift_allocObject();
    v7 = TNCLDMManager.init()();
    v11 = v6;
    v12 = MEMORY[0x277D71448];
    *&v10 = v7;
    static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v9, &v10, &v13);
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v10);
    v5 = v13;
  }

  *(v2 + 56) = v5;
  swift_beginAccess();
  *(v2 + 40) = a2;

  return v2;
}

Swift::Void __swiftcall TNUICoordinator.start()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    v24[0] = v1;
    type metadata accessor for TNUICoordinator();

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v25);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21E646000, v6, v7, "%s start", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x223D62010](v9, -1, -1);
    MEMORY[0x223D62010](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v1[7], v25);
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  v13 = dispatch thunk of TNCLDMManaging.isEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v14 = swift_beginAccess();
  *(v1 + 48) = (v13 & 1) != 0;
  (*(*v1 + 192))(v24, v14);
  if (v24[0])
  {
    v15 = TNUICoordinator.makeLDMEnabledVC()();
  }

  else
  {
    v15 = TNUICoordinator.makeAttackDetectedLDMOffVC()();
  }

  v16 = *(*v1 + 144);
  v17 = v15;
  v18 = v16();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21E6748D0;
    *(v21 + 32) = v17;
    type metadata accessor for UIViewController();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setViewControllers:isa animated:0];

    TNUICoordinator.acknowledgeCFUPresentation()();
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v24[0] = v1[7];

    TNUIAnalytics.send(event:container:)(2, v24);
  }

  else
  {

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id TNUICoordinator.makeAttackDetectedLDMOffVC()()
{
  v1 = type metadata accessor for TNUIViewConfiguration(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = TNUICoordinator.accountName.getter();
  static TNUIViewConfiguration.attackDetectedLDMOff(for:)(v10, v11, v9);

  type metadata accessor for TNUIViewModel(0);
  v12 = swift_allocObject();
  v13 = v12 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v12 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v9, v7);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v7, v4);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v7);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v9);
  *(v13 + 8) = &protocol witness table for TNUICoordinator;
  swift_unknownObjectWeakAssign();
  v14 = type metadata accessor for TNUIOBKViewController();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v15[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v12;
  v23.receiver = v15;
  v23.super_class = v14;

  v16 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  v17 = [v16 navigationItem];
  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissButtonTapped_];
  v19 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v20 = MEMORY[0x223D615B0](v19);

  [v18 setAccessibilityIdentifier_];

  [v17 setRightBarButtonItem_];

  return v16;
}

id TNUICoordinator.makeLDMEnabledVC()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(v1 + 56), v16);
  type metadata accessor for TNUILDMEnabledViewModel(0);
  swift_allocObject();

  v6 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(v4, v16, v1, &protocol witness table for TNUICoordinator);

  v7 = type metadata accessor for TNUIOBKViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v8[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v6;
  v15.receiver = v8;
  v15.super_class = v7;

  v9 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v10 = [v9 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissButtonTapped_];
  v12 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v13 = MEMORY[0x223D615B0](v12);

  [v11 setAccessibilityIdentifier_];

  [v10 setRightBarButtonItem_];

  return v9;
}

uint64_t TNUICoordinator.acknowledgeCFUPresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v21[0] = *(v2 - 8);
  v21[1] = v2;
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for TNCStorageKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TNCLogger.Category();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D714A0], v10);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v11 + 8))(v13, v10);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v1[7], v24);
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v23 = MEMORY[0x277D839B0];
  v22[0] = 1;
  (*(v7 + 104))(v9, *MEMORY[0x277D71460], v6);
  dispatch thunk of TNCKVStoring.set(value:for:)();
  (*(v7 + 8))(v9, v6);
  outlined destroy of CheckedContinuation<(), Error>?(v22, &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(v1[7], v24);
  __swift_project_boxed_opaque_existential_0(v24, v25);
  dispatch thunk of TNCFollowUpControlling.repostFollowUpItemIfNeeded()();
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v14 = type metadata accessor for TaskPriority();
  v15 = (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v16 = (*(*v1 + 144))(v15);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v1;
  v18[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in TNUICoordinator.acknowledgeCFUPresentation(), v18);
}

uint64_t TNUICoordinator.deinit()
{
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 16);

  return v0;
}

uint64_t TNUICoordinator.__deallocating_deinit()
{
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t TNUICoordinator.accountName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v34 - v8;
  v10 = (*(*v0 + 168))(v7);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v34[1] = static TNCFollowUpItem.UserInfoKey.primaryAccountAltDSID.getter();
  v34[2] = v12;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v14 & 1) == 0))
  {

    outlined destroy of AnyHashable(v35);
LABEL_9:
    v38 = 0u;
    v39 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v13, &v38);
  outlined destroy of AnyHashable(v35);

  if (!*(&v39 + 1))
  {
LABEL_10:
    outlined destroy of CheckedContinuation<(), Error>?(&v38, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    static TNCLogger.default.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21E646000, v23, v24, "Missing altDSID of primary account", v25, 2u);
      MEMORY[0x223D62010](v25, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v16 = v35[0];
  v15 = v35[1];
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA20TNUIAccountProviding_p_Tt0B5(*(v1 + 56), v35);
  v17 = v36;
  v18 = v37;
  __swift_project_boxed_opaque_existential_0(v35, v36);
  v19 = (*(v18 + 8))(v16, v15, v17, v18);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  if (v21)
  {

    return v19;
  }

  static TNCLogger.default.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136315138;
    v30 = String.debugDescription.getter();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v35);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_21E646000, v26, v27, "No account for id: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x223D62010](v29, -1, -1);
    MEMORY[0x223D62010](v28, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v9, v2);
  return 0;
}

id TNUICoordinator.makeTurnOnLDMVC()()
{
  v1 = type metadata accessor for TNUIViewConfiguration(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  static TNUIViewConfiguration.turnOnLockDownMode.getter(&v20 - v8);
  type metadata accessor for TNUIViewModel(0);
  v10 = swift_allocObject();
  v11 = v10 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v10 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v9, v7);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v7, v4);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v7);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v9);
  *(v11 + 8) = &protocol witness table for TNUICoordinator;
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for TNUIOBKViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v13[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = v10;
  v21.receiver = v13;
  v21.super_class = v12;

  v14 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_dismissButtonTapped_];
  v17 = static ThreatNotification.Screens.dismissButtonIdentifier.getter();
  v18 = MEMORY[0x223D615B0](v17);

  [v16 setAccessibilityIdentifier_];

  [v15 setRightBarButtonItem_];

  return v14;
}

uint64_t closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x2822009F8](closure #1 in TNUICoordinator.acknowledgeCFUPresentation(), v8, v7);
}

uint64_t closure #1 in TNUICoordinator.acknowledgeCFUPresentation()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5(*(*(v0 + 56) + 56), v0 + 16);
  type metadata accessor for TNUIAAServerViewController();
  v1 = swift_allocObject();
  *(v0 + 128) = v1;
  *(v1 + 112) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = 0;
  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0((v0 + 16), v1 + 24);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  v3 = *(v0 + 64);

  return TNUIAAServerViewController.present(from:)(v3);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  }

  else
  {
    v5 = closure #1 in TNUICoordinator.acknowledgeCFUPresentation();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  static TNCLogger.default.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21E646000, v1, v2, "Did acknowledge CFU presentation", v3, 2u);
    MEMORY[0x223D62010](v3, -1, -1);
  }

  (*(v0[10] + 8))(v0[12], v0[9]);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[18];

  static TNCLogger.default.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21E646000, v3, v4, "Error acknowledging CFU presentation error: %@", v7, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v8, -1, -1);
    MEMORY[0x223D62010](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v11 = v0[1];

  return v11();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (ObjectIdentifier, Sendable)(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);
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

void TNUICoordinator.handle(action:from:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  static TNCLogger.default.getter();

  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v6;
    v14 = v13;
    v35 = swift_slowAlloc();
    v37 = v3;
    v38 = v35;
    *v14 = 136315650;
    type metadata accessor for TNUICoordinator();

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v38);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    LOBYTE(v37) = v10;
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v38);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    swift_getObjectType();
    v37 = a2;
    swift_unknownObjectRetain();
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_21E646000, v11, v12, "%s handle action: %{public}s from: %s", v14, 0x20u);
    v24 = v35;
    swift_arrayDestroy();
    MEMORY[0x223D62010](v24, -1, -1);
    MEMORY[0x223D62010](v14, -1, -1);

    v25 = (*(v7 + 8))(v9, v36);
  }

  else
  {

    v25 = (*(v7 + 8))(v9, v6);
  }

  if (v10 <= 5)
  {
    switch(v10)
    {
      case 3:
        v29 = (*(*v3 + 144))(v25);
        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        if (v33)
        {
          v31 = v33;
          v32 = TNUICoordinator.makeLDMEnabledVC()();
          goto LABEL_19;
        }

LABEL_25:

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      case 4:
        TNUICoordinator.dismissModal()();
        return;
      case 5:
        return;
    }

LABEL_20:
    LOBYTE(v38) = v10;
    TNUICoordinator.handle(link:)(&v38);
    return;
  }

  if (v10 > 7)
  {
    if (v10 == 8)
    {
      TNUICoordinator.enableLDM()();
      return;
    }

    if (v10 == 9)
    {
      v29 = (*(*v3 + 144))(v25);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        v32 = TNUICoordinator.makeTurnOnLDMVC()();
LABEL_19:
        v34 = v32;
        [v31 pushViewController:v32 animated:1];

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v10 == 6)
  {
    TNUICoordinator.enableAnalytics()();
  }

  else if ((*(*v3 + 120))(v25))
  {
    v27 = v26;
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(v3, ObjectType, v27);
    swift_unknownObjectRelease();
  }
}

void TNUICoordinator.dismissModal()()
{
  v1 = type metadata accessor for TNCLogger.Category();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277D714A0], v1);
  static TNCLogger.logFunctionCall(category:functionName:)();
  v5 = (*(v2 + 8))(v4, v1);
  v6 = *(*v0 + 144);
  v7 = (v6)(v5);
  v8 = [v7 presentedViewController];

  if (v8)
  {

    v9 = v6();
    v10 = [v9 presentedViewController];

    if (v10)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v11 = (*(*v0 + 192))(&v22);
    if (v22)
    {
      if ((*(*v0 + 120))(v11))
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v0, ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v15 = (v6)(v11);
      v16 = _s20ThreatNotificationUI19TNUIAlertControllerC18stopReviewingAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(v0);
      v17 = [v16 view];
      if (v17)
      {
        v18 = v17;
        v19 = static ThreatNotification.Screens.StopReviewingAlert.identifier.getter();
        v20 = MEMORY[0x223D615B0](v19);

        [v18 setAccessibilityIdentifier_];

        [v15 presentViewController:v16 animated:1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t TNUICoordinator.enableAnalytics()()
{
  v1 = v0;
  v2 = type metadata accessor for TNCLogger.Category();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 144);
  v8 = (v7)(v4);
  v9 = [v8 view];

  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v9 setUserInteractionEnabled_];

  (*(v3 + 104))(v6, *MEMORY[0x277D714A0], v2);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v3 + 8))(v6, v2);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(v1 + 56), v21);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  dispatch thunk of TNCMCManaging.enableDiagnosticsSharing()();
  v10 = __swift_destroy_boxed_opaque_existential_0Tm(v21);
  v11 = (v7)(v10);
  v12 = _s20ThreatNotificationUI19TNUIAlertControllerC21analyticsEnabledAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(v1);
  v13 = [v12 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  v15 = static ThreatNotification.Screens.AnalyticsEnabledAlert.identifier.getter();
  v16 = MEMORY[0x223D615B0](v15);

  [v14 setAccessibilityIdentifier_];

  [v11 presentViewController:v12 animated:1 completion:0];
  v17 = v7();
  v18 = [v17 view];

  if (v18)
  {
    [v18 setUserInteractionEnabled_];

    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v21[0] = *(v1 + 56);

    TNUIAnalytics.send(event:container:)(0, v21);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void TNUICoordinator.enableLDM()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for TNCLogger.Category();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v0 + 144))(v6);
  v10 = [v9 view];

  if (v10)
  {
    [v10 setUserInteractionEnabled_];

    (*(v5 + 104))(v8, *MEMORY[0x277D714A0], v4);
    static TNCLogger.logFunctionCall(category:functionName:)();
    (*(v5 + 8))(v8, v4);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = v0[7];
    v13 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = v13;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in TNUICoordinator.enableLDM(), v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in TNUICoordinator.enableLDM()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v8;
  v5[22] = v7;

  return MEMORY[0x2822009F8](closure #1 in TNUICoordinator.enableLDM(), v8, v7);
}

uint64_t closure #1 in TNUICoordinator.enableLDM()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v0[15], (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TNUICoordinator.enableLDM();

  return MEMORY[0x2821D8DE8](v1, v2);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = closure #1 in TNUICoordinator.enableLDM();
  }

  else
  {
    v5 = closure #1 in TNUICoordinator.enableLDM();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void closure #1 in TNUICoordinator.enableLDM()()
{
  v14 = v0;
  v1 = v0[24];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v13 = v2;
  TNUIAnalytics.send(event:container:)(5, &v13);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(v2);
  if (v1)
  {

    swift_unexpectedError();
  }

  else
  {
    v3 = v0[15];
    swift_getObjectType();
    dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.setter();
    swift_unknownObjectRelease();
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(v3, (v0 + 7));
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    dispatch thunk of TNCFollowUpControlling.repostFollowUpItemIfNeeded()();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = (*(*Strong + 120))();
      if (v6)
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v5, ObjectType, v8);
        v6 = swift_unknownObjectRelease();
      }

      v10 = (*(*v5 + 144))(v6);
      v11 = [v10 view];

      if (!v11)
      {
        __break(1u);
        return;
      }

      [v11 setUserInteractionEnabled_];
    }

    v12 = v0[1];

    v12();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[24];
  static TNCLogger.default.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21E646000, v3, v4, "Error enabling LockDownMode: %@", v5, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v6, -1, -1);
    MEMORY[0x223D62010](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (*(*Strong + 120))();
    if (v11)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(v10, ObjectType, v13);
      v11 = swift_unknownObjectRelease();
    }

    v15 = (*(*v10 + 144))(v11);
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    [v16 setUserInteractionEnabled_];
  }

  v17 = v0[1];

  v17();
}

uint64_t TNUICoordinator.handle(link:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TNCLogger.Category();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v8 + 104))(v10, *MEMORY[0x277D714A0], v7);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (v11 == 1)
    {
      TNUICoordinator.openAppleAccountUI()();
      type metadata accessor for TNUIAnalytics();
      swift_initStaticObject();
      v15 = *(v1 + 56);

      v12 = 7;
    }

    else
    {
      TNUICoordinator.openAnalyticsPrivacyController()();
      type metadata accessor for TNUIAnalytics();
      swift_initStaticObject();
      v15 = *(v1 + 56);

      v12 = 6;
    }
  }

  else
  {
    static ThreatNotification.Links.emergencyAssistance.getter();
    TNUICoordinator.openURL(_:)();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v15 = *(v1 + 56);

    v12 = 4;
  }

  TNUIAnalytics.send(event:container:)(v12, &v15);
}

void TNUICoordinator.openURL(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for TNCLogger.Category();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D714A0], v2);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v3 + 8))(v5, v2);
  v6 = objc_allocWithZone(MEMORY[0x277CDB700]);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL_];

  [v10 setModalPresentationStyle_];
  v11 = [v10 view];
  if (v11)
  {
    v12 = v11;
    v13 = static ThreatNotification.Screens.WebViewScreen.identifier.getter();
    v14 = MEMORY[0x223D615B0](v13);

    [v12 setAccessibilityIdentifier_];

    v15 = (*(*v1 + 144))();
    [v15 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t TNUICoordinator.openAppleAccountUI()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v41 - v2;
  v4 = type metadata accessor for TNCLogger.Category();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D714A0], v4);
  static TNCLogger.logFunctionCall(category:functionName:)();
  v8 = (*(v5 + 8))(v7, v4);
  v9 = *(*v0 + 144);
  v10 = *v0 + 144;
  v11 = v9(v8);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = [v12 viewControllers];

  type metadata accessor for UIViewController();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v14 < 0)
  {
    v23 = v14;
  }

  else
  {
    v23 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x223D618F0](v23);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_4:
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else if ((v14 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v14 + 8 * v17 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_41;
  }

  v18 = MEMORY[0x223D618C0](v17, v14);
LABEL_9:
  v19 = v18;

  v50[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_20;
  }

  if (!*(&v48 + 1))
  {
LABEL_20:
    v22 = outlined destroy of CheckedContinuation<(), Error>?(&v47, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMR);
    v13 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v47, v50);
  outlined init with copy of TNUIActivityIndicatorShowing(v50, &v47);
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = v13[2];
  v20 = v13[3];
  if (v21 >= v20 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v13[2] = v21 + 1;
  v22 = _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v47, &v13[5 * v21 + 4]);
LABEL_21:
  v24 = v9(v22);
  v25 = [v24 presentedViewController];

  if (v25 && (v50[0] = v25, __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v48 + 1))
    {
      _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v47, v50);
      outlined init with copy of TNUIActivityIndicatorShowing(v50, &v47);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v13);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        v13[2] = v27 + 1;
        _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(&v47, &v13[5 * v27 + 4]);
        goto LABEL_30;
      }

LABEL_41:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      goto LABEL_25;
    }
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  outlined destroy of CheckedContinuation<(), Error>?(&v47, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pSgMR);
LABEL_30:
  v28 = v13[2];
  v29 = MEMORY[0x277D85700];
  if (v28)
  {
    v43 = v10;
    v44 = v9;
    v45 = v0;
    v46 = v3;
    type metadata accessor for MainActor();
    v30 = (v13 + 4);
    v42 = v13;

    do
    {
      outlined init with copy of TNUIActivityIndicatorShowing(v30, v50);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v32 = v51;
      v31 = v52;
      __swift_project_boxed_opaque_existential_0(v50, v51);
      LOBYTE(v47) = 1;
      (*(v31 + 8))(&v47, 1, v32, v31);

      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      v30 += 40;
      --v28;
    }

    while (v28);
    v13 = v42;

    v0 = v45;
    v3 = v46;
    v9 = v44;
    v29 = MEMORY[0x277D85700];
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
  v34 = v0[7];

  v36 = v9(v35);
  v37 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v29;
  v39[4] = v34;
  v39[5] = v37;
  v39[6] = v36;
  v39[7] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in TNUICoordinator.openAppleAccountUI(), v39);
}

uint64_t TNUICoordinator.openAnalyticsPrivacyController()()
{
  v1 = type metadata accessor for TNCLogger.Category();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277D714A0], v1);
  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v2 + 8))(v4, v1);
  specialized static TNUIPrivacyViewController.privacyViewController(for:)(&outlined read-only object #0 of TNUICoordinator.openAnalyticsPrivacyController());
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(*v0 + 144))();
  (*(v6 + 16))(v8, ObjectType, v6);
  (*(v6 + 32))(ObjectType, v6);
  return swift_unknownObjectRelease();
}

uint64_t closure #2 in TNUICoordinator.openAppleAccountUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Logger();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = type metadata accessor for MainActor();
  v7[27] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[28] = v10;
  v7[29] = v9;

  return MEMORY[0x2822009F8](closure #2 in TNUICoordinator.openAppleAccountUI(), v10, v9);
}

uint64_t closure #2 in TNUICoordinator.openAppleAccountUI()()
{
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5(*(v0 + 144), v0 + 16);
  type metadata accessor for TNUIAAServerViewController();
  v1 = swift_allocObject();
  *(v0 + 240) = v1;
  *(v1 + 112) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = 1;
  _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0((v0 + 16), v1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_beginAccess();
  v3 = &protocol witness table for TNUICoordinator;
  if (!Strong)
  {
    v3 = 0;
  }

  *(v1 + 112) = v3;
  swift_unknownObjectWeakAssign();

  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = closure #2 in TNUICoordinator.openAppleAccountUI();
  v5 = *(v0 + 160);

  return TNUIAAServerViewController.present(from:)(v5);
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = closure #2 in TNUICoordinator.openAppleAccountUI();
  }

  else
  {
    v5 = closure #2 in TNUICoordinator.openAppleAccountUI();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v12 = v0;

  static TNCLogger.default.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21E646000, v1, v2, "Did finish presenting AA server UI", v3, 2u);
    MEMORY[0x223D62010](v3, -1, -1);
  }

  v4 = v0[21];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[21] + 32;
    do
    {
      outlined init with copy of TNUIActivityIndicatorShowing(v6, (v0 + 7));
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v7 = v0[10];
      v8 = v0[11];
      __swift_project_boxed_opaque_existential_0(v0 + 7, v7);
      v11 = 1;
      (*(v8 + 8))(&v11, 0, v7, v8);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v9 = v0[1];

  return v9();
}

{
  v19 = v0;
  v1 = v0[32];

  static TNCLogger.default.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[32];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21E646000, v3, v4, "Error presenting AA server UI error: %@", v7, 0xCu);
    outlined destroy of CheckedContinuation<(), Error>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v8, -1, -1);
    MEMORY[0x223D62010](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[21] + 32;
    do
    {
      outlined init with copy of TNUIActivityIndicatorShowing(v13, (v0 + 7));
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v0[10];
      v15 = v0[11];
      __swift_project_boxed_opaque_existential_0(v0 + 7, v14);
      v18 = 1;
      (*(v15 + 8))(&v18, 0, v14, v15);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  v16 = v0[1];

  return v16();
}

void TNUICoordinator.willPresent(remoteUI:modally:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*v2 + 144);
    v4 = (v3)(a1);
    v5 = [v4 presentedViewController];

    if (v5)
    {

      v6 = v3();
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void protocol witness for TNUIAccountRemoteUIDelegate.willPresent(remoteUI:modally:) in conformance TNUICoordinator(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*v2 + 144);
    v4 = (v3)(a1);
    v5 = [v4 presentedViewController];

    if (v5)
    {

      v6 = v3();
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x223D619D0](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t type metadata accessor for UIViewController()
{
  result = lazy cache variable for type metadata for UIViewController;
  if (!lazy cache variable for type metadata for UIViewController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D61890](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *_s20ThreatNotificationUI19TNUIAlertControllerC18stopReviewingAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(uint64_t a1)
{
  type metadata accessor for TNUIAlertController();
  v2 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000014, 0x800000021E6763F0, 0, 0xE000000000000000);
  v4 = v3;
  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E6763D0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = MEMORY[0x223D615B0](v2, v4);

  v9 = MEMORY[0x223D615B0](v5, v7);

  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E674F10;
  static TNUIButtonConfiguration.turnOnLDM.getter(v11 + 32);
  v13 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v13, v11 + 104);
  static TNUIButtonConfiguration.notNow.getter(v11 + 176);
  (*((*MEMORY[0x277D85000] & *v10) + 0x70))(v11, a1, &protocol witness table for TNUICoordinator);

  return v10;
}

void *_s20ThreatNotificationUI19TNUIAlertControllerC21analyticsEnabledAlert7handlerAcA17TNUIActionHandler_p_tFZTf4en_nAA15TNUICoordinatorC_Tt0g5(uint64_t a1)
{
  type metadata accessor for TNUIAlertController();
  v2 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000021E6761D0, 0, 0xE000000000000000);
  v4 = v3;
  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6761B0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = MEMORY[0x223D615B0](v2, v4);

  v9 = MEMORY[0x223D615B0](v5, v7);

  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E6748E0;
  static TNUIButtonConfiguration.done.getter(v11 + 32);
  (*((*MEMORY[0x277D85000] & *v10) + 0x70))(v11, a1, &protocol witness table for TNUICoordinator);

  return v10;
}

uint64_t outlined init with copy of TNUIActivityIndicatorShowing(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #2 in TNUICoordinator.openAppleAccountUI()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return closure #2 in TNUICoordinator.openAppleAccountUI()(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_22(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in TNUICoordinator.enableLDM()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return closure #1 in TNUICoordinator.enableLDM()(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of TNUIViewConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TNUICoordinator.enableLDM();

  return closure #1 in TNUICoordinator.acknowledgeCFUPresentation()(a1, v4, v5, v7, v6);
}

Swift::Int TNUIFlow.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIFlow and conformance TNUIFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow;
  if (!lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIFlow and conformance TNUIFlow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIFlow(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TNUIFlow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  result = (*(v7 + 32))(v11 + v10, v9, v6);
  *a3 = partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:);
  a3[1] = v11;
  return result;
}

uint64_t closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  v18 = a3;
  v19 = a4;
  v20 = type metadata accessor for ScrollBounceBehavior();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v17 - 32) = a2 & 1;
  v13 = v17;
  *(&v17 - 3) = v18;
  *(&v17 - 2) = v13;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>();
  v14 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x223D61320](v14);
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<_ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMd, &_s7SwiftUI10ScrollViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAA01_d9Modifier_F0Vy018ThreatNotificationB007EmbedIncd8IfNeededH0VGAA16_FlexFrameLayoutVGAMGGMR, MEMORY[0x277CDD6E0]);
  View.scrollBounceBehavior(_:axes:)();
  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollg8IfNeededH0VGAA16_FlexFrameLayoutVGAM_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v17 - 8) + 16))(v11, v25, v17);
    v18 = &v11[*(v8 + 36)];
    v19 = v32;
    *(v18 + 4) = v31;
    *(v18 + 5) = v19;
    *(v18 + 6) = v33;
    v20 = v28;
    *v18 = v27;
    *(v18 + 1) = v20;
    v21 = v30;
    *(v18 + 2) = v29;
    *(v18 + 3) = v21;
    outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v11, v13, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
    outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v13, v7);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR, MEMORY[0x277CE04B0]);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(v13);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
    (*(*(v22 - 8) + 16))(v7, v25, v22);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR, MEMORY[0x277CE04B0]);
    _ConditionalContent<>.init(storage:)();
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v16, v26, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance EmbedInScrollViewIfNeededModifier@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *v2;
  (*(v6 + 16))(&v13 - v7, a1, v5);
  v10 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  result = (*(v6 + 32))(v11 + v10, v8, v5);
  *a2 = closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)partial apply;
  a2[1] = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for EmbedInScrollViewIfNeededModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier;
  if (!lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return closure #1 in EmbedInScrollViewIfNeededModifier.body(content:)(a1, v6, v7, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrollf8IfNeededG0VGAA16_FlexFrameLayoutVGAKGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>, _ViewModifier_Content<EmbedInScrollViewIfNeededModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EmbedInScrollViewIfNeededModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB0013EmbedInScrollc8IfNeededD0VGMR, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<EmbedInScrollViewIfNeededModifier>, _FlexFrameLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB0013EmbedInScrolle8IfNeededF0VGAA16_FlexFrameLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TNUIUserNotificationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  return v0;
}

uint64_t TNUIUserNotificationManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void TNUIUserNotificationManager.post(notification:after:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000021E676790, aBlock);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    _os_log_impl(&dword_21E646000, v8, v9, "Will post notification: %s after: %f", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D62010](v11, -1, -1);
    MEMORY[0x223D62010](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a1 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_opt_self() triggerWithTimeInterval:0 repeats:a1];
  }

  v13 = specialized TNUIUserNotificationManager.notificationContent(for:)();
  v14 = v12;
  v15 = MEMORY[0x223D615B0](0xD00000000000004ALL, 0x800000021E676790);
  v16 = [objc_opt_self() requestWithIdentifier:v15 content:v13 trigger:v14];

  v17 = *(v2 + 16);
  aBlock[4] = partial apply for closure #1 in TNUIUserNotificationManager.post(notification:after:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  [v17 addNotificationRequest:v16 withCompletionHandler:v18];

  _Block_release(v18);
}

uint64_t closure #1 in TNUIUserNotificationManager.post(notification:after:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  if (a1)
  {
    v6 = static os_log_type_t.error.getter();
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
  }

  v7 = v6;
  v8 = Logger.logObject.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x800000021E676790, &v18);
    *(v9 + 12) = 2080;
    if (a1)
    {
      strcpy(v17, " with error: ");
      HIWORD(v17[1]) = -4864;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v11 = Optional.debugDescription.getter();
      MEMORY[0x223D61640](v11);

      v12 = v17[0];
      v13 = v17[1];
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_21E646000, v8, v7, "Did register user notification: %s%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D62010](v10, -1, -1);
    MEMORY[0x223D62010](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id specialized TNUIUserNotificationManager.notificationContent(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v17 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v4 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v5 = MEMORY[0x223D615B0](v4);

  [v3 setTitle_];

  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x800000021E676230, 0, 0xE000000000000000);
  v7 = MEMORY[0x223D615B0](v6);

  [v3 setBody_];

  [v3 setHasDefaultAction_];
  v17[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v8;
  v9 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  MEMORY[0x223D61640](v9);

  MEMORY[0x223D61640](0x3D64496D65746926, 0xE800000000000000);
  v10 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  MEMORY[0x223D61640](v10);

  URL.init(string:)();

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v2, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v12 + 8))(v2, v11);
    [v3 setDefaultActionURL_];

    return v3;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int TNUIAccountRemoteUIContentType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType;
  if (!lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAccountRemoteUIContentType and conformance TNUIAccountRemoteUIContentType);
  }

  return result;
}

uint64_t TNUIActionItemContainerView.init(viewModel:action:)(uint64_t a1)
{
  type metadata accessor for TNUIViewModel(0);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel, &protocol conformance descriptor for TNUIViewModel);
  return ObservedObject.init(wrappedValue:)();
}

uint64_t TNUIActionItemContainerView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void TNUIActionItemContainerView.$viewModel.getter()
{
  type metadata accessor for TNUIViewModel(0);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel, &protocol conformance descriptor for TNUIViewModel);

  JUMPOUT(0x223D611B0);
}

uint64_t TNUIActionItemContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.leading.getter();
  *(a5 + 8) = 0x4040000000000000;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMR);
  closure #1 in TNUIActionItemContainerView.body.getter(a1, a2, a3, a4);
  v10 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR) + 36);
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR) + 36)) = 0x3FF0000000000000;
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter;
  *(v22 + 24) = v21;
  v23 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);

  result = OpenURLAction.init(handler:)();
  *v23 = KeyPath;
  return result;
}

uint64_t closure #1 in TNUIActionItemContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(*a2 + 96))(isCurrentExecutor);
  v12 = *&v10[*(v8 + 36)];

  outlined destroy of TNUIViewConfiguration(v10);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v13 = v12;
  }

  v16[1] = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
  type metadata accessor for TNUIActionItemView(0);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [TNUIActionItemConfiguration] and conformance [A], &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR, MEMORY[0x277D83980]);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIActionItemView and conformance TNUIActionItemView, type metadata accessor for TNUIActionItemView, &protocol conformance descriptor for TNUIActionItemView);
  _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TNUIActionItemConfiguration and conformance TNUIActionItemConfiguration, type metadata accessor for TNUIActionItemConfiguration, &protocol conformance descriptor for TNUIActionItemConfiguration);
  ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in TNUIActionItemContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a4;
  v10 = type metadata accessor for TNUIActionItemConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of TNUIActionItemConfiguration(a1, a6);
  outlined init with copy of TNUIActionItemConfiguration(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 2) = v18;
  *(v14 + 3) = a3;
  *(v14 + 4) = v15;
  *(v14 + 5) = a5;
  outlined init with take of TNUIActionItemConfiguration(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  result = type metadata accessor for TNUIActionItemView(0);
  v17 = (a6 + *(result + 20));
  *v17 = partial apply for closure #1 in closure #1 in closure #1 in TNUIActionItemContainerView.body.getter;
  v17[1] = v14;
  return result;
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = URL.absoluteString.getter();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCUILink.init(rawValue:), v7);

  if (v8 > 2)
  {

    return MEMORY[0x282130C38](v9);
  }

  else
  {
    v12 = v8;
    v10 = (*(*a3 + 184))(&v12);

    return MEMORY[0x282130C30](v10);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out OpenURLAction.Result) with global actor constraint MainActor(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t protocol witness for View.body.getter in conformance TNUIActionItemContainerView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAJ0lmD0VGGMR);
  closure #1 in TNUIActionItemContainerView.body.getter(v3, v4, v6, v5);
  v7 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR) + 36)) = 0x3FF0000000000000;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = v4;
  v18[4] = v6;
  v18[5] = v5;
  v19 = swift_allocObject();
  *(v19 + 16) = implicit closure #2 in implicit closure #1 in TNUIActionItemContainerView.body.getterpartial apply;
  *(v19 + 24) = v18;
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);

  result = OpenURLAction.init(handler:)();
  *v20 = KeyPath;
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

uint64_t getEnumTagSinglePayload for TNUIActionItemContainerView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TNUIActionItemContainerView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGAA012_EnvironmenttqR0VyAA13OpenURLActionVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGAA010_FixedSizeO0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0o8PriorityP3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAH0jK4ViewVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay018ThreatNotificationB027TNUIActionItemConfigurationVGSSAF0hI4ViewVGGMd, "$5", MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[TNUIActionItemConfiguration], String, TNUIActionItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s20ThreatNotificationUI13TNUIViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TNUIViewModel.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TNUIViewConfiguration(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v11 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(a1, v10);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v10, v8);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v10);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(a1);
  *(v12 + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v11;
}

uint64_t key path setter for TNUIViewModel.configuration : TNUIViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TNUIViewConfiguration(a1, v6);
  return (*(**a2 + 104))(v6);
}

uint64_t TNUIViewModel.configuration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t TNUIViewModel.configuration.setter(uint64_t a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TNUIViewConfiguration(a1, v4);

  static Published.subscript.setter();
  return outlined destroy of TNUIViewConfiguration(a1);
}

uint64_t (*TNUIViewModel.configuration.modify(uint64_t *a1))()
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
  return TNUIViewModel.configuration.modify;
}

void TNUIViewModel.configuration.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for TNUIViewModel.$configuration : TNUIViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 128))(v6);
}

uint64_t TNUIViewModel.$configuration.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TNUIViewModel.$configuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TNUIViewModel.$configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMd, &_s7Combine9PublishedV9PublisherVy20ThreatNotificationUI21TNUIViewConfigurationV_GMR);
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

  v10 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TNUIViewModel.$configuration.modify;
}

void TNUIViewModel.$configuration.modify(uint64_t a1, char a2)
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

uint64_t TNUIViewModel.identifier.getter()
{
  v1 = type metadata accessor for TNUIViewConfiguration(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 96))(v2);
  v5 = *v4;
  outlined destroy of TNUIViewConfiguration(v4);
  return v5;
}

uint64_t TNUIViewModel.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TNUIViewConfiguration(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = v3 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v3 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(a1, v11);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v11, v9);
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v11);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(a1);
  *(v12 + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t TNUIViewModel.handleAction(with:)(char *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = v2;
    (*(v5 + 8))(&v7, v1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TNUIViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  return v0;
}

uint64_t TNUIViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TNUIViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TNUIViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for TNUIViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUIViewModel;
  if (!type metadata singleton initialization cache for TNUIViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TNUIViewModel(uint64_t a1)
{
  type metadata accessor for Published<TNUIViewConfiguration>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<TNUIViewConfiguration>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<TNUIViewConfiguration>)
  {
    type metadata accessor for TNUIViewConfiguration(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<TNUIViewConfiguration>);
    }
  }
}

_OWORD *static TNUIDependencyContainer.makeDefault(environment:ldmManager:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  *a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI20TNUIAccountProviding_pMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pMR);
  v31 = type metadata accessor for TNUIAccountProvider();
  v32 = &protocol witness table for TNUIAccountProvider;
  v30[0] = swift_allocObject();
  v29 = v6;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v31 = &type metadata for TNUIDependencyContainer.Environment;
  LOBYTE(v30[0]) = v5;
  specialized Dictionary.subscript.setter(v30, &type metadata for TNUIDependencyContainer.Environment);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore14TNCLDMManaging_pMd, &_s22ThreatNotificationCore14TNCLDMManaging_pMR);
  v31 = v7;
  v30[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(a2, v30[0] + 16);
  specialized Dictionary.subscript.setter(v30, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore13TNCMCManaging_pMd, &_s22ThreatNotificationCore13TNCMCManaging_pMR);
  v9 = type metadata accessor for TNCMCManager();
  swift_allocObject();
  v10 = TNCMCManager.init()();
  v31 = v9;
  v32 = MEMORY[0x277D71440];
  v30[0] = v10;
  v29 = v8;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI08TNUIUserB8Managing_pMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pMR);
  v12 = type metadata accessor for TNUIUserNotificationManager();
  v13 = swift_allocObject();
  *(v13 + 16) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v31 = v12;
  v32 = &protocol witness table for TNUIUserNotificationManager;
  v30[0] = v13;
  v29 = v11;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMR);
  v15 = type metadata accessor for TNUIAccountRemoteUIProvider();
  v16 = swift_allocObject();
  v31 = v15;
  v32 = &protocol witness table for TNUIAccountRemoteUIProvider;
  v30[0] = v16;
  v29 = v14;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore12TNCKVStoring_pMd, &_s22ThreatNotificationCore12TNCKVStoring_pMR);
  v18 = type metadata accessor for TNCKVStorage();
  swift_allocObject();
  v19 = TNCKVStorage.init()();
  v31 = v18;
  v32 = MEMORY[0x277D71438];
  v30[0] = v19;
  v29 = v17;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore22TNCFollowUpControlling_pMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pMR);
  v21 = *a3;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(*a3, v30);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v21, v28);
  v22 = type metadata accessor for TNCFollowUpController();
  swift_allocObject();
  v23 = TNCFollowUpController.init(ldmManager:storage:)();
  v31 = v22;
  v32 = MEMORY[0x277D71478];
  v30[0] = v23;
  v29 = v20;
  v28[0] = swift_allocObject();
  outlined init with copy of TNUIActivityIndicatorShowing(v30, v28[0] + 16);
  specialized Dictionary.subscript.setter(v28, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore24TNCOnBoardingControlling_pMd, &_s22ThreatNotificationCore24TNCOnBoardingControlling_pMR);
  v25 = *a3;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5(*a3, v30);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v25, v28);
  type metadata accessor for TNCOnBoardingController();
  swift_allocObject();
  v26 = TNCOnBoardingController.init(followUpController:storage:)();
  v31 = v24;
  v30[0] = v26;
  v30[1] = MEMORY[0x277D71480];
  return specialized Dictionary.subscript.setter(v30, v24);
}

Swift::Int TNUIDependencyContainer.Environment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

ThreatNotificationUI::TNUIDependencyContainer __swiftcall TNUIDependencyContainer.init()()
{
  v1 = v0;
  result.dependencies._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1->dependencies._rawValue = result.dependencies._rawValue;
  return result;
}

uint64_t static TNUIDependencyContainer.makeDefaultContainerForTesting()@<X0>(unint64_t *a1@<X8>)
{
  v6 = 0;
  v2 = type metadata accessor for TNCLDMManager();
  swift_allocObject();
  v3 = TNCLDMManager.init()();
  v5[3] = v2;
  v5[4] = MEMORY[0x277D71448];
  v5[0] = v3;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v6, v5, a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t TNUIDependencyContainer.register<A>(type:factory:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = *v4;

  a2(v13);

  v13[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(v8 + 16))(boxed_opaque_existential_0, v10, a4);
  specialized Dictionary.subscript.setter(v13, a1);
  return (*(v8 + 8))(v10, a4);
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore14TNCLDMManaging_pMd, &_s22ThreatNotificationCore14TNCLDMManaging_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore14TNCLDMManaging_pSgMd, &_s22ThreatNotificationCore14TNCLDMManaging_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore12TNCKVStoring_pMd, &_s22ThreatNotificationCore12TNCKVStoring_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore12TNCKVStoring_pSgMd, &_s22ThreatNotificationCore12TNCKVStoring_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core22TNCFollowUpControlling_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore22TNCFollowUpControlling_pMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore22TNCFollowUpControlling_pSgMd, &_s22ThreatNotificationCore22TNCFollowUpControlling_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore24TNCOnBoardingControlling_pMd, &_s22ThreatNotificationCore24TNCOnBoardingControlling_pMR);
  if (*(a1 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v3, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return v8;
  }

  v6 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x800000021E676AD0;
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D71488], v6);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore13TNCMCManaging_pMd, &_s22ThreatNotificationCore13TNCMCManaging_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s22ThreatNotificationCore13TNCMCManaging_pSgMd, &_s22ThreatNotificationCore13TNCMCManaging_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAC11EnvironmentO_Tt0B5@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for TNUIDependencyContainer.Environment), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v10 & 1;
  }

  else
  {
    v7 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v8 = 0xD00000000000001CLL;
    v8[1] = 0x800000021E676AD0;
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D71488], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA08TNUIUserB8Managing_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI08TNUIUserB8Managing_pMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI08TNUIUserB8Managing_pSgMd, &_s20ThreatNotificationUI08TNUIUserB8Managing_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA20TNUIAccountProviding_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI20TNUIAccountProviding_pMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI20TNUIAccountProviding_pSgMd, &_s20ThreatNotificationUI20TNUIAccountProviding_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA28TNUIAccountRemoteUIProviding_p_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pMR);
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  if (swift_dynamicCast())
  {
    return _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(v10, a2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  outlined destroy of CheckedContinuation<(), Error>?(v10, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pSgMd, &_s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pSgMR);
  v8 = type metadata accessor for TNCError();
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  swift_allocError();
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000021E676AD0;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D71488], v8);
  return swift_willThrow();
}

uint64_t TNUIDependencyContainer.tryResolve<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = *v3;
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(v11 + 56) + 32 * v12, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  v14 = swift_dynamicCast();
  v15 = *(*(a2 - 8) + 56);
  if (v14)
  {
    v16 = *(a2 - 8);
    v15(v10, 0, 1, a2);
    return (*(v16 + 32))(a3, v10, a2);
  }

  else
  {
    v15(v10, 1, 1, a2);
    (*(v8 + 8))(v10, v7);
    v18 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v19 = 0xD00000000000001CLL;
    v19[1] = 0x800000021E676AD0;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D71488], v18);
    return swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type TNCError and conformance TNCError()
{
  result = lazy protocol witness table cache variable for type TNCError and conformance TNCError;
  if (!lazy protocol witness table cache variable for type TNCError and conformance TNCError)
  {
    type metadata accessor for TNCError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCError and conformance TNCError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment;
  if (!lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIDependencyContainer.Environment and conformance TNUIDependencyContainer.Environment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIDependencyContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for TNUIDependencyContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Color.sheetBackground(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF3D0])
  {
    v7 = [objc_opt_self() systemBackgroundColor];
LABEL_5:
    v11 = v7;
    return Color.init(uiColor:)();
  }

  v8 = v6;
  v9 = *MEMORY[0x277CDF3C0];
  v10 = objc_opt_self();
  if (v8 == v9)
  {
    v7 = [v10 secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  v13 = [v10 systemBackgroundColor];
  v14 = Color.init(uiColor:)();
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t static Color.secondarySystemBackground.getter(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return Color.init(uiColor:)();
}

uint64_t TNUILDMEnabledViewModel.__allocating_init(notificationDate:mcManager:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TNUILDMEnabledViewModel.__ivar_destroyer()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  v1 = (v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager);

  return __swift_destroy_boxed_opaque_existential_0Tm(v1);
}

uint64_t TNUILDMEnabledViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager));
  return v0;
}

uint64_t TNUILDMEnabledViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel__configuration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMd, &_s7Combine9PublishedVy20ThreatNotificationUI21TNUIViewConfigurationVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler);
  v3 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;

  outlined destroy of Date?(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

Swift::Void __swiftcall TNUILDMEnabledViewModel.diagnosticsSharingEnabledDidChange(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager), *(v1 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 24));
  v6 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  v7 = static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(v1 + v5, (v6 & 1) == 0, v4);
  (*(*v1 + 104))(v4, v7);
}

uint64_t protocol witness for TNCMCManagerObserver.diagnosticsSharingEnabledDidChange(_:) in conformance TNUILDMEnabledViewModel()
{
  v1 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate;
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager), *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager + 24));
  v5 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  v6 = static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(v0 + v4, (v5 & 1) == 0, v3);
  return (*(*v0 + 104))(v3, v6);
}

uint64_t specialized TNUILDMEnabledViewModel.init(notificationDate:mcManager:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v20 = type metadata accessor for TNUIViewConfiguration(0);
  v8 = MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  outlined init with copy of TNUIActivityIndicatorShowing(a2, v4 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager);
  outlined init with copy of Date?(a1, v4 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_notificationDate);
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v16 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)(a1, (v16 & 1) == 0, v15);
  v17 = v4 + OBJC_IVAR____TtC20ThreatNotificationUI13TNUIViewModel_handler;
  *(v17 + 8) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of TNUIViewConfiguration(v15, v13);
  swift_beginAccess();
  outlined init with copy of TNUIViewConfiguration(v13, v10);
  swift_unknownObjectRetain();
  Published.init(initialValue:)();
  outlined destroy of TNUIViewConfiguration(v13);
  swift_endAccess();
  outlined destroy of TNUIViewConfiguration(v15);
  *(v17 + 8) = v21;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  outlined init with copy of TNUIActivityIndicatorShowing(v5 + OBJC_IVAR____TtC20ThreatNotificationUI23TNUILDMEnabledViewModel_mcManager, v22);
  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  lazy protocol witness table accessor for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel();

  dispatch thunk of TNCMCManaging.addObserver(_:)();

  outlined destroy of Date?(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v5;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TNUILDMEnabledViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUILDMEnabledViewModel;
  if (!type metadata singleton initialization cache for TNUILDMEnabledViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TNUILDMEnabledViewModel(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel()
{
  result = lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel;
  if (!lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel)
  {
    type metadata accessor for TNUILDMEnabledViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUILDMEnabledViewModel and conformance TNUILDMEnabledViewModel);
  }

  return result;
}

ThreatNotificationUI::TNUIAnalyticsEvent::Payload __swiftcall TNUIAnalyticsEvent.payload(with:)(ThreatNotificationUI::TNUIDependencyContainer with)
{
  v2 = specialized TNUIAnalyticsEvent.payload(with:)(with.dependencies._rawValue, v1);
  result.elapsedTime = v4;
  result.type = v2;
  result.ldmEnabled = v5;
  result.analyticsEnabled = v3;
  return result;
}

unint64_t TNUIAnalyticsEvent.Payload.caPayload.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E675720;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000021E676BA0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x5464657370616C65;
  *(inited + 88) = 0xEB00000000656D69;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0x6C62616E456D646CLL;
  *(inited + 112) = 0xEA00000000006465;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v9;
}

uint64_t TNUIAnalyticsEvent.EventType.identifier.getter(char a1)
{
  if ((a1 - 2) < 6u)
  {
    return qword_21E6759B8[(a1 - 2)];
  }

  if (a1)
  {
    return 2;
  }

  return 3;
}

uint64_t TNUIAnalyticsEvent.EventType.description.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0x62616E45204D444CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return 0xD00000000000002BLL;
      }

      return 0xD000000000000011;
    }

    return 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 2)
    {
      return 0x6E65704F20554643;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD00000000000001BLL;
      }

      return 0xD000000000000011;
    }

    return 0x6563655220554643;
  }
}

uint64_t static TNUIAnalyticsEvent.Payload.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = (a1 == a5) & ~(a2 ^ a6);
  if (a3 != a7)
  {
    v8 = 0;
  }

  return v8 & (a4 ^ a8 ^ 1u);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x5464657370616C65;
  if (*v0 != 2)
  {
    v2 = 0x6C62616E456D646CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TNUIAnalyticsEvent.Payload.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TNUIAnalyticsEvent.Payload.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TNUIAnalyticsEvent.Payload.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TNUIAnalyticsEvent.Payload.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v15[3] = a5;
  v15[6] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMd, &_ss22KeyedEncodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys(v11, v12, v13);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v18 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t TNUIAnalyticsEvent.Payload.init(from:)(void *a1)
{
  result = specialized TNUIAnalyticsEvent.Payload.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

ThreatNotificationUI::TNUIAnalyticsEvent::Payload __swiftcall TNUIAnalyticsEvent.Payload.init(type:analyticsEnabled:elapsedTime:ldmEnabled:)(Swift::Int type, Swift::Bool analyticsEnabled, Swift::Int elapsedTime, Swift::Bool ldmEnabled)
{
  v4 = analyticsEnabled;
  v5 = ldmEnabled;
  result.elapsedTime = elapsedTime;
  result.type = type;
  result.ldmEnabled = v5;
  result.analyticsEnabled = v4;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance TNUIAnalyticsEvent.Payload@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized TNUIAnalyticsEvent.Payload.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TNUIAnalyticsEvent.Payload(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = *(a2 + 24) ^ *(a1 + 24) ^ 1;
  }

  return v2 & 1;
}

uint64_t specialized TNUIAnalyticsEvent.description.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0x62616E45204D444CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return 0xD00000000000002BLL;
      }

      return 0xD000000000000011;
    }

    return 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 2)
    {
      return 0x6E65704F20554643;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0xD00000000000001BLL;
      }

      return 0xD000000000000011;
    }

    return 0x6563655220554643;
  }
}

uint64_t specialized TNUIAnalyticsEvent.payload(with:)(uint64_t *a1, char a2)
{
  v4 = type metadata accessor for Date();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TNCStorageKey();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((a2 - 2) >= 6u)
  {
    if (a2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = qword_21E6759B8[(a2 - 2)];
  }

  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*a1, v25);
  v22 = v12;
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v11, v23);
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v8 + 104))(v10, *MEMORY[0x277D71450], v7);
  v13 = COERCE_DOUBLE(dispatch thunk of TNCKVStoring.timeInterval(for:)());
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v16 = -1.0;
  if ((v15 & 1) == 0)
  {
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v18 = v17;
    (*(v20 + 8))(v6, v21);
    v16 = floor((v18 - v13) / 86400.0) * 86400.0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 9.22337204e18)
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core14TNCLDMManaging_p_Tt0B5(v11, v23);
    __swift_project_boxed_opaque_existential_0(v23, v24);
    dispatch thunk of TNCLDMManaging.isEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    return v22;
  }

LABEL_14:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys);
  }

  return result;
}

uint64_t specialized TNUIAnalyticsEvent.Payload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021E676BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C62616E456D646CLL && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized TNUIAnalyticsEvent.Payload.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMd, &_ss22KeyedDecodingContainerVy20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadV10CodingKeys33_F13E2C5F9947DB4153C696A21A07186CLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload.CodingKeys and conformance TNUIAnalyticsEvent.Payload.CodingKeys(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v15 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_19;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 5)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 5;
}

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TNUIAnalyticsEvent.EventType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for TNUIAnalyticsEvent.EventType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIAnalyticsEvent.Payload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIAnalyticsEvent.Payload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *static TNUIAlertController.analyticsEnabledAlert(handler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized static TNUIAlertController.analyticsEnabledAlert(handler:)(a1, v2, ObjectType, a2);
}

void *static TNUIAlertController.stopReviewingAlert(handler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized static TNUIAlertController.stopReviewingAlert(handler:)(a1, v2, ObjectType, a2);
}

uint64_t key path setter for TNUIAlertController.buttons : TNUIAlertController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void TNUIAlertController.setButtons(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons;
  swift_beginAccess();
  *&v3[v5] = a1;

  v6 = *(a1 + 16);
  if (v6)
  {
    v29 = objc_opt_self();
    v7 = (a1 + 32);
    do
    {
      v11 = v7[3];
      v40 = v7[2];
      v41 = v11;
      v42 = *(v7 + 64);
      v12 = v7[1];
      v38 = *v7;
      v39 = v12;
      v13 = BYTE8(v40) > 1u;
      v14 = *(&v12 + 1);
      v15 = v40;
      outlined init with copy of TNUIButtonConfiguration(&v38, v37);
      v16 = MEMORY[0x223D615B0](v14, v15);
      v17 = 2 * v13;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 24) = a3;
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      v21 = v41;
      *(v20 + 64) = v40;
      *(v20 + 80) = v21;
      *(v20 + 96) = v42;
      v22 = v39;
      *(v20 + 32) = v38;
      *(v20 + 48) = v22;
      v35 = partial apply for closure #1 in TNUIAlertController.setButtons(_:handler:);
      v36 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction?) -> ();
      v34 = &block_descriptor_3;
      v23 = _Block_copy(&aBlock);
      outlined init with copy of TNUIButtonConfiguration(&v38, v37);

      v24 = swift_allocObject();
      v25 = v41;
      *(v24 + 48) = v40;
      *(v24 + 64) = v25;
      *(v24 + 80) = v42;
      v26 = v39;
      *(v24 + 16) = v38;
      *(v24 + 32) = v26;
      v35 = partial apply for closure #2 in TNUIAlertController.setButtons(_:handler:);
      v36 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
      v34 = &block_descriptor_12;
      v27 = _Block_copy(&aBlock);
      outlined init with copy of TNUIButtonConfiguration(&v38, v37);

      v28 = [v29 _actionWithTitle_image_style_handler_shouldDismissHandler_];
      _Block_release(v27);
      _Block_release(v23);

      if (v28)
      {
        v8 = v41;
        v9 = v28;
        v10 = MEMORY[0x223D615B0](v8, *(&v8 + 1));
        outlined destroy of TNUIButtonConfiguration(&v38);
        [v9 setAccessibilityIdentifier_];

        [v3 addAction_];
      }

      else
      {
        outlined destroy of TNUIButtonConfiguration(&v38);
      }

      v7 = (v7 + 72);
      --v6;
    }

    while (v6);
  }
}

void closure #1 in TNUIAlertController.setButtons(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v12 = *(a4 + 16);
      v10 = *(v8 + 8);
      v11 = v7;
      v10(&v12, v11, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #2 in TNUIAlertController.setButtons(_:handler:)(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return *(a1 + 64);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id TNUIAlertController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x223D615B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TNUIAlertController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons] = MEMORY[0x277D84F90];
  if (a2)
  {
    v5 = MEMORY[0x223D615B0](a1);
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TNUIAlertController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id TNUIAlertController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TNUIAlertController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAlertController_buttons] = MEMORY[0x277D84F90];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TNUIAlertController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TNUIAlertController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TNUIAlertController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void TNUIAlertController.showActivityIndicator(for:show:)(unsigned __int8 *a1, char a2)
{
  v4 = *a1;
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x58))();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    return;
  }

  v8 = 0;
  v9 = v5 + 32;
  v36 = v4 - 3;
  v37 = a2 ^ 1;
  v35 = "TNUIWebViewController";
  v38 = v5 + 32;
  v39 = *(v5 + 16);
  v41 = v4;
  v40 = v5;
  while (1)
  {
    v10 = v9 + 72 * v8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    v13 = *(v10 + 64);
    v46 = *(v10 + 16);
    v14 = *v10;
    v49 = v13;
    v47 = v12;
    v48 = v11;
    v45 = v14;
    if (v46 > 5u)
    {
      break;
    }

    switch(v46)
    {
      case 3u:
        if (v4 == 3)
        {
          goto LABEL_39;
        }

        break;
      case 4u:
        if (v4 == 4)
        {
LABEL_39:
          outlined init with copy of TNUIButtonConfiguration(&v45, v44);
          goto LABEL_40;
        }

        break;
      case 5u:
        if (v4 == 5)
        {
          goto LABEL_39;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_71:
    if (++v8 == v7)
    {
      goto LABEL_74;
    }

    if (v8 >= *(v6 + 16))
    {
      __break(1u);
LABEL_74:

      return;
    }
  }

  if (v46 <= 7u)
  {
    if (v46 == 6)
    {
      if (v4 == 6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v46 != 7)
      {
        goto LABEL_20;
      }

      if (v4 == 7)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_71;
  }

  if (v46 == 8)
  {
    if (v4 == 8)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

  if (v46 == 9)
  {
    if (v4 == 9)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_20:
  if (v36 < 7)
  {
    goto LABEL_71;
  }

  if (!v46)
  {
    v15 = 0xD000000000000013;
    v16 = v35;
    if (v4)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

  if (v46 == 1)
  {
    v15 = 0xD000000000000021;
  }

  else
  {
    v15 = 0xD000000000000017;
  }

  v16 = "emergencyAssistance";
  if (v46 != 1)
  {
    v16 = "reatNotifications";
  }

  if (!v4)
  {
LABEL_59:
    v17 = 0xD000000000000013;
    v18 = v35;
    goto LABEL_60;
  }

LABEL_28:
  if (v4 == 1)
  {
    v17 = 0xD000000000000021;
  }

  else
  {
    v17 = 0xD000000000000017;
  }

  v18 = "emergencyAssistance";
  if (v4 != 1)
  {
    v18 = "reatNotifications";
  }

LABEL_60:
  if (v15 != v17 || (v16 | 0x8000000000000000) != (v18 | 0x8000000000000000))
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of TNUIButtonConfiguration(&v45, v44);

    if (v33)
    {
      goto LABEL_40;
    }

    outlined destroy of TNUIButtonConfiguration(&v45);
    goto LABEL_71;
  }

  outlined init with copy of TNUIButtonConfiguration(&v45, v44);

LABEL_40:
  v43 = v8;
  v19 = [v42 actions];
  type metadata accessor for UIAlertAction();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_42;
    }

    goto LABEL_69;
  }

  if (v20 < 0)
  {
    v34 = v20;
  }

  else
  {
    v34 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = MEMORY[0x223D618F0](v34);
  if (!v21)
  {
LABEL_69:
    outlined destroy of TNUIButtonConfiguration(&v45);

LABEL_70:
    v4 = v41;
    v7 = v39;
    v6 = v40;
    v8 = v43;
    v9 = v38;
    goto LABEL_71;
  }

LABEL_42:
  v22 = 0;
  v23 = v48;
  while (1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223D618C0](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = [v25 accessibilityIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (__PAIR128__(v31, v29) == v23)
      {

LABEL_57:

        outlined destroy of TNUIButtonConfiguration(&v45);
        [v25 setEnabled_];

        goto LABEL_70;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
    }

    ++v22;
    if (v26 == v21)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
}

void *specialized static TNUIAlertController.stopReviewingAlert(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TNUIAlertController();
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000014, 0x800000021E6763F0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E6763D0, 0, 0xE000000000000000);
  v11 = v10;
  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = MEMORY[0x223D615B0](v9, v11);

  v14 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E674F10;
  static TNUIButtonConfiguration.turnOnLDM.getter(v15 + 32);
  v17 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v17, v15 + 104);
  static TNUIButtonConfiguration.notNow.getter(v15 + 176);
  (*((*MEMORY[0x277D85000] & *v14) + 0x70))(v15, a1, a4);

  return v14;
}

void *specialized static TNUIAlertController.analyticsEnabledAlert(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TNUIAlertController();
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000021E6761D0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6761B0, 0, 0xE000000000000000);
  v11 = v10;
  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = MEMORY[0x223D615B0](v9, v11);

  v14 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E6748E0;
  static TNUIButtonConfiguration.done.getter(v15 + 32);
  (*((*MEMORY[0x277D85000] & *v14) + 0x70))(v15, a1, a4);

  return v14;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for UIAlertAction()
{
  result = lazy cache variable for type metadata for UIAlertAction;
  if (!lazy cache variable for type metadata for UIAlertAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAlertAction);
  }

  return result;
}

double Double.daysFromNow.getter(double a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return floor((v7 - a1) / 86400.0) * 86400.0;
}

Swift::String_optional __swiftcall TNUIAccountProvider.usernameForAccount(altDSID:)(Swift::String altDSID)
{
  object = altDSID._object;
  countAndFlagsBits = altDSID._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultStore];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v7;
  v10 = MEMORY[0x223D615B0](countAndFlagsBits, object);
  v11 = [v9 aa:v10 appleAccountWithAltDSID:?];

  if (!v11)
  {
    static TNCLogger.default.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v23);
      _os_log_impl(&dword_21E646000, v17, v18, "No account for identifier: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x223D62010](v20, -1, -1);
      MEMORY[0x223D62010](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    goto LABEL_9;
  }

  v12 = [v11 username];
  if (!v12)
  {

LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v8 = v16;
  v7 = v14;
LABEL_12:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t TNUIAAServerViewController.__allocating_init(type:remoteUIProvider:)(_BYTE *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  *(v4 + 112) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  outlined init with take of TNUIAccountRemoteUIProviding(a2, v4 + 24);
  return v4;
}

uint64_t TNUIAAServerViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIAAServerViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 112);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return TNUIAAServerViewController.delegate.modify;
}

void TNUIAAServerViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 112) = *(*a1 + 32);
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

uint64_t TNUIAAServerViewController.init(type:remoteUIProvider:)(char *a1, __int128 *a2)
{
  v4 = *a1;
  *(v2 + 112) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = v4;
  outlined init with take of TNUIAccountRemoteUIProviding(a2, v2 + 24);
  return v2;
}

uint64_t TNUIAAServerViewController.present(from:)(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](TNUIAAServerViewController.present(from:), 0, 0);
}

uint64_t TNUIAAServerViewController.present(from:)()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  outlined init with copy of TNUIAccountRemoteUIType?(v1 + 64, v0 + 16);
  v2 = *(v0 + 40);
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 16);
  if (v2)
  {
    v3 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000021E676D20;
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D71488], v3);
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 328);
    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    __swift_project_boxed_opaque_existential_0((v7 + 24), v8);
    *(v0 + 368) = *(v7 + 16);
    v12 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = TNUIAAServerViewController.present(from:);
    v11 = *(v0 + 320);

    return v12(v0 + 56, v0 + 368, v11, v8, v9);
  }
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = TNUIAAServerViewController.present(from:);
  }

  else
  {
    v2 = TNUIAAServerViewController.present(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 328);
  swift_beginAccess();
  outlined assign with take of TNUIAccountRemoteUIType?(v0 + 56, v1 + 64);
  swift_endAccess();
  v3 = TNUIAAServerViewController.remoteUI.modify(v0 + 216);
  if (*(v2 + 24))
  {
    v4 = v2;
    v5 = (*(**(v0 + 328) + 136))();
    v7 = v6;
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v4, v8);
    (*(v9 + 24))(v5, v7, v8, v9);
  }

  (v3)(v0 + 216, 0);
  outlined init with copy of TNUIAccountRemoteUIType?(*(v0 + 328) + 64, v0 + 96);
  if (*(v0 + 120))
  {
    outlined init with copy of TNUIActivityIndicatorShowing(v0 + 96, v0 + 176);
    outlined destroy of TNUIAccountRemoteUIType?(v0 + 96);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_0((v0 + 176), v10);
    v16 = (*(v11 + 40) + **(v11 + 40));
    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    *v12 = v0;
    v12[1] = TNUIAAServerViewController.present(from:);

    return v16(v10, v11);
  }

  else
  {
    outlined destroy of TNUIAccountRemoteUIType?(v0 + 96);
    v14 = *(v0 + 328);
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;
    swift_beginAccess();
    outlined assign with take of TNUIAccountRemoteUIType?(v0 + 136, v14 + 64);
    swift_endAccess();
    v15 = *(v0 + 8);

    return v15();
  }
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = TNUIAAServerViewController.present(from:);
  }

  else
  {
    v2 = TNUIAAServerViewController.present(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  v1 = *(v0 + 328);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  swift_beginAccess();
  outlined assign with take of TNUIAccountRemoteUIType?(v0 + 136, v1 + 64);
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

{
  return (*(v0 + 8))();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined init with copy of TNUIAccountRemoteUIType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TNUIAccountRemoteUIType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of TNUIAccountRemoteUIType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMd, &_s20ThreatNotificationUI23TNUIAccountRemoteUIType_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t TNUIAAServerViewController.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 64);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 104);
  return v0;
}

uint64_t TNUIAAServerViewController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  outlined destroy of TNUIAccountRemoteUIType?(v0 + 64);
  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v0 + 104);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t dispatch thunk of TNUIAAServerViewController.present(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v6(a1);
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t ImageColorScheme.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v49 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGATGA__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGATGA__GMR);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGAT_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingH0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleH0VyAA0L0VGGAT_GMR);
  MEMORY[0x28223BE20](v42);
  v45 = &v39 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
  MEMORY[0x28223BE20](v44);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  v15 = MEMORY[0x28223BE20](v46);
  v39 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v43 = v9;
  v25 = *(v9 + 36);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  v27 = a2;

  v50 = a3;
  if (a3)
  {
    static SymbolRenderingMode.hierarchical.getter();
    v28 = type metadata accessor for SymbolRenderingMode();
    (*(*(v28 - 8) + 56))(&v14[v25 + v26], 0, 1, v28);
    *&v14[v25] = swift_getKeyPath();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR);
    (*(*(v29 - 8) + 16))(v14, v41, v29);
    v30 = a2;
    if (a2)
    {
      v31 = v40;
      outlined init with copy of (ObjectIdentifier, Sendable)(v14, v40, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      v32 = v45;
      *(v31 + *(v44 + 36)) = v27;
      outlined init with copy of (ObjectIdentifier, Sendable)(v31, v32, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();

      _ConditionalContent<>.init(storage:)();
      outlined destroy of CheckedContinuation<(), Error>?(v31, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    }

    else
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v14, v45, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    outlined destroy of CheckedContinuation<(), Error>?(v14, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(v22, v24);
  }

  else
  {
    static SymbolRenderingMode.monochrome.getter();
    v33 = type metadata accessor for SymbolRenderingMode();
    (*(*(v33 - 8) + 56))(&v12[v25 + v26], 0, 1, v33);
    *&v12[v25] = swift_getKeyPath();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR);
    (*(*(v34 - 8) + 16))(v12, v41, v34);
    v30 = a2;
    if (a2)
    {
      v35 = v40;
      outlined init with copy of (ObjectIdentifier, Sendable)(v12, v40, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      v36 = v45;
      *(v35 + *(v44 + 36)) = v27;
      outlined init with copy of (ObjectIdentifier, Sendable)(v35, v36, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();

      v37 = v39;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CheckedContinuation<(), Error>?(v35, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    }

    else
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v12, v45, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
      v37 = v39;
      _ConditionalContent<>.init(storage:)();
    }

    outlined destroy of CheckedContinuation<(), Error>?(v12, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(v37, v19);
    v24 = v19;
  }

  outlined init with copy of (ObjectIdentifier, Sendable)(v24, v47, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of TNUIImageColorScheme(v30);
  return outlined destroy of CheckedContinuation<(), Error>?(v24, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
}

uint64_t View.ifNotNil<A, B>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a1;
  v62 = a9;
  v63 = a8;
  v61 = a7;
  v51 = a3;
  v52 = a2;
  v55 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v48 - v15;
  v54 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = &v48 - v20;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v26 = *(a6 - 8);
  MEMORY[0x28223BE20](v23);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a5;
  v60 = a4;
  v58 = type metadata accessor for _ConditionalContent();
  v29 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v48 - v30;
  (*(v22 + 16))(v25, v56, v21);
  if ((*(v26 + 48))(v25, 1, a6) == 1)
  {
    (*(v22 + 8))(v25, v21);
    v32 = v55;
    v33 = *(v55 + 16);
    v34 = v50;
    v35 = v60;
    v33(v50, v57, v60);
    v36 = v53;
    v33(v53, v34, v35);
    v37 = v61;
    static ViewBuilder.buildEither<A, B>(second:)(v36, v59, v35, v63, v61);
    v38 = *(v32 + 8);
    v38(v36, v35);
    v38(v34, v35);
  }

  else
  {
    v39 = *(v26 + 32);
    v48 = a6;
    v39(v28, v25, a6);
    v52(v57, v28);
    v40 = v54;
    v41 = *(v54 + 16);
    v57 = v29;
    v42 = v49;
    v43 = v59;
    v41(v49, v19, v59);
    v44 = *(v40 + 8);
    v44(v19, v43);
    v41(v19, v42, v43);
    v37 = v61;
    static ViewBuilder.buildEither<A, B>(first:)(v19, v43, v60, v63, v61);
    v44(v19, v43);
    v45 = v42;
    v29 = v57;
    v44(v45, v43);
    (*(v26 + 8))(v28, v48);
  }

  v64 = v63;
  v65 = v37;
  v46 = v58;
  swift_getWitnessTable();
  (*(v29 + 16))(v62, v31, v46);
  return (*(v29 + 8))(v31, v46);
}

uint64_t View.imageColorScheme(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2 & 1;
  return MEMORY[0x223D614B0](&v4, a3, &type metadata for ImageColorScheme);
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of (ObjectIdentifier, Sendable)(a1, &v5 - v3, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleF0VyAA0J0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingF0VyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ImageColorScheme> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMd, &_s7SwiftUI21_ViewModifier_ContentVy018ThreatNotificationB016ImageColorSchemeVGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGAYGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA014_ViewModifier_D0Vy018ThreatNotificationB016ImageColorSchemeVGAA022_EnvironmentKeyWritingG0VyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleG0VyAA0K0VGGARGAYGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>, _ConditionalContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<_ViewModifier_Content<ImageColorScheme>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageColorScheme and conformance ImageColorScheme(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme;
  if (!lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageColorScheme and conformance ImageColorScheme);
  }

  return result;
}

id static TNUIWebViewController.makeWebViewController(url:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CDB700]);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithURL_];

  return v4;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211B400]();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}