double protocol witness for static PreferenceKey.defaultValue.getter in conformance ConnectionOptionPayloadStoragePreferenceKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAB096F0;
  *a1 = static ConnectionOptionPayloadStoragePreferenceKey.defaultValue;
  a1[1] = v1;

  return result;
}

void type metadata accessor for PreferenceValues.Value<NavigationTitleStorage?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PreferenceValues.Value<NavigationTitleStorage?>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for PreferenceValues.Value();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PreferenceValues.Value<NavigationTitleStorage?>);
    }
  }
}

double protocol witness for PresentationTransitionStyle._makePresentationTransition() in conformance AutomaticPresentationTransitionStyle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void type metadata accessor for AnyHashable?()
{
  if (!lazy cache variable for type metadata for AnyHashable?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyHashable?);
    }
  }
}

void type metadata accessor for (Decodable & Encodable)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Decodable & Encodable)?)
  {
    type metadata accessor for Decodable & Encodable();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (Decodable & Encodable)?);
    }
  }
}

unint64_t type metadata accessor for Decodable & Encodable()
{
  result = lazy cache variable for type metadata for Decodable & Encodable;
  if (!lazy cache variable for type metadata for Decodable & Encodable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable);
  }

  return result;
}

uint64_t initializeWithCopy for SheetPreference(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
  }

  else
  {
    *(a1 + 8) = *v5;
  }

  *(a1 + 24) = a2[3];
  v7 = a2[7];
  if (v7)
  {
    v8 = a2[8];
    *(a1 + 56) = v7;
    *(a1 + 64) = v8;
    (**(v7 - 8))(a1 + 32, a2 + 4);
  }

  else
  {
    v9 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v9;
    *(a1 + 64) = a2[8];
  }

  *(a1 + 72) = *(a2 + 36);
  v10 = a2[11];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v10;
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 52);

  return a1;
}

double destroy for SheetPreference(void *a1)
{

  if (a1[1])
  {
  }

  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 4);
  }

  return result;
}

uint64_t one-time initialization function for clientNeedsOscillationSuppression(uint64_t a1)
{
  static Semantics.v6.getter();
  result = isLinkedOnOrAfter(_:)();
  clientNeedsOscillationSuppression = result & 1;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance RemoteSheetContainerViewGraphFeature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

uint64_t sub_18BF089C0(uint64_t a1, double a2)
{
  v14 = *(a1 + 8);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
  v4 = type metadata accessor for ModifiedContent();
  v5 = MEMORY[0x1E69E6720];
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E6980A08];
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, MEMORY[0x1E6980A08]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v8);
  v18 = type metadata accessor for ModifiedContent();
  v17 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v8);
  v19 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v8);
  v20 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, v5);
  v11 = type metadata accessor for ModifiedContent();
  v34[0] = v14;
  v34[1] = MEMORY[0x1E697EBF8];
  v12 = MEMORY[0x1E697E858];
  v33[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v34);
  v33[1] = lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>();
  v32[0] = swift_getWitnessTable(v12, v3, v33);
  v32[1] = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  v31[0] = swift_getWitnessTable(v12, v4, v32);
  v31[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  v30[0] = swift_getWitnessTable(v12, v6, v31);
  v30[1] = lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  v29[0] = swift_getWitnessTable(v12, v7, v30);
  v29[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  v28[0] = swift_getWitnessTable(v12, v9, v29);
  v28[1] = &protocol witness table for ResetSearchEnvironmentModifier;
  v27[0] = swift_getWitnessTable(v12, v10, v28);
  v27[1] = &protocol witness table for ResetFormEnvironmentModifier;
  v26[0] = swift_getWitnessTable(v12, v16, v27);
  v26[1] = &protocol witness table for ResetTabViewEnvironmentModifier;
  v25[0] = swift_getWitnessTable(v12, v15, v26);
  v25[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  v24[0] = swift_getWitnessTable(v12, v18, v25);
  v24[1] = &protocol witness table for ClearNavigationContextModifier;
  v23[0] = swift_getWitnessTable(v12, v17, v24);
  v23[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  v22[0] = swift_getWitnessTable(v12, v19, v23);
  v22[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  v21[0] = swift_getWitnessTable(v12, v20, v22);
  v21[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(v12, v11, v21);
}

unint64_t lazy protocol witness table accessor for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetFormEnvironmentModifier, &type metadata for ResetFormEnvironmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetSearchEnvironmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetSearchEnvironmentModifier, &type metadata for ResetSearchEnvironmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier);
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationTransitionKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationTransitionKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for Attribute<RemoteSheetContainerVCKey.Storage?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<RemoteSheetContainerVCKey.Storage?>)
  {
    _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(255, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<RemoteSheetContainerVCKey.Storage?>);
    }
  }
}

double View.resetListStackBehavior()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t View.clearNavigationContext()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-1] - v6;
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-1] - v11;
  MEMORY[0x18D00A570](v10);
  swift_getKeyPath();
  LOBYTE(v19) = 0;
  v20[0] = a1;
  v20[1] = &protocol witness table for ClearNavigationContextModifier;
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v20, v17);
  View.environment<A>(_:_:)();

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  v19 = -1;
  v15 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>();
  v18[0] = WitnessTable;
  v18[1] = v15;
  swift_getWitnessTable(v13, v8, v18);
  View.environment<A>(_:_:)();

  return (*(v9 + 8))(v12, v8);
}

void *static NavigationTransition<>.zoom<A>(sourceID:in:)@<X0>(uint64_t a2@<X1>, void *a5@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *a5 = a2;
  return result;
}

__n128 initializeWithCopy for _NavigationTransitionStyleOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *a1 = *a2;
    v3 = *(a2 + 40);
    *(a1 + 32) = v2;
    *(a1 + 40) = v3;
    (**(v2 - 8))(a1 + 8, a2 + 8);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t destroy for _NavigationTransitionStyleOutputs(uint64_t result)
{
  if (*(result + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 8));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double specialized static ResetTabViewEnvironmentModifier.makeEnvironment(modifier:environment:)(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>, &type metadata for TabBarPlacementKey, &protocol witness table for TabBarPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>, &type metadata for TabBarPlacementKey, &protocol witness table for TabBarPlacementKey);

  PropertyList.subscript.setter();
  v2 = a1[1];
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>, &type metadata for IsTabBarShowingSectionsKey, &protocol witness table for IsTabBarShowingSectionsKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Form<FormStyleConfiguration.Content>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

double specialized static ResetSearchEnvironmentModifier.makeEnvironment(modifier:environment:)(void *a1)
{
  v1 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v4 == 4)
  {
    LOBYTE(v4) = 3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v1)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  LOBYTE(v4) = 7;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  *&v6 = 0;
  v4 = 0u;
  v5 = 0u;
  BYTE8(v6) = -1;
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(&v4, v3, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CollectionOfOne<FocusStoreList.Item>(&v4, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E6720]);
  *&v4 = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v4) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>, &type metadata for EnvironmentValues.IsSearchingKey, &protocol witness table for EnvironmentValues.IsSearchingKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v4) = 2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>, &type metadata for SearchScopeActivationKey, &protocol witness table for SearchScopeActivationKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(&v4, v3, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CollectionOfOne<FocusStoreList.Item>(&v4, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction);
  v4 = 0uLL;
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t outlined init with copy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI5StateVySbGMaTm_2(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI5StateVySbGMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unsigned __int8 *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ContainerBackgroundKeys.HostTransparency(unsigned __int8 *result, void *(*a2)(_BYTE *__return_ptr))
{
  if (*result >= 2u)
  {
    *&v5[17] = v2;
    *&v5[25] = v3;
    v4 = result;
    result = a2(v5);
    *v4 = v5[0];
  }

  return result;
}

void type metadata accessor for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency)()
{
  if (!lazy cache variable for type metadata for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency));
    }
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIBarButtonItem](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NavigationDestinationResolverBase] and conformance [A], &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NavigationDestinationResolverBase();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIMenuElement](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIMenuElement] and conformance [A], type metadata accessor for [UIMenuElement], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [AccessibilityNode] and conformance [A], &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AccessibilityNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [DateSequenceTimeline] and conformance [A], &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DateSequenceTimeline();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIFocusItem](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIFocusItem] and conformance [A], type metadata accessor for [UIFocusItem], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIView](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIView] and conformance [A], type metadata accessor for [UIView], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NavigationPath_ItemBoxBase], type metadata accessor for NavigationPath_ItemBoxBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NavigationPath_ItemBoxBase] and conformance [A], &lazy cache variable for type metadata for [NavigationPath_ItemBoxBase], type metadata accessor for NavigationPath_ItemBoxBase);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NavigationPath_ItemBoxBase();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NSObject & PlatformAccessibilityElementProtocol], type metadata accessor for NSObject & PlatformAccessibilityElementProtocol, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NSObject & PlatformAccessibilityElementProtocol] and conformance [A], &lazy cache variable for type metadata for [NSObject & PlatformAccessibilityElementProtocol], type metadata accessor for NSObject & PlatformAccessibilityElementProtocol);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIViewController](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIViewController] and conformance [A], type metadata accessor for [UIViewController], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = __CocoaSet.count.getter();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E697E600];
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [AnyFontModifier], MEMORY[0x1E697E600], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [AnyFontModifier] and conformance [A], &lazy cache variable for type metadata for [AnyFontModifier], v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyFontModifier();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIFocusEnvironment](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIFocusEnvironment] and conformance [A], type metadata accessor for [UIFocusEnvironment], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusEnvironment, &protocolRef_UIFocusEnvironment);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [NSLayoutConstraint](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], type metadata accessor for [NSLayoutConstraint], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [_UISceneSettingsDiffAction](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [_UISceneSettingsDiffAction] and conformance [A], type metadata accessor for [_UISceneSettingsDiffAction], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UISceneSettingsDiffAction, &protocolRef__UISceneSettingsDiffAction);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [_UISceneBSActionHandler](0);
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [_UISceneBSActionHandler] and conformance [A], type metadata accessor for [_UISceneBSActionHandler], MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UISceneBSActionHandler, &protocolRef__UISceneBSActionHandler);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [ViewResponder] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ViewResponder();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for PresentationSizing?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PresentationSizing?)
  {
    type metadata accessor for PresentationSizing();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PresentationSizing?);
    }
  }
}

