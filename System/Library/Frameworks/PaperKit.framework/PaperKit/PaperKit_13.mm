uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static PaperMarkupViewController.logger);
  __swift_project_value_buffer(v0, static PaperMarkupViewController.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t PaperMarkupViewController.isHostedInExtension.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isHostedInExtension;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PaperMarkupViewController.isHostedInExtension.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isHostedInExtension;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*PaperMarkupViewController._delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperMarkupViewController._delegate.modify;
}

void PaperMarkupViewController._delegate.modify(uint64_t a1, char a2)
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

uint64_t key path getter for PaperMarkupViewController.delegate : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

double key path setter for PaperMarkupViewController.delegate : PaperMarkupViewController(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t PaperMarkupViewController.delegate.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t type metadata accessor for PaperMarkupViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for PaperMarkupViewController;
  if (!type metadata singleton initialization cache for PaperMarkupViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PaperMarkupViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.delegate.setter()
{
  return partial apply for closure #1 in PaperMarkupViewController.delegate.setter();
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*PaperMarkupViewController.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._delegate.modify(v4);
  return PaperMarkupViewController.delegate.modify;
}

uint64_t key path getter for PaperMarkupViewController.markup : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
}

uint64_t key path setter for PaperMarkupViewController.markup : PaperMarkupViewController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of Date?(a1, &v6 - v3, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  return PaperMarkupViewController.markup.setter(v4);
}

uint64_t PaperMarkupViewController.markup.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  return outlined init with copy of Date?(v5 + v3, a1, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
}

uint64_t PaperMarkupViewController.markup.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PaperMarkup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v49 - v14;
  v15 = *(v5 + 48);
  v55 = v4;
  v58 = v15;
  v16 = (v15)(a1, 1, v4, v13);
  if (v16 == 1)
  {
    v17 = 0x7261656C63;
  }

  else
  {
    v17 = 7628147;
  }

  if (v16 == 1)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static PaperMarkupViewController.logger);

  v56 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v52 = v7;
  v53 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v62[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v62);
    _os_log_impl(&dword_1D38C4000, v21, v22, "Will %s markup", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1DA6D0660](v25, -1, -1);
    MEMORY[0x1DA6D0660](v24, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v49 - 2) = v2;
  *(&v49 - 1) = a1;
  v57 = a1;
  v62[0] = v2;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v27 = v55;
  if ((*(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isSettingModelFromView) & 1) == 0)
  {
    swift_getKeyPath();
    v62[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
    swift_beginAccess();
    v29 = v2 + v28;
    v30 = v50;
    outlined init with copy of Date?(v29, v50, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    if (v58(v30, 1, v27))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
      v32 = v51;
      (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
      v34 = v30;
      v35 = *(v33 - 8);
      v32 = v51;
      (*(v35 + 16))(v51, v34, v33);
      outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
      (*(v35 + 56))(v32, 0, 1, v33);
    }

    PaperMarkupViewController.updateViewForPaper(_:)(v32);
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  }

  swift_getKeyPath();
  v61 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  v37 = v2 + v36;
  v38 = v54;
  outlined init with copy of Date?(v37, v54, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  if (v58(v38, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  }

  else
  {
    v39 = v52;
    _s8PaperKit0A6MarkupVWObTm_0(v38, v52, type metadata accessor for PaperMarkup);
    swift_getKeyPath();
    v60 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection))
    {

      CRMulticastSyncManager.sync(_:sendDelta:)();
    }

    _s8PaperKit0A6MarkupVWOhTm_0(v39, type metadata accessor for PaperMarkup);
  }

  swift_getKeyPath();
  v60 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 8);
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(v2, ObjectType, v41);
    swift_unknownObjectRelease();
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v45 = 136315138;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v18, &v59);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_1D38C4000, v43, v44, "Did %s markup", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1DA6D0660](v46, -1, -1);
    MEMORY[0x1DA6D0660](v45, -1, -1);
  }

  else
  {
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
}

void closure #1 in PaperMarkupViewController.markup.setter(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v74 = type metadata accessor for CRKeyPath();
  v79 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v65 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v63 - v4;
  v5 = type metadata accessor for PaperMarkup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v69 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v31 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  v75 = a1;
  v73 = v31;
  v32 = a1 + v31;
  v33 = v5;
  outlined init with copy of Date?(v32, v22, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  v34 = *(v6 + 48);
  v76 = v6 + 48;
  if (v34(v22, 1, v5))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    v35 = 1;
  }

  else
  {
    _s8PaperKit0A6MarkupVWOcTm_0(v22, v10, type metadata accessor for PaperMarkup);
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    Capsule.rootID.getter();
    _s8PaperKit0A6MarkupVWOhTm_0(v10, type metadata accessor for PaperMarkup);
    v35 = 0;
  }

  v36 = *(v79 + 56);
  v37 = v74;
  v36(v30, v35, 1, v74);
  outlined init with copy of Date?(v77, v19, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  v66 = v34;
  v38 = v34(v19, 1, v33);
  v39 = v72;
  v68 = v33;
  if (v38 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    v40 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    Capsule.rootID.getter();
    _s8PaperKit0A6MarkupVWOhTm_0(v19, type metadata accessor for PaperMarkup);
    v40 = 0;
  }

  v36(v27, v40, 1, v37);
  v41 = *(v71 + 48);
  outlined init with copy of Date?(v30, v39, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  outlined init with copy of Date?(v27, v39 + v41, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v42 = *(v79 + 48);
  if (v42(v39, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v43 = v42(v39 + v41, 1, v37);
    v44 = v75;
    v45 = v73;
    if (v43 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      goto LABEL_15;
    }

LABEL_12:
    v47 = &_s9Coherence9CRKeyPathVSg_ADtMd;
    v48 = &_s9Coherence9CRKeyPathVSg_ADtMR;
    v49 = v39;
LABEL_13:
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, v47, v48);
LABEL_16:
    v58 = v70;
    outlined init with copy of Date?(v77, v70, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    swift_beginAccess();
    outlined assign with take of PaperMarkup?(v58, v44 + v45);
    swift_endAccess();
    return;
  }

  v46 = v69;
  outlined init with copy of Date?(v39, v69, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  if (v42(v39 + v41, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    (*(v79 + 8))(v46, v37);
    v44 = v75;
    v45 = v73;
    goto LABEL_12;
  }

  v50 = v79;
  v51 = v39 + v41;
  v52 = v65;
  (*(v79 + 32))(v65, v51, v37);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, 255, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
  LODWORD(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v52, v37);
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v53(v46, v37);
  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v44 = v75;
  v45 = v73;
  if ((v71 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v54 = v67;
  outlined init with copy of Date?(v44 + v45, v67, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  v55 = v68;
  v56 = v66;
  v57 = v66(v54, 1, v68);
  outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  if (v57 == 1)
  {
    goto LABEL_16;
  }

  v59 = v64;
  outlined init with copy of Date?(v77, v64, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  if (v56(v59, 1, v55) == 1)
  {
    v47 = &_s8PaperKit0A6MarkupVSgMd;
    v48 = &_s8PaperKit0A6MarkupVSgMR;
    v49 = v59;
    goto LABEL_13;
  }

  v60 = v63;
  _s8PaperKit0A6MarkupVWObTm_0(v59, v63, type metadata accessor for PaperMarkup);
  v61 = PaperMarkupViewController._markup.modify(v78);
  if (!v56(v62, 1, v55))
  {
    PaperMarkup.replaceWithMerge(_:)(v60);
  }

  (v61)(v78, 0);
  _s8PaperKit0A6MarkupVWOhTm_0(v60, type metadata accessor for PaperMarkup);
}

void (*PaperMarkupViewController.markup.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR) - 8) + 64);
  if (v4)
  {
    v6[5] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v6[5] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[6] = v8;
  swift_getKeyPath();
  v6[3] = v2;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v10, v9, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  return PaperMarkupViewController.markup.modify;
}

void PaperMarkupViewController.markup.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    outlined init with copy of Date?(*(*a1 + 48), v3, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    PaperMarkupViewController.markup.setter(v3);
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  }

  else
  {
    PaperMarkupViewController.markup.setter(*(*a1 + 48));
  }

  free(v4);
  free(v3);

  free(v2);
}

void key path setter for PaperMarkupViewController.rulerHostView : PaperMarkupViewController(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  PaperMarkupViewController.rulerHostView.didset(Strong);
}

void PaperMarkupViewController.rulerHostView.didset(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (a1)
  {
    if (Strong)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = type metadata accessor for RulerHostingDelegate();
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectWeakInit();
    v11[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v16.receiver = v11;
    v16.super_class = v10;
    v12 = objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__rulerHostingDelegate);
  *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__rulerHostingDelegate) = v12;

  v14 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v14)
  {
    v15 = *(v14 + direct field offset for CanvasView.canvasTiledView);
    if (v15)
    {
      [v15 setRulerHostingDelegate_];
    }
  }
}

void PaperMarkupViewController.rulerHostView.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  PaperMarkupViewController.rulerHostView.didset(Strong);
}

void (*PaperMarkupViewController.rulerHostView.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_rulerHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PaperMarkupViewController.rulerHostView.modify;
}

void PaperMarkupViewController.rulerHostView.modify(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v7 = v4;
    PaperMarkupViewController.rulerHostView.didset(Strong);

    v4 = *v5;
  }

  else
  {
    PaperMarkupViewController.rulerHostView.didset(Strong);
  }

  free(v3);
}

id PaperMarkupViewController.init(markup:supportedFeatureSet:)(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for PKInkingTool.InkType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isSettingModelFromView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_hostProxy] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isHostedInExtension] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  v12 = type metadata accessor for PaperMarkup(0);
  v13 = *(*(v12 - 8) + 56);
  v14 = *a2;
  v33 = a2[1];
  v34 = v14;
  v13(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__rulerHostingDelegate] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasCancellable] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled] = 1;
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode] = 4;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable] = 1;
  (*(v6 + 104))(v8, *MEMORY[0x1E6978328], v5);
  v15 = [objc_opt_self() blackColor];
  v37 = type metadata accessor for PKInkingTool();
  v38 = MEMORY[0x1E6978370];
  __swift_allocate_boxed_opaque_existential_1(&v36);
  PKInkingTool.init(_:color:width:)();
  outlined init with take of PaperKitHashable(&v36, &v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool]);
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchMode] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchAutomaticallyDraws] = 1;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isRulerActive] = 0;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsVerticalScrollIndicator] = 1;
  v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsHorizontalScrollIndicator] = 1;
  v16 = &v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame];
  *v16 = 0u;
  v16[1] = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange] = _Q0;
  *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection] = 0;
  ObservationRegistrar.init()();
  swift_beginAccess();
  outlined assign with copy of PaperMarkup?(a1, &v2[v11]);
  swift_endAccess();
  v22 = &v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet];
  v23 = v33;
  *v22 = v34;
  *(v22 + 1) = v23;
  *(v22 + 4) = v9;
  *(v22 + 5) = v10;
  v24 = type metadata accessor for PaperMarkupViewController(0);
  v35.receiver = v2;
  v35.super_class = v24;
  v25 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  v26 = one-time initialization token for logger;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static PaperMarkupViewController.logger);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D38C4000, v29, v30, "Initialized", v31, 2u);
    MEMORY[0x1DA6D0660](v31, -1, -1);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  return v27;
}

void PaperMarkupViewController.undoIsEnabled.setter(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController._editingMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode);
  if (v3 == 4)
  {
    if (v2 != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  else if (v3 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode) = v2;
}

void PaperMarkupViewController.isEditable.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable) = v2;

    PaperMarkupViewController._isEditable.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t PaperMarkupViewController.drawingTool.setter(void *a1)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void PaperMarkupViewController.directTouchMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchMode;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController.directTouchAutomaticallyDraws.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchAutomaticallyDraws;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController.indirectPointerTouchMode.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    LOBYTE(v5) = v2;
    PaperMarkupViewController._indirectPointerTouchMode.setter(&v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController.isRulerActive.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isRulerActive;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v5 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5)
    {
      swift_getKeyPath();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v6 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*&v6[direct field offset for CanvasView.canvasTiledView] setRulerEnabled_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController.showsVerticalScrollIndicator.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = a1 & 1;
  v8 = *a2;
  swift_beginAccess();
  if (*(v5 + v8) == v7)
  {
    *(v5 + v8) = v7;
    v10 = *(v5 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v10)
    {
      v11 = *(v10 + direct field offset for CanvasView.canvasScrollView);
      if (v11)
      {
        swift_getKeyPath();
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
        v12 = v11;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v12 *a5];
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void PaperMarkupViewController.zoomRange.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
    PaperMarkupViewController._zoomRange.didset();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double PaperMarkupViewController._supportedFeatureSet.setter(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v4 = *a1;
  v3 = a1[1];
  v17 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 16);
  v12[0] = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v12[1] = v6;
  v14 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 40);
  v13 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 32);
  v11[0] = v4;
  v11[1] = v3;
  v11[2] = a1[2];
  if (specialized static FeatureSet.== infix(_:_:)(v12, v11))
  {
    v7 = v17;
    v8 = v16;
    *v5 = v15;
    v5[1] = v8;
    v5[2] = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[0] = v1;
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined destroy of FeatureSet(&v15);
  }

  return result;
}

id PaperMarkupViewController.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for PaperMarkup(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  if (one-time initialization token for allShapeTypes != -1)
  {
    swift_once();
  }

  *&v15 = static FeatureSet.allShapeTypes;
  v6 = one-time initialization token for allFeatures;

  if (v6 != -1)
  {
    swift_once();
  }

  *(&v15 + 1) = static FeatureSet.allFeatures;
  v16 = MEMORY[0x1E69E7CD0];
  v7 = one-time initialization token for allInks;

  if (v7 != -1)
  {
    swift_once();
  }

  v17 = static FeatureSet.allInks;
  v18 = 7;
  v19 = 0x3FF0000000000000;
  v8 = one-time initialization token for supportsSignaturesInternalFeature;

  if (v8 != -1)
  {
    swift_once();
  }

  if (static NSBundle.supportsSignaturesInternalFeature == 1)
  {
    specialized Set._Variant.insert(_:)(&v14, 1);
  }

  if (one-time initialization token for supportsCropInternalFeature != -1)
  {
    swift_once();
  }

  if (static NSBundle.supportsCropInternalFeature == 1)
  {
    specialized Set._Variant.insert(_:)(&v14, 0);
  }

  if (one-time initialization token for supportsColorMaximumLinearExposureInternalFeature != -1)
  {
    swift_once();
  }

  v9 = *&v19;
  if (static NSBundle.supportsColorMaximumLinearExposureInternalFeature)
  {
    v9 = 4.0;
  }

  v19 = *&v9;
  v10 = objc_allocWithZone(type metadata accessor for PaperMarkupViewController(0));
  v11 = PaperMarkupViewController.init(markup:supportedFeatureSet:)(v4, &v15);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id PaperMarkupViewController.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static PaperMarkupViewController.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "Deinitialized", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for PaperMarkupViewController(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void PaperMarkupViewController.canvasView.didset(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static PaperMarkupViewController.logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Canvas view added";
    goto LABEL_19;
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA0A0VGMd, &_s8PaperKit10CanvasViewCyAA0A0VGMR);
  v6 = v4;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return;
  }

  if (!*(v5 + v3))
  {
LABEL_10:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static PaperMarkupViewController.logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_20;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Canvas view removed";
    goto LABEL_19;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static PaperMarkupViewController.logger);
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v10))
  {
    goto LABEL_20;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "Canvas view replaced";
LABEL_19:
  _os_log_impl(&dword_1D38C4000, oslog, v10, v12, v11, 2u);
  MEMORY[0x1DA6D0660](v11, -1, -1);
LABEL_20:
}

void PaperMarkupViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v162 = &v157 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v172 = &v157 - v6;
  v7 = type metadata accessor for CRKeyPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v157 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v157 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v173 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v164 = v1;
  v165 = &v157 - v22;
  v163 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView;
  v174 = *&v1[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView];
  if (!v174 || (*(v18 + 48))(a1, 1, v17, v21) != 1)
  {
    outlined init with copy of Date?(a1, v16, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
      return;
    }

    v24 = v165;
    (*(v18 + 32))(v165, v16, v17);
    v161 = v18;
    if (!v174)
    {
LABEL_35:
      v92 = v164;
      if (*&v164[v163])
      {
        (*(v18 + 8))(v24, v17);
        return;
      }

      if (one-time initialization token for publicCRContext != -1)
      {
        swift_once();
      }

      v93 = publicCRContext;
      v94 = [v92 view];
      if (v94)
      {
        v95 = v94;
        [v94 bounds];
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;

        v104 = *(v18 + 16);
        v105 = v173;
        v174 = v17;
        v104(v173, v165, v17);
        v106 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA0A0VGMd, &_s8PaperKit10CanvasViewCyAA0A0VGMR));
        specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(v93, v105, 3, 1, 0, 0, v97, v99, v101, v103);
        v108 = v107;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v157 - 4) = v108;
        *(&v157 - 3) = v92;
        *(&v157 - 2) = &protocol witness table for PaperMarkupViewController;
        v179 = *&v108;
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        v110 = v108;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v111 = direct field offset for CanvasView.canvasTiledView;
        [*&v110[direct field offset for CanvasView.canvasTiledView] setSixChannelBlending_];
        [*&v110[v111] setSixChannelBlendingDisableSnapshotting_];
        v112 = v110;
        [v112 setAutoresizingMask_];
        [v112 setTranslatesAutoresizingMaskIntoConstraints_];
        v113 = COERCE_DOUBLE(v92);
        AnyCanvas.viewControllerForPresentingUI.setter(v92);
        swift_getKeyPath();
        v179 = v113;
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
        v114 = v112;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v115 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool;
        swift_beginAccess();
        outlined init with copy of FindResult(*&v113 + v115, &v179);
        specialized Canvas.tool.setter(&v179, specialized Canvas.tool.getter);
        swift_getKeyPath();
        v179 = v113;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v116 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isRulerActive;
        swift_beginAccess();
        [*&v110[v111] setRulerEnabled_];
        swift_getKeyPath();
        v178 = v113;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v117 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
        swift_beginAccess();
        if (*(*&v113 + v117))
        {
          v118 = 2;
        }

        else
        {
          v118 = 1;
        }

        v114[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = v118;
        v119 = direct field offset for CanvasView.canvasScrollView;
        v120 = *&v114[direct field offset for CanvasView.canvasScrollView];
        if (v120)
        {
          swift_getKeyPath();
          v175 = v113;
          v121 = v120;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v122 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange;
          swift_beginAccess();
          [v121 setMinimumZoomScale_];

          v123 = *&v114[v119];
          if (v123)
          {
            swift_getKeyPath();
            v175 = v113;
            v124 = v123;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v125 = (*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange);
            swift_beginAccess();
            [v124 setMaximumZoomScale_];

            v126 = *&v114[v119];
            if (v126)
            {
              swift_getKeyPath();
              v175 = v113;
              v127 = v126;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v128 = (*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange);
              swift_beginAccess();
              v129 = fmax(*v128, 1.0);
              swift_getKeyPath();
              v175 = v113;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v130 = v128[1];
              if (v130 >= v129)
              {
                v130 = v129;
              }

              [v127 setZoomScale_];

              v131 = *&v114[v119];
              if (v131)
              {
                swift_getKeyPath();
                v175 = v113;
                v132 = v131;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                v133 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsVerticalScrollIndicator;
                swift_beginAccess();
                [v132 setShowsVerticalScrollIndicator_];

                v134 = *&v114[v119];
                if (v134)
                {
                  swift_getKeyPath();
                  v175 = v113;
                  v135 = v134;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v136 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsHorizontalScrollIndicator;
                  swift_beginAccess();
                  [v135 setShowsHorizontalScrollIndicator_];
                }
              }
            }
          }
        }

        v137 = [*&v113 view];
        if (v137)
        {
          v138 = v137;
          v139 = [v137 backgroundColor];

          [v114 setBackgroundColor_];
          swift_getKeyPath();
          v176 = *&v113;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v140 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 8);
          v141 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 16);
          v142 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 24);
          v143 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 32);
          v144 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 40);
          v145 = &v114[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet];
          *v145 = *(*&v113 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
          *(v145 + 1) = v140;
          *(v145 + 2) = v141;
          *(v145 + 3) = v142;
          *(v145 + 4) = v143;
          *(v145 + 5) = v144;

          [*&v113 setView_];

          v146 = *&v164[v163];
          *&v164[v163] = v114;
          v147 = v114;
          PaperMarkupViewController.canvasView.didset(v146);

          PaperMarkupViewController.setContentViewOnCanvas()();
          PaperMarkupViewController.ensureHitTestingWorks()();
          v148 = type metadata accessor for TaskPriority();
          v149 = v162;
          (*(*(v148 - 8) + 56))(v162, 1, 1, v148);
          type metadata accessor for MainActor();
          v150 = v147;
          v151 = *&v113;
          v152 = static MainActor.shared.getter();
          v153 = swift_allocObject();
          v154 = MEMORY[0x1E69E85E0];
          v153[2] = v152;
          v153[3] = v154;
          v153[4] = v151;
          v153[5] = v150;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v149, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.updateViewForPaper(_:), v153);

          swift_unknownObjectWeakInit();

          v177 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD0D0V_GGMd, &_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD0D0V_GGMR);
          v155 = swift_allocObject();
          outlined init with take of Canvas<Paper>.PaperViewCanvasPublisher(&v176, v155 + 16);
          v176 = v155;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Paper>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR, MEMORY[0x1E695BED8]);
          v156 = Publisher<>.sink(receiveValue:)();

          (*(v161 + 8))(v165, v174);
          *&v151[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasCancellable] = v156;

          return;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v166 = direct field offset for Canvas.paperView;
    v25 = *&v174[direct field offset for Canvas.paperView];
    v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x3F0);
    swift_beginAccess();
    v27 = v25 + v26;
    v18 = v161;
    v28 = v173;
    v167 = *(v161 + 16);
    v168 = v161 + 16;
    v167(v173, v27, v17);
    v160 = v174;
    Capsule.rootID.getter();
    v169 = *(v18 + 8);
    v170 = v18 + 8;
    v169(v28, v17);
    Capsule.rootID.getter();
    v29 = CRKeyPath.rawValue.getter();
    v31 = v30;
    v32 = CRKeyPath.rawValue.getter();
    v159 = v10;
    v33 = v7;
    v35 = v34;
    LODWORD(v171) = specialized static Data.== infix(_:_:)(v29, v31, v32, v34);
    outlined consume of Data._Representation(v32, v35);
    outlined consume of Data._Representation(v29, v31);
    v36 = *(v8 + 8);
    v36(v159, v33);
    v36(v13, v33);
    if ((v171 & 1) == 0)
    {
      v43 = *&v164[v163];
      *&v164[v163] = 0;
      PaperMarkupViewController.canvasView.didset(v43);

      v24 = v165;
LABEL_34:

      goto LABEL_35;
    }

    v37 = v166;
    v38 = *&v174[v166];
    v39 = MEMORY[0x1E69E7D40];
    swift_beginAccess();
    v40 = type metadata accessor for Paper(0);
    v41 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    v42 = v38;
    Capsule.merge<A>(_:)();
    swift_endAccess();

    v159 = direct field offset for CanvasView.canvasScrollView;
    v43 = v160;
    v44 = *&v160[direct field offset for CanvasView.canvasScrollView];
    if (!v44)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    [v44 contentOffset];
    v46 = v45;
    v48 = v47;
    v49 = *&v174[v37];
    v50 = *((*v39 & *v49) + 0x3F0);
    swift_beginAccess();
    v51 = v49 + v50;
    v52 = v173;
    v53 = (v167)(v173, v51, v17);
    MEMORY[0x1EEE9AC00](v53);
    *(&v157 - 4) = v40;
    *(&v157 - 3) = v41;
    v158 = v41;
    *(&v157 - 2) = &protocol witness table for Paper;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v169(v52, v17);
    v54 = v179;
    v55 = v180;
    specialized Canvas.mergeToCanvasElements()();
    v56 = direct field offset for Canvas.subscriptions;
    swift_beginAccess();
    v57 = *&v43[v56];
    v157 = v40;
    if (v57 >> 62)
    {
      v58 = __CocoaSet.count.getter();
      v59 = v159;
      if (v58)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v159;
      if (v58)
      {
LABEL_13:
        if (v58 < 1)
        {
          __break(1u);
          goto LABEL_56;
        }

        v171 = v57 & 0xC000000000000001;

        for (i = 0; i != v58; ++i)
        {
          if (v171)
          {
            v70 = MEMORY[0x1DA6CE0C0](i, v57);
          }

          else
          {
            v70 = *(v57 + 8 * i + 32);
          }

          v71 = AnyCanvas.isLiveEditing()();
          v72 = *v70;
          if (!v71 || (*(v70 + *(v72 + 136)) & 1) != 0)
          {
            v61 = v172;
            outlined init with copy of Date?(v70 + *(v72 + 120), v172, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
            v62 = *&v174[v166];
            v63 = v57;
            v64 = v43;
            v65 = v17;
            v66 = *((*MEMORY[0x1E69E7D40] & *v62) + 0x3F0);
            swift_beginAccess();
            v67 = v62 + v66;
            v17 = v65;
            v68 = v173;
            v167(v173, v67, v17);
            dispatch thunk of AnySubscriberBase.receive(_:)();

            v69 = v68;
            v43 = v64;
            v57 = v63;
            v169(v69, v17);
            outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
          }

          else
          {
          }
        }

        v37 = v166;
        v39 = MEMORY[0x1E69E7D40];
        v59 = v159;
      }
    }

    if (*&v43[direct field offset for Canvas.multipeerConnection])
    {
      v73 = *&v174[v37];
      v74 = *((*v39 & *v73) + 0x3F0);
      swift_beginAccess();
      v75 = v73 + v74;
      v76 = v173;
      v167(v173, v75, v17);

      CRMulticastSyncManager.sync(_:sendDelta:)();

      v59 = v159;
      v169(v76, v17);
    }

    specialized Canvas.scheduleFinalizeTask()();
    v77 = direct field offset for Canvas.xpcMulticast;
    swift_beginAccess();
    v78 = v158;
    if (*&v43[v77])
    {
      v79 = *&v174[v37];
      v80 = *((*v39 & *v79) + 0x3F0);
      swift_beginAccess();
      v81 = v79 + v80;
      v82 = v173;
      v167(v173, v81, v17);

      CRMulticastSyncManager.sync(_:sendDelta:)();

      v59 = v159;
      v169(v82, v17);
    }

    v83 = *&v43[v59];
    if (!v83)
    {
      goto LABEL_59;
    }

    specialized CanvasView.updateAfterDidScroll(_:)(v83);
    v84 = *&v174[v37];
    v85 = *((*v39 & *v84) + 0x3F0);
    swift_beginAccess();
    v86 = v84 + v85;
    v87 = v173;
    v88 = (v167)(v173, v86, v17);
    MEMORY[0x1EEE9AC00](v88);
    *(&v157 - 4) = v157;
    *(&v157 - 3) = v78;
    *(&v157 - 2) = &protocol witness table for Paper;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v169(v87, v17);
    v89 = *&v43[v59];
    if (!v89)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    [v89 setContentOffset_];
    v90 = *&v43[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    v18 = v161;
    v24 = v165;
    if (!v90)
    {
LABEL_61:
      __break(1u);
      return;
    }

    v91 = *(v90 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
    if (v91)
    {
      *(v91 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
    }

    goto LABEL_34;
  }

  *&v164[v163] = 0;
  PaperMarkupViewController.canvasView.didset(v174);
  v23 = v174;
}

uint64_t closure #1 in PaperMarkupViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.updateViewForPaper(_:), v6, v5);
}

uint64_t closure #1 in PaperMarkupViewController.updateViewForPaper(_:)()
{
  v1 = v0[3];

  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v1;
  v0[2] = v1;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = v0[1];

  return v2();
}

double PaperMarkupViewController.canvas(_:contentFrameDidChange:)()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #2 in PaperMarkupViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isSettingModelFromView;
    *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isSettingModelFromView) = 1;
    v8 = Strong;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    (*(*(v9 - 8) + 16))(v5, a1, v9);
    v10 = type metadata accessor for PaperMarkup(0);
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    PaperMarkupViewController.markup.setter(v5);
    v8[v7] = 0;
  }
}

Swift::Void __swiftcall PaperMarkupViewController.ensureHitTestingWorks()()
{
  v1 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_isHostedInExtension;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 layer];

      GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
      [v4 setBorderColor_];

      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 layer];

        [v8 setBorderWidth_];
        v9 = [v0 view];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 layer];

          [v11 setHitTestsAsOpaque_];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Void __swiftcall PaperMarkupViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for PaperMarkupViewController(0);
  v21.receiver = v0;
  v21.super_class = v8;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v10 setBackgroundColor_];

    swift_getKeyPath();
    v20[1] = v1;
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v11, v4, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    v12 = type metadata accessor for PaperMarkup(0);
    if ((*(*(v12 - 8) + 48))(v4, 1, v12))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
      v15 = *(v14 - 8);
      (*(v15 + 16))(v7, v4, v14);
      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
      (*(v15 + 56))(v7, 0, 1, v14);
    }

    PaperMarkupViewController.updateViewForPaper(_:)(v7);
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    PaperMarkupViewController.ensureHitTestingWorks()();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static PaperMarkupViewController.logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D38C4000, v17, v18, "View loaded", v19, 2u);
      MEMORY[0x1DA6D0660](v19, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void PaperMarkupViewController._contentView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v6)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v7 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v1 + v3);
    v9 = *&v7[direct field offset for CanvasView.contentView];
    *&v7[direct field offset for CanvasView.contentView] = v8;
    v10 = v8;
    specialized CanvasView.contentView.didset(v9);

    v5 = v9;
  }
}

uint64_t (*PaperMarkupViewController._contentView.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._contentView.modify;
}

void PaperMarkupViewController._contentView.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5)
    {
      v6 = v3[4];
      swift_getKeyPath();
      *v3 = v4;
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v7 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v4 + v6);
      v9 = *&v7[direct field offset for CanvasView.contentView];
      *&v7[direct field offset for CanvasView.contentView] = v8;
      v10 = v8;
      specialized CanvasView.contentView.didset(v9);
    }
  }

  free(v3);
}

id key path getter for PaperMarkupViewController.contentView : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for PaperMarkupViewController.contentView : PaperMarkupViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PaperMarkupViewController.contentView.setter(v1);
}

void *PaperMarkupViewController.contentView.getter()
{
  swift_getKeyPath();
  v5 = v0;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void PaperMarkupViewController.contentView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!a1)
  {
LABEL_4:
    PaperMarkupViewController._contentView.setter(a1);
    return;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void closure #1 in PaperMarkupViewController.contentView.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  v7 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v7)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v8 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(a1 + v4);
    v10 = *&v8[direct field offset for CanvasView.contentView];
    *&v8[direct field offset for CanvasView.contentView] = v9;
    v11 = v9;
    specialized CanvasView.contentView.didset(v10);
  }
}

uint64_t (*PaperMarkupViewController.contentView.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._contentView.modify(v4);
  return PaperMarkupViewController.contentView.modify;
}

Swift::Void __swiftcall PaperMarkupViewController.setContentViewOnCanvas()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v2 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = *&v2[direct field offset for CanvasView.contentView];
    *&v2[direct field offset for CanvasView.contentView] = v4;
    v6 = v4;
    specialized CanvasView.contentView.didset(v5);
  }
}

void PaperMarkupViewController._editingMode.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode);
}

void key path getter for PaperMarkupViewController._editingMode : PaperMarkupViewController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode);
}

void PaperMarkupViewController._isEditable.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable) != v3)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v1 + v4);
    v6 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView;
    v7 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5 == 1)
    {
      if (!v7)
      {
LABEL_25:
        if (*(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode) != 4)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        return;
      }

      swift_getKeyPath();
      v8 = v7;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode) == 4)
      {
        v9 = 3;
      }

      else
      {
        v9 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode);
      }

      v10 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
      swift_beginAccess();
      v11 = v8[v10];
      v8[v10] = v9;
      specialized Canvas.editingMode.didset(v11);
      v12 = *&v8[direct field offset for CanvasView.canvasTiledView];
      if (v12)
      {
        v13 = v8[v10];
        if (v13 >= 2)
        {
          if (v13 != 2)
          {
            v13 = 0;
          }

          v14 = 1;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v25 = [*&v8[direct field offset for CanvasView.canvasTiledView] canvasView];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 drawingGestureRecognizer];

          [v27 setEnabled_];
        }

        [v12 setDrawingPolicy_];

        goto LABEL_25;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (v7)
    {
      v15 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
      swift_beginAccess();
      v16 = v7[v15];
    }

    else
    {
      v16 = 3;
    }

    if (v16 != *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___editingMode))
    {
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v18 = *(v2 + v6);
    if (v18)
    {
      v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
      swift_beginAccess();
      v20 = v18[v19];
      v18[v19] = 0;
      v21 = v18;
      specialized Canvas.editingMode.didset(v20);
      v22 = *&v21[direct field offset for CanvasView.canvasTiledView];
      if (!v22)
      {
        goto LABEL_35;
      }

      v23 = v18[v19];
      if (v23 >= 2)
      {
        if (v23 != 2)
        {
          v23 = 0;
        }

        v24 = 1;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      v29 = [*&v21[direct field offset for CanvasView.canvasTiledView] canvasView];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 drawingGestureRecognizer];

        [v31 setEnabled_];
      }

      [v22 setDrawingPolicy_];
    }
  }
}

void (*PaperMarkupViewController._isEditable.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return PaperMarkupViewController._isEditable.modify;
}

void PaperMarkupViewController._isEditable.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  PaperMarkupViewController._isEditable.didset(v4);
}

void key path getter for PaperMarkupViewController.undoIsEnabled : PaperMarkupViewController(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t PaperMarkupViewController.undoIsEnabled.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void closure #1 in PaperMarkupViewController.isEditable.setter(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
  *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable) = a2;
  PaperMarkupViewController._isEditable.didset(v3);
}

uint64_t (*PaperMarkupViewController.isEditable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._isEditable.modify(v4);
  return PaperMarkupViewController.isEditable.modify;
}

uint64_t (*PaperMarkupViewController._drawingTool.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._drawingTool.modify;
}

void PaperMarkupViewController._drawingTool.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5)
    {
      v6 = v3[7];
      swift_getKeyPath();
      v3[5] = v4;
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v7 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      outlined init with copy of FindResult(v4 + v6, v3);
      specialized Canvas.tool.setter(v3, specialized Canvas.tool.getter);
    }
  }

  free(v3);
}

uint64_t key path getter for PaperMarkupViewController.drawingTool : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool;
  swift_beginAccess();
  return outlined init with copy of FindResult(v3 + v4, a2);
}

uint64_t key path setter for PaperMarkupViewController.drawingTool : PaperMarkupViewController(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of FindResult(a1, v3);
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t PaperMarkupViewController.drawingTool.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool;
  swift_beginAccess();
  return outlined init with copy of FindResult(v5 + v3, a1);
}

uint64_t closure #1 in PaperMarkupViewController.drawingTool.setter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of FindResult(a2, v9);
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__drawingTool;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v3), v9, v4);
  swift_endAccess();
  v5 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v5)
  {
    swift_getKeyPath();
    v8[0] = a1;
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v6 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of FindResult(a1 + v3, v8);
    specialized Canvas.tool.setter(v8, specialized Canvas.tool.getter);
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t (*PaperMarkupViewController.drawingTool.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._drawingTool.modify(v4);
  return PaperMarkupViewController.drawingTool.modify;
}

uint64_t (*PaperMarkupViewController.directTouchMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._directTouchMode.modify(v4);
  return PaperMarkupViewController.directTouchMode.modify;
}

uint64_t key path getter for PaperMarkupViewController.directTouchMode : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t (*PaperMarkupViewController.directTouchAutomaticallyDraws.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._directTouchAutomaticallyDraws.modify(v4);
  return PaperMarkupViewController.directTouchAutomaticallyDraws.modify;
}

void PaperMarkupViewController._indirectPointerTouchMode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v4)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v5 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v3))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v5[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = v6;
  }
}

