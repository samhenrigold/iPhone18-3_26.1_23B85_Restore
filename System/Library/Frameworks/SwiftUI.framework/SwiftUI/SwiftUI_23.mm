unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for Section(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  if (*(v22 + 8) < 0xFFFFFFFFuLL)
  {
    v23 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v23;
  }

  else
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Menu(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for SearchFocusContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v5;

  return a1;
}

double destroy for SearchFocusContext(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 1);

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<SearchFocusContextKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>);
    }
  }
}

uint64_t outlined init with copy of SearchFocusContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchFocusContext?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.searchFocusContext.setter(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement?(a1, v5, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  outlined init with copy of ToolbarItemPlacement?(v5, &v4, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement?(a1, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
  return outlined destroy of ToolbarItemPlacement?(v5, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
}

void type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t InsettableGroupedListBodyRule.init(base:insetMode:context:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = *(a2 + 16);
  *(a9 + 8) = *a2;
  *a9 = a1;
  *(a9 + 24) = v13;
  *(a9 + 40) = *(a2 + 32);
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a10;
  v14 = type metadata accessor for InsettableGroupedListBodyRule(0, v16);
  return (*(*(a5 - 8) + 32))(a9 + *(v14 + 72), a3, a5);
}

uint64_t type metadata completion function for InsettableGroupedListBodyRule(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StyleContextWriter<InsetGroupedListStyleContext>)
  {
    lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
    v1 = type metadata accessor for StyleContextWriter();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StyleContextWriter<InsetGroupedListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ListStyleContent;
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance DisableCollectionViewGroupedListsFeature(char a1)
{
  result = swift_beginAccess();
  static DisableCollectionViewGroupedListsFeature.cachedValue = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate()
{
  result = lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate;
  if (!lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessoryPredicate, &type metadata for HasCustomAccessoryPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, Modifi()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ;
  if (!lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, )
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie( 255,  &lazy cache variable for type metadata for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedCo,  type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>,  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>,  &type metadata for HasCustomScopeBarPredicate);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate();
    v5[1] = &protocol witness table for ViewInputsBinding<A, B>;
    v5[2] = lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate()
{
  result = lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBarPredicate, &type metadata for HasCustomScopeBarPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBarPredicate and conformance HasCustomScopeBarPredicate);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasCustomScopeBarPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar();
  PropertyList.subscript.getter();
  return v2;
}

uint64_t implicit closure #1 in static FocusedValueModifier._makeView(modifier:inputs:body:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v12 = type metadata accessor for FocusedValueModifier.Transform(0, a4, a4, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  LODWORD(a1) = *(a1 + 6);
  v31 = a2;
  type metadata accessor for FocusedValueModifier(255, a4, v16, v17);
  type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();

  PropertyList.subscript.getter();
  v19 = v28;
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.getter();
  v20 = v28;
  (*(*(a4 - 8) + 56))(v10, 1, 1, a4);
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v28);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  FocusedValueModifier.Transform.init(viewPhase:modifier:responder:depth:focusItem:content:isFocused:cycleDetector:lastResetSeed:)(a1, v18, a3, v19, v20, v10, 0, &v25, v15, 0, a4, a4);
  v33 = v12;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusedValueModifier<A>.Transform<A1>, v12);
  _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_24, v32, v12, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  (*(v13 + 8))(v15, v12);
  return v28;
}

_DWORD *initializeWithCopy for FocusedValueModifier.Transform(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 11) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 11) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ((v9 + v13 + 8) & ~v13);
  v15 = ((v10 + v13 + 8) & ~v13);
  v16 = *(v12 + 48);

  if (v16(v15, 1, v11))
  {
    v17 = *(v12 + 84);
    v18 = *(v12 + 64);
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v14, v15, v19);
  }

  else
  {
    (*(v12 + 16))(v14, v15, v11);
    v21 = *(v12 + 56);
    v20 = v12 + 56;
    v21(v14, 0, 1, v11);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = &v14[v22];
  v24 = &v15[v22];
  *v23 = *v24;
  v23 &= 0xFFFFFFFFFFFFFFFCLL;
  v24 &= 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 4);
  *(v23 + 9) = *(v24 + 9);
  *(v23 + 4) = v25;
  *(v23 + 20) = *(v24 + 20);
  return a1;
}

uint64_t FocusedValueModifier.Transform.updateValue()(uint64_t a1)
{
  v81[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v74 = v3;
  v13 = type metadata accessor for FocusedValueModifier(0, v3, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  Value = AGGraphGetValue();
  v21 = v20;
  v73 = v14;
  v22 = *(v14 + 16);
  v76 = v18;
  v77 = v13;
  v68 = v14 + 16;
  v67 = v22;
  v22(v18, Value, v13);
  v71 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v24 = *AGGraphGetValue();
  v25 = *(a1 + 64);
  v26 = *(v1 + v25);
  v75 = a1;
  if (v26 == v24 >> 1)
  {
    v27 = OutputValue == 0;
    v28 = v1;
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v1 + v25) = *AGGraphGetValue() >> 1;
    v29 = v1 + *(a1 + 60);
    *(v29 + 4) = 0xFFFFFFFFLL;
    *(v29 + 12) = 0;
    v27 = 1;
    v28 = v1;
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v30 = *(v75 + 52);
  v31 = v72;
  v64 = *(v72 + 16);
  v64(v10, v28 + v30, v4);
  v32 = v4;
  v33 = *(v74 - 8);
  v63 = *(v33 + 48);
  v34 = v27;
  v35 = v63(v10, 1);
  v36 = v10;
  v37 = *(v31 + 8);
  v37(v36, v32);
  if (v35 == 1)
  {
LABEL_8:
    (*(v72 + 24))(v28 + v30, &v76[*(v77 + 28)], v32);
    v27 = 1;
    goto LABEL_9;
  }

  v27 = v34;
  v62 = v30;
  v61 = v28;
  v38 = v28 + v30;
  v39 = v66;
  v64(v66, v38, v32);
  v40 = v74;
  result = (v63)(v39, 1, v74);
  if (result != 1)
  {
    v42 = v65;
    (*(v33 + 32))(v65, v39, v40);
    v43 = (*(v33 + 56))(v42, 0, 1, v40);
    MEMORY[0x1EEE9AC00](v43);
    *(&v61 - 4) = v32;
    *(&v61 - 3) = v44;
    *(&v61 - 4) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v61 - 6), v32, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v45);
    v37(v42, v32);
    v30 = v62;
    v28 = v61;
    if ((v81[0] & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    v46 = v75;
    FocusedValueModifier.Transform.focusItem.getter(v78);
    if (v79 == 1 && v80 == 1)
    {
      outlined destroy of FocusItem??(v78);
      v47 = v73;
    }

    else
    {
      outlined init with take of FocusItem?(v78, v81);
      v47 = v73;
      if (v81[5] || v81[6] != 1)
      {
        if (swift_weakLoadStrong())
        {
          v48 = dispatch thunk of ResponderNode.isDescendant(of:)();
        }

        else
        {
          v48 = 0;
        }

        outlined destroy of FocusItem(v81);
        v50 = (v28 + *(v46 + 56));
        v49 = *v50;
        if ((v48 & 1) != v49)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      outlined destroy of FocusItem?(v81);
    }

    v48 = 0;
    LOBYTE(v49) = 0;
    v50 = (v28 + *(v46 + 56));
    if (*v50)
    {
LABEL_16:
      *v50 = v48 & 1;
      LOBYTE(v49) = v48;
      goto LABEL_22;
    }

LABEL_21:
    if (!v27)
    {
      return (*(v47 + 8))(v76, v77);
    }

LABEL_22:
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      DisplayList.Version.init(forUpdate:)();
      v51 = v81[0];
      v52 = *AGGraphGetValue();
      v53 = v70;
      v54 = v77;
      v67(v70, v76, v77);
      v55 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v56 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      v58 = v74;
      *(v57 + 16) = *(v46 + 16);
      *(v57 + 24) = v58;
      (*(v47 + 32))(v57 + v55, v53, v54);
      v59 = v57 + v56;
      *v59 = v52;
      *(v59 + 8) = v49 & 1;
      v60 = swift_allocObject();
      *(v60 + 16) = v51;
      *(v60 + 24) = v49 & 1;
      *(v60 + 32) = partial apply for closure #1 in FocusedValueModifier.Transform.updateValue();
      *(v60 + 40) = v57;
      v81[0] = partial apply for closure #2 in FocusedValueModifier.Transform.updateValue();
      v81[1] = v60;
      AGGraphSetOutputValue();
    }

    return (*(v47 + 8))(v76, v77);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BEF2164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = (type metadata accessor for FocusedValueModifier(0, v5, a3, a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  v8 = v6[9];
  v9 = *(v5 - 8);
  if (!(*(v9 + 48))(v7 + v8, 1, v5))
  {
    (*(v9 + 8))(v7 + v8, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_18BEF2294()
{

  return swift_deallocObject();
}

void FocusedValueModifier.Transform.focusItem.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = vdupq_n_s64(1uLL);
    *(a1 + 56) = 0;
  }

  else
  {
    type metadata accessor for FocusItem?();
    Value = AGGraphGetValue();

    outlined init with copy of FocusItem?(Value, a1);
  }
}

void MakeConfirmationDialog.updateValue()(void *a1)
{
  v2 = v1;
  v297 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v188 = a1[3];
  v189 = v4;
  *&v286 = v4;
  *(&v286 + 1) = v188;
  v186 = v6;
  v187 = v5;
  *&v287 = v5;
  *(&v287 + 1) = v6;
  v193 = type metadata accessor for ConfirmationDialogModifierCore(0, &v286);
  v7 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v185 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v163 - v10;
  v181 = type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v183 = v7;
  v191 = v11;
  if (!OutputValue)
  {
    v14 = v7;
    v192 = 0;
    v184 = 0;
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    v172 = 0;
    v171 = 0;
    v179 = 0;
    v15 = 0;
    v16 = 0;
    v177 = 0;
    v178 = 1;
    goto LABEL_5;
  }

  LODWORD(v286) = *v1;
  v13 = AGGraphAnyInputsChanged();
  *v1 = v286;
  if ((v13 & 1) == 0)
  {
    v22 = v1[6];
    v293 = v1[7];
    v23 = v1[9];
    v294 = v1[8];
    v295 = v23;
    v24 = v1[2];
    v289 = v1[3];
    v25 = v1[5];
    v290 = v1[4];
    v291 = v25;
    v292 = v22;
    v26 = v1[1];
    v286 = *v1;
    v287 = v26;
    v296 = *(v1 + 160);
    v288 = v24;
    MakeConfirmationDialog.environment.getter(&v275);

    v27 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = v2[6];
    v282 = v2[7];
    v29 = v2[7];
    v283 = v2[8];
    v30 = v2[8];
    v284 = v2[9];
    v31 = v2[2];
    v278 = v2[3];
    v32 = v2[3];
    v279 = v2[4];
    v33 = v2[4];
    v280 = v2[5];
    v34 = v2[5];
    v281 = v2[6];
    v35 = v2[1];
    v275 = *v2;
    v36 = *v2;
    v276 = v2[1];
    v277 = v2[2];
    v272 = v30;
    v273 = v2[9];
    v268 = v33;
    v269 = v34;
    v270 = v28;
    v271 = v29;
    v264 = v36;
    v265 = v35;
    v285 = *(v2 + 160);
    v274 = *(v2 + 160);
    v266 = v31;
    v267 = v32;
    v37 = *(a1 - 1);
    v192 = *(v37 + 16);
    v192(&v253, &v275, a1);
    Confirmation = MakeConfirmationDialog.resolveTitle()(a1);
    v182 = v38;
    v293 = v271;
    v294 = v272;
    v295 = v273;
    v289 = v267;
    v290 = v268;
    v291 = v269;
    v292 = v270;
    v286 = v264;
    v287 = v265;
    v296 = v274;
    v288 = v266;
    v39 = *(v37 + 8);
    v39(&v286, a1);
    v40 = v2[9];
    v272 = v2[8];
    v273 = v40;
    v274 = *(v2 + 160);
    v41 = v2[5];
    v268 = v2[4];
    v269 = v41;
    v42 = v2[7];
    v270 = v2[6];
    v271 = v42;
    v43 = v2[1];
    v264 = *v2;
    v265 = v43;
    v44 = v2[3];
    v266 = v2[2];
    v267 = v44;
    MakeConfirmationDialog.environment.getter(&v251);
    if (v252)
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    if (v195 == 2)
    {
      v125 = v2[9];
      v261 = v2[8];
      v262 = v125;
      v263 = *(v2 + 160);
      v126 = v2[5];
      v257 = v2[4];
      v258 = v126;
      v127 = v2[7];
      v259 = v2[6];
      v260 = v127;
      v128 = v2[1];
      v253 = *v2;
      v254 = v128;
      v129 = v2[3];
      v255 = v2[2];
      v256 = v129;
      MakeConfirmationDialog.environment.getter(&v238);
      EnvironmentValues.explicitPreferredColorScheme.getter();

      LODWORD(v169) = v196;
    }

    else
    {
      LODWORD(v169) = v195;
      v196 = v195;
    }

    v130 = v2[9];
    v261 = v2[8];
    v262 = v130;
    v263 = *(v2 + 160);
    v131 = v2[5];
    v257 = v2[4];
    v258 = v131;
    v132 = v2[7];
    v259 = v2[6];
    v260 = v132;
    v133 = v2[1];
    v253 = *v2;
    v254 = v133;
    v134 = v2[3];
    v255 = v2[2];
    v256 = v134;
    MakeConfirmationDialog.environment.getter(v250);
    if (v250[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v179 = v249;

    v135 = v2[7];
    v136 = v2[9];
    v235 = v2[8];
    v236 = v136;
    v137 = v2[3];
    v138 = v2[5];
    v231 = v2[4];
    v232 = v138;
    v139 = v2[5];
    v140 = v2[7];
    v233 = v2[6];
    v234 = v140;
    v141 = v2[1];
    v228[0] = *v2;
    v228[1] = v141;
    v142 = v2[3];
    v144 = *v2;
    v143 = v2[1];
    v229 = v2[2];
    v230 = v142;
    v145 = v2[9];
    v225 = v235;
    v226 = v145;
    v221 = v231;
    v222 = v139;
    v223 = v233;
    v224 = v135;
    v217 = v144;
    v218 = v143;
    v237 = *(v2 + 160);
    v227 = *(v2 + 160);
    v219 = v229;
    v220 = v137;
    v192(v206, v228, a1);
    v192 = MakeConfirmationDialog.resolveTintColor()(a1);
    v184 = v146;
    v178 = v147;
    v246 = v225;
    v247 = v226;
    v248 = v227;
    v242 = v221;
    v243 = v222;
    v244 = v223;
    v245 = v224;
    v238 = v217;
    v239 = v218;
    v240 = v219;
    v241 = v220;
    v39(&v238, a1);
    v148 = v2[9];
    v225 = v2[8];
    v226 = v148;
    v227 = *(v2 + 160);
    v149 = v2[5];
    v221 = v2[4];
    v222 = v149;
    v150 = v2[7];
    v223 = v2[6];
    v224 = v150;
    v151 = v2[1];
    v217 = *v2;
    v218 = v151;
    v152 = v2[3];
    v219 = v2[2];
    v220 = v152;
    MakeConfirmationDialog.environment.getter(v205);
    if (v205[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v168 = v194;
    v153 = v2[1];
    v206[0] = *v2;
    v206[1] = v153;
    v206[2] = v2[2];
    v154 = *(v2 + 6);
    v155 = *(v2 + 7);
    v156 = *(v2 + 10);
    v211 = *(v2 + 88);
    v212 = *(v2 + 104);
    v213 = *(v2 + 120);
    v214 = *(v2 + 136);
    v157 = *(v2 + 19);
    v158 = *(v2 + 160);
    v207 = v154;
    v208 = v155;
    v170 = v2[4];
    v209 = v170;
    v159 = v156;
    v210 = v156;
    v215 = v157;
    v216 = v158;
    MakeConfirmationDialog.environment.getter(v204);
    if (v204[1])
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    v16 = v182;
    v14 = v183;
    v160 = Confirmation;
    v175 = v198;
    v176 = v197;
    v173 = v200;
    v174 = v199;
    v172 = v201;
    v177 = v202;
    v171 = v203;

    if (!v170 || (v160 != v155 || v170 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v15 = v160;
      v11 = v191;
      goto LABEL_5;
    }

    v161 = *(v2 + 72);
    if (v169 == 2)
    {
      if (v161 != 2)
      {
LABEL_60:
        v15 = v160;
LABEL_61:
        v11 = v191;
        goto LABEL_5;
      }
    }

    else if (v161 == 2 || ((v161 ^ v169) & 1) != 0)
    {
      goto LABEL_60;
    }

    if (v179)
    {
      if (!v159)
      {
        goto LABEL_60;
      }

      v162 = static Image.== infix(_:_:)();

      if ((v162 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v159)
    {
      v15 = v160;
      v179 = 0;
      goto LABEL_61;
    }

    if (v178)
    {
      if ((BYTE8(v233) & 1) == 0)
      {
        v15 = v160;
        v178 = 1;
        goto LABEL_61;
      }
    }

    else if ((BYTE8(v233) & 1) != 0 || *&v192 != *(&v232 + 2) || *(&v192 + 1) != *(&v232 + 3) || *&v184 != *&v233 || *(&v184 + 1) != *(&v233 + 1))
    {
      v15 = v160;
      v178 = 0;
      goto LABEL_61;
    }

    if (v168 == BYTE9(v233))
    {
      v11 = v191;
      if (v177)
      {
        v15 = v160;
      }

      else
      {
        if (!v157)
        {

          return;
        }

        v15 = v160;
        v177 = 0;
      }

      goto LABEL_5;
    }

    goto LABEL_60;
  }

  v14 = v7;
  v177 = 0;
  v178 = 1;
  v192 = 0;
  v184 = 0;
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v171 = 0;
  v179 = 0;
  v15 = 0;
  v16 = 0;
LABEL_5:
  v17 = v193;
  Value = AGGraphGetValue();
  v20 = v19;
  v169 = *(v14 + 16);
  *&v170 = v14 + 16;
  v169(v11, Value, v17);
  if (v16)
  {
    Confirmation = v15;
    v182 = v16;
  }

  else
  {
    v21 = *(v2 + 8);
    if (!v21 || (v20 & 1) != 0)
    {
      v45 = v2[6];
      v282 = v2[7];
      v46 = v2[7];
      v283 = v2[8];
      v47 = v2[8];
      v284 = v2[9];
      v48 = v2[2];
      v278 = v2[3];
      v49 = v2[3];
      v279 = v2[4];
      v50 = v2[4];
      v280 = v2[5];
      v51 = v2[5];
      v281 = v2[6];
      v52 = v2[1];
      v275 = *v2;
      v53 = *v2;
      v276 = v2[1];
      v277 = v2[2];
      v272 = v47;
      v273 = v2[9];
      v268 = v50;
      v269 = v51;
      v270 = v45;
      v271 = v46;
      v264 = v53;
      v265 = v52;
      v285 = *(v2 + 160);
      v274 = *(v2 + 160);
      v266 = v48;
      v267 = v49;
      v54 = *(a1 - 1);
      (*(v54 + 16))(&v286, &v275, a1);
      Confirmation = MakeConfirmationDialog.resolveTitle()(a1);
      v182 = v55;
      v293 = v271;
      v294 = v272;
      v295 = v273;
      v289 = v267;
      v290 = v268;
      v291 = v269;
      v292 = v270;
      v286 = v264;
      v287 = v265;
      v296 = v274;
      v288 = v266;
      (*(v54 + 8))(&v286, a1);
    }

    else
    {
      Confirmation = *(v2 + 7);
      v182 = v21;
    }
  }

  v56 = v14;
  v57 = v2[6];
  v293 = v2[7];
  v58 = v2[9];
  v294 = v2[8];
  v295 = v58;
  v59 = v2[2];
  v289 = v2[3];
  v60 = v2[5];
  v290 = v2[4];
  v291 = v60;
  v292 = v57;
  v61 = v2[1];
  v286 = *v2;
  v287 = v61;
  v296 = *(v2 + 160);
  v288 = v59;
  MakeConfirmationDialog.environment.getter(&v217);
  if (*(&v217 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (LOBYTE(v205[0]) == 2)
  {
    v62 = v2[6];
    v282 = v2[7];
    v63 = v2[9];
    v283 = v2[8];
    v284 = v63;
    v64 = v2[2];
    v278 = v2[3];
    v65 = v2[5];
    v279 = v2[4];
    v280 = v65;
    v281 = v62;
    v66 = v2[1];
    v275 = *v2;
    v276 = v66;
    v285 = *(v2 + 160);
    v277 = v64;
    MakeConfirmationDialog.environment.getter(&v264);
    EnvironmentValues.explicitPreferredColorScheme.getter();

    v168 = LOBYTE(v250[0]);
  }

  else
  {
    v168 = LOBYTE(v205[0]);
    LOBYTE(v250[0]) = v205[0];
  }

  v67 = v2[6];
  v282 = v2[7];
  v68 = v2[9];
  v283 = v2[8];
  v284 = v68;
  v69 = v2[2];
  v278 = v2[3];
  v70 = v2[5];
  v279 = v2[4];
  v280 = v70;
  v281 = v67;
  v71 = v2[1];
  v275 = *v2;
  v276 = v71;
  v285 = *(v2 + 160);
  v277 = v69;
  MakeConfirmationDialog.environment.getter(&v264);
  if (*(&v264 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogIconKey>, &type metadata for DialogIconKey, &protocol witness table for DialogIconKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogIconKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v72 = v253;

  v167 = v72;
  if (v178)
  {
    v73 = v2[7];
    v272 = v2[8];
    v74 = v2[8];
    v273 = v2[9];
    v75 = v2[3];
    v76 = v2[5];
    v268 = v2[4];
    v269 = v76;
    v77 = v2[5];
    v78 = v2[7];
    v270 = v2[6];
    v271 = v78;
    v79 = v2[1];
    v264 = *v2;
    v265 = v79;
    v80 = v2[3];
    v82 = *v2;
    v81 = v2[1];
    v266 = v2[2];
    v267 = v80;
    v83 = v2[9];
    v261 = v74;
    v262 = v83;
    v257 = v268;
    v258 = v77;
    v259 = v270;
    v260 = v73;
    v253 = v82;
    v254 = v81;
    v274 = *(v2 + 160);
    v263 = *(v2 + 160);
    v255 = v266;
    v256 = v75;
    v84 = *(a1 - 1);
    (*(v84 + 16))(&v275, &v264, a1);
    v85 = MakeConfirmationDialog.resolveTintColor()(a1);
    v184 = v86;
    LODWORD(v178) = v87;
    v282 = v260;
    v283 = v261;
    v284 = v262;
    v278 = v256;
    v279 = v257;
    v280 = v258;
    v281 = v259;
    v275 = v253;
    v276 = v254;
    v285 = v263;
    v277 = v255;
    (*(v84 + 8))(&v275, a1);
  }

  else
  {
    LODWORD(v178) = 0;
    v85 = v192;
  }

  v192 = v85;
  v88 = v2[6];
  v282 = v2[7];
  v89 = v2[9];
  v283 = v2[8];
  v284 = v89;
  v90 = v2[2];
  v278 = v2[3];
  v91 = v2[5];
  v279 = v2[4];
  v280 = v91;
  v281 = v88;
  v92 = v2[1];
  v275 = *v2;
  v276 = v92;
  v285 = *(v2 + 160);
  v277 = v90;
  MakeConfirmationDialog.environment.getter(v206);
  if (*(&v206[0] + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v166 = LOBYTE(v204[0]);
  v93 = v2[9];
  v272 = v2[8];
  v273 = v93;
  v274 = *(v2 + 160);
  v94 = v2[5];
  v268 = v2[4];
  v269 = v94;
  v95 = v2[7];
  v270 = v2[6];
  v271 = v95;
  v96 = v2[1];
  v264 = *v2;
  v265 = v96;
  v97 = v2[3];
  v266 = v2[2];
  v267 = v97;
  MakeConfirmationDialog.environment.getter(&v197);
  if (v198)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v253 = v238;
  v254 = v239;
  v255 = v240;
  LOBYTE(v256) = v241;

  v99 = *(v2 + 1);
  v98 = *(v2 + 2);
  LODWORD(v251) = *AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  AnchorGeometry.init(position:size:transform:)();
  v100 = DWORD2(v228[0]);
  v101 = *&v228[0];
  static Anchor.Source<A>.bounds.getter();
  *&v228[0] = v101;
  DWORD2(v228[0]) = v100;
  type metadata accessor for CGRect(0);
  v165 = Anchor.Source.prepare(geometry:)();

  v102 = v191[64];
  v163 = *(v2 + 10);
  v164 = v102;
  v103 = v193;
  (v169)(v185);
  v104 = *(v14 + 80);
  *&v170 = v2;
  v105 = (v104 + 52) & ~v104;
  v106 = (v180 + v105 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v107 = (v106 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v108 = v103;
  v169 = ((v107 + 15) & 0xFFFFFFFFFFFFFFF8);
  v180 = (v107 + 39) & 0xFFFFFFFFFFFFFFF8;
  v109 = (v107 + 55) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 11) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 25) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v188;
  *(v112 + 16) = v189;
  *(v112 + 24) = v113;
  v114 = v186;
  *(v112 + 32) = v187;
  *(v112 + 40) = v114;
  *(v112 + 48) = v163;
  (*(v56 + 32))(v112 + v105, v185, v108);
  *(v112 + v106) = v99;
  *(v112 + v107) = v98;
  v115 = v169 + v112;
  v116 = v182;
  *v115 = Confirmation;
  *(v115 + 1) = v116;
  v115[16] = v164;
  v117 = v112 + v180;
  *v117 = v165;
  LOBYTE(v108) = v168;
  *(v117 + 8) = v168;
  v118 = v167;
  *(v112 + v109) = v167;
  v119 = v112 + v110;
  v120 = v192;
  v121 = v184;
  *v119 = v192;
  *(v119 + 8) = v121;
  v122 = v178 & 1;
  *(v119 + 16) = v178 & 1;
  LOBYTE(v110) = v166;
  *(v119 + 17) = v166;
  v123 = v112 + v111;
  *(v123 + 48) = v256;
  v124 = v255;
  *(v123 + 16) = v254;
  *(v123 + 32) = v124;
  *v123 = v253;
  v251 = partial apply for closure #2 in MakeConfirmationDialog.updateValue();
  v252 = v112;

  outlined init with copy of DialogSuppressionConfiguration?(&v253, v228);
  AGGraphSetOutputValue();

  $defer #1 <A, B>() in MakeConfirmationDialog.updateValue()(v170, Confirmation, v116, v108, v118, v120, v121, v122, v110, &v253);

  outlined consume of DialogSuppressionConfiguration?(v176, v175, v174, v173, v172, v177);
  outlined destroy of DialogSuppressionConfiguration?(&v253, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration);

  (*(v183 + 8))(v191, v193);
}

uint64_t sub_18BEF3B74()
{
  v2 = *(v0 + 40);
  v10 = *(v0 + 16);
  v1 = v10;
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v2;
  v3 = (type metadata accessor for ConfirmationDialogModifierCore(0, &v10) - 8);
  v4 = (*(*v3 + 80) + 52) & ~*(*v3 + 80);
  v5 = (((((((((*(*v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 55) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;

  outlined consume of Text.Storage(*(v6 + 32), *(v6 + 40), *(v6 + 48));

  (*(*(v1 - 8) + 8))(v6 + v3[18], v1);
  (*(*(v9 - 8) + 8))(v6 + v3[19]);

  v7 = v0 + v5;
  if (*(v0 + v5 + 40))
  {
    if (*(v7 + 24))
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }
  }

  return swift_deallocObject();
}

uint64_t *assignWithCopy for FocusedValueModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *(v9 + v17) = *(v10 + v17);
  return a1;
}

uint64_t static NavigationDestinationModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a4;
  v44 = a3;
  v45 = a9;
  v61 = *MEMORY[0x1E69E9840];
  v42 = *a1;
  v14 = *a2;
  v15 = *(a2 + 3);
  v48 = *(a2 + 1);
  v49 = v15;
  v16 = a2[6];
  v50 = a2[5];
  v17 = *(a2 + 14);
  v46 = *(a2 + 60);
  v47 = *(a2 + 76);
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.getter();
  if (v53 != 1)
  {
    _StringGuts.grow(_:)(206);
    MEMORY[0x18D00C9B0](0xD0000000000000B6, 0x800000018CD3EB90);
    v51[0] = a5;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v22);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD3EC50);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    v53 = v14;
    v54 = v48;
    v55 = v49;
    v56 = v50;
    v57 = v16;
    v58 = v17;
    v59 = v46;
    v60 = v47;
    return v44();
  }

  v41 = a7;
  v53 = v14;
  v54 = *(a2 + 1);
  v55 = *(a2 + 3);
  v56 = a2[5];
  v57 = v16;
  v58 = v17;
  v59 = *(a2 + 60);
  v60 = *(a2 + 76);
  if (_ViewInputs.disableNavigationDestination.getter())
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    v40 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v18 = static SemanticFeature.isEnabled.getter();
    v19 = 0x800000018CD3EC70;
    v20 = 0xD000000000000014;
    if (v18)
    {
      v20 = 0;
    }

    v39 = v20;
    if (v18)
    {
      v19 = 0xE000000000000000;
    }

    v38 = v19;
    _StringGuts.grow(_:)(410);
    MEMORY[0x18D00C9B0](0x1000000000000180, 0x800000018CD3EC90);
    v51[0] = a5;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    MEMORY[0x18D00C9B0](v21);

    MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD3EE20);
    MEMORY[0x18D00C9B0](v39, v38);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    if (static SemanticFeature.isEnabled.getter())
    {
      v53 = v14;
      v54 = v48;
      v55 = v49;
      v56 = v50;
      v57 = v16;
      v58 = v17;
      v59 = v46;
      v60 = v47;
      return v44();
    }
  }

  v53 = a5;
  *&v54 = a6;
  v24 = a6;
  v25 = v41;
  *(&v54 + 1) = v41;
  *&v55 = a8;
  type metadata accessor for NavigationDestinationModifier(255, &v53);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(1, a5, v24, v41, a8);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = OffsetAttribute2;
  v53 = v14;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v57 = v16;
  v58 = v17;
  v59 = v46;
  v60 = v47;
  v28 = (v44)(OffsetAttribute2, &v53);
  v44 = &v37;
  LODWORD(v51[0]) = v27;
  v51[1] = 0;
  v52 = 0;
  MEMORY[0x1EEE9AC00](v28);
  v53 = a5;
  *&v54 = v24;
  *(&v54 + 1) = v25;
  *&v55 = a8;
  v34[2] = type metadata accessor for NavigationDestinationModifier.SeededResolver(0, &v53);
  v53 = a5;
  *&v54 = v24;
  *(&v54 + 1) = v25;
  *&v55 = a8;
  SeededResolver = type metadata accessor for NavigationDestinationModifier.MakeSeededResolver(0, &v53);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationModifier<A, B>.MakeSeededResolver, SeededResolver);
  v29 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v34, SeededResolver, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  v31 = AGCreateWeakAttribute();
  v53 = v16;
  LODWORD(v54) = v17;
  MEMORY[0x1EEE9AC00](v31);
  v34[-6] = a5;
  v34[-5] = v24;
  v34[-4] = v25;
  v34[-3] = a8;
  LODWORD(v34[-2]) = v32;
  HIDWORD(v34[-2]) = v33;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Actions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SearchFocusContext?()
{
  if (!lazy cache variable for type metadata for SearchFocusContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchFocusContext?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchFocusContext?>, type metadata accessor for SearchFocusContext?, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchFocusContext?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t implicit closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v10 = type metadata accessor for NavigationDestinationModifier.PreferenceTransform(0, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationModifier<A, B>.PreferenceTransform, v10);
  type metadata accessor for [NavigationDestinationResolverBase](0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return LODWORD(v12[0]);
}

uint64_t Section<>.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return Section.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t Section.init(header:content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Section(0, a4, a5, a6);
  v15 = a7 + v14[13];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v14[11], a2, a5);
  v16 = *(*(a6 - 8) + 32);
  v17 = a7 + v14[12];

  return v16(v17, a3, a6);
}

double destroy for Section(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  if (*(((*(v11 + 56) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

double View._disableAutocorrection(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t View.searchFocused<A>(_:equals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[2] = a5;
  v21[0] = a7;
  v21[1] = a3;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FocusState.Binding(0, v14, v15, v14);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v21 - v18;
  swift_getKeyPath();
  (*(v17 + 16))(v19, a1, v16);
  (*(v11 + 16))(v13, a2, a4);
  SearchFocusContext.init<A>(binding:value:)(v19, v13, a4, a6, v22);
  View.environment<A>(_:_:)();

  return outlined destroy of SearchFocusContext?(v22);
}

uint64_t SearchFocusContext.init<A>(binding:value:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = type metadata accessor for FocusState.Binding(0, v12, v13, v13);
  *a5 = FocusState.Binding.propertyID.getter(v14, v15, v16, v17);
  _convertToAnyHashable<A>(_:)();
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  a5[6] = FocusStateBindingUpdateAction.init<A>(binding:value:)(a1, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  a5[7] = v18;
  v19 = *(v10 + 32);
  v19(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  result = (v19)(v21 + v20, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  a5[8] = partial apply for closure #1 in SearchFocusContext.init<A>(binding:value:);
  a5[9] = v21;
  return result;
}

uint64_t sub_18BEF4F94()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for SearchFocusContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>);
    }
  }
}

uint64_t type metadata completion function for InsettableGroupedListBody(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InsettableGroupedListBody.CollectionViewBody(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InsettableGroupedListBody.TableViewRoot(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled()
{
  result = lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled;
  if (!lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionViewGroupedListsEnabled, &unk_1F0003790, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature()
{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable("\t'\tbT.\b", &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature;
  if (!lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableCollectionViewGroupedListsFeature, &unk_1F00039A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature);
  }

  return result;
}

void type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>()
{
  if (!lazy cache variable for type metadata for IDView<SearchFieldConfiguration.Suggestions, Bool>)
  {
    v0 = type metadata accessor for IDView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IDView<SearchFieldConfiguration.Suggestions, Bool>);
    }
  }
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>)
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_0(255, &lazy cache variable for type metadata for TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>, type metadata accessor for TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>, type metadata accessor for TupleToolbarContent);
    v3 = type metadata accessor for ToolbarModifier(a1, MEMORY[0x1E69E7CA8] + 8, v2, &protocol witness table for TupleToolbarContent<A>);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
    }
  }
}

void type metadata accessor for Button<Text>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<Text>?)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Button<Text>?);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<Button<Text>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarItemGroup<Button<Text>?>)
  {
    type metadata accessor for Button<Text>?(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type Button<Text>? and conformance <A> A?, type metadata accessor for Button<Text>?, lazy protocol witness table accessor for type Button<Text> and conformance Button<A>);
    v6 = type metadata accessor for ToolbarItemGroup(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ToolbarItemGroup<Button<Text>?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
    result = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ToolbarSearchFieldStyle.Implementation and conformance ToolbarSearchFieldStyle.Implementation(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, MEMORY[0x1E697F380]);
    v5[1] = &protocol witness table for ToolbarModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
    v5[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for SearchFieldConfiguration.Scopes?, &type metadata for SearchFieldConfiguration.Scopes);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>);
    }
  }
}

void type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?(255);
    v5[0] = &type metadata for LazySearchSuggestionsKey;
    v5[1] = v2;
    v5[2] = &type metadata for SearchSuggestionItemListFlags;
    v5[3] = &protocol witness table for LazySearchSuggestionsKey;
    v5[4] = lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>? and conformance <A> A?, type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>);
    v5[5] = &protocol witness table for SearchSuggestionItemListFlags;
    v3 = type metadata accessor for LazyPlatformItemWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>(255);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>)
  {
    type metadata accessor for SectionStyleModifier<MenuSectionStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>);
    }
  }
}

void type metadata accessor for SectionStyleModifier<MenuSectionStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>)
  {
    v2 = lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle();
    v4 = type metadata accessor for SectionStyleModifier(a1, &type metadata for MenuSectionStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValue()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.Se,  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC,  type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAc();
    v5[1] = &protocol witness table for LazyPlatformItemWriter<A, B, C>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Environmen);
  }

  return result;
}

uint64_t closure #2 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v12[2] = type metadata accessor for LazyPlatformItemWriter(0, v13);
  v8 = MEMORY[0x1E69E6370];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationModifier<A, B>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance NavigationAuthority.DepthKey@<X0>(_DWORD *a2@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

uint64_t destroy for FocusedValueModifier.Transform(uint64_t a1, uint64_t a2)
{
  v3 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 11;

  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7 + 8;
  v11 = v6;
  result = (*(v6 + 48))(v8 & ~v7, 1, v5);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(v8 & ~v7, v5);
  }

  return result;
}

double closure #2 in FocusedValueModifier.Transform.updateValue()(char **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[32 * v12];
  *(v13 + 4) = a2;
  v13[40] = a3 & 1;
  *(v13 + 6) = a4;
  *(v13 + 7) = a5;
  *a1 = v10;

  return result;
}

uint64_t MakeConfirmationDialog.resolveTitle()(uint64_t a1)
{
  v3 = *(a1 + 32);
  v31 = *(a1 + 16);
  v32 = v3;
  v20 = type metadata accessor for ConfirmationDialogModifierCore(0, &v31);
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - v5;
  v7 = v1[1];
  v21 = *v1;
  v22 = v7;
  v23 = v1[2];
  v8 = *(v1 + 6);
  v28 = *(v1 + 104);
  v29 = *(v1 + 120);
  v30[0] = *(v1 + 136);
  *(v30 + 9) = *(v1 + 145);
  v25 = *(v1 + 56);
  v26 = *(v1 + 72);
  v27 = *(v1 + 88);

  PropertyList.Tracker.reset()();
  v9 = v1[1];
  v31 = *v1;
  v32 = v9;
  v33 = v1[2];
  v34 = v8;
  v38 = *(v1 + 104);
  v39 = *(v1 + 120);
  v40[0] = *(v1 + 136);
  *(v40 + 9) = *(v1 + 145);
  v35 = *(v1 + 56);
  v36 = *(v1 + 72);
  v37 = *(v1 + 88);
  MakeConfirmationDialog.environment.getter(&v41);

  EnvironmentValues.init(_:tracker:)();
  v11 = v42;
  v10 = v43;
  v24 = v8;
  MakeConfirmationDialog.modifier.getter(a1, v6);
  v12 = *(v6 + 4);
  v13 = *(v6 + 5);
  v14 = v6[48];
  outlined copy of Text.Storage(v12, v13, v14);
  v15 = *(v4 + 8);

  v15(v6, v20);
  *&v31 = v11;
  *(&v31 + 1) = v10;
  static Semantics.v7.getter();
  v16 = isLinkedOnOrAfter(_:)();
  v17 = 256;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  v41 = v17;
  v42 = 0;
  v43 = 0;
  v18 = Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v12, v13, v14);

  return v18;
}

uint64_t MakeConfirmationDialog.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for ConfirmationDialogModifierCore(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t MakeConfirmationDialog.resolveTintColor()(uint64_t a1)
{
  v2 = v1[1];
  v33 = *v1;
  v34 = v2;
  v35 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v31 = *(v1 + 120);
  v32[0] = v5;
  *(v32 + 9) = *(v1 + 145);
  v6 = *(v1 + 72);
  v27 = *(v1 + 56);
  v28 = v6;
  v29 = *(v1 + 88);
  v30 = v4;
  static Semantics.v6_4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v7 = v1[1];
    v16 = *v1;
    v17 = v7;
    v18 = v1[2];
    v19 = v3;
    v23 = *(v1 + 104);
    v24 = *(v1 + 120);
    v25[0] = *(v1 + 136);
    *(v25 + 9) = *(v1 + 145);
    v20 = *(v1 + 56);
    v21 = *(v1 + 72);
    v22 = *(v1 + 88);
    MakeConfirmationDialog.environment.getter(&v26);
    v8 = EnvironmentValues.tintColor.getter();
  }

  else
  {
    v8 = 0;
  }

  v9 = v1[1];
  v16 = *v1;
  v17 = v9;
  v18 = v1[2];
  v19 = v3;
  v23 = *(v1 + 104);
  v24 = *(v1 + 120);
  v25[0] = *(v1 + 136);
  *(v25 + 9) = *(v1 + 145);
  v20 = *(v1 + 56);
  v21 = *(v1 + 72);
  v22 = *(v1 + 88);
  MakeConfirmationDialog.environment.getter(&v26);
  if (*(&v26 + 1))
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogTintColorKey>, &type metadata for DialogTintColorKey, &protocol witness table for DialogTintColorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogTintColorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v15)
  {
    goto LABEL_10;
  }

  if (v8)
  {

LABEL_10:

    PropertyList.Tracker.reset()();
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v23 = v30;
    v24 = v31;
    v25[0] = v32[0];
    *(v25 + 9) = *(v32 + 9);
    v20 = v27;
    v21 = v28;
    v19 = v3;
    v22 = v29;
    MakeConfirmationDialog.environment.getter(&v15);

    EnvironmentValues.init(_:tracker:)();
    v16 = v26;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v11 = v10;
    v13 = v12;

    return v11 | (v13 << 32);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey>, &type metadata for EnvironmentValues.DialogSeverityKey, &protocol witness table for EnvironmentValues.DialogSeverityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DialogSeverityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>, &type metadata for DialogSuppressionConfiguration.Key, &protocol witness table for DialogSuppressionConfiguration.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.isEmpty.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = dispatch thunk of Collection.isEmpty.getter();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t closure #1 in static NavigationDestinationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v9[2] = type metadata accessor for NavigationDestinationModifier(0, v11);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, FunctionTypeMetadata1, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11[0];
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__r__lAA15ModifiedContentVyADyxAA40TransactionalPreferenceTransformModifierVyAA18NavigationTitleKeyVGGAA01_ghI0VyAA07ToolbarL0VGGAaBHPAjaBHPxAaBHD1__AiA0cI0HPyHCHC_AoaQHPyHCHCTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v2 = type metadata accessor for ModifiedContent();
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(v4, v3, v6);
}

void type metadata accessor for [NavigationDestinationResolverBase](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unsigned int *storeEnumTagSinglePayload for Menu(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(result + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v16) = 0;
      }

      else if (v20)
      {
        *(result + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = ((result + v13) & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(result + v16) = v22;
    }

    else
    {
      *(result + v16) = v22;
    }
  }

  else if (v20)
  {
    *(result + v16) = v22;
  }

  return result;
}

uint64_t static ToolbarContentBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t View.searchable(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v86 = a3;
  v89 = a1;
  v90 = a2;
  v79 = a9;
  v78 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v66 - v17;
  v18 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v66 - v24);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v26, v27, v28);
  v83 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *a5;

  if (a10)
  {
    v81 = a6;
    v87 = a10;
    v88 = a7;
    v31 = a8;
  }

  else
  {
    v81 = static Text.System.search.getter();
    v87 = v33;
    v88 = v32;
    v31 = v34;
  }

  v70 = v31;
  v71 = a6;
  v72 = a7;
  outlined copy of Text?(a6, a7, a8, a10);

  outlined copy of Text?(a6, a7, a8, a10);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v35 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v74 = a8;
  *v25 = v89;
  v25[1] = v35;
  v75 = v25;
  outlined init with copy of Binding<AttributedString>(v25, v85, type metadata accessor for Binding<AttributedString>);
  v36 = v83;
  v37 = &v82[v83[12]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v37 + 8) = 0;
  v38 = v84;
  *v84 = 2;

  v39 = v31 & 1;
  outlined copy of Text.Storage(v81, v88, v31 & 1);
  v38[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v38 + 1) = 2;
  *(v38 + 1) = 0;
  v38[8] = 1;
  AttributedString.init()();
  v38[*(v18 + 40)] = 0;
  v40 = *(v18 + 44);
  v73 = a10;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
    v38 = v84;
  }

  v41 = &v38[v40];
  v42 = byte_1EAB095CC;
  *v41 = static SearchFocusUpdate.empty;
  v41[4] = v42;
  v43 = v87;

  v44 = v81;
  v45 = v88;
  v46 = outlined copy of Text.Storage(v81, v88, v39);
  MEMORY[0x18D009CE0](v92, v46);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v44, v45, v39);

  v47 = v82;
  *(v82 + 1) = v44;
  *(v47 + 16) = v45;
  v87 = v43;
  v88 = v45;
  *(v47 + 24) = v39;
  *(v47 + 32) = v43;
  outlined init with copy of Binding<AttributedString>(v85, v47 + v36[11], type metadata accessor for Binding<AttributedString>);
  v48 = v47 + v36[13];
  outlined init with copy of Binding<AttributedString>(v38, v48, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v48 + *(v49 + 28)) = 0;
  v50 = v47 + v36[10];
  v70 &= 1u;
  v93 = 1;
  v69 = v39;
  v92[0] = v89;
  v92[1] = v90;
  v92[2] = v86;
  v92[3] = a4;

  outlined copy of Text.Storage(v44, v45, v39);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v91);
  v51 = v91[1];
  v67 = v91[0];
  v68 = v93;
  type metadata accessor for Binding<TextSelection?>(0);
  v53 = v52;
  v54 = *(*(v52 - 8) + 56);
  v55 = v77;
  v54(v77, 1, 1, v52);
  type metadata accessor for TextField<EmptyView>(0, v56, v57, v58);
  v59 = a4;
  v61 = *(v60 + 56);
  v54((v50 + v61), 1, 1, v53);
  LOBYTE(v92[0]) = 0;
  *(v50 + 72) = v67;
  *(v50 + 80) = v51;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = 0;
  *(v50 + 156) = 0;
  *(v50 + 160) = v68;
  *(v50 + 161) = 2;
  *(v50 + 163) = 0;
  *(v50 + 168) = 0;
  *(v50 + 180) = 0;
  v62 = v90;
  *v50 = v89;
  *(v50 + 8) = v62;
  v63 = v87;
  *(v50 + 16) = v86;
  *(v50 + 24) = v59;
  *(v50 + 32) = 0;
  v64 = v88;
  *(v50 + 40) = v44;
  *(v50 + 48) = v64;
  *(v50 + 56) = v70;
  *(v50 + 64) = v63;
  outlined assign with take of Binding<TextSelection?>?(v55, v50 + v61);

  *v47 = v76;
  outlined consume of Text.Storage(v44, v64, v69);

  outlined consume of Text?(v71, v72, v74, v73);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v84, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v85, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v75, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v47, v78, v83, v80);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v47, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchFocused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v7 = 1;
  return View.searchFocused<A>(_:equals:)(v8, &v7, a4, MEMORY[0x1E69E6370], a5, MEMORY[0x1E69E6380], a6);
}

uint64_t FocusState.Binding.propertyID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for FocusStoreLocation(0, v4, v5, a4);
  if (swift_dynamicCastClass())
  {
    return FocusStoreLocation.id.getter();
  }

  return type metadata accessor for FocusState.Binding.PrivateType(0, v4, v5, v6);
}

uint64_t (*FocusStateBindingUpdateAction.init<A>(binding:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FocusState.Binding(0, a3, a4, a4);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(a3 - 8);
  v12 = (v10 + *(v9 + 64) + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v10, a1, v8);
  (*(v11 + 32))(v13 + v12, a2, a3);
  return partial apply for closure #1 in FocusStateBindingUpdateAction.init<A>(binding:value:);
}

uint64_t sub_18BEF7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for FocusState.Binding(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v4 + v7;

  v11 = type metadata accessor for Binding();
  v12 = *(v8 + 8);
  v12(v10 + *(v11 + 32), v5);
  v12(v4 + v9, v5);

  return swift_deallocObject();
}

uint64_t outlined destroy of SearchFocusContext?(uint64_t a1)
{
  type metadata accessor for SearchFocusContext?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _PreferenceActionModifier<IsSearchFocusedPreferenceKey> and conformance _PreferenceActionModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SearchFocusContextKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement?(&static SearchFocusContextKey.defaultValue, v1, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t static InsetGroupedListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *a1;
  v23 = &type metadata for InsetGroupedListStyle;
  *&v24 = a3;
  *(&v24 + 1) = &protocol witness table for InsetGroupedListStyle;
  *&v25 = a4;
  type metadata accessor for _ListValue(255, &v23);
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v7 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v6, v32, v8, &type metadata for InsetGroupedListStyle, &type metadata for InsetGroupedListStyleContext, a3, &protocol witness table for InsetGroupedListStyle, v7, &v23, a4);
  v9 = v23;
  v10 = v26;
  v11 = BYTE1(v26);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>(255);
  v13 = v12;
  v15 = type metadata accessor for SelectionManagerBox(255, a3, a4, v14);
  v16 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v21 = v25;
  v22 = v24;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v15);
  v23 = v13;
  *&v24 = v15;
  *(&v24 + 1) = v16;
  *&v25 = WitnessTable;
  v18 = type metadata accessor for InsettableGroupedListBody(0, &v23);
  v27 = v9;
  v29 = v21;
  v28 = v22;
  v30 = v10;
  v31 = v11;
  v23 = &type metadata for InsetGroupedListStyle;
  *&v24 = &type metadata for InsetGroupedListStyleContext;
  *(&v24 + 1) = a3;
  *&v25 = &protocol witness table for InsetGroupedListStyle;
  *(&v25 + 1) = v7;
  v26 = a4;
  v19 = type metadata accessor for InsettableGroupedListBodyRule(0, &v23);
  swift_getWitnessTable(")t\tb,3\b", v19);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>, v18);
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<InsetGroupedListStyleContext>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<InsetGroupedListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders()
{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferBaselineAlignedHeaders, &type metadata for PreferBaselineAlignedHeaders, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferBaselineAlignedHeaders, &type metadata for PreferBaselineAlignedHeaders, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferBaselineAlignedHeaders, &type metadata for PreferBaselineAlignedHeaders, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferBaselineAlignedHeaders, &type metadata for PreferBaselineAlignedHeaders, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders;
  if (!lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferBaselineAlignedHeaders, &type metadata for PreferBaselineAlignedHeaders, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders);
  }

  return result;
}

uint64_t sub_18BEF8138(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v16 = *a1;
  v1 = v16;
  v17 = v2;
  v18 = v4;
  v19 = v3;
  type metadata accessor for InsettableGroupedListBody.CollectionViewBody(255, &v16);
  v16 = v1;
  v17 = v2;
  v18 = v4;
  v19 = v3;
  v5 = type metadata accessor for InsettableGroupedListBody.TableViewRoot(255, &v16);
  v6 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for StaticIf();
  v9 = lazy protocol witness table accessor for type CollectionViewGroupedListsEnabled and conformance CollectionViewGroupedListsEnabled();
  WitnessTable = swift_getWitnessTable("%E\tb(/\b", v12);
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for InsettableGroupedListBody<A, B>.TableViewRoot, v5);
  v15[1] = v4;
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v6, v15);
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>, MEMORY[0x1E697FD30]);
  v13[0] = v9;
  v13[1] = WitnessTable;
  v13[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v14);
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v8, v13);
}

void type metadata accessor for ViewInputFlagModifier<PreferBaselineAlignedHeaders>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<PreferBaselineAlignedHeaders>)
  {
    lazy protocol witness table accessor for type PreferBaselineAlignedHeaders and conformance PreferBaselineAlignedHeaders();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<PreferBaselineAlignedHeaders>);
    }
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CollectionViewGroupedListsEnabled(__int128 *a1)
{
  v1 = a1[1];
  v6 = *a1;
  v7 = v1;
  v8 = a1[2];
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  outlined init with copy of _GraphInputs(&v6, v5);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (LOBYTE(v5[0]) == 1 && (v5[0] = v6, v5[1] = v7, v5[2] = v8, (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0))
  {
    lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
    v3 = static UserDefaultKeyedFeature.isEnabled.getter();
    outlined destroy of _GraphInputs(&v6);
    v2 = v3 ^ 1;
  }

  else
  {
    outlined destroy of _GraphInputs(&v6);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t type metadata completion function for Grid(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Grid<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for Grid<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t type metadata completion function for LazyPlatformItemWriter(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccess)
  {
    type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie( 255,  &lazy cache variable for type metadata for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedCo,  type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>,  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>,  &type metadata for HasCustomScopeBarPredicate);
    type metadata accessor for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccess);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.S(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Envi)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.Se,  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC,  type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarRoleKey>, &type metadata for ToolbarRoleKey, &protocol witness table for ToolbarRoleKey, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<Envi);
    }
  }
}

void type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v7 = type metadata accessor for StaticIf();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomScopeBar?, &type metadata for EnvironmentValues.SearchCustomScopeBar);
    v3 = v2;
    type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar? and conformance <A> A?, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomScopeBar?, &type metadata for EnvironmentValues.SearchCustomScopeBar, &protocol witness table for EnvironmentValues.SearchCustomScopeBar);
    v7[3] = lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>();
    v5 = type metadata accessor for ViewInputsBinding(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomAccessory?, &type metadata for EnvironmentValues.SearchCustomAccessory);
    v3 = v2;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?, &lazy cache variable for type metadata for EnvironmentValues.SearchCustomAccessory?, &type metadata for EnvironmentValues.SearchCustomAccessory, &protocol witness table for EnvironmentValues.SearchCustomAccessory);
    v7[3] = lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>();
    v5 = type metadata accessor for ViewInputsBinding(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>)
  {
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>)
  {
    type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>?(255);
    lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(&lazy protocol witness table cache variable for type IDView<SearchFieldConfiguration.Suggestions, Bool>? and conformance <A> A?, type metadata accessor for IDView<SearchFieldConfiguration.Suggestions, Bool>?, lazy protocol witness table accessor for type IDView<SearchFieldConfiguration.Suggestions, Bool> and conformance IDView<A, B>);
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Button<Text>? and conformance <A> A?(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7 = a3();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v6, &v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem))
  {
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ToolbarItemGroup<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor, &protocol witness table for UIKitSearchBarAdaptor, type metadata accessor for ToolbarItemGroup);
    type metadata accessor for ToolbarItemGroup<Button<Text>?>(255);
    type metadata accessor for SearchToolbarItem(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(255, &lazy cache variable for type metadata for ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for ViewInputsBinding<A, B>;
    v4[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HasCustomAccessoryPredicate and conformance HasCustomAccessoryPredicate();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>(255);
    v5[0] = &type metadata for LazySearchScopesKey;
    v5[1] = v2;
    v5[2] = &type metadata for ActionPlatformItemListFlags;
    v5[3] = &protocol witness table for LazySearchScopesKey;
    v5[4] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
    v5[5] = &protocol witness table for ActionPlatformItemListFlags;
    v3 = type metadata accessor for LazyPlatformItemWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for LazyPlatformItemWriter<LazySearchScopesKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>, ActionPlatformItemListFlags>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>(255);
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes? and conformance <A> A?, &lazy cache variable for type metadata for SearchFieldConfiguration.Scopes?, &type metadata for SearchFieldConfiguration.Scopes, &protocol witness table for SearchFieldConfiguration.Scopes);
    v5[1] = &protocol witness table for PickerStyleWriter<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Scopes?, PickerStyleWriter<SectionPickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle()
{
  result = lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle;
  if (!lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuSectionStyle, &type metadata for MenuSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuSectionStyle and conformance MenuSectionStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>(255);
    v4[0] = &protocol witness table for SearchFieldConfiguration.Suggestions;
    v4[1] = &protocol witness table for SectionStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAc()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, Modifi();
    v5[1] = &protocol witness table for LazyPlatformItemWriter<A, B, C>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarRoleKey>, &type metadata for ToolbarRoleKey, &protocol witness table for ToolbarRoleKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarRoleKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LazyPlatformItemWriter<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyPlatformItemWriter<A, B, C>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type HasCustomScopeBar and conformance HasCustomScopeBar()
{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBar, &unk_1EFFA1078, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBar, &unk_1EFFA1078, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBar, &unk_1EFFA1078, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBar, &unk_1EFFA1078, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar;
  if (!lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomScopeBar, &unk_1EFFA1078, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomScopeBar and conformance HasCustomScopeBar);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasCustomAccessoryPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory();
  PropertyList.subscript.getter();
  return v2;
}

unint64_t lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory()
{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessory, &unk_1EFFCFFE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessory, &unk_1EFFCFFE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessory, &unk_1EFFCFFE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessory, &unk_1EFFCFFE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory;
  if (!lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasCustomAccessory, &unk_1EFFCFFE0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasCustomAccessory and conformance HasCustomAccessory);
  }

  return result;
}

uint64_t static LazyPlatformItemWriter._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v42 = a4;
  v43 = a3;
  v41 = a9;
  v92 = *MEMORY[0x1E69E9840];
  v14 = a2[3];
  v15 = a2[1];
  v88 = a2[2];
  v89 = v14;
  v16 = a2[3];
  v90 = a2[4];
  v17 = a2[1];
  v86 = *a2;
  v87 = v17;
  v82 = v88;
  v83 = v16;
  v84 = a2[4];
  v18 = *a1;
  v91 = *(a2 + 20);
  v85 = *(a2 + 20);
  v80 = v86;
  v81 = v15;
  outlined init with copy of _ViewInputs(&v86, &v68);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  v45 = v18;
  *&v68 = a5;
  *(&v68 + 1) = a6;
  *&v69 = a7;
  v44 = a8;
  *(&v69 + 1) = a8;
  v70 = a10;
  type metadata accessor for LazyPlatformItemWriter(255, &v68);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a6 - 8) + 64))
  {
    closure #1 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(1, a5, a6, a7, v44, a10, *(&a10 + 1));
  }

  v37 = a5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v64[2] = v82;
  v64[3] = v83;
  v64[4] = v84;
  v65 = v85;
  v64[0] = v80;
  v64[1] = v81;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  LODWORD(v73[0]) = v85;
  v68 = v80;
  v69 = v81;
  PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v68, 1, v66);
  LODWORD(v58) = v18;
  outlined init with copy of _ViewInputs(v64, &v68);
  _GraphValue.value.getter();
  v20 = v44;
  closure #2 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(1, a5, a6, a7, v44, a10, *(&a10 + 1));
  v40 = AGGraphCreateOffsetAttribute2();
  v21 = v87;
  v22 = swift_beginAccess();
  v39 = *(v21 + 16);
  v62 = v66[4];
  v63[0] = v67[0];
  *(v63 + 12) = *(v67 + 12);
  v58 = v66[0];
  v59 = v66[1];
  v60 = v66[2];
  v61 = v66[3];
  MEMORY[0x1EEE9AC00](v22);
  *&v68 = a7;
  *(&v68 + 1) = a6;
  *&v69 = *(&a10 + 1);
  *(&v69 + 1) = a10;
  v23 = type metadata accessor for PlatformItemListGenerator(0, &v68);
  v34 = v23;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v23);
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v68, v66, v23);
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v58, closure #1 in Attribute.init<A>(_:)partial apply, v33, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v72 = v62;
  v73[0] = v63[0];
  *(v73 + 12) = *(v63 + 12);
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v38 = *(v24 + 8);
  v27 = v38(&v68, v23);
  v36 = &v36;
  v57 = v91;
  v54 = v88;
  v55 = v89;
  v56 = v90;
  v52 = v86;
  v53 = v87;
  *&v78[0] = __PAIR64__(v78[0], v39);
  DWORD2(v78[0]) = v40;
  MEMORY[0x1EEE9AC00](v27);
  *&v58 = v37;
  *(&v58 + 1) = a6;
  *&v59 = a7;
  *(&v59 + 1) = v20;
  v60 = a10;
  updated = type metadata accessor for LazyPlatformItemWriter.UpdateEnvironment(0, &v58);
  v34 = updated;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyPlatformItemWriter<A, B, C>.UpdateEnvironment, updated);
  outlined init with copy of _ViewInputs(&v86, &v58);
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v78, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v33, updated, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  _GraphInputs.environment.setter();
  v74[2] = v54;
  v74[3] = v55;
  v74[4] = v56;
  v75 = v57;
  v74[0] = v52;
  v74[1] = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  v31 = outlined init with copy of _ViewInputs(v74, &v58);
  v43(v31, &v46);
  v38(v66, v23);
  v76[2] = v48;
  v76[3] = v49;
  v76[4] = v50;
  v77 = v51;
  v76[0] = v46;
  v76[1] = v47;
  outlined destroy of _ViewInputs(v76);
  v78[2] = v54;
  v78[3] = v55;
  v78[4] = v56;
  v79 = v57;
  v78[0] = v52;
  v78[1] = v53;
  outlined destroy of _ViewInputs(v78);
  v60 = v82;
  v61 = v83;
  v62 = v84;
  LODWORD(v63[0]) = v85;
  v58 = v80;
  v59 = v81;
  return outlined destroy of _ViewInputs(&v58);
}