uint64_t outlined init with copy of PresentationSizing?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationSizing?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PresentationOptionsPreference?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void _UIHostingView.setWantsTransparentBackground(for:_:)(int a1, char a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
  v4 = *(v2 + v3);
  if ((v4 & a1) != 0)
  {
    v5 = ~a1;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v4;
  if ((v4 & a1) == a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v8 = v7 | v4;
  if ((a2 & 1) == 0)
  {
    v8 = v6;
  }

  *(v2 + v3) = v8;
  _UIHostingView.transparentBackgroundReasons.didset(v4);
}

uint64_t specialized static PresentationState.Base.dismissedPresentations(from:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of PresentationState.Base(a1, &v101);
  outlined init with copy of PresentationState.Base(a2, v115);
  if (v114 == 4)
  {
    v3 = &v101;
LABEL_10:
    outlined destroy of SheetPreference(v3);
    v4 = v115;
LABEL_11:
    outlined destroy of PresentationState.Base(v4);
    return MEMORY[0x1E69E7CC0];
  }

  if (v114 == 8)
  {

    switch(v124)
    {
      case 2:
        outlined init with copy of PresentationState.Base(v115, v76);

        outlined init with copy of SheetPreference(&v101, &v95);
        outlined init with copy of SheetPreference(&v108, &v89);
        v87 = *&v76[72];
        v88[0] = *&v76[88];
        *(v88 + 10) = *&v76[98];
        v83 = *&v76[8];
        v84 = *&v76[24];
        v85 = *&v76[40];
        v86 = *&v76[56];
        if (*(&v96 + 1) != *(&v90 + 1) || *(&v96 + 1) != *(&v84 + 1))
        {
          goto LABEL_38;
        }

        break;
      case 8:
        outlined init with copy of PresentationState.Base(v115, v76);

        v99 = v105;
        v100[0] = v106[0];
        *(v100 + 10) = *(v106 + 10);
        v95 = v101;
        v96 = v102;
        v97 = v103;
        v98 = v104;
        v93 = *&v76[64];
        v94[0] = *&v76[80];
        *(v94 + 10) = *&v76[90];
        v89 = *v76;
        v90 = *&v76[16];
        v91 = *&v76[32];
        v92 = *&v76[48];
        v87 = v112;
        v88[0] = *v113;
        *(v88 + 10) = *&v113[10];
        v83 = v108;
        v84 = v109;
        v85 = v110;
        v86 = v111;
        v74[4] = v81;
        v75[0] = v82[0];
        *(v75 + 10) = *(v82 + 10);
        v74[0] = v77;
        v74[1] = v78;
        v74[2] = v79;
        v74[3] = v80;
        v12 = *&v76[24];
        v13 = *(&v78 + 1);
        v5 = MEMORY[0x1E69E7CC0];
        if (*(&v102 + 1) != *&v76[24] && *(&v96 + 1) != *(&v78 + 1))
        {
          outlined init with copy of SheetPreference(&v95, &v68);
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v15 = *(v5 + 16);
          v14 = *(v5 + 24);
          if (v15 >= v14 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
          }

          *(v5 + 16) = v15 + 1;
          v16 = (v5 + 112 * v15);
          v17 = v68;
          v18 = v70;
          v16[3] = v69;
          v16[4] = v18;
          v16[2] = v17;
          v19 = v71;
          v20 = v72;
          v21 = v73[0];
          *(v16 + 122) = *(v73 + 10);
          v16[6] = v20;
          v16[7] = v21;
          v16[5] = v19;
        }

        if (*(&v84 + 1) == v12 || *(&v84 + 1) == v13)
        {
          outlined destroy of SheetPreference(v74);
          outlined destroy of SheetPreference(&v83);
          outlined destroy of SheetPreference(&v89);
          v31 = &v95;
          goto LABEL_60;
        }

        outlined init with copy of SheetPreference(&v83, &v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        }

        v23 = *(v5 + 16);
        v22 = *(v5 + 24);
        if (v23 >= v22 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
        }

        outlined destroy of SheetPreference(v74);
        outlined destroy of SheetPreference(&v83);
        outlined destroy of SheetPreference(&v89);
        outlined destroy of SheetPreference(&v95);
        *(v5 + 16) = v23 + 1;
        v24 = (v5 + 112 * v23);
        v26 = v69;
        v25 = v70;
        v24[2] = v68;
        v24[3] = v26;
        v24[4] = v25;
        v28 = v72;
        v27 = v73[0];
        v29 = *(v73 + 10);
        v30 = v71;
        goto LABEL_58;
      case 11:
        outlined init with copy of PresentationState.Base(v115, v76);
        outlined init with copy of SheetPreference(&v101, &v95);
        v93 = *&v76[64];
        v94[0] = *&v76[80];
        *(v94 + 10) = *&v76[90];
        v89 = *v76;
        v90 = *&v76[16];
        v91 = *&v76[32];
        v92 = *&v76[48];
        outlined init with copy of SheetPreference(&v108, &v83);
        if (*(&v96 + 1) != *(&v84 + 1) || *(&v96 + 1) != *(&v90 + 1))
        {
LABEL_38:
          outlined destroy of SheetPreference(&v83);
          outlined destroy of SheetPreference(&v89);
          outlined destroy of SheetPreference(&v95);
          goto LABEL_39;
        }

        break;
      default:
LABEL_39:
        *&v76[64] = v105;
        *&v76[80] = v106[0];
        *&v76[90] = *(v106 + 10);
        *v76 = v101;
        *&v76[16] = v102;
        *&v76[32] = v103;
        *&v76[48] = v104;
        v99 = v112;
        v100[0] = *v113;
        *(v100 + 10) = *&v113[10];
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        PresentationState.Base.lastPresentation.getter(&v89);
        v32 = v89;
        if (v89)
        {
          v33 = *(&v90 + 1);
          outlined destroy of SheetPreference(&v89);
          v34 = *&v76[24];
          if (*&v76[24] == v33)
          {
            v5 = MEMORY[0x1E69E7CC0];
            v35 = *(&v96 + 1);
            v34 = v33;
            goto LABEL_48;
          }
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
          v33 = 0;
          v34 = *&v76[24];
        }

        outlined init with copy of SheetPreference(v76, &v89);
        v5 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        }

        v36 = *(v5 + 16);
        v37 = *(v5 + 24);
        v38 = v36 + 1;
        if (v36 >= v37 >> 1)
        {
          v65 = v5;
          v66 = *(v5 + 16);
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v36 + 1, 1, v65);
          v36 = v66;
          v5 = v67;
        }

        *(v5 + 16) = v38;
        v39 = (v5 + 112 * v36);
        v40 = v89;
        v41 = v91;
        v39[3] = v90;
        v39[4] = v41;
        v39[2] = v40;
        v42 = v92;
        v43 = v93;
        v44 = v94[0];
        *(v39 + 122) = *(v94 + 10);
        v39[6] = v43;
        v39[7] = v44;
        v39[5] = v42;
        v35 = *(&v96 + 1);
        if (!v32)
        {
LABEL_49:
          if (v35 == v34)
          {
            goto LABEL_50;
          }

          outlined init with copy of SheetPreference(&v95, &v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
          }

          v48 = *(v5 + 16);
          v47 = *(v5 + 24);
          if (v48 >= v47 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v5);
          }

          outlined destroy of SheetPreference(&v95);
          outlined destroy of SheetPreference(v76);
          *(v5 + 16) = v48 + 1;
          v24 = (v5 + 112 * v48);
          v50 = v90;
          v49 = v91;
          v24[2] = v89;
          v24[3] = v50;
          v24[4] = v49;
          v28 = v93;
          v27 = v94[0];
          v29 = *(v94 + 10);
          v30 = v92;
LABEL_58:
          *(v24 + 122) = v29;
          v24[6] = v28;
          v24[7] = v27;
          v24[5] = v30;
LABEL_61:
          v51 = v115;
LABEL_70:
          outlined destroy of PresentationState.Base(v51);
          return v5;
        }

LABEL_48:
        if (v35 == v33)
        {
LABEL_50:
          outlined destroy of SheetPreference(&v95);
          v31 = v76;
          goto LABEL_60;
        }

        goto LABEL_49;
    }

    type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18CD63400;
    outlined init with copy of SheetPreference(&v95, v5 + 32);
    outlined destroy of SheetPreference(&v83);
    outlined destroy of SheetPreference(&v89);
    outlined destroy of SheetPreference(&v95);
    outlined destroy of SheetPreference(&v108);
    v31 = &v101;
LABEL_60:
    outlined destroy of SheetPreference(v31);
    goto LABEL_61;
  }

  if (v124 == 3)
  {

    PresentationState.Base.lastPresentation.getter(v76);
    outlined init with copy of SheetPreference?(v76, &v95, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v95)
    {
      type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v7 = v99;
      v8 = v100[0];
      v9 = v97;
      *(v5 + 80) = v98;
      *(v5 + 96) = v7;
      *(v5 + 112) = v8;
      *(v5 + 122) = *(v100 + 10);
      v10 = v95;
      v11 = v96;
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = v10;
      *(v5 + 48) = v11;
      *(v5 + 64) = v9;
      _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v5 = MEMORY[0x1E69E7CC0];
    }

    v57 = v115 + 8;
    goto LABEL_69;
  }

  if (v124 == 8)
  {

    *&v76[64] = v115[4];
    *&v76[80] = v116[0];
    *&v76[90] = *(v116 + 10);
    *v76 = v115[0];
    *&v76[16] = v115[1];
    *&v76[32] = v115[2];
    *&v76[48] = v115[3];
    v99 = v122;
    v100[0] = *v123;
    *(v100 + 10) = *&v123[10];
    v95 = v118;
    v96 = v119;
    v97 = v120;
    v98 = v121;
    PresentationState.Base.lastPresentation.getter(&v89);
    if (v89)
    {
      v6 = *(&v90 + 1);
      outlined destroy of SheetPreference(&v89);
      if (v6 == *&v76[24] || v6 == *(&v96 + 1))
      {
        outlined destroy of SheetPreference(&v95);
        outlined destroy of SheetPreference(v76);
        v4 = &v101;
        goto LABEL_11;
      }
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    PresentationState.Base.lastPresentation.getter(&v89);
    outlined init with copy of SheetPreference?(&v89, &v83, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v83)
    {
      type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v52 = v87;
      v53 = v88[0];
      v54 = v85;
      *(v5 + 80) = v86;
      *(v5 + 96) = v52;
      *(v5 + 112) = v53;
      *(v5 + 122) = *(v88 + 10);
      v55 = v83;
      v56 = v84;
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = v55;
      *(v5 + 48) = v56;
      *(v5 + 64) = v54;
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v5 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of SheetPreference(&v95);
    v57 = v76;
LABEL_69:
    outlined destroy of SheetPreference(v57);
    v51 = &v101;
    goto LABEL_70;
  }

  if (v114 == 3)
  {

    v3 = &v101 + 8;
    goto LABEL_10;
  }

  PresentationState.Base.lastPresentation.getter(v76);
  v45 = *v76;
  if (*v76)
  {
    v46 = *&v76[24];
    outlined destroy of SheetPreference(v76);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v46 = 0;
  }

  PresentationState.Base.lastPresentation.getter(v76);
  if (*v76)
  {
    v59 = *&v76[24];
    outlined destroy of SheetPreference(v76);
    if (v45 && v46 == v59)
    {
      goto LABEL_76;
    }
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (!v45)
    {
LABEL_76:
      _s2os6LoggerVSgWOhTm_1(&v101, type metadata accessor for (PresentationState.Base, PresentationState.Base));
      return MEMORY[0x1E69E7CC0];
    }
  }

  PresentationState.Base.lastPresentation.getter(v76);
  outlined init with copy of SheetPreference?(v76, &v95, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (v95)
  {
    type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v60 = v99;
    v61 = v100[0];
    v62 = v97;
    *(v5 + 80) = v98;
    *(v5 + 96) = v60;
    *(v5 + 112) = v61;
    *(v5 + 122) = *(v100 + 10);
    v63 = v95;
    v64 = v96;
    *(v5 + 16) = xmmword_18CD63400;
    *(v5 + 32) = v63;
    *(v5 + 48) = v64;
    *(v5 + 64) = v62;
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v5 = MEMORY[0x1E69E7CC0];
  }

  _s2os6LoggerVSgWOhTm_1(&v101, type metadata accessor for (PresentationState.Base, PresentationState.Base));
  return v5;
}

double PresentationState.Base.lastPresentation.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of PresentationState.Base(v1, v13);
  if (v20 > 6u)
  {
    if (v20 > 9u)
    {
      if (v20 == 10)
      {
LABEL_20:
        outlined destroy of SheetPreference(v13);
        goto LABEL_21;
      }

      if (v20 == 11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v20 != 7)
      {
        if (v20 == 8)
        {

          v25 = v18;
          v26[0] = *v19;
          *(v26 + 10) = *&v19[10];
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          outlined destroy of SheetPreference(v13);
LABEL_17:
          v10 = v26[0];
          a1[4] = v25;
          a1[5] = v10;
          *(a1 + 90) = *(v26 + 10);
          v11 = v22;
          *a1 = v21;
          a1[1] = v11;
          v5 = v24;
          a1[2] = v23;
          a1[3] = v5;
          return *&v5;
        }

        goto LABEL_20;
      }

      outlined destroy of PresentationState.Base(v13);
    }

LABEL_21:
    *&v5 = 0;
    *(a1 + 90) = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return *&v5;
  }

  if (v20 > 3u)
  {
    if (v20 == 4)
    {
      v25 = *&v13[64];
      v26[0] = *&v13[80];
      *(v26 + 10) = *&v13[90];
      v21 = *v13;
      v22 = *&v13[16];
      v4 = *&v13[32];
      v3 = *&v13[48];
      goto LABEL_16;
    }

    if (v20 != 5)
    {
      goto LABEL_14;
    }

LABEL_11:

    v3 = *&v13[56];
    v25 = *&v13[72];
    v26[0] = *&v13[88];
    *(v26 + 10) = *&v13[98];
    v21 = *&v13[8];
    v22 = *&v13[24];
    v4 = *&v13[40];
LABEL_16:
    v23 = v4;
    v24 = v3;
    goto LABEL_17;
  }

  if (v20 >= 2u)
  {
    goto LABEL_11;
  }

LABEL_14:
  *(v26 + 10) = *&v13[90];
  v25 = *&v13[64];
  v26[0] = *&v13[80];
  v5 = *v13;
  v6 = *&v13[16];
  v21 = *v13;
  v22 = *&v13[16];
  v8 = *&v13[32];
  v7 = *&v13[48];
  v23 = *&v13[32];
  v24 = *&v13[48];
  v9 = *&v13[80];
  a1[4] = *&v13[64];
  a1[5] = v9;
  *(a1 + 90) = *(v26 + 10);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v7;
  return *&v5;
}

uint64_t outlined init with copy of SheetPreference?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for SheetPreference?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double specialized RootViewDelegate.updateAppFocus<A>(view:)(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = _UIHostingView.sceneActivationState.getter();
  v4 = specialized Sequence<>.contains(_:)(v2, v3 & 1, &outlined read-only object #0 of RootViewDelegate.updateAppFocus<A>(view:));
  v5 = [a1 window];
  if (v5)
  {
    v7 = v5;
    v8 = [v5 windowScene];

    if (v8)
    {
      v9 = [v8 _isKeyWindowScene];

      if (v4 & v9)
      {
        _UIHostingView.focusedValues.getter(&v34);
        v10 = v34;
        v12 = v36;
        v11 = v37;
        v32 = v35;
        v33 = v34;
        if (!static AppGraph.shared || (, Value = AGGraphGetValue(), v14 = *Value, v15 = Value[3], , , v14 == 1))
        {
          if (v10 != 1)
          {

            v14 = 1;
            goto LABEL_11;
          }

          v16 = 1;
        }

        else
        {
          if (v10 == 1)
          {

            outlined copy of Transaction?(v14);

LABEL_11:
            outlined consume of ListItemTint?(v14);
            outlined consume of ListItemTint?(v10);
            LODWORD(v10) = 0;
            goto LABEL_14;
          }

          outlined copy of Transaction?(v14);
          outlined consume of ListItemTint?(v10);

          LODWORD(v10) = v15 == v11;
          v16 = v14;
        }

        outlined consume of ListItemTint?(v16);
LABEL_14:
        v17 = specialized _UIHostingView.focusBridge.getter();
        swift_beginAccess();
        v18 = v17[6];
        v19 = v17[7];
        v20 = v17[8];
        if (static AppGraph.shared)
        {
          v21 = v11;
          v22 = v12;

          v23 = AGGraphGetValue();
          v24 = *v23;
          v25 = v23[1];
          v26 = v23[2];

          if (v25)
          {
            if (v19)
            {

              outlined copy of FocusStore?(v24, v25, v26);
              outlined consume of FocusStore?(v18, v19, v20);

              outlined consume of FocusStore?(v24, v25, v26);
              if (v24 == v18)
              {
                v27 = v10;
              }

              else
              {
                v27 = 0;
              }

              v12 = v22;
              v11 = v21;
              if (v27)
              {
                goto LABEL_26;
              }

              goto LABEL_29;
            }

            outlined copy of FocusStore?(v24, v25, v26);

LABEL_28:
            outlined consume of FocusStore?(v24, v25, v26);
            outlined consume of FocusStore?(v18, v19, v20);
            v12 = v22;
            v11 = v21;
            goto LABEL_29;
          }

          v12 = v22;
          v11 = v21;
          if (!v19)
          {
LABEL_25:

            outlined consume of FocusStore?(v24, 0, v26);
            if (v10)
            {
LABEL_26:

LABEL_38:

              return result;
            }

LABEL_29:
            if (static AppGraph.shared)
            {
              v34 = v33;
              LOBYTE(v35) = v32;
              v36 = v12;
              v37 = v11;

              v28 = AGGraphSetValue();
              v34 = v18;
              v35 = v19;
              v36 = v20;
              v29 = AGGraphSetValue();
              if ((v28 & 1) != 0 || v29)
              {
                AppGraph.graphDidChange()();
              }
            }

            else
            {
            }

            if (static AppDelegate.shared)
            {
              v30 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
              if (v30)
              {
                v31 = v30;
                UIKitMainMenuController.commandsDidChange()();
              }
            }

            goto LABEL_38;
          }
        }

        else
        {

          v26 = 0;
          v24 = 0;
          if (!v19)
          {
            goto LABEL_25;
          }
        }

        v21 = v11;
        v22 = v12;

        v25 = 0;
        goto LABEL_28;
      }
    }
  }

  return result;
}

void closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, char a2, void *a3, char a4, int a5, void *a6)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v40 = v54;
    *v41 = v55[0];
    *&v41[11] = *(v55 + 11);
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v34[4] = v46;
    v34[5] = v47;
    v34[6] = v48;
    v35 = v49;
    v34[0] = aBlock;
    v34[1] = v43;
    v34[2] = v44;
    v34[3] = v45;
    if (BYTE10(v55[1]) > 1u)
    {

      outlined destroy of PresentationState.Base(v34);
      return;
    }

    outlined destroy of SheetPreference(v34);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (([v14 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v21 = v15;
                  v22 = [v20 window];
                  if (v22)
                  {
                    v23 = v22;

                    v20 = v23;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    v24 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v24, &aBlock);
    PresentationState.Base.presentationSeed.getter(&v32);
    outlined destroy of PresentationState(&aBlock);
    if (v33 == 1 || v32 == -1 || a5 == -1 || v32 != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a6;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:);
    *(v27 + 24) = v26;
    *&v44 = partial apply for thunk for @callee_guaranteed () -> ();
    *(&v44 + 1) = v27;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v43 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v43 + 1) = &block_descriptor_17;
    v28 = _Block_copy(&aBlock);
    v29 = a3;
    v30 = a6;

    [v25 _performWithoutDeferringTransitions_];

    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18BF0BCB4()
{

  return swift_deallocObject();
}

uint64_t PresentationState.Base.presentationSeed.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of PresentationState.Base(v1, &v7);
  if (v12 > 6u)
  {
    if (v12 > 9u)
    {
      if (v12 == 10)
      {
        goto LABEL_15;
      }

      if (v12 != 11)
      {
LABEL_17:
        v4 = 0;
        v5 = 1;
        goto LABEL_18;
      }
    }

    else if (v12 != 7)
    {
      if (v12 == 8)
      {

        outlined destroy of SheetPreference(&v11);
      }

      else
      {
      }

      goto LABEL_15;
    }

    result = outlined destroy of PresentationState.Base(&v7);
    goto LABEL_17;
  }

  if (v12 > 3u)
  {
    if (v12 == 5)
    {
      goto LABEL_10;
    }

LABEL_15:
    v6 = &v7;
    goto LABEL_16;
  }

  if (v12 >= 2u)
  {
LABEL_10:

    v6 = &v8;
LABEL_16:
    result = outlined destroy of SheetPreference(v6);
    goto LABEL_17;
  }

  v4 = v10;
  result = outlined destroy of SheetPreference(&v7);
  v5 = 0;
LABEL_18:
  *a1 = v4;
  *(a1 + 4) = v5;
  return result;
}

uint64_t @objc SheetBridge.adaptivePresentationStyle(for:traitCollection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized SheetBridge.adaptivePresentationStyle(for:traitCollection:)(v7);

  return v9;
}

id @objc PresentationHostingController._remoteSheet.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController._remoteSheet.getter();

  return v2;
}

uint64_t closure #1 in PresentationHostingController._remoteSheet.getter@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  if (*(result + 8) == 255)
  {
    v4 = 0;
  }

  else
  {
    outlined init with copy of RemoteSheetContainerVCKey.Storage(result, v5);
    v4 = RemoteSheetContainerVCKey.Storage.remoteSheet.getter();
    result = outlined destroy of RemoteSheetContainerVCKey.Storage(v5);
  }

  *a2 = v4;
  return result;
}