uint64_t (*PaperMarkupViewController._indirectPointerTouchMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._indirectPointerTouchMode.modify;
}

void PaperMarkupViewController._indirectPointerTouchMode.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5)
    {
      v6 = v3[4];
      swift_getKeyPath();
      *v3 = v4;
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v7 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v4 + v6))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v7[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = v8;
    }
  }

  free(v3);
}

uint64_t PaperMarkupViewController.directTouchMode.getter@<X0>(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v3 + v6);
  return result;
}

void closure #1 in PaperMarkupViewController.indirectPointerTouchMode.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
  swift_beginAccess();
  *(a1 + v4) = a2 & 1;
  v5 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v5)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v6 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + v4))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v6[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = v7;
  }
}

uint64_t (*PaperMarkupViewController.indirectPointerTouchMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._indirectPointerTouchMode.modify(v4);
  return PaperMarkupViewController.indirectPointerTouchMode.modify;
}

__C::CGRect __swiftcall PaperMarkupViewController.suggestedFrameForInserting(contentInFrame:)(__C::CGRect contentInFrame)
{
  height = contentInFrame.size.height;
  width = contentInFrame.size.width;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v4)
  {
    v5 = v4;
    specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(width, height);
    v7 = v6;
    v9 = v8;

    contentInFrame.origin.x = v7 - width * 0.5;
    contentInFrame.origin.y = v9 - height * 0.5;
  }

  v10 = width;
  v11 = height;
  contentInFrame.size.height = v11;
  contentInFrame.size.width = v10;
  return contentInFrame;
}

uint64_t key path setter for PaperMarkupViewController.selectedMarkup : PaperMarkupViewController(uint64_t a1)
{
  v2 = type metadata accessor for PaperMarkup(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v4, type metadata accessor for PaperMarkup);
  return PaperMarkupViewController.selectedMarkup.setter(v4);
}

void PaperMarkupViewController.selectedMarkup.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v42 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v42 - v12;
  v13 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for PaperMarkup(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (!v24)
  {
    goto LABEL_4;
  }

  v43 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v44 = v6;
  v45 = a1;
  swift_getKeyPath();
  *&v56 = v2;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  v49 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__markup;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v25, v20, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
LABEL_4:
    type metadata accessor for CGRect(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v56 = 0u;
    v57 = 0u;
    CRRegister.init(wrappedValue:)();
    v56 = 0u;
    v57 = 0u;
    CRRegister.init(wrappedValue:)();
    *&v56 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(wrappedValue:)();
    LODWORD(v56) = 1;
    type metadata accessor for CGImagePropertyOrientation(0);
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
    CRRegister.init(wrappedValue:)();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
    v27 = v50;
    (*(*(v26 - 8) + 56))(v50, 1, 1, v26);
    outlined init with copy of Date?(v27, v51, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    v28 = type metadata accessor for Color(0);
    v29 = v53;
    (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
    outlined init with copy of Date?(v29, v54, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    CRRegister.init(wrappedValue:)();
    *&v56 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
    CROrderedSet.init()();
    UnknownProperties.init()();
    v56 = 0u;
    v57 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.setter();
    v56 = 0u;
    v57 = 0u;
    CRRegister.wrappedValue.setter();
    static CRKeyPath.unique.getter();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    Capsule.init(_:id:)();
    return;
  }

  v30 = v43;
  _s8PaperKit0A6MarkupVWObTm_0(v20, v43, type metadata accessor for PaperMarkup);
  v31 = *&v49[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v31)
  {
    v32 = v31 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = v48;
    v38 = v46;
    v39 = v42;
    v40 = (*(v48 + 16))(v46, v30, v42);
    MEMORY[0x1EEE9AC00](v40);
    *(&v42 - 4) = v33;
    *(&v42 - 3) = v34;
    *(&v42 - 2) = v35;
    *(&v42 - 8) = v36;

    Capsule.callAsFunction<A>(_:)();

    v41 = v47;
    Capsule.copy()();

    (*(v37 + 8))(v38, v39);
    _s8PaperKit0A6MarkupVWOhTm_0(v30, type metadata accessor for PaperMarkup);
    (*(v37 + 32))(v45, v41, v39);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PaperMarkupViewController.selectedMarkup.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v8)
  {
    (*(v4 + 16))(v7, a1, v5);
    v9 = v8;
    v10 = _s8PaperKit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7ElementRzlufCAA0A0V_Tt0g5(v7);
    AnyCanvas.selection.setter(v10, v12, v13, v11 & 1);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static PaperMarkupViewController.logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D38C4000, v15, v16, "Selected markup changed", v17, 2u);
    MEMORY[0x1DA6D0660](v17, -1, -1);
  }

  return _s8PaperKit0A6MarkupVWOhTm_0(a1, type metadata accessor for PaperMarkup);
}

void (*PaperMarkupViewController.selectedMarkup.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for PaperMarkup(0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  PaperMarkupViewController.selectedMarkup.getter(v4);
  return PaperMarkupViewController.selectedMarkup.modify;
}

void PaperMarkupViewController.selectedMarkup.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    _s8PaperKit0A6MarkupVWOcTm_0(*(a1 + 16), v2, type metadata accessor for PaperMarkup);
    PaperMarkupViewController.selectedMarkup.setter(v2);
    _s8PaperKit0A6MarkupVWOhTm_0(v3, type metadata accessor for PaperMarkup);
  }

  else
  {
    PaperMarkupViewController.selectedMarkup.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t (*PaperMarkupViewController._isRulerActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isRulerActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._isRulerActive.modify;
}

void PaperMarkupViewController._isRulerActive.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v5)
    {
      v6 = v3[4];
      swift_getKeyPath();
      *v3 = v4;
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v7 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*&v7[direct field offset for CanvasView.canvasTiledView] setRulerEnabled_];
    }
  }

  free(v3);
}

uint64_t PaperMarkupViewController.directTouchAutomaticallyDraws.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void closure #1 in PaperMarkupViewController.isRulerActive.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isRulerActive;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v5)
  {
    swift_getKeyPath();
    _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    v6 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&v6[direct field offset for CanvasView.canvasTiledView] setRulerEnabled_];
  }
}

uint64_t (*PaperMarkupViewController.isRulerActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._isRulerActive.modify(v4);
  return PaperMarkupViewController.isRulerActive.modify;
}

uint64_t (*PaperMarkupViewController._showsVerticalScrollIndicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsVerticalScrollIndicator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._showsVerticalScrollIndicator.modify;
}

uint64_t (*PaperMarkupViewController.showsVerticalScrollIndicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._showsVerticalScrollIndicator.modify(v4);
  return PaperMarkupViewController.showsVerticalScrollIndicator.modify;
}

uint64_t (*PaperMarkupViewController._showsHorizontalScrollIndicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__showsHorizontalScrollIndicator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperMarkupViewController._showsHorizontalScrollIndicator.modify;
}

void PaperMarkupViewController._showsVerticalScrollIndicator.modify(void *a1, char a2, uint64_t a3, SEL *a4)
{
  v6 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = v6[3];
    v8 = *(v7 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    if (v8)
    {
      v9 = *(v8 + direct field offset for CanvasView.canvasScrollView);
      if (v9)
      {
        v10 = v6[4];
        swift_getKeyPath();
        *v6 = v7;
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
        v11 = v9;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v11 *a4];
      }
    }
  }

  free(v6);
}

void closure #1 in PaperMarkupViewController.showsVerticalScrollIndicator.setter(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v8 = *a3;
  swift_beginAccess();
  *(a1 + v8) = a2;
  v9 = *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v9)
  {
    v10 = *(v9 + direct field offset for CanvasView.canvasScrollView);
    if (v10)
    {
      swift_getKeyPath();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      v11 = v10;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v11 *a5];
    }
  }
}

uint64_t (*PaperMarkupViewController.showsHorizontalScrollIndicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._showsHorizontalScrollIndicator.modify(v4);
  return PaperMarkupViewController.showsHorizontalScrollIndicator.modify;
}

id PaperMarkupViewController.update_contentVisibleFrame()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView];
  if (v2)
  {
    v3 = *(v2 + direct field offset for Canvas.paperView);
    result = [v1 view];
    if (result)
    {
      v5 = result;
      result = [v1 view];
      if (result)
      {
        v6 = result;
        [result bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v5 convertRect:v3 toCoordinateSpace:{v8, v10, v12, v14}];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = result;
  [result frame];
  v16 = v23;
  v18 = v24;
  v20 = v25;
  v22 = v26;
LABEL_7:

  v27 = &v1[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame];
  *v27 = v16;
  v27[1] = v18;
  v27[2] = v20;
  v27[3] = v22;
  v28 = *&v1[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_hostProxy];
  if (!v28)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  result = [v1 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v29 = result;
  [result bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v28 xpcHost:v16 setContentVisibleFrame:v18 bounds:{v20, v22, v31, v33, v35, v37}];
  swift_unknownObjectRelease();
LABEL_10:
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = &v1[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    (*(v39 + 32))(v1, ObjectType, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 key path getter for PaperMarkupViewController.contentVisibleFrame : PaperMarkupViewController@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame);
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame + 16);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for PaperMarkupViewController.contentVisibleFrame : PaperMarkupViewController(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double PaperMarkupViewController.contentVisibleFrame.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame);
}

void PaperMarkupViewController.contentVisibleFrame.setter(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*PaperMarkupViewController.contentVisibleFrame.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  *(v4 + 48) = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *(v4 + 32) = v1;
  *(v4 + 56) = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame + 16);
  *v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentVisibleFrame);
  *(v4 + 16) = v5;
  return PaperMarkupViewController.contentVisibleFrame.modify;
}

void PaperMarkupViewController.contentVisibleFrame.modify(__int128 **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v1[4] = v1[5];
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

Swift::Void __swiftcall PaperMarkupViewController.setContentVisibleFrame(_:animated:)(__C::CGRect _, Swift::Bool animated)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

char *closure #1 in PaperMarkupViewController.setContentVisibleFrame(_:animated:)(char *result, char a2)
{
  v2 = *&result[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView];
  if (v2)
  {
    return [*(v2 + direct field offset for CanvasView.canvasScrollView) zoomToRect:a2 & 1 animated:?];
  }

  return result;
}

void PaperMarkupViewController._zoomRange.didset()
{
  v1 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v2)
  {
    v3 = v0;
    v4 = *(v2 + direct field offset for CanvasView.canvasScrollView);
    if (!v4 || (swift_getKeyPath(), _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController), v5 = v4, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange, swift_beginAccess(), [v5 setMinimumZoomScale_], v5, (v2 = *(v3 + v1)) != 0))
    {
      v7 = *(v2 + direct field offset for CanvasView.canvasScrollView);
      if (v7)
      {
        swift_getKeyPath();
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
        v8 = v7;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v9 = v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange;
        swift_beginAccess();
        [v8 setMaximumZoomScale_];
      }
    }
  }
}

void (*PaperMarkupViewController._zoomRange.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PaperMarkupViewController._zoomRange.modify;
}

void PaperMarkupViewController._zoomRange.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PaperMarkupViewController._zoomRange.didset();
  }
}

__n128 key path getter for PaperMarkupViewController.zoomRange : PaperMarkupViewController@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double PaperMarkupViewController.zoomRange.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange;
  swift_beginAccess();
  return *v1;
}

void closure #1 in PaperMarkupViewController.zoomRange.setter(uint64_t a1, double a2, double a3)
{
  v5 = (a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
  PaperMarkupViewController._zoomRange.didset();
}

uint64_t (*PaperMarkupViewController.zoomRange.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___observationRegistrar;
  *v4 = v1;
  v4[6] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PaperMarkupViewController._zoomRange.modify(v4);
  return PaperMarkupViewController.zoomRange.modify;
}

void PaperMarkupViewController.delegate.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t key path getter for PaperMarkupViewController._supportedFeatureSet : PaperMarkupViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet;
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 8);
  v7 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 16);
  v8 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
}

double key path setter for PaperMarkupViewController._supportedFeatureSet : PaperMarkupViewController(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v3;
  v9 = v2;
  v10 = v4;
  v11 = v5;

  return PaperMarkupViewController._supportedFeatureSet.setter(&v7);
}

double closure #1 in PaperMarkupViewController._supportedFeatureSet.setter(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v3 = a2[2];
  v2[1] = a2[1];
  v2[2] = v3;
  *v2 = *a2;
  outlined init with copy of FeatureSet(a2, &v5);

  return result;
}

uint64_t PaperMarkupViewController._supportedFeatureSet.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet);
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController___supportedFeatureSet + 16);
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

double PaperMarkupViewController.multicastConnection.getter()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for PaperMarkupViewController.multicastConnection : PaperMarkupViewController@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection);

  return result;
}

double key path setter for PaperMarkupViewController.multicastConnection : PaperMarkupViewController(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #1 in PaperMarkupViewController.multicastConnection.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection) = a2;
}

uint64_t closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.MulticastLink.send(_:), 0, 0);
}

uint64_t closure #1 in PaperMarkupViewController.MulticastLink.send(_:)()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = closure #1 in PaperMarkupViewController.MulticastLink.send(_:);
  v2 = v0[4];
  v3 = v0[2];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDF52A8](v3, 1, &async function pointer to partial apply for closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:), v2, v4);
}

void closure #1 in PaperMarkupViewController.MulticastLink.send(_:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:)()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
  v5 = v4;
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 32), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v7 xpcHost:isa receiveFileBookmark:?];
    outlined consume of Data._Representation(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined consume of Data._Representation(v3, v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t PaperMarkupViewController.MulticastLink.__deallocating_deinit()
{
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + 16);

  return swift_deallocClassInstance();
}

void *protocol witness for CRMulticastLink.send(_:) in conformance PaperMarkupViewController.MulticastLink()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 xpcHost:isa receiveMulticastData:?];

    return swift_unknownObjectRelease();
  }

  return result;
}

double protocol witness for CRMulticastLink.send(_:) in conformance PaperMarkupViewController.MulticastLink(uint64_t a1)
{
  v3 = type metadata accessor for CRAsset();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v4 + 16))(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v4 + 32))(v12 + v11, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.MulticastLink.send(_:), v12);

  return result;
}

uint64_t PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22CRMulticastSyncManagerCy8PaperKit0E0VGMd, &_s9Coherence22CRMulticastSyncManagerCy8PaperKit0E0VGMR);
  if (one-time initialization token for publicCRContext != -1)
  {
    swift_once();
  }

  v12 = publicCRContext;
  outlined init with copy of Date?(a1, v11, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  (*(v6 + 104))(v8, *MEMORY[0x1E6995388], v5);
  v13 = v12;
  v14 = CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)();
  v15 = type metadata accessor for PaperMarkupViewController.MulticastLink();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v24[3] = v15;
  v24[4] = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController.MulticastLink and conformance PaperMarkupViewController.MulticastLink, v17, type metadata accessor for PaperMarkupViewController.MulticastLink, &protocol conformance descriptor for PaperMarkupViewController.MulticastLink);
  v24[0] = v16;
  CRMulticastSyncManager.setLink(_:)();
  __swift_destroy_boxed_opaque_existential_0(v24);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v14;
  v21[5] = v19;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:), v21);

  return v14;
}

uint64_t closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy9Coherence7CapsuleVy8PaperKit0C0VGGMd, &_sScSy9Coherence7CapsuleVy8PaperKit0C0VGGMR);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit0D0VG_GMd, &_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit0D0VG_GMR);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v10;
  v5[24] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:), v10, v9);
}

uint64_t closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:)()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  CRMulticastSyncManager.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[25] = v4;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:);
  v6 = v0[18];
  v7 = v0[14];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:), v3, v2);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[13], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = PaperMarkupViewController.markup.modify(v0 + 2);
      v10 = v9;
      v11 = type metadata accessor for PaperMarkup(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        type metadata accessor for Paper(0);
        _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
        Capsule.merge<A>(_:)();
      }

      v8((v0 + 2), 0);
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
    v12 = static MainActor.shared.getter();
    v0[25] = v12;
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:);
    v14 = v0[18];
    v15 = v0[14];
    v16 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v15, v12, v16, v14);
  }
}

Swift::Void __swiftcall PaperMarkupViewController.toolPickerSelectedToolItemDidChange(_:)(PKToolPicker a1)
{
  v3 = type metadata accessor for PKInk();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v7)
  {
    v8 = v7;
    v9 = [(objc_class *)a1.super.isa selectedToolItem];
    PKToolPickerItem.ink.getter(v6);

    PKInk.tool.getter(v11);
    (*(v4 + 8))(v6, v3);
    specialized Canvas.tool.setter(v11, specialized Canvas.tool.getter);
  }
}

Swift::Void __swiftcall PaperMarkupViewController.toolPickerIsRulerActiveDidChange(_:)(PKToolPicker a1)
{
  v1 = [(objc_class *)a1.super.isa isRulerActive];

  PaperMarkupViewController.isRulerActive.setter(v1);
}

id PaperMarkupViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void PaperMarkupViewController.markupEditViewControllerInsertNewTextbox(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    v2 = v1;
    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(10);
  }
}

void PaperMarkupViewController.markupEditViewController(_:insertNewLineWithStartMarker:endMarker:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    v2 = v1;
    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(8);
  }
}

void PaperMarkupViewController.markupEditViewController(_:insertNewContents:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v3)
  {
    v5 = v3;
    specialized Canvas.markupEditViewController(_:insertNewContents:)(a2);
  }
}

