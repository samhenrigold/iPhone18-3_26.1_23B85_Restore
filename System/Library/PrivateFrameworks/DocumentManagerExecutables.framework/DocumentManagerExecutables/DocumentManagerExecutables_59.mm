uint64_t key path setter for OutlineExpansionState.action : OutlineExpansionState(uint64_t *a1, uint64_t a2)
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

  v7 = *(**a2 + 384);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t OutlineExpansionState.action.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, *(v0 + 32));
  return v1;
}

uint64_t OutlineExpansionState.action.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5, v6);
}

uint64_t OutlineExpansionState.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OutlineExpansionState.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t OutlineExpansionState.init()(uint64_t a1)
{
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t key path getter for OutlineProgressState.wantsProgress : OutlineProgressState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineProgressState.wantsProgress.getter()
{
  swift_getKeyPath();
  (*(*v0 + 200))();

  swift_beginAccess();
  return v0[16];
}

void OutlineProgressState.wantsProgress.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath, v4);
    (*(*v1 + 208))(v5);
  }
}

uint64_t (*OutlineProgressState.wantsProgress.modify(uint64_t *a1))()
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 200))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState, &protocol conformance descriptor for OutlineProgressState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineProgressState._wantsProgress.modify(v4);
  return OutlineProgressState.wantsProgress.modify;
}

void (*OutlineProgressState._progress.modify(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return OutlineProgressState._progress.modify;
}

void OutlineProgressState._progress.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path getter for OutlineProgressState.progress : OutlineProgressState@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t key path setter for OutlineProgressState.progress : OutlineProgressState(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void OutlineProgressState.progress.init(void *a1)
{
  swift_unknownObjectWeakInit();
}

uint64_t OutlineProgressState.progress.getter()
{
  swift_getKeyPath();
  (*(*v0 + 200))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void OutlineProgressState.progress.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x28223BE20](KeyPath, v8);
  (*(*v1 + 208))(v9);
}

uint64_t (*OutlineProgressState.progress.modify(uint64_t *a1))()
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 200))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState, &protocol conformance descriptor for OutlineProgressState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineProgressState._progress.modify(v4);
  return OutlineProgressState.progress.modify;
}

uint64_t OutlineProgressState.deinit()
{
  MEMORY[0x24C1FE970](v0 + 24);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OutlineProgressState.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 24);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t OutlineProgressState.init()()
{
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v0;
}

double OutlineProgressStateReference.progressState.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*OutlineProgressStateReference.progressState.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return OutlineProgressStateReference.progressState.modify;
}

void OutlineProgressStateReference.progressState.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t OutlineProgressStateReference.init(progressState:)(uint64_t a1)
{
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t OutlineProgressStateReference.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for defaultValue()
{
  type metadata accessor for OutlineProgressState(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  result = ObservationRegistrar.init()();
  static OutlineProgressStateKey.defaultValue = v0;
  return result;
}

uint64_t *OutlineProgressStateKey.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static OutlineProgressStateKey.defaultValue;
}

double static OutlineProgressStateKey.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance OutlineProgressStateKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static OutlineProgressStateKey.defaultValue;

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance OutlineProgressStateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState, &protocol conformance descriptor for OutlineProgressState);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.outlineProgressState.getter()
{
  lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path setter for EnvironmentValues.outlineProgressState : EnvironmentValues(uint64_t *a1)
{
  lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();

  return EnvironmentValues.subscript.setter();
}

uint64_t (*EnvironmentValues.outlineProgressState.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.outlineProgressState.modify;
}

void EnvironmentValues.outlineProgressState.modify(void *a1, char a2, __n128 a3)
{
  a1[1] = *a1;
  if (a2)
  {

    EnvironmentValues.subscript.setter();
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }
}

uint64_t EnvironmentValues.shouldDim.getter()
{
  lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

void *key path getter for EnvironmentValues.shouldDim : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.shouldDim.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.shouldDim.modify;
}

uint64_t static ShouldDimKey.write(to:value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.doc_shouldDim.setter(a2, v3, v4);
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance ShouldDimKey@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.write(to:value:) in conformance ShouldDimKey(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.doc_shouldDim.setter(v2, v3, v4);
}

uint64_t key path getter for Dragging.color : Dragging@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Dragging.color : Dragging(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

double Dragging.color.getter()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  swift_beginAccess();

  return result;
}

double Dragging.color.setter(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {

      v3 = static Color.== infix(_:_:)();

      if (v3)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    (*(*v1 + 152))(v6);

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[2] = a1;

  return result;
}

void closure #1 in Dragging.color.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*Dragging.color.modify(uint64_t *a1))()
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 144))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type Dragging and conformance Dragging, type metadata accessor for Dragging, &protocol conformance descriptor for Dragging);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Dragging._color.modify(v4);
  return Dragging.color.modify;
}

uint64_t Dragging.deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Dragging.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t Dragging.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t Dragging.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t DragIndicator.colorScheme.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for DragIndicator(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_2493AC000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t DragIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for ColorScheme();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v67 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v65 = &v59 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v72, v8);
  v10 = &v59 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v64, v11);
  v66 = &v59 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMR);
  MEMORY[0x28223BE20](v71, v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingN0VGAGyAGyAlA016_ForegroundStyleN0VyAPGGAUG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingN0VGAGyAGyAlA016_ForegroundStyleN0VyAPGGAUG_GMR);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMR);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v59 - v27;
  v68 = v1;
  v29 = (*(**(v1 + 8) + 120))(v26);
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = type metadata accessor for RoundedCornerStyle();
  v33 = *(*(v32 - 8) + 104);
  if (v29)
  {
    v33(&v28[v30], v31, v32);
    *v28 = xmmword_249BB83A0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = &v28[*(v72 + 9)];
    v35 = v75;
    *v34 = v74;
    *(v34 + 1) = v35;
    *(v34 + 2) = v76;
    KeyPath = swift_getKeyPath();
    v37 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36)];
    *v37 = KeyPath;
    v37[1] = v29;
    v28[*(v24 + 36)] = 0;
    v38 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd;
    v39 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMR;
    outlined init with copy of DOCGridLayout.Spec?(v28, v23, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v40 = v28;
  }

  else
  {
    v60 = v15;
    v61 = v23;
    v41 = v64;
    v62 = v20;
    v63 = v19;
    v42 = v71;
    v33(&v10[v30], v31, v32);
    *v10 = xmmword_249BB83A0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43 = *(v72 + 9);
    v72 = v10;
    v44 = &v10[v43];
    v45 = v75;
    *v44 = v74;
    *(v44 + 1) = v45;
    *(v44 + 2) = v76;
    v46 = v65;
    DragIndicator.colorScheme.getter(v65);
    v48 = v69;
    v47 = v70;
    v49 = v67;
    (*(v69 + 104))(v67, *MEMORY[0x277CDF3C0], v70);
    v50 = static ColorScheme.== infix(_:_:)();
    v51 = *(v48 + 8);
    v51(v49, v47);
    v51(v46, v47);
    if (v50)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.black.getter();
    }

    v52 = v42;
    v53 = v61;
    v54 = v66;
    v55 = v60;
    v56 = Color.opacity(_:)();

    outlined init with take of (key: URL, value: FPItem)(v72, v54, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMR);
    *(v54 + *(v41 + 36)) = v56;
    outlined init with take of (key: URL, value: FPItem)(v54, v55, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    *(v55 + *(v52 + 36)) = 0;
    v38 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd;
    v39 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMR;
    v57 = v63;
    outlined init with take of (key: URL, value: FPItem)(v55, v63, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMR);
    outlined init with copy of DOCGridLayout.Spec?(v57, v53, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v40 = v57;
  }

  return outlined destroy of CharacterSet?(v40, v38, v39);
}

id DOCReuseableView.makeUIView(context:)()
{
  DOCGridLayout.specIconWidth.modify();

  return v0;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance DOCReuseableView<A>()
{
  DOCGridLayout.specIconWidth.modify();

  return v0;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DOCReuseableView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DOCReuseableView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance DOCReuseableView<A>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t StatusView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StatusView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v10 = *v7;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
  }

  *(a2 + *(v8 + 20)) = v10;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

double StatusView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StatusView(0);
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v1 + *(v8 + 24);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = v9;
    if (v12 != 1)
    {
      outlined copy of Environment<Bool>.Content(v11, 0);
      v14 = static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v14, &dword_2493AC000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v16 = outlined consume of Environment<Bool>.Content(v11, 0);
      (*(v4 + 8))(v7, v3, v16);
      LOBYTE(v11) = v24;
    }

    v17 = 0x3FF0000000000000;
    if (v11)
    {
      v17 = 0x3FD6666666666666;
    }

    v21 = v9;
    v22 = v17;
    v23 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMR);
  lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v24;
  v19 = v25;
  *a1 = v24;
  *(a1 + 16) = v19;
  return result;
}

uint64_t View.outlineDimmed(_:)(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  a4.n128_u64[0] = 0x3FD6666666666666;
  if ((a1 & 1) == 0)
  {
    a4.n128_f64[0] = 1.0;
  }

  return MEMORY[0x282133218](a2, a3, a4);
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance StatusView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v11 = *v9;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
  }

  *(a3 + *(a2 + 20)) = v11;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

uint64_t HeaderTitleLayout.TitleLayoutBestView.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LayoutSubview();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeaderTitleLayout.TitleLayoutBestView.init(view:size:isSmallestView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for LayoutSubview();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  v12 = (a3 + *(result + 20));
  *v12 = a4;
  v12[1] = a5;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t HeaderTitleLayout.sizeThatFits(proposal:subviews:cache:)(unint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1 <= 0.0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *&a1;
  }

  if (a2)
  {
    v17 = *&a3;
  }

  else
  {
    v17 = *&v16;
  }

  HeaderTitleLayout.bestView(for:proposal:cache:)(a6, v17, 0, a7, v15);
  return _s26DocumentManagerExecutables6ColumnOWOhTm_1(v15, type metadata accessor for HeaderTitleLayout.TitleLayoutBestView);
}

void *HeaderTitleLayout.bestView(for:proposal:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v93 = a4;
  v92 = a3;
  v98 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSg_ADtMd, &_s7SwiftUI13LayoutSubviewVSg_ADtMR);
  MEMORY[0x28223BE20](v91, v7);
  v102 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v87 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v100 = &v85 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v101 = &v85 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v85 - v24;
  v26 = type metadata accessor for LayoutSubview();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v104 = &v85 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v94 = &v85 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v85 - v39;
  specialized Collection.first.getter(v25);
  v99 = v27;
  v41 = *(v27 + 48);
  v90 = v27 + 48;
  v89 = v41;
  result = (v41)(v25, 1, v26);
  if (result == 1)
  {
    goto LABEL_35;
  }

  v85 = a5;
  v43 = *(v99 + 32);
  v86 = v40;
  v96 = v43;
  v97 = v99 + 32;
  v43(v40, v25, v26);
  v44 = type metadata accessor for LayoutSubviews();
  (*(*(v44 - 8) + 16))(v12, a1, v44);
  v45 = *(v9 + 36);
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v95 = v12;
  if (*&v12[v45] == v106)
  {
    LODWORD(v98) = 0;
    v46 = 0.0;
    v47 = 0;
    v48 = v95;
LABEL_4:
    outlined destroy of CharacterSet?(v48, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
    v49 = v85;
    v96(v85, v86, v26);
    result = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
    v50 = v49 + *(result + 5);
    *v50 = v46;
    *(v50 + 8) = v47;
    *(v49 + *(result + 6)) = v98 & 1;
    return result;
  }

  v51 = v45;
  v103 = (v99 + 16);
  v52 = (v99 + 8);
  v99 += 56;
  v53 = *&v98;
  v46 = 0.0;
  v47 = 0;
  v88 = v51;
  while (1)
  {
    v98 = dispatch thunk of Collection.subscript.read();
    v55 = *v103;
    v56 = v94;
    (*v103)(v94);
    (v98)(&v106, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v96(v104, v56, v26);
    result = dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
    if (v108)
    {
      dispatch thunk of Collection.startIndex.getter();
      result = dispatch thunk of Collection.endIndex.getter();
      v57 = v105;
      if (v105 == v106)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v58 = dispatch thunk of Collection.subscript.read();
        v55(v30);
        (v58)(&v106, 0);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8], MEMORY[0x277CDF700]);
        LOBYTE(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
        result = (*v52)(v30, v26);
        if (v58)
        {
          break;
        }

        dispatch thunk of Collection.formIndex(after:)();
        result = dispatch thunk of Collection.endIndex.getter();
        v57 = v105;
        if (v105 == v106)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (v107)
      {
        goto LABEL_34;
      }

      v57 = v106;
    }

    v59 = v99;
    if ((v57 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v57 >= *(*v93 + 16))
    {
      goto LABEL_33;
    }

    v60 = *v93 + 16 * v57;
    v61 = *(v60 + 32);
    v62 = *(v60 + 40);
    v63 = v101;
    (v55)(v101, v104, v26);
    v64 = *v59;
    (*v59)(v63, 0, 1, v26);
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      v65 = v100;
      v66 = 1;
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF800]);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v67 = dispatch thunk of Collection.subscript.read();
      v68 = v100;
      v55(v100);
      v67(&v106, 0);
      v65 = v68;
      v66 = 0;
    }

    v64(v65, v66, 1, v26);
    v69 = *(v91 + 48);
    v70 = v102;
    outlined init with copy of DOCGridLayout.Spec?(v101, v102, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v98 = v69;
    v71 = v70 + v69;
    v72 = v100;
    outlined init with copy of DOCGridLayout.Spec?(v100, v71, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v73 = v89;
    if (v89(v70, 1, v26) != 1)
    {
      v75 = v102;
      v76 = v87;
      outlined init with copy of DOCGridLayout.Spec?(v102, v87, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
      v77 = v75 + v98;
      v78 = v98;
      if (v73(v77, 1, v26) != 1)
      {
        v96(v30, (v102 + v78), v26);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8], MEMORY[0x277CDF700]);
        LODWORD(v98) = dispatch thunk of static Equatable.== infix(_:_:)();
        v79 = *v52;
        (*v52)(v30, v26);
        outlined destroy of CharacterSet?(v100, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
        outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
        v79(v76, v26);
        outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
        v74 = v98;
        goto LABEL_28;
      }

      outlined destroy of CharacterSet?(v100, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
      outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
      (*v52)(v76, v26);
LABEL_26:
      outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSg_ADtMd, &_s7SwiftUI13LayoutSubviewVSg_ADtMR);
      v74 = 0;
      goto LABEL_28;
    }

    outlined destroy of CharacterSet?(v72, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    if (v73(v102 + v98, 1, v26) != 1)
    {
      goto LABEL_26;
    }

    outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSgMd, &_s7SwiftUI13LayoutSubviewVSgMR);
    v74 = 1;
LABEL_28:
    v80 = v95;
    v81 = v88;
    LODWORD(v98) = v74;
    if ((v92 & 1) != 0 || !((v61 <= v53) | v74 & 1))
    {
      v54 = *v52;
    }

    else
    {
      v54 = *v52;
      if (v46 <= v61)
      {
        v82 = v95;
        v83 = v86;
        v54(v86, v26);
        v84 = v83;
        v80 = v82;
        v96(v84, v104, v26);
        v46 = v61;
        v47 = v62;
        goto LABEL_8;
      }
    }

    v54(v104, v26);
LABEL_8:
    dispatch thunk of Collection.endIndex.getter();
    v48 = v80;
    if (*(v80 + v81) == v106)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t HeaderTitleLayout.placeSubviews(in:proposal:subviews:cache:)(void (**a1)(char *, uint64_t), char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, void (**a9)(char *), uint64_t a10)
{
  v56 = a9;
  v54 = a1;
  v16 = type metadata accessor for LayoutSubview();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v52 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  MEMORY[0x28223BE20](v55, v28);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v52 - v33;
  v52 = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  MEMORY[0x28223BE20](v52, v35);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  if (CGRectGetWidth(v59) <= 0.0)
  {
    v42 = type metadata accessor for LayoutSubviews();
    (*(*(v42 - 8) + 16))(v30, v56, v42);
    v43 = *(v55 + 36);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v30[v43] != v58[0])
    {
      v44 = (v53 + 16);
      v45 = (v53 + 8);
      do
      {
        v46 = dispatch thunk of Collection.subscript.read();
        (*v44)(v19);
        v46(v58, 0);
        dispatch thunk of Collection.formIndex(after:)();
        static UnitPoint.center.getter();
        static ProposedViewSize.zero.getter();
        LOBYTE(v58[0]) = v47 & 1;
        v57 = v48 & 1;
        LayoutSubview.place(at:anchor:proposal:)();
        (*v45)(v19, v16);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v30[v43] != v58[0]);
    }

    return outlined destroy of CharacterSet?(v30, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  }

  else
  {
    v38 = v56;
    HeaderTitleLayout.bestView(for:proposal:cache:)(v56, v54, a2 & 1, a10, v37);
    v39 = type metadata accessor for LayoutSubviews();
    (*(*(v39 - 8) + 16))(v34, v38, v39);
    v40 = *(v55 + 36);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v34[v40] != v58[0])
    {
      v55 = v53 + 32;
      v56 = (v53 + 16);
      v54 = (v53 + 8);
      do
      {
        v49 = dispatch thunk of Collection.subscript.read();
        (*v56)(v27);
        v49(v58, 0);
        dispatch thunk of Collection.formIndex(after:)();
        (*v55)(v23, v27, v16);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8], MEMORY[0x277CDF700]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v53 = *&v37[*(v52 + 20) + 8];
          v60.origin.x = a3;
          v60.origin.y = a4;
          v60.size.width = a5;
          v60.size.height = a6;
          CGRectGetWidth(v60);
          static UnitPoint.topLeading.getter();
          LOBYTE(v58[0]) = 0;
          v57 = 0;
        }

        else
        {
          static UnitPoint.center.getter();
          static ProposedViewSize.zero.getter();
          LOBYTE(v58[0]) = v50 & 1;
          v57 = v51 & 1;
        }

        LayoutSubview.place(at:anchor:proposal:)();
        (*v54)(v23, v16);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v34[v40] != v58[0]);
    }

    outlined destroy of CharacterSet?(v34, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
    return _s26DocumentManagerExecutables6ColumnOWOhTm_1(v37, type metadata accessor for HeaderTitleLayout.TitleLayoutBestView);
  }
}

void *protocol witness for Layout.makeCache(subviews:) in conformance HeaderTitleLayout@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized HeaderTitleLayout.makeCache(subviews:)(a2);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance HeaderTitleLayout(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

uint64_t Header.columnType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Header(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return outlined copy of ColumnType(v4, v5);
}

double Header.strings.getter()
{
  type metadata accessor for Header(0);

  return result;
}

double Header.image.getter()
{
  type metadata accessor for Header(0);

  return result;
}

uint64_t Header.colorScheme.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for Header(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 44), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_2493AC000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t Header.horizontalSizeClass.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for Header(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 48), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  }

  v14 = static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_2493AC000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Header.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Header(0);
  v9 = v8[11];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v10 = v8[12];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = *v7;
    v12 = *(v7 + 1);
    v13 = v7[16];
    v14 = v7[17];
    v15 = v7[18];
    v16 = (a2 + v8[5]);
    *v16 = *v7;
    v16[1] = v12;
    v19[0] = v11;
    v19[1] = v12;
    *(a2 + v8[6]) = ColumnType.localizedStrings()();
    *(a2 + v8[8]) = v13;
    *(a2 + v8[9]) = v14;
    *(a2 + v8[10]) = v15;
    if (v13)
    {
      *(a2 + v8[7]) = Image.init(systemName:)();
    }

    else
    {
      *(a2 + v8[7]) = 0;
    }
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v17 = (a2 + v8[5]);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + v8[6]) = MEMORY[0x277D84F90];
    *(a2 + v8[7]) = 0;
    *(a2 + v8[8]) = 0;
    *(a2 + v8[9]) = 0;
    *(a2 + v8[10]) = 0;
  }

  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