uint64_t outlined init with take of RemoteSheetContainerVCKey.Storage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t RemoteSheetContainerVCWriter.value.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewLeafView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  v21 = v2;
  ViewResponderFilter.view.getter(v7);
  ViewLeafView.representedViewProvider.getter();
  (*(v5 + 8))(v7, v4);
  *a2 = 0;
  *(a2 + 8) = -1;
  v17 = *(v9 + 16);
  v17(v13, v16, AssociatedTypeWitness);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIRemoteSheetContaining, &protocolRef__UIRemoteSheetContaining);
  if (swift_dynamicCast())
  {
    outlined destroy of RemoteSheetContainerVCKey.Storage?(a2, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(a2 + 8) = 0;
  }

  else
  {
    v17(v20, v16, AssociatedTypeWitness);
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining, &protocolRef__UIRemoteViewControllerContaining);
    if (swift_dynamicCast())
    {
      outlined destroy of RemoteSheetContainerVCKey.Storage?(a2, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(a2 + 8) = 1;
    }
  }

  outlined init with copy of FocusGroupIdentifier?(a2, &v23, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
  if (v24 == 255)
  {
    (*(v9 + 8))(v16, AssociatedTypeWitness);
    return outlined destroy of RemoteSheetContainerVCKey.Storage?(&v23, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
  }

  else
  {
    outlined destroy of RemoteSheetContainerVCKey.Storage?(&v23, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    if (swift_weakLoadStrong())
    {
      v23 = AGCreateWeakAttribute();
      v22 = 1;
      lazy protocol witness table accessor for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    }

    return (*(v9 + 8))(v16, AssociatedTypeWitness);
  }
}

uint64_t View.alert(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v42 = a1;
  *(&v42 + 1) = a2;
  LOBYTE(v43) = a3;
  v12 = a3 & 1;
  _ss11AnyHashableVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v13 = MEMORY[0x18D00ACC0](&v30);
  if (v30 == 1)
  {
    a4(&v30, v13);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v45 = v33;
  }

  else
  {
    _s7SwiftUI5AlertVSgWOi0_(&v42);
  }

  v26 = v50;
  v27 = v51;
  v28 = v52;
  v29 = v53;
  v22 = v46;
  v23 = v47;
  v24 = v48;
  v25 = v49;
  v18 = v42;
  v19 = v43;
  v20 = v44;
  v21 = v45;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));

  View.presentationCommon(_:onDismiss:id:)(&v18, partial apply for closure #1 in View.actionSheet(isPresented:content:), v14, v16, a6, a7);

  _ss11AnyHashableVSgWOhTm_0(v16, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  return _ss11AnyHashableVSgWOhTm_0(&v30, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

uint64_t sub_18BF0C66C()
{

  return swift_deallocObject();
}

double View.presentationCommon(_:onDismiss:id:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[9];
  v38 = a1[8];
  v39 = v10;
  v40 = a1[10];
  v41 = *(a1 + 176);
  v11 = a1[5];
  v34 = a1[4];
  v35 = v11;
  v12 = a1[7];
  v36 = a1[6];
  v37 = v12;
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  v14 = a1[3];
  v32 = a1[2];
  v33 = v14;
  _ss11AnyHashableVSgWOcTm_1(a4, v27, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v15 = swift_allocObject();
  v16 = v39;
  *(v15 + 144) = v38;
  *(v15 + 160) = v16;
  *(v15 + 176) = v40;
  v17 = v35;
  *(v15 + 80) = v34;
  *(v15 + 96) = v17;
  v18 = v37;
  *(v15 + 112) = v36;
  *(v15 + 128) = v18;
  v19 = v31;
  *(v15 + 16) = v30;
  *(v15 + 32) = v19;
  v20 = v33;
  *(v15 + 48) = v32;
  *(v15 + 64) = v20;
  v21 = v27[1];
  *(v15 + 216) = v27[0];
  *(v15 + 192) = v41;
  *(v15 + 200) = a2;
  *(v15 + 208) = a3;
  *(v15 + 232) = v21;
  *(v15 + 248) = v28;
  v29[0] = partial apply for closure #1 in View.presentationCommon(_:onDismiss:id:);
  v29[1] = v15;
  _ss11AnyHashableVSgWOcTm_1(&v30, v27, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
  outlined copy of AppIntentExecutor?(a2, a3);
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>(0, v22, v23, v24);
  MEMORY[0x18D00A570](v29, a5, v25, a6);

  return result;
}

{
  v10 = a1[2];
  v28 = a1[3];
  v29 = *(a1 + 8);
  v11 = *a1;
  v26 = a1[1];
  v27 = v10;
  v25 = v11;
  v12 = MEMORY[0x1E69E6720];
  _ss11AnyHashableVSgWOcTm_0(a4, v22, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  v13 = swift_allocObject();
  v14 = v26;
  v15 = v28;
  *(v13 + 48) = v27;
  *(v13 + 64) = v15;
  *(v13 + 16) = v25;
  *(v13 + 32) = v14;
  v16 = v22[1];
  *(v13 + 104) = v22[0];
  *(v13 + 80) = v29;
  *(v13 + 88) = a2;
  *(v13 + 96) = a3;
  *(v13 + 120) = v16;
  *(v13 + 136) = v23;
  v24[0] = partial apply for closure #1 in View.presentationCommon(_:onDismiss:id:);
  v24[1] = v13;
  _ss11AnyHashableVSgWOcTm_0(&v25, v22, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet, v12);
  outlined copy of AppIntentExecutor?(a2, a3);
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>(0, v17, v18, v19);
  MEMORY[0x18D00A570](v24, a5, v20, a6);

  return result;
}

uint64_t sub_18BF0C828()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 72))
    {
      outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    }

    outlined consume of Text.Storage(*(v0 + 88), *(v0 + 96), *(v0 + 104));

    if (*(v0 + 120))
    {
    }

    if (*(v0 + 168))
    {
      outlined consume of Text.Storage(*(v0 + 144), *(v0 + 152), *(v0 + 160));

      if (*(v0 + 176))
      {
      }
    }
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 240))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  }

  return swift_deallocObject();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AlertTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlertTransformModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t get_witness_table_7SwiftUI4ViewRzSHRd__r__lAA15ModifiedContentVyxAA29ScrollPositionBindingModifierVGAaBHPxAaBHD1__AfA0cI0HPyHCHCTm(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v5;
  v8[1] = a4;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrollBehaviorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollBehaviorModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #2 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a3);
  v19[0] = a2 & 1;
  v20 = HIDWORD(a2);
  v10 = type metadata accessor for ScrollBehaviorModifier.LayoutRoleFilter(0, a4, a5, a4);
  v25 = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollBehaviorModifier<A>.LayoutRoleFilter, v10);
  v26 = WitnessTable;
  type metadata accessor for Attribute<[ScrollableCollection]>(0);
  v13 = v12;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in Attribute.init<A>(_:)partial apply, v24, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v14);
  type metadata accessor for ScrollBehaviorModifier.ScrollBehaviorProvider(0, a4, a5, v15);
  *(a1 + 4) = v18;
  v19[0] = v7 & 1;
  v20 = v9;
  v22 = v10;
  v23 = WitnessTable;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in Attribute.init<A>(_:)partial apply, v21, v10, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
  *(a1 + 8) = v18;
  return result;
}

double ScrollViewChildTransform.value.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v56 = *v1;
  v57 = v2;
  v58 = v1[2];
  v59 = *(v1 + 6);
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *&v53 = *Value;
  *(&v53 + 1) = v4;
  v5 = *(Value + 32);
  v54 = *(Value + 16);
  v55 = v5;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  AGGraphGetValue();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v6 = lazy protocol witness table accessor for type ScrollViewChildTransform and conformance ScrollViewChildTransform();
  MEMORY[0x18D000B90](&unk_1EFF89548, MEMORY[0x1E69E6370], v6);
  Rule.withObservation<A>(observationCenter:do:)();

  AGGraphGetValue();
  v7 = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(v7, &v45);
  static Edge.Set.all.getter();
  v8 = v45;
  if (v45)
  {
    static Edge.Set.horizontal.getter();
    if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v45 & 2) != 0)
  {
LABEL_5:
    static Edge.Set.vertical.getter();
  }

LABEL_6:
  outlined destroy of ScrollViewConfiguration(&v45);
  v9 = EdgeInsets.in(_:)();
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v9);
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  type metadata accessor for CGSize(0);
  v17 = AGGraphGetValue();
  v18 = v15 + *v17;
  v19 = v16 + v17[1];
  EdgeInsets.originOffset.getter();
  v21 = v18 - v20;
  v23 = v19 - v22;
  v24 = AGGraphGetValue();
  v25 = v24[1];
  v45 = *v24;
  v46 = v25;
  v47 = v24[2];
  ViewFrame.origin.getter();
  ViewTransform.resetPosition(_:)(__PAIR128__(v23 + v27, v21 + v26));
  v28 = AGGraphGetValue();
  MEMORY[0x1EEE9AC00](v28);
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  CGSize.outset(by:)();
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    *&v45 = v59;
    ViewTransform.appendSizedSpace(id:size:)();
    v29 = AGGraphGetValue();
    ViewTransform.appendPosition(_:)(*v29);
  }

  static Semantics.v6.getter();
  isLinkedOnOrAfter(_:)();
  v30 = AGGraphGetValue();
  MEMORY[0x18D00B390](v30, v31);
  static ScrollGeometry.viewTransform(contentInsets:contentSize:containerSize:)();
  ViewTransform.UnsafeBuffer.appendScrollGeometry(_:isClipped:)();
  static ScrollCoordinateSpace.all.getter();
  ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    static ScrollCoordinateSpace.horizontal.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  }

  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    static ScrollCoordinateSpace.vertical.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  }

  v32 = AGGraphGetValue();
  v33 = *v32;
  v34 = v32[1];
  v35 = AGGraphGetValue();
  ViewTransform.UnsafeBuffer.appendTranslation(_:)(__PAIR128__(v34 + *(v35 + 88), v33 + *(v35 + 80)));
  static ScrollCoordinateSpace.content.getter();
  v36 = AGGraphGetValue();
  v37 = *(v36 + 32);
  v45 = *(v36 + 16);
  v46 = v37;
  MEMORY[0x18D00B390](v36, v38);
  ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  if (static SemanticFeature.isEnabled.getter())
  {
    v39 = AGGraphGetValue();
    width = v39->width;
    height = v39->height;
    ViewTransform.UnsafeBuffer.appendTranslation(_:)(*v39);
    static ScrollCoordinateSpace.safeArea.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
    ViewTransform.UnsafeBuffer.appendTranslation(_:)(__PAIR128__(-height, -width));
  }

  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  ViewTransform.UnsafeBuffer.appendCoordinateSpace(id:transform:)();
  ViewTransform.append(movingContentsOf:)();
  v42 = v54;
  *a1 = v53;
  a1[1] = v42;
  result = *&v55;
  a1[2] = v55;
  return result;
}

uint64_t outlined init with copy of CoordinateSpaceNameModifier(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *a1;
    v4 = a1[1];
    *(a2 + 25) = *(a1 + 25);
    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else
  {
    v5 = *(a1 + 24);
    *(a2 + 24) = v5;
    (**(v5 - 8))(a2);
    *(a2 + 40) = 0;
  }

  return a2;
}

uint64_t View.scrollTargetLayout(isEnabled:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return MEMORY[0x18D00A570](&v5, a2, &type metadata for ScrollTargetModifier, a3);
}

void SceneBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v4);
  *&v30 = *a1;
  v5 = v30;
  SceneBridge.userActivityPreferencesDidChange(_:)(&v30);
  *&v30 = v5;
  SceneBridge.activationConditionsPreferencesDidChange(_:)(&v30);
  swift_beginAccess();
  *&v24[0] = v5;
  PreferenceValues.subscript.getter();
  v6 = *(v2 + 40);
  if (v6 == -1 || v27 == -1 || v6 != v27)
  {
    *(v2 + 40) = v27;
    *(v2 + 48) = v26;
  }

  swift_endAccess();
  swift_beginAccess();
  *&v26 = v5;
  PreferenceValues.subscript.getter();
  v7 = *(v2 + 64);
  if (v7 == -1 || *&v32[28] == -1 || v7 != *&v32[28])
  {
    *(v2 + 64) = *&v32[28];
    v22[0] = v30;
    v22[1] = v31;
    v23[0] = *v32;
    *(v23 + 9) = *&v32[9];
    v19 = v30;
    v20 = v31;
    v21[0] = *v32;
    *(v21 + 9) = *&v32[9];
    outlined init with copy of (String, TabEntry)(v22, &v26, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for PredicateExpressions.Variable<String>);
    closure #2 in SceneBridge.preferencesDidChange(_:)(&v19, v2);
    v24[0] = v19;
    v24[1] = v20;
    v25[0] = v21[0];
    *(v25 + 9) = *(v21 + 9);
    outlined destroy of NavigationTitleStorage?(v24);
  }

  v26 = v30;
  v27 = v31;
  v28 = *v32;
  v29 = *&v32[16];
  outlined destroy of Predicate<Pack{String}>?(&v26, type metadata accessor for PreferenceValues.Value<NavigationTitleStorage?>);
  swift_endAccess();
  swift_beginAccess();
  *&v24[0] = v5;
  PreferenceValues.subscript.getter();
  v8 = *(v2 + 68);
  if (v8 == -1 || DWORD1(v26) == -1 || v8 != DWORD1(v26))
  {
    *(v2 + 68) = DWORD1(v26);
    v9 = v26;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (v9 == 2)
      {
        type metadata accessor for UITraitUserInterfaceStyle();
        UIWindowScene.traitOverrides.getter();
        UITraitOverrides.remove(_:)();
      }

      else
      {
        UIWindowScene.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
      }

      UIWindowScene.traitOverrides.setter();
    }
  }

  swift_endAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 _isKeyWindowScene];

    if (v14)
    {
      if (static AppDelegate.shared)
      {
        v15 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
        if (v15)
        {
          *&v24[0] = v5;
          v16 = v15;
          PreferenceValues.subscript.getter();
          v17 = v26;
          v18 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_currentResponderCommands;
          swift_beginAccess();
          *&v16[v18] = v17;
        }
      }
    }
  }
}

void SceneBridge.userActivityPreferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v59 = *a1;
  PreferenceValues.subscript.getter();
  v3 = v55;
  v4 = v56;
  v5 = v57;
  v6 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityPreferenceSeed;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityPreferenceSeed + 4) & 1) == 0 && v58 != -1 && *v6 != -1 && v58 == *v6)
  {
    outlined consume of FocusStore?(v55, v56, v57);
    return;
  }

  *v6 = v58;
  *(v6 + 4) = 0;
  if (v4)
  {
    if (*(v5 + 16))
    {
      v8 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo;
      v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
      }

      else
      {
        v18 = type metadata accessor for UserActivityTrackingInfo();
        v19 = objc_allocWithZone(v18);
        *&v19[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity] = 0;
        v20 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_handlers;
        *&v19[v20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_SbSo14NSUserActivityCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        swift_weakInit();
        swift_weakAssign();
        v21 = &v19[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_activityType];
        *v21 = v3;
        v21[1] = v4;
        v54.receiver = v19;
        v54.super_class = v18;

        v10 = objc_msgSendSuper2(&v54, sel_init);
      }

      v22 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity;
      v23 = *(v10 + OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity);
      if (v23)
      {
        v24 = v9;
        v25 = [v23 activityType];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v26 == v3 && v4 == v28)
        {

LABEL_29:
          v38 = *(v10 + v22);
          if (v38)
          {
            [v38 setNeedsSave_];
          }

          goto LABEL_37;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v30)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v31 = v9;
      }

      v32 = objc_allocWithZone(MEMORY[0x1E696B090]);

      v33 = MEMORY[0x18D00C850](v3, v4);

      v34 = [v32 initWithActivityType_];

      [v34 becomeCurrent];
      v35 = *(v10 + v22);
      *(v10 + v22) = v34;
      if (v35)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
        v36 = v34;
        v35 = v35;
        v37 = static NSObject.== infix(_:_:)();

        if (v37)
        {
LABEL_34:

          v40 = *(v2 + v8);
          *(v2 + v8) = v10;
          v41 = v10;

          type metadata accessor for UserActivityTrackingInfo?(0, v42, v43);
          v45 = v44;
          v58 = v44;
          v55 = v10;
          v46 = v41;
          SceneBridge.publishEvent(event:type:identifier:)(&v55, v45, 0xD000000000000018, 0x800000018CD7A830);

          __swift_destroy_boxed_opaque_existential_1(&v55);
          v47 = *(v10 + v22);
          Strong = swift_unknownObjectWeakLoadStrong();
          v49 = v47;
          if (Strong)
          {
            v50 = v49;
            v51 = Strong;
            [v51 setUserActivity_];
          }

          else
          {

            v52 = *(v2 + 72);
            *(v2 + 72) = v47;
          }

LABEL_37:
          v53 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_handlers;
          swift_beginAccess();
          *(v10 + v53) = v5;

          return;
        }
      }

      else
      {
        v39 = v34;
      }

      [v34 setDelegate_];
      v36 = v34;
      goto LABEL_34;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
  *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo) = 0;

  type metadata accessor for UserActivityTrackingInfo?(0, v12, v13);
  v58 = v14;
  v55 = 0;
  SceneBridge.publishEvent(event:type:identifier:)(&v55, v14, 0xD000000000000018, 0x800000018CD7A830);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    [v15 setUserActivity_];
  }

  else
  {
    v17 = *(v2 + 72);
    *(v2 + 72) = 0;
  }
}