uint64_t closure #1 in static LazyPlatformItemWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v9 = type metadata accessor for LazyPlatformItemWriter(0, v15);
  v10 = *(v9 + 76);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, partial apply for closure #1 in static PointerOffset.of(_:), v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

unint64_t lazy protocol witness table accessor for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext()
{
  result = lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext;
  if (!lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveSelectionContainerModifier.MakeSelectionContext, &unk_1F0010018, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext);
  }

  return result;
}

uint64_t type metadata completion function for NavigableListModifier.BoundListSelectionDetector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #3 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigableListModifier(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v11[2] = v5;
  v7 = type metadata accessor for NavigationStateHost();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t specialized static ListPresentationPredicate.evaluate(inputs:)(uint64_t *a1)
{
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag(), PropertyList.subscript.getter(), v6 == 1))
  {
    PropertyList.subscript.getter();
    v5 = v6;
    v4[0] = MEMORY[0x1E697F788];
    v3 = MEMORY[0x1E697F2A0];
    v4[1] = v4;
    v4[2] = &v3;
    v1 = AnyStyleContextType.acceptsAny<each A>(_:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t static ListStyleWriter._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ListStyleWriter(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static ListStyleWriter._makeInputs(modifier:inputs:)(1, a3, a4, v6);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StyleType(0, a3, a4, v7);
  lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput();
  return PropertyList.subscript.setter();
}

uint64_t _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA17EnvironmentValuesV11SearchFieldV_TtB5Tm(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for StyleContextWriter<SidebarListStyleContext>(0, a1, a2, a3, type metadata accessor for SourceInput);
  a4();
  PropertyList.subscript.getter();
  if (!v8)
  {
    return *MEMORY[0x1E698D3F8];
  }

  v5 = *(v8 + 40);
  v6 = *(v8 + 44);

  if (v6)
  {
    return Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    return v5;
  }
}

uint64_t type metadata completion function for CollectionViewListRoot(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Binding();
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListPadding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[65])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static CollectionViewListRoot._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, double *a7@<X8>)
{
  v44 = a7;
  v85 = *MEMORY[0x1E69E9840];
  updated = type metadata accessor for UpdateCollectionViewListCoordinator(0, a4, a6, a4);
  v45 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v42 = &v38 - v13;
  LODWORD(v40) = *a1;
  v14 = *(a2 + 48);
  v81 = *(a2 + 32);
  v82 = v14;
  v83 = *(a2 + 64);
  v84 = *(a2 + 80);
  v15 = *(a2 + 16);
  v80[0] = *a2;
  v80[1] = v15;
  v76 = v81;
  v77 = v14;
  v78 = v83;
  v79 = v84;
  v74 = v80[0];
  v75 = v15;
  v16 = v15;
  swift_beginAccess();
  LODWORD(v68) = *(v16 + 16);
  *&v55 = a3;
  *(&v55 + 1) = a4;
  *&v56 = a5;
  *(&v56 + 1) = a6;
  v17 = type metadata accessor for CollectionViewListRoot.TransformContentEnvironment(0, &v55);
  v48[2] = v17;
  v48[3] = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListRoot<A, B>.TransformContentEnvironment, v17);
  outlined init with copy of _ViewInputs(v80, &v55);
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v48, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v41 = 0;
  _GraphInputs.environment.setter();
  LOBYTE(v55) = 0;
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type DisableListSections and conformance DisableListSections();
  PropertyList.subscript.getter();
  if (v55)
  {
    v20 = 96;
  }

  else
  {
    v20 = 356;
  }

  lazy protocol witness table accessor for type ListConcatenatesFooters and conformance ListConcatenatesFooters();
  PropertyList.subscript.getter();
  if (v55)
  {
    v21 = v20 & 0xFFFFFFFFFFFFDF3FLL | 0x2000;
  }

  else
  {
    v21 = v20;
  }

  v39 = v21;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  static ScrollGeometry.zero.getter();
  LOBYTE(v68) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  v47[8] = a3;
  v47[9] = a4;
  v47[10] = a5;
  v47[11] = a6;
  v22 = v40;
  LODWORD(v64[0]) = v40;
  *&v55 = a3;
  *(&v55 + 1) = a4;
  v23 = a4;
  *&v56 = a5;
  *(&v56 + 1) = a6;
  v24 = a6;
  type metadata accessor for CollectionViewListRoot(255, &v55);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v62[0] = v74;
  v62[1] = v75;
  v62[2] = v76;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  *&v66[0] = v39;
  outlined init with copy of _GraphInputs(v62, &v55);
  _ViewListInputs.init(_:options:)();
  static View.makeDebuggableViewList(view:inputs:)();
  outlined destroy of _ViewListInputs(&v55);
  v63[0] = v74;
  v63[1] = v75;
  v63[2] = v76;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  outlined init with copy of _GraphInputs(v63, &v55);
  _ViewListInputs.init(_:)();
  v25 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListInputs(&v55);
  LODWORD(v68) = v22;
  v64[2] = v76;
  v64[3] = v77;
  v64[4] = v78;
  v65 = v79;
  v64[0] = v74;
  v64[1] = v75;
  outlined init with copy of _ViewInputs(v64, &v55);
  v26 = v42;
  UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(v25, &v68, &v74, IndirectAttribute2, v23, a3, v24, a5, v42);
  v40 = &v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = type metadata accessor for CollectionViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionViewListDataSource<A>, v30);
  *&v55 = v30;
  *(&v55 + 1) = v23;
  *&v56 = WitnessTable;
  *(&v56 + 1) = v24;
  v32 = type metadata accessor for UICollectionViewListCoordinator(0, &v55);
  v33 = updated;
  v47[2] = v32;
  v47[3] = updated;
  v47[4] = swift_getWitnessTable(protocol conformance descriptor for UpdateCollectionViewListCoordinator<A>, updated);
  v34 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v47, v33, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
  v36 = v55;
  AGGraphGetFlags();
  AGGraphSetFlags();
  v66[2] = v76;
  v66[3] = v77;
  v66[4] = v78;
  v67 = v79;
  v66[0] = v74;
  v66[1] = v75;
  v51 = v76;
  v52 = v77;
  v53 = v78;
  v54 = v79;
  v49 = v74;
  v50 = v75;
  outlined init with copy of _ViewInputs(v66, &v55);
  static CollectionViewListUtilities.makeOutputs<A, B>(inputs:coordinator:coordinatorKind:scrollGeometry:)(&v49, v36, 1, IndirectAttribute2, v30, v23, WitnessTable, v24, v44);
  v70 = v51;
  v71 = v52;
  v72 = v53;
  v73 = v54;
  v68 = v49;
  v69 = v50;
  outlined destroy of _ViewInputs(&v68);
  (*(v45 + 8))(v26, v33);
  outlined destroy of _ViewListOutputs(&v61);
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v79;
  v55 = v74;
  v56 = v75;
  return outlined destroy of _ViewInputs(&v55);
}