uint64_t Header.description.getter()
{
  v1 = type metadata accessor for Header(0);
  v2 = MEMORY[0x24C1FB0D0](*(v0 + *(v1 + 24)), MEMORY[0x277D837D0]);
  MEMORY[0x24C1FAEA0](v2);

  return 0x20726564616568;
}

uint64_t Header.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMR);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA19_ConditionalContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleO0VGAA7ForEachVySaySSGSSAA08ModifiedL0VyAZyAcAE10fontWeightyQrAA4FontV0Z0VSgFQOyAZyAZyAZyAZyAZyAIyAA05TupleC0VyAA4TextV_AcAEA_yQrA4_FQOyAZyAZyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingO0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAOy_AUA40_GGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA19_ConditionalContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleO0VGAA7ForEachVySaySSGSSAA08ModifiedL0VyAZyAcAE10fontWeightyQrAA4FontV0Z0VSgFQOyAZyAZyAZyAZyAZyAIyAA05TupleC0VyAA4TextV_AcAEA_yQrA4_FQOyAZyAZyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingO0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAOy_AUA40_GGG_Qo_MR);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v44 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMR);
  MEMORY[0x28223BE20](v52, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v51 = &v44 - v24;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAEy_AA01_G4RootVy26DocumentManagerExecutables011HeaderTitleG0VGAA7ForEachVySaySSGSSAA08ModifiedI0VyATyAA0D0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA0F0VyAA05TupleD0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingG0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAEy_AOA38_GGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAEy_AA01_G4RootVy26DocumentManagerExecutables011HeaderTitleG0VGAA7ForEachVySaySSGSSAA08ModifiedI0VyATyAA0D0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA0F0VyAA05TupleD0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingG0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAEy_AOA38_GGGMR);
  closure #1 in Header.body.getter(v1, &v13[*(v25 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v26 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>, _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMR, MEMORY[0x277CE1138]);
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v9, v47);
  outlined destroy of CharacterSet?(v13, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMR);
  v27 = v48;
  static AccessibilityTraits.isButton.getter();
  v54 = v10;
  v55 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v44;
  MEMORY[0x24C1FA5D0](v27, v44, OpaqueTypeConformance2);
  (*(v49 + 8))(v27, v50);
  (*(v45 + 8))(v18, v29);
  v30 = type metadata accessor for Header(0);
  v31 = *(v2 + v30[6]);
  if (v31[2])
  {
    v33 = v31[4];
    v32 = v31[5];
  }

  else
  {
    v33 = 0;
    v32 = 0xE000000000000000;
  }

  v54 = v33;
  v55 = v32;
  lazy protocol witness table accessor for type String and conformance String();
  v34 = v51;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  outlined destroy of CharacterSet?(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMR);
  v35 = (v2 + v30[5]);
  v36 = *v35;
  v37 = v35[1];
  if (v37 <= 3)
  {
    if (v37 <= 1)
    {
      if (!v37)
      {
        v38 = 0xE400000000000000;
        v39 = 1701667182;
        goto LABEL_24;
      }

      if (v37 == 1)
      {
        v38 = 0xEC00000064656966;
        v39 = 0x69646F4D65746164;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v37 == 2)
    {
      v38 = 0xEB00000000646574;
      v39 = 0x6165724365746164;
    }

    else
    {
      v38 = 0xEE0064656E65704FLL;
      v39 = 0x7473614C65746164;
    }
  }

  else
  {
    if (v37 > 5)
    {
      switch(v37)
      {
        case 6:
          v38 = 0xE400000000000000;
          v39 = 1702521203;
          goto LABEL_24;
        case 7:
          v38 = 0xE400000000000000;
          v39 = 1936154996;
          goto LABEL_24;
        case 8:
          v38 = 0xE600000000000000;
          v39 = 0x737574617473;
          goto LABEL_24;
      }

LABEL_23:
      v39 = *v35;
      v38 = v35[1];
      goto LABEL_24;
    }

    if (v37 == 4)
    {
      v38 = 0xE900000000000064;
      v39 = 0x6564644165746164;
    }

    else
    {
      v38 = 0xE400000000000000;
      v39 = 1684957547;
    }
  }

LABEL_24:
  v40 = objc_opt_self();
  outlined copy of ColumnType(v36, v37);
  v41 = MEMORY[0x24C1FAD20](v39, v38);

  v42 = [v40 sortByHeaderButtonForSortIdentifier:v41 ascending:*(v2 + v30[8]) == 2 active:*(v2 + v30[7]) != 0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  ModifiedContent<>.accessibilityIdentifier(_:)();

  return outlined destroy of CharacterSet?(v34, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMR);
}

void closure #1 in Header.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR);
  MEMORY[0x28223BE20](v35, v3);
  v5 = (&v32 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedD0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA6HStackVyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAIy_AOA38_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedD0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA6HStackVyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAIy_AOA38_G_GMR);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Header(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v32 - v16);
  if (*(a1 + *(v10 + 36)) == 1)
  {
    *v17 = 0x408F400000000000;
    v34 = *(v14 + 44);
    v37 = *(a1 + *(v10 + 24));
    KeyPath = swift_getKeyPath();
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    outlined init with take of Column(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Header);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMR);
    v22 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83980]);
    v23 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)(&v37, KeyPath, partial apply for closure #1 in closure #1 in closure #1 in Header.body.getter, v19, v20, v21, v22, MEMORY[0x277D837E0], v23);
    outlined init with copy of DOCGridLayout.Spec?(v17, v9, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR, lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v24 = v17;
    v25 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd;
    v26 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR;
LABEL_5:
    outlined destroy of CharacterSet?(v24, v25, v26);
    return;
  }

  v27 = v35;
  *v5 = 0x408F400000000000;
  v28 = *(a1 + *(v10 + 24));
  if (v28[2])
  {
    v29 = *(v27 + 44);
    v30 = v28[4];
    v31 = v28[5];

    Header.text(string:)(v30, v31, v5 + v29);

    outlined init with copy of DOCGridLayout.Spec?(v5, v9, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR, lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v24 = v5;
    v25 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd;
    v26 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t Header.text(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v73 = a2;
  v81 = a3;
  v4 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v72 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMR);
  MEMORY[0x28223BE20](v74, v14);
  v16 = &v72 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMR);
  MEMORY[0x28223BE20](v76, v17);
  v19 = &v72 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMR);
  MEMORY[0x28223BE20](v77, v20);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAKyAKyAKyAA6HStackVyAA05TupleC0VyAA4TextV_AcAEADyQrAIFQOyAKyAKyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAKyAKyAKyAA6HStackVyAA05TupleC0VyAA4TextV_AcAEADyQrAIFQOyAKyAKyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_MR);
  v79 = *(v23 - 8);
  v80 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v78 = &v72 - v25;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMR);
  MEMORY[0x28223BE20](v75, v26);
  v28 = &v72 - v27;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMR);
  closure #1 in Header.textWithImage(string:)(v72, v73, v3, &v9[*(v29 + 44)]);
  if (*(v3 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    v82 = static HierarchicalShapeStyle.primary.getter();
  }

  v30 = AnyShapeStyle.init<A>(_:)();
  outlined init with take of (key: URL, value: FPItem)(v9, v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMR);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMR) + 36)] = v30;
  LOBYTE(v30) = static Edge.Set.leading.getter();
  Header.nameHeaderLeadingPadding.getter();
  EdgeInsets.init(_all:)();
  v31 = &v13[*(v10 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = static Edge.Set.trailing.getter();
  v37 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined init with take of (key: URL, value: FPItem)(v13, v16, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMR);
  v46 = &v16[*(v74 + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v48 = static Edge.Set.top.getter();
  *(inited + 32) = v48;
  v49 = static Edge.Set.bottom.getter();
  *(inited + 33) = v49;
  v50 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v48)
  {
    v50 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v49)
  {
    v50 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  outlined init with take of (key: URL, value: FPItem)(v16, v19, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMR);
  v59 = &v19[*(v76 + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  outlined init with take of (key: URL, value: FPItem)(v19, v22, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMR);
  v62 = &v22[*(v77 + 36)];
  *v62 = KeyPath;
  v62[1] = v60;
  static Font.Weight.semibold.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v63 = v78;
  View.fontWeight(_:)();
  outlined destroy of CharacterSet?(v22, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMR);
  v64 = &v28[*(v75 + 36)];
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMR) + 28);
  v66 = *MEMORY[0x277CE0B30];
  v67 = type metadata accessor for Text.TruncationMode();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  (*(v79 + 32))(v28, v63, v80);
  v68 = swift_getKeyPath();
  v69 = v81;
  outlined init with take of (key: URL, value: FPItem)(v28, v81, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMR);
  v71 = v69 + *(result + 36);
  *v71 = v68;
  *(v71 + 8) = 1;
  *(v71 + 16) = 0;
  return result;
}

double Header.nameHeaderLeadingPadding.getter()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = (&v28 - v20);
  v22 = type metadata accessor for Header(0);
  result = 12.0;
  if ((*(v0 + *(v22 + 20) + 8) - 1) >= 8)
  {
    v28 = v22;
    v29 = v0;
    Header.horizontalSizeClass.getter(v21);
    (*(v2 + 104))(v17, *MEMORY[0x277CE0558], v1);
    (*(v2 + 56))(v17, 0, 1, v1);
    v24 = *(v6 + 48);
    outlined init with copy of DOCGridLayout.Spec?(v21, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v17, &v9[v24], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v25 = *(v2 + 48);
    if (v25(v9, 1, v1) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      if (v25(&v9[v24], 1, v1) == 1)
      {
        outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        result = 16.0;
        goto LABEL_10;
      }
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(v9, v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      if (v25(&v9[v24], 1, v1) != 1)
      {
        (*(v2 + 32))(v5, &v9[v24], v1);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v2 + 8);
        v27(v5, v1);
        outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        v27(v13, v1);
        outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        result = 10.0;
        if (v26)
        {
          result = 16.0;
        }

        goto LABEL_10;
      }

      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      (*(v2 + 8))(v13, v1);
    }

    outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    result = 10.0;
LABEL_10:
    if (*(v29 + *(v28 + 40)))
    {
      return result + 24.0;
    }
  }

  return result;
}

uint64_t Header.textWithImage(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v17 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMR);
  closure #1 in Header.textWithImage(string:)(a1, a2, v4, &v13[*(v14 + 44)]);
  if (*(v4 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    v17[3] = static HierarchicalShapeStyle.primary.getter();
  }

  v15 = AnyShapeStyle.init<A>(_:)();
  outlined init with take of (key: URL, value: FPItem)(v13, a3, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMR);
  *(a3 + *(result + 36)) = v15;
  return result;
}

uint64_t Header.foregroundStyle<A>(view:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v5 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v19 - v14;
  if (*(v3 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    LODWORD(v20) = static HierarchicalShapeStyle.primary.getter();
  }

  v20 = AnyShapeStyle.init<A>(_:)();
  View.foregroundStyle<A>(_:)();

  v16 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR, MEMORY[0x277CE0740]);
  v19[1] = a2;
  v19[2] = v16;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v8 + 8);
  v17(v11, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v7);
}

void closure #1 in Header.textWithImage(string:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_MR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v53 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v46 - v17;
  v58 = a1;
  v59 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v23 = v22;
  v24 = type metadata accessor for Header(0);
  if (*(a3 + *(v24 + 28)))
  {
    v25 = v24;
    swift_retain_n();
    v26 = Text.init(_:)();
    v47 = v27;
    v48 = v26;
    v28 = v27;
    v52 = v7;
    v30 = v29;
    v31 = a3;
    v33 = v32;
    v50 = v32;
    if (*(v31 + *(v25 + 36)))
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v51 = v8;
    v49 = KeyPath;
    v58 = v26;
    v59 = v28;
    v37 = v30 & 1;
    v60 = v37;
    v61 = v33;
    v62 = v34;
    v63 = KeyPath;
    v64 = v35;
    static Font.Weight.semibold.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v38 = v53;
    View.fontWeight(_:)();

    v39 = v37;
    v7 = v52;
    outlined consume of Text.Storage(v48, v47, v39);

    v8 = v51;

    (*(v8 + 32))(v18, v38, v7);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v8 + 56))(v18, v40, 1, v7);
  outlined init with copy of DOCGridLayout.Spec?(v18, v14, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMR);
  v42 = v56;
  v41 = v57;
  v43 = v55;
  *v55 = v57;
  v43[1] = v42;
  v44 = v54 & 1;
  *(v43 + 16) = v54 & 1;
  v43[3] = v23;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA4ViewPAAE10fontWeightyQrAA4FontV0F0VSgFQOyAA15ModifiedContentVyAMyAcA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtMd, &_s7SwiftUI4TextV_AA4ViewPAAE10fontWeightyQrAA4FontV0F0VSgFQOyAA15ModifiedContentVyAMyAcA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtMR);
  outlined init with copy of DOCGridLayout.Spec?(v14, v43 + *(v45 + 48), &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMR);
  outlined copy of Text.Storage(v41, v42, v44);

  outlined destroy of CharacterSet?(v18, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMR);
  outlined destroy of CharacterSet?(v14, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMR);
  outlined consume of Text.Storage(v41, v42, v44);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Header(uint64_t a1)
{
  v2 = MEMORY[0x24C1FB0D0](*(v1 + *(a1 + 24)), MEMORY[0x277D837D0]);
  MEMORY[0x24C1FAEA0](v2);

  return 0x20726564616568;
}

uint64_t key path getter for RenameObserver.isRenaming : RenameObserver@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t RenameObserver.isRenaming.getter()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  swift_beginAccess();
  return v0[16];
}

void RenameObserver.isRenaming.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath, v4);
    (*(*v1 + 152))(v5);
  }
}

uint64_t (*RenameObserver.isRenaming.modify(uint64_t *a1))()
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 144))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type RenameObserver and conformance RenameObserver, type metadata accessor for RenameObserver, &protocol conformance descriptor for RenameObserver);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = RenameObserver._isRenaming.modify(v4);
  return RenameObserver.isRenaming.modify;
}

void OutlineExpansionState.isExpanded.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t RenameObserver.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RenameObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t RenameObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t RenameObserver.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t LeadingView.browserConfiguration.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for LeadingView(0) + 52);
  result = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 24) != 1)
  {
    v9 = *v6;
    v10 = *(v6 + 16);

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &dword_2493AC000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(v9, v8, v10, 0);
    (*(v2 + 8))(v5, v1, v13);
    return v14[1];
  }

  return result;
}

uint64_t LeadingView.sizeCategory.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LeadingView(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 56), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ContentSizeCategory();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_2493AC000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LeadingView.sizeClass.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LeadingView(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 60), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  }

  v14 = static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_2493AC000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

double LeadingView.renameObserver.getter()
{
  type metadata accessor for LeadingView(0);

  return result;
}

uint64_t LeadingView.init(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LeadingView(0);
  v13 = a2 + v12[13];
  KeyPath = swift_getKeyPath();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = KeyPath;
  v13[24] = 0;
  v15 = v12[14];
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  swift_storeEnumTagMultiPayload();
  v16 = v12[15];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v12[16];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[18];
  type metadata accessor for RenameObserver(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  ObservationRegistrar.init()();
  *(a2 + v18) = v19;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = v7[1];
    v57 = *v7;
    v58 = a1;
    v21 = v7[3];
    v54 = v7[2];
    v55 = v20;
    v56 = v21;
    v22 = v7[4];
    v59 = v7[5];
    v23 = v7[6];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
    v25 = v24[16];
    v26 = (v7 + v24[20]);
    v27 = v11;
    v28 = *v26;
    v29 = v26[1];
    v30 = *(v7 + v24[24]);
    v31 = *(v7 + v24[28]);
    v50 = *(v7 + v24[32]);
    v51 = v31;
    v32 = *(v7 + v24[36]);
    v52 = *(v7 + v24[40]);
    v53 = v32;
    outlined init with take of Column(v7 + v25, v27, type metadata accessor for LeadingTitle);
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(v27, a2 + v12[5], type metadata accessor for LeadingTitle);
    v33 = (a2 + v12[6]);
    *v33 = v28;
    v33[1] = v29;
    v35 = v54;
    v34 = v55;
    *a2 = v57;
    *(a2 + v12[7]) = v30;
    v36 = v56;
    v37 = v50;
    *(a2 + v12[8]) = v51;
    *(a2 + v12[9]) = v37;
    v38 = (a2 + v12[10]);
    *v38 = v34;
    v38[1] = v35;
    v38[2] = v36;
    v38[3] = v22;
    v57 = v22;
    v38[4] = v59;
    v38[5] = v23;
    v39 = v52;
    *(a2 + v12[11]) = v53;
    *(a2 + v12[12]) = v39;
    v40 = v27;
    if (v23 >= 2)
    {
      v41 = *(*v23 + 176);

      v41(v42);
      outlined consume of LeadingBadge?(v34, v35, v36, v57, v59, v23);
    }

    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v40, type metadata accessor for LeadingTitle);
    a1 = v58;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    *a2 = 0;
    v43 = (a2 + v12[5]);
    *v43 = 0;
    v43[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    v44 = (a2 + v12[6]);
    *v44 = 0;
    v44[1] = 0;
    *(a2 + v12[7]) = 0;
    *(a2 + v12[8]) = 0;
    *(a2 + v12[9]) = 0;
    v45 = a2 + v12[10];
    *v45 = 0u;
    *(v45 + 1) = 0u;
    *(v45 + 4) = 0;
    *(v45 + 5) = 1;
    type metadata accessor for OutlineExpansionState(0);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 20) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    ObservationRegistrar.init()();
    *(a2 + v12[11]) = v46;
    type metadata accessor for OutlineProgressStateReference();
    v47 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    *(a2 + v12[12]) = v47;
  }

  return outlined init with take of Column(a1, a2 + v12[17], type metadata accessor for Column);
}

double LeadingView.leadingIndentationSpacing()()
{
  v1 = type metadata accessor for ContentSizeCategory();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + *(type metadata accessor for LeadingView(0) + 28));
  LeadingView.browserConfiguration.getter();
  v8 = dbl_249BB9858[v7];
  LeadingView.sizeCategory.getter(v5);
  v9 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v2 + 8))(v5, v1);
  if (v9)
  {
    v10 = [objc_opt_self() defaultMetrics];
    [v10 scaledValueForValue_];
    v8 = v11;
  }

  return vcvtd_n_f64_s64(v6, 1uLL) * v8;
}