void type metadata accessor for _DictionaryStorage<String, [Any]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, [Any]>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<String, [Any]>);
    }
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SceneBridge.ActivationConditionsPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)(0);
  v3 = *(v2 + 48);
  type metadata accessor for Predicate<Pack{String}>();
  v5 = v4;
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1, 1, 1, v4);

  return v7(a1 + v3, 1, 1, v5);
}

uint64_t outlined init with copy of NavigationTitleStorage?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for PredicateExpressions.Variable<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__int128 *closure #2 in SceneBridge.preferencesDidChange(_:)(__int128 *result, uint64_t a2)
{
  v2 = result[1];
  v18 = *result;
  v19 = v2;
  *v20 = result[2];
  *&v20[9] = *(result + 41);
  v3 = *(&v2 + 1);
  if (*(&v2 + 1) == 1)
  {
    return result;
  }

  v4 = v19;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  outlined copy of Text?(v18, *(&v18 + 1), v19, v3);
  outlined copy of Transaction?(*v20);

  v6 = [v5 traitCollection];
  v7 = [v6 _environmentWrapper];
  if (!v7)
  {
LABEL_7:
    EnvironmentValues.init()();
    v17 = v16;
    EnvironmentValues.configureForRoot()();
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v16)
    {
      if (!static EnvironmentValues.configuredForPlatform || v16 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_13;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_13;
    }

    EnvironmentValues.plist.setter();
LABEL_13:
    EnvironmentValues._configureForPlatform(traitCollection:)(v6);
    goto LABEL_14;
  }

  v8 = v7;
  type metadata accessor for EnvironmentWrapper(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_7;
  }

  v9 = v8;
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_14:
  v13 = v17;
  if (v3)
  {
    v16 = 0uLL;
    MEMORY[0x18D009CB0](&v15, v5);
    LOBYTE(v14) = v4 & 1;
    v10 = Text.resolveString(in:with:idiom:)();
    v11 = MEMORY[0x18D00C850](v10);
  }

  else
  {
    v12 = v5;
    v11 = 0;
  }

  [v5 setTitle_];

  return outlined destroy of NavigationTitleStorage?(&v18);
}

void closure #1 in ScenePresentationBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v4 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  v7 = [v6 window];

  if (!v7)
  {
    return;
  }

  v8 = [v7 windowScene];

  if (!v8)
  {
    return;
  }

  v9 = [v8 session];

  if (!v9)
  {
    return;
  }

  outlined init with copy of AnyHashable?(a1, &v18);
  if (!v19)
  {

    _ss11AnyHashableVSgWOhTm_4(&v18, type metadata accessor for AnyHashable?);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
LABEL_13:
    _ss11AnyHashableVSgWOhTm_4(&v20, type metadata accessor for (Decodable & Encodable)?);
    return;
  }

  type metadata accessor for Decodable & Encodable();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    goto LABEL_12;
  }

  if (!*(&v21 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  outlined init with take of MutableCollection & RangeReplaceableCollection(&v20, &v23);
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = [v9 userInfo];
  if (v13)
  {
    v14 = v13;
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v21 + 1) = MEMORY[0x1E6969080];
    *&v20 = v10;
    *(&v20 + 1) = v12;
    outlined init with take of Any(&v20, &v18);
    outlined copy of Data._Representation(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v18, 0xD00000000000001CLL, 0x800000018CD41370, isUniquelyReferenced_nonNull_native);
    if (v15)
    {
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [v9 setUserInfo_];

    outlined consume of Data._Representation(v10, v12);
  }

  else
  {
    [v9 setUserInfo_];

    outlined consume of Data._Representation(v10, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t storeEnumTagSinglePayload for SheetPreference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *makeHostingController #1 <A>() in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 73);
  v5 = *(a1 + 72);
  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v7 = objc_allocWithZone(v6);

  v8 = a2;
  v9 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v3, a2, &protocol witness table for SheetBridge<A>, v5, v4);
  v10 = *&v9[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  return v9;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<AnyView>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature;
  if (!lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteSheetContainerViewGraphFeature, &type metadata for RemoteSheetContainerViewGraphFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature);
  }

  return result;
}

uint64_t SheetBridge.requiresTransparentHostKey.getter()
{
  v1 = v0 + direct field offset for SheetBridge.host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.popoverBridge.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
    }

    return v5 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteSheetContainerVCKey.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>;
  if (!lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>)
  {
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980968], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Binding<PresentationMode>(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static ClearNavigationContextModifier._makeViewInputs(modifier:inputs:)()
{
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.setter();
  _GraphInputs.resetCurrentStyleableView()();
  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ListSelectionCanonicalIDKey, &type metadata for NavigationAuthority.ListSelectionCanonicalIDKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ListSelectionCanonicalIDKey, &type metadata for NavigationAuthority.ListSelectionCanonicalIDKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetTabViewEnvironmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetFormEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetFormEnvironmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetSearchEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

void SheetContent.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v44[1] = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
  v6 = v5;
  v51 = type metadata accessor for ModifiedContent();
  v67 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = v44 - v7;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  v8 = type metadata accessor for ModifiedContent();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v44 - v9;
  v54 = type metadata accessor for ModifiedContent();
  v64 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = v44 - v10;
  v11 = MEMORY[0x1E6980A08];
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, MEMORY[0x1E6980A08]);
  v12 = type metadata accessor for ModifiedContent();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v44 - v13;
  v53 = type metadata accessor for ModifiedContent();
  v62 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = v44 - v14;
  v56 = type metadata accessor for ModifiedContent();
  v63 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = v44 - v15;
  v57 = type metadata accessor for ModifiedContent();
  v70 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = v44 - v16;
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v11);
  v58 = type metadata accessor for ModifiedContent();
  v68 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v44 - v17;
  v65 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v11);
  v66 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v11);
  v69 = type metadata accessor for ModifiedContent();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v44[2] = v44 - v18;
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  v23 = v6;
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v24);
  static Alignment.center.getter();
  v25 = *(a1 + 24);
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79[0] = v25;
  v79[1] = MEMORY[0x1E697EBF8];
  v26 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v79);
  View.styleContext<A>(_:)();
  (*(v19 + 8))(v22, v4);
  v28 = lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>();
  v78[0] = WitnessTable;
  v78[1] = v28;
  v29 = v23;
  v30 = swift_getWitnessTable(v26, v23, v78, v23);
  v31 = v47;
  View.renderContainerBackgroundInHostingView<A>(_:)(&type metadata for ContainerBackgroundKeys.PresentationKey, v29, &type metadata for ContainerBackgroundKeys.PresentationKey, v30, &protocol witness table for ContainerBackgroundKeys.PresentationKey);
  swift_getKeyPath();
  v77 = 2;
  v32 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  v76[0] = v30;
  v76[1] = v32;
  v33 = v51;
  v34 = swift_getWitnessTable(v26, v51, v76);
  v35 = v45;
  View.environment<A>(_:_:)();

  (*(v67 + 8))(v31, v33);
  v36 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  v75[0] = v34;
  v75[1] = v36;
  v37 = swift_getWitnessTable(v26, v8, v75);
  v38 = v49;
  View.resetScrollEnvironment()(v8, v37);
  (*(v61 + 8))(v35, v8);
  v39 = lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  v74[0] = v37;
  v74[1] = v39;
  v40 = v54;
  v41 = swift_getWitnessTable(v26, v54, v74);
  v42 = View.resetListStackBehavior()(v40, v41);
  (*(v64 + 8))(v38, v40, v42);
  v43 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  v73[0] = v41;
  v73[1] = v43;
  swift_getWitnessTable(v26, v12, v73);
  View.resetSearchEnvironment()();
}

void sub_18BF0F880()
{
  (*(*(v4 - 408) + 8))(v2, v3);
  *(v4 - 208) = v0;
  *(v4 - 200) = &protocol witness table for ResetSearchEnvironmentModifier;
  swift_getWitnessTable(v1, *(v4 - 464), v4 - 208);
  View.resetFormEnvironment()();
}

void sub_18BF0F8E4()
{
  (*(*(v4 - 392) + 8))(v3, v1);
  *(v4 - 224) = v0;
  *(v4 - 216) = &protocol witness table for ResetFormEnvironmentModifier;
  swift_getWitnessTable(v2, *(v4 - 440), v4 - 224);
  View.resetTabViewEnvironment()();
}

uint64_t sub_18BF0F948()
{
  (*(*(v6 - 384) + 8))(v1, v2);
  swift_getKeyPath();
  *(v6 - 121) = 0;
  *(v6 - 240) = v0;
  *(v6 - 232) = &protocol witness table for ResetTabViewEnvironmentModifier;
  v7 = *(v6 - 432);
  WitnessTable = swift_getWitnessTable(v3, v7, v6 - 240);
  v9 = *(v6 - 448);
  View.environment<A>(_:_:)();

  (*(*(v6 - 328) + 8))(v4, v7);
  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  *(v6 - 256) = WitnessTable;
  *(v6 - 248) = v10;
  v11 = *(v6 - 424);
  v12 = swift_getWitnessTable(v3, v11, v6 - 256);
  v13 = *(v6 - 544);
  View.clearNavigationContext()(v12, v13);
  (*(*(v6 - 344) + 8))(v9, v11);
  *(v6 - 272) = v12;
  *(v6 - 264) = &protocol witness table for ClearNavigationContextModifier;
  v14 = swift_getWitnessTable(v3, *(v6 - 368), v6 - 272);
  v15 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  *(v6 - 288) = v14;
  *(v6 - 280) = v15;
  v16 = swift_getWitnessTable(v3, *(v6 - 360), v6 - 288);
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  *(v6 - 304) = v16;
  *(v6 - 296) = v17;
  v18 = *(v6 - 336);
  v19 = swift_getWitnessTable(v3, v18, v6 - 304);
  v20 = View.clearSharingPickerHost()(v18, v19);
  (*(*(v6 - 320) + 8))(v13, v18, v20);
  return (*(*(v6 - 416) + 8))(v5, *(v6 - 560));
}

void *sub_18BF0FB9C@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.tintAdjustmentMode.getter();
  *a2 = v4;
  return result;
}

uint64_t View.navigationTransition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v6);
  View.preference<A>(key:value:)();
  return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
}

void type metadata accessor for _NavigationTransitionOutputs?()
{
  if (!lazy cache variable for type metadata for _NavigationTransitionOutputs?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NavigationTransitionOutputs?);
    }
  }
}

double specialized static ResetFormEnvironmentModifier.makeEnvironment(modifier:environment:)(void *a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormInsetsKey>, &type metadata for FormInsetsKey, &protocol witness table for FormInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormInsetsKey>, &type metadata for FormInsetsKey, &protocol witness table for FormInsetsKey);

  PropertyList.subscript.setter();
  v2 = a1[1];
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowInfoVisibilityKey>, &type metadata for FormRowInfoVisibilityKey, &protocol witness table for FormRowInfoVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormRowInfoVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowInfoVisibilityKey>, &type metadata for FormRowInfoVisibilityKey, &protocol witness table for FormRowInfoVisibilityKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowAccessoryVisibilityKey>, &type metadata for FormRowAccessoryVisibilityKey, &protocol witness table for FormRowAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormRowAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowAccessoryVisibilityKey>, &type metadata for FormRowAccessoryVisibilityKey, &protocol witness table for FormRowAccessoryVisibilityKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveFormStyleKey>, &type metadata for EffectiveFormStyleKey, &protocol witness table for EffectiveFormStyleKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveFormStyleKey>, &type metadata for EffectiveFormStyleKey, &protocol witness table for EffectiveFormStyleKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for Form<FormStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 initializeWithCopy for _NavigationTransitionStyleOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  else
  {
    *a1 = *a2;
    v3 = *(a2 + 40);
    *(a1 + 32) = v2;
    *(a1 + 40) = v3;
    (**(v2 - 8))(a1 + 8, a2 + 8);
  }

  return result;
}

id _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_nTm(void *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(id, uint64_t (*)(void), uint64_t))
{
  a4(0);
  v9 = swift_dynamicCastClass();
  if (v9 && (v20 = v9, v10 = a1, v11 = a2(&v20), v10, (v11 & 1) != 0))
  {
    v12 = v10;
  }

  else
  {
    v13 = [a1 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
LABEL_19:
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v15 != i; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x18D00E9C0](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = a5(v17, a2, a3);

      if (v10)
      {

        return v10;
      }
    }

    return 0;
  }

  return v10;
}