uint64_t type metadata completion function for UpdateCollectionViewListCoordinator(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for CollectionViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier()
{
  result = lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier;
  if (!lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubmitScopeModifier, &type metadata for SubmitScopeModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitScopeModifier and conformance SubmitScopeModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SearchEnvironmentWritingModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

void type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ListStyleContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent, &type metadata for ListStyleContent, &lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata completion function for BridgedListState(uint64_t a1)
{
  type metadata accessor for BridgedListState.ScrollTarget?(319, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_18BEFB4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexPath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t outlined init with take of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *initializeWithCopy for BridgedListState(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 16))(v7, v8, v12);
    v13 = *(v9 + 20);
    v14 = &v7[v13];
    v15 = &v8[v13];
    *v14 = *v15;
    v14[16] = v15[16];
    v7[*(v9 + 24)] = v8[*(v9 + 24)];
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v16 = a3[6];
  v17 = a3[7];
  v18 = a1 + v16;
  v19 = a2 + v16;
  v18[112] = v19[112];
  v20 = *(v19 + 6);
  *(v18 + 5) = *(v19 + 5);
  *(v18 + 6) = v20;
  v21 = *(v19 + 4);
  v22 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v22;
  v23 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v23;
  *(v18 + 4) = v21;
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

uint64_t destroy for BridgedListState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for BridgedListState.ScrollTarget(0);
  result = (*(*(v4 - 8) + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v3, v6);
  }

  return result;
}

uint64_t sub_18BEFB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState()
{
  result = lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState;
  if (!lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateBridgedState, &type metadata for UpdateBridgedState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateBridgedState and conformance UpdateBridgedState);
  }

  return result;
}

_DWORD *initializeWithCopy for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

void type metadata accessor for UIScrollView?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIScrollView?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIScrollView?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider()
{
  result = lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider;
  if (!lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListScrollViewProvider, &type metadata for ListScrollViewProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListScrollViewProvider and conformance ListScrollViewProvider);
  }

  return result;
}

unint64_t type metadata accessor for Scrollable()
{
  result = lazy cache variable for type metadata for Scrollable;
  if (!lazy cache variable for type metadata for Scrollable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Scrollable);
  }

  return result;
}