void protocol witness for MarkupEditViewController.Delegate.markupEditViewControllerInsertNewTextbox(_:) in conformance PaperMarkupViewController()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    v2 = v1;
    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(10);
  }
}

void protocol witness for MarkupEditViewController.Delegate.markupEditViewController(_:insertNewLineWithStartMarker:endMarker:) in conformance PaperMarkupViewController()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    v2 = v1;
    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(8);
  }
}

void protocol witness for MarkupEditViewController.Delegate.markupEditViewController(_:insertNewContents:) in conformance PaperMarkupViewController(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v3)
  {
    v5 = v3;
    specialized Canvas.markupEditViewController(_:insertNewContents:)(a2);
  }
}

void PaperMarkupViewController.canvasSelectionDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRCodableVersion();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_hostProxy);
  if (v8)
  {
    v9 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = (v9 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    LOBYTE(v10) = *(v10 + 24);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v10;
    v14 = one-time initialization token for publicCRContext;
    swift_unknownObjectRetain();

    if (v14 != -1)
    {
      swift_once();
    }

    (*(v5 + 104))(v7, *MEMORY[0x1E6995288], v4);
    lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers();
    v15 = CRValue.serializedData(_:version:)();
    v17 = v16;
    (*(v5 + 8))(v7, v4);

    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v15, v17);
    [v8 xpcHost:isa receiveSelection:?];

    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v23 = v2;
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 16))(v2, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

uint64_t PaperMarkupViewController.canvasShouldBeginDrawing(_:)()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
}

double protocol witness for CanvasDelegate.canvas(_:contentFrameDidChange:) in conformance PaperMarkupViewController()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t protocol witness for CanvasDelegate.canvasShouldBeginDrawing(_:) in conformance PaperMarkupViewController()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
}

uint64_t specialized closure #1 in Capsule<>.createSubCanvasElement(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v60 = a5;
  v61 = a4;
  v57 = a3;
  v76 = a2;
  v53 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for Paper(0);
  v72 = v20;
  v21 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v73 = v21;
  v74 = &protocol witness table for Paper;
  KeyPath = swift_getKeyPath();
  v69 = v20;
  v70 = v21;
  v71 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v22 = a1;

  v23 = v57;
  v65 = v76;
  v66 = v57;
  v67 = v61;
  v68 = v60 & 1;
  v24 = v58;
  CROrderedSet.filter(_:)();
  v58 = v24;
  v25 = v18;
  v26 = v56;
  (*(v16 + 8))(v25, v15);
  Capsule.Ref.subscript.setter();
  v27 = *(v23 + 16);
  v62 = v20;
  v63 = v21;
  v64 = &protocol witness table for Paper;
  swift_getKeyPath();
  v28 = (v26 + 48);
  if (v27)
  {
    v29 = v54;
    Capsule.Ref.subscript.getter();

    v30 = v59;
    if ((*v28)(v29, 1, v59) == 1)
    {
      v31 = v29;
      return outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    v36 = v47;
    (*(v26 + 32))(v47, v29, v30);
    v37 = v46;
    Ref.subscript.getter();
    v38 = v76;

    v39 = specialized PKDrawingStruct.filteredStrokes<A>(in:isIncluded:)(v22, v37, v38, v23, v61, v60 & 1);

    _s8PaperKit0A6MarkupVWOhTm_0(v37, type metadata accessor for PKDrawingStruct);
    v75 = v39;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B0]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Ref<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_sSay9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E69E6328]);
    v40 = v50;
    CROrderedSet.init<A>(_:)();
    v41 = Ref.subscript.modify();
    (*(v51 + 40))(v42 + *(v53 + 20), v40, v52);
    v41(&v75, 0);
    return (*(v26 + 8))(v36, v30);
  }

  else
  {
    v32 = v48;
    v33 = v49;
    Capsule.Ref.subscript.getter();

    v34 = v59;
    if ((*v28)(v33, 1, v59))
    {
      v31 = v33;
      return outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    (*(v26 + 16))(v32, v33, v34);
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B0]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
    v43 = v50;
    CROrderedSet.init()();
    v44 = Ref.subscript.modify();
    (*(v51 + 40))(v45 + *(v53 + 20), v43, v52);
    v44(&v75, 0);
    return (*(v26 + 8))(v32, v34);
  }
}

BOOL specialized closure #1 in Capsule<>.suggestedPositionForNewCanvasElement(into:at:withSize:isLTR:extendCanvasHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  type metadata accessor for Paper(0);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  SharedTagged_10.subscript.getter();
  v6 = v24;
  v5 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26.origin.x = (*(*(v5 + 8) + 8))(v6);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidY = CGRectGetMidY(v27);
  __swift_destroy_boxed_opaque_existential_0(v23);
  SharedTagged_10.subscript.getter();
  v14 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v28.origin.x = (*(*(v13 + 8) + 8))(v14);
  v15 = v28.origin.x;
  v16 = v28.origin.y;
  v17 = v28.size.width;
  v18 = v28.size.height;
  v19 = CGRectGetMidX(v28);
  v29.origin.x = v15;
  v29.origin.y = v16;
  v29.size.width = v17;
  v29.size.height = v18;
  v20 = CGRectGetMidY(v29);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v21 = MidX < v19;
  if ((a4 & 1) == 0)
  {
    v21 = v19 < MidX;
  }

  if (MidY == v20)
  {
    return v21;
  }

  else
  {
    return MidY < v20;
  }
}

double specialized NewCanvasElementDelegate.shapeFrameWithSize(_:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  v8 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(ObjectType, v9);
    v12 = swift_unknownObjectRelease();
    v13 = 0.0;
    v14 = 0;
    if (v11)
    {
      v8 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x990))(v12, a2, a3);
      v13 = v15;
      v14 = v16;
    }
  }

  else
  {
    v13 = 0.0;
    v14 = 0;
  }

  result = v13 - a3 * 0.5;
  *a1 = v8 - a2 * 0.5;
  *(a1 + 8) = result;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = v14;
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addLine(_:size:)(uint64_t a1, double a2, double height)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  v20 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, &v45 - v24, type metadata accessor for Shape);
  v26 = v4 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 8);
    v28 = swift_getObjectType();
    v29 = (*(v27 + 16))(v28, v27);
    swift_unknownObjectRelease();
    width = a2;
    if (v29)
    {
      v31 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&height, *&a2));
      height = v31.height;

      width = v31.width;
    }
  }

  else
  {
    width = a2;
  }

  v32 = width / a2;
  v50 = v4;
  specialized NewCanvasElementDelegate.shapeFrameWithSize(_:)(&v51, width, height);
  v33 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(*&v51, v33) > 0.01)
  {
    *&v51 = v33;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  *&v51 = fmax(round(v32 * *&v51), 1.0);
  CRRegister.wrappedValue.setter();
  v34 = type metadata accessor for Color(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for UnknownValueProperties();
  (*(*(v36 - 8) + 56))(v19 + v35, 1, 1, v36);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v38 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v39 = result;

      *v19 = v39;
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      outlined init with copy of Date?(v19, v16, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v25, v22, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      v40 = v47;
      Capsule.init(_:id:)();
      v41 = v46;
      v42 = v48;
      (*(v10 + 16))(v46, v40, v48);
      v43 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v44 = swift_allocObject();
      (*(v10 + 32))(v44 + v43, v41, v42);
      *(v44 + ((v11 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(closure #1 in CanvasElementController.addCanvasElement<A>(_:)specialized partial apply, v44);

      (*(v10 + 8))(v40, v42);
      return _s8PaperKit0A6MarkupVWOhTm_0(v25, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addLine(_:size:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38[1] = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v38 - v17);
  v19 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v38 - v23, type metadata accessor for Shape);
  v25 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a3, *&a2));
  v26 = v25.width / a2;
  specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(v25.width, v25.height);
  v28 = v27;
  v41 = v29 - v25.width * 0.5;
  v42 = v30 - v25.height * 0.5;
  v43 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v41, v28) > 0.01)
  {
    v41 = v28;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  v41 = fmax(round(v26 * v41), 1.0);
  CRRegister.wrappedValue.setter();
  v31 = type metadata accessor for Color(0);
  v32 = *(v31 + 20);
  v33 = type metadata accessor for UnknownValueProperties();
  (*(*(v33 - 8) + 56))(v18 + v32, 1, 1, v33);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v36 = result;

  *v18 = v36;
  (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
  outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit0A6MarkupVWOcTm_0(v24, v21, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  Capsule.init(_:id:)();
  v37 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  if (*(v4 + v37))
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v12, 1, 0);
  }

  (*(v39 + 8))(v12, v40);
  return _s8PaperKit0A6MarkupVWOhTm_0(v24, type metadata accessor for Shape);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38[1] = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v38 - v17);
  v19 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v38 - v23, type metadata accessor for Shape);
  v25 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a3, *&a2));
  v26 = v25.width / a2;
  specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(v25.width, v25.height);
  v28 = v27;
  v41[0] = v29 - v25.width * 0.5;
  v41[1] = v30 - v25.height * 0.5;
  v42 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v41[0], v28) > 0.01)
  {
    v41[0] = v28;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  v41[0] = fmax(round(v26 * v41[0]), 1.0);
  CRRegister.wrappedValue.setter();
  v31 = type metadata accessor for Color(0);
  v32 = *(v31 + 20);
  v33 = type metadata accessor for UnknownValueProperties();
  (*(*(v33 - 8) + 56))(v18 + v32, 1, 1, v33);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v36 = result;

  *v18 = v36;
  (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
  outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit0A6MarkupVWOcTm_0(v24, v21, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v37 = Capsule.init(_:id:)();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x3C8))(v41, v37);
  if (LOBYTE(v41[0]))
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v12, 1, 0);
  }

  (*(v39 + 8))(v12, v40);
  return _s8PaperKit0A6MarkupVWOhTm_0(v24, type metadata accessor for Shape);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38[1] = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v38 - v17);
  v19 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v38 - v23, type metadata accessor for Shape);
  v25 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a3, *&a2));
  v26 = v25.width / a2;
  v27 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x990))();
  v29 = v28;
  v41 = v27 - v25.width * 0.5;
  v42 = v30 - v25.height * 0.5;
  v43 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v41, v29) > 0.01)
  {
    v41 = v29;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  v41 = fmax(round(v26 * v41), 1.0);
  CRRegister.wrappedValue.setter();
  v31 = type metadata accessor for Color(0);
  v32 = *(v31 + 20);
  v33 = type metadata accessor for UnknownValueProperties();
  (*(*(v33 - 8) + 56))(v18 + v32, 1, 1, v33);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v35 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v36 = result;

      *v18 = v36;
      (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
      outlined init with copy of Date?(v18, v15, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v24, v21, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      v37 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      Capsule.init(_:id:)();
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA38))(v12, v19, v37, &protocol witness table for Shape);
      (*(v39 + 8))(v12, v40);
      return _s8PaperKit0A6MarkupVWOhTm_0(v24, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addLine(_:size:)(uint64_t a1, double a2, CGFloat a3)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v9;
  v10 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v48 - v12;
  v13 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v48 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v48 - v22);
  v24 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, &v48 - v28, type metadata accessor for Shape);
  v63 = v3;
  v30 = InlineDrawingCanvasElementController.suggestedPositionForNewCanvasElement(withSize:)(a2, a3);
  v32 = v31;
  *&v65 = v30 - a2 * 0.5;
  *(&v65 + 1) = v33 - a3 * 0.5;
  *&v66 = a2;
  *(&v66 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(*&v65, v32) > 0.01)
  {
    *&v65 = v32;
    CRRegister.value.setter();
  }

  CRRegister.wrappedValue.getter();
  *&v65 = fmax(round(a2 / a2 * *&v65), 1.0);
  CRRegister.wrappedValue.setter();
  v34 = type metadata accessor for Color(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for UnknownValueProperties();
  (*(*(v36 - 8) + 56))(v23 + v35, 1, 1, v36);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v38 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v39 = result;

      *v23 = v39;
      v40 = *(v34 - 8);
      v50 = *(v40 + 56);
      v51 = v40 + 56;
      v50(v23, 0, 1, v34);
      v49 = v34;
      v41 = v20;
      outlined init with copy of Date?(v23, v20, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v29, v26, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      Capsule.init(_:id:)();
      type metadata accessor for CGRect(0);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      v65 = 0u;
      v66 = 0u;
      CRRegister.init(wrappedValue:)();
      v65 = 0u;
      v66 = 0u;
      CRRegister.init(wrappedValue:)();
      *&v65 = 0;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(wrappedValue:)();
      LODWORD(v65) = 1;
      type metadata accessor for CGImagePropertyOrientation(0);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
      CRRegister.init(wrappedValue:)();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
      v43 = v52;
      (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
      outlined init with copy of Date?(v43, v55, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v50(v41, 1, 1, v49);
      outlined init with copy of Date?(v41, v53, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      CRRegister.init(wrappedValue:)();
      *&v65 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
      CROrderedSet.init()();
      UnknownProperties.init()();
      CRKeyPath.init(_:)();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      v44 = v60;
      v45 = Capsule.init(_:id:)();
      MEMORY[0x1EEE9AC00](v45);
      v46 = v64;
      *(&v48 - 2) = v64;
      v47 = v62;
      Capsule.mutate<A>(_:)();
      InlineDrawingCanvasElementController.upgradePaper(_:)(v44);
      (*(v61 + 8))(v44, v47);
      _s8PaperKit0A6MarkupVWOhTm_0(v29, type metadata accessor for Shape);
      return (*(v58 + 8))(v46, v59);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addShape(_:size:)(uint64_t a1, double width, double height)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v44 - v13;
  v53 = type metadata accessor for Color(0);
  v45 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, &v44 - v25, type metadata accessor for Shape);
  v27 = v4 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    v29 = swift_getObjectType();
    v30 = (*(v28 + 16))(v29, v28);
    swift_unknownObjectRelease();
    if (v30)
    {
      v31 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&height, *&width));
      width = v31.width;
      height = v31.height;
    }
  }

  specialized NewCanvasElementDelegate.shapeFrameWithSize(_:)(&v54, width, height);
  v32 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(*&v54, v32) > 0.01)
  {
    *&v54 = v32;
    CRRegister.value.setter();
  }

  v33 = *(v53 + 20);
  v34 = type metadata accessor for UnknownValueProperties();
  (*(*(v34 - 8) + 56))(v15 + v33, 1, 1, v34);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51500);
  if (result)
  {
    v36 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v37 = result;

      *v15 = v37;
      _s8PaperKit0A6MarkupVWObTm_0(v15, v21, type metadata accessor for Color);
      (*(v45 + 56))(v21, 0, 1, v53);
      outlined init with copy of Date?(v21, v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v26, v46, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      v38 = v50;
      Capsule.init(_:id:)();
      v39 = v49;
      v40 = v51;
      (*(v10 + 16))(v49, v38, v51);
      v41 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v42 = (v47 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      (*(v10 + 32))(v43 + v41, v39, v40);
      *(v43 + v42) = ObjectType;
      CanvasElementController.visibleCanvasInsertIfNeeded(completion:)(closure #1 in CanvasElementController.addCanvasElement<A>(_:)specialized partial apply, v43);

      (*(v10 + 8))(v38, v40);
      return _s8PaperKit0A6MarkupVWOhTm_0(v26, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addShape(_:size:)(uint64_t a1, const CGFloat *a2, double a3, double a4)
{
  v46 = a2;
  v5 = v4;
  v9 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v40 - v12;
  v47 = type metadata accessor for Color(0);
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, &v40 - v25, type metadata accessor for Shape);
  v27 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a4, *&a3));
  specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(v27.width, v27.height);
  v29 = v28;
  v48 = v30 - v27.width * 0.5;
  v49 = v31 - v27.height * 0.5;
  v50 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v48, v29) > 0.01)
  {
    v48 = v29;
    CRRegister.value.setter();
  }

  v32 = v47;
  v33 = *(v47 + 20);
  v34 = type metadata accessor for UnknownValueProperties();
  (*(*(v34 - 8) + 56))(v15 + v33, 1, 1, v34);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, v46);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v37 = result;

  *v15 = v37;
  _s8PaperKit0A6MarkupVWObTm_0(v15, v21, type metadata accessor for Color);
  (*(v13 + 56))(v21, 0, 1, v32);
  outlined init with copy of Date?(v21, v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit0A6MarkupVWOcTm_0(v26, v41, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v38 = v43;
  Capsule.init(_:id:)();
  v39 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  if (*(v5 + v39))
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v38, 1, 0);
  }

  (*(v44 + 8))(v38, v45);
  return _s8PaperKit0A6MarkupVWOhTm_0(v26, type metadata accessor for Shape);
}