uint64_t UIViewController.firstDescendantWhere(_:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  if (a1(v2))
  {
    v6 = v2;
  }

  else
  {
    v7 = [v2 childViewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
LABEL_18:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v3 = UIViewController.firstDescendantWhere(_:)(a1, a2);

      if (v3)
      {

        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t specialized UIViewController.matchingBarButton<A>(id:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = UIViewController.trailingItems.getter();
  v5 = UIViewController.centerItems.getter();
  v31 = v4;
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = UIViewController.leadingItems.getter();
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = v4;
  v8 = [v3 toolbarItems];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *&v29[0] = v7;
  specialized Array.append<A>(contentsOf:)(v10);
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18D00E9C0](v12, v7);
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      type metadata accessor for UIKitBarButtonItem(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = v16 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
        swift_beginAccess();
        v19 = type metadata accessor for ToolbarStorage.Item(0);
        if ((*(*(v19 - 8) + 48))(v18, 1, v19))
        {

          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
LABEL_18:
          outlined destroy of MatchedTransitionIdentifier?(&v26, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
          goto LABEL_9;
        }

        outlined init with copy of MatchedTransitionIdentifier?(v18 + 64, &v26, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
        if (!*(&v27 + 1))
        {

          goto LABEL_18;
        }

        v29[0] = v26;
        v29[1] = v27;
        v30 = v28;
        outlined init with copy of AnyHashable(a1, v25);
        AnyHashable.init<A>(_:)();
        v20 = MEMORY[0x18D00E7E0](v29, &v26);
        outlined destroy of AnyHashable(&v26);
        if (v20)
        {
          v21 = *(&v30 + 1);
          outlined destroy of MatchedTransitionIdentifier(v29);
          if (v21 == a2)
          {

            return v17;
          }
        }

        else
        {
          outlined destroy of MatchedTransitionIdentifier(v29);
        }
      }

LABEL_9:
      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return 0;
}

unint64_t UIViewController.trailingItems.getter(SEL *a1, uint64_t a2)
{
  j = v2;
  v44 = MEMORY[0x1E69E7CC0];
  v6 = &selRef_bundleIdentifier;
  v7 = [v2 navigationItem];
  v8 = [v7 *a1];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v33 = j;
    v34 = a2;
    v6 = 0;
    v39 = v9 & 0xC000000000000001;
    v36 = v9 + 32;
    v37 = v9 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x1E69E7CC0];
    v35 = v9;
    v38 = i;
    while (1)
    {
      if (v39)
      {
        v12 = MEMORY[0x18D00E9C0](v6, v9);
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_45;
        }

        v12 = *(v36 + 8 * v6);
      }

      v13 = v12;
      v14 = __OFADD__(v6++, 1);
      if (v14)
      {
        break;
      }

      v15 = [v12 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v16 >> 62;
      if (v16 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      j = v11 >> 62;
      if (v11 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v18;
      v14 = __OFADD__(v19, v18);
      a2 = v19 + v18;
      if (v14)
      {
        goto LABEL_41;
      }

      v40 = v13;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!j)
        {
          v20 = v11 & 0xFFFFFFFFFFFFFF8;
          if (a2 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        __CocoaSet.count.getter();
        goto LABEL_22;
      }

      if (j)
      {
        goto LABEL_21;
      }

LABEL_22:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v41 = v11;
      a2 = *(v20 + 16);
      j = *(v20 + 24);
      if (v17)
      {
        v21 = __CocoaSet.count.getter();
        if (v21)
        {
LABEL_27:
          if (((j >> 1) - a2) < v42)
          {
            goto LABEL_43;
          }

          v22 = v20 + 8 * a2 + 32;
          if (v17)
          {
            if (v21 < 1)
            {
              goto LABEL_46;
            }

            type metadata accessor for [UIBarButtonItem](0);
            a2 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem], MEMORY[0x1E69E6340]);
            for (j = 0; j != v21; ++j)
            {
              v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v43, j, v16);
              v26 = *v25;
              (v24)(v43, 0);
              *(v22 + 8 * j) = v26;
            }

            v9 = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          i = v38;
          v11 = v41;
          if (v23 > 0)
          {
            v27 = *(v20 + 16);
            v14 = __OFADD__(v27, v23);
            v28 = v27 + v23;
            if (v14)
            {
              goto LABEL_44;
            }

            *(v20 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      v11 = v41;
      if (v42 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v6 == i)
      {

        v44 = v11;
        j = v33;
        a2 = v34;
        v6 = 0x1E723B000;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_49:
  v29 = [j *(v6 + 3080)];
  v30 = [v29 *a2];

  if (v30)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v31);
  return v44;
}

unint64_t UIViewController.centerItems.getter()
{
  v1 = [v0 navigationItem];
  v2 = [v1 centerItemGroups];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v34 = v3 & 0xC000000000000001;
    v32 = v3 + 32;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v30 = i;
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        v7 = MEMORY[0x18D00E9C0](v5, v3);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_46;
        }

        v7 = *(v32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      v10 = [v7 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v13;
      v9 = __OFADD__(v15, v13);
      v16 = v15 + v13;
      if (v9)
      {
        goto LABEL_42;
      }

      v35 = v8;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          goto LABEL_23;
        }

LABEL_22:
        __CocoaSet.count.getter();
        goto LABEL_23;
      }

      if (v14)
      {
        goto LABEL_22;
      }

      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = v6;
        goto LABEL_24;
      }

LABEL_23:
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v20 = __CocoaSet.count.getter();
        if (v20)
        {
LABEL_28:
          if (((v19 >> 1) - v18) < v37)
          {
            goto LABEL_44;
          }

          v21 = v17 + 8 * v18 + 32;
          if (v12)
          {
            if (v20 < 1)
            {
              goto LABEL_47;
            }

            type metadata accessor for [UIBarButtonItem](0);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem], MEMORY[0x1E69E6340]);
            for (j = 0; j != v20; ++j)
            {
              v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v11);
              v26 = *v25;
              (v24)(v38, 0);
              *(v21 + 8 * j) = v26;
            }

            i = v30;
            v3 = v31;
            v22 = v37;
          }

          else
          {
            v22 = v37;
            swift_arrayInitWithCopy();
          }

          v6 = v36;
          if (v22 > 0)
          {
            v27 = *(v17 + 16);
            v9 = __OFADD__(v27, v22);
            v28 = v27 + v22;
            if (v9)
            {
              goto LABEL_45;
            }

            *(v17 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      v6 = v36;
      if (v37 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v5 == i)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of PresentationSizing?(uint64_t a1)
{
  type metadata accessor for PresentationSizing?(0, &lazy cache variable for type metadata for PresentationSizing?, type metadata accessor for PresentationSizing);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall PresentationHostingController.sizingOptionsDidChange(from:)(SwiftUI::UIHostingControllerSizingOptions from)
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *from.rawValue;
  v5 = &v1[direct field offset for PresentationHostingController.observedSize];
  if ((v1[direct field offset for PresentationHostingController.observedSize + 16] & 1) == 0)
  {
    *v57 = *v5;
    closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(v57, v1);
  }

  v6 = [v1 presentingViewController];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  if (!*&v2[v8])
  {

    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
LABEL_16:
    outlined destroy of PresentationSizing?(&v47);
LABEL_18:
    v57[0] = v4;
    UIHostingController.sizingOptionsDidChange(from:)(v57);
    return;
  }

  outlined init with copy of PresentationOptionsPreference(&v2[v8], v57);
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(v58 + 8, &v44);
    if (v46)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v44, &v47);
    }

    else
    {
      *(&v48 + 1) = &type metadata for AutomaticPresentationSizing;
      *&v49 = &protocol witness table for AutomaticPresentationSizing;
    }
  }

  else
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  outlined destroy of PresentationOptionsPreference(v57);
  if (!*(&v48 + 1))
  {

    goto LABEL_16;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v47, v59);
  if ((PresentationHostingController.shouldUsePresentationSizing.getter() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v59);
    goto LABEL_18;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  UIUserInterfaceIdiom.idiom.getter(v10, &v47);
  v11 = v47;
  if (v47)
  {
    v12 = *(&v47 + 1);
    v57[0] = v47;
  }

  else
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v12 = v57[1];
    v11 = v57[0];
  }

  v13 = UIViewController.nonPresentedAncestor.getter();
  v14 = [v13 view];

  v39 = v14;
  if (v14)
  {
    v38 = *&v2[direct field offset for PresentationHostingController.lastColumnCount];
    v15 = [v2 traitCollection];
    v16 = [v15 _environmentWrapper];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for EnvironmentWrapper(0);
      if (swift_dynamicCastClass())
      {
        v18 = v12;
        v19 = v11;
        v20 = v17;
        dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

        v11 = v19;
        v12 = v18;

        v21 = v57[1];
        v22 = v57[0];
        v53 = *v57;
LABEL_32:
        v57[0] = v22;
        v57[1] = v21;
        EnvironmentValues.readableWidth.getter();
        v25 = v24;

        v56 = 1;
        v55 = 1;
        v54 = 1;
        *&v47 = v39;
        *(&v47 + 1) = v38;
        v48 = 0uLL;
        LOBYTE(v49) = 1;
        *(&v49 + 1) = 0;
        LOBYTE(v50) = 1;
        *(&v50 + 1) = 0;
        LOBYTE(v51) = 1;
        *(&v51 + 1) = v11;
        *&v52 = v12;
        *(&v52 + 1) = v25;
        outlined init with copy of _Benchmark(v59, v57);
        *&v57[9] = v49;
        v58[0] = v50;
        v58[1] = v51;
        v58[2] = v52;
        *&v57[5] = v47;
        *&v57[7] = v48;
        specialized UIHostingController.host.getter();
        specialized UIHostingController.host.getter();
        v26 = v12;
        v27 = *(v3 + 1032);
        v28 = *(v3 + 1040);
        v30 = type metadata accessor for _UIHostingView(255, v27, v28, v29);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v30);
        swift_unknownObjectWeakInit();
        outlined init with copy of PresentationSizingContext(&v47, &v44);
        specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&v40);
        v32 = v31;
        v34 = v33;
        outlined destroy of weak FallbackResponderProvider?(&v40);
        PresentationHostingController.preferredContentSize.setter(v32, v34);
        *v5 = v32;
        v5[1] = v34;
        *(v5 + 16) = 0;
        outlined destroy of OpenURLOptions(&v47);
        v35 = specialized UIHostingController.host.getter();
        _UIHostingView.viewGraph.getter(v35);

        _ProposedSize.init(width:height:)();
        v40 = v44;
        LOBYTE(WitnessTable) = BYTE8(v44);
        v42 = v45;
        v43 = v46;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        v37[2] = v27;
        v37[3] = v28;
        v37[4] = v36;
        v37[5] = v11;
        v37[6] = v26;
        swift_beginAccess();
        type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
        ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
        swift_endAccess();

        outlined destroy of SheetSizing(v57);
        __swift_destroy_boxed_opaque_existential_1(v59);
        return;
      }
    }

    EnvironmentValues.init()();
    v53 = *v57;
    EnvironmentValues.configureForRoot()();
    v23 = v53;
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v23)
    {
      if (!static EnvironmentValues.configuredForPlatform || v23 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_31;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_31;
    }

    EnvironmentValues.plist.setter();
LABEL_31:
    EnvironmentValues._configureForPlatform(traitCollection:)(v15);

    v21 = *(&v53 + 1);
    v22 = v53;
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_18BF116B0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF116E8()
{

  return swift_deallocObject();
}

void _UIHostingView.transparentBackgroundReasons.didset(int a1)
{
  if ((a1 != 0) == (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0)) == 0))
  {
    _UIHostingView.updateBackgroundColor()();
  }
}

uint64_t PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(uint64_t a1, void *a2, int *a3)
{
  v6 = *a3;
  outlined init with copy of PresentationState.Base(v3, &v10);
  switch(v15)
  {
    case 2:
    case 3:
    case 5:

      v7 = &v11;
      goto LABEL_7;
    case 4:
    case 6:
    case 10:
      goto LABEL_6;
    case 7:
    case 11:
      outlined destroy of PresentationState.Base(&v10);
      goto LABEL_8;
    case 8:

      outlined destroy of SheetPreference(&v14);
      goto LABEL_6;
    case 12:
      goto LABEL_8;
    default:

LABEL_6:
      v7 = &v10;
LABEL_7:
      outlined destroy of SheetPreference(v7);
LABEL_8:
      outlined init with copy of SheetPreference(a1, &v10);
      v12 = a2;
      v13 = v6;
      v15 = 0;
      v8 = a2;
      PresentationState.base.willset(&v10);
      return outlined assign with take of PresentationState.Base(&v10, v3);
  }
}

uint64_t PresentationState.base.willset(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.presentation.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s2os6LoggerVSgWOhTm_1(v6, type metadata accessor for Logger?);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v37 = 0xD00000000000001CLL;
    v38 = 0x800000018CD569F0;
    v11 = PresentationState.Base.description.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](0x209286E220, 0xA500000000000000);
    v12 = PresentationState.Base.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v14 = v37;
    v13 = v38;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v37);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_18BD4A000, v15, v16, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x18D0110E0](v19, -1, -1);
      v21 = v18;
      a1 = v35;
      MEMORY[0x18D0110E0](v21, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
  }

  v22 = PresentationState.Base.presentedVC.getter();
  if (v22)
  {
  }

  else
  {
    v23 = PresentationState.Base.presentedVC.getter();
    if (v23)
    {
      v24 = v23;
      v25 = *(v23 + direct field offset for UIHostingController.host);

      v37 = 0;
      LOBYTE(v38) = 1;
      type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    }
  }

  v26 = PresentationState.Base.willPresentAgainAfterDismiss.getter();
  v27 = specialized static PresentationState.Base.dismissedPresentations(from:to:)(v2, a1);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v30 = (v26 & 1) == 0;
    do
    {
      outlined init with copy of SheetPreference(v29, &v37);
      v31 = v38;
      v32 = v39;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v38, v39);
      outlined destroy of SheetPreference(&v37);
      if (v31)
      {
        v36 = 17;
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v32;
        *(v33 + 32) = v30;

        static Update.enqueueAction(reason:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31, v32);
      }

      v29 += 112;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_18BF11D60()
{

  return swift_deallocObject();
}

uint64_t PresentationState.Base.willPresentAgainAfterDismiss.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v4);
  result = 0;
  switch(v7[106])
  {
    case 2:
    case 3:

      v2 = v5;
      goto LABEL_5;
    case 4:
    case 0xA:
      goto LABEL_3;
    case 5:

      v3 = v5;
      goto LABEL_11;
    case 6:
      goto LABEL_9;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v4);
      goto LABEL_12;
    case 8:

      outlined destroy of SheetPreference(v7);
      goto LABEL_9;
    case 9:

LABEL_9:
      v3 = &v4;
LABEL_11:
      outlined destroy of SheetPreference(v3);
LABEL_12:
      result = 1;
      break;
    case 0xC:
      return result;
    default:

LABEL_3:
      v2 = &v4;
LABEL_5:
      outlined destroy of SheetPreference(v2);
      result = 0;
      break;
  }

  return result;
}

void type metadata accessor for (PresentationState.Base, PresentationState.Base)()
{
  if (!lazy cache variable for type metadata for (PresentationState.Base, PresentationState.Base))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PresentationState.Base, PresentationState.Base));
    }
  }
}

void *assignWithTake for PresentationState.Base(void *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 234);
  if (v4 >= 0xC)
  {
    v4 = *a1 + 12;
  }

  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 >= 2)
      {
        if (v4 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_22;
      }

      goto LABEL_35;
    }

    if (v4 != 4)
    {
LABEL_22:

      if (a1[2])
      {
      }

      if (a1[8])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 5);
      }

LABEL_34:

      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v4 <= 8)
  {
    if (v4 != 6)
    {
      if (v4 != 7)
      {

        if (a1[1])
        {
        }

        if (a1[7])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 4);
        }

        if (a1[17])
        {
        }

        if (a1[23])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 20);
        }

        goto LABEL_34;
      }

      v5 = *a1;
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v4 == 9)
  {
LABEL_35:

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    v5 = a1[14];
    goto LABEL_41;
  }

  if (v4 == 10 || v4 == 11)
  {
LABEL_30:

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    goto LABEL_34;
  }

LABEL_42:
  v6 = *(a2 + 234);
  if (v6 >= 0xC)
  {
    v6 = *a2 + 12;
  }

  if (v6 > 5)
  {
    if (v6 > 8)
    {
      if (v6 == 9)
      {
        v25 = *(a2 + 80);
        *(a1 + 4) = *(a2 + 64);
        *(a1 + 5) = v25;
        *(a1 + 6) = *(a2 + 96);
        *(a1 + 105) = *(a2 + 105);
        goto LABEL_65;
      }

      if (v6 == 10)
      {
        v29 = *(a2 + 80);
        *(a1 + 4) = *(a2 + 64);
        *(a1 + 5) = v29;
        *(a1 + 91) = *(a2 + 91);
        goto LABEL_68;
      }

      if (v6 != 11)
      {
        goto LABEL_71;
      }
    }

    else if (v6 != 6)
    {
      if (v6 == 7)
      {
        *a1 = *a2;
        LOBYTE(v6) = 7;
        goto LABEL_69;
      }

      v10 = *(a2 + 208);
      *(a1 + 12) = *(a2 + 192);
      *(a1 + 13) = v10;
      *(a1 + 218) = *(a2 + 218);
      v11 = *(a2 + 144);
      *(a1 + 8) = *(a2 + 128);
      *(a1 + 9) = v11;
      v12 = *(a2 + 176);
      *(a1 + 10) = *(a2 + 160);
      *(a1 + 11) = v12;
      v13 = *(a2 + 80);
      *(a1 + 4) = *(a2 + 64);
      *(a1 + 5) = v13;
      v14 = *(a2 + 112);
      *(a1 + 6) = *(a2 + 96);
      *(a1 + 7) = v14;
LABEL_68:
      v30 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 1) = v30;
      v31 = *(a2 + 48);
      *(a1 + 2) = *(a2 + 32);
      *(a1 + 3) = v31;
      goto LABEL_69;
    }

LABEL_60:
    v18 = *(a2 + 80);
    *(a1 + 4) = *(a2 + 64);
    *(a1 + 5) = v18;
    *(a1 + 90) = *(a2 + 90);
    goto LABEL_68;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v22 = *(a2 + 80);
      *(a1 + 4) = *(a2 + 64);
      *(a1 + 5) = v22;
      *(a1 + 6) = *(a2 + 96);
      *(a1 + 56) = *(a2 + 112);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 1) = v23;
      v24 = *(a2 + 48);
      *(a1 + 2) = *(a2 + 32);
      *(a1 + 3) = v24;
      LOBYTE(v6) = 3;
      goto LABEL_69;
    }

    if (v6 != 4)
    {
      v15 = *(a2 + 80);
      *(a1 + 4) = *(a2 + 64);
      *(a1 + 5) = v15;
      *(a1 + 6) = *(a2 + 96);
      *(a1 + 56) = *(a2 + 112);
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 1) = v16;
      v17 = *(a2 + 48);
      *(a1 + 2) = *(a2 + 32);
      *(a1 + 3) = v17;
      LOBYTE(v6) = 5;
      goto LABEL_69;
    }

    goto LABEL_60;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = *(a2 + 80);
        *(a1 + 4) = *(a2 + 64);
        *(a1 + 5) = v7;
        *(a1 + 6) = *(a2 + 96);
        *(a1 + 56) = *(a2 + 112);
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 1) = v8;
        v9 = *(a2 + 48);
        *(a1 + 2) = *(a2 + 32);
        *(a1 + 3) = v9;
        LOBYTE(v6) = 2;
LABEL_69:
        *(a1 + 234) = v6;
        return a1;
      }