uint64_t type metadata accessor for ListRepresentable(uint64_t a1, uint64_t a2)
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t SearchModifier.adjustedState.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  type metadata accessor for Binding<AttributedString>(0);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<(SearchFieldState, AttributedString)>(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>(0);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  v35 = v2;
  State.projectedValue.getter();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v2 + *(a1 + 44), v6, type metadata accessor for Binding<AttributedString>);
  v18 = v10[1];
  v19 = *(v6 + 1);
  v38 = v12;

  v39 = v8;
  MEMORY[0x18D00ACC0](v8);
  type metadata accessor for (SearchFieldState, AttributedString)(0);
  v21 = v20;
  MEMORY[0x18D00ACC0](v36);
  v43 = v18;
  v44 = v19;
  type metadata accessor for LocationBox<SearchZipLocation>(0);
  swift_allocObject();
  v22 = LocationBox.init(_:)();
  outlined destroy of SearchEnvironmentWritingModifier(v6, type metadata accessor for Binding<AttributedString>);
  v23 = *v10;

  outlined destroy of SearchEnvironmentWritingModifier(v10, type metadata accessor for Binding<SearchFieldState>);
  *v14 = v23;
  v14[1] = v22;
  v24 = (v35 + *(a1 + 48));
  v25 = *v24;
  v26 = v24[1];
  if (*(v24 + 17))
  {
    v27 = *(v24 + 16);
  }

  else
  {
    v41 = v25 & 1;
    v42 = v26;
    _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v25 = v43;
    v26 = v44;
    v27 = v45;
  }

  v43 = v25;
  v44 = v26;
  v45 = v27 & 1;
  Binding.zip<A>(with:)();

  outlined destroy of SearchEnvironmentWritingModifier(v14, type metadata accessor for Binding<(SearchFieldState, AttributedString)>);
  v28 = v17 + *(v37 + 32);
  v29 = *(v21 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0);
  v31 = v40;
  SearchStateProjection.get(base:)(v28, &v28[v29], v28[*(v30 + 48)], v40 + *(v39 + 32));
  lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection();
  v32 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v31 = *v17;
  v31[1] = v32;

  return outlined destroy of SearchEnvironmentWritingModifier(v17, type metadata accessor for Binding<((SearchFieldState, AttributedString), Bool)>);
}