uint64_t LeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v48 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
  MEMORY[0x28223BE20](v50, v6);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAA6HStackVyAIyAKyAA6SpacerVAA12_FrameLayoutVG_AIyACyAKyAKyAKyAKyAKyAA6ButtonVyAIyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AOSgtGGAQGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GARG_ARSgtGSgACyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableH0VyA36_08DOCImageh9ContainerH0CGAQGAA08_OverlayS0VyAKyAKyAvQGAA07_OffsetW0VGGGAA08_PaddingM0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAGyAIyAKyAKyAKyAKyAA4TextVAXyA64_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0H0PAAE12labelsHiddenQryFQOyAA08ProgressH0VyAA05EmptyH0VA85_G_Qo_A55_GSgAKyAKyAKyA64_A73_GA0_GA77_GSgtGGA55_GAoKyAKyAKyA38_ySo014DOCChainedTagsH0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusH0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgARtGGA52_GAA024_SafeAreaRegionsIgnoringM0VG_AKyAMyAIyAR_A92_tGGA52_GSgtGGA120__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAA6HStackVyAIyAKyAA6SpacerVAA12_FrameLayoutVG_AIyACyAKyAKyAKyAKyAKyAA6ButtonVyAIyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AOSgtGGAQGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GARG_ARSgtGSgACyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableH0VyA36_08DOCImageh9ContainerH0CGAQGAA08_OverlayS0VyAKyAKyAvQGAA07_OffsetW0VGGGAA08_PaddingM0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAGyAIyAKyAKyAKyAKyAA4TextVAXyA64_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0H0PAAE12labelsHiddenQryFQOyAA08ProgressH0VyAA05EmptyH0VA85_G_Qo_A55_GSgAKyAKyAKyA64_A73_GA0_GA77_GSgtGGA55_GAoKyAKyAKyA38_ySo014DOCChainedTagsH0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusH0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgARtGGA52_GAA024_SafeAreaRegionsIgnoringM0VG_AKyAMyAIyAR_A92_tGGA52_GSgtGGA120__GMR);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMR);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v48 - v23;
  if (LeadingView.subtitleShouldStackOverImageAndTitle()())
  {
    *v24 = static HorizontalAlignment.leading.getter();
    *(v24 + 1) = 0;
    v24[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyATyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAX5ScaleOGGAA15_RotationEffectVGAA010_AnimationT0VySbGGA10_G_AOSgtGGAQGAZyAA0O11BorderShapeVGGAA016_ForegroundStyleT0VyAA13AnyShapeStyleVGGAA023AccessibilityAttachmentT0VGA22_GARG_ARSgtGSgATyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA38_08DOCImaged9ContainerD0CGAQGAA08_OverlayT0VyAKyAKyAxQGAA07_OffsetX0VGGGAA08_PaddingG0VGAA08_OpacityX0VGA57_GAKyAKyAKyA44_A54_GA57_GA57_GGSgAKyAA0F0VyAIyAKyAKyAKyAKyAA4TextVAZyA68_14TruncationModeOGGA38_07OutlineuT0VGAZySiSgGGA25_yAA22HierarchicalShapeStyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA89_G_Qo_A57_GSgAKyAKyAKyA68_A77_GA2_GA81_GSgtGGA57_GAoKyAKyAKyA40_ySo014DOCChainedTagsD0CGA54_GA57_GA57_GSgAKyAKyAKyA40_yA38_013DOCItemStatusD0CGA54_GA57_GA57_GSgAKyAKyAVyAXGA54_GA57_GSgARtGGA54_GAA024_SafeAreaRegionsIgnoringG0VG_AKyAMyAIyAR_A96_tGGA54_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyATyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAX5ScaleOGGAA15_RotationEffectVGAA010_AnimationT0VySbGGA10_G_AOSgtGGAQGAZyAA0O11BorderShapeVGGAA016_ForegroundStyleT0VyAA13AnyShapeStyleVGGAA023AccessibilityAttachmentT0VGA22_GARG_ARSgtGSgATyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA38_08DOCImaged9ContainerD0CGAQGAA08_OverlayT0VyAKyAKyAxQGAA07_OffsetX0VGGGAA08_PaddingG0VGAA08_OpacityX0VGA57_GAKyAKyAKyA44_A54_GA57_GA57_GGSgAKyAA0F0VyAIyAKyAKyAKyAKyAA4TextVAZyA68_14TruncationModeOGGA38_07OutlineuT0VGAZySiSgGGA25_yAA22HierarchicalShapeStyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA89_G_Qo_A57_GSgAKyAKyAKyA68_A77_GA2_GA81_GSgtGGA57_GAoKyAKyAKyA40_ySo014DOCChainedTagsD0CGA54_GA57_GA57_GSgAKyAKyAKyA40_yA38_013DOCItemStatusD0CGA54_GA57_GA57_GSgAKyAKyAVyAXGA54_GA57_GSgARtGGA54_GAA024_SafeAreaRegionsIgnoringG0VG_AKyAMyAIyAR_A96_tGGA54_GSgtGGMR);
    closure #1 in LeadingView.body.getter(v1, &v24[*(v25 + 44)]);
    outlined init with copy of DOCGridLayout.Spec?(v24, v20, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A]( &lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedCon,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMR,  MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Mod();
    _ConditionalContent<>.init(storage:)();
    v26 = v24;
    v27 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd;
    v28 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMR;
  }

  else
  {
    v48[0] = v17;
    v48[1] = v21;
    v49 = v9;
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMR);
    closure #1 in LeadingView.leadingContent.getter(v1, &v5[*(v29 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    v31 = static Edge.Set.top.getter();
    *(inited + 32) = v31;
    v32 = static Edge.Set.bottom.getter();
    *(inited + 33) = v32;
    v33 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v31)
    {
      v33 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v32)
    {
      v33 = Edge.Set.init(rawValue:)();
    }

    v34 = v49;
    EdgeInsets.init(_all:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    outlined init with take of (key: URL, value: FPItem)(v5, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
    v43 = &v8[*(v50 + 36)];
    *v43 = v33;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    v44 = static SafeAreaRegions.all.getter();
    v45 = static Edge.Set.all.getter();
    outlined init with take of (key: URL, value: FPItem)(v8, v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
    v46 = &v12[*(v34 + 36)];
    *v46 = v44;
    v46[8] = v45;
    outlined init with take of (key: URL, value: FPItem)(v12, v16, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
    outlined init with copy of DOCGridLayout.Spec?(v16, v20, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A]( &lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedCon,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMR,  MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Mod();
    _ConditionalContent<>.init(storage:)();
    v26 = v16;
    v27 = &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd;
    v28 = &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR;
  }

  return outlined destroy of CharacterSet?(v26, v27, v28);
}

Swift::Bool __swiftcall LeadingView.subtitleShouldStackOverImageAndTitle()()
{
  v36 = type metadata accessor for UserInterfaceSizeClass();
  v0 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v33 - v16);
  v18 = type metadata accessor for ContentSizeCategory();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  LeadingView.sizeCategory.getter(v22);
  v23 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    v27 = 0;
    return v27 & 1;
  }

  LeadingView.sizeClass.getter(v17);
  v24 = v36;
  (*(v0 + 104))(v13, *MEMORY[0x277CE0558], v36);
  (*(v0 + 56))(v13, 0, 1, v24);
  v25 = *(v3 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v17, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v13, &v6[v25], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v26 = *(v0 + 48);
  if (v26(v6, 1, v24) != 1)
  {
    v28 = v35;
    outlined init with copy of DOCGridLayout.Spec?(v6, v35, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v26(&v6[v25], 1, v24) != 1)
    {
      v29 = v34;
      (*(v0 + 32))(v34, &v6[v25], v24);
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = v28;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v0 + 8);
      v31(v29, v24);
      outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v31(v30, v24);
      outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return v27 & 1;
    }

    outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v0 + 8))(v28, v24);
    goto LABEL_8;
  }

  outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v26(&v6[v25], 1, v24) != 1)
  {
LABEL_8:
    outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v27 = 0;
    return v27 & 1;
  }

  outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v27 = 1;
  return v27 & 1;
}