LABEL_71:
      v33 = *(a2 + 208);
      *(a1 + 12) = *(a2 + 192);
      *(a1 + 13) = v33;
      *(a1 + 219) = *(a2 + 219);
      v34 = *(a2 + 144);
      *(a1 + 8) = *(a2 + 128);
      *(a1 + 9) = v34;
      v35 = *(a2 + 176);
      *(a1 + 10) = *(a2 + 160);
      *(a1 + 11) = v35;
      v36 = *(a2 + 80);
      *(a1 + 4) = *(a2 + 64);
      *(a1 + 5) = v36;
      v37 = *(a2 + 112);
      *(a1 + 6) = *(a2 + 96);
      *(a1 + 7) = v37;
      v38 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 1) = v38;
      v39 = *(a2 + 48);
      *(a1 + 2) = *(a2 + 32);
      *(a1 + 3) = v39;
      return a1;
    }

    v26 = *(a2 + 80);
    *(a1 + 4) = *(a2 + 64);
    *(a1 + 5) = v26;
    *(a1 + 6) = *(a2 + 96);
    *(a1 + 108) = *(a2 + 108);
LABEL_65:
    v27 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v27;
    v28 = *(a2 + 48);
    *(a1 + 2) = *(a2 + 32);
    *(a1 + 3) = v28;
    goto LABEL_69;
  }

  v19 = *(a2 + 80);
  *(a1 + 4) = *(a2 + 64);
  *(a1 + 5) = v19;
  *(a1 + 6) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  v20 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v20;
  v21 = *(a2 + 48);
  *(a1 + 2) = *(a2 + 32);
  *(a1 + 3) = v21;
  *(a1 + 234) = 0;
  return a1;
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(unsigned int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 15);
  v6 = a2[4];
  v24 = a2[3];
  v25 = v6;
  v7 = a2[1];
  v21 = *a2;
  v22 = v7;
  v27[0] = v21;
  v27[1] = v7;
  v27[3] = v24;
  v27[4] = v6;
  v8 = a2[3];
  v9 = *a2;
  v10 = a2[1];
  v23 = a2[2];
  v26 = *(a2 + 20);
  v27[2] = v23;
  v28 = v26;
  v41 = v23;
  v42 = v8;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v39 = v9;
  v40 = v10;
  outlined init with copy of _ViewInputs(a2, v37);
  outlined init with copy of _ViewInputs(v27, v37);
  v11 = _ViewInputs.animatedPosition()();
  v29[2] = v41;
  v29[3] = v42;
  v29[4] = v43;
  v30 = v44;
  v29[0] = v39;
  v29[1] = v40;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v26;
  v31[0] = v21;
  v31[1] = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v39 = v21;
  v40 = v22;
  outlined init with copy of _ViewInputs(v31, v37);
  v12 = _ViewInputs.animatedCGSize()();
  v33[2] = v41;
  v33[3] = v42;
  v33[4] = v43;
  v34 = v44;
  v33[0] = v39;
  v33[1] = v40;
  outlined destroy of _ViewInputs(v33);
  *&v39 = __PAIR64__(v5, a1);
  *(&v39 + 1) = __PAIR64__(v12, v11);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v35, &v39);
  a3(v13, &v15);
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v38 = v20;
  v37[0] = v15;
  v37[1] = v16;
  outlined destroy of _ViewInputs(v37);
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v39 = v21;
  v40 = v22;
  return outlined destroy of _ViewInputs(&v39);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoordinateSpaceNameModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceNameTransform, &type metadata for CoordinateSpaceNameTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform);
  }

  return result;
}

uint64_t View.coordinateSpace(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of NamedCoordinateSpace(a1, v6);
  MEMORY[0x18D00A570](v6, a2, &type metadata for CoordinateSpaceNameModifier, a3);
  return outlined destroy of CoordinateSpaceNameModifier(v6);
}

_OWORD *initializeWithCopy for CoordinateSpaceNameModifier(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

uint64_t outlined destroy of CoordinateSpaceNameModifier(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

void *destroy for CoordinateSpaceNameModifier(void *a1)
{
  if ((a1[5] & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t RootViewDelegate.hostingView<A>(_:didChangePreferences:)(void *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *a2;
  specialized RootViewDelegate.updateAppFocus<A>(view:)(a1);
  swift_beginAccess();
  v12 = v5;
  PreferenceValues.subscript.getter();
  v6 = *(v2 + 16);
  if (v6 == -1 || v14 == -1 || v6 != v14)
  {
    *(v2 + 16) = v14;
    LOBYTE(v12) = v13;
    _UIHostingView.colorScheme.setter(&v12);
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v15[0] = v5;
    (*(v10 + 40))(a1, v15, *(v4 + 80), *(v4 + 88), ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void _UIHostingView.colorScheme.setter(_BYTE *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v3 = *(v1 + v2);
  *(v1 + v2) = *a1;
  v4 = v3;
  _UIHostingView.didChangeColorScheme(from:)(&v4);
}

void _UIHostingView.didChangeColorScheme(from:)(unsigned __int8 *a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = *a1;
  _UIHostingView.colorScheme.getter(&v18);
  if (v3 == 2)
  {
    if (v18 == 2)
    {
      return;
    }
  }

  else if (v18 != 2 && ((v18 ^ v3) & 1) == 0)
  {
    return;
  }

  v4 = _UIHostingView.viewController.getter();
  if (v4)
  {
    v6 = v4;
    _UIHostingView.colorScheme.getter(&v17);
    v7 = 1;
    if (v17)
    {
      v7 = 2;
    }

    if (v17 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    [v6 setOverrideUserInterfaceStyle_];
    v9 = specialized _UIHostingView.statusBarBridge.getter();

    v10 = [v6 isBeingPresented];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v11 = *(v9 + 40);
    v12 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v14 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v11 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
    *(v15 + 32) = v12;

    onNextMainRunLoop(do:)();
  }

  v16 = type metadata accessor for _UIHostingView(0, *(v2 + 80), *(v2 + 88), v5);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v16);

  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t specialized SheetBridge.adaptivePresentationStyle(for:traitCollection:)(void *a1)
{
  v2 = v1;
  v4 = v1 + direct field offset for SheetBridge.host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = [v7 traitCollection];

      v9 = [v8 userInterfaceIdiom];
      if (v9 == 6)
      {
        return -1;
      }
    }
  }

  v10 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v2 + v10, v14);
  v11 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v14);
  if (!v11)
  {
    return -1;
  }

  v12 = specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(a1, 2);

  return v12;
}

uint64_t specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(void *a1, char a2)
{
  v5 = [a1 verticalSizeClass];
  if (v5 == 1)
  {
    v6 = (v2 + direct field offset for PresentationHostingController.lastPresentationOptions);
    swift_beginAccess();
    if (!*v6)
    {
LABEL_9:
      if ([a1 verticalSizeClass] == 2)
      {
        return 5;
      }

      v12 = a2;
      v13 = &unk_18CDDADE0;
      return v13[v12];
    }

    v7 = v6 + 41;
  }

  else
  {
    if ([a1 horizontalSizeClass] != 1)
    {
      return -1;
    }

    v8 = (v2 + direct field offset for PresentationHostingController.lastPresentationOptions);
    swift_beginAccess();
    if (!*v8)
    {
      goto LABEL_25;
    }

    v7 = (v8 + 5);
  }

  v9 = *v7;
  if (v9 == 6)
  {
    goto LABEL_8;
  }

  if (v9 == 2 && a2 != 1)
  {
    _StringGuts.grow(_:)(162);
    MEMORY[0x18D00C9B0](8257, 0xE200000000000000);
    lazy protocol witness table accessor for type PresentationKind and conformance PresentationKind();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0x100000000000009ELL, 0x800000018CD55A60);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    return -1;
  }

  if (v9 <= 2)
  {
    if ((v9 - 1) >= 2)
    {
LABEL_8:
      if (v5 == 1)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    return -1;
  }

  if (v9 == 3)
  {
LABEL_25:
    if (a2 == 1)
    {
      return 2;
    }

    else
    {
      return -1;
    }
  }

  if (v9 == 4)
  {
    goto LABEL_9;
  }

  if ([a1 verticalSizeClass] != 2)
  {
    v12 = a2;
    v13 = &unk_18CDDAE08;
    return v13[v12];
  }

  return 8;
}

uint64_t PresentationHostingController._remoteSheet.getter()
{
  v0 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter(v0);

  lazy protocol witness table accessor for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature();
  v1 = ViewGraph.subscript.getter();

  if (!v1)
  {
    return 0;
  }

  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](Attribute);
  type metadata accessor for PresentationSizing?(0, &lazy cache variable for type metadata for _UIRemoteSheet?, type metadata accessor for _UIRemoteSheet);
  static Update.ensure<A>(_:)();
  return v4;
}

unint64_t type metadata accessor for _UIRemoteSheet()
{
  result = lazy cache variable for type metadata for _UIRemoteSheet;
  if (!lazy cache variable for type metadata for _UIRemoteSheet)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _UIRemoteSheet);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance RemoteSheetContainerVCKey(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of RemoteSheetContainerVCKey.Storage?(a1, &v6, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720], _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0);
  if (v7 == 255)
  {
    a2(v8, v4);
    if (v7 != 255)
    {
      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v6, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    }
  }

  else
  {
    outlined init with copy of RemoteSheetContainerVCKey.Storage(&v6, v8, MEMORY[0x1E69E7D90]);
  }

  return outlined init with take of RemoteSheetContainerVCKey.Storage?(v8, a1, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720], _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0);
}

uint64_t ViewResponderFilter.view.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ViewLeafView();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t type metadata accessor for _UISceneBSActionHandler(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t EnvironmentValues.accessibilityVoiceOverEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return v2 & 1;
}

BOOL keypath_get_3Tm@<W0>(__int128 *a1@<X0>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v5 = a2;
  result = EnvironmentValues.isEnabled(for:)(&v5);
  *a3 = result;
  return result;
}

double _s7SwiftUI5AlertVSgWOi0_(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
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

uint64_t getEnumTagSinglePayload for Alert(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t implicit closure #1 in static AlertTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v13 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v16 = type metadata accessor for AlertTransformModifier.Transform(0, a5, a6, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlertTransformModifier<A>.Transform, v16);
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v14, v16, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return AssociatedTypeWitness;
}

double static ScrollBehaviorModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v43 = a4;
  v44[0] = a3;
  v45 = a7;
  v71 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v67 = a2[2];
  v68 = v9;
  v11 = a2[3];
  v69 = a2[4];
  v12 = a2[1];
  v65 = *a2;
  v66 = v12;
  v61 = v67;
  v62 = v11;
  v63 = a2[4];
  v13 = *a1;
  v70 = *(a2 + 20);
  v64 = *(a2 + 20);
  v59 = v65;
  v60 = v10;
  outlined init with copy of _ViewInputs(&v65, v57);
  PreferenceKeys.add(_:)();
  v48 = v13;
  type metadata accessor for ScrollBehaviorModifier(255, a5, a6, v14);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(1, a5, a6, v15);
  }

  v16 = v66;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v18 = *MEMORY[0x1E698D3F8];
  *&v57[0] = __PAIR64__(*MEMORY[0x1E698D3F8], OffsetAttribute2);
  *(&v57[0] + 1) = v18;
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v39 = type metadata accessor for ScrollBehaviorModifier.ScrollBehaviorProvider(0, a5, a6, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollBehaviorModifier<A>.ScrollBehaviorProvider, v39);
  v20 = MEMORY[0x1E698D388];
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for Attribute<ResolvedScrollBehavior>, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E698D388]);
  v21 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v57, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v38, v39, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v24 = v55[0];
  v25 = swift_beginAccess();
  LODWORD(v57[0]) = *(v16 + 16);
  v42 = v24;
  DWORD1(v57[0]) = v24;
  MEMORY[0x1EEE9AC00](v25);
  v41 = v26;
  v28 = type metadata accessor for ScrollBehaviorModifier.ChildEnvironment(0, a5, v26, v27);
  v39 = v28;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollBehaviorModifier<A>.ChildEnvironment, v28);
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], v20);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v57, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v38, v28, v21, v29, MEMORY[0x1E69E7410], v30);
  _GraphInputs.environment.setter();
  v55[2] = v61;
  v55[3] = v62;
  v55[4] = v63;
  v56 = v64;
  v55[0] = v59;
  v55[1] = v60;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  v31 = outlined init with copy of _ViewInputs(v55, v57);
  (*&v44[0])(&v46, v31, &v49);
  v57[2] = v51;
  v57[3] = v52;
  v57[4] = v53;
  v58 = v54;
  v57[0] = v49;
  v57[1] = v50;
  outlined destroy of _ViewInputs(v57);
  v32 = v46;
  *&v33 = v47;
  *&v49 = v46;
  *v44 = v33;
  DWORD2(v49) = v47;
  v34 = PreferencesOutputs.subscript.getter();
  if ((v34 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v34);
    v38[0] = a5;
    v38[1] = v41;
    LOBYTE(v39) = 0;
    HIDWORD(v39) = v35;
    LOBYTE(WitnessTable) = 1;
    HIDWORD(WitnessTable) = v35;
    MEMORY[0x1EEE9AC00](v35);
    AGGraphMutateAttribute();
  }

  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  outlined destroy of _ViewInputs(&v49);
  v36 = v45;
  *v45 = v32;
  result = v44[0];
  v36[1] = *&v44[0];
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScrollTargetModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t static ScrollEventStateReader._makeViewList(view:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  v17[2] = a2[2];
  v7 = _GraphInputs.scrollPhaseState.getter();
  type metadata accessor for ScrollEventStateReader(255, a3, a4, v8);
  type metadata accessor for _GraphValue();
  LODWORD(v17[0]) = _GraphValue.value.getter();
  DWORD1(v17[0]) = v7;
  v14 = a3;
  View = type metadata accessor for ScrollEventStateReader.MakeView(0, a3, a4, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollEventStateReader<A>.MakeView, View);
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, closure #1 in Attribute.init<A>(_:)partial apply, v13, View, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  _GraphValue.init(_:)();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests()
{
  result = lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests;
  if (!lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69806F8], MEMORY[0x1E6980700], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests);
  }

  return result;
}

void type metadata accessor for Attribute<[ScrollableCollection]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<[ScrollableCollection]>)
  {
    type metadata accessor for [ScrollableCollection](255, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<[ScrollableCollection]>);
    }
  }
}

double CoordinateSpaceNameTransform.value.getter@<D0>(_OWORD *a3@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  *&v18 = *Value;
  *(&v18 + 1) = v5;
  v6 = *(Value + 32);
  v19 = *(Value + 16);
  v20 = v6;
  type metadata accessor for CGPoint(0);

  v7 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v7);
  v8 = AGGraphGetValue();
  outlined init with copy of CoordinateSpaceNameModifier(v8, &v14);
  v11 = v14;
  if (v17)
  {
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    ViewTransform.appendSizedSpace(id:size:)();
  }

  else
  {
    v12 = v15;
    v13 = v16;
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    ViewTransform.appendSizedSpace(name:size:)();
    outlined destroy of AnyHashable(&v11);
  }

  v9 = v19;
  *a3 = v18;
  a3[1] = v9;
  result = *&v20;
  a3[2] = v20;
  return result;
}

uint64_t View.scrollPosition<A>(id:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v20 = a5;
  type metadata accessor for Optional();
  v12 = type metadata accessor for Binding();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, a1, v12, v14);
  (*(v13 + 8))(v16, v12);
  v22[0] = a2;
  v22[1] = a3;
  v23 = a4 & 1;
  v17 = type metadata accessor for ValueToScrollPosition();
  swift_getWitnessTable(MEMORY[0x1E697FD20], v17);
  Binding.projecting<A>(_:)();
  outlined init with copy of Binding<ScrollPosition>(v27, v22);
  v24 = a2;
  v25 = a3;
  v26 = a4 & 1;
  MEMORY[0x18D00A570](v22, v20, MEMORY[0x1E6980958], v21);
  outlined destroy of ScrollPositionBindingModifier(v22);
  return outlined destroy of Binding<ScrollPosition>(v27);
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.scrollTargetBehavior<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScrollBehaviorModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t View.transformScrollEnvironment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TransformScrollStorageModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t View.scrollIndicators(_:axes:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v6 = 0;
  v7 = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &type metadata for TransformScrollIndicators, a4);
}

double ScrollBehaviorModifier.ChildEnvironment.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(&v16);
  v14[0] = a1;
  v9 = type metadata accessor for ScrollBehaviorModifier.ChildEnvironment(0, a2, a3, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollBehaviorModifier<A>.ChildEnvironment, v9);
  MEMORY[0x18D000B90](v9, &type metadata for ScrollEnvironmentProperties, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v15, v14);
  type metadata accessor for ScrollEnvironmentStorage(0);
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  swift_allocObject();
  v14[0] = ScrollEnvironmentStorage.init(_:transform:)(v14, v12);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(&v16 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    outlined destroy of ScrollEnvironmentProperties(v15);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties(v15);
  }

  result = *&v16;
  *a4 = v16;
  return result;
}