void type metadata accessor for (SearchFieldState, AttributedString)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SearchFieldState, AttributedString))
  {
    type metadata accessor for SearchFieldState(255);
    type metadata accessor for AttributedString();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SearchFieldState, AttributedString));
    }
  }
}

void type metadata accessor for ((SearchFieldState, AttributedString), Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool))
  {
    type metadata accessor for (SearchFieldState, AttributedString)(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool));
    }
  }
}

void type metadata accessor for LocationBox<SearchZipLocation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBox<SearchZipLocation>)
  {
    lazy protocol witness table accessor for type SearchZipLocation and conformance SearchZipLocation();
    v1 = type metadata accessor for LocationBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBox<SearchZipLocation>);
    }
  }
}

uint64_t SearchStateProjection.get(base:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X8>)
{
  v66 = a3;
  v67 = a1;
  v68 = a2;
  v69 = a4;
  v5 = type metadata accessor for AttributedString.CharacterView();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v64 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v71 = v59 - v13;
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v59 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v59 - v25;
  type metadata accessor for (SearchFieldState, AttributedString)(0);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFieldState(v67, v30, type metadata accessor for SearchFieldState);
  v31 = &v30[*(v28 + 56)];
  v59[0] = *(v8 + 16);
  v59[1] = v8 + 16;
  (v59[0])(v31, v68, v7);
  outlined init with take of (SearchFieldState, AttributedString)(v30, v26, type metadata accessor for (SearchFieldState, AttributedString));
  v26[*(v15 + 56)] = v66;
  v65 = v23;
  outlined init with copy of (SearchFieldState, Bool)(v26, v23, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v68 = *(v28 + 56);
  v32 = v69;
  outlined init with take of (SearchFieldState, AttributedString)(v23, v69, type metadata accessor for SearchFieldState);
  v33 = v20;
  outlined init with copy of (SearchFieldState, Bool)(v26, v20, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v34 = &v20[*(v28 + 56)];
  v35 = v71;
  v36 = v64;
  (*(v8 + 32))(v71, v34, v64);
  v67 = v26;
  outlined init with copy of (SearchFieldState, Bool)(v26, v17, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v37 = *(v28 + 56);
  v38 = v8;
  v66 = v17[*(v15 + 56)];
  v39 = *(v8 + 8);
  (v39)(&v17[v37], v36);
  _s7SwiftUI16SearchFieldStateVWOhTm_4(v17, type metadata accessor for SearchFieldState);
  v40 = v36;
  _s7SwiftUI16SearchFieldStateVWOhTm_4(v33, type metadata accessor for SearchFieldState);
  (v39)(&v68[v65], v36);
  v41 = *(type metadata accessor for SearchFieldState(0) + 36);
  lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v42 = *v32;
    goto LABEL_3;
  }

  v46 = v70;
  v47 = v35;
  v48 = v59[0];
  (v59[0])(v70, v47, v40);
  v68 = v39;
  v49 = v60;
  v48(v60, &v32[v41], v40);
  (*(v38 + 24))(&v32[v41], v46, v40);
  v50 = v61;
  AttributedString.characters.getter();
  v65 = AttributedString.CharacterView._count.getter();
  v51 = v63;
  v52 = *(v62 + 8);
  v52(v50, v63);
  AttributedString.characters.getter();
  v53 = AttributedString.CharacterView._count.getter();
  v52(v50, v51);
  v54 = v49;
  v39 = v68;
  (v68)(v54, v40);
  result = (v39)(v70, v40);
  v55 = v53 - v65;
  if (__OFSUB__(v53, v65))
  {
    __break(1u);
  }

  else
  {
    v35 = v71;
    if ((v55 & 0x8000000000000000) == 0 || (v56 = __OFSUB__(0, v55), v55 = v65 - v53, !v56))
    {
      v42 = *v32;
      if (v55 == 1)
      {
        v57 = v53 < 1;
        v43 = v67;
        if (!v57)
        {
          if (v42 == 2)
          {
            v44 = v66;
            if ((v66 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v58 = v32[2];
            v44 = v66;
            if (v58 != 2 || (v58 = v32[3], v58 != 2))
            {
              if (v58)
              {
                *v32 = 1;
              }
            }

            if (v44)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_5;
        }

LABEL_4:
        v44 = v66;
        if ((v66 ^ (v42 == 2)))
        {
LABEL_6:
          (v39)(v35, v40);
          return outlined destroy of (SearchFieldState, Bool)(v43, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
        }

LABEL_5:
        SearchFieldState.isSearching.setter(v44);
        goto LABEL_6;
      }

LABEL_3:
      v43 = v67;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for ((SearchFieldState, AttributedString), Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of (SearchFieldState, Bool)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (SearchFieldState, Bool)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t property wrapper backing initializer of SearchField.state@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for State<SearchFieldState>(0);
  *(a2 + *(v4 + 28)) = 0;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(a1, a2, type metadata accessor for SearchFieldState);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t outlined destroy of StateOrBinding<SearchFieldState>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double outlined consume of StateOrBinding<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

void *initializeWithCopy for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a2 + v17 + 8);
  *v18 = *(a2 + v17);
  *(v18 + 1) = v20;
  type metadata accessor for Binding<AttributedString>(0);
  v22 = *(v21 + 32);

  v13(&v18[v22], &v19[v22], v12);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t outlined init with copy of Binding<SearchFieldState>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage()
{
  result = lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage;
  if (!lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage)
  {
    v3 = type metadata accessor for SearchEnvironmentStorage(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentStorage, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage);
  }

  return result;
}

double specialized static SearchEnvironmentWritingModifier.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(Value, v8, type metadata accessor for SearchEnvironmentWritingModifier);
  v10 = v8[*(v6 + 24)];
  v17 = v8[*(v6 + 24)];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v11 = a2[1];
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v12 = *v5;
  outlined destroy of SearchEnvironmentWritingModifier(v5, type metadata accessor for SearchFieldState);
  v16 = v12 != 2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>, &type metadata for EnvironmentValues.IsSearchingKey, &protocol witness table for EnvironmentValues.IsSearchingKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    if (v10 != 4)
    {
      goto LABEL_11;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v10 != 4)
    {
      goto LABEL_11;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v15)
    {
      goto LABEL_11;
    }
  }

  v14[12] = 1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v11)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

LABEL_11:
    outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);
    return result;
  }

  outlined destroy of SearchEnvironmentWritingModifier(v8, type metadata accessor for SearchEnvironmentWritingModifier);

  return result;
}

double protocol witness for Location.wasRead.setter in conformance SearchZipLocation(uint64_t a1)
{

  dispatch thunk of AnyLocation.wasRead.setter();
  dispatch thunk of AnyLocation.wasRead.setter();

  return result;
}

uint64_t SearchPrimitiveModifier.MakeBaseView.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for SearchPrimitiveModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t protocol witness for Rule.value.getter in conformance SearchPrimitiveModifier<A>.MakeForwardEnv@<X0>(uint64_t a2@<X8>)
{
  result = SearchPrimitiveModifier.MakeForwardEnv.value.getter(*v2);
  *a2 = result & 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t SearchPrimitiveModifier.MakeForwardEnv.value.getter(unint64_t a1)
{
  v1 = *AGGraphGetValue();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined copy of AppIntentExecutor?(*Value, Value[1]);
  return v1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);
    }
  }
}

double destroy for SearchPrimitiveModifier.BaseSearchImplementation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v26 = *(a2 + 16);
  v6 = *(v5 + 80);
  v7 = *(v26 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + (v6 | v8 | 7) + 1) & ~(v6 | v8 | 7));
  v10 = *(v5 + 64) + ((v6 + 9) & ~v6);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + 24;
  v13 = *(v5 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  if (v11 + ((v6 + 16) & v13) <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11 + ((v6 + 16) & v13);
  }

  v15 = v9[v14];
  v16 = v15 - 2;
  if (v15 < 2)
  {
    goto LABEL_18;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *v9;
  }

  else if (v17 == 2)
  {
    v18 = *v9;
  }

  else if (v17 == 3)
  {
    v18 = *v9 | (v9[2] << 16);
  }

  else
  {
    v18 = *v9;
  }

  v19 = (v18 | (v16 << (8 * v14))) + 2;
  v15 = v18 + 2;
  if (v14 < 4)
  {
    v15 = v19;
  }

LABEL_18:
  v20 = ~v6;
  if (v15 == 1)
  {

    (*(v5 + 8))((v6 + ((((v6 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v13) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v20, v4);
  }

  else
  {
    (*(v5 + 8))(&v9[v6 + 9] & v20, v4);
  }

  v21 = &v9[v14 + 8] & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 17);
  if (v22 >= 2)
  {
    v22 = *v21 + 2;
  }

  if (v22 == 1)
  {
  }

  (*(v7 + 8))((v8 + v21 + 18) & ~v8, v26);
  v24 = &v9[*(v7 + 64) + 8 + ((v8 + (v14 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v8)] & 0xFFFFFFFFFFFFFFF8;
  if (*(v24 + 8))
  {
  }

  v25 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 41))
  {
    if (*(v25 + 40) == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.init(searchField:placement:forwardEnv:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for SearchField(0, a6, a7, a4);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier(0, a6, a7, v17);
  *(a8 + *(result + 36)) = a2;
  v19 = a8 + *(result + 40);
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = a5;
  return result;
}

uint64_t initializeWithCopy for SearchOverlayView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v6;
    *(v4 + 25) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  return a1;
}

double destroy for SearchPrimitiveModifier.SearchConfigModifier(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 9) & ~v6) + *(v5 + 64);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 + ((v6 + 16) & ~(v6 | 3)) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 + ((v6 + 16) & ~(v6 | 3));
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_20;
  }

  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 4;
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v11 = v14 + 2;
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v11 = (v14 | (v12 << (8 * v10))) + 2;
LABEL_20:
  v15 = ~v6;
  if (v11 == 1)
  {

    (*(v5 + 8))((v6 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v6 | 3) + 8) & ~(v6 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v15, v4);
  }

  else
  {
    (*(v5 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 5) & v15, v4);
  }

  v16 = &a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  if (v17 == 1)
  {
  }

  v18 = *(*(a2 + 16) - 8);
  v19 = v18 + 8;
  v20 = *(v18 + 80);
  (*(v18 + 8))((v16 + v20 + 18) & ~v20);
  if (*((&a1[*(v19 + 56) + 1 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v20 + 26) & ~v20)] & 0xFFFFFFFFFFFFFFF8) + 16))
  {
  }

  return result;
}

uint64_t destroy for SearchOverlayView(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for ToolbarSearchFieldStyle(uint64_t result, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 1;
  }

  else
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 25) = *(a2 + 25);
  }

  *(result + 41) = *(a2 + 41);
  return result;
}

uint64_t outlined destroy of ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarModifier(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchFieldStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for PlatformSearchFieldStyle.Implementation(uint64_t a1)
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Control(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Control, &type metadata for SearchFieldConfiguration.Control, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfiguration.Control, &type metadata for SearchFieldConfiguration.Control, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  }

  return result;
}

uint64_t type metadata completion function for TextInputSuggestionsModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Suggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SearchFieldConfigurationReader<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationReader<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t closure #1 in static SearchFieldConfigurationReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for SearchFieldConfigurationReader(0, v13);
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TokenFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenFieldStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata completion function for TokenFieldConfiguration(uint64_t a1)
{
  type metadata accessor for Binding<AttributedString>(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel()
{
  result = lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel;
  if (!lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TextFieldStyleLabel, &type metadata for _TextFieldStyleLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel;
  if (!lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TextFieldStyleLabel, &type metadata for _TextFieldStyleLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  }

  return result;
}

uint64_t sub_18BEFE560(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ResolvedTextFieldStyle(255);
  v9[0] = &type metadata for _TextFieldStyleLabel;
  v9[1] = v1;
  v9[2] = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  v9[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v9);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>(255);
  v4 = type metadata accessor for ModifiedContent();
  v8[0] = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle, "!6\rbTY\t");
  v8[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v5 = MEMORY[0x1E697E858];
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v8);
  v7[1] = lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesEditMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>, MEMORY[0x1E697FD30]);
  return swift_getWitnessTable(v5, v4, v7);
}

uint64_t lazy protocol witness table accessor for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTextFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle, protocol conformance descriptor for ResolvedTextFieldStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

void type metadata completion function for SearchFieldConfiguration.Data(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for WritableKeyPath<TextFieldState, String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t SearchFieldConfigurationReader.MakeContent.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v20 = a7;
  v19 = HIDWORD(a1);
  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  SearchFieldConfigurationReader.MakeContent.config.getter(a1, v11, a3, a4, a5, a6, &v19 - v15);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = v19;
  v28 = v11;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SearchFieldConfigurationReader.MakeContent.value.getter, v21, MEMORY[0x1E69E73E0], a3, v17, v20);
  return _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v16, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, v13);
}

