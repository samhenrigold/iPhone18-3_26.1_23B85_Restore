uint64_t View.workoutPreview(_:isPresented:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutPlan();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  *&v14[v12[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v16 = &v14[v12[5]];
  *v16 = a2;
  *(v16 + 1) = a3;
  v16[16] = a4;
  v17 = v12[7];
  v18 = objc_allocWithZone(type metadata accessor for WorkoutRemoteViewServiceAdaptor());

  *&v14[v17] = [v18 init];
  MEMORY[0x23EEB9AA0](v14, a5, v12, a6);
  return outlined destroy of WorkoutPreviewPresentingOverlayModifier(v14);
}

uint64_t type metadata accessor for WorkoutPreviewPresentingOverlayModifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutPreviewPresentingOverlayModifier;
  if (!type metadata singleton initialization cache for WorkoutPreviewPresentingOverlayModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPreviewPresentingOverlayModifier.currentHostingController.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  outlined init with copy of Environment<WithCurrentHostingControllerAction>.Content(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WithCurrentHostingControllerAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WorkoutPreviewPresentingOverlayModifier.currentHostingController.getter(v5);
  v8 = a1;
  WithCurrentHostingControllerAction.callAsFunction(_:)();
  return (*(v3 + 8))(v5, v2);
}

void closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  if (a1)
  {
    v12 = (a2 + *(v9 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v12) = *(v12 + 16);
    v22 = v13;
    v23 = v14;
    v24 = v12;
    v15 = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EEB9AC0](&v21, v16);
    if (v21 == 1)
    {
      outlined init with copy of WorkoutPreviewPresentingOverlayModifier(a2, v11);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      outlined init with take of WorkoutPreviewPresentingOverlayModifier(v11, v18 + v17);
      outlined init with copy of WorkoutPreviewPresentingOverlayModifier(a2, v8);
      v19 = swift_allocObject();
      outlined init with take of WorkoutPreviewPresentingOverlayModifier(v8, v19 + v17);
      dispatch thunk of WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)();
    }

    else
    {
      dispatch thunk of WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)();
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v2 + *(v5 + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v6) = *(v6 + 16);
  v15 = v7;
  v16 = v8;
  v17 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EEB9AC0](&v14, v9);
  LOBYTE(v15) = v14;
  outlined init with copy of WorkoutPreviewPresentingOverlayModifier(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  outlined init with take of WorkoutPreviewPresentingOverlayModifier(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>();
  View.onChange<A>(of:initial:_:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of WorkoutPreviewPresentingOverlayModifier(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC9BC0C(uint64_t *a1)
{
  type metadata accessor for WorkoutPreviewPresentingOverlayModifier(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier()
{
  result = lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier;
  if (!lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier)
  {
    type metadata accessor for WorkoutPreviewPresentingOverlayModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPreviewPresentingOverlayModifier and conformance WorkoutPreviewPresentingOverlayModifier);
  }

  return result;
}

uint64_t sub_23BC9BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutPlan();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd, &_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23BC9BE2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutPlan();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd, &_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for WorkoutPreviewPresentingOverlayModifier(uint64_t a1)
{
  type metadata accessor for WorkoutPlan();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<WithCurrentHostingControllerAction>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WorkoutRemoteViewServiceAdaptor();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Environment<WithCurrentHostingControllerAction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>)
  {
    type metadata accessor for WithCurrentHostingControllerAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>);
    }
  }
}

uint64_t outlined init with copy of WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutPreviewPresentingOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for WorkoutPlan();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WorkoutPreviewPresentingOverlayModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #2 in closure #1 in closure #1 in WorkoutPreviewPresentingOverlayModifier.body(content:)(a1, a2, v6);
}

uint64_t outlined init with copy of Environment<WithCurrentHostingControllerAction>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC9C568()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_WorkoutKit_aB00f24PreviewPresentingOverlayD033_4C24E71AE7B7225A0D6FCA29E9998C74LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutPreviewPresentingOverlayModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}