uint64_t closure #1 in LeadingView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v60 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
  MEMORY[0x28223BE20](v61, v7);
  v9 = &v60 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  MEMORY[0x28223BE20](v62, v10);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v66 = &v60 - v18;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMR) + 44)];
  v63 = a1;
  closure #1 in LeadingView.leadingContent.getter(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9FA70;
  v21 = static Edge.Set.top.getter();
  *(v20 + 32) = v21;
  v22 = static Edge.Set.bottom.getter();
  *(v20 + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  outlined init with take of (key: URL, value: FPItem)(v6, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
  v32 = &v9[*(v61 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static SafeAreaRegions.all.getter();
  v34 = static Edge.Set.all.getter();
  outlined init with take of (key: URL, value: FPItem)(v9, v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
  v35 = &v15[*(v62 + 36)];
  *v35 = v33;
  v35[8] = v34;
  outlined init with take of (key: URL, value: FPItem)(v15, v66, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  if (*(v63 + *(type metadata accessor for LeadingView(0) + 24) + 8))
  {
    v36 = static VerticalAlignment.center.getter();
    v68 = 1;
    closure #1 in closure #1 in LeadingView.body.getter(&v96);
    v74 = v101;
    v75 = v102;
    v76[0] = v103[0];
    *(v76 + 12) = *(v103 + 12);
    v71 = v98;
    v72 = v99;
    v73 = v100;
    v69 = v96;
    v70 = v97;
    v87 = v101;
    v88 = v102;
    v89[0] = v103[0];
    *(v89 + 12) = *(v103 + 12);
    v84 = v98;
    v85 = v99;
    v86 = v100;
    v82 = v96;
    v83 = v97;
    outlined init with copy of DOCGridLayout.Spec?(&v69, &v91, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMR);
    outlined destroy of CharacterSet?(&v82, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMR);
    *&v67[87] = v74;
    *&v67[103] = v75;
    *&v67[119] = v76[0];
    *&v67[131] = *(v76 + 12);
    *&v67[23] = v70;
    *&v67[39] = v71;
    *&v67[55] = v72;
    *&v67[71] = v73;
    *&v67[7] = v69;
    v37 = v68;
    v38 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *(&v92[6] + 1) = *&v67[96];
    *(&v92[7] + 1) = *&v67[112];
    *(&v92[8] + 1) = *&v67[128];
    *(&v92[2] + 1) = *&v67[32];
    *(&v92[3] + 1) = *&v67[48];
    *(&v92[4] + 1) = *&v67[64];
    *(&v92[5] + 1) = *&v67[80];
    *(v92 + 1) = *v67;
    v91 = v36;
    LOBYTE(v92[0]) = v37;
    LODWORD(v92[9]) = *&v67[143];
    *(&v92[1] + 1) = *&v67[16];
    BYTE8(v92[9]) = v38;
    *&v93 = v39;
    *(&v93 + 1) = v40;
    *&v94 = v41;
    *(&v94 + 1) = v42;
    v95 = 0;
    DOCGridLayout.specIconWidth.modify();
    v105 = v92[9];
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v102 = v92[5];
    v103[0] = v92[6];
    v103[1] = v92[7];
    v104 = v92[8];
    v98 = v92[1];
    v99 = v92[2];
    v100 = v92[3];
    v101 = v92[4];
    v96 = v91;
    v97 = v92[0];
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgWOi0_(&v96);
  }

  v44 = v65;
  v43 = v66;
  outlined init with copy of DOCGridLayout.Spec?(v66, v65, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  v78 = v105;
  v79 = v106;
  v80 = v107;
  v81 = v108;
  v75 = v102;
  v76[0] = v103[0];
  v76[1] = v103[1];
  v77 = v104;
  v71 = v98;
  v72 = v99;
  v73 = v100;
  v74 = v101;
  v69 = v96;
  v70 = v97;
  v45 = v64;
  outlined init with copy of DOCGridLayout.Spec?(v44, v64, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VG_ACyAEyAGyAL_A90_tGGA48_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VG_ACyAEyAGyAL_A90_tGGA48_GSgtMR) + 48);
  v47 = v77;
  v89[3] = v78;
  v89[4] = v79;
  v48 = v79;
  v89[5] = v80;
  v49 = v75;
  v50 = v74;
  v88 = v75;
  v89[0] = v76[0];
  v51 = v76[0];
  v52 = v76[1];
  v89[1] = v76[1];
  v89[2] = v77;
  v53 = v72;
  v54 = v73;
  v86 = v73;
  v87 = v74;
  v55 = v71;
  v56 = v70;
  v84 = v71;
  v85 = v72;
  v57 = v69;
  v82 = v69;
  v83 = v70;
  v58 = v45 + v46;
  *(v58 + 160) = v78;
  *(v58 + 176) = v48;
  *(v58 + 192) = v80;
  *(v58 + 96) = v49;
  *(v58 + 112) = v51;
  *(v58 + 128) = v52;
  *(v58 + 144) = v47;
  *(v58 + 32) = v55;
  *(v58 + 48) = v53;
  *(v58 + 64) = v54;
  *(v58 + 80) = v50;
  v90 = v81;
  *(v58 + 208) = v81;
  *v58 = v57;
  *(v58 + 16) = v56;
  outlined init with copy of DOCGridLayout.Spec?(&v82, &v91, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMR);
  outlined destroy of CharacterSet?(v43, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  v92[9] = v78;
  v93 = v79;
  v94 = v80;
  v95 = v81;
  v92[5] = v75;
  v92[6] = v76[0];
  v92[7] = v76[1];
  v92[8] = v77;
  v92[1] = v71;
  v92[2] = v72;
  v92[3] = v73;
  v92[4] = v74;
  v91 = v69;
  v92[0] = v70;
  outlined destroy of CharacterSet?(&v91, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMR);
  return outlined destroy of CharacterSet?(v44, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
}

uint64_t LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMR);
  closure #1 in LeadingView.leadingContent.getter(v2, &v7[*(v12 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v14 = static Edge.Set.top.getter();
  *(inited + 32) = v14;
  v15 = static Edge.Set.bottom.getter();
  *(inited + 33) = v15;
  v16 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined init with take of (key: URL, value: FPItem)(v7, v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMR);
  v25 = &v11[*(v8 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = static SafeAreaRegions.all.getter();
  v27 = static Edge.Set.all.getter();
  outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMR);
  v29 = a1 + *(result + 36);
  *v29 = v26;
  *(v29 + 8) = v27;
  return result;
}

uint64_t closure #1 in closure #1 in LeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = v21;
  v4 = v23;
  v5 = v25;
  v6 = v26;
  v29 = 1;
  v28 = v22;
  v27 = v24;
  LeadingView.subtitleView.getter(&v17);
  v7 = v29;
  v8 = v28;
  v9 = v27;
  v10 = v18;
  v30[1] = v18;
  v11 = v19;
  v30[2] = v19;
  v12 = v20[0];
  v31[0] = v20[0];
  *(v31 + 12) = *(v20 + 12);
  v13 = v17;
  v30[0] = v17;
  *a1 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v8;
  *(a1 + 32) = v4;
  *(a1 + 40) = v9;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v14 = *(v20 + 12);
  *(a1 + 124) = *(v20 + 12);
  *(a1 + 64) = v13;
  *(a1 + 80) = v10;
  v32[1] = v10;
  v32[2] = v11;
  v33[0] = v12;
  *(v33 + 12) = v14;
  v32[0] = v13;
  outlined init with copy of DOCGridLayout.Spec?(v30, v16, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMR);
  return outlined destroy of CharacterSet?(v32, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMR);
}

uint64_t LeadingView.subtitleView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LeadingView(0);
  v9 = (v1 + *(result + 24));
  v10 = v9[1];
  if (v10)
  {
    v11 = result;
    v32 = *v9;
    v33 = v10;
    lazy protocol witness table accessor for type String and conformance String();

    v12 = Text.init<A>(_:)();
    v28 = v13;
    v29 = v12;
    v15 = v14;
    v31 = v16;
    KeyPath = swift_getKeyPath();
    v30 = static Font.footnote.getter();
    v18 = swift_getKeyPath();
    v19 = v15 & 1;
    v36 = v15 & 1;
    v35 = 0;
    v20 = v1 + *(v11 + 64);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      if ((v21 & 1) == 0)
      {
LABEL_4:
        result = static HierarchicalShapeStyle.secondary.getter();
LABEL_7:
        v25 = v28;
        *a1 = v29;
        *(a1 + 8) = v25;
        *(a1 + 16) = v19;
        *(a1 + 17) = v32;
        *(a1 + 20) = *(&v32 + 3);
        *(a1 + 24) = v31;
        *(a1 + 32) = KeyPath;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        *(a1 + 49) = *v34;
        *(a1 + 52) = *&v34[3];
        v26 = v30;
        *(a1 + 56) = v18;
        *(a1 + 64) = v26;
        *(a1 + 72) = result;
        return result;
      }
    }

    else
    {

      v22 = static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v22, &dword_2493AC000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v24 = outlined consume of Environment<Bool>.Content(v21, 0);
      (*(v4 + 8))(v7, v3, v24);
      if (v32 != 1)
      {
        goto LABEL_4;
      }
    }

    result = static HierarchicalShapeStyle.quaternary.getter();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LeadingView.leadingContent.getter@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v429 = a2;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v406, v3);
  v415 = &v371 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
  v427 = *(v5 - 8);
  v428 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v408 = &v371 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v407 = &v371 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v437 = &v371 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v439 = &v371 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v433 = (&v371 - v19);
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  MEMORY[0x28223BE20](v432, v20);
  v436 = &v371 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v431 = &v371 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v440 = &v371 - v27;
  v28 = type metadata accessor for EnvironmentValues();
  v417 = *(v28 - 8);
  v418 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v416 = &v371 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Image.ResizingMode();
  v378 = *(v31 - 8);
  v379 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v377 = &v371 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMR));
  v422 = *(*&v430 - 8);
  MEMORY[0x28223BE20](*&v430, v34);
  v419 = &v371 - v35;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA6ButtonVyAA9TupleViewVyACyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAA15_RotationEffectVGAA010_AnimationN0VySbGGA_G_AA6SpacerVSgtGGAA12_FrameLayoutVGAOyAA0G11BorderShapeVGGAA016_ForegroundStyleN0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentN0VGA15_GAGyA6_A11_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA6ButtonVyAA9TupleViewVyACyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAA15_RotationEffectVGAA010_AnimationN0VySbGGA_G_AA6SpacerVSgtGGAA12_FrameLayoutVGAOyAA0G11BorderShapeVGGAA016_ForegroundStyleN0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentN0VGA15_GAGyA6_A11_G_GMR);
  MEMORY[0x28223BE20](v412, v36);
  v414 = &v371 - v37;
  v381 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v381, v38);
  v380 = &v371 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = type metadata accessor for LeadingView(0);
  v392 = *(v442 - 1);
  MEMORY[0x28223BE20](v442, v40);
  v393 = v41;
  v394 = &v371 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMR);
  MEMORY[0x28223BE20](v395, v42);
  v396 = &v371 - v43;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMR);
  MEMORY[0x28223BE20](v401, v44);
  v400 = &v371 - v45;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMR);
  MEMORY[0x28223BE20](v399, v46);
  v397 = &v371 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v402 = &v371 - v50;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMR);
  MEMORY[0x28223BE20](v411, v51);
  v398 = &v371 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v403 = &v371 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMR);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v413 = &v371 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v421 = &v371 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMR);
  MEMORY[0x28223BE20](v62 - 8, v63);
  v435 = &v371 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v441 = &v371 - v67;
  v434 = type metadata accessor for ContentSizeCategory();
  v438 = *(v434 - 8);
  MEMORY[0x28223BE20](v434, v68);
  v409 = (&v371 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v70, v71);
  v426 = (&v371 - v72);
  v73 = type metadata accessor for UserInterfaceSizeClass();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v75);
  v405 = &v371 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  MEMORY[0x28223BE20](v77, v78);
  v404 = (&v371 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v80, v81);
  v375 = &v371 - v82;
  MEMORY[0x28223BE20](v83, v84);
  v86 = &v371 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x28223BE20](v87 - 8, v88);
  v376 = &v371 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v91);
  v390 = &v371 - v92;
  MEMORY[0x28223BE20](v93, v94);
  v391 = (&v371 - v95);
  MEMORY[0x28223BE20](v96, v97);
  v372 = &v371 - v98;
  MEMORY[0x28223BE20](v99, v100);
  v373 = &v371 - v101;
  MEMORY[0x28223BE20](v102, v103);
  v374 = (&v371 - v104);
  MEMORY[0x28223BE20](v105, v106);
  v108 = &v371 - v107;
  MEMORY[0x28223BE20](v109, v110);
  v112 = &v371 - v111;
  MEMORY[0x28223BE20](v113, v114);
  v116 = &v371 - v115;
  v443 = a1;
  LeadingView.sizeClass.getter((&v371 - v115));
  v117 = v74[13];
  v382 = *MEMORY[0x277CE0558];
  v383 = v117;
  v384 = v74 + 13;
  v117(v112);
  v385 = v74[7];
  v386 = v74 + 7;
  v385(v112, 0, 1, v73);
  v389 = v77;
  v118 = *(v77 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v116, v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v112, &v86[v118], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v420 = v74;
  v119 = v74[6];
  v120 = v119(v86, 1, v73);
  v410 = v73;
  v387 = v119;
  v388 = v74 + 6;
  if (v120 == 1)
  {
    outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v119(&v86[v118], 1, v73) == 1)
    {
      outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(v86, v108, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v119(&v86[v118], 1, v73) == 1)
  {
    outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (v420[1])(v108, v73);
LABEL_6:
    outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_8;
  }

  v121 = v420;
  v122 = v405;
  (v420[4])(v405, &v86[v118], v73);
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v425) = dispatch thunk of static Equatable.== infix(_:_:)();
  v123 = v121[1];
  v123(v122, v73);
  outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v123(v108, v410);
  outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_8:
  v124 = v443;
  v125 = v438;
  LeadingView.browserConfiguration.getter();
  v127 = dbl_249BB9858[v126];
  v128 = v426;
  LeadingView.sizeCategory.getter(v426);
  v129 = ContentSizeCategory.isAccessibilityCategory.getter();
  v132 = *(v125 + 8);
  v130 = v125 + 8;
  v131 = v132;
  (v132)(v128, v434);
  if (v129)
  {
    v133 = [objc_opt_self() defaultMetrics];
    [v133 scaledValueForValue_];
  }

  LeadingView.leadingIndentationSpacing()();
  static Alignment.center.getter();
  v134 = 1;
  v135 = _FrameLayout.init(width:height:alignment:)();
  v425 = v536;
  v426 = v534;
  v423 = v539;
  v424 = v538;
  v533 = 1;
  v532 = v535;
  v531 = v537;
  v136 = *(v124 + v442[11]);
  if ((*(*v136 + 256))(v135))
  {
    if ((*(*v136 + 208))())
    {
      v137 = v394;
      _s26DocumentManagerExecutables6ColumnOWOcTm_0(v124, v394, type metadata accessor for LeadingView);
      v138 = (*(v392 + 80) + 16) & ~*(v392 + 80);
      v139 = swift_allocObject();
      v140 = outlined init with take of Column(v137, v139 + v138, type metadata accessor for LeadingView);
      MEMORY[0x28223BE20](v140, v141);
      *(&v371 - 2) = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMR, MEMORY[0x277CE14C0]);
      v142 = v396;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v143 = &v142[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMR) + 36)];
      v144 = v541;
      *v143 = v540;
      *(v143 + 1) = v144;
      *(v143 + 2) = v542;
      v145 = &v142[*(v395 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR);
      static ButtonBorderShape.circle.getter();
      *v145 = swift_getKeyPath();
      if ((*(*v136 + 304))())
      {
        LODWORD(v517) = static HierarchicalShapeStyle.secondary.getter();
      }

      else
      {
        TintShapeStyle.init()();
      }

      v151 = AnyShapeStyle.init<A>(_:)();
      v152 = v142;
      v153 = v400;
      outlined init with take of (key: URL, value: FPItem)(v152, v400, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMR);
      *(v153 + *(v401 + 36)) = v151;
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
      v154 = v397;
      View.accessibilityIdentifier(_:)();
      outlined destroy of CharacterSet?(v153, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMR);
      v155 = v402;
      ModifiedContent<>.accessibilityHidden(_:)();
      outlined destroy of CharacterSet?(v154, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMR);
      v156 = v398;
      v157 = &v398[*(v411 + 36)];
      static ButtonBorderShape.circle.getter();
      *v157 = swift_getKeyPath();
      outlined init with take of (key: URL, value: FPItem)(v155, v156, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMR);
      v158 = v156;
      v159 = v403;
      outlined init with take of (key: URL, value: FPItem)(v158, v403, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMR);
      outlined init with copy of DOCGridLayout.Spec?(v159, v414, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CharacterSet?(v159, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMR);
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v146 = v540;
      v147 = BYTE8(v540);
      v148 = v541;
      v149 = BYTE8(v541);
      LOBYTE(v517) = 1;
      LOBYTE(v503) = BYTE8(v540);
      LOBYTE(v479) = BYTE8(v541);
      v150 = v414;
      *v414 = 0;
      v150[8] = 1;
      *(v150 + 2) = v146;
      v150[24] = v147;
      *(v150 + 4) = v148;
      v150[40] = v149;
      *(v150 + 3) = v542;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    v414 = v131;
    v438 = v130;
    if (UIAccessibilityButtonShapesEnabled())
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      LODWORD(v412) = 0;
      v160 = v543;
      v402 = v545;
      v403 = v547;
      v411 = v548;
      LOBYTE(v503) = 1;
      LOBYTE(v479) = v544;
      LOBYTE(v467) = v546;
      v161 = 1;
      v162 = v544;
      v163 = v546;
      LOBYTE(v517) = 0;
    }

    else
    {
      v162 = 0;
      v163 = 0;
      v411 = 0;
      v402 = 0;
      v403 = 0;
      v160 = 0;
      v161 = 0;
      LODWORD(v412) = 1;
    }

    v164 = v421;
    v165 = v413;
    outlined init with copy of DOCGridLayout.Spec?(v421, v413, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMR);
    v166 = v419;
    outlined init with copy of DOCGridLayout.Spec?(v165, v419, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMR);
    v167 = v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GG_A25_SgtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GG_A25_SgtMR) + 48);
    *v167 = 0;
    *(v167 + 8) = v161;
    *(v167 + 16) = v160;
    *(v167 + 24) = v162;
    v168 = v403;
    *(v167 + 32) = v402;
    *(v167 + 40) = v163;
    v169 = v411;
    *(v167 + 48) = v168;
    *(v167 + 56) = v169;
    *(v167 + 64) = v412;
    outlined destroy of CharacterSet?(v164, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMR);
    outlined destroy of CharacterSet?(v165, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMR);
    outlined init with take of (key: URL, value: FPItem)(v166, v441, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMR);
    v134 = 0;
    v124 = v443;
    v130 = v438;
    v131 = v414;
  }

  (*(*&v422 + 56))(v441, v134, 1, COERCE_DOUBLE(*&v430));
  v170 = v442;
  v171 = (v124 + v442[10]);
  v172 = v171[5];
  if (v172 < 2 || (v173 = v171[4], (v173 & 1) != 0))
  {
LABEL_32:
    if (!*v124)
    {
      _s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgWOi0_(&v517);
      goto LABEL_49;
    }

    v210 = *v124;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v211) = v556;
    v438 = v557;
    LODWORD(v212) = v558;
    v430 = *&v559;
    v421 = v555;
    v422 = *&v560;
    LODWORD(v419) = static Edge.Set.trailing.getter();
    v213 = EdgeInsets.init(_all:)();
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v221 = v220;
    LOBYTE(v467) = v211;
    LOBYTE(v450) = v212;
    LOBYTE(v444) = 0;
    if ((*(**(v124 + v170[18]) + 120))(v213))
    {
      LODWORD(v414) = v212;
      v212 = v409;
      LeadingView.sizeCategory.getter(v409);
      v222 = ContentSizeCategory.isAccessibilityCategory.getter();
      v223 = v212;
      LOBYTE(v212) = v414;
      (v131)(v223, v434);
      if (v222)
      {
        LODWORD(v413) = v211;
        v434 = v210;
        v211 = v391;
        LeadingView.sizeClass.getter(v391);
        v224 = v390;
        v225 = v410;
        v383(v390, v382, v410);
        v385(v224, 0, 1, v225);
        v226 = *(v389 + 48);
        v212 = v404;
        outlined init with copy of DOCGridLayout.Spec?(v211, v404, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        outlined init with copy of DOCGridLayout.Spec?(v224, v212 + v226, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
        v227 = v387;
        if (v387(v212, 1, v225) == 1)
        {
          outlined destroy of CharacterSet?(v224, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
          outlined destroy of CharacterSet?(v211, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
          v228 = v227(v404 + v226, 1, v225);
          v212 = v404;
          v210 = v434;
          LOBYTE(v211) = v413;
          if (v228 == 1)
          {
            outlined destroy of CharacterSet?(v404, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
            v229 = 0.0;
            v124 = v443;
            v170 = v442;
            LOBYTE(v212) = v414;
LABEL_43:
            v231 = v124 + v170[16];
            v232 = *v231;
            if (v231[8] != 1)
            {

              v233 = static os_log_type_t.fault.getter();
              v234 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)(v233, &dword_2493AC000, v234, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

              v124 = v443;
              v235 = v416;
              EnvironmentValues.init()();
              swift_getAtKeyPath();
              v236 = outlined consume of Environment<Bool>.Content(v232, 0);
              (*(v417 + 8))(v235, v418, v236);
              LOBYTE(v232) = v517;
            }

            v237 = 0.35;
            *&v479 = v210;
            *(&v479 + 1) = v421;
            if ((v232 & 1) == 0)
            {
              v237 = 1.0;
            }

            LOBYTE(v480) = v211;
            *(&v480 + 1) = v438;
            LOBYTE(v481) = v212;
            *(&v481 + 1) = v430;
            *&v482 = v422;
            BYTE8(v482) = v419;
            *&v483 = v215;
            *(&v483 + 1) = v217;
            *&v484 = v219;
            *(&v484 + 1) = v221;
            LOBYTE(v485) = 0;
            *(&v485 + 1) = v229;
            *&v486 = v237;
            _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGy26DocumentManagerExecutables16DOCReuseableViewVyAH08DOCImagek9ContainerK0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAGyAA5ImageVAOGAA13_OffsetEffectVGGGAA08_PaddingO0VGAA08_OpacityT0VGA3_GAGyAGyAGyAPA0_GA3_GA3_G_GWOi0_(&v479);
            v513 = v489;
            v514 = v490;
            v515 = v491;
            v516 = v492;
            v509 = v485;
            v510 = v486;
            v511 = v487;
            v512 = v488;
            v505 = v481;
            v506 = v482;
            v507 = v483;
            v508 = v484;
            v503 = v479;
            v504 = v480;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMR);
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
            _ConditionalContent<>.init(storage:)();
            v513 = v527;
            v514 = v528;
            v515 = v529;
            v516 = v530;
            v509 = v523;
            v510 = v524;
            v511 = v525;
            v512 = v526;
            v505 = v519;
            v506 = v520;
            v507 = v521;
            v508 = v522;
            v503 = v517;
            v504 = v518;
            DOCGridLayout.specIconWidth.modify();
            v527 = v513;
            v528 = v514;
            v529 = v515;
            v530 = v516;
            v523 = v509;
            v524 = v510;
            v525 = v511;
            v526 = v512;
            v519 = v505;
            v520 = v506;
            v521 = v507;
            v522 = v508;
            v517 = v503;
            v518 = v504;
            goto LABEL_48;
          }
        }

        else
        {
          v230 = v376;
          outlined init with copy of DOCGridLayout.Spec?(v212, v376, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
          if (v227(v212 + v226, 1, v225) != 1)
          {
            v355 = v420;
            v356 = v212 + v226;
            v357 = v405;
            (v420[4])(v405, v356, v225);
            lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
            v358 = dispatch thunk of static Equatable.== infix(_:_:)();
            v359 = v355[1];
            v359(v357, v225);
            outlined destroy of CharacterSet?(v390, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
            outlined destroy of CharacterSet?(v391, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
            v359(v230, v225);
            outlined destroy of CharacterSet?(v212, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
            v229 = 0.0;
            v124 = v443;
            v170 = v442;
            v210 = v434;
            LOBYTE(v211) = v413;
            LOBYTE(v212) = v414;
            if (v358)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          outlined destroy of CharacterSet?(v390, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
          outlined destroy of CharacterSet?(v391, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
          (v420[1])(v230, v225);
          v210 = v434;
          LOBYTE(v211) = v413;
        }

        outlined destroy of CharacterSet?(v212, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
        v124 = v443;
        v170 = v442;
        LOBYTE(v212) = v414;
      }
    }

LABEL_42:
    v229 = 1.0;
    goto LABEL_43;
  }

  v174 = *v171;
  v421 = v171[1];
  v422 = *&v174;
  v176 = v171[2];
  v175 = v171[3];
  v419 = v176;
  v430 = *&v175;
  v177 = *(*v172 + 144);

  v179 = v177(v178);
  if (!v179)
  {
LABEL_31:
    outlined consume of LeadingBadge?(*&v422, v421, v419, *&v430, v173, v172);
    v170 = v442;
    goto LABEL_32;
  }

  v180 = v179;
  v181 = *v124;
  if (!*v124)
  {

    goto LABEL_31;
  }

  v414 = v131;
  v438 = v130;
  v182 = v430;
  v412 = v181;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v401) = v550;
  v411 = v551;
  LODWORD(v400) = v552;
  v404 = v553;
  v402 = v549;
  v403 = v554;
  v183 = static Alignment.bottomTrailing.getter();
  v190 = v184;
  v413 = v180;
  Image.init(uiImage:)();
  v185 = v377;
  v186 = v378;
  v189 = v379;
  (*(v378 + 104))(v377, *MEMORY[0x277CE0FE0], v379);
  v187 = Image.resizable(capInsets:resizingMode:)();
  v188 = v443;

  (*(v186 + 8))(v185, v189);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v503) = v517;
  *(&v503 + 3) = *(&v517 + 3);
  LODWORD(v479) = v467;
  *(&v479 + 3) = *(&v467 + 3);
  DWORD1(v445) = *(&v517 + 3);
  *(&v445 + 1) = v503;
  DWORD1(v446) = *(&v467 + 3);
  *(&v446 + 1) = v479;
  *&v444 = v187;
  *(&v444 + 1) = v555;
  LOBYTE(v445) = v556;
  *(&v445 + 1) = v557;
  LOBYTE(v446) = v558;
  *(&v446 + 1) = v559;
  *&v447 = v560;
  *(&v447 + 1) = v419;
  *&v448 = -v182;
  *(&v448 + 1) = v183;
  v449 = v190;
  LOBYTE(v467) = v401;
  LOBYTE(v493) = v400;
  v466 = v190;
  v465 = v448;
  v464 = v447;
  v463 = v446;
  v462 = v445;
  v461 = v444;
  v450 = v187;
  v451 = v555;
  LOBYTE(v452) = v556;
  HIDWORD(v452) = *(&v517 + 3);
  *(&v452 + 1) = v503;
  v453 = v557;
  LOBYTE(v454) = v558;
  HIDWORD(v454) = *(&v467 + 3);
  *(&v454 + 1) = v479;
  v455 = v559;
  v456 = v560;
  v457 = v419;
  v458 = -v182;
  v459 = v183;
  v460 = v190;
  outlined init with copy of DOCGridLayout.Spec?(&v444, &v517, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMR);
  outlined destroy of CharacterSet?(&v450, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMR);
  LODWORD(v401) = v467;
  LODWORD(v189) = v493;
  LODWORD(v190) = static Edge.Set.trailing.getter();
  v191 = EdgeInsets.init(_all:)();
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v199 = v198;
  LOBYTE(v498) = 0;
  v200 = v442;
  if (((*(**(v188 + v442[18]) + 120))(v191) & 1) == 0)
  {
    goto LABEL_102;
  }

  LODWORD(v400) = v189;
  v189 = v409;
  LeadingView.sizeCategory.getter(v409);
  v201 = ContentSizeCategory.isAccessibilityCategory.getter();
  v202 = v189;
  LOBYTE(v189) = v400;
  (v414)(v202, v434);
  if ((v201 & 1) == 0)
  {
    goto LABEL_102;
  }

  LODWORD(v438) = v190;
  v189 = v374;
  LeadingView.sizeClass.getter(v374);
  v203 = v373;
  v204 = v410;
  v383(v373, v382, v410);
  v385(v203, 0, 1, v204);
  v205 = *(v389 + 48);
  v206 = v375;
  outlined init with copy of DOCGridLayout.Spec?(v189, v375, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v434 = v205;
  outlined init with copy of DOCGridLayout.Spec?(v203, v206 + v205, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v190 = v387;
  if (v387(v206, 1, v204) != 1)
  {
    v360 = v372;
    outlined init with copy of DOCGridLayout.Spec?(v206, v372, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v189 = v434;
    if ((v190)(v206 + v434, 1, v204) != 1)
    {
      v368 = v420;
      v190 = v405;
      (v420[4])(v405, v189 + v206, v204);
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v369 = v206;
      LODWORD(v434) = dispatch thunk of static Equatable.== infix(_:_:)();
      v370 = v368[1];
      v370(v190, v204);
      outlined destroy of CharacterSet?(v373, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of CharacterSet?(v374, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v370(v360, v204);
      outlined destroy of CharacterSet?(v369, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v209 = 0.0;
      v188 = v443;
      v200 = v442;
      LOBYTE(v190) = v438;
      LOBYTE(v189) = v400;
      if (v434)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    outlined destroy of CharacterSet?(v373, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v207 = v375;
    outlined destroy of CharacterSet?(v374, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (v420[1])(v360, v204);
    LOBYTE(v190) = v438;
    LOBYTE(v189) = v400;
    goto LABEL_101;
  }

  outlined destroy of CharacterSet?(v203, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v207 = v375;
  outlined destroy of CharacterSet?(v189, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v208 = (v190)(v207 + v434, 1, v204);
  LOBYTE(v190) = v438;
  LOBYTE(v189) = v400;
  if (v208 != 1)
  {
LABEL_101:
    outlined destroy of CharacterSet?(v207, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v188 = v443;
    v200 = v442;
LABEL_102:
    v209 = 1.0;
    goto LABEL_103;
  }

  outlined destroy of CharacterSet?(v207, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v209 = 0.0;
  v188 = v443;
  v200 = v442;
LABEL_103:
  v361 = v188 + v200[16];
  v362 = *v361;
  if (v361[8] != 1)
  {

    v363 = static os_log_type_t.fault.getter();
    v364 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v363, &dword_2493AC000, v364, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    v365 = v416;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v366 = outlined consume of Environment<Bool>.Content(v362, 0);
    (*(v417 + 8))(v365, v418, v366);
    LOBYTE(v362) = v517;
  }

  v367 = 0.35;
  *&v467 = v412;
  *(&v467 + 1) = v402;
  if ((v362 & 1) == 0)
  {
    v367 = 1.0;
  }

  LOBYTE(v468) = v401;
  *(&v468 + 1) = v411;
  LOBYTE(v469) = v189;
  *(&v469 + 1) = v404;
  *&v470[0] = v403;
  *(&v470[2] + 8) = v463;
  *(&v470[3] + 8) = v464;
  *(&v470[4] + 8) = v465;
  *(&v470[5] + 1) = v466;
  *(v470 + 8) = v461;
  *(&v470[1] + 8) = v462;
  LOBYTE(v471) = v190;
  *(&v471 + 1) = v193;
  *&v472 = v195;
  *(&v472 + 1) = v197;
  *&v473 = v199;
  BYTE8(v473) = 0;
  *&v474 = v209;
  *(&v474 + 1) = v367;
  v485 = v470[3];
  v486 = v470[4];
  v481 = v469;
  v482 = v470[0];
  v483 = v470[1];
  v484 = v470[2];
  v479 = v467;
  v480 = v468;
  v487 = v470[5];
  v488 = v471;
  v489 = v472;
  v490 = v473;
  v491 = v474;
  _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGy26DocumentManagerExecutables16DOCReuseableViewVyAH08DOCImagek9ContainerK0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAGyAA5ImageVAOGAA13_OffsetEffectVGGGAA08_PaddingO0VGAA08_OpacityT0VGA3_GAGyAGyAGyAPA0_GA3_GA3_G_GWOi_(&v479);
  v513 = v489;
  v514 = v490;
  v515 = v491;
  v516 = v492;
  v509 = v485;
  v510 = v486;
  v511 = v487;
  v512 = v488;
  v505 = v481;
  v506 = v482;
  v507 = v483;
  v508 = v484;
  v503 = v479;
  v504 = v480;
  outlined init with copy of DOCGridLayout.Spec?(&v467, &v517, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of LeadingBadge?(*&v422, v421, v419, *&v430, v173, v172);

  outlined destroy of CharacterSet?(&v467, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMR);
  v513 = v527;
  v514 = v528;
  v515 = v529;
  v516 = v530;
  v509 = v523;
  v510 = v524;
  v511 = v525;
  v512 = v526;
  v505 = v519;
  v506 = v520;
  v507 = v521;
  v508 = v522;
  v503 = v517;
  v504 = v518;
  DOCGridLayout.specIconWidth.modify();
  v527 = v513;
  v528 = v514;
  v529 = v515;
  v530 = v516;
  v523 = v509;
  v524 = v510;
  v525 = v511;
  v526 = v512;
  v519 = v505;
  v520 = v506;
  v521 = v507;
  v522 = v508;
  v517 = v503;
  v518 = v504;
  v124 = v443;
LABEL_48:
  v170 = v442;
LABEL_49:
  v238 = static HorizontalAlignment.leading.getter();
  v239 = v433;
  *v433 = v238;
  *(v239 + 8) = 0;
  *(v239 + 16) = 1;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM14TruncationModeOGG26DocumentManagerExecutables011OutlineFontO0VGAOySiSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA11_G_Qo_AA14_OpacityEffectVGSgAKyAKyAKyAmYGAOyAA0V0VSgGGA3_GSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM14TruncationModeOGG26DocumentManagerExecutables011OutlineFontO0VGAOySiSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA11_G_Qo_AA14_OpacityEffectVGSgAKyAKyAKyAmYGAOyAA0V0VSgGGA3_GSgtGGMR);
  v241 = closure #4 in closure #1 in LeadingView.leadingContent.getter(v124, v239 + *(v240 + 44));
  v242 = *(**(v124 + v170[18]) + 120);
  v243 = 0;
  if ((v242)(v241))
  {
    v244 = 0.0;
  }

  else
  {
    v244 = 1.0;
  }

  v245 = v431;
  outlined init with take of (key: URL, value: FPItem)(v239, v431, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMR);
  *(v245 + *(v432 + 36)) = v244;
  v246 = outlined init with take of (key: URL, value: FPItem)(v245, v440, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  v247 = *(v124 + v170[9]);
  v438 = v247;
  if (!v247)
  {
    v433 = 0;
    v434 = 0;
    v422 = 0.0;
    v432 = 0;
    v252 = 0;
    v254 = 0;
    v256 = 0;
    v258 = 0;
    goto LABEL_66;
  }

  v248 = v247;
  v249 = static Edge.Set.trailing.getter();
  v250 = EdgeInsets.init(_all:)();
  v252 = v251;
  v254 = v253;
  v256 = v255;
  v258 = v257;
  v259 = (v242)(v250);
  LOBYTE(v503) = 0;
  v434 = 0;
  if ((v242() & 1) == 0)
  {
    v261 = v443 + v170[16];
    v262 = *v261;
    if (v261[8] == 1)
    {

      if ((v262 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {

      v263 = static os_log_type_t.fault.getter();
      v264 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v263, &dword_2493AC000, v264, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      v265 = v416;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v266 = outlined consume of Environment<Bool>.Content(v262, 0);
      v267 = v265;
      v170 = v442;
      (*(v417 + 8))(v267, v418, v266);

      if ((v479 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v260 = 0x3FD6666666666666;
    goto LABEL_62;
  }

LABEL_55:
  v260 = 0x3FF0000000000000;
LABEL_62:
  v422 = *&v260;
  v124 = v443;
  if (v259)
  {
    v268 = 0;
  }

  else
  {
    v268 = 0x3FF0000000000000;
  }

  v432 = v249;
  v433 = v268;
LABEL_66:
  v269 = *(v124 + v170[8]);
  if (!v269)
  {
    v420 = 0;
    v421 = 0;
    v430 = 0.0;
    v431 = 0;
    v419 = 0;
    v273 = 0;
    v274 = 0;
    v275 = 0;
    v276 = v428;
    goto LABEL_85;
  }

  v270 = *(**(v124 + v170[12]) + 88);
  v271 = v269;
  v272 = v270();
  if (!v272)
  {

    goto LABEL_72;
  }

  if ((*(*v272 + 128))())
  {

LABEL_72:
    v420 = 0;
    v421 = 0;
    v430 = 0.0;
    v431 = 0;
    v419 = 0;
    v273 = 0;
    v274 = 0;
    v275 = 0;
    v276 = v428;
    v124 = v443;
    v170 = v442;
    goto LABEL_85;
  }

  v277 = v271;
  v278 = static Edge.Set.trailing.getter();
  v279 = EdgeInsets.init(_all:)();
  v243 = v280;
  v273 = v281;
  v274 = v282;
  v275 = v283;
  v284 = (v242)(v279);
  LOBYTE(v503) = 0;
  v420 = 0;
  v285 = v242();
  v421 = v269;
  if ((v285 & 1) == 0)
  {
    v287 = v443 + v442[16];
    v288 = *v287;
    if (v287[8] == 1)
    {

      v276 = v428;
      if ((v288 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {

      v289 = static os_log_type_t.fault.getter();
      v290 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v289, &dword_2493AC000, v290, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      v291 = v416;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v292 = outlined consume of Environment<Bool>.Content(v288, 0);
      (*(v417 + 8))(v291, v418, v292);

      v276 = v428;
      if ((v479 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v286 = 0x3FD6666666666666;
    goto LABEL_81;
  }

  v276 = v428;
LABEL_75:
  v286 = 0x3FF0000000000000;
LABEL_81:
  v419 = v286;
  v124 = v443;
  v170 = v442;
  if (v284)
  {
    v293 = 0;
  }

  else
  {
    v293 = 0x3FF0000000000000;
  }

  *&v430 = v278;
  v431 = v293;
LABEL_85:
  v294 = (*(**(v124 + v170[12]) + 88))(v246);
  if (!v294)
  {
LABEL_90:
    v308 = 1;
    goto LABEL_96;
  }

  if (((*(*v294 + 128))(v294) & 1) == 0)
  {

    goto LABEL_90;
  }

  v442 = v258;
  v295 = v256;
  v296 = v254;

  v297 = v415;
  Button.init(action:label:)();
  v298 = v170;
  v299 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v300 = v297 + *(v406 + 36);
  *v300 = v299;
  *(v300 + 8) = v301;
  *(v300 + 16) = v302;
  *(v300 + 24) = v303;
  *(v300 + 32) = v304;
  *(v300 + 40) = 0;
  v305 = v443 + v298[16];
  v306 = *v305;
  v307 = v252;
  if (v305[8] == 1)
  {
  }

  else
  {

    v309 = static os_log_type_t.fault.getter();
    v310 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v309, &dword_2493AC000, v310, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    v311 = v416;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v312 = outlined consume of Environment<Bool>.Content(v306, 0);
    (*(v417 + 8))(v311, v418, v312);

    LOBYTE(v306) = v503;
  }

  if (v306)
  {
    v313 = 0.35;
  }

  else
  {
    v313 = 1.0;
  }

  v314 = v408;
  outlined init with take of (key: URL, value: FPItem)(v415, v408, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMR);
  *(v314 + *(v276 + 36)) = v313;
  v315 = v314;
  v316 = v407;
  outlined init with take of (key: URL, value: FPItem)(v315, v407, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
  outlined init with take of (key: URL, value: FPItem)(v316, v439, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
  v308 = 0;
  v252 = v307;
  v254 = v296;
  v256 = v295;
  v258 = v442;
LABEL_96:
  v317 = v439;
  (*(v427 + 56))(v439, v308, 1, v276);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v443 = v561;
  v442 = v563;
  v427 = v566;
  v428 = v565;
  v478 = 1;
  v477 = v562;
  v476 = v564;
  v318 = v533;
  v319 = v532;
  v320 = v531;
  v321 = v435;
  outlined init with copy of DOCGridLayout.Spec?(v441, v435, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMR);
  v472 = v527;
  v473 = v528;
  v474 = v529;
  v475 = v530;
  v470[3] = v523;
  v470[4] = v524;
  v470[5] = v525;
  v471 = v526;
  v469 = v519;
  v470[0] = v520;
  v470[1] = v521;
  v470[2] = v522;
  v467 = v517;
  v468 = v518;
  v322 = v436;
  outlined init with copy of DOCGridLayout.Spec?(v440, v436, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  outlined init with copy of DOCGridLayout.Spec?(v317, v437, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMR);
  LODWORD(v416) = v478;
  LODWORD(v417) = v477;
  LODWORD(v418) = v476;
  v323 = v429;
  *v429 = 0;
  *(v323 + 8) = v318;
  v324 = v425;
  v323[2] = v426;
  *(v323 + 24) = v319;
  v323[4] = v324;
  *(v323 + 40) = v320;
  v325 = v423;
  v323[6] = v424;
  v323[7] = v325;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAJyALyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAP5ScaleOGGAA15_RotationEffectVGAA010_AnimationP0VySbGGA2_G_AESgtGGAGGARyAA0K11BorderShapeVGGAA016_ForegroundStyleP0VyAA03AnywY0VGGAA023AccessibilityAttachmentP0VGA14_GAHG_AHSgtGSgALyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableI0VyA30_08DOCImagei9ContainerI0CGAGGAA08_OverlayP0VyACyACyApGGAA07_OffsetT0VGGGAA08_PaddingG0VGAA08_OpacityT0VGA49_GACyACyACyA36_A46_GA49_GA49_GGSgACyAA6VStackVyAJyACyACyACyACyAA4TextVARyA60_14TruncationModeOGGA30_07OutlineqP0VGARySiSgGGA17_yAA012HierarchicalwY0VGG_ACyAA0I0PAAE12labelsHiddenQryFQOyAA08ProgressI0VyAA05EmptyI0VA81_G_Qo_A49_GSgACyACyACyA60_A69_GAVGA73_GSgtGGA49_GAeCyACyACyA32_ySo014DOCChainedTagsI0CGA46_GA49_GA49_GSgACyACyACyA32_yA30_013DOCItemStatusI0CGA46_GA49_GA49_GSgACyACyANyAPGA46_GA49_GSgAHtMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAJyALyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAP5ScaleOGGAA15_RotationEffectVGAA010_AnimationP0VySbGGA2_G_AESgtGGAGGARyAA0K11BorderShapeVGGAA016_ForegroundStyleP0VyAA03AnywY0VGGAA023AccessibilityAttachmentP0VGA14_GAHG_AHSgtGSgALyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableI0VyA30_08DOCImagei9ContainerI0CGAGGAA08_OverlayP0VyACyACyApGGAA07_OffsetT0VGGGAA08_PaddingG0VGAA08_OpacityT0VGA49_GACyACyACyA36_A46_GA49_GA49_GGSgACyAA6VStackVyAJyACyACyACyACyAA4TextVARyA60_14TruncationModeOGGA30_07OutlineqP0VGARySiSgGGA17_yAA012HierarchicalwY0VGG_ACyAA0I0PAAE12labelsHiddenQryFQOyAA08ProgressI0VyAA05EmptyI0VA81_G_Qo_A49_GSgACyACyACyA60_A69_GAVGA73_GSgtGGA49_GAeCyACyACyA32_ySo014DOCChainedTagsI0CGA46_GA49_GA49_GSgACyACyACyA32_yA30_013DOCItemStatusI0CGA46_GA49_GA49_GSgACyACyANyAPGA46_GA49_GSgAHtMR);
  outlined init with copy of DOCGridLayout.Spec?(v321, v323 + v326[12], &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMR);
  v327 = v326[16];
  v328 = v471;
  v489 = v472;
  v490 = v473;
  v329 = v473;
  v491 = v474;
  v330 = v470[3];
  v331 = v470[2];
  v485 = v470[3];
  v486 = v470[4];
  v332 = v470[4];
  v333 = v470[5];
  v487 = v470[5];
  v488 = v471;
  v334 = v470[0];
  v335 = v470[1];
  v483 = v470[1];
  v484 = v470[2];
  v336 = v469;
  v337 = v468;
  v481 = v469;
  v482 = v470[0];
  v338 = v467;
  v479 = v467;
  v480 = v468;
  v339 = v323 + v327;
  *(v339 + 10) = v472;
  *(v339 + 11) = v329;
  *(v339 + 12) = v474;
  *(v339 + 6) = v330;
  *(v339 + 7) = v332;
  *(v339 + 8) = v333;
  *(v339 + 9) = v328;
  *(v339 + 2) = v336;
  *(v339 + 3) = v334;
  *(v339 + 4) = v335;
  *(v339 + 5) = v331;
  v492 = v475;
  v339[208] = v475;
  *v339 = v338;
  *(v339 + 1) = v337;
  outlined init with copy of DOCGridLayout.Spec?(v322, v323 + v326[20], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  v340 = v323 + v326[24];
  *v340 = 0x4028000000000000;
  v340[8] = 0;
  v341 = v323 + v326[28];
  *&v493 = v438;
  *(&v493 + 1) = v432;
  *&v494 = v252;
  *(&v494 + 1) = v254;
  *&v495 = v256;
  *(&v495 + 1) = v258;
  *&v496 = v434;
  *(&v496 + 1) = v433;
  v342 = v421;
  v343 = v422;
  v497 = *&v422;
  v344 = v496;
  *(v341 + 2) = v495;
  *(v341 + 3) = v344;
  *(v341 + 8) = v343;
  v345 = v494;
  *v341 = v493;
  *(v341 + 1) = v345;
  v346 = v323 + v326[32];
  *&v498 = v342;
  *(&v498 + 1) = v430;
  *&v499 = v243;
  *(&v499 + 1) = v273;
  *&v500 = v274;
  *(&v500 + 1) = v275;
  v347 = v419;
  v348 = v420;
  *&v501 = v420;
  *(&v501 + 1) = v431;
  v502 = v419;
  *(v346 + 8) = v419;
  v349 = v499;
  *v346 = v498;
  *(v346 + 1) = v349;
  v350 = v501;
  *(v346 + 2) = v500;
  *(v346 + 3) = v350;
  v351 = v437;
  outlined init with copy of DOCGridLayout.Spec?(v437, v323 + v326[36], &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMR);
  v352 = v323 + v326[40];
  *v352 = 0;
  v352[8] = v416;
  *(v352 + 2) = v443;
  v352[24] = v417;
  *(v352 + 4) = v442;
  v352[40] = v418;
  v353 = v427;
  *(v352 + 6) = v428;
  *(v352 + 7) = v353;
  outlined init with copy of DOCGridLayout.Spec?(&v479, &v503, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMR);
  outlined init with copy of DOCGridLayout.Spec?(&v493, &v503, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMR);
  outlined init with copy of DOCGridLayout.Spec?(&v498, &v503, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMR);
  outlined destroy of CharacterSet?(v439, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMR);
  outlined destroy of CharacterSet?(v440, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  outlined destroy of CharacterSet?(v441, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMR);
  outlined destroy of CharacterSet?(v351, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMR);
  *&v444 = v342;
  *(&v444 + 1) = v430;
  *&v445 = v243;
  *(&v445 + 1) = v273;
  *&v446 = v274;
  *(&v446 + 1) = v275;
  *&v447 = v348;
  *(&v447 + 1) = v431;
  *&v448 = v347;
  outlined destroy of CharacterSet?(&v444, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMR);
  v450 = v438;
  v451 = v432;
  v452 = v252;
  v453 = v254;
  v454 = v256;
  v455 = v258;
  v456 = v434;
  v457 = v433;
  v458 = v343;
  outlined destroy of CharacterSet?(&v450, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMR);
  outlined destroy of CharacterSet?(v436, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMR);
  v513 = v472;
  v514 = v473;
  v515 = v474;
  v516 = v475;
  v509 = v470[3];
  v510 = v470[4];
  v511 = v470[5];
  v512 = v471;
  v505 = v469;
  v506 = v470[0];
  v507 = v470[1];
  v508 = v470[2];
  v503 = v467;
  v504 = v468;
  outlined destroy of CharacterSet?(&v503, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMR);
  return outlined destroy of CharacterSet?(v435, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMR);
}

void (*closure #1 in closure #1 in LeadingView.leadingContent.getter(uint64_t a1))(uint64_t)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LeadingView(0);
  v10 = v9 - 8;
  v43 = *(v9 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v22 = &v37 - v21;
  v23 = *(a1 + *(v10 + 52));
  result = (*(*v23 + 376))(v20);
  if (result)
  {
    v26 = result;
    v27 = *(*v23 + 360);
    v38 = v8;
    v42 = v25;
    v28 = v27(1);
    v26(v28);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = *(v14 + 8);
    v40 = v13;
    v41 = v29;
    v29(v17, v13);
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeadingView);
    v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v31 = swift_allocObject();
    outlined init with take of Column(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LeadingView);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in LeadingView.leadingContent.getter;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_131;
    v32 = _Block_copy(aBlock);

    v33 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v34 = v44;
    v35 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v39;
    MEMORY[0x24C1FB940](v22, v33, v34, v32);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26, v42);
    _Block_release(v32);

    (*(v47 + 8))(v34, v35);
    (*(v45 + 8))(v33, v46);
    return v41(v22, v40);
  }

  return result;
}

uint64_t closure #2 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationK0VySbGGAW_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationK0VySbGGAW_GMR);
  MEMORY[0x28223BE20](v84, v3);
  v85 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v75 - v12);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR);
  MEMORY[0x28223BE20](v83, v14);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v79 = &v75 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v77 = &v75 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMR);
  MEMORY[0x28223BE20](v80, v22);
  v75 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v78 = &v75 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMR);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v82 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v81 = &v75 - v32;
  v33 = *(a1 + *(type metadata accessor for LeadingView(0) + 44));
  v34 = (*(*v33 + 352))();
  v35 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v36 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v38 = *(v6 + 44);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v40 = *MEMORY[0x277CE1050];
  v41 = type metadata accessor for Image.Scale();
  v42 = *(*(v41 - 8) + 104);
  if (v34)
  {
    v42(v13 + v38 + v39, v40, v41);
    *(v13 + v38) = swift_getKeyPath();
    *v13 = v35;
    v13[1] = KeyPath;
    v13[2] = v36;
    v43 = *(*v33 + 160);
    if (v43())
    {
      v44 = 1.57079633;
    }

    else
    {
      v44 = 0.0;
    }

    static UnitPoint.center.getter();
    v46 = v45;
    v48 = v47;
    v49 = v13;
    v50 = v77;
    v51 = outlined init with take of (key: URL, value: FPItem)(v49, v77, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
    v52 = v50 + *(v83 + 36);
    *v52 = v44;
    *(v52 + 8) = v46;
    *(v52 + 16) = v48;
    v53 = MEMORY[0x24C1FA8C0](v51, 0.5, 0.85, 0.0);
    v54 = v43();
    v55 = v75;
    outlined init with take of (key: URL, value: FPItem)(v50, v75, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR);
    v56 = v55 + *(v80 + 36);
    *v56 = v53;
    *(v56 + 8) = v54 & 1;
    v57 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd;
    v58 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMR;
    v59 = v78;
    outlined init with take of (key: URL, value: FPItem)(v55, v78, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMR);
    outlined init with copy of DOCGridLayout.Spec?(v59, v85, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    v60 = v81;
    _ConditionalContent<>.init(storage:)();
    v61 = v59;
  }

  else
  {
    v42(v9 + v38 + v39, v40, v41);
    *(v9 + v38) = swift_getKeyPath();
    *v9 = v35;
    v9[1] = KeyPath;
    v9[2] = v36;
    if ((*(*v33 + 160))())
    {
      v62 = 1.57079633;
    }

    else
    {
      v62 = 0.0;
    }

    static UnitPoint.center.getter();
    v64 = v63;
    v66 = v65;
    v67 = v76;
    outlined init with take of (key: URL, value: FPItem)(v9, v76, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
    v68 = v67 + *(v83 + 36);
    *v68 = v62;
    *(v68 + 8) = v64;
    *(v68 + 16) = v66;
    v57 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd;
    v58 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR;
    v69 = v79;
    outlined init with take of (key: URL, value: FPItem)(v67, v79, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR);
    outlined init with copy of DOCGridLayout.Spec?(v69, v85, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    v60 = v81;
    _ConditionalContent<>.init(storage:)();
    v61 = v69;
  }

  outlined destroy of CharacterSet?(v61, v57, v58);
  v70 = UIAccessibilityButtonShapesEnabled();
  v71 = v82;
  outlined init with copy of DOCGridLayout.Spec?(v60, v82, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMR);
  v72 = v86;
  outlined init with copy of DOCGridLayout.Spec?(v71, v86, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMR);
  v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUG_AA6SpacerVSgtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUG_AA6SpacerVSgtMR) + 48);
  *v73 = 0;
  *(v73 + 8) = !v70;
  *(v73 + 9) = v70;
  outlined destroy of CharacterSet?(v60, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMR);
  return outlined destroy of CharacterSet?(v71, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMR);
}

id LeadingView.overlayImage()@<X0>(void *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    *a1 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v3);
  v117 = &v116 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12labelsHiddenQryFQOyAA08ProgressC0VyAA05EmptyC0VAHG_Qo_Md, &_s7SwiftUI4ViewPAAE12labelsHiddenQryFQOyAA08ProgressC0VyAA05EmptyC0VAHG_Qo_MR);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v5);
  v121 = &v116 - v6;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMR);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v7);
  v120 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v139 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v138 = &v116 - v14;
  v126 = type metadata accessor for EnvironmentValues();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v15);
  v124 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v116 - v24;
  v26 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMR);
  MEMORY[0x28223BE20](v127, v30);
  v32 = &v116 - v31;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMR);
  MEMORY[0x28223BE20](v129, v33);
  v35 = &v116 - v34;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMR);
  MEMORY[0x28223BE20](v128, v36);
  v131 = &v116 - v37;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
  MEMORY[0x28223BE20](v130, v38);
  v137 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v116 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v140 = &v116 - v46;
  v132 = type metadata accessor for LeadingView(0);
  v47 = *(v132 + 20);
  v135 = a1;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1 + v47, v29, type metadata accessor for LeadingTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v25, v29, v17);
    (*(v18 + 16))(v21, v25, v17);
    v48 = Text.init(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v18 + 8))(v25, v17);
  }

  else
  {
    v55 = v29[1];
    v145 = *v29;
    v146 = v55;
    lazy protocol witness table accessor for type String and conformance String();
    v48 = Text.init<A>(_:)();
    v50 = v56;
    v52 = v57;
    v54 = v58;
  }

  v59 = &v32[*(v127 + 36)];
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMR) + 28);
  v61 = *MEMORY[0x277CE0B30];
  v62 = type metadata accessor for Text.TruncationMode();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = swift_getKeyPath();
  *v32 = v48;
  *(v32 + 1) = v50;
  v32[16] = v52 & 1;
  *(v32 + 3) = v54;
  KeyPath = swift_getKeyPath();
  outlined init with take of (key: URL, value: FPItem)(v32, v35, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMR);
  v64 = &v35[*(v129 + 36)];
  *(v64 + 1) = 0;
  *(v64 + 2) = 0;
  *v64 = KeyPath;
  v64[24] = 0;
  v65 = swift_getKeyPath();
  v66 = v131;
  outlined init with take of (key: URL, value: FPItem)(v35, v131, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMR);
  v67 = v66 + *(v128 + 36);
  *v67 = v65;
  *(v67 + 8) = 1;
  *(v67 + 16) = 0;
  v68 = v132;
  v69 = v135;
  v70 = v135 + *(v132 + 64);
  v71 = *v70;
  v72 = *(v70 + 8);
  if (v72 == 1)
  {
    if ((v71 & 1) == 0)
    {
LABEL_6:
      v73 = static HierarchicalShapeStyle.primary.getter();
      goto LABEL_9;
    }
  }

  else
  {

    v74 = static os_log_type_t.fault.getter();
    v75 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v74, &dword_2493AC000, v75, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    v76 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v77 = outlined consume of Environment<Bool>.Content(v71, 0);
    (*(v125 + 8))(v76, v126, v77);
    if (v145 != 1)
    {
      goto LABEL_6;
    }
  }

  v73 = static HierarchicalShapeStyle.tertiary.getter();
LABEL_9:
  v78 = v73;
  outlined init with take of (key: URL, value: FPItem)(v66, v43, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMR);
  *&v43[*(v130 + 36)] = v78;
  v79 = outlined init with take of (key: URL, value: FPItem)(v43, v140, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
  v80 = (*(**(v69 + *(v68 + 48)) + 88))(v79);
  if (v80)
  {
    v81 = v80;
    if ((*(*v80 + 128))())
    {
      v82 = (*(*v81 + 176))();
      if (v82)
      {
        v83 = v82;
        v84 = v117;
        ProgressView.init<>(_:)();
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
        v85 = v121;
        v86 = v119;
        View.labelsHidden()();
        (*(v118 + 8))(v84, v86);
        if (v72)
        {
        }

        else
        {

          v109 = static os_log_type_t.fault.getter();
          v110 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)(v109, &dword_2493AC000, v110, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

          v111 = v124;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          v112 = outlined consume of Environment<Bool>.Content(v71, 0);
          (*(v125 + 8))(v111, v126, v112);

          LOBYTE(v71) = v145;
        }

        v89 = v134;
        if (v71)
        {
          v113 = 0.35;
        }

        else
        {
          v113 = 1.0;
        }

        v114 = v120;
        (*(v122 + 32))(v120, v85, v123);
        *&v114[*(v89 + 36)] = v113;
        v115 = v114;
        v88 = v138;
        outlined init with take of (key: URL, value: FPItem)(v115, v138, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMR);
        v87 = 0;
        goto LABEL_16;
      }
    }
  }

  v87 = 1;
  v88 = v138;
  v89 = v134;
LABEL_16:
  (*(v133 + 56))(v88, v87, 1, v89);
  if (*(v69 + *(v68 + 24) + 8) && (LeadingView.browserConfiguration.getter(), v90) && !LeadingView.subtitleShouldStackOverImageAndTitle()())
  {
    LeadingView.subtitleView.getter(&v145);
    v135 = v145;
    v134 = v146;
    v133 = v147;
    v132 = v148;
    v131 = v149;
    v130 = v150;
    v129 = v151;
    v128 = v152;
    v127 = v153;
    LODWORD(v126) = v154;
  }

  else
  {
    v135 = 0;
    v134 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    LODWORD(v126) = 0;
  }

  v91 = v137;
  outlined init with copy of DOCGridLayout.Spec?(v140, v137, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
  v92 = v139;
  outlined init with copy of DOCGridLayout.Spec?(v88, v139, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMR);
  v93 = v136;
  outlined init with copy of DOCGridLayout.Spec?(v91, v136, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGG_ACyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressU0VyAA05EmptyU0VA3_G_Qo_AA14_OpacityEffectVGSgACyACyACyAeQGAGyAA0P0VSgGGAWGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGG_ACyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressU0VyAA05EmptyU0VA3_G_Qo_AA14_OpacityEffectVGSgACyACyACyAeQGAGyAA0P0VSgGGAWGSgtMR);
  outlined init with copy of DOCGridLayout.Spec?(v92, v93 + *(v94 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMR);
  v95 = (v93 + *(v94 + 64));
  v96 = v135;
  *&v141 = v135;
  v97 = v134;
  v98 = v133;
  *(&v141 + 1) = v134;
  *&v142 = v133;
  v99 = v132;
  v100 = v131;
  *(&v142 + 1) = v132;
  *&v143 = v131;
  v101 = v130;
  v102 = v129;
  *(&v143 + 1) = v130;
  *v144 = v129;
  v103 = v128;
  v104 = v127;
  *&v144[8] = v128;
  *&v144[16] = v127;
  v105 = v126;
  *&v144[24] = v126;
  v106 = *v144;
  v95[2] = v143;
  v95[3] = v106;
  v107 = v142;
  *v95 = v141;
  v95[1] = v107;
  *(v95 + 60) = *&v144[12];
  outlined init with copy of DOCGridLayout.Spec?(&v141, &v145, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMR);
  outlined destroy of CharacterSet?(v138, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMR);
  outlined destroy of CharacterSet?(v140, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
  v145 = v96;
  v146 = v97;
  v147 = v98;
  v148 = v99;
  v149 = v100;
  v150 = v101;
  v151 = v102;
  v152 = v103;
  v153 = v104;
  v154 = v105;
  outlined destroy of CharacterSet?(&v145, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMR);
  outlined destroy of CharacterSet?(v139, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMR);
  return outlined destroy of CharacterSet?(v137, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMR);
}

double View.outlineAdjustedFont()(uint64_t a1, uint64_t a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x24C1FA630](v5, a1, &type metadata for OutlineFontModifier, a2);

  return result;
}

uint64_t closure #6 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t OutlineFontModifier.browserConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_2493AC000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v15 = outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(a1, a2, a3, 0);
    (*(v9 + 8))(v12, v8, v15);
    return v17[1];
  }

  return a1;
}

uint64_t OutlineFontModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v18, &dword_2493AC000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v20 = outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(a2, a3, a4, 0);
    (*(v13 + 8))(v16, v12, v20);
    if (v26[16])
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = static Font.subheadline.getter();
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = static Font.body.getter();
LABEL_6:
  v21 = v17;
  KeyPath = swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMR);
  (*(*(v23 - 8) + 16))(a6, a1, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMR);
  v25 = (a6 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  return result;
}

void DateView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateView(0);
  v9 = (v1 + *(v8 + 20));
  v10 = v9[1];
  *&v44 = *v9;
  *(&v44 + 1) = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v11 = Text.init<A>(_:)();
  v39 = v12;
  v40 = v11;
  LOBYTE(v10) = v13;
  v38 = v14;
  KeyPath = swift_getKeyPath();
  v48 = v10 & 1;
  v47 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = v48;
  v16 = v47;
  *&v41[23] = v45;
  *&v41[39] = v46;
  *&v41[7] = v44;
  v17 = v1 + *(v8 + 24);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HierarchicalShapeStyle.secondary.getter();
      goto LABEL_6;
    }
  }

  else
  {

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &dword_2493AC000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = outlined consume of Environment<Bool>.Content(v18, 0);
    (*(v4 + 8))(v7, v3, v22);
    if (v43 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = static HierarchicalShapeStyle.quaternary.getter();
LABEL_6:
  v23 = v19;
  v24 = swift_getKeyPath();
  v42 = 0;
  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249B9FA70;
  v27 = static Edge.Set.leading.getter();
  *(v26 + 32) = v27;
  v28 = static Edge.Set.trailing.getter();
  *(v26 + 33) = v28;
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v30 = *&v41[16];
  *(a1 + 57) = *v41;
  v31 = v39;
  *a1 = v40;
  *(a1 + 8) = v31;
  *(a1 + 16) = v15;
  v32 = KeyPath;
  *(a1 + 24) = v38;
  *(a1 + 32) = v32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v16;
  *(a1 + 73) = v30;
  *(a1 + 89) = *&v41[32];
  *(a1 + 104) = *&v41[47];
  *(a1 + 112) = v23;
  *(a1 + 120) = v24;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = v25;
  *(a1 + 152) = 0;
  *(a1 + 160) = v29;
  *(a1 + 168) = v33;
  *(a1 + 176) = v34;
  *(a1 + 184) = v35;
  *(a1 + 192) = v36;
  *(a1 + 200) = 0;
}

uint64_t OutlineColumnView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OutlineColumnView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v7;
    v11 = v7[1];
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (a2 + *(v8 + 20));
  *v12 = v10;
  v12[1] = v11;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

void OutlineColumnView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OutlineColumnView(0);
  v9 = (v1 + *(v8 + 20));
  v10 = v9[1];
  *&v42 = *v9;
  *(&v42 + 1) = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v11 = Text.init<A>(_:)();
  v37 = v12;
  v38 = v11;
  v14 = v13;
  v36 = v15;
  KeyPath = swift_getKeyPath();
  v46 = v14 & 1;
  v45 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v46;
  v18 = v45;
  *&v39[23] = v43;
  *&v39[39] = v44;
  *&v39[7] = v42;
  v19 = v1 + *(v8 + 24);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &dword_2493AC000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = outlined consume of Environment<Bool>.Content(v20, 0);
    (*(v4 + 8))(v7, v3, v24);
    if (v41 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = static HierarchicalShapeStyle.quaternary.getter();
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = static HierarchicalShapeStyle.secondary.getter();
LABEL_6:
  v25 = v21;
  v26 = swift_getKeyPath();
  v40 = 0;
  v27 = swift_getKeyPath();
  v28 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v29 = *&v39[16];
  *(a1 + 57) = *v39;
  v30 = v37;
  *a1 = v38;
  *(a1 + 8) = v30;
  *(a1 + 16) = v17;
  *(a1 + 24) = v36;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v18;
  *(a1 + 73) = v29;
  *(a1 + 89) = *&v39[32];
  *(a1 + 104) = *&v39[47];
  *(a1 + 112) = v25;
  *(a1 + 120) = v26;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = v27;
  *(a1 + 152) = 0;
  *(a1 + 160) = v28;
  *(a1 + 168) = v31;
  *(a1 + 176) = v32;
  *(a1 + 184) = v33;
  *(a1 + 192) = v34;
  *(a1 + 200) = 0;
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance OutlineColumnView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v12 = v9[1];
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = (a3 + *(a2 + 20));
  *v13 = v11;
  v13[1] = v12;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

double DOCChainedTagsView.size(_:)()
{
  [v0 setNeedsDisplay];
  [v0 intrinsicContentSize];
  return result;
}

double protocol witness for DOCItemDefaultSize.size(_:) in conformance DOCChainedTagsView()
{
  v1 = *v0;
  [*v0 setNeedsDisplay];
  [v1 intrinsicContentSize];
  return result;
}

uint64_t TagView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TagView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v10 = *v7;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
  }

  *(a2 + *(v8 + 20)) = v10;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

__n128 TagView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagView(0);
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = v1 + *(v10 + 24);
    v22 = *v21;
    if (*(v21 + 8) != 1)
    {

      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v23, &dword_2493AC000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v25 = outlined consume of Environment<Bool>.Content(v22, 0);
      (*(v4 + 8))(v7, v3, v25);
      LOBYTE(v22) = v40;
    }

    v36 = 0;
    v26 = 0.35;
    *&v30 = v11;
    if ((v22 & 1) == 0)
    {
      v26 = 1.0;
    }

    BYTE8(v30) = v12;
    HIDWORD(v30) = *&v37[3];
    *(&v30 + 9) = *v37;
    v31.n128_u64[0] = v14;
    v31.n128_u64[1] = v16;
    *&v32 = v18;
    *(&v32 + 1) = v20;
    LOBYTE(v33) = 0;
    *(&v33 + 1) = *v35;
    DWORD1(v33) = *&v35[3];
    *(&v33 + 1) = v26;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v34 = 0;
    v44 = 0;
    outlined init with copy of DOCGridLayout.Spec?(&v30, v38, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of CharacterSet?(&v30, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
    v42 = v38[2];
    v43 = v38[3];
    v44 = v39;
    v40 = v38[0];
    v41 = v38[1];
  }

  else
  {
    LOBYTE(v30) = 1;
    v39 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  v27 = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = v27;
  *(a1 + 64) = v44;
  result = v41;
  *a1 = v40;
  *(a1 + 16) = result;
  return result;
}

uint64_t TagView.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for TagView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18DOCChainedTagsViewCSgMd, &_sSo18DOCChainedTagsViewCSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v2);

  return 0x7765697620676174;
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance TagView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v11 = *v9;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
  }

  *(a3 + *(a2 + 20)) = v11;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TagView(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18DOCChainedTagsViewCSgMd, &_sSo18DOCChainedTagsViewCSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v3);

  return 0x7765697620676174;
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v6 - v4, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.sizeCategory : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a6(v12);
}

BOOL specialized static LeadingBadge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && specialized static DOCItemCollectionCellContent.DecorationImageObserver.== infix(_:_:)(v5, v7);
  }

  return !v7;
}

BOOL specialized static OutlineProgressState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 128))();
  if ((v4 ^ (*(*a2 + 128))()))
  {
    return 0;
  }

  v6 = (*(*a1 + 176))();
  v7 = (*(*a2 + 176))();
  if (v6)
  {
    if (v7)
    {
      v8 = v7;

      return v6 == v8;
    }

    return 0;
  }

  if (v7)
  {

    return 0;
  }

  return 1;
}

uint64_t specialized static OutlineExpansionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 160))();
  if ((v4 ^ (*(*a2 + 160))()) & 1) != 0 || (v5 = (*(*a1 + 208))(), ((v5 ^ (*(*a2 + 208))())) || (v6 = (*(*a1 + 256))(), ((v6 ^ (*(*a2 + 256))())))
  {
    v7 = 0;
  }

  else
  {
    v9 = (*(*a1 + 304))();
    v7 = v9 ^ (*(*a2 + 304))() ^ 1;
  }

  return v7 & 1;
}

BOOL specialized static OutlineProgressStateReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))();
  v4 = (*(*a2 + 88))();
  if (v3)
  {
    if (v4)
    {
      v5 = v4;

      return v3 == v5;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void partial apply for closure #1 in OutlineExpansionState.shouldShowDisclosureButton.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 17) = v2;
}

void partial apply for closure #1 in OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 18) = v2;
}

void partial apply for closure #1 in OutlineExpansionState.selected.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 19) = v2;
}

void partial apply for closure #1 in OutlineExpansionState.allowAnimation.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 20) = v2;
}

uint64_t lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey()
{
  result = lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey;
  if (!lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey()
{
  result = lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey;
  if (!lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey;
  if (!lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized DOCItemStatusView.size(_:)()
{
  v1 = [v0 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v2 = MEMORY[0x277D76940];
  if (v10)
  {
    v2 = MEMORY[0x277D76918];
  }

  v3 = *v2;
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 ascender];
  v6 = v5;
  [v4 descender];
  v8 = v7;

  return ceil(fmax(v6 - v8, 27.0));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCItemStatusView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA013DOCItemStatusE0CGMd, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA013DOCItemStatusE0CGMR, &protocol conformance descriptor for DOCReuseableView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t _s26DocumentManagerExecutables6ColumnOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *specialized HeaderTitleLayout.makeCache(subviews:)(uint64_t a1)
{
  v24 = type metadata accessor for LayoutSubview();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v6 = dispatch thunk of Collection.count.getter();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  v7 = v27;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = (v2 + 16);
    do
    {
      v10 = dispatch thunk of Collection.subscript.read();
      v11 = v24;
      (*v23)(v5);
      v10(v26, 0);
      static ProposedViewSize.unspecified.getter();
      v26[0] = v12 & 1;
      v25 = v13 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v15 = v14;
      v17 = v16;
      (*(v2 + 8))(v5, v11);
      v27 = v7;
      v18 = a1;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      dispatch thunk of Collection.formIndex(after:)();
      --v8;
      a1 = v18;
    }

    while (v8);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #1 in OutlineExpansionState.isExpanded.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

{
  partial apply for closure #1 in RenameObserver.isRenaming.setter();
}

double outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined init with take of Column(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s26DocumentManagerExecutables6ColumnOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCChainedTagsView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsE0CGMd, &_s26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsE0CGMR, &protocol conformance descriptor for DOCReuseableView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StatusView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type StatusView and conformance StatusView, type metadata accessor for StatusView, &protocol conformance descriptor for StatusView);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderTitleLayout and conformance HeaderTitleLayout()
{
  result = lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout;
  if (!lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Header(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type Header and conformance Header, type metadata accessor for Header, &protocol conformance descriptor for Header);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LeadingView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LeadingView and conformance LeadingView, type metadata accessor for LeadingView, &protocol conformance descriptor for LeadingView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DateView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type DateView and conformance DateView, type metadata accessor for DateView, &protocol conformance descriptor for DateView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for OutlineColumnView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineColumnView and conformance OutlineColumnView, type metadata accessor for OutlineColumnView, &protocol conformance descriptor for OutlineColumnView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TagView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type TagView and conformance TagView, type metadata accessor for TagView, &protocol conformance descriptor for TagView);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeadingBadge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LeadingBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for OutlineExpansionState(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata completion function for OutlineProgressState(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void type metadata completion function for DragIndicator(uint64_t a1)
{
  type metadata accessor for Dragging(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata instantiation function for DOCReuseableView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for StatusView(uint64_t a1)
{
  type metadata accessor for Column(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCItemStatusView?, type metadata accessor for DOCItemStatusView, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for HeaderTitleLayout.TitleLayoutBestView(uint64_t a1)
{
  type metadata accessor for LayoutSubview();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Header(uint64_t a1)
{
  type metadata accessor for Column(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Image?, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<UserInterfaceSizeClass?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>);
    }
  }
}

uint64_t type metadata completion function for Dragging(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for LeadingView(uint64_t a1)
{
  type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCImageViewContainerView?, type metadata accessor for DOCImageViewContainerView, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LeadingTitle(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCItemStatusView?, type metadata accessor for DOCItemStatusView, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for DOCChainedTagsView?(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for LeadingBadge?, &type metadata for LeadingBadge, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for OutlineExpansionState(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for OutlineProgressStateReference();
                type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<DOCBrowserLayoutConfiguration>, &type metadata for DOCBrowserLayoutConfiguration, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ContentSizeCategory>, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Environment<UserInterfaceSizeClass?>(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for Column(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for RenameObserver(319);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for DOCChainedTagsView?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DOCChainedTagsView?)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCChainedTagsView, off_278F9F380);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DOCChainedTagsView?);
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OutlineFontModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OutlineFontModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_194Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Column(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_195Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Column(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for DateView(uint64_t a1)
{
  type metadata accessor for Column(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_142Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Column(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_143Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Column(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void type metadata completion function for TagView(uint64_t a1)
{
  type metadata accessor for Column(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DOCChainedTagsView?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingM0VGAEyAEyAjA016_ForegroundStyleM0VyANGGASGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingM0VGAEyAEyAjA016_ForegroundStyleM0VyANGGASGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy26DocumentManagerExecutables16DOCReuseableViewVyAF013DOCItemStatusJ0CGAA14_OpacityEffectVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy26DocumentManagerExecutables16DOCReuseableViewVyAF013DOCItemStatusJ0CGAA14_OpacityEffectVGAA05EmptyJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>, _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMR, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.TruncationMode> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<OutlineFontModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutlineFontModifier and conformance OutlineFontModifier()
{
  result = lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier;
  if (!lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGAA08_PaddingM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGMR);
    lazy protocol witness table accessor for type OutlineFontModifier and conformance OutlineFontModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsJ0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsJ0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGAA05EmptyJ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgWOi0_(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double _s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = -1;
  return result;
}

void partial apply for closure #5 in closure #1 in LeadingView.leadingContent.getter()
{
  v1 = (*(*v0 + 176))();
  [v1 cancel];
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMR, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCImageViewContainerView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA08DOCImagee9ContainerE0CGMd, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA08DOCImagee9ContainerE0CGMR, &protocol conformance descriptor for DOCReuseableView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGMd, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void (*partial apply for closure #1 in closure #1 in LeadingView.leadingContent.getter())(uint64_t)
{
  v1 = *(type metadata accessor for LeadingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in LeadingView.leadingContent.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_235Tm()
{
  v1 = type metadata accessor for LeadingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  type metadata accessor for LeadingTitle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 40) != 1)
  {
  }

  outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(*(v5 + v1[13]), *(v5 + v1[13] + 8), *(v5 + v1[13] + 16), *(v5 + v1[13] + 24));
  v8 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  v13 = v5 + v1[17];
  type metadata accessor for Column(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {

          if (*(v13 + 48) != 1)
          {
          }

          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd, &_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMR);
          v16 = v13 + v15[16];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v17 = type metadata accessor for AttributedString();
            (*(*(v17 - 8) + 8))(v16, v17);
          }

          else
          {
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 8))(v13, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

      if (*(v13 + *(v19 + 64) + 8) < 9uLL)
      {
        goto LABEL_31;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v13 + 8) < 9uLL)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
  {
  }

LABEL_31:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _LayoutRoot<HeaderTitleLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleC0VGMd, &_s7SwiftUI11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleC0VGMR, MEMORY[0x277CDF510]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAFyAFyAFyAFyAFyAA6HStackVyAA05TupleG0VyAA4TextV_AhAEAIyQrANFQOyAFyAFyAtA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo_SgtGGAA016_ForegroundStyleS0VyAA08AnyShapeU0VGGAA14_PaddingLayoutVGA12_GA12_GA_G_Qo_AYyAT14TruncationModeOGGAYySiSgGGGMd, &_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAFyAFyAFyAFyAFyAA6HStackVyAA05TupleG0VyAA4TextV_AhAEAIyQrANFQOyAFyAFyAtA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo_SgtGGAA016_ForegroundStyleS0VyAA08AnyShapeU0VGGAA14_PaddingLayoutVGA12_GA12_GA_G_Qo_AYyAT14TruncationModeOGGAYySiSgGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v16 = v3 & 0xFFFFFFFFFFFFFF8;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }

LABEL_8:
        v8 = [v6 tags];
        v9 = DOCTagsFromFPTags();

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = specialized _ArrayProtocol.filter(_:)(v11, a2);

        v13 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          if (v13 < 0)
          {
            v14 = *a3;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          v15 = __CocoaSet.count.getter();
          v13 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(v14, v15);
        }

        *a3 = specialized _NativeSet.genericIntersection<A>(_:)(v10, v13);
        specialized Set.formUnion<A>(_:)(v10);

        specialized Array.append<A>(contentsOf:)(v12);
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    v21 = i;
    v22 = v5;
    while (1)
    {
      if (v24)
      {
        v9 = MEMORY[0x24C1FC540](v7, v5);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v5 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_35;
        }
      }

      v11 = v9;
      v12 = v3;
      v13 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a2, v11);

      if (*a2 >> 62)
      {
        v14 = __CocoaSet.count.getter();
        v15 = v14 - v13;
        if (v14 < v13)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v14 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 - v13;
        if (v14 < v13)
        {
          goto LABEL_37;
        }
      }

      if (v13 < 0)
      {
        goto LABEL_38;
      }

      v5 = *a2;
      v3 = *a2 >> 62;
      if (v3)
      {
        break;
      }

      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v14)
      {
        goto LABEL_34;
      }

LABEL_15:
      v16 = __OFSUB__(0, v15);
      v17 = -v15;
      if (v16)
      {
        goto LABEL_39;
      }

      if (v3)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_40;
      }

      v19 = *a2;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *a2 = v19;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
        {
          if (v5 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      else if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __CocoaSet.count.getter();
LABEL_5:
      *a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v13, v14, 0);

      v8 = specialized Set._Variant.remove(_:)(v11);
      ++v7;
      v5 = v22;
      v3 = v12;
      if (v10 == v21)
      {
        return;
      }
    }

    if (__CocoaSet.count.getter() >= v14)
    {
      goto LABEL_15;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }
}

void DOCTagsCollectionViewData.pendingExternalChange.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v3)
  {
    *(v3 + 16) = 0;
  }

  *(v1 + v2) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    *(v4 + 16) = 1;
  }
}

uint64_t DOCTagsCollectionViewData.PendingExternalChange.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCTagsCollectionViewData.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCTagsCollectionViewData.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

Swift::Void __swiftcall DOCTagsCollectionViewData.applyTagsFromNodes(_:)(Swift::OpaquePointer a1)
{

  v3 = specialized DOCTagUnionCollection.init(nodes:)(v2);
  v5 = v4;
  v7 = v6;

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  v11 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8);
  v12 = (v9 + 24);
  v13 = (v9 + 32);
  v14 = v9 == 0;
  if (v9)
  {
    v15 = (v9 + 40);
  }

  else
  {
    v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16);
  }

  if (!v14)
  {
    v10 = v12;
    v11 = v13;
  }

  v16 = *v11;
  v17 = *v10;
  v18 = *v15;

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v3, v17) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v5, v16), (v19))
  {
    _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v7, v18);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  *v22 = v3;
  v22[1] = v5;
  v22[2] = v7;

  v23 = *(v1 + v8);
  if (!v23)
  {

    if (v21)
    {
      return;
    }

    goto LABEL_23;
  }

  v24 = v23[3];
  v25 = v23[4];
  v26 = v23[5];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v24, v3) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v25, v5), (v27 & 1) == 0))
  {

LABEL_20:

    if (v21)
    {
      return;
    }

    goto LABEL_23;
  }

  _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v26, v7);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v31 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v31)
  {
    *(v31 + 16) = 0;
  }

  *(v1 + v30) = 0;

  v32 = *(v1 + v30);
  if (v32)
  {
    *(v32 + 16) = 1;
  }

LABEL_23:
  v34 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))(v33);
  if (v34)
  {
    [v34 tagsCollectionDataNeedsReload_];

    swift_unknownObjectRelease();
  }
}

uint64_t DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(void *a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v47 - v20;
  v22 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v19);
  if ((result & 1) == 0)
  {
    v48 = v10;
    v49 = v6;
    v50 = v5;
    v24 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange];
    v25 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection];
    v26 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8];
    v27 = (v24 + 24);
    v28 = (v24 + 32);
    v29 = v24 == 0;
    if (v24)
    {
      v30 = (v24 + 40);
    }

    else
    {
      v30 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16];
    }

    if (!v29)
    {
      v25 = v27;
      v26 = v28;
    }

    v31 = *v26;
    v32 = *v25;
    v33 = *v30;

    *&aBlock = v32;
    *(&aBlock + 1) = v31;
    v55 = v33;
    v35 = (*((*v22 & *a1) + 0x58))(v34);
    specialized Sequence.forEach(_:)(v35, &aBlock);

    v36 = v55;
    type metadata accessor for DOCTagsCollectionViewData.PendingExternalChange();
    v47 = aBlock;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = v47;
    *(v37 + 40) = v36;
    v38 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
    v39 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange];

    if (v39)
    {
      *(v39 + 16) = 0;
    }

    *&v47 = v9;
    *&v3[v38] = v37;

    v40 = *&v3[v38];
    if (v40)
    {
      *(v40 + 16) = 1;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v41 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v51 = *(v51 + 8);
    (v51)(v16, v53);
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    *(v42 + 24) = v3;
    v57 = partial apply for closure #1 in DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:);
    v58 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v56 = &block_descriptor_132;
    v43 = _Block_copy(&aBlock);

    v44 = v3;

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v45 = v47;
    v46 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](v21, v13, v45, v43);
    _Block_release(v43);

    (*(v49 + 8))(v45, v46);
    (*(v52 + 8))(v13, v48);
    return (v51)(v21, v53);
  }

  return result;
}

_BYTE *closure #1 in DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(_BYTE *result, void *a2)
{
  if (result[16] == 1)
  {
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
    v4 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    *(a2 + v3) = 0;

    v6 = *(a2 + v3);
    if (v6)
    {
      *(v6 + 16) = 1;
    }

    result = (*((*MEMORY[0x277D85000] & *a2) + 0xA8))(v5);
    if (result)
    {
      [result tagsCollectionDataNeedsReload_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DOCTagsCollectionViewData.countOfTags.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v1)
  {
    v2 = (v1 + 24);
  }

  else
  {
    v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  }

  v3 = *v2;
  if (v3 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id DOCTagsCollectionViewData.tag(atIndex:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  if (v3)
  {
    v4 = (v3 + 24);
  }

  v5 = *v4;

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_5;
    }

LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (result <= a1)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x24C1FC540](a1, v5);
    goto LABEL_9;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v5 + 8 * a1 + 32);

    v8 = v7;
LABEL_9:
    v9 = v8;

LABEL_12:

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t DOCTagsCollectionViewData.index(ofTag:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  if (v3)
  {
    v4 = (v3 + 24);
  }

  v5 = *v4;

  v6 = specialized Collection<>.firstIndex(of:)(a1, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return v6;
  }

  return NSNotFound.getter();
}

uint64_t DOCTagsCollectionViewData.presence(of:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8);
  v5 = (v3 + 32);
  v6 = v3 == 0;
  if (v3)
  {
    v7 = (v3 + 40);
  }

  else
  {
    v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16);
  }

  if (!v6)
  {
    v4 = v5;
  }

  v8 = *v4;
  v9 = *v7;

  if (specialized Set.contains(_:)(a1, v9))
  {

    return 2;
  }

  else
  {
    v11 = specialized Set.contains(_:)(a1, v8);

    return v11 & 1;
  }
}

id DOCTagsCollectionViewData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCTagsCollectionViewData.init()(__n128 a1)
{
  v2 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection];
  *v2 = specialized DOCTagUnionCollection.init(nodes:)(MEMORY[0x277D84F90]);
  v2[1] = v3;
  v2[2] = v4;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCTagsCollectionViewData();
  return objc_msgSendSuper2(&v6, sel_init);
}

unint64_t DOCTagsCollectionViewDataPresence.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

double DOCTagsCollectionViewDataChanges.deletions.getter()
{
  swift_beginAccess();

  return result;
}

double DOCTagsCollectionViewDataChanges.deletions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

BOOL DOCTagsCollectionViewDataChanges.empty.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

id DOCTagsCollectionViewDataChanges.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTagsCollectionViewDataChanges();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCTagsCollectionViewData.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void protocol witness for static Equatable.== infix(_:_:) in conformance DOCTagUnionCollection(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(*a1, *a2))
  {
    _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v2, v4);
    if (v6)
    {

      _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v3, v5);
    }
  }
}

uint64_t specialized _ArrayProtocol.filter(_:)(unint64_t a1, void *a2)
{
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v21 = a1;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = a2;
    v26 = a1 + 32;
    v23 = a1 & 0xC000000000000001;
    v24 = v3;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x24C1FC540](v4, v21);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v26 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {

        v10 = v7;
        v11 = __CocoaSet.contains(_:)();

        if (v11)
        {

          goto LABEL_6;
        }
      }

      else if (*(v9 + 16))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
        v12 = *(v9 + 40);

        v13 = NSObject._rawHashValue(seed:)(v12);
        v14 = -1 << *(v9 + 32);
        v15 = v13 & ~v14;
        if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = *(*(v9 + 48) + 8 * v15);
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v3 = v24;
          a2 = v25;
          v6 = v22;
          v5 = v23;
          goto LABEL_6;
        }

LABEL_4:

        v3 = v24;
        a2 = v25;
        v6 = v22;
        v5 = v23;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v4 == v3)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized DOCTagUnionCollection.init(nodes:)(unint64_t a1)
{
  v8 = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result >= 1)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 1)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_6:
    v4 = [v3 tags];
    swift_unknownObjectRelease();
    v5 = DOCTagsFromFPTags();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.formUnion<A>(_:)(v6);

    specialized Sequence.forEach(_:)(a1, &v8, &v9);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence()
{
  result = lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence;
  if (!lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence);
  }

  return result;
}