uint64_t SearchFieldConfigurationReader.MakeContent.config.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v9 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24[-v18];
  Value = AGGraphGetValue();
  outlined init with copy of SearchFieldConfiguration.Data?(Value, v19, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, v13);
  outlined init with copy of SearchFieldConfiguration.Data?(v19, v16, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, v13);
  v21 = 1;
  if ((*(v10 + 48))(v16, 1, v9) != 1)
  {
    outlined init with take of (SearchFieldState, AttributedString)(v16, v12, type metadata accessor for SearchFieldConfiguration.Data);
    closure #1 in SearchFieldConfigurationReader.MakeContent.config.getter(v12, a1, v25, v26, v27, v28, v29, a7);
    _s7SwiftUI16SearchFieldStateVWOhTm_4(v12, type metadata accessor for SearchFieldConfiguration.Data);
    v21 = 0;
  }

  _s7SwiftUI24SearchFieldConfigurationV4DataVSgWOhTm_0(v19, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  v22 = type metadata accessor for SearchFieldConfiguration(0);
  return (*(*(v22 - 8) + 56))(a7, v21, 1, v22);
}

uint64_t protocol witness for Location.update() in conformance SearchZipLocation(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for (SearchFieldState, AttributedString)(0);
  v6 = a1 + *(v5 + 48);

  return SearchZipLocation.update()(a1, v6, v4, v3);
}

uint64_t protocol witness for Projection.get(base:) in conformance SearchStateProjection@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  type metadata accessor for (SearchFieldState, AttributedString)(0);
  v5 = *(v4 + 48);
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, &lazy cache variable for type metadata for ((SearchFieldState, AttributedString), Bool), type metadata accessor for (SearchFieldState, AttributedString));
  v7 = a1[*(v6 + 48)];

  return SearchStateProjection.get(base:)(a1, &a1[v5], v7, a2);
}

void type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>, &type metadata for SearchSuggestionsPlacement, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SearchField.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v14 = type metadata accessor for SearchField(0, a2, a3, v13);
  SearchField.resolvedControl.getter(v14);
  v19[0] = a3;
  v19[1] = &protocol witness table for TextFieldStyleModifier<A>;
  v15 = MEMORY[0x1E697E858];
  v18[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v19);
  v18[1] = &protocol witness table for TokenFieldStyleModifier<A>;
  swift_getWitnessTable(v15, v6, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v12, v6);
}

uint64_t storeEnumTagSinglePayload for TextFieldState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for TextFieldState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v5)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;

      *(a1 + 32) = *(a2 + 32);

      goto LABEL_6;
    }

    outlined destroy of TextFieldState.FormatActions(a1 + 16);
  }

  v7 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v7;
LABEL_6:
  v8 = *(a2 + 48);
  if (!*(a1 + 48))
  {
LABEL_10:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    goto LABEL_11;
  }

  if (!v8)
  {
    outlined destroy of TextFieldState.FormatActions(a1 + 48);
    goto LABEL_10;
  }

  v9 = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;

  *(a1 + 64) = *(a2 + 64);

LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  return a1;
}

uint64_t TextField.$state.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *(v3 + 108);
  if (v4)
  {
    v5 = v3[4];
    v6 = v3[5];
    a2[4] = v5;
    a2[5] = v6;
    v7 = *(v3 + 92);
    *(a2 + 92) = v7;
    v8 = *v3;
    v9 = v3[1];
    *a2 = *v3;
    a2[1] = v9;
    v11 = v3[2];
    v10 = v3[3];
    a2[2] = v11;
    a2[3] = v10;
    v23 = v8;
    v24 = v9;
    v25 = v11;
    v26 = v10;
    v27 = v5;
    *v28 = v6;
    *&v28[12] = v7;
    v29 = v4;
    return outlined init with copy of State<TextFieldState>(&v23, v21, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
  }

  else
  {
    v19 = v3[5];
    v20 = *(v3 + 12);
    v14 = *v3;
    v15 = v3[1];
    v16 = v3[2];
    v17 = v3[3];
    v27 = v3[4];
    v18 = v27;
    *v28 = v19;
    *&v28[12] = *(v3 + 92);
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v29 = v4;
    v13 = MEMORY[0x1E6981790];
    outlined init with copy of State<TextFieldState>(&v23, v21, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v13);
    State.projectedValue.getter();
    v21[4] = v18;
    v21[5] = v19;
    v22 = v20;
    v21[0] = v14;
    v21[1] = v15;
    v21[2] = v16;
    v21[3] = v17;
    return outlined destroy of State<TextFieldState>(v21, &lazy cache variable for type metadata for State<TextFieldState>, v13);
  }
}

void type metadata accessor for Binding<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for ResolvedTextFieldStyle(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = a2[8];

  if (v6)
  {
    v7 = a2[5];
    v8 = a2[6];
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
  }

  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v13 = a2[12];
  v14 = a2[13];
  v15 = a2[14];
  v16 = a2[15];
  v17 = a2[16];
  v38 = a2[17];
  v39 = a2[18];
  v40 = a2[19];
  v41 = a2[20];
  v42 = a2[21];
  __dsta = *(a2 + 44);
  v45 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v45);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v45;
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v46 = v20;
    __dst = v20 + v27;
    v28 = v21 + v27;
    v29 = type metadata accessor for TextSelection(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
      v34 = v46;
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v28, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v28, *(*(v35 - 8) + 64));
      }

      v34 = v46;
      __dst[*(v29 + 20)] = v32[*(v29 + 20)];
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    (*(v24 + 56))(v34, 0, 1, v23);
  }

  return a1;
}

uint64_t TextFieldStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t outlined init with copy of Binding<TextFieldState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, ValueMetadata *))
{
  type metadata accessor for Binding<TextFieldState>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_18BEFFCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }
}

void *initializeWithCopy for ResolvedSearchFieldStyle(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[1] = *(a2 + v6 + 1);
  *(v7 + 1) = *(a2 + v6 + 2);
  v7[8] = *(a2 + v6 + 8);
  *(v7 + 1) = *(a2 + v6 + 4);
  v9 = type metadata accessor for SearchFieldState(0);
  v10 = v9[9];
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 16);

  v12(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  v13 = v9[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v14[4] = v15[4];
  *v14 = *v15;
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = v19[8];
  if (v20 == 255)
  {
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    v21 = *v19;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(*v19, v20 & 1);
    *v18 = v21;
    v18[8] = v22;
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  v27 = *(v25 + 1);
  v28 = v25[16];
  outlined copy of Text.Storage(v26, v27, v28);
  *v24 = v26;
  *(v24 + 1) = v27;
  v24[16] = v28;
  *(v24 + 3) = *(v25 + 3);

  return a1;
}

uint64_t destroy for ResolvedSearchFieldStyle(void *a1)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v3 = *(v2 + 32);
  v4 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(&v4[v3], v5);
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = a1 + *(v6 + 24);
  v8 = v7[8];
  if (v8 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v7, v8 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v6 + 32)), *(a1 + *(v6 + 32) + 8), *(a1 + *(v6 + 32) + 16));
}

uint64_t View.viewAlias<A, B, C>(if:_:source:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v27 = a4;
  v28 = a2;
  v30 = a6;
  v31 = a7;
  v29 = a8;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = v12;
  v33[1] = v13;
  v33[2] = v15;
  v33[3] = v14;
  v16 = type metadata accessor for StaticSourceWriter(0, v33);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = type metadata accessor for StaticIf();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  v28(v22);
  (*(v9 + 32))(v19, v11, a5);
  ViewModifier.requiring<A>(_:)(v27, v16, v27);
  (*(v17 + 8))(v19, v16);
  MEMORY[0x18D00A570](v24, v32, v20, v31);
  return (*(v21 + 8))(v24, v20);
}

uint64_t closure #1 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for NavigableListModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E6981EA0];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.TextFieldLabelDisplayModeKey, &unk_1EFFC3CF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey);
  }

  return result;
}

uint64_t outlined init with take of (SearchFieldState, AttributedString)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t initializeWithCopy for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = *(v5 + 32);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 + 40 + v4) & ~v13;
  v81 = v13 + 40;
  v93 = v13;
  v15 = (v13 + 40 + v5) & ~v13;

  v83 = v11;
  v84 = v9;
  v11(v14, v15, v9);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v18 + 16;
  v21 = *(v18 + 80);
  v91 = v16;
  v22 = (v21 | 7) + v16;
  v23 = ((v22 + v14) & ~(v21 | 7));
  v87 = v21 | 7;
  v24 = ((v22 + v15) & ~(v21 | 7));
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = v25 + v21 + 8;
  v79 = v21 + 8;
  v28 = v26 + v21 + 8;

  v88 = v19;
  v89 = v17;
  v19(v27 & ~v21, v28 & ~v21, v17);
  v92 = v21;
  v86 = *(v20 + 48);
  v80 = v86 + ((v21 + 16) & ~v21);
  v29 = (v23 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v24 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 17);
  if (v31 >= 2)
  {
    v31 = *v30 + 2;
  }

  v90 = ~v93;
  v32 = ~v87;
  v33 = ~v21;
  if (v31 == 1)
  {
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);

    v34 = 1;
  }

  else
  {
    v34 = 0;
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
  }

  *(v29 + 17) = v34;
  v35 = (v87 + 18 + v29) & v32;
  v36 = (v87 + 18 + v30) & v32;
  *v35 = *v36;
  *(v35 + 1) = *(v36 + 1);
  *(v35 + 2) = *(v36 + 2);
  *(v35 + 3) = *(v36 + 3);
  v37 = *(v36 + 4);
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 4) = v37;
  v38 = v21 + 9;
  v39 = (v21 + 9 + v36) & v33;
  v88((v21 + 9 + v35) & v33, v39, v89);
  v40 = ((v21 + 9 + v35) & v33) + v86;
  *v40 = *(v39 + v86);
  v40 &= 0xFFFFFFFFFFFFFFFCLL;
  v41 = (v39 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 4);
  *(v40 + 8) = *(v41 + 8);
  *(v40 + 4) = v42;
  v43 = v86 + ((v21 + 9) & v33);
  v44 = v21 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v45 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + ((v21 + 16) & v44);
  v46 = v43 + 16;
  *((v43 + 16 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v43 + 16 + v36) & 0xFFFFFFFFFFFFFFF8);
  v47 = (v43 & 0xFFFFFFFFFFFFFFF8) + 24;
  v48 = ((v87 + 18 + ((v80 + (((v81 & v90) + v91 + v87) & v32) + 7) & 0xFFFFFFFFFFFFFFF8)) & v32) + v47 + (v87 | v93);
  v49 = (v48 + a1) & ~(v87 | v93);
  v50 = ((v48 + a2) & ~(v87 | v93));
  v51 = v45 + 9;
  if (v51 <= v47)
  {
    v52 = v47;
  }

  else
  {
    v52 = v51;
  }

  v53 = v50[v52];

  if (v53 >= 2)
  {
    if (v52 <= 3)
    {
      v54 = v52;
    }

    else
    {
      v54 = 4;
    }

    if (v54 <= 1)
    {
      if (!v54)
      {
        goto LABEL_23;
      }

      v55 = *v50;
      if (v52 < 4)
      {
LABEL_26:
        if ((v55 | ((v53 - 2) << (8 * v52))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

LABEL_24:
        *v49 = *v50;
        v56 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
        v57 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v56 = *v57;
        v58 = ((v56 + v79) & v44);
        v59 = ((v57 + v79) & v44);
        v60 = (v59 + 7);
        *v58 = *v59;
        v58[1] = v59[1];
        v58[2] = v59[2];
        v58[3] = v59[3];
        v61 = (v58 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v62 = v60 & 0xFFFFFFFFFFFFFFFCLL;
        LODWORD(v60) = *(v60 & 0xFFFFFFFFFFFFFFFCLL);
        *(v61 + 4) = *(v62 + 4);
        *v61 = v60;
        v63 = (v92 + 5 + v61) & v33;
        v64 = (v92 + 5 + v62) & v33;

        v88(v63, v64, v89);
        *(v63 + v86) = *(v64 + v86);
        v65 = (v63 + v86) & 0xFFFFFFFFFFFFFFFCLL;
        v66 = (v64 + v86) & 0xFFFFFFFFFFFFFFFCLL;
        v67 = *(v66 + 4);
        *(v65 + 8) = *(v66 + 8);
        *(v65 + 4) = v67;
        v68 = 1;
        goto LABEL_28;
      }
    }

    else if (v54 == 2)
    {
      v55 = *v50;
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v54 == 3)
    {
      v55 = *v50 | (v50[2] << 16);
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v55 = *v50;
      if (v52 < 4)
      {
        goto LABEL_26;
      }
    }

    v53 = v55 + 2;
  }

LABEL_23:
  if (v53 == 1)
  {
    goto LABEL_24;
  }

LABEL_27:
  *v49 = *v50;
  *(v49 + 1) = v50[1];
  *(v49 + 2) = v50[2];
  *(v49 + 3) = v50[3];
  v69 = *(v50 + 1);
  *(v49 + 8) = v50[8];
  *(v49 + 4) = v69;
  v70 = &v50[v38] & v33;
  v88((v38 + v49) & v33, v70, v89);
  v71 = ((v38 + v49) & v33) + v86;
  *v71 = *(v70 + v86);
  v71 &= 0xFFFFFFFFFFFFFFFCLL;
  v72 = (v70 + v86) & 0xFFFFFFFFFFFFFFFCLL;
  v73 = *(v72 + 4);
  *(v71 + 8) = *(v72 + 8);
  *(v71 + 4) = v73;
  *((v46 + v49) & 0xFFFFFFFFFFFFFFF8) = *(&v50[v46] & 0xFFFFFFFFFFFFFFF8);

  v68 = 0;
LABEL_28:
  *(v49 + v52) = v68;
  v74 = (v52 + 8 + v49) & 0xFFFFFFFFFFFFFFF8;
  v75 = &v50[v52 + 8] & 0xFFFFFFFFFFFFFFF8;
  v76 = *(v75 + 17);
  if (v76 >= 2)
  {
    v76 = *v75 + 2;
  }

  if (v76 == 1)
  {
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
    *(v74 + 16) = *(v75 + 16);

    v77 = 1;
  }

  else
  {
    v77 = 0;
    *v74 = *v75;
    *(v74 + 8) = *(v75 + 8);
  }

  *(v74 + 17) = v77;
  v83((v93 + 18 + v74) & v90, (v93 + 18 + v75) & v90, v84);
  *(((v93 + 18 + v74) & v90) + v91) = *(((v93 + 18 + v75) & v90) + v91);
  return a1;
}

uint64_t destroy for SearchPrimitiveModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 16), *(v3 + 24));

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v39 = v5 + 8;
  v6 = *(v5 + 80);
  v35 = *(v5 + 8);
  v35((v6 + 40 + v3) & ~v6, v4);
  v7 = *(v39 + 56);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v32 = v7;
  v12 = ((v10 | 7) + v7 + ((v6 + 40 + v3) & ~v6)) & ~(v10 | 7);

  v38 = *(v9 + 8);
  v38((v10 + 8 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10, v8);
  v13 = *(v9 + 64);
  v31 = v13 + ((v10 + 16) & ~v10);
  v14 = (v31 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 17);
  if (v15 >= 2)
  {
    v15 = *v14 + 2;
  }

  v34 = ~v6;
  v16 = ~v11;
  v36 = v4;
  v37 = ~v10;
  if (v15 == 1)
  {
  }

  v38((v10 + 9 + ((v11 + 18 + v14) & v16)) & v37, v8);
  v17 = v13 + ((v10 + 9) & v37);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + ((v10 + 16) & (v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL));

  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 24;
  v20 = (((v11 | v6) + a1 + v19 + ((v11 + 18 + ((v31 + ((((v6 + 40) & v34) + v32 + v11) & v16) + 7) & 0xFFFFFFFFFFFFFFF8)) & v16)) & ~(v11 | v6));
  if (v18 + 9 <= v19)
  {
    v21 = (v17 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v21 = v18 + 9;
  }

  v22 = v20[v21];
  v23 = v22 - 2;
  if (v22 < 2)
  {
    v26 = v36;
    goto LABEL_24;
  }

  if (v21 <= 3)
  {
    v24 = v21;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = v36;
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = *v20;
  }

  else
  {
    if (v24 == 2)
    {
      v25 = *v20;
    }

    else if (v24 == 3)
    {
      v25 = *v20 | (v20[2] << 16);
    }

    else
    {
      v25 = *v20;
    }

    v26 = v36;
  }

  v27 = (v25 | (v23 << (8 * v21))) + 2;
  v22 = v25 + 2;
  if (v21 < 4)
  {
    v22 = v27;
  }

LABEL_24:
  if (v22 == 1)
  {

    v38((v10 + ((((v10 + 8 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) & (v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v37, v8);
  }

  else
  {
    v38(&v20[v10 + 9] & v37, v8);
  }

  v28 = &v20[v21 + 8] & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v28 + 17);
  if (v29 >= 2)
  {
    v29 = *v28 + 2;
  }

  if (v29 == 1)
  {
  }

  return (v35)((v6 + v28 + 18) & v34, v26);
}

uint64_t SearchModifier.environmentModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  SearchModifier.adjustedState.getter(a1, a2);
  v5 = *(a1 + 44);
  v6 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  result = _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(&v2[v5], a2 + *(v6 + 20), type metadata accessor for Binding<AttributedString>);
  *(a2 + *(v6 + 24)) = *v2;
  return result;
}

uint64_t View.searchEnvironmentTransform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchEnvironmentTransformModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SearchFieldConfiguration.Key>, &type metadata for SearchFieldConfiguration.Key, &protocol witness table for SearchFieldConfiguration.Key, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.field.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SearchField(255, *(a1 + 16), *(a1 + 24), a4);
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  swift_getKeyPath();
  v11 = v4 + *(a1 + 40);
  LOBYTE(v18) = *v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>, v6);
  View.environment<A>(_:_:)();

  swift_getKeyPath();
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v18 = v13;
  v19 = v14;
  outlined copy of AppIntentExecutor?(v13, v14);
  v15 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v17[0] = WitnessTable;
  v17[1] = v15;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v17);
  View.environment<A>(_:_:)();

  outlined consume of TriggerSubmitAction?(v13, v14);
  return (*(v8 + 8))(v10, v7);
}

uint64_t destroy for SearchField(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 9) & ~v6) + *(v5 + 64);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 + ((v6 + 16) & ~(v6 | 3)) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 + ((v6 + 16) & ~(v6 | 3));
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_20;
  }

  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 4;
  }

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v11 = v14 + 2;
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v11 = (v14 | (v12 << (8 * v10))) + 2;
LABEL_20:
  v15 = ~v6;
  if (v11 == 1)
  {

    (*(v5 + 8))((v6 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v6 | 3) + 8) & ~(v6 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v15, v4);
  }

  else
  {
    (*(v5 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 5) & v15, v4);
  }

  v16 = &a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  if (v17 == 1)
  {
  }

  v18 = *(*(a2 + 16) - 8);
  v19 = *(v18 + 8);
  v20 = (v16 + *(v18 + 80) + 18) & ~*(v18 + 80);

  return v19(v20);
}