CGColorRef specialized NewCanvasElementDelegate.addShape(_:size:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39[1] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = v39 - v11;
  v43 = type metadata accessor for Color(0);
  v12 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  v21 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v21);
  v39[0] = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v39 - v24;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v39 - v24, type metadata accessor for Shape);
  v26 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a3, *&a2));
  specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(v26.width, v26.height);
  v28 = v27;
  v44[0] = v29 - v26.width * 0.5;
  v44[1] = v30 - v26.height * 0.5;
  v45 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v44[0], v28) > 0.01)
  {
    v44[0] = v28;
    CRRegister.value.setter();
  }

  v31 = v43;
  v32 = *(v43 + 20);
  v33 = type metadata accessor for UnknownValueProperties();
  (*(*(v33 - 8) + 56))(v14 + v32, 1, 1, v33);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51540);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v36 = result;

  *v14 = v36;
  _s8PaperKit0A6MarkupVWObTm_0(v14, v20, type metadata accessor for Color);
  (*(v12 + 56))(v20, 0, 1, v31);
  outlined init with copy of Date?(v20, v17, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit0A6MarkupVWOcTm_0(v25, v39[0], type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v37 = v40;
  v38 = Capsule.init(_:id:)();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x3C8))(v44, v38);
  if (LOBYTE(v44[0]))
  {
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
    specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v37, 1, 0);
  }

  (*(v41 + 8))(v37, v42);
  return _s8PaperKit0A6MarkupVWOhTm_0(v25, type metadata accessor for Shape);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39[1] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = v39 - v11;
  v43 = type metadata accessor for Color(0);
  v12 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  v21 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v21);
  v39[0] = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v39 - v24;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v39 - v24, type metadata accessor for Shape);
  v26 = AnyCanvas.adjustedSizeForNewCanvasElement(withSize:)(__PAIR128__(*&a3, *&a2));
  v27 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x990))();
  v29 = v28;
  v44 = v27 - v26.width * 0.5;
  v45 = v30 - v26.height * 0.5;
  v46 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(v44, v29) > 0.01)
  {
    v44 = v29;
    CRRegister.value.setter();
  }

  v31 = v43;
  v32 = *(v43 + 20);
  v33 = type metadata accessor for UnknownValueProperties();
  (*(*(v33 - 8) + 56))(v14 + v32, 1, 1, v33);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51580);
  if (result)
  {
    v35 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v36 = result;

      *v14 = v36;
      _s8PaperKit0A6MarkupVWObTm_0(v14, v20, type metadata accessor for Color);
      (*(v12 + 56))(v20, 0, 1, v31);
      outlined init with copy of Date?(v20, v17, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v25, v39[0], type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      v37 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      v38 = v40;
      Capsule.init(_:id:)();
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA38))(v38, v21, v37, &protocol witness table for Shape);
      (*(v41 + 8))(v38, v42);
      return _s8PaperKit0A6MarkupVWOhTm_0(v25, type metadata accessor for Shape);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorRef specialized NewCanvasElementDelegate.addShape(_:size:)(uint64_t a1, double a2, CGFloat a3)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v46 - v9;
  v10 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v46 - v12;
  v13 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v55 = *(v15 - 8);
  v56 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v46 - v16;
  v62 = type metadata accessor for Color(0);
  v50 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v26);
  v47 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v46 - v29;
  _s8PaperKit0A6MarkupVWOcTm_0(a1, &v46 - v29, type metadata accessor for Shape);
  v60 = v3;
  v31 = InlineDrawingCanvasElementController.suggestedPositionForNewCanvasElement(withSize:)(a2, a3);
  v33 = v32;
  *&v63 = v31 - a2 * 0.5;
  *(&v63 + 1) = v34 - a3 * 0.5;
  *&v64 = a2;
  *(&v64 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.value.getter();
  if (vabdd_f64(*&v63, v33) > 0.01)
  {
    *&v63 = v33;
    CRRegister.value.setter();
  }

  v35 = *(v62 + 20);
  v36 = type metadata accessor for UnknownValueProperties();
  (*(*(v36 - 8) + 56))(v18 + v35, 1, 1, v36);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F515C0);
  if (result)
  {
    v38 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v39 = result;

      *v18 = v39;
      _s8PaperKit0A6MarkupVWObTm_0(v18, v25, type metadata accessor for Color);
      v50 = *(v50 + 56);
      (v50)(v25, 0, 1, v62);
      outlined init with copy of Date?(v25, v22, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      v46 = v30;
      CRRegister.wrappedValue.setter();
      outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      _s8PaperKit0A6MarkupVWOcTm_0(v30, v47, type metadata accessor for Shape);
      static CRKeyPath.unique.getter();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
      Capsule.init(_:id:)();
      type metadata accessor for CGRect(0);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
      v63 = 0u;
      v64 = 0u;
      CRRegister.init(wrappedValue:)();
      v63 = 0u;
      v64 = 0u;
      CRRegister.init(wrappedValue:)();
      *&v63 = 0;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(wrappedValue:)();
      LODWORD(v63) = 1;
      type metadata accessor for CGImagePropertyOrientation(0);
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation, &protocol conformance descriptor for CGImagePropertyOrientation);
      CRRegister.init(wrappedValue:)();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
      v41 = v51;
      (*(*(v40 - 8) + 56))(v51, 1, 1, v40);
      outlined init with copy of Date?(v41, v52, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      (v50)(v22, 1, 1, v62);
      outlined init with copy of Date?(v22, v48, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      CRRegister.init(wrappedValue:)();
      *&v63 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995258]);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E6995260]);
      CROrderedSet.init()();
      UnknownProperties.init()();
      CRKeyPath.init(_:)();
      _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      v42 = v57;
      v43 = Capsule.init(_:id:)();
      MEMORY[0x1EEE9AC00](v43);
      v44 = v61;
      *(&v46 - 2) = v61;
      v45 = v59;
      Capsule.mutate<A>(_:)();
      InlineDrawingCanvasElementController.upgradePaper(_:)(v42);
      (*(v58 + 8))(v42, v45);
      _s8PaperKit0A6MarkupVWOhTm_0(v46, type metadata accessor for Shape);
      return (*(v55 + 8))(v44, v56);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(uint64_t a1, double *a2)
{
  v3 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2 / 1.2;
  v7 = a2[1] / 1.2;
  Capsule.Ref.root.getter();
  _s8PaperKit0A6MarkupVWOhTm_0(v5, type metadata accessor for Shape);
  v8 = type metadata accessor for Paper(0);
  v13[6] = v8;
  v13[7] = v3;
  v9 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v13[8] = v9;
  v13[9] = &protocol witness table for Paper;
  v10 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v13[10] = v10;
  v13[11] = &protocol witness table for Shape;
  swift_getKeyPath();
  v11 = a2[3] - v7 * 0.5;
  v14 = a2[2] - v6 * 0.5;
  v15 = v11;
  v16 = v6;
  v17 = v7;
  Capsule.Ref.subscript.setter();
  v13[0] = v8;
  v13[1] = v3;
  v13[2] = v9;
  v13[3] = &protocol witness table for Paper;
  v13[4] = v10;
  v13[5] = &protocol witness table for Shape;
  swift_getKeyPath();
  v14 = a2[4];
  return Capsule.Ref.subscript.setter();
}

uint64_t specialized closure #1 in Canvas.markupEditViewController(_:insertNewContents:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v83 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v76 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v10 = *(v9 - 8);
  v81 = v9;
  v82 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = v76 - v11;
  v12 = type metadata accessor for Paper(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v76[0] = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v17 = (v76 - v16);
  Capsule.Ref.root.getter();
  v18 = v81;
  v19 = &v15[*(v13 + 56)];
  v20 = v80;
  v82[2](v80, v19, v81);
  _s8PaperKit0A6MarkupVWOhTm_0(v15, type metadata accessor for Paper);
  CROrderedSet.makeIterator()();
  (v82[1])(v20, v18);
  v82 = v17;
  CROrderedSet.Iterator.next()();
  v21 = v83;
  v80 = *(v83 + 48);
  v81 = v83 + 48;
  if ((v80)(v8, 1, v3) != 1)
  {
    v79 = *(v21 + 32);
    v83 = v21 + 32;
    v78 = (v21 + 8);
    v77 = v8;
    v79(v5, v8, v3);
    while (1)
    {
      SharedTagged_10.subscript.getter();
      v60 = v85;
      v61 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      (*(*(v61 + 8) + 8))(v60);
      v63 = v62;
      v65 = v64;
      __swift_destroy_boxed_opaque_existential_0(v84);
      v66 = [a2 window];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 screen];

        [v68 scale];
        v70 = v69;
      }

      else
      {
        v70 = 1.0;
      }

      v71 = &a2[OBJC_IVAR____TtC8PaperKit9AnyCanvas_screenScaleOverride];
      swift_beginAccess();
      if ((v71[8] & 1) != 0 || (v23 = *v71, (v24 = [a2 window]) == 0))
      {
        [a2 bounds];
        v73 = v72;
        [a2 bounds];
        if (v74 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v74;
        }

        v29 = 1.0;
        if (v75 > 1024.0)
        {
          v29 = v75 * 0.0009765625;
        }
      }

      else
      {
        v25 = v24;
        v26 = [v24 screen];

        [v26 scale];
        v28 = v27;

        v29 = v28 / v23;
      }

      v30 = v29 * 10.0;
      v31 = floor(v30);
      v32 = v30 - v31;
      v33 = ceil(v30);
      if (v32 < 0.49)
      {
        v33 = v31;
      }

      v34 = fmax(v33 / 10.0, 0.1);
      v35 = v70 * (v63 * v34);
      v36 = v70 * (v65 * v34);
      v37 = floor(v35);
      v38 = v35 - v37;
      v39 = ceil(v35);
      if (v38 < 0.49)
      {
        v39 = v37;
      }

      v40 = floor(v36);
      v41 = v36 - v40;
      v42 = ceil(v36);
      if (v41 < 0.49)
      {
        v42 = v40;
      }

      v43 = v39 / v70;
      v44 = v42 / v70;
      specialized Canvas.suggestedPositionForNewCanvasElement(withSize:)(v63, v65);
      v46 = v45;
      v48 = v47 - v43 * 0.5;
      v50 = v49 - v44 * 0.5;
      v51 = SharedTagged_10.subscript.modify();
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      (*(v54 + 16))(v53, v54, v48, v50, v43, v44);
      v51(v84, 0);
      v55 = SharedTagged_10.subscript.modify();
      v57 = *(v56 + 24);
      v58 = *(v56 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      (*(v58 + 40))(v57, v58, v46);
      v55(v84, 0);
      (*v78)(v5, v3);
      v59 = v77;
      CROrderedSet.Iterator.next()();
      if ((v80)(v59, 1, v3) == 1)
      {
        break;
      }

      v79(v5, v59, v3);
    }
  }

  return (*(v76[0] + 8))(v82, v87);
}

uint64_t specialized closure #1 in InlineDrawingCanvasElementController.addCanvasElement<A>(_:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v38 = type metadata accessor for CRKeyPath();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v32 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ShapeVGMd, &_s9Coherence3RefVy8PaperKit5ShapeVGMR);
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  (*(v15 + 16))(v17, a2, v14, v19);
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);

  v37 = v21;
  v22 = v35;
  Ref.init<A>(_:_:)();
  Capsule.root.getter();
  v23 = v10;
  v24 = v34;
  Capsule.rootID.getter();
  off_1F4F68468(v4, v22);
  (*(v36 + 8))(v4, v38);
  _s8PaperKit0A6MarkupVWOhTm_0(v6, type metadata accessor for Shape);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    (*(v39 + 8))(v37, v40);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  }

  else
  {
    v26 = v33;
    (*(v24 + 32))(v33, v9, v23);
    swift_getKeyPath();
    WeakTagged_10.tag.getter();
    v43 = v41;
    v44 = v42;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<Shape> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit5ShapeVGMd, &_s9Coherence3RefVy8PaperKit5ShapeVGMR, MEMORY[0x1E69953B8]);
    v27 = v40;
    v28 = v37;
    Reference.identity.getter();
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v29 = v32;
    SharedTagged_10.init(_:id:)();
    v30 = Capsule.Ref.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
    CROrderedSet.append(_:)();
    v31 = *(v24 + 8);
    v31(v29, v23);
    v30(&v41, 0);

    v31(v26, v23);
    return (*(v39 + 8))(v28, v27);
  }
}

uint64_t outlined assign with copy of PaperMarkup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void _s8PaperKit0A20MarkupViewControllerC10isEditableSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
  *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable) = *(v0 + 24);
  PaperMarkupViewController._isEditable.didset(v2);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.directTouchMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchMode;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.directTouchAutomaticallyDraws.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__directTouchAutomaticallyDraws;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void _s8PaperKit0A20MarkupViewControllerC9zoomRangeSNy12CoreGraphics7CGFloatVGvsyyXEfU_TA_0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  PaperMarkupViewController._zoomRange.didset();
}

uint64_t specialized Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v145 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v138 = &v136 - v8;
  v140 = type metadata accessor for UUID();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for CRKeyPath();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v137 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v136 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v136 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v136 - v17;
  v144 = objc_opt_self();
  [v144 begin];
  v19 = *(v16 + 16);
  v153 = v18;
  v20 = v18;
  v21 = a3;
  v19(v20, a1, v15);
  if (!a3)
  {
    goto LABEL_8;
  }

  v22 = a3;
  v23 = [v22 itemProvider];
  v24 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v25 = [v23 hasItemConformingToTypeIdentifier_];

  if (v25)
  {
    v26 = direct field offset for Canvas.stickerDropPreviewInfoMap;
    swift_beginAccess();
    v27 = *&v4[v26];
    if (*(v27 + 16))
    {

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
      if (v29)
      {
        v30 = *(v27 + 56) + 40 * v28;
        v31 = *(v30 + 32);
        v32 = *(v30 + 16);
        v161[0] = *v30;
        v161[1] = v32;
        v162 = v31;

        MEMORY[0x1EEE9AC00](v33);
        *(&v136 - 2) = v161;
        Capsule.callAsFunction<A>(_:)();

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v141 = v21;
  v151 = v15;
  v34 = *&v4[direct field offset for Canvas._editingView];
  v143 = v4;
  v148 = &v4[direct field offset for Canvas._editingView];
  if (v34)
  {
    v35 = *&v4[direct field offset for Canvas._editingView + 8];
    v36 = v34;
  }

  else
  {
    v36 = *&v4[direct field offset for Canvas.paperView];
    v35 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7CapsuleVy8PaperKit5ShapeVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7CapsuleVy8PaperKit5ShapeVGGMR);
  v146 = v16;
  v37 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D4058CF0;
  v39 = v151;
  v19((v38 + v37), v153, v151);
  v40 = v35[11];
  v41 = type metadata accessor for Shape(0);
  v42 = _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, 255, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v43 = v34;
  v40(v38, v41, v42, &protocol witness table for Shape, ObjectType, v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v44 = v148;
  v45 = *v148;
  if (*v148)
  {
    v46 = *(v148 + 1);
    v47 = *v148;
  }

  else
  {
    v47 = *&v143[direct field offset for Canvas.paperView];
    v46 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v48 = v150;
  v49 = swift_getObjectType();
  v50 = v45;
  v51 = v149;
  Capsule.rootID.getter();
  v52 = (v46[5])(v49, v46);

  if (!*(v52 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v54 & 1) == 0))
  {

    v55 = *(v48 + 8);
    v55(v51, v152);
LABEL_21:
    v66 = 0;
    v67 = 0;
    goto LABEL_22;
  }

  v55 = *(v48 + 8);
  v56 = *(*(v52 + 56) + 8 * v53);
  v55(v51, v152);

  if (!v141)
  {

    goto LABEL_21;
  }

  ObjectType = v55;
  v39 = &selRef_PDFView;
  v149 = v141;
  v57 = [v149 itemProvider];
  v58 = " for empty text box.";
  v59 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v60 = [v57 hasItemConformingToTypeIdentifier_];

  v61 = v143;
  if (v60)
  {
    v62 = v137;
    Capsule.rootID.getter();
    v63 = v138;
    CRKeyPath.uuid.getter();
    ObjectType(v62, v152);
    v64 = v139;
    v65 = v140;
    if ((*(v139 + 48))(v63, 1, v140) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v84 = v56;
      v85 = v136;
      (*(v64 + 32))(v136, v63, v65);
      [v84 setIsAccessibilityElement_];
      aBlock = 0x2D72656B63697453;
      v156 = 0xE800000000000000;
      v86 = v84;
      v87 = UUID.uuidString.getter();
      MEMORY[0x1DA6CD010](v87);

      v88 = MEMORY[0x1DA6CCED0](aBlock, v156);

      [v86 setAccessibilityIdentifier_];

      v89 = v85;
      v56 = v84;
      (*(v64 + 8))(v89, v140);
      v39 = &selRef_PDFView;
    }
  }

  v90 = &selRef_setIsEditing_;
  v91 = [v61 window];
  if (v91)
  {
    goto LABEL_37;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v92 = type metadata accessor for Logger();
    __swift_project_value_buffer(v92, logger);
    v91 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1D38C4000, v91, v93, "Attachment view was removed from its window while loading a dropped item", v94, 2u);
      MEMORY[0x1DA6D0660](v94, -1, -1);
    }

LABEL_37:

    v95 = [v61 v90[138]];
    if (v95)
    {

      v96 = [v149 v39[327]];
      v97 = MEMORY[0x1DA6CCED0](0xD000000000000011, v58 | 0x8000000000000000);
      v98 = [v96 hasItemConformingToTypeIdentifier_];

      if ((v98 & 1) == 0)
      {
        v99 = *v44;
        if (*v44)
        {
          v100 = *v44;
        }

        else
        {
          v100 = *&v61[direct field offset for Canvas.paperView];
          v99 = 0;
        }

        v101 = (*((*MEMORY[0x1E69E7D40] & *v100) + 0x288))(v99);

        v102 = fmod(v101, 6.28318531);
        if (v102 > 3.14159265)
        {
          v102 = v102 + -6.28318531;
        }

        if (v102 < -3.14159265)
        {
          v102 = v102 + 6.28318531;
        }

        if (fabs(v102) < 0.01)
        {
          v103 = direct field offset for Canvas.delayedPreviewProviders;
          swift_beginAccess();
          v104 = *&v61[v103];
          if (*(v104 + 16))
          {

            v105 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
            if (v106)
            {
              v107 = *(*(v104 + 56) + 16 * v105);

              v108 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
              v109 = v56;
              [v109 bounds];
              [v61 convertRect:v109 fromCoordinateSpace:?];
              v111 = v110;
              v113 = v112;
              v115 = v114;
              v117 = v116;
              [v61 bounds];
              v166.origin.x = v118;
              v166.origin.y = v119;
              v166.size.width = v120;
              v166.size.height = v121;
              v163.origin.x = v111;
              v163.origin.y = v113;
              v163.size.width = v115;
              v163.size.height = v117;
              v164 = CGRectIntersection(v163, v166);
              [v61 convertRect:v109 toCoordinateSpace:{v164.origin.x, v164.origin.y, v164.size.width, v164.size.height}];
              x = v165.origin.x;
              y = v165.origin.y;
              width = v165.size.width;
              height = v165.size.height;
              if (CGRectIsNull(v165))
              {
                x = 0.0;
                y = 0.0;
                width = 0.0;
                height = 0.0;
              }

              v126 = [objc_opt_self() bezierPathWithRect_];
              [v108 setVisiblePath_];

              v127 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v109 parameters:v108];
              aBlock = v127;
              v107(&aBlock);
            }

            else
            {
            }
          }
        }
      }
    }

    if (v61[direct field offset for Canvas.dropInteractionSessionIsActive] != 1)
    {
      break;
    }

    v128 = objc_opt_self();
    v67 = swift_allocObject();
    *(v67 + 16) = v56;
    v129 = swift_allocObject();
    *(v129 + 16) = partial apply for closure #2 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:);
    *(v129 + 24) = v67;
    v159 = partial apply for thunk for @callee_guaranteed () -> ();
    v160 = v129;
    aBlock = MEMORY[0x1E69E9820];
    v156 = 1107296256;
    v157 = thunk for @escaping @callee_guaranteed () -> ();
    v158 = &block_descriptor_8;
    v90 = _Block_copy(&aBlock);
    v58 = v160;
    v56 = v56;

    [v128 performWithoutAnimation_];
    _Block_release(v90);
    LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

    v39 = v151;
    if ((v128 & 1) == 0)
    {
      v130 = swift_allocObject();
      *(v130 + 16) = v56;
      v131 = direct field offset for Canvas.dropCompletions;
      swift_beginAccess();
      v132 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = *&v61[v131];
      *&v61[v131] = 0x8000000000000000;
      v134 = v130;
      v135 = v149;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #3 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:), v134, v149, isUniquelyReferenced_nonNull_native);

      *&v61[v131] = v154;
      swift_endAccess();

      v66 = partial apply for closure #2 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:);
      goto LABEL_57;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v66 = 0;
  v67 = 0;
  v39 = v151;
LABEL_57:
  v55 = ObjectType;
LABEL_22:
  [v144 commit];
  if (v145)
  {
    v68 = *v44;
    if (*v44)
    {
      v69 = *(v44 + 1);
      v70 = *v44;
    }

    else
    {
      v70 = *&v143[direct field offset for Canvas.paperView];
      v69 = &protocol witness table for ContainerCanvasElementView<A>;
    }

    v71 = swift_getObjectType();
    v72 = v68;
    v73 = v142;
    Capsule.rootID.getter();
    v74 = (v69[5])(v71, v69);

    if (*(v74 + 16) && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(v73), (v76 & 1) != 0))
    {
      v77 = *(*(v74 + 56) + 8 * v75);
      v55(v73, v152);

      v78 = v77;
      v79 = specialized CanvasMembers.init(_:)(v78);
      AnyCanvas.selection.setter(v79, v81, v82, v80 & 1);
    }

    else
    {

      v55(v73, v152);
    }
  }

  (*(v146 + 8))(v153, v39);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v66, v67);
}