Swift::Int DOCLinkDeferredLocalizedError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

id DOCLinkDeferredLocalizedError.localizedDescription.getter(uint64_t a1)
{
  v2 = *v1;
  result = _DocumentManagerBundle();
  v4 = result;
  if (!v2)
  {
    if (result)
    {
      v12 = 0x8000000249BF5240;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0xD00000000000001DLL;
      v8 = 0x8000000249BF5220;
      v9 = 0xD00000000000004ELL;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (result)
    {
      v12 = 0x8000000249BF51E0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0xD00000000000001BLL;
      v8 = 0x8000000249BF51C0;
      v9 = 0xD000000000000036;
LABEL_9:
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, *&v5, v4, v10, *&v9)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v12 = 0x8000000249BF5170;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v8 = 0x8000000249BF5150;
    v9 = 0xD00000000000004CLL;
    v7 = 0xD000000000000014;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DOCThumbnailStyle.init(userInterfaceStyle:)(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_249BB9BA0[a1];
  }

  type metadata accessor for UIUserInterfaceStyle(0);
  v4[3] = v3;
  v4[0] = a1;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 1;
}

id DOCBlockOperation.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t DOCBlockOperation.block.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block);

  return v1;
}

id DOCBlockOperation.init(block:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCBlockOperation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBlockOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSArray) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FINode();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1, isa);
}

id thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned FIOperationError) -> (@autoreleased FIOperationReply?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

uint64_t static DOCCreateFolderOperation.renameCollisionFormattedString(folderName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for renameCollisionBaseString != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return String.init(format:_:)();
}

void *DOCCreateFolderOperation.__allocating_init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a4;
  v11 = objc_allocWithZone(v5);
  swift_getObjectType();
  v12 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(a1, a2, a3, v7, a5, v11);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t static DOCCreateFolderOperation.appendNumber(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = MEMORY[0x24C1FAD20](a1, a2);
  v10 = MEMORY[0x24C1FAD20](a3, a4);
  v11 = [v8 uniqueNameByAppendingNumber:v9 fileExtension:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id DOC_FINewFolderOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName + 8);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager);
  v5 = type metadata accessor for DOC_FINewFolderOperation();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode] = v3;
  v7 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName];
  *v7 = v1;
  v7[1] = v2;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager] = v4;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_didRegisterUndo] = 0;
  swift_getObjectType();
  v8 = DOCNode.isFINode.getter();
  swift_unknownObjectRetain();

  v9 = v4;
  v10 = MEMORY[0x24C1FAD20](v1, v2);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  if (v8)
  {
    v15.receiver = v6;
    v15.super_class = v5;
    v12 = objc_msgSendSuper2(&v15, sel_initWithName_destinationFolder_propertyList_, v10, v11, 0);
  }

  else
  {
    v16.receiver = v6;
    v16.super_class = v5;
    v12 = objc_msgSendSuper2(&v16, sel_initWithName_destinationFolderItem_, v10, v11);
  }

  v13 = v12;

  if (v13)
  {
  }

  return v13;
}