uint64_t protocol witness for Location.wasRead.getter in conformance SearchZipLocation()
{
  if (dispatch thunk of AnyLocation.wasRead.getter())
  {
    return 1;
  }

  else
  {
    return dispatch thunk of AnyLocation.wasRead.getter() & 1;
  }
}

uint64_t outlined init with take of (SearchFieldState, Bool)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle;
  if (!lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle);
  }

  return result;
}

uint64_t View.tokenFieldStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TokenFieldStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t TextField.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v9 = *(v8 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v33 = v9;
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v12 = type metadata accessor for TextField(0, a2, a3, v11);
  v34[0] = TextField.$text.getter();
  v34[1] = v13;
  v34[2] = v14;
  v34[3] = v15;
  TextField.$state.getter(v12, v39);
  v53 = v39[4];
  *v54 = v40[0];
  *&v54[12] = *(v40 + 12);
  v49 = v39[0];
  v50 = v39[1];
  v51 = v39[2];
  v52 = v39[3];
  v16 = MEMORY[0x1E6981948];
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  Binding.zip<A>(with:)();
  v47[4] = v53;
  v48[0] = *v54;
  *(v48 + 12) = *&v54[12];
  v47[0] = v49;
  v47[1] = v50;
  v47[2] = v51;
  v47[3] = v52;
  outlined destroy of State<TextFieldState>(v47, &lazy cache variable for type metadata for Binding<TextFieldState>, v16);

  v53 = v44;
  *v54 = v45;
  *&v54[16] = v46[0];
  *&v54[28] = *(v46 + 12);
  v49 = v40[2];
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v17 = *(&v41 + 1);
  v18 = v41;
  if (v41 == v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of Binding<TextSelection?>(&v50, v34, type metadata accessor for (String, TextFieldState));

    v17 = *(&v51 + 1);
    v18 = v51;
    v37 = *v54;
    v38[0] = *&v54[16];
    *(v38 + 12) = *&v54[28];
    v35 = v52;
    v36 = v53;
  }

  else
  {
    outlined init with copy of Binding<TextSelection?>(&v50, v34, type metadata accessor for (String, TextFieldState));

    v37 = *v54;
    v38[0] = *&v54[16];
    *(v38 + 12) = *&v54[28];
    v35 = v52;
    v36 = v53;
  }

  lazy protocol witness table accessor for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection();
  v19 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v20 = v49;

  outlined destroy of ResolvedTextFieldStyle(&v49, type metadata accessor for Binding<(String, TextFieldState)>);
  v21 = v35;
  *(a4 + 120) = v36;
  v22 = v38[0];
  *(a4 + 136) = v37;
  *(a4 + 152) = v22;
  *(a4 + 164) = *(v38 + 12);
  LOBYTE(v34[0]) = 1;
  *(a4 + 72) = v20;
  *(a4 + 80) = v19;
  *(a4 + 88) = v18;
  *(a4 + 96) = v17;
  *(a4 + 104) = v21;
  *(a4 + 180) = 1;
  *a4 = TextField.$text.getter();
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  *(a4 + 24) = v25;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 33) = *(a1 + v12[11]);
  v26 = (a1 + v12[12]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  *(a4 + 40) = *v26;
  *(a4 + 48) = v28;
  *(a4 + 56) = v29;
  *(a4 + 64) = v30;
  v31 = v12[14];
  outlined copy of Text?(v27, v28, v29, v30);
  outlined assign with copy of Binding<TextSelection?>?(a1 + v31, a4 + v33);
  return (*(*(v12 - 1) + 8))(a1, v12);
}

uint64_t outlined destroy of State<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  type metadata accessor for Binding<String>(0, a2, &type metadata for TextFieldState, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Binding<TextSelection?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (String, TextFieldState)()
{
  if (!lazy cache variable for type metadata for (String, TextFieldState))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, TextFieldState));
    }
  }
}

double outlined copy of StateOrBinding<TextFieldState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (a15)
  {

    outlined copy of TextFieldState.FormatActions?(a5, a6, a7, a8);
    return outlined copy of TextFieldState.FormatActions?(a9, a10, a11, a12);
  }

  else
  {

    outlined copy of TextFieldState.FormatActions?(a3, a4, a5, a6);
    outlined copy of TextFieldState.FormatActions?(a7, a8, a9, a10);
  }

  return result;
}

double outlined copy of TextFieldState.FormatActions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