uint64_t specialized Canvas.markupEditViewController(_:insertNewContents:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-v6];
  v8 = type metadata accessor for PaperMarkup(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s8PaperKit0A6MarkupVWOcTm_0(a1, v10, type metadata accessor for PaperMarkup);
  v24 = v2;
  Capsule.callAsFunction<A>(_:)();
  v11 = *(v2 + direct field offset for Canvas.paperView);
  v12 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v21 = 0;
  v22 = 0;
  v20 = v10;
  v23 = 1;
  v13 = v11;
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  v25[0] = 3;
  (*((*v12 & *v2) + 0x7B0))(v25);
  (*(v5 + 16))(v7, v10, v4);
  v14 = _s8PaperKit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7ElementRzlufCAA0A0V_Tt0g5(v7);
  AnyCanvas.selection.setter(v14, v16, v17, v15 & 1);
  return _s8PaperKit0A6MarkupVWOhTm_0(v10, type metadata accessor for PaperMarkup);
}

void specialized PaperMarkupViewController.markupEditViewController(_:insertNewShape:)(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v2)
  {
    v3 = 0x907060504030100uLL >> (8 * *a1);
    v4 = v2;
    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(v3);
  }
}

id specialized PaperMarkupViewController.canvasDidBeginDrawing(_:)()
{
  swift_getKeyPath();
  _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, 255, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_hostProxy);
  if (result)
  {
    return [result xpcHost_didBeginDrawing];
  }

  return result;
}

void type metadata completion function for PaperMarkupViewController(uint64_t a1)
{
  type metadata accessor for PaperMarkup?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for PaperMarkup?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PaperMarkup?)
  {
    type metadata accessor for PaperMarkup(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PaperMarkup?);
    }
  }
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CRAsset() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #1 in PaperMarkupViewController.MulticastLink.send(_:)(a1, a2, v2);
}

uint64_t _s8PaperKit0A6MarkupVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A6MarkupVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(a1, v4, v5, v7, v6);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_188Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void partial apply for specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:)(a1, v4);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  specialized closure #1 in CanvasElementController.addCanvasElement<A>(_:)(a1, v4);
}