void *DOC_FINewFolderOperation.operationForUndoing()()
{
  v1 = [v0 folderNode];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249BA0290;
    *(v2 + 32) = v1;
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager];
    v4 = v1;
    v1 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, v0, v3);
  }

  return v1;
}

void one-time initialization function for untitledFolderName(uint64_t a1)
{
  one-time initialization function for untitledFolderName(a1, &static DOC_FPCreateFolderOperation.untitledFolderName, &qword_27EEF0928);
}

{
  one-time initialization function for untitledFolderName(a1, &static DOCCreateFolderOperation.untitledFolderName, algn_27EEF0938);
}

uint64_t DOC_FPCreateFolderOperation.folderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName);

  return v1;
}

void *DOC_FPCreateFolderOperation.folderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOC_FPCreateFolderOperation.folderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOC_FPCreateFolderOperation.__allocating_init(parentItem:folderName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = a1;
  v13 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v13 = a2;
  v13[1] = a3;
  swift_beginAccess();
  *&v11[v12] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a4;
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = a5;
  v14 = a1;

  v15 = a4;
  v16 = MEMORY[0x24C1FAD20](a2, a3);

  v21.receiver = v11;
  v21.super_class = v5;
  v17 = objc_msgSendSuper2(&v21, sel_initWithParentItem_folderName_, v14, v16);

  v18 = *((*MEMORY[0x277D85000] & *v17) + 0xB0);
  v19 = v17;
  v18();

  return v19;
}