double outlined consume of TextFieldState.FormatActions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined init with copy of ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTextFieldStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Binding<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TextFieldState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Binding<AttributedString>(uint64_t a1)
{
  type metadata accessor for Binding<AttributedString>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  if (*(a2 + 32) == 1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v4;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t destroy for NavigableListModifier.BoundListSelectionDetector(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80) & 0xF8 | 7;
  v5 = (((((((((((((result + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 31) & 0xFFFFFFFFFFFFFFFCLL) + v4 + 4) & ~v4;
  v6 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v7 = *(v3 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v5 + v6);
  if (v8 <= 2)
  {
    if (v8 == 2)
    {
LABEL_13:
      v9 = *(v3 + 8);

      return v9(v5, v2);
    }

    if (v8 == 1)
    {
      v10 = *(*(a2 + 16) - 8);
      result = (*(v3 + 48))((((((((((((((result + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 31) & 0xFFFFFFFFFFFFFFFCLL) + v4 + 4) & ~v4, 1, v2);
      v3 = v10;
      if (result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t outlined destroy of SearchEnvironmentWritingModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchPrimitiveModifier.init(base:searchField:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SearchModifier(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = *(type metadata accessor for SearchPrimitiveModifier(0, a3, a4, v11) + 36);
  v14 = type metadata accessor for SearchField(0, a3, a4, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v12, a2, v14);
}

uint64_t sub_18BF027B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

char *initializeWithCopy for SearchFieldConfiguration.Data(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *&a2[v11];
  v15 = *&a2[v11 + 8];
  LOBYTE(v9) = a2[v11 + 16];
  outlined copy of Text.Storage(v14, v15, v9);
  *v12 = v14;
  *(v12 + 1) = v15;
  v12[16] = v9;
  *(v12 + 3) = *(v13 + 3);
  v16 = *(a3 + 24);
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = v18[8];

  if (v19 == 255)
  {
    *v17 = *v18;
    v17[8] = v18[8];
  }

  else
  {
    v20 = *v18;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v21);
    *v17 = v20;
    v17[8] = v21;
  }

  return a1;
}

double outlined copy of PlatformItemCollection?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of PlatformItemCollection.Storage(result, a2 & 1);
  }

  return v2;
}

uint64_t sub_18BF02A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t closure #1 in SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a2;
  v53 = a5;
  v45 = type metadata accessor for ResolvedSearchFieldStyle(0);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  v47 = v12;
  v70[0] = a4;
  v70[1] = &protocol witness table for TextFieldStyleModifier<A>;
  v13 = MEMORY[0x1E697E858];
  v49 = MEMORY[0x1E697E858];
  v69[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v70);
  v69[1] = &protocol witness table for TokenFieldStyleModifier<A>;
  v46 = v11;
  WitnessTable = swift_getWitnessTable(v13, v11, v69);
  v65 = &type metadata for SearchFieldConfiguration.Control;
  v66 = v11;
  v67 = v12;
  v68 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v65);
  v42 = type metadata accessor for ModifiedContent();
  v51 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - v14;
  IsNotConfiguredFromStyle = type metadata accessor for SearchField.IsNotConfiguredFromStyle(255, a3, a4, v15);
  v17 = swift_getWitnessTable(protocol conformance descriptor for SearchField<A>.IsNotConfiguredFromStyle, IsNotConfiguredFromStyle);
  HasSuggestions = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  v65 = IsNotConfiguredFromStyle;
  v66 = &type metadata for SearchHasSuggestions;
  v67 = v17;
  v68 = HasSuggestions;
  v19 = type metadata accessor for AndOperationViewInputPredicate();
  type metadata accessor for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>(255);
  v48 = type metadata accessor for StaticIf();
  v20 = type metadata accessor for ModifiedContent();
  v50 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v43 = &v40 - v24;
  v25 = v9;
  outlined init with copy of SearchBoundProperty<AttributedString>(a1, v9, type metadata accessor for SearchFieldConfiguration);
  v59 = a3;
  v60 = a4;
  v26 = v52;
  v61 = v52;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle, protocol conformance descriptor for ResolvedSearchFieldStyle);
  View.viewAlias<A, B>(_:_:)(&type metadata for SearchFieldConfiguration.Control, partial apply for closure #1 in closure #1 in SearchField.body.getter, v58, v45, &type metadata for SearchFieldConfiguration.Control, v46, updated);
  outlined destroy of StateOrBinding<SearchFieldState>(v25, type metadata accessor for ResolvedSearchFieldStyle);
  v54 = a3;
  v55 = a4;
  v56 = v26;
  v57 = a1;
  type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>(0);
  v29 = v28;
  v64[0] = updated;
  v64[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v30 = v49;
  v31 = v42;
  v32 = swift_getWitnessTable(v49, v42, v64);
  v33 = swift_getWitnessTable(MEMORY[0x1E69809A0], v19);
  lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>, MEMORY[0x1E697F380]);
  v34 = v29;
  v35 = v41;
  View.viewAlias<A, B, C>(if:_:source:)(v19, partial apply for closure #2 in closure #1 in SearchField.body.getter, v31, v19, v34, v22, v32, v33);
  (*(v51 + 8))(v35, v31);
  v63[0] = v33;
  v63[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v63[2] = MEMORY[0x1E697E100];
  v36 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v48, v63);
  v62[0] = v32;
  v62[1] = v36;
  swift_getWitnessTable(v30, v20, v62);
  v37 = v43;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v50 + 8);
  v38(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v37, v20);
}

uint64_t type metadata accessor for SearchUnavailableContent.Label(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchUnavailableContent.Label;
  if (!type metadata singleton initialization cache for SearchUnavailableContent.Label)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Environment<Binding<AttributedString>?>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for SearchUnavailableContent.Label(uint64_t a1)
{
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void storeEnumTagSinglePayload for Section(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v18 + 7;
  v21 = ((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v7 == v19)
  {
    v28 = *(v6 + 56);
    v29 = a1;

LABEL_40:
    v28(v29);
    return;
  }

  v30 = &a1[v14 + v15] & ~v15;
  if (v10 == v19)
  {
    v31 = *(v9 + 56);

    v31(v30);
  }

  else
  {
    v29 = ((v30 + v16 + v17) & ~v17);
    if (v13 == v19)
    {
      v28 = *(v12 + 56);

      goto LABEL_40;
    }

    v32 = &v29[v20] & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = 0;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      *v32 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v32 + 8) = a2;
    }
  }
}

uint64_t getEnumTagSinglePayload for Section(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v20 = (a2 - v16 + 255) >> 8;
  if (v19 <= 3)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *&a1[v19];
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    return v16 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v5 + 48);

    return v28(a1, v7);
  }

  else
  {
    v29 = &a1[v17] & ~v13;
    if (v9 == v16)
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }

    else
    {
      v31 = (v29 + v14 + v15) & ~v15;
      if (v12 == v16)
      {
        v32 = *(v11 + 48);

        return v32(v31, v12, v6);
      }

      else
      {
        v33 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v33 >= 0xFFFFFFFF)
        {
          LODWORD(v33) = -1;
        }

        if ((v33 + 1) >= 2)
        {
          return v33;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance SubmitScopeModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in SubmitScopeModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of SubmitScopeModifier(v9, v8);
}

uint64_t sub_18BF03CD4()
{
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t outlined init with copy of SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return a2;
}

uint64_t type metadata completion function for UIKitSearchBarAdaptor(uint64_t a1)
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SearchToolbarItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchToolbarItem;
  if (!type metadata singleton initialization cache for SearchToolbarItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SearchToolbarItem(uint64_t a1)
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AsOptional(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchCustomAccessory(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchCustomAccessory, &type metadata for EnvironmentValues.SearchCustomAccessory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchCustomAccessory, &type metadata for EnvironmentValues.SearchCustomAccessory, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SearchField.body.getter@<X0>(uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = v5[2];
  v8 = v5[3];
  v10 = v5[4];
  v9 = v5[5];
  v11 = type metadata accessor for SearchField(0, v7, v8, a4);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  return closure #1 in SearchField.suggestionsList(_:)(v10, v9, v12, v13, x8_0);
}

uint64_t closure #1 in SearchField.suggestionsList(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v9 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>(0);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(0);
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v26 = type metadata accessor for SearchField(0, a3, a4, v25);
  if (*(a1 + *(v26 + 44)) == 1)
  {
    v27 = v26;
    SearchField.$state.getter(v15);
    KeyPath = swift_getKeyPath();
    v37 = a1;
    v38 = a5;
    v44 = KeyPath;
    v29 = *(v15 + *(v13 + 32) + 1);
    type metadata accessor for WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role>(0);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role>, MEMORY[0x1E6982050]);
    v30 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v44 = *v15;
    v45 = v30;
    v46 = v29;
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(0, &lazy cache variable for type metadata for Binding<SearchSuggestionsPlacement.Role>, &type metadata for SearchSuggestionsPlacement.Role, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v43);

    *v18 = v43;
    SearchField.multiSuggestions(_:)(v40, v27, &v18[*(v39 + 36)]);
    outlined destroy of StateOrBinding<SearchFieldState>(v15, type metadata accessor for Binding<SearchFieldState>);
    SearchField.state.getter();
    LOBYTE(v27) = *v11;
    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v18, v21, type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>);
    v31 = v42;
    v32 = &v21[*(v42 + 36)];
    *v32 = (v27 & 1) == 0;
    *(v32 + 1) = 0;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v21, v24, type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>);
    v33 = v38;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v24, v38, type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>);
    return (*(v41 + 56))(v33, 0, 1, v31);
  }

  else
  {
    v35 = v42;
    v36 = *(v41 + 56);

    return v36(a5, 1, 1, v35);
  }
}

uint64_t getEnumTagSinglePayload for TextInputSuggestions(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t destroy for SearchFieldConfiguration(void *a1, uint64_t a2)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(&v6[v5], v7);
  v8 = a1 + *(a2 + 24);
  v9 = v8[8];
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(a2 + 32)), *(a1 + *(a2 + 32) + 8), *(a1 + *(a2 + 32) + 16));
}

uint64_t sub_18BF047F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance SearchHasSuggestions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedSearchFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle, protocol conformance descriptor for ResolvedSearchFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t type metadata accessor for ToolbarSearchFieldStyle.Implementation(uint64_t a1)
{
  result = type metadata singleton initialization cache for ToolbarSearchFieldStyle.Implementation;
  if (!type metadata singleton initialization cache for ToolbarSearchFieldStyle.Implementation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ToolbarSearchFieldStyle.Implementation(uint64_t a1)
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BF04B7C(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t lazy protocol witness table accessor for type ToolbarSearchFieldStyle.Implementation and conformance ToolbarSearchFieldStyle.Implementation(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchCustomScopeBar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchCustomScopeBar, &type metadata for EnvironmentValues.SearchCustomScopeBar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchCustomScopeBar, &type metadata for EnvironmentValues.SearchCustomScopeBar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>, lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle, &type metadata for ConditionallyBorderedStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, a3, a4, a5, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v9 = type metadata accessor for StaticIf();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConditionallyBorderedStyle, &type metadata for ConditionallyBorderedStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>, lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle, &type metadata for ConditionallyBorderedStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(255);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SupportsAccessibilityButtonBorder>, lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SupportsAccessibilityButtonBorder>, lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>)
  {
    type metadata accessor for _ContentShapeModifier<Rectangle>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FD58], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConditionallyBorderedButton, &unk_1EFF970D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityButtonBorderModifier>, lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier, &type metadata for AccessibilityButtonBorderModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>, ButtonShapeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>, ButtonShapeEffect>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityButtonBorderModifier>, lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier, &type metadata for AccessibilityButtonBorderModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

id static ButtonShapeEffect._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = *a1;
  v7 = a2[3];
  v59 = a2[2];
  v60 = v7;
  v61 = a2[4];
  v62 = *(a2 + 20);
  v8 = a2[1];
  v57 = *a2;
  v58 = v8;
  v9 = v7;
  v10 = DWORD2(v7);
  v11 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *v37 = v9;
  *&v37[8] = v10;
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v51 = v57;
  v52 = v58;
  LOBYTE(v27) = 0;
  outlined init with copy of _ViewInputs(&v57, v37);
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.setter();
  v63[2] = v53;
  v63[3] = v54;
  v63[4] = v55;
  v64 = v56;
  v63[0] = v51;
  v63[1] = v52;
  *&v37[32] = v53;
  *&v37[48] = v54;
  *&v37[64] = v55;
  *&v37[80] = v56;
  *v37 = v51;
  *&v37[16] = v52;
  v13 = outlined init with copy of _ViewInputs(v63, &v27);
  a3(&v24, v13, v37);
  v65[2] = *&v37[32];
  v65[3] = *&v37[48];
  v65[4] = *&v37[64];
  v66 = *&v37[80];
  v65[0] = *v37;
  v65[1] = *&v37[16];
  outlined destroy of _ViewInputs(v65);
  if (v11)
  {
    v14 = v6;
    *v37 = v24;
    *&v37[8] = v25;
    v15 = PreferencesOutputs.subscript.getter();
    v6 = HIDWORD(v15) & 1;
    if ((v15 & 0x100000000) != 0)
    {
      IndirectAttribute2 = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
      v37[0] = 0;
      PreferencesOutputs.subscript.setter();
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      *&v37[32] = v53;
      *&v37[48] = v54;
      *&v37[64] = v55;
      *&v37[80] = v56;
      *v37 = v51;
      *&v37[16] = v52;
      result = outlined destroy of _ViewInputs(v37);
      *a4 = v24;
      *(a4 + 8) = v25;
      return result;
    }

    v14 = v6;
    IndirectAttribute2 = 0;
    LOBYTE(v6) = 1;
  }

  *v37 = v24;
  *&v37[8] = v25;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    v17 = AGGraphCreateIndirectAttribute2();
    v37[0] = 0;
    PreferencesOutputs.subscript.setter();
    v18 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
  v18 = 1;
LABEL_11:
  v42 = v57;
  v43 = v58;
  v44 = v59;
  v19 = _GraphInputs.accessibilityShowButtonShapes.getter();
  v20 = v24;
  v21 = v25;
  v22 = HIDWORD(v25);
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v45 = v57;
  v46 = v58;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *v37 = v19;
    *&v37[4] = v14;
    *&v37[40] = v47;
    *&v37[56] = v48;
    *&v37[72] = v49;
    *&v37[88] = v50;
    *&v37[8] = v45;
    *&v37[24] = v46;
    *&v38 = v20;
    *(&v38 + 1) = __PAIR64__(v22, v21);
    LODWORD(v39) = IndirectAttribute2;
    BYTE4(v39) = v6;
    DWORD2(v39) = v17;
    BYTE12(v39) = v18;
    v40 = result;
    v41 = 2;
    v33 = v38;
    v34 = v39;
    v35 = result;
    v36 = 2;
    v29 = *&v37[32];
    v30 = *&v37[48];
    v31 = *&v37[64];
    v32 = *&v37[80];
    v27 = *v37;
    v28 = *&v37[16];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of _ViewInputs(&v57, v26);
    lazy protocol witness table accessor for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState();

    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ButtonShapeEffect.EffectState(v37);
    if ((v18 & 1) == 0)
    {
      AGGraphSetIndirectDependency();
    }

    if ((v6 & 1) == 0)
    {
      AGGraphSetIndirectDependency();
    }

    v29 = v53;
    v30 = v54;
    v31 = v55;
    LODWORD(v32) = v56;
    v27 = v51;
    v28 = v52;
    result = outlined destroy of _ViewInputs(&v27);
    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 12) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState()
{
  result = lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState;
  if (!lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonShapeEffect.EffectState, &unk_1EFFC41A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState);
  }

  return result;
}

uint64_t initializeWithCopy for ButtonShapeEffect.EffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 117) = *(a2 + 117);
  v4 = *(a2 + 128);
  v5 = *(a2 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);

  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for ButtonShapeEffect.EffectState(uint64_t a1)
{

  v2 = *(a1 + 136);
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car, &type metadata for BorderlessButtonStyle_Car, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonStyle_Car, &type metadata for BorderlessButtonStyle_Car, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase);
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier()
{
  result = lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier;
  if (!lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpacityButtonHighlightModifier, &type metadata for OpacityButtonHighlightModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>, &unk_1EFF971A0, &type metadata for AccessibilityButtonBorderModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder();
    v5[1] = lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for _ContentShapeModifier<Rectangle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v1 = type metadata accessor for _ContentShapeModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder()
{
  result = lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasAccessibilityButtonBorder, &unk_1EFF971A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonBorderModifier, &type metadata for AccessibilityButtonBorderModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>, &type metadata for ShouldRenderAsTemplate, &type metadata for ButtonDefaultRenderingModeModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate();
    v5[1] = &protocol witness table for ButtonDefaultRenderingModeModifier;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>, &unk_1EFF97100, &unk_1EFF970D0);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate();
    v5[1] = lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate()
{
  result = lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate;
  if (!lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsConditionallyBorderedPredicate, &unk_1EFF97100, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier, &type metadata for OpacityButtonHighlightModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier, &type metadata for OpacityButtonHighlightModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void SheetBridge.contingentlyPresent(_:from:animated:)(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v4 + v9, v45);
  LOBYTE(v9) = PresentationState.isDismissingFromSheetBridge.getter();
  outlined destroy of PresentationState(v45);
  if (v9)
  {
    v10 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v10, v45);
    LOBYTE(v10) = PresentationState.isDismissalPreemptable.getter();
    outlined destroy of PresentationState(v45);
    if ((v10 & 1) != 0 && [a2 _willPreemptRunningPresentationTransition])
    {
      v11 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v11, v45);
      v12 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v45);
      if (v12)
      {
        v12[direct field offset for PresentationHostingController.wasPreempted] = 1;
      }

      SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, 0, 1);
    }

    else
    {
      swift_beginAccess();
      PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(a1, a3 & 1);
      swift_endAccess();
    }
  }

  else
  {
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v13, v45);
    v43 = v52;
    *v44 = *v53;
    *&v44[11] = *&v53[11];
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v35 = v45[4];
    v36 = v45[5];
    v37 = v46;
    v38 = v47;
    v31 = v45[0];
    v32 = v45[1];
    v33 = v45[2];
    v34 = v45[3];
    if (v53[26] == 9)
    {

      outlined destroy of SheetPreference(&v31);
      v14 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v14, v45);
      v15 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v45);
      if (v15)
      {
        v16 = direct field offset for SheetBridge.presentationState;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v45);
        *&v47 = v15;
        BYTE8(v47) = a3 & 1;
        v53[26] = 9;
        v17 = v15;
        PresentationState.base.willset(v45);
        outlined assign with take of PresentationState.Base(v45, v4 + v16);
        swift_endAccess();

        return;
      }
    }

    else
    {
      outlined destroy of PresentationState.Base(&v31);
    }

    v18 = [a2 presentedViewController];
    if (v18)
    {
      v19 = v18;
      if ([v18 isBeingDismissed])
      {
        type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = v20;
          v22 = direct field offset for SheetBridge.presentationState;
          swift_beginAccess();
          outlined init with copy of SheetPreference(a1, v45);
          *&v47 = v21;
          BYTE8(v47) = a3 & 1;
          v53[26] = 9;
          v23 = v19;
          PresentationState.base.willset(v45);
          outlined assign with take of PresentationState.Base(v45, v4 + v22);
          swift_endAccess();
          v25 = type metadata accessor for SheetBridge(0, *(v8 + 80), *(v8 + 88), v24);
          PresentationHostingController.configureSecondaryDismissDelegate<A>(_:)(v4, v25, &protocol witness table for SheetBridge<A>);

          return;
        }
      }
    }

    if (*(v4 + direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression) == 1 && (SheetBridge.presenterHasWindow.getter(), (v26 & 1) == 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        MEMORY[0x18D009810](0xD0000000000000A0, 0x800000018CD43B20);
      }

      else
      {
        v30 = direct field offset for SheetBridge.presentationState;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v45);
        BYTE10(v46) = a3 & 1;
        v53[26] = 10;
        PresentationState.base.willset(v45);
        outlined assign with take of PresentationState.Base(v45, v4 + v30);
        swift_endAccess();
      }
    }

    else
    {
      v27 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v27, v45);
      v28 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v45);
      SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, v28, 0);
    }
  }
}

id partial apply for closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = makeHostingController #1 <A>() in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 24), *(v1 + 32));
    v3 = 0;
  }

  *a1 = v4;
  return v3;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetTabViewEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

unint64_t lazy protocol witness table accessor for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetTabViewEnvironmentModifier, &type metadata for ResetTabViewEnvironmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier);
  }

  return result;
}

uint64_t assignWithCopy for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

void type metadata accessor for [HandGestureShortcutPaginationDirection](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContainerRelativeFrameModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout();
  Attribute.init<A>(body:value:flags:update:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout()
{
  result = lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout;
  if (!lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerRelativeFrameModifier.MakeLayout, &unk_1EFF973F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout);
  }

  return result;
}

uint64_t ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(char a1, uint64_t a2, double a3, double a4)
{
  AGGraphGetValue();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  Value = AGGraphGetValue();
  if (*(Value + 24))
  {
    MEMORY[0x1EEE9AC00](Value);
    Attribute.syncMainIfReferences<A>(do:)();
    return v10;
  }

  else
  {
    if (a1)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    return *&v9;
  }
}

uint64_t SceneBridge.publishEvent(event:type:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (static SceneBridge._devNullSceneBridge)
  {
    v7 = static SceneBridge._devNullSceneBridge == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v9 = a1;
    swift_beginAccess();
    v10 = *(v4 + 16);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      a1 = v9;
      if (*(v13 + 16))
      {

        specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
        if (v14)
        {

          PassthroughSubject.send(_:)();

          return 1;
        }

        a1 = v9;
      }
    }

    else
    {
      swift_endAccess();
      a1 = v9;
    }
  }

  SceneBridge.enqueueUnpublishedEvent(_:for:)(a1, a3, a4);
  return 0;
}

uint64_t SceneBridge.enqueueUnpublishedEvent(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_enqueuedEvents;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v8 & 1) != 0))
  {
    swift_endAccess();

    specialized Array.append<A>(contentsOf:)(v9);
    v10 = v17;
  }

  else
  {
    swift_endAccess();
    v10 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(a1, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  outlined init with take of Any(v16, &v10[32 * v12 + 32]);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v15;
  return swift_endAccess();
}

uint64_t SceneBridge.activationConditionsPreferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *a1;
  PreferenceValues.subscript.getter();
  v12 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_activationConditionsPreferenceSeed;
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_activationConditionsPreferenceSeed + 4) == 1)
  {
    v13 = *&v11[*(v9 + 28)];
LABEL_7:
    *v12 = v13;
    *(v12 + 4) = 0;
    outlined init with copy of Predicate<Pack{String}>?(v11, v7, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v15 = *(v5 + 48);
    SceneBridge.setActivationConditions(preferred:)(v7, &v7[v15]);
    outlined destroy of Predicate<Pack{String}>?(&v7[v15], type metadata accessor for Predicate<Pack{String}>?);
    outlined destroy of Predicate<Pack{String}>?(v7, type metadata accessor for Predicate<Pack{String}>?);
    return outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>);
  }

  v13 = *&v11[*(v9 + 28)];
  if (v13 == -1 || v13 != *v12)
  {
    goto LABEL_7;
  }

  return outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>);
}

uint64_t SceneBridge.setActivationConditions(preferred:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Predicate<Pack{String}>();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v50 - v8;
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v58 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  outlined init with copy of Predicate<Pack{String}>?(a1, &v50 - v27, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(a2, &v28[*(v16 + 48)], type metadata accessor for Predicate<Pack{String}>?);
  v57 = v28;
  outlined init with copy of Predicate<Pack{String}>?(v28, v25, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  v29 = *(v16 + 48);
  v30 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge__preferredActivationConditions;
  swift_beginAccess();
  outlined assign with take of Predicate<Pack{String}>?(v25, v30, type metadata accessor for Predicate<Pack{String}>?);
  outlined assign with take of Predicate<Pack{String}>?(&v25[v29], v30 + *(v16 + 48), type metadata accessor for Predicate<Pack{String}>?);
  swift_endAccess();
  v31 = *(v16 + 48);
  outlined init with copy of Predicate<Pack{String}>?(v30, v14, type metadata accessor for Predicate<Pack{String}>?);
  v32 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions;
  outlined init with copy of Predicate<Pack{String}>?(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions, v11, type metadata accessor for Predicate<Pack{String}>?);
  static SceneBridge.merge(predicate:with:)(v14, v11, v22);
  outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v14, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(v30 + *(v16 + 48), v14, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(v32 + *(v16 + 48), v11, type metadata accessor for Predicate<Pack{String}>?);
  static SceneBridge.merge(predicate:with:)(v14, v11, &v22[v31]);
  outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v14, type metadata accessor for Predicate<Pack{String}>?);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = [objc_allocWithZone(MEMORY[0x1E69DCE78]) init];
    v36 = v53;
    outlined init with copy of Predicate<Pack{String}>?(v58, v53, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v37 = *(v16 + 48);
    v39 = v54;
    v38 = v55;
    v40 = *(v54 + 48);
    if (v40(v36, 1, v55) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v36 + v37, type metadata accessor for Predicate<Pack{String}>?);
      outlined destroy of Predicate<Pack{String}>?(v36, type metadata accessor for Predicate<Pack{String}>?);
    }

    else
    {
      v41 = v51;
      (*(v39 + 32))(v51, v36, v38);
      outlined destroy of Predicate<Pack{String}>?(v36 + v37, type metadata accessor for Predicate<Pack{String}>?);
      v42 = v39;
      v43 = specialized SceneBridge.buildActivationConditions(_:)(v41);
      [v35 setPrefersToActivateForTargetContentIdentifierPredicate_];

      v39 = v42;
      (*(v42 + 8))(v41, v38);
    }

    v44 = v56;
    outlined init with copy of Predicate<Pack{String}>?(v58, v56, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v45 = *(v16 + 48);
    if (v40(v44 + v45, 1, v38) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v44 + v45, type metadata accessor for Predicate<Pack{String}>?);
      outlined destroy of Predicate<Pack{String}>?(v44, type metadata accessor for Predicate<Pack{String}>?);
    }

    else
    {
      v46 = v52;
      (*(v39 + 32))(v52, v44 + v45, v38);
      outlined destroy of Predicate<Pack{String}>?(v44, type metadata accessor for Predicate<Pack{String}>?);
      v47 = v39;
      v48 = specialized SceneBridge.buildActivationConditions(_:)(v46);
      [v35 setCanActivateForTargetContentIdentifierPredicate_];

      (*(v47 + 8))(v46, v38);
    }

    [v34 setActivationConditions_];
  }

  outlined destroy of Predicate<Pack{String}>?(v58, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  return outlined destroy of Predicate<Pack{String}>?(v57, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
}