uint64_t _s8PaperKit0A6MarkupVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id partial apply for closure #1 in PaperMarkupViewController.setContentVisibleFrame(_:animated:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
  if (v1)
  {
    return [*(v1 + direct field offset for CanvasView.canvasScrollView) zoomToRect:*(v0 + 56) animated:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

void _s8PaperKit0A20MarkupViewControllerC19multicastConnection9Coherence22CRMulticastSyncManagerCyAA0A0VGSgvsyyXEfU_TA_0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in AnyCanvas.delegate.setter()
{
  return closure #1 in AnyCanvas.delegate.setter(v0[2], v0[3], v0[4]);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperMarkupViewController.updateViewForPaper(_:)(a1, v4, v5, v6);
}

uint64_t outlined init with take of Canvas<Paper>.PaperViewCanvasPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA0A0V_GMd, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA0A0V_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PaperMarkup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit0A20MarkupViewControllerCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void CalculateGraph.init(canvasElement:expressions:animate:delayAddingExpressions:)(uint64_t a1, unint64_t a2, int a3, int a4)
{
  LODWORD(v72) = a4;
  v67 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11CalculateUI0A5GraphC4PoseVSgMd, &_s11CalculateUI0A5GraphC4PoseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v63 - v7;
  v8 = type metadata accessor for CalculateGraph.GraphType();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  *&v74 = &v63 - v12;
  v13 = type metadata accessor for CalculateExpression.GraphableType();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate0A10ExpressionC13GraphableTypeOSg_AFtMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v16);
  *&v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  if (a2 >> 62)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v8;
  v71 = a1;
  v69 = v9;
  v73 = *&a2;
  if (!v27)
  {
    v28 = *(v14 + 56);
    v28(v26, 1, 1, v13);
    goto LABEL_9;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    CalculateGraphExpression.expression.getter();

    CalculateExpression.graphableType.getter();

    v28 = *(v14 + 56);
    v28(v26, 0, 1, v13);
LABEL_9:
    (*(v14 + 104))(v23, *MEMORY[0x1E69920D8], v13);
    v28(v23, 0, 1, v13);
    v29 = *(v16 + 48);
    outlined init with copy of Date?(v26, *&v18, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    outlined init with copy of Date?(v23, *&v18 + v29, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    v30 = *(v14 + 48);
    if (v30(*&v18, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
      v31 = v30(*&v18 + v29, 1, v13);
      v32 = v70;
      v13 = v71;
      v33 = v69;
      if (v31 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(*&v18, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
        v34 = 1;
        v35 = MEMORY[0x1E69922E8];
        v36 = v73;
        v26 = *&v74;
        v37 = LOBYTE(v72);
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v38 = v65;
    outlined init with copy of Date?(*&v18, v65, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    if (v30(*&v18 + v29, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
      v39 = *(v14 + 8);
      v14 += 8;
      v39(v38, v13);
      v32 = v70;
      v13 = v71;
      v33 = v69;
LABEL_14:
      outlined destroy of StocksKitCurrencyCache.Provider?(*&v18, &_s9Calculate0A10ExpressionC13GraphableTypeOSg_AFtMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSg_AFtMR);
      v36 = v73;
      v26 = *&v74;
      v37 = LOBYTE(v72);
LABEL_15:
      v34 = 0;
      v35 = MEMORY[0x1E69922E0];
      goto LABEL_16;
    }

    v54 = (*&v18 + v29);
    v55 = v64;
    (*(v14 + 32))(v64, v54, v13);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CalculateExpression.GraphableType and conformance CalculateExpression.GraphableType, MEMORY[0x1E69920E8], MEMORY[0x1E69920F0]);
    v56 = v38;
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = *(v14 + 8);
    v14 += 8;
    v58(v55, v13);
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    v58(v56, v13);
    outlined destroy of StocksKitCurrencyCache.Provider?(*&v18, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMd, &_s9Calculate0A10ExpressionC13GraphableTypeOSgMR);
    v32 = v70;
    v13 = v71;
    v33 = v69;
    v36 = v73;
    v26 = *&v74;
    v37 = LOBYTE(v72);
    if ((v57 & 1) == 0)
    {
      goto LABEL_15;
    }

    v34 = 1;
    v35 = MEMORY[0x1E69922E8];
LABEL_16:
    (*(v33 + 104))(v26, *v35, v32);
    if (v37)
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = v36;
    }

    v23 = type metadata accessor for GraphElement(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v41 = v75[0];
    v40 = v75[1];
    v43 = v75[2];
    v42 = v75[3];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
    CRRegister.wrappedValue.getter();
    v44 = v75[0];
    a2 = v13 + *(v23 + 8);
    CRRegister.wrappedValue.getter();
    if (v44 <= v75[0])
    {
      break;
    }

    __break(1u);
LABEL_45:
    MEMORY[0x1DA6CE0C0](0, a2);
  }

  if (v44 == v75[0])
  {
    v45 = v34;
  }

  else
  {
    v45 = 0;
  }

  if (v45 == 1)
  {
    v76.origin.x = v41;
    v76.origin.y = v40;
    v76.size.width = v43;
    v76.size.height = v42;
    CGRectIsEmpty(v76);
  }

  CRRegister.wrappedValue.getter();
  v46 = v75[0];
  CRRegister.wrappedValue.getter();
  v47 = v75[0];
  v77.origin.x = v41;
  v77.origin.y = v40;
  v77.size.width = v43;
  v77.size.height = v42;
  IsEmpty = CGRectIsEmpty(v77);
  (*(v33 + 16))(v68, v26, v32);
  if (!IsEmpty)
  {
    v73 = v46;
    v78.origin.x = v41;
    v78.origin.y = v40;
    v78.size.width = v43;
    v78.size.height = v42;
    MinX = CGRectGetMinX(v78);
    v79.origin.x = v41;
    v79.origin.y = v40;
    v79.size.width = v43;
    v79.size.height = v42;
    MaxX = CGRectGetMaxX(v79);
    v74 = v47;
    v72 = MinX;
    v65 = *&MaxX;
    if ((v67 & 1) == 0)
    {
      if (MinX <= MaxX)
      {
        v82.origin.x = v41;
        v82.origin.y = v40;
        v82.size.width = v43;
        v82.size.height = v42;
        MinY = CGRectGetMinY(v82);
        v83.origin.x = v41;
        v83.origin.y = v40;
        v83.size.width = v43;
        v83.size.height = v42;
        if (MinY <= CGRectGetMaxY(v83))
        {
          v60 = type metadata accessor for CalculateGraph.Pose();
          (*(*(v60 - 8) + 56))(v66, 1, 1, v60);
LABEL_39:
          dispatch thunk of CalculateGraph.__allocating_init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)();
          v47 = v74;
          if (v73 != 0.0)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_50:
        __break(1u);
        return;
      }

      goto LABEL_48;
    }

    if (MinX <= MaxX)
    {
      v80.origin.x = v41;
      v80.origin.y = v40;
      v80.size.width = v43;
      v80.size.height = v42;
      v52 = CGRectGetMinY(v80);
      v81.origin.x = v41;
      v81.origin.y = v40;
      v81.size.width = v43;
      v81.size.height = v42;
      if (v52 <= CGRectGetMaxY(v81))
      {
        v53 = type metadata accessor for CalculateGraph.Pose();
        (*(*(v53 - 8) + 56))(v66, 1, 1, v53);
        static Animation.easeIn(duration:)();
        goto LABEL_39;
      }

      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v49 = type metadata accessor for CalculateGraph.Pose();
  (*(*(v49 - 8) + 56))(v66, 1, 1, v49);
  if (v67)
  {
    static Animation.easeIn(duration:)();
  }

  dispatch thunk of CalculateGraph.__allocating_init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)();
  if (v46 != 0.0)
  {
LABEL_41:
    v61 = dispatch thunk of CalculateGraph.pose.modify();
    CalculateGraph.Pose.azimuth.setter();
    v61(v75, 0);
    v62 = dispatch thunk of CalculateGraph.pose.modify();
    CalculateGraph.Pose.inclination.setter();
    v62(v75, 0);
    goto LABEL_42;
  }

LABEL_40:
  if (v47 != 0.0)
  {
    goto LABEL_41;
  }

LABEL_42:
  outlined destroy of GraphElement.Partial(v13, type metadata accessor for GraphElement);
  (*(v33 + 8))(v26, v32);
}

double GraphElement.visibleRange.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double GraphElement.zLower.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double GraphElement.zUpper.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double GraphElement.azimuth.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double GraphElement.inclination.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t GraphElement.copy2(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UnknownProperties();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v71 - v8;
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v80 = v71 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_AC5valuetSgMd, &_s9Coherence9CRKeyPathV3key_AC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = v71 - v25;
  outlined init with copy of GraphElement(v3, a2, type metadata accessor for GraphElement);
  v26 = *a1;
  if (*(*a1 + 16))
  {
    v93 = v20;
    v71[1] = v3;
    v71[2] = a1;
    v72 = v6;
    v73 = a2;
    v27 = *(v26 + 64);
    v86 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v79 = (v28 + 63) >> 6;
    v91 = (v10 + 32);
    v83 = (v10 + 8);
    v81 = v26;

    v32 = 0;
    v94 = v15;
    v95 = v12;
    v92 = v23;
    v84 = (v10 + 16);
    v85 = v10;
    v33 = v10;
    v82 = v9;
    while (v30)
    {
      v34 = v32;
LABEL_16:
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v38 = v81;
      v39 = *(v33 + 72) * (v37 | (v34 << 6));
      v40 = v33;
      v41 = *(v33 + 16);
      v41(v93, *(v81 + 48) + v39, v9);
      v42 = *(v38 + 56) + v39;
      v43 = v80;
      v41(v80, v42, v9);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_AC5valuetMd, &_s9Coherence9CRKeyPathV3key_AC5valuetMR);
      v45 = *(v44 + 48);
      v46 = *(v40 + 32);
      v23 = v92;
      v46();
      (v46)(&v23[v45], v43, v9);
      (*(*(v44 - 8) + 56))(v23, 0, 1, v44);
      v15 = v94;
      v12 = v95;
LABEL_17:
      v47 = v23;
      v48 = v87;
      outlined init with take of Range<AttributedString.Index>(v47, v87, &_s9Coherence9CRKeyPathV3key_AC5valuetSgMd, &_s9Coherence9CRKeyPathV3key_AC5valuetSgMR);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_AC5valuetMd, &_s9Coherence9CRKeyPathV3key_AC5valuetMR);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {

        a2 = v73;
        v6 = v72;
        goto LABEL_24;
      }

      v50 = *(v49 + 48);
      v51 = *v91;
      v9 = v82;
      (*v91)(v15, v48, v82);
      v51(v12, v48 + v50, v9);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v89 = static GraphCanvasElementRenderedImageCache.shared;
      v52 = *(static GraphCanvasElementRenderedImageCache.shared + 16);
      v53 = *v84;
      v54 = v93;
      (*v84)(v93, v15, v9);
      v55 = type metadata accessor for KeyPathWrapper(0);
      v56 = objc_allocWithZone(v55);
      v90 = v53;
      v53(&v56[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v54, v9);
      v97.receiver = v56;
      v97.super_class = v55;
      v57 = objc_msgSendSuper2(&v97, sel_init);
      v58 = *v83;
      (*v83)(v54, v9);
      v59 = [v52 objectForKey_];

      v60 = v95;
      if (v59)
      {
        v89 = v89[2];
        v61 = v90;
        v90(v54, v95, v9);
        v62 = objc_allocWithZone(v55);
        v88 = v59;
        v63 = v62;
        v61(&v62[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v54, v9);
        v60 = v95;
        v96.receiver = v63;
        v96.super_class = v55;
        v64 = objc_msgSendSuper2(&v96, sel_init);
        v58(v54, v9);
        v65 = v88;
        [v89 setObject:v88 forKey:v64];
      }

      v58(v60, v9);
      v15 = v94;
      result = (v58)(v94, v9);
      v33 = v85;
      v12 = v60;
      v23 = v92;
    }

    if (v79 <= v32 + 1)
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = v79;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v79)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_AC5valuetMd, &_s9Coherence9CRKeyPathV3key_AC5valuetMR);
        (*(*(v66 - 8) + 56))(v23, 1, 1, v66);
        v30 = 0;
        v32 = v36;
        goto LABEL_17;
      }

      v30 = *(v86 + 8 * v34);
      ++v32;
      if (v30)
      {
        v32 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v67 = type metadata accessor for GraphElement(0);
    v68 = v74;
    v69 = v76;
    CROrderedSet.copy(renamingReferences:)();
    (*(v75 + 40))(a2 + *(v67 + 44), v68, v69);
    v70 = v77;
    UnknownProperties.copy(renamingReferences:)();
    return (*(v78 + 40))(a2 + *(v67 + 48), v70, v6);
  }

  return result;
}

double GraphElement.frame.setter(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$frame : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*GraphElement.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double GraphElement.rotation.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for GraphElement.rotation : GraphElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for GraphElement.rotation : GraphElement(uint64_t *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.rotation.setter(double a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$rotation.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$rotation : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$rotation : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for GraphElement.visibleRange : GraphElement@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double key path setter for GraphElement.visibleRange : GraphElement(_OWORD *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.visibleRange.setter(double a1, double a2, double a3, double a4)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.visibleRange.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$visibleRange.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$visibleRange : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$visibleRange : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$visibleRange.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$visibleRange.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for GraphElement.zLower : GraphElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for GraphElement.zLower : GraphElement(uint64_t *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.zLower.setter(double a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.zLower.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$zLower.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$zLower : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$zLower : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$zLower.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$zLower.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for GraphElement.zUpper : GraphElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for GraphElement.zUpper : GraphElement(uint64_t *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.zUpper.setter(double a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.zUpper.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$zUpper.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$zUpper : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$zUpper : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$zUpper.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$zUpper.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for GraphElement.azimuth : GraphElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for GraphElement.azimuth : GraphElement(uint64_t *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.azimuth.setter(double a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.azimuth.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t GraphElement.$azimuth.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$azimuth : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$azimuth : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$azimuth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$azimuth.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double key path getter for GraphElement.inclination : GraphElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for GraphElement.inclination : GraphElement(uint64_t *a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double GraphElement.inclination.setter(double a1)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*GraphElement.inclination.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t GraphElement.$inclination.getter()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for GraphElement.$inclination : GraphElement()
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for GraphElement.$inclination : GraphElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t GraphElement.$inclination.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for GraphElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GraphElement.$inclination.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for GraphElement(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t GraphElement.expressions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GraphElement(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GraphElement.expressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GraphElement(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GraphElement.init(frame:visibleRange:rotation:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10)
{
  v56 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v57 = v41 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v54 = *(v20 - 8);
  v55 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v52 = *(v23 - 8);
  v53 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v49 = v41 - v24;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v26 = v41 - v25;
  type metadata accessor for CGRect(0);
  v28 = v27;
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v60 = 0u;
  v61 = 0u;
  v41[0] = v28;
  CRRegister.init(wrappedValue:)();
  v29 = type metadata accessor for GraphElement(0);
  v44 = v29[5];
  *&v60 = 0;
  v41[3] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v43 = v29[6];
  specialized static GraphElement.defaultVisibleRange.getter();
  *&v60 = v30;
  *(&v60 + 1) = v31;
  *&v61 = v32;
  *(&v61 + 1) = v33;
  CRRegister.init(wrappedValue:)();
  v45 = v29[7];
  *&v60 = 0;
  CRRegister.init(wrappedValue:)();
  v46 = v29[8];
  *&v60 = 0;
  CRRegister.init(wrappedValue:)();
  v47 = v29[9];
  *&v60 = 0;
  CRRegister.init(wrappedValue:)();
  v48 = v29[10];
  *&v60 = 0;
  CRRegister.init(wrappedValue:)();
  v42 = v29[11];
  v41[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  v41[1] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B0]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953C8]);
  CROrderedSet.init()();
  UnknownProperties.init()();
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  CRRegister.init(_:)();
  v34 = *(v50 + 40);
  v35 = v51;
  v34(a1, v26, v51);
  *&v60 = a10;
  v36 = v49;
  CRRegister.init(_:)();
  (*(v52 + 40))(a1 + v44, v36, v53);
  *&v60 = a6;
  *(&v60 + 1) = a7;
  *&v61 = a8;
  *(&v61 + 1) = v56;
  CRRegister.init(_:)();
  v34(a1 + v43, v26, v35);
  *&v60 = 0;
  CRRegister.init(_:)();
  v37 = v55;
  v38 = *(v54 + 40);
  v38(a1 + v45, v22, v55);
  *&v60 = 0;
  CRRegister.init(_:)();
  v38(a1 + v46, v22, v37);
  *&v60 = 0;
  CRRegister.init(_:)();
  v38(a1 + v47, v22, v37);
  *&v60 = 0;
  CRRegister.init(_:)();
  v38(a1 + v48, v22, v37);
  v39 = v57;
  CROrderedSet.init()();
  return (*(v58 + 40))(a1 + v42, v39, v59);
}

BOOL GraphElement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v162 = a1;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v158 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v141 = &v128 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v148 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v155 = &v128 - v7;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v140 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v147 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v128 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v128 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v128 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v144 = &v128 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v151 = &v128 - v31;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v157 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v136 = &v128 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v142 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v128 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v137 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v128 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v143 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v149 = &v128 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v128 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v128 - v52;
  v160 = type metadata accessor for GraphElement.Partial(0);
  MEMORY[0x1EEE9AC00](v160);
  v55 = &v128 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v2;
  outlined init with copy of GraphElement(v2, v55, type metadata accessor for GraphElement.Partial);
  v57 = GraphElement.Partial.canMerge(delta:)(v162);
  outlined destroy of GraphElement.Partial(v55, type metadata accessor for GraphElement.Partial);
  if (v57)
  {
    v129 = v43;
    v135 = v57;
    v130 = v9;
    outlined init with copy of Date?(v56, v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v131 = v39;
    v58 = *(v39 + 48);
    v59 = v58(v53, 1, v38);
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v134 = v38;
    v133 = v39 + 48;
    v132 = v58;
    if (v59 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v60 = v56;
      v61 = v150;
    }

    else
    {
      v62 = v56;
      outlined init with copy of Date?(v162, v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v63 = v58(v50, 1, v38);
      v61 = v150;
      if (v63 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      }

      else
      {
        v64 = v131;
        v65 = v129;
        (*(v131 + 32))(v129, v50, v38);
        if (!v58(v62, 1, v38))
        {
          CRRegister.merge(delta:)();
        }

        (*(v64 + 8))(v65, v38);
      }

      v60 = v62;
    }

    v66 = v160;
    v67 = *(v160 + 20);
    outlined init with copy of Date?(v60 + v67, v37, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v68 = *(v157 + 48);
    v69 = v68(v37, 1, v61);
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v70 = *(v66 + 20);
    if (v69 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v70, v60 + v67, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      v71 = v160;
      v72 = v134;
    }

    else
    {
      v73 = v142;
      outlined init with copy of Date?(v162 + v70, v142, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      if (v68(v73, 1, v61) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      }

      else
      {
        v74 = v157;
        v75 = v136;
        (*(v157 + 32))(v136, v73, v61);
        if (!v68((v60 + v67), 1, v61))
        {
          CRRegister.merge(delta:)();
        }

        (*(v74 + 8))(v75, v61);
      }

      v71 = v160;
      v72 = v134;
    }

    v76 = v132;
    v77 = v71[6];
    v78 = v149;
    outlined init with copy of Date?(v60 + v77, v149, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v79 = v76(v78, 1, v72);
    outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v80 = v71[6];
    if (v79 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v80, v60 + v77, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v81 = v143;
      outlined init with copy of Date?(v162 + v80, v143, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      if (v76(v81, 1, v72) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      }

      else
      {
        v82 = v131;
        v83 = v137;
        (*(v131 + 32))(v137, v81, v72);
        if (!v76(v60 + v77, 1, v72))
        {
          CRRegister.merge(delta:)();
        }

        (*(v82 + 8))(v83, v72);
      }
    }

    v84 = v161;
    v85 = v71[7];
    v86 = v151;
    outlined init with copy of Date?(v60 + v85, v151, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v87 = *(v159 + 48);
    v88 = v87(v86, 1, v84);
    outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v89 = v71[7];
    if (v88 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v89, v60 + v85, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v90 = v144;
      outlined init with copy of Date?(v162 + v89, v144, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      if (v87(v90, 1, v84) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      }

      else
      {
        v91 = v159;
        v92 = v138;
        (*(v159 + 32))(v138, v90, v84);
        if (!v87(v60 + v85, 1, v84))
        {
          CRRegister.merge(delta:)();
        }

        (*(v91 + 8))(v92, v84);
      }
    }

    v93 = v71[8];
    v94 = v152;
    outlined init with copy of Date?(v60 + v93, v152, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v95 = v161;
    v96 = v87(v94, 1, v161);
    outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v97 = v71[8];
    if (v96 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v97, v60 + v93, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v98 = v145;
      outlined init with copy of Date?(v162 + v97, v145, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      if (v87(v98, 1, v95) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      }

      else
      {
        v99 = v159;
        v100 = v139;
        (*(v159 + 32))(v139, v98, v95);
        if (!v87(v60 + v93, 1, v95))
        {
          CRRegister.merge(delta:)();
        }

        (*(v99 + 8))(v100, v95);
      }
    }

    v101 = v71[9];
    v102 = v153;
    outlined init with copy of Date?(v60 + v101, v153, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v103 = v161;
    v104 = v87(v102, 1, v161);
    outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v105 = v71[9];
    if (v104 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v105, v60 + v101, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v106 = v146;
      outlined init with copy of Date?(v162 + v105, v146, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      if (v87(v106, 1, v103) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      }

      else
      {
        v107 = v159;
        v108 = v140;
        (*(v159 + 32))(v140, v106, v103);
        if (!v87(v60 + v101, 1, v103))
        {
          CRRegister.merge(delta:)();
        }

        (*(v107 + 8))(v108, v103);
      }
    }

    v109 = v71[10];
    v110 = v154;
    outlined init with copy of Date?(v60 + v109, v154, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v111 = v87(v110, 1, v103);
    v112 = v110;
    v113 = v160;
    outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v114 = *(v113 + 40);
    if (v111 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v114, v60 + v109, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v115 = v147;
      outlined init with copy of Date?(v162 + v114, v147, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      if (v87(v115, 1, v103) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      }

      else
      {
        v116 = v159;
        v117 = v130;
        (*(v159 + 32))(v130, v115, v103);
        if (!v87(v60 + v109, 1, v103))
        {
          CRRegister.merge(delta:)();
        }

        (*(v116 + 8))(v117, v103);
      }
    }

    v118 = v155;
    v119 = v156;
    v120 = *(v113 + 44);
    outlined init with copy of Date?(v60 + v120, v155, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    v121 = *(v158 + 48);
    v122 = v121(v118, 1, v119);
    outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    v123 = *(v113 + 44);
    if (v122 == 1)
    {
      outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v162 + v123, v60 + v120, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    }

    else
    {
      v124 = v148;
      outlined init with copy of Date?(v162 + v123, v148, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
      if (v121(v124, 1, v119) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
      }

      else
      {
        v125 = v158;
        v126 = v141;
        (*(v158 + 32))(v141, v124, v119);
        if (!v121(v60 + v120, 1, v119))
        {
          CROrderedSet.MergeableDelta.merge(delta:)();
        }

        (*(v125 + 8))(v126, v119);
      }
    }

    LOBYTE(v57) = v135;
  }

  return v57;
}

BOOL GraphElement.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v137 = &v116[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v116[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v130 = *(v6 - 8);
  v131 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v116[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v116[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v116[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v116[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v116[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v116[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v116[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v116[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v116[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v142 = *(v24 - 8);
  v143 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v116[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v138 = &v116[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v122 = &v116[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v135 = &v116[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v127 = &v116[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v116[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v140 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v126 = &v116[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v125 = &v116[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v134 = &v116[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v116[-v44];
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v116[-v47];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v124 = &v116[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v116[-v53];
  v145 = a1;
  outlined init with copy of Date?(a1, v48, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v55 = *(v50 + 48);
  v56 = v55(v48, 1, v49);
  v139 = v55;
  if (v56 == 1)
  {
    v45 = v48;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v57 = v140;
    v58 = v141;
    goto LABEL_6;
  }

  (*(v50 + 32))(v54, v48, v49);
  outlined init with copy of Date?(v144, v45, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v55(v45, 1, v49) == 1)
  {
    (*(v50 + 8))(v54, v49);
    goto LABEL_5;
  }

  v117 = CRRegister.canMerge(delta:)();
  v89 = *(v50 + 8);
  v89(v54, v49);
  v89(v45, v49);
  v57 = v140;
  v58 = v141;
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v59 = type metadata accessor for GraphElement.Partial(0);
  outlined init with copy of Date?(v145 + v59[5], v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v60 = *(v57 + 48);
  if (v60(v36, 1, v37) == 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v62 = v139;
    goto LABEL_10;
  }

  v61 = v126;
  (*(v57 + 32))(v126, v36, v37);
  v36 = v127;
  outlined init with copy of Date?(v144 + v59[5], v127, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (v60(v36, 1, v37) == 1)
  {
    (*(v57 + 8))(v61, v37);
    v58 = v141;
    goto LABEL_9;
  }

  v90 = CRRegister.canMerge(delta:)();
  v91 = *(v57 + 8);
  v91(v61, v37);
  v91(v36, v37);
  v58 = v141;
  v62 = v139;
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v63 = v134;
  outlined init with copy of Date?(v145 + v59[6], v134, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v62(v63, 1, v49) == 1)
  {
LABEL_13:
    v66 = v135;
    v65 = v136;
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v67 = v142;
    v68 = v143;
    goto LABEL_14;
  }

  v64 = v124;
  (*(v50 + 32))(v124, v63, v49);
  v63 = v125;
  outlined init with copy of Date?(v144 + v59[6], v125, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v62(v63, 1, v49) == 1)
  {
    (*(v50 + 8))(v64, v49);
    goto LABEL_13;
  }

  v95 = v63;
  v96 = CRRegister.canMerge(delta:)();
  v97 = v64;
  v98 = *(v50 + 8);
  v98(v97, v49);
  v98(v95, v49);
  v67 = v142;
  v68 = v143;
  v66 = v135;
  v65 = v136;
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v69 = v133;
  outlined init with copy of Date?(v145 + v59[7], v133, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  v70 = *(v67 + 48);
  if (v70(v69, 1, v68) == 1)
  {
    v65 = v69;
LABEL_18:
    v71 = v138;
    outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v72 = v145;
    goto LABEL_19;
  }

  (*(v67 + 32))(v66, v69, v68);
  outlined init with copy of Date?(v144 + v59[7], v65, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v65, 1, v68) == 1)
  {
    (*(v67 + 8))(v66, v68);
    goto LABEL_18;
  }

  v99 = v67;
  v100 = CRRegister.canMerge(delta:)();
  v101 = *(v99 + 8);
  v101(v66, v143);
  v101(v65, v143);
  v68 = v143;
  v71 = v138;
  v72 = v145;
  if ((v100 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  outlined init with copy of Date?(v72 + v59[8], v58, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v58, 1, v68) == 1)
  {
    v73 = v58;
LABEL_23:
    v78 = v132;
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    goto LABEL_24;
  }

  v74 = v142;
  v75 = v144;
  v76 = v122;
  (*(v142 + 32))(v122, v58, v68);
  v77 = v123;
  outlined init with copy of Date?(v75 + v59[8], v123, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v77, 1, v68) == 1)
  {
    (*(v74 + 8))(v76, v68);
    v73 = v77;
    v72 = v145;
    goto LABEL_23;
  }

  v102 = v74;
  v103 = CRRegister.canMerge(delta:)();
  v104 = *(v102 + 8);
  v104(v76, v143);
  v104(v77, v143);
  v71 = v138;
  v68 = v143;
  v72 = v145;
  v78 = v132;
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  outlined init with copy of Date?(v72 + v59[9], v78, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v78, 1, v68) == 1)
  {
    v79 = v78;
LABEL_28:
    outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    goto LABEL_29;
  }

  v80 = v142;
  (*(v142 + 32))(v71, v78, v68);
  v81 = v121;
  outlined init with copy of Date?(v144 + v59[9], v121, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v81, 1, v68) == 1)
  {
    (*(v80 + 8))(v71, v68);
    v79 = v81;
    goto LABEL_28;
  }

  v105 = v71;
  v106 = v80;
  v107 = CRRegister.canMerge(delta:)();
  v108 = *(v106 + 8);
  v108(v105, v143);
  v108(v81, v143);
  v68 = v143;
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v82 = v128;
  outlined init with copy of Date?(v72 + v59[10], v128, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v70(v82, 1, v68) != 1)
  {
    v83 = v142;
    v84 = v119;
    (*(v142 + 32))(v119, v82, v68);
    v82 = v120;
    outlined init with copy of Date?(v144 + v59[10], v120, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if (v70(v82, 1, v68) != 1)
    {
      v109 = v82;
      v110 = v83;
      v111 = CRRegister.canMerge(delta:)();
      v112 = *(v110 + 8);
      v112(v84, v68);
      v112(v109, v68);
      v87 = v130;
      v85 = v131;
      v86 = v129;
      if ((v111 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

    (*(v83 + 8))(v84, v68);
  }

  v85 = v131;
  v86 = v129;
  outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  v87 = v130;
LABEL_33:
  outlined init with copy of Date?(v72 + v59[11], v86, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  v88 = *(v87 + 48);
  if (v88(v86, 1, v85) == 1)
  {
    v137 = v86;
LABEL_41:
    outlined destroy of StocksKitCurrencyCache.Provider?(v137, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    return 1;
  }

  v92 = v118;
  (*(v87 + 32))(v118, v86, v85);
  v93 = v137;
  outlined init with copy of Date?(v144 + v59[11], v137, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  if (v88(v93, 1, v85) == 1)
  {
    (*(v87 + 8))(v92, v85);
    goto LABEL_41;
  }

  v113 = v137;
  v114 = CROrderedSet.MergeableDelta.canMerge(delta:)();
  v115 = *(v87 + 8);
  v115(v92, v85);
  v115(v113, v85);
  return (v114 & 1) != 0;
}

uint64_t GraphElement.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  outlined init with copy of Date?(v2, &v41 - v21, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v24 = *(v23 - 8);
  v42 = *(v24 + 48);
  v25 = v42(v22, 1, v23);
  v48 = a1;
  if (v25 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v24 + 8))(v22, v23);
  }

  v26 = type metadata accessor for GraphElement.Partial(0);
  v27 = v2;
  outlined init with copy of Date?(v2 + v26[5], v16, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v16, 1, v28) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v29 + 8))(v16, v28);
  }

  outlined init with copy of Date?(v27 + v26[6], v19, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v42(v19, 1, v23) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v24 + 8))(v19, v23);
  }

  v31 = v45;
  v30 = v46;
  v32 = v43;
  outlined init with copy of Date?(v27 + v26[7], v43, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v32, v33);
  }

  v36 = v44;
  outlined init with copy of Date?(v27 + v26[8], v44, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v35(v36, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v36, v33);
  }

  outlined init with copy of Date?(v27 + v26[9], v31, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v35(v31, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v31, v33);
  }

  outlined init with copy of Date?(v27 + v26[10], v30, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  if (v35(v30, 1, v33) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v34 + 8))(v30, v33);
  }

  v37 = v47;
  outlined init with copy of Date?(v27 + v26[11], v47, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  }

  CROrderedSet.MergeableDelta.visitReferences(_:)();
  return (*(v39 + 8))(v37, v38);
}

double GraphElement.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v86 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(a2, 1, 1, v19);
  v23 = type metadata accessor for GraphElement.Partial(0);
  v24 = v23[5];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v76 = v25;
  v77 = v24;
  v74 = v26 + 56;
  v75 = v27;
  (v27)(a2 + v24, 1, 1);
  v72 = v23[6];
  v85 = v19;
  v81 = v22;
  v82 = v21;
  v21(a2 + v72, 1, 1, v19);
  v28 = v23[7];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  v71 = v28;
  v31(a2 + v28, 1, 1, v29);
  v69 = v23[8];
  v31(a2 + v69, 1, 1, v29);
  v73 = v23[9];
  v31(a2 + v73, 1, 1, v29);
  v80 = v23[10];
  v31(a2 + v80, 1, 1, v29);
  v33 = v23[11];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = v35 + 56;
  v88 = a2;
  v36(a2 + v33, 1, 1, v34);
  v38 = v87;
  dispatch thunk of CRDecoder.keyedContainer()();
  v87 = v38;
  if (v38)
  {

    v39 = v88;
    goto LABEL_25;
  }

  v40 = v83;
  v64 = v32;
  v65 = v29;
  v66 = v31;
  v60 = v37;
  v61 = v36;
  v62 = v34;
  v63 = v33;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v41 = v40;
    v42 = v87;
    CRRegister.init(from:)();
    v43 = v42;
    v39 = v88;
    v45 = v85;
    v44 = v86;
    v46 = v84;
    if (v42)
    {
      goto LABEL_24;
    }

    v82(v41, 0, 1, v85);
    outlined assign with take of UUID?(v41, v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v43 = v87;
    v39 = v88;
    v45 = v85;
    v44 = v86;
    v46 = v84;
  }

  v47 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v49 = v79;
  v48 = v80;
  if (v47)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(from:)();
    if (v43)
    {
      goto LABEL_24;
    }

    v75(v46, 0, 1, v76);
    outlined assign with take of UUID?(v46, v39 + v77, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    CRRegister.init(from:)();
    if (v43)
    {
      goto LABEL_24;
    }

    v82(v44, 0, 1, v45);
    outlined assign with take of UUID?(v44, v39 + v72, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  v50 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v51 = v78;
  v52 = v66;
  v53 = v65;
  if (v50)
  {
    CRRegister.init(from:)();
    if (v43)
    {
      goto LABEL_24;
    }

    v52(v49, 0, 1, v53);
    outlined assign with take of UUID?(v49, v39 + v71, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  v54 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v55 = v73;
  if (v54)
  {
    CRRegister.init(from:)();
    if (v43)
    {
      goto LABEL_24;
    }

    v52(v51, 0, 1, v53);
    outlined assign with take of UUID?(v51, v39 + v69, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    goto LABEL_22;
  }

  v56 = v70;
  CRRegister.init(from:)();
  if (v43)
  {
LABEL_24:

    goto LABEL_25;
  }

  v52(v56, 0, 1, v53);
  outlined assign with take of UUID?(v56, v39 + v55, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
LABEL_22:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v57 = v68;
    CRRegister.init(from:)();
    if (v43)
    {
      goto LABEL_24;
    }

    v52(v57, 0, 1, v53);
    outlined assign with take of UUID?(v57, v39 + v48, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  }

  if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {

    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953B0]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<GraphableExpression> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMd, &_s9Coherence3RefVy8PaperKit19GraphableExpressionVGMR, MEMORY[0x1E69953C8]);
  v59 = v67;
  CROrderedSet.MergeableDelta.init(from:)();

  if (!v43)
  {
    v61(v59, 0, 1, v62);
    outlined assign with take of UUID?(v59, v39 + v63, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
    return result;
  }

LABEL_25:
  outlined destroy of GraphElement.Partial(v39, type metadata accessor for GraphElement.Partial);
  return result;
}

double GraphElement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v94 = &v84 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR);
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v92 = &v84 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v84 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v84 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  v106 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v105 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v107 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v84 - v35;
  v37 = v109;
  v38 = dispatch thunk of CREncoder.keyedContainer()();
  if (!v37)
  {
    v40 = v38;
    v88 = v23;
    v91 = v26;
    v87 = v33;
    v109 = 0;
    outlined init with copy of Date?(v108, v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v90 = *(v31 + 48);
    v41 = v31;
    if (v90(v29, 1, v30) == 1)
    {
      v89 = v40;
      v85 = v31;
      v86 = v30;
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v42 = v107;
    }

    else
    {
      (*(v31 + 32))(v36, v29, v30);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v43 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v109 = v43;
      v42 = v107;
      if (v43)
      {
        (*(v41 + 8))(v36, v30);
        goto LABEL_33;
      }

      v89 = v40;
      v85 = v41;
      v44 = *(v41 + 8);
      v86 = v30;
      v44(v36, v30);
    }

    v45 = type metadata accessor for GraphElement.Partial(0);
    v46 = v105;
    outlined init with copy of Date?(v108 + v45[5], v105, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v47 = *(v42 + 6);
    v48 = v42;
    v49 = v21;
    v50 = v47(v46, 1, v21);
    v51 = v106;
    v52 = v91;
    if (v50 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v53 = v88;
      (*(v48 + 4))(v88, v46, v49);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v54 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v109 = v54;
      if (v54)
      {
        (*(v48 + 1))(v53, v49);
        goto LABEL_33;
      }

      (*(v48 + 1))(v53, v49);
    }

    outlined init with copy of Date?(v108 + v45[6], v52, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v55 = v86;
    v56 = v90(v52, 1, v86);
    v57 = v52;
    v58 = v103;
    if (v56 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v59 = v104;
    }

    else
    {
      v60 = v85;
      v61 = v87;
      (*(v85 + 32))(v87, v57, v55);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v62 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v109 = v62;
      v59 = v104;
      if (v62)
      {
        (*(v60 + 8))(v61, v55);
        goto LABEL_33;
      }

      (*(v60 + 8))(v61, v55);
      v51 = v106;
    }

    v107 = v45;
    v63 = v108;
    outlined init with copy of Date?(v108 + v45[7], v59, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    v64 = *(v51 + 48);
    v65 = v64(v59, 1, v58);
    v66 = v101;
    v67 = v102;
    if (v65 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v68 = v100;
      (*(v51 + 32))();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995080]);
      v69 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v109 = v69;
      if (v69)
      {
        (*(v51 + 8))(v68, v58);
        goto LABEL_33;
      }

      (*(v51 + 8))(v68, v58);
    }

    outlined init with copy of Date?(v63 + v107[8], v66, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if (v64(v66, 1, v58) == 1)
    {
      v70 = v51;
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v71 = v98;
      (*(v51 + 32))(v98, v66, v58);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995080]);
      v72 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v71, v58);
      v109 = v72;
      if (v72)
      {
        goto LABEL_33;
      }

      v67 = v102;
      v70 = v51;
    }

    v73 = v99;
    outlined init with copy of Date?(v63 + v107[9], v99, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if (v64(v73, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    }

    else
    {
      v74 = v95;
      (*(v70 + 32))(v95, v73, v58);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995080]);
      v75 = v109;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v70 + 8))(v74, v58);
      v109 = v75;
      if (v75)
      {
        goto LABEL_33;
      }

      v67 = v102;
    }

    v76 = v70;
    outlined init with copy of Date?(v63 + v107[10], v67, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
    if (v64(v67, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVySdGSgMd, &_s9Coherence10CRRegisterVySdGSgMR);
      v78 = v96;
      v77 = v97;
      goto LABEL_35;
    }

    v79 = *(v70 + 32);
    v80 = v93;
    v79(v93, v67, v58);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Double> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR, MEMORY[0x1E6995080]);
    v81 = v109;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v76 + 8))(v80, v58);
    v109 = v81;
    v78 = v96;
    v77 = v97;
    if (!v81)
    {
LABEL_35:
      v82 = v94;
      outlined init with copy of Date?(v63 + v107[11], v94, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
      if ((*(v78 + 48))(v82, 1, v77) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GSgMR);
      }

      else
      {
        v83 = v92;
        (*(v78 + 32))(v92, v82, v77);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<GraphableExpression>>.MergeableDelta and conformance CROrderedSet<A>.MergeableDelta, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA3RefVy8PaperKit19GraphableExpressionVG_GMR, MEMORY[0x1E6995110]);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v78 + 8))(v83, v77);
      }

      return result;
    }

LABEL_33:
  }

  return result;
}

void (*GraphElement.bounds.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v4 = v3[3];
  *v3 = v3[2];
  v3[1] = v4;
  return GraphElement.bounds.modify;
}

uint64_t GraphElement.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 2;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t GraphElement.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t GraphElement.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return MEMORY[0x1EEE6DFA0](GraphElement.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t GraphElement.render<A>(in:id:capsule:options:)()
{
  specialized GraphElement.renderFromPrerenderCache<A>(in:id:capsule:options:)(*(v0 + 48), *(v0 + 56), *(v0 + 72));
  if (v1 & 1) != 0 || (v2 = *(v0 + 72), (*(v2 + 123)))
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v2 + 1);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = GraphElement.render<A>(in:id:capsule:options:);
    v9 = *(v0 + 88);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);

    return specialized GraphElement.image<A>(size:darkMode:isRTL:in:document:)(v7, v11, 0, 0, v10, v9, v5, v6);
  }
}

{
  v1 = *(v0 + 112);
  if (v1)
  {
    GraphElement.renderImage(_:in:)(*(v0 + 112), *(v0 + 48));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t GraphElement.render<A>(in:id:capsule:options:)(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](GraphElement.render<A>(in:id:capsule:options:), 0, 0);
}

Swift::Void __swiftcall GraphElement.renderImage(_:in:)(CGImageRef _, CGContextRef in)
{
  CGContextSaveGState(in);
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v28.origin.x = t1.a;
  v28.origin.y = t1.b;
  v28.size.width = t1.c;
  v28.size.height = t1.d;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = t1.a;
  v29.origin.y = t1.b;
  v29.size.width = t1.c;
  v29.size.height = t1.d;
  MidY = CGRectGetMidY(v29);
  CGAffineTransformMakeRotation(&t1, t1.a);
  tx = t1.tx;
  ty = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v12 = t1.tx;
  v13 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v25, &t1, &t2);
  v14 = v25.tx;
  v15 = v25.ty;
  v22 = *&v25.c;
  v24 = *&v25.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v12;
  t1.ty = v13;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v14;
  t1.ty = v15;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  CGContextConcatCTM(in, &t1);
  CRRegister.wrappedValue.getter();
  v16 = *&t1.a;
  v17 = t1.c;
  v18 = t1.d;
  UIGraphicsPushContext(in);
  CGContextSaveGState(in);
  v30.origin = v16;
  v30.size.width = v17;
  v30.size.height = v18;
  MinX = CGRectGetMinX(v30);
  v31.origin = v16;
  v31.size.width = v17;
  v31.size.height = v18;
  MaxY = CGRectGetMaxY(v31);
  CGContextTranslateCTM(in, MinX, MaxY);
  CGContextScaleCTM(in, 1.0, -1.0);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v17;
  v32.size.height = v18;
  CGContextRef.draw(_:in:byTiling:)(_, v32, 0);
  CGContextRestoreGState(in);
  UIGraphicsPopContext();
  CGContextRestoreGState(in);
}

uint64_t GraphElement.graphables<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GraphElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMd, &_s9Coherence12CROrderedSetVyAA3RefVy8PaperKit19GraphableExpressionVGGMR);
  type metadata accessor for GraphableExpression(0);
  return CROrderedSet.map<A>(_:)();
}

uint64_t GraphElement.imageRenderingCalculateGraph<A>(in:document:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v78 = type metadata accessor for GraphElement(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v76 - v14;
  v97 = type metadata accessor for Color(0);
  v15 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v83 = (&v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for CalculateExpression.Base();
  v95 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v76 - v19;
  v94 = type metadata accessor for UUID();
  v20 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v76 - v23;
  v99 = type metadata accessor for GraphableExpression(0);
  v24 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v28 = CanvasCalculateDocument.proxyDocumentRepresentation.getter(ObjectType, a3);
  }

  else
  {
    v28 = 0;
  }

  v92 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v104 = MEMORY[0x1E69E7CC0];
  v79 = v6;
  v29 = GraphElement.graphables<A>(in:)(a1, a4, a5);
  v30 = *(v29 + 16);
  if (!v30)
  {

    v69 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v76 = v29;
  v32 = v29 + v31;
  v91 = (v20 + 48);
  v81 = (v20 + 32);
  v80 = (v20 + 8);
  v96 = *(v24 + 72);
  v87 = (v95 + 13);
  v95 = (v15 + 48);
  v86 = *MEMORY[0x1E6992250];
  v85 = *MEMORY[0x1E6992100];
  v84 = xmmword_1D4058CF0;
  do
  {
    outlined init with copy of GraphElement(v32, v26, type metadata accessor for GraphableExpression);
    if (!v28)
    {
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    CRRegister.wrappedValue.getter();
    v33 = v93;
    UUID.init(uuidString:)();

    v34 = v94;
    if ((*v91)(v33, 1, v94) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v35 = v82;
      (*v81)(v82, v33, v34);
      CanvasCalculateDocumentProxy.updateDocumentIfNecessary()();
      swift_beginAccess();
      v36 = *(v28 + 56);
      if (*(v36 + 16))
      {
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        if (v38)
        {
          v39 = *(v36 + 56) + 40 * v37;
          v40 = *v39;
          v41 = *(v39 + 8);
          v42 = v35;
          v43 = *(v39 + 16);
          v44 = *(v39 + 24);
          v45 = *(v39 + 32);
          v46 = *v39;
          swift_retain_n();

          swift_endAccess();
          outlined consume of SortableCalculateExpression?(v40, v41, v43, v44, v45);
          (*v80)(v42, v94);

          goto LABEL_15;
        }
      }

      swift_endAccess();
      (*v80)(v35, v34);
    }

    v47 = CanvasCalculateDocumentProxy.expression(for:)(v26);

    if (!v47)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
      CRRegister.wrappedValue.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      v49 = v86;
      *(inited + 32) = v86;
      *(inited + 64) = type metadata accessor for NSNumber();
      v50 = v92;
      *(inited + 40) = v92;
      v51 = v49;
      v52 = v50;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd, &_sSo12CalculateKeya_yptMR);
      UUID.init()();
      (*v87)(v89, v85, v90);
      type metadata accessor for CalculateExpression();
      swift_allocObject();
      CalculateExpression.init(_:options:base:id:)();
    }

LABEL_15:
    v102 = &type metadata for PencilAndPaperFeatureFlags;
    v103 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(v100) = 7;

    v53 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v100);
    if ((v53 & 1) == 0)
    {
      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
    CRRegister.wrappedValue.getter();
    v55 = v100;
    v54 = v101;

    v56 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v56 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      CRRegister.wrappedValue.getter();
      v57 = v100;
      v58 = v101;
    }

    else
    {
      v61 = *(CalculateExpression.graphableVariables.getter() + 16);

      if (!v61)
      {
        goto LABEL_31;
      }

      v62 = CalculateExpression.graphableVariables.getter();
      if (!v62[2])
      {

LABEL_31:
        CalculateExpression.graphableVariable.getter();
        goto LABEL_32;
      }

      v57 = v62[4];
      v58 = v62[5];
    }

    v59 = CalculateExpression.graphableVariable.getter();
    if (v58)
    {
      if (v60)
      {
        if (v57 == v59 && v60 == v58)
        {

          goto LABEL_35;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {

          goto LABEL_35;
        }
      }

      goto LABEL_34;
    }

LABEL_32:
    if (!v60)
    {
      goto LABEL_35;
    }

LABEL_34:
    CalculateExpression.graphableVariable.setter();
LABEL_35:
    type metadata accessor for CalculateGraphExpression();
    swift_allocObject();

    CalculateGraphExpression.init(_:color:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    v64 = v98;
    CRRegister.wrappedValue.getter();
    if ((*v95)(v64, 1, v97) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    }

    else
    {
      v65 = v83;
      outlined init with take of GraphElement(v98, v83, type metadata accessor for Color);
      v66 = *v65;
      v67 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      [v67 initWithCGColor_];
      Color.init(uiColor:)();
      dispatch thunk of CalculateGraphExpression.color.setter();
      outlined destroy of GraphElement.Partial(v65, type metadata accessor for Color);
    }

    MEMORY[0x1DA6CD190](v68);
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of GraphElement.Partial(v26, type metadata accessor for GraphableExpression);
    v32 += v96;
    --v30;
  }

  while (v30);
  v69 = v104;

LABEL_43:
  type metadata accessor for CalculateGraph();
  v70 = v77;
  outlined init with copy of GraphElement(v79, v77, type metadata accessor for GraphElement);
  CalculateGraph.init(canvasElement:expressions:animate:delayAddingExpressions:)(v70, v69, 0, 0);
  v72 = v71;
  dispatch thunk of CalculateGraph.isSelected.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySdGMd, &_s9Coherence10CRRegisterVySdGMR);
  CRRegister.wrappedValue.getter();
  v73 = dispatch thunk of CalculateGraph.pose.modify();
  CalculateGraph.Pose.azimuth.setter();
  v73(&v100, 0);
  CRRegister.wrappedValue.getter();
  v74 = dispatch thunk of CalculateGraph.pose.modify();
  CalculateGraph.Pose.inclination.setter();
  v74(&v100, 0);

  return v72;
}