double ResetScrollEnvironmentModifier.ResetTransform.update(properties:)(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x108uLL);
  v3 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v3);
  static EdgeInsets.zero.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static EdgeInsets.zero.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (Axis.Set.contains(_:)())
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v21 = __dst[15];
    v22 = __dst[16];
    v23 = __dst[17];
    v24 = BYTE1(__dst[17]);
  }

  if (Axis.Set.contains(_:)())
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v25 = __dst[18];
    v26 = __dst[19];
    v27 = __dst[20];
    v28 = BYTE1(__dst[20]);
  }

  outlined destroy of ScrollEnvironmentProperties(__dst);
  *__src = 257;
  *(__src + 21) = 0;
  result = 0.0;
  *(__src + 8) = 0u;
  *(__src + 24) = 0u;
  *(__src + 40) = 0u;
  *(__src + 56) = 0u;
  *(__src + 67) = 0u;
  *(__src + 44) = 4;
  *(__src + 12) = v30;
  *(__src + 13) = v4;
  __src[112] = 0;
  __src[120] = v21;
  *(__src + 16) = v22;
  __src[136] = v23;
  __src[137] = v24;
  __src[144] = v25;
  *(__src + 19) = v26;
  __src[160] = v27;
  __src[161] = v28;
  __src[162] = 0;
  __src[163] = 0;
  *(__src + 82) = 0;
  __src[166] = 1;
  __src[199] = 0;
  *(__src + 183) = 0u;
  *(__src + 167) = 0u;
  *(__src + 25) = v6;
  *(__src + 26) = v8;
  *(__src + 27) = v10;
  *(__src + 28) = v12;
  *(__src + 29) = v14;
  *(__src + 30) = v16;
  *(__src + 31) = v18;
  *(__src + 32) = v20;
  return result;
}

uint64_t closure #1 in ScrollBehaviorModifier.ChildEnvironment.value.getter@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v11 + 16, a3);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v11 + 280, &v11);
  if (v12)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v11, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(a3, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  Value = AGGraphGetValue();
  outlined init with copy of ResolvedScrollBehavior(Value, &v11);
  return outlined assign with take of ResolvedScrollBehavior?(&v11, a3 + 8);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance TransformScrollIndicators(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  if ((v4 & 2) == 0)
  {
    if ((v1[16] & 1) == 0)
    {
      return result;
    }

LABEL_5:
    *(result + 144) = v2;
    *(result + 152) = v3;
    return result;
  }

  *(result + 120) = v2;
  *(result + 128) = v3;
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *ScrollBehaviorModifier.ScrollBehaviorProvider.updateValue()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 12) + 1;
  *(v1 + 12) = v2;
  v13 = *(a1 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  Value = AGGraphGetValue();
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, Value, v11);
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = AGCreateWeakAttribute();
  LODWORD(boxed_opaque_existential_1) = v8;
  v9 = HIDWORD(v8);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, v14);
  v15 = v2;
  v16 = 256;
  v17 = v6;
  v18 = v7;
  v19 = boxed_opaque_existential_1;
  v20 = v9;
  v21 = 0;
  AGGraphSetOutputValue();
  return outlined destroy of AccessibilityRelationshipScope.Key(v14);
}

uint64_t initializeWithCopy for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t outlined init with copy of ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  (**(v4 - 8))(a2, a1);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  return a2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ActionSheet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ResolvedScrollBehavior?, ResolvedScrollBehavior?))
  {
    type metadata accessor for Attribute<AccessibilityNodeList>(255, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ResolvedScrollBehavior?, ResolvedScrollBehavior?));
    }
  }
}

double ScrollEventStateReader.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  View = type metadata accessor for ScrollEventStateReader.MakeView(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollEventStateReader<A>.MakeView, View);
  MEMORY[0x18D000B90](View, a2, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  return result;
}

double closure #1 in ScrollEventStateReader.MakeView.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ScrollEventStateReader.MakeView.view.getter(a2, a3, a4, &v11);
  v5 = v11;
  ScrollEventStateReader.MakeView.resolvedState.getter(a1, &v9);
  v7[0] = v9;
  v8 = v10;
  v5(v7);

  return result;
}

double static ScrollTransitionConfiguration.interactive.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for interactive != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EA9FA3C0;
  v2 = qword_1EA9FA3C8;
  v3 = unk_1EA9FA3D0;
  v4 = qword_1EA9FA3D8;
  v5 = qword_1EA9FA3E0;
  v6 = qword_1EA9FA3E8;
  *a1 = static ScrollTransitionConfiguration.interactive;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, v3, v4, v5, v6);
}

double one-time initialization function for interactive()
{
  MEMORY[0x18D00BC00](v3);
  v0 = v4;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x3FF0000000000000;
  static ScrollTransitionConfiguration.interactive = v1;
  result = *v3;
  unk_1EA9FA3D0 = v3[1];
  unk_1EA9FA3C0 = v3[0];
  qword_1EA9FA3E0 = v0 | 0x4000000000000000;
  qword_1EA9FA3E8 = 0;
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t View.containerRelativeFrame(_:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  return MEMORY[0x18D00A570](v6, a4, &type metadata for ContainerRelativeFrameModifier, a5);
}

double destroy for ContainerRelativeFrameModifier(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }

  return result;
}

void type metadata accessor for RemoteSheetContainerVCKey.Storage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void specialized PresentationHostingController.setupDelayIfNeeded()()
{
  v1 = v0;
  v2 = *&v0[direct field offset for UIHostingController.host];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v3 = v2;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (LOBYTE(v7[0]) == 1)
  {
    v4 = [v0 view];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = partial apply for specialized closure #1 in PresentationHostingController.setupDelayIfNeeded();
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> (@unowned Bool);
    v7[3] = &block_descriptor_15_0;
    v6 = _Block_copy(v7);

    [v1 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v6);
    *(v1 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 1;
  }
}

uint64_t sub_18BF158F0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id SheetBridge.presenter.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v2 = v0 + direct field offset for SheetBridge.host;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v3 + 16) + 8));
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ClearNavigationContextModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t View.renderContainerBackgroundInHostingView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static Alignment.center.getter();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(0);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  return View.backgroundPreferenceValue<A, B>(_:alignment:_:)();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.PreparedColumn(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.PreparedColumn(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of _NavigationTransitionOutputs?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AlertTransformModifier<Alert.Presentation.Key>)
  {
    v4 = type metadata accessor for AlertTransformModifier(0, &type metadata for Alert.Presentation.Key, &protocol witness table for Alert.Presentation.Key, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AlertTransformModifier<Alert.Presentation.Key>);
    }
  }
}

double ScrollEventStateReader.MakeView.view.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ScrollEventStateReader(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = Value[1];
  *a5 = v8;
  a5[1] = v7;

  return result;
}

uint64_t ScrollEventStateReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 ScrollEventStateReader.MakeView.resolvedState.getter@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1) || (Value = AGGraphGetValue(), v4 = *Value, v4 == 5))
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    v5 = v7;
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v4) = v7[0];
  }

  else
  {
    v5 = Value;
  }

  result = *(v5 + 1);
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t ScrollViewChildContainerSize.updateValue()()
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    Value = static ViewSize.zero.getter();
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = Value[1];
    v18 = *Value;
    v19 = v2;
  }

  MEMORY[0x18D00B390](Value);
  AGGraphGetValue();
  CGSize.inset(by:)();
  ViewSize.value.setter();
  v3 = *(v0 + 32);
  v16 = *(v0 + 16);
  v17 = v3;
  v4 = v18;
  v5 = v19;
  v14 = v18;
  v15 = v19;
  v6 = MEMORY[0x18D00B350](&v16, &v14) ^ 1;
  type metadata accessor for CGSize(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + 56) != v9 || *(v0 + 48) != *v7;
  v16 = v4;
  v17 = v5;
  static CGSize.invalidValue.getter();
  if ((v8 != v12 || v9 != v11) && (v8 != 0.0 || v9 != 0.0))
  {
    ViewSize.value.setter();
    v6 = v10;
  }

  result = AGGraphGetOutputValue();
  if (!result || (v6 & 1) != 0)
  {
    v14 = v16;
    v15 = v17;
    result = AGGraphSetOutputValue();
  }

  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  return result;
}

uint64_t View.scrollTransition<A>(_:axis:transition:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  *&v22 = a3;
  *(&v22 + 1) = a4;
  *&v23 = v9;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;
  *&v26 = v15;
  *(&v26 + 1) = v9;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  *&v29 = v14;
  *(&v29 + 1) = v15;
  v30 = a2;

  outlined copy of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14, v15);

  outlined copy of ScrollTransitionConfiguration.Mode(v10, v11, v12, v13, v14, v15);
  v17 = type metadata accessor for ScrollTransitionModifier(0, a6, a8, v16);

  MEMORY[0x18D00A570](&v22, a5, v17, a7);
  v31[6] = v28;
  v31[7] = v29;
  v32 = v30;
  v31[2] = v24;
  v31[3] = v25;
  v31[4] = v26;
  v31[5] = v27;
  v31[0] = v22;
  v31[1] = v23;
  return (*(*(v17 - 8) + 8))(v31, v17);
}

double outlined copy of ScrollTransitionConfiguration.Mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  outlined copy of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9, v10);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  v11 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);

  outlined copy of ScrollTransitionConfiguration.Mode(v11, v12, v13, v14, v15, v16);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

double outlined consume of ScrollTransitionConfiguration.Mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 >> 62) <= 1)
  {
  }

  return result;
}

double destroy for ScrollTransitionConfiguration(void *a1)
{

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];

  return outlined consume of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6, v7);
}

uint64_t assignWithCopy for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;

  return a1;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v27 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v27;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v27;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

{
  v5 = v4;
  v10 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of Predicate<Pack{String}>?(a3, v12, type metadata accessor for HashableCommandGroupPlacementWrapper);
      specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
_objc_release_x1:
      MEMORY[0x1EEE66BB8]();
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
}

uint64_t static SceneBridge.merge(predicate:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for Predicate<Pack{String}>();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  outlined init with copy of Predicate<Pack{String}>?(a1, v11, type metadata accessor for Predicate<Pack{String}>?);
  v20 = *(v14 + 48);
  if (v20(v11, 1, v13) == 1)
  {
    outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
    return outlined init with copy of Predicate<Pack{String}>?(a2, a3, type metadata accessor for Predicate<Pack{String}>?);
  }

  else
  {
    v29 = v16;
    v30 = a3;
    v22 = *(v14 + 32);
    v22(v19, v11, v13);
    outlined init with copy of Predicate<Pack{String}>?(a2, v8, type metadata accessor for Predicate<Pack{String}>?);
    if (v20(v8, 1, v13) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v8, type metadata accessor for Predicate<Pack{String}>?);
      v23 = v30;
      (*(v14 + 16))(v30, v19, v13);
      (*(v14 + 56))(v23, 0, 1, v13);
      return (*(v14 + 8))(v19, v13);
    }

    else
    {
      v24 = v29;
      v25 = (v22)(v29, v8, v13);
      MEMORY[0x1EEE9AC00](v25);
      *(&v28 - 2) = v19;
      *(&v28 - 1) = v24;
      v31 = MEMORY[0x1E69E6158];
      v26 = v30;
      Predicate.init(_:)();
      (*(v14 + 56))(v26, 0, 1, v13);
      v27 = *(v14 + 8);
      v27(v24, v13);
      return (v27)(v19, v13);
    }
  }
}

void SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t *a1, void *a2, int a3, uint64_t a4, int a5)
{
  v6 = v5;
  v44 = a5;
  v45 = a3;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v43 = *MEMORY[0x1E69E7D40] & *v5;
  v42 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v42);
  if (a4)
  {
    v12 = *a1;
    v13 = *(a4 + direct field offset for UIHostingController.host);
    v14 = *((*v13 & v11) + 0x60);
    swift_beginAccess();
    *(v13 + v14) = v12;
    v10 = MEMORY[0x1E69E7D40];

    v15 = v13;

    type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v16 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

  MEMORY[0x1EEE9AC00](v17);
  *(&v41 - 4) = a4;
  *(&v41 - 3) = a1;
  *(&v41 - 2) = v6;
  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  static Update.ensure<A>(_:)();
  v18 = v46;
  v19 = direct field offset for UIHostingController.host;
  *(*&v46[direct field offset for UIHostingController.host] + *((*v10 & **&v46[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
  swift_unknownObjectWeakAssign();
  v20 = *&v18[v19];
  v21 = a1[12];
  v46 = a1[11];
  v47 = v21;

  v22 = v20;

  UIHostingViewBase.environmentOverride.setter();

  specialized PresentationHostingController.setupDelayIfNeeded()();
  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, a2, *(a1 + 72));
  v23 = *(v6 + direct field offset for SheetBridge.lastEnvironment + 8);
  v46 = *(v6 + direct field offset for SheetBridge.lastEnvironment);
  v47 = v23;

  EnvironmentValues.explicitPreferredColorScheme.getter();

  if (v48 != 2)
  {
    v24 = *&v18[v19];
    v25 = *((*v10 & *v24) + 0xF8);
    v26 = *(v24 + v25);
    *(v24 + v25) = v48;
    v27 = v24;
    specialized _UIHostingView.didChangeColorScheme(from:)(v26);

    v28 = [v18 presentationController];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
LABEL_12:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

        goto LABEL_13;
      }
    }

    v32 = [v18 popoverPresentationController];
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = v32;
    v31 = [v32 adaptiveSheetPresentationController];

    if (!v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = v44;
  LODWORD(v48) = *(v6 + direct field offset for SheetBridge.seed);
  if (v44)
  {
    swift_beginAccess();
    PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(a1, v18, &v48);
  }

  else
  {
    swift_beginAccess();
    PresentationState.present(_:presentedVC:presentationSeed:)();
  }

  swift_endAccess();
  LOBYTE(v46) = 17;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v6 + direct field offset for SheetBridge.seed);
  v37 = swift_allocObject();
  v38 = v43;
  *(v37 + 16) = *(v43 + 80);
  *(v37 + 24) = *(v38 + 88);
  *(v37 + 32) = v35;
  *(v37 + 40) = v34 & 1;
  *(v37 + 48) = a2;
  *(v37 + 56) = v45 & 1;
  *(v37 + 60) = v36;
  *(v37 + 64) = v18;

  v39 = a2;
  v40 = v18;
  static Update.enqueueAction(reason:_:)();
}

uint64_t sub_18BF16E0C()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of PresentationOptionsPreference?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.host;
  v5 = *(v1 + direct field offset for UIHostingController.host);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0));
  v8 = a1;
  v9 = *(v1 + direct field offset for PresentationHostingController.legacyPresentationWantsTransparentBackground);
  v10 = v5;
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(8, v9, specialized _UIHostingView.updateBackgroundColor());

  if (v8 != 3)
  {
    v11 = *(v2 + v4);
    v12 = *((*v6 & *v11) + 0x258);
    v13 = v11;
    v14 = v12();

    if (a1)
    {
      if (a1 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    else
    {
      v15 = 1;
    }

    v16 = *(v2 + v4);
    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(16, v15 & 1, specialized _UIHostingView.updateBackgroundColor());
  }

  v17 = *(v2 + v4);
  if ((v7 != 0) == (*(v17 + *((*v6 & *v17) + 0xA0)) == 0))
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    v18 = v17;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void specialized SheetBridge.hostingView<A>(_:willUpdate:)(void *a1)
{
  v2 = SheetBridge.presenter.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewIfLoaded];

    if (v4)
    {
      v5 = [v4 window];

      if (v5)
      {
        v6 = [v5 screen];

        if (v6)
        {
          v7 = objc_opt_self();
          [v6 bounds];
          [v7 defaultFormSheetSizeForScreenSize_];
          type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>();

          PropertyList.subscript.setter();
          if (a1[1])
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }
        }
      }
    }
  }
}

void PresentationHostingController.presentationKind.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  if (!v3 || (v4 = v3, v5 = [v3 superview], v4, !v5))
  {
LABEL_10:
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 _presentationSemanticContext];

  v8 = [v1 activePresentationController];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 presentationStyle];

    v11 = v10 - 1;
    if (v7 != 3)
    {
      goto LABEL_5;
    }