void *DOC_FPCreateFolderOperation.init(parentItem:folderName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = a1;
  v12 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v12 = a2;
  v12[1] = a3;
  swift_beginAccess();
  *&v5[v11] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a4;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = a5;
  v13 = a1;

  v14 = a4;
  v15 = MEMORY[0x24C1FAD20](a2, a3);

  v20.receiver = v5;
  v20.super_class = type metadata accessor for DOC_FPCreateFolderOperation();
  v16 = objc_msgSendSuper2(&v20, sel_initWithParentItem_folderName_, v13, v15);

  v17 = *((*MEMORY[0x277D85000] & *v16) + 0xB0);
  v18 = v16;
  v17();

  return v18;
}

id @objc DOC_FINewFolderOperation.actionNameForUndoing.getter(uint64_t a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v9._object = 0x8000000249BF5330;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0x646C6F462077654ELL;
    v5._object = 0x8000000249BF5300;
    v9._countAndFlagsBits = 0xD00000000000003FLL;
    v5._countAndFlagsBits = 0xD000000000000020;
    v4._object = 0xEA00000000007265;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v3, v2, v4, v9);

    v7 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOC_FPCreateFolderOperation.actionNameForUndoing.getter(uint64_t a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v7._object = 0x8000000249BF5330;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0x646C6F462077654ELL;
    v5._object = 0x8000000249BF5300;
    v7._countAndFlagsBits = 0xD00000000000003FLL;
    v5._countAndFlagsBits = 0xD000000000000020;
    v4._object = 0xEA00000000007265;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v3, v2, v4, v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOC_FPCreateFolderOperation.operationForRedoing()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName + 8);
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo);
  v7 = type metadata accessor for DOC_FPCreateFolderOperation();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v2;
  v10 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v10 = v3;
  v10[1] = v4;
  swift_beginAccess();
  *&v8[v9] = 0;
  *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = v5;
  v8[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = v6;
  v11 = v2;

  v12 = v5;
  v13 = MEMORY[0x24C1FAD20](v3, v4);
  v22.receiver = v8;
  v22.super_class = v7;
  v14 = objc_msgSendSuper2(&v22, sel_initWithParentItem_folderName_, v11, v13);

  v15 = *((*MEMORY[0x277D85000] & *v14) + 0xB0);
  v16 = v14;
  v15();

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  aBlock[4] = partial apply for closure #1 in DOC_FPCreateFolderOperation.operationForRedoing();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_133;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v19 setCreateFolderCompletionBlock_];
  _Block_release(v18);

  return v14;
}

void *DOC_FPCreateFolderOperation.operationForUndoing()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249BA0290;
    *(v2 + 32) = v1;
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager);
    v4 = v1;
    v1 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, v0, v3);
  }

  return v1;
}

Swift::Void __swiftcall DOC_FPCreateFolderOperation.registerUndo()()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo) == 1)
  {
    [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager) registerUndoOperationForSender_];
  }
}

id DOC_FPCreateFolderOperation.__allocating_init(parentItem:folderName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x24C1FAD20](a2, a3);

  v9 = [v7 initWithParentItem:a1 folderName:v8];

  return v9;
}

uint64_t DOCCreateFolderOperation.folderNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id DOCCreateFolderOperation.stateLock.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void one-time initialization function for untitledFolderName(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v6 = v5;
    v11._object = 0x8000000249BF5690;
    v7._countAndFlagsBits = 0x64656C7469746E75;
    v7._object = 0xEF7265646C6F6620;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v11);

    *a2 = v10._countAndFlagsBits;
    *a3 = v10._object;
  }

  else
  {
    __break(1u);
  }
}

void *DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a4;
  swift_getObjectType();
  v11 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(a1, a2, a3, v7, a5, v5);
  swift_unknownObjectRelease();

  return v11;
}

void closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = DOCCreateFolderOperation.stateLock.getter();
    [v13 lock];
    closure #1 in closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(v12, a1, a3, a4, a5, a6, &v14);
    [v13 unlock];

    if (v14)
    {
      DOCCreateFolderOperation._schedule()();
    }
  }
}

void closure #1 in closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _BYTE *a7@<X8>)
{
  v8 = a1;
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes) = 0;
  if (a2)
  {
    v12 = one-time initialization token for UI;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v50 = a7;
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = v13;
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v43 = v17;
      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v18 = 136315394;
      v19 = [a3 filename];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v49);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v42 = a2;
      v24 = v15;
      outlined destroy of NSObject?(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    v25 = type metadata accessor for DOC_FPCreateFolderOperation();
    v26 = objc_allocWithZone(v25);
    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v15;
    v28 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
    *v28 = a4;
    v28[1] = a5;
    swift_beginAccess();
    *&v26[v27] = 0;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a6;
    v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = 0;
    v29 = v15;

    v30 = a6;
    v31 = MEMORY[0x24C1FAD20](a4, a5);
    v48.receiver = v26;
    v48.super_class = v25;
    v32 = objc_msgSendSuper2(&v48, sel_initWithParentItem_folderName_, v29, v31);

    v33 = *((*MEMORY[0x277D85000] & *v32) + 0xB0);
    v34 = v32;
    v33();

    v8 = a1;
    v35 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp) = v32;

    a7 = v50;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClassUnconditional();
      *(v39 + 4) = v41;
      *v40 = v41;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2493AC000, v37, v38, "Failed to get FPItem for destinationNode: %@", v39, 0xCu);
      outlined destroy of NSObject?(v40);
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
    }
  }

  *a7 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred);
}

uint64_t key path getter for DOCCreateFolderOperation.nameConflictHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCCreateFolderOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.nameConflictHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCCreateFolderOperation, @in_guaranteed String, @in_guaranteed String, @in_guaranteed AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out String?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t key path getter for DOCCreateFolderOperation.errorHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed FIOperationError?, @guaranteed Error?) -> (@owned FIOperationReply?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.errorHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed FIOperationError?, @in_guaranteed Error?) -> (@out FIOperationReply?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x178);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t key path getter for DOCCreateFolderOperation.completionHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed DOCNode?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.completionHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t DOCCreateFolderOperation.nameConflictHandler.getter(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t DOCCreateFolderOperation.nameConflictHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void DOCCreateFolderOperation.setUpCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 completionHandler];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v3 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSArray) -> ();
    }

    else
    {
      v4 = 0;
    }

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v3;
    v14[4] = v4;
    v38 = partial apply for closure #1 in DOCCreateFolderOperation.setUpCallbacks();
    v39 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v37 = &block_descriptor_55_5;
    v15 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);

    [v2 setCompletionHandler_];
    _Block_release(v15);
    v16 = v2;
    v17 = [v16 nameConflictHandler];
    if (v17)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v17 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSString, @unowned NSString, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@autoreleased NSString?);
    }

    else
    {
      v18 = 0;
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v17;
    v20[4] = v18;
    v38 = partial apply for closure #2 in DOCCreateFolderOperation.setUpCallbacks();
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?);
    v37 = &block_descriptor_62_1;
    v21 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17, v18);

    [v16 setNameConflictHandler_];
    _Block_release(v21);

    v22 = [v16 errorHandler];
    if (v22)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v22 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?);
    }

    else
    {
      v23 = 0;
    }

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v22;
    v25[4] = v23;
    v38 = partial apply for closure #3 in DOCCreateFolderOperation.setUpCallbacks();
    v39 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v37 = &block_descriptor_69_1;
    v26 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v22, v23);

    [v16 setErrorHandler_];
    _Block_release(v26);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v22, v23);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17, v18);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
      v7 = v5;
      v8 = v6();
      v10 = v8;
      if (v8)
      {
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8, v9);
      }

      [v7 setShouldBounceOnCollision_];
      v11 = [v7 createFolderCompletionBlock];
      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ();
      }

      else
      {
        v12 = 0;
      }

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = v11;
      v31[4] = v12;
      v38 = partial apply for closure #4 in DOCCreateFolderOperation.setUpCallbacks();
      v39 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v37 = &block_descriptor_45_2;
      v32 = _Block_copy(&aBlock);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11, v12);

      [v7 setCreateFolderCompletionBlock_];
      _Block_release(v32);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11, v12);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.UI);
      oslog = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2493AC000, oslog, v28, "Attempting to set up callbacks prematurely", v29, 2u);
        MEMORY[0x24C1FE850](v29, -1, -1);
      }
    }
  }
}

void closure #1 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (a2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(a2 + 32);
    }

    v10 = v9;
    v11 = v9;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v8) + 0xF0))(v10);
  v14 = (*((*v12 & *v8) + 0x188))(v13);
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = v10;
    v16(v8, v10);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16, v17);
  }

  if (a4)
  {
    a4(a1, a2);
  }

  (*((*v12 & *v8) + 0x160))(0, 0);
  (*((*v12 & *v8) + 0x178))(0, 0);
  (*((*v12 & *v8) + 0x190))(0, 0);
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSString, @unowned NSString, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@autoreleased NSString?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = MEMORY[0x24C1FAD20](a2, a3);
  v13 = MEMORY[0x24C1FAD20](a4, a5);
  v14 = (*(a7 + 16))(a7, a1, v12, v13, a6);

  if (!v14)
  {
    return 0;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v15;
}

void *closure #2 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v25 = a1;
    v17 = (*((*MEMORY[0x277D85000] & *result) + 0x158))();
    if (v17 && (v19 = v17, v20 = v18, v24 = v17(v16, a2, a3, a4, a5, a6), v22 = v21, outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v19, v20), v22))
    {

      return v24;
    }

    else if (a8)
    {
      v23 = a8(v25, a2, a3, a4, a5, a6);

      return v23;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a2;
  v7 = v5();
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x24C1FAD20](v7, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id closure #3 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))();
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      v13 = v9(v8, a2, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11, v12);
    }

    else if (a4)
    {
      v13 = a4(a1, a2);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v14 = [a2 error];
    v15 = objc_allocWithZone(MEMORY[0x277D04718]);
    v16 = _convertErrorToNSError(_:)();

    v13 = [v15 initWithResolution:5 error:v16];
  }

  return v13;
}

void closure #4 in DOCCreateFolderOperation.setUpCallbacks()(void *a1, void *a2, uint64_t a3, void (*a4)(void *, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = MEMORY[0x277D85000];
    if (a2)
    {
      v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))(a2);
      if (v10)
      {
        v12 = v10;
        v13 = v11;
        v14 = a2;

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12, v13);
      }

      else
      {
      }
    }

    v15 = *((*v9 & *v8) + 0xF0);
    v16 = a1;
    v17 = v15(a1);
    v18 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v18)
    {
      v19 = *((*v9 & *v18) + 0x80);
      v20 = v16;
      v21 = v18;
      v19(a1);
    }

    v22 = (*((*v9 & *v8) + 0x188))(v17);
    if (v22)
    {
      v24 = v22;
      v25 = v23;
      v22(v8, a1);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v24, v25);
    }

    if (a4)
    {
      a4(a1, a2);
    }

    (*((*v9 & *v8) + 0x160))(0, 0);
    (*((*v9 & *v8) + 0x178))(0, 0);
    (*((*v9 & *v8) + 0x190))(0, 0);
  }
}

void DOCCreateFolderOperation._schedule()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  DOCCreateFolderOperation.setUpCallbacks()();
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents] & 1) == 0)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;
    v7 = v0;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in DOCCreateFolderOperation._schedule(), v6);
  }

  v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp];
  if (v8)
  {
    [v8 schedule];
    return;
  }

  v9 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 defaultManager];
    [v12 scheduleAction:v11];

LABEL_7:
    return;
  }

  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes] & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v12 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2493AC000, v12, v14, "Schedule attempted without configuring the operation first", v15, 2u);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    goto LABEL_7;
  }
}

uint64_t closure #1 in DOCCreateFolderOperation._schedule()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;

  return MEMORY[0x2822009F8](closure #1 in DOCCreateFolderOperation._schedule(), 0, 0);
}

uint64_t closure #1 in DOCCreateFolderOperation._schedule()()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode);
  v0[2] = 0;
  v2 = [v1 syncFetchFPItem_];
  v3 = v0[2];
  if (v2)
  {
    v4 = v2;
    v5 = v3;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall DOCCreateFolderOperation.schedule()()
{
  v1 = DOCCreateFolderOperation.stateLock.getter();
  [v1 lock];
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred) & 1) == 0 && *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes) == 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred) = 1;
  }

  [v1 unlock];

  DOCCreateFolderOperation._schedule()();
}

id DOCCreateFolderOperation.actionNameForUndoing.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp);
  if (v2)
  {
    v3 = v2;
    result = _DocumentManagerBundle();
    if (result)
    {
      v5 = result;
      v17._object = 0x8000000249BF5330;
      v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v6.value._object = 0xEB00000000656C62;
      v7._countAndFlagsBits = 0x646C6F462077654ELL;
      v8._object = 0x8000000249BF5300;
      v17._countAndFlagsBits = 0xD00000000000003FLL;
      v8._countAndFlagsBits = 0xD000000000000020;
      v7._object = 0xEA00000000007265;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v6, v5, v7, v17)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v10)
    {
      v11 = *((*MEMORY[0x277D85000] & *v10) + 0x98);
      v12 = v10;
      countAndFlagsBits = v11();

      return countAndFlagsBits;
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v13 = result;
      v18._object = 0x8000000249BF5330;
      v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v14.value._object = 0xEB00000000656C62;
      v15._countAndFlagsBits = 0x646C6F462077654ELL;
      v16._object = 0x8000000249BF5300;
      v18._countAndFlagsBits = 0xD00000000000003FLL;
      v16._countAndFlagsBits = 0xD000000000000020;
      v15._object = 0xEA00000000007265;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v14, v13, v15, v18)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  __break(1u);
  return result;
}

uint64_t *DOCCreateFolderOperation.operationForRedoing()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp);
  if (v2)
  {
    v3 = v2;
    v4 = DOC_FINewFolderOperation.operationForRedoing()();

    if (v4)
    {
      type metadata accessor for DOC_FINewFolderOperation();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode);
        v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName);
        v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName + 8);
        v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents);
        v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager);
        v12 = type metadata accessor for DOCCreateFolderOperation();
        v13 = objc_allocWithZone(v12);
        v14 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp] = 0;
        v15 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp] = 0;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode] = 0;
        v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes] = 0;
        v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred] = 0;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock] = 0;
        v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_nameConflictHandler];
        *v16 = 0;
        v16[1] = 0;
        v17 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_errorHandler];
        *v17 = 0;
        v17[1] = 0;
        v18 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_completionHandler];
        *v18 = 0;
        v18[1] = 0;
        *&v13[v14] = v6;
        *&v13[v15] = 0;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode] = v7;
        v19 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName];
        *v19 = v9;
        v19[1] = v8;
        v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents] = v10;
        *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager] = v11;
        v50.receiver = v13;
        v50.super_class = v12;
        swift_unknownObjectRetain_n();
        v20 = v11;

        v21 = objc_msgSendSuper2(&v50, sel_init);
        v22 = *v21;
        v23 = *MEMORY[0x277D85000];
LABEL_10:
        v44 = *((v23 & v22) + 0x1D8);
        v45 = v21;
        v44(v45, v46, v47, v48);

        swift_unknownObjectRelease();
        return v21;
      }

      swift_unknownObjectRelease();
    }
  }

  v24 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
  if (v24)
  {
    v25 = MEMORY[0x277D85000];
    v26 = *((*MEMORY[0x277D85000] & *v24) + 0xA0);
    v27 = v24;
    v28 = v26();

    if (v28)
    {
      type metadata accessor for DOC_FPCreateFolderOperation();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;
        v31 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode);
        v33 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName);
        v32 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName + 8);
        v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents);
        v35 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager);
        v36 = type metadata accessor for DOCCreateFolderOperation();
        v37 = objc_allocWithZone(v36);
        v38 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp] = 0;
        v39 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp] = 0;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode] = 0;
        v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes] = 0;
        v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred] = 0;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock] = 0;
        v40 = &v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_nameConflictHandler];
        *v40 = 0;
        v40[1] = 0;
        v41 = &v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_errorHandler];
        *v41 = 0;
        v41[1] = 0;
        v42 = &v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_completionHandler];
        *v42 = 0;
        v42[1] = 0;
        *&v37[v38] = 0;
        *&v37[v39] = v30;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_destinationNode] = v31;
        v43 = &v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderName];
        *v43 = v33;
        v43[1] = v32;
        v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_isForAppIntents] = v34;
        *&v37[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_undoManager] = v35;
        v51.receiver = v37;
        v51.super_class = v36;
        swift_unknownObjectRetain_n();
        v20 = v35;

        v21 = objc_msgSendSuper2(&v51, sel_init);
        v22 = *v21;
        v23 = *v25;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void *DOCCreateFolderOperation.operationForUndoing()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp);
  if (!v2 || (v3 = v2, v4 = DOC_FINewFolderOperation.operationForUndoing()(), v3, !v4))
  {
    v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v5) + 0xA8);
      v7 = v5;
      v8 = v6();

      return v8;
    }

    return 0;
  }

  return v4;
}