LABEL_13:
    LOBYTE(v12) = 1;
    goto LABEL_11;
  }

  v11 = -1;
  if (v7 == 3)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v7 == 2)
  {
    LOBYTE(v12) = 2;
    goto LABEL_11;
  }

  if (v7 != 1 || !v9 || v11 >= 8)
  {
    goto LABEL_10;
  }

  v12 = 0x400000300000303uLL >> (8 * v11);
LABEL_11:
  *a1 = v12;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t static Optional<A>._makeToolbar(content:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v19[2] = a2[2];
  v20[0] = v8;
  *(v20 + 12) = *(a2 + 60);
  v9 = a2[1];
  v19[0] = *a2;
  v19[1] = v9;
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v14 = _GraphValue.value.getter();
  v16 = type metadata accessor for _ConditionalContent();
  v17 = type metadata accessor for Optional<A>.Child(0, a3, a4, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for A?<A>.Child, v17);
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  _GraphValue.init(_:)();
  return static _ConditionalContent<>._makeToolbar(content:inputs:)(&v14, v19, a3, &type metadata for EmptyToolbarContent, a4, &protocol witness table for EmptyToolbarContent, x8_0);
}

uint64_t static AlertTransformModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v30 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 6);
  v28 = *(a2 + 28);
  v29 = *(a2 + 11);
  v9 = *(a2 + 6);
  v10 = *(a2 + 14);
  v11 = *(a2 + 15);
  v26 = a2[4];
  v27 = *(a2 + 20);
  v25 = v6;
  type metadata accessor for AlertTransformModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  v12 = swift_endAccess();
  v15 = v30;
  v16 = v7;
  v17 = v8;
  v18 = v28;
  v19 = v29;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v26;
  v24 = v27;
  a3(v12, &v15);
  *&v15 = v9;
  DWORD2(v15) = v10;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

double destroy for ScrollTransitionModifier(void *a1)
{

  outlined consume of ScrollTransitionConfiguration.Mode(a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);

  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];

  return outlined consume of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6, v7);
}

__n128 initializeWithCopy for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
  }

  else
  {
    result = *v2;
    *(a1 + 24) = *v2;
  }

  return result;
}

uint64_t closure #1 in ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolbarItemGroup(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v11[2] = v5;
  v7 = MEMORY[0x1E69E6370];
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

id ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)@<X0>(int a1@<W0>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a4[3];
  v23 = a4[2];
  *v24 = v10;
  *&v24[12] = *(a4 + 60);
  v11 = a4[1];
  v21 = *a4;
  v22 = v11;
  closure #1 in ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(1, a5, a6, a4);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v13 = *&v24[24];
  v14 = DWORD2(v22);
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E697DB50]);
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v17 = result;
    v18 = *MEMORY[0x1E698D3F8];
    result = outlined destroy of _ToolbarInputs(&v21);
    v19 = *&v24[16];
    *a7 = a1;
    *(a7 + 4) = OffsetAttribute2;
    *(a7 + 8) = a3;
    *(a7 + 12) = v13;
    *(a7 + 16) = v14;
    *(a7 + 20) = 1;
    v20 = vdupq_n_s32(v18);
    *(a7 + 24) = v20;
    *(a7 + 40) = v20;
    *(a7 + 56) = v15;
    *(a7 + 60) = v18;
    *(a7 + 64) = v18;
    *(a7 + 72) = v17;
    *(a7 + 80) = v19;
    *(a7 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for [ToolbarStorage.Entry](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [ToolbarStorage.Entry])
  {
    type metadata accessor for ToolbarStorage.Entry(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [ToolbarStorage.Entry]);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchFocusContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t static _ConditionalContent<>._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a2 + 60);
  v12 = a2[3];
  v42 = a2[2];
  *v43 = v12;
  *&v43[12] = v11;
  v13 = a2[1];
  v40 = *a2;
  v41 = v13;
  v26 = *&v43[16];
  *&v50 = v12;
  DWORD2(v50) = DWORD2(v12);

  PreferencesInputs.makeIndirectOutputs()();

  v14 = v58;
  v15 = DWORD2(v58);
  v46 = v42;
  *v47 = *v43;
  *&v47[12] = *&v43[12];
  v44 = v40;
  v45 = v41;
  *&v48 = v58;
  DWORD2(v48) = DWORD2(v58);
  v49 = *&v43[16];
  LODWORD(v32) = v10;
  outlined init with copy of _ToolbarInputs(&v40, &v58);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v62 = *&v47[16];
  v63 = v48;
  *&v64 = v49;
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = *v47;
  *&v50 = a3;
  *(&v50 + 1) = a4;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  v16 = type metadata accessor for _ConditionalContent<>.ToolbarProvider(0, &v50);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v50, &v44, v16);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B><>.ToolbarProvider, v16);
  _ConditionalContent.Container.init(content:provider:)();
  v36 = v54;
  v37 = v55;
  v38 = v56;
  v39 = v57;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  v35 = v53;
  v29 = type metadata accessor for _ConditionalContent.Info();
  *&v58 = a3;
  *(&v58 + 1) = a4;
  *&v59 = v16;
  *(&v59 + 1) = WitnessTable;
  v19 = type metadata accessor for _ConditionalContent.Container();
  v30 = v19;
  v31 = swift_getWitnessTable(MEMORY[0x1E697F958], v19);
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v58, &v50, v19);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v28, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  v23 = *(v20 + 8);
  v23(&v58, v19);
  *&v32 = v14;
  DWORD2(v32) = v15;

  PreferencesOutputs.setIndirectDependency(_:)();
  v23(&v50, v19);
  (*(v17 + 8))(&v44, v16);

  *a7 = v14;
  *(a7 + 8) = v15;
  *(a7 + 16) = v26;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ToolbarContentKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1EAB09AC0;
  v8[2] = xmmword_1EAB09AB0;
  v8[3] = *&qword_1EAB09AC0;
  v2 = qword_1EAB09AD0;
  v9 = qword_1EAB09AD0;
  v4 = static ToolbarContentKey.defaultValue;
  v3 = unk_1EAB09AA0;
  v8[0] = static ToolbarContentKey.defaultValue;
  v8[1] = unk_1EAB09AA0;
  *(a1 + 32) = xmmword_1EAB09AB0;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of ToolbarStorage(v8, v7);
}

uint64_t initializeWithCopy for _ToolbarItemList(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 18);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = *(a2 + 22);
  *(a1 + 96) = a2[12];

  return a1;
}

uint64_t destroy for _ToolbarItemList(void *a1)
{
}

uint64_t implicit closure #2 in static ToolbarModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), const char *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v17 = (a5)(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(a6, v17);
  v11 = a7(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, a8, v16, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14;
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_2(a1, a2, type metadata accessor for (_:), closure #1 in Attribute.init<A>(_:));
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_1(a1, a2, type metadata accessor for ViewList, closure #1 in Attribute.init<A>(_:));
}

void type metadata accessor for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBas()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt;
  if (!lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(255, &lazy cache variable for type metadata for Text.LineStyle?, MEMORY[0x1E6981130], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car, &type metadata for BorderlessButtonStyle_Car, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderlessButtonStyleBase>, lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DividerStyleModifier.styleBody(configuration:)(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  v16 = *a1;
  (*(v3 + 24))(&v16, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for BorderlessButtonLabelShapeStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void DefaultButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = type metadata accessor for SearchCompletionButtonStyle(0) - 8;
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v9;
  v10 = *(v7 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v9[v10], &a2[*(v11 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(0);
  v14 = &a2[*(v13 + 36)];
  *v14 = KeyPath;
  v14[8] = 0;
  outlined copy of Environment<Selector?>.Content(KeyPath, 0);
  outlined consume of Environment<Selector?>.Content(KeyPath, 0);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewIn(0);
  v18 = &a2[*(v17 + 36)];
  *v18 = v15;
  v18[8] = 0;
  *(v18 + 2) = v16;
  v18[24] = 0;
  outlined copy of Environment<Color?>.Content(v15);
  outlined copy of Environment<Selector?>.Content(v16, 0);
  outlined consume of Environment<Color?>.Content(v15);
  outlined consume of Environment<Selector?>.Content(v16, 0);
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<An(0);
  v22 = &a2[*(v21 + 36)];
  v23 = a2;
  *v22 = v19;
  v22[8] = 0;
  *(v22 + 2) = v20;
  v22[24] = 0;
  outlined copy of Environment<Color?>.Content(v19);
  outlined copy of Environment<Selector?>.Content(v20, 0);
  outlined consume of Environment<Color?>.Content(v19);
  outlined consume of Environment<Selector?>.Content(v20, 0);
  v24 = swift_getKeyPath();
  v73 = 0;
  v25 = swift_getKeyPath();
  v72 = 0;
  v26 = swift_getKeyPath();
  v71 = 0;
  v27 = swift_getKeyPath();
  v70 = 0;
  LOBYTE(KeyPath) = v73;
  LOBYTE(a2) = v72;
  v28 = v71;
  *&v74 = v24;
  BYTE8(v74) = v73;
  *&v75 = v25;
  BYTE8(v75) = v72;
  *&v76[0] = v26;
  BYTE8(v76[0]) = v71;
  *&v76[1] = v27;
  BYTE8(v76[1]) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewI(0);
  v30 = &v23[*(v29 + 36)];
  v31 = v75;
  *v30 = v74;
  v30[1] = v31;
  v30[2] = v76[0];
  *(v30 + 41) = *(v76 + 9);
  v77 = v24;
  v78 = KeyPath;
  v79 = v25;
  v80 = a2;
  v81 = v26;
  v82 = v28;
  v83 = v27;
  v84 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v74, v60, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v77, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  v32 = swift_getKeyPath();
  v69 = 0;
  v33 = swift_getKeyPath();
  v68 = 0;
  v34 = swift_getKeyPath();
  v67 = 0;
  v35 = swift_getKeyPath();
  v66 = 0;
  LOBYTE(a2) = v69;
  LOBYTE(KeyPath) = v68;
  v36 = v67;
  *&v87 = v32;
  BYTE8(v87) = v69;
  *(&v87 + 9) = *v86;
  HIDWORD(v87) = *&v86[3];
  *&v88 = v33;
  BYTE8(v88) = v68;
  *(&v88 + 9) = *v85;
  HIDWORD(v88) = *&v85[3];
  *&v89[0] = v34;
  BYTE8(v89[0]) = v67;
  *&v89[1] = v35;
  BYTE8(v89[1]) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<(0);
  v38 = &v23[*(v37 + 36)];
  v39 = v88;
  *v38 = v87;
  v38[1] = v39;
  v38[2] = v89[0];
  *(v38 + 41) = *(v89 + 9);
  v90 = v32;
  v91 = a2;
  *v92 = *v86;
  *&v92[3] = *&v86[3];
  v93 = v33;
  v94 = KeyPath;
  *&v95[3] = *&v85[3];
  *v95 = *v85;
  v96 = v34;
  v97 = v36;
  v98 = v35;
  v99 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v87, v60, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v90, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  v60[0] = swift_getKeyPath();
  v61 = 0;
  v62 = swift_getKeyPath();
  v63 = 0;
  v64 = swift_getKeyPath();
  v65 = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationVie(0);
  v41 = v23;
  outlined init with copy of ToolbarButtonStyle(v60, &v23[*(v40 + 36)]);
  outlined destroy of ToolbarButtonStyle(v60);
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[72] = -1;
  v42 = v55;
  v43 = *(v55 + 28);
  *&v5[v43] = swift_getKeyPath();
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0);
  swift_storeEnumTagMultiPayload();
  v44 = &v5[*(v42 + 32)];
  *v44 = swift_getKeyPath();
  *(v44 + 1) = 0;
  v44[16] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf(0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(v5, &v41[*(v45 + 36)], type metadata accessor for SearchCompletionButtonStyle);
  outlined destroy of PrimitiveButtonStyleConfiguration(v5, type metadata accessor for SearchCompletionButtonStyle);
  v46 = swift_getKeyPath();
  v59 = 0;
  v47 = swift_getKeyPath();
  v58 = 0;
  v48 = swift_getKeyPath();
  v57 = 0;
  v49 = swift_getKeyPath();
  v56[64] = 0;
  LOBYTE(v44) = v59;
  LOBYTE(v33) = v58;
  LOBYTE(v34) = v57;
  *&v103 = v46;
  BYTE8(v103) = v59;
  *(&v103 + 9) = *v102;
  HIDWORD(v103) = *&v102[3];
  *&v104 = v47;
  BYTE8(v104) = v58;
  *(&v104 + 9) = *v101;
  HIDWORD(v104) = *&v101[3];
  *v105 = v48;
  v105[8] = v57;
  *&v105[9] = *v100;
  *&v105[12] = *&v100[3];
  *&v105[16] = v49;
  v105[24] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonS(0);
  v51 = &v41[*(v50 + 36)];
  v52 = v104;
  *v51 = v103;
  v51[1] = v52;
  v51[2] = *v105;
  *(v51 + 41) = *&v105[9];
  v106 = v46;
  v107 = v44;
  *v108 = *v102;
  *&v108[3] = *&v102[3];
  v109 = v47;
  v110 = v33;
  *&v111[3] = *&v101[3];
  *v111 = *v101;
  v112 = v48;
  v113 = v34;
  *v114 = *v100;
  *&v114[3] = *&v100[3];
  v115 = v49;
  v116 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v103, v56, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v106, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
  v41[*(v53 + 36)] = 0;
}

uint64_t sub_18BF199BC@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18BF19A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D0064D0](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18BF19AB8@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t initializeWithCopy for ToolbarButtonStyle(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 41))
  {
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 25) = *(a2 + 25);
    }

    *(a1 + 41) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  v6 = a2[6];
  v7 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v8 = a2[8];
  v9 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  return a1;
}

uint64_t destroy for ToolbarButtonStyle(void *a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  outlined consume of Environment<Selector?>.Content(a1[6], *(a1 + 56));
  v2 = a1[8];
  v3 = *(a1 + 72);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for SearchCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (v6 == 255)
  {
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    *(a1 + 57) = *(a2 + 57);
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else if (v6)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 56);
    *(a1 + 56) = v8;
    (**(v8 - 8))(a1 + 32, a2 + 32);
    *(a1 + 72) = 1;
  }

  else
  {
    v11 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v11;
    *(a1 + 72) = 0;
  }

  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      v38 = v14[1];
      *v13 = *v14;
      v13[1] = v38;
      v19 = *(v16 + 32);
      v39 = v17;
      v20 = v13 + v19;
      v21 = v14 + v19;
      *v20 = *(v14 + v19);
      v20[1] = *(v14 + v19 + 1);
      *(v20 + 1) = *(v14 + v19 + 2);
      v20[8] = *(v14 + v19 + 8);
      *(v20 + 1) = *(v14 + v19 + 4);
      v22 = type metadata accessor for SearchFieldState(0);
      v40 = a3;
      v23 = v22[9];
      v24 = type metadata accessor for AttributedString();
      v37 = *(*(v24 - 8) + 16);

      v25 = &v20[v23];
      v26 = &v21[v23];
      a3 = v40;
      v37(v25, v26, v24);
      v20[v22[10]] = v21[v22[10]];
      v27 = v22[11];
      v28 = &v20[v27];
      v29 = &v21[v27];
      v28[4] = v29[4];
      *v28 = *v29;
      (*(v39 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
  v30 = *(a3 + 24);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v32, v34, v35);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  return a1;
}

double destroy for TextInputCompletionButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 != 255)
  {
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1((a1 + 32));
    }

    else
    {
    }
  }

  v5 = a1 + *(a2 + 20);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v7 = v6;
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v8 = v5 + *(v7 + 32);
      v9 = *(type metadata accessor for SearchFieldState(0) + 36);
      v10 = type metadata accessor for AttributedString();
      (*(*(v10 - 8) + 8))(v8 + v9, v10);
    }
  }

  else
  {
  }

  return outlined consume of Environment<TriggerSubmitAction?>.Content(*(a1 + *(a2 + 24)), *(a1 + *(a2 + 24) + 8), *(a1 + *(a2 + 24) + 16), outlined consume of TriggerSubmitAction?);
}

double outlined consume of Environment<TriggerSubmitAction?>.Content(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    a4(a1, a2);
  }

  else
  {
  }

  return result;
}

uint64_t sub_18BF1A250(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t specialized static ScrollViewLayoutComputer.Engine.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 40);
  v2 = *(a2 + 5);
  if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
LABEL_7:

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  swift_retain_n();

  v3 = static LayoutComputer.== infix(_:_:)();

  return v3 & 1;
}