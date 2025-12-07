uint64_t static OnScrollVisibilityGeometryAction._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  v6 = *(a2 + 44);
  v25 = *(a2 + 28);
  v26 = v6;
  v27 = v3;
  v7 = *(a2 + 15);
  v13 = *(a2 + 8);
  v9 = *(a2 + 18);
  v8 = *(a2 + 19);
  v12 = *(a2 + 20);
  _ViewInputs.position.getter();
  swift_beginAccess();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_beginAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder();
  Attribute.init<A>(body:value:flags:update:)();
  v10 = AGGraphSetFlags();
  v15 = v27;
  v16 = v4;
  v17 = v5;
  v18 = v25;
  v19 = v26;
  v20 = v7;
  v21 = v13;
  v22 = v9;
  v23 = v8;
  v24 = v12;
  return a3(v10, &v15);
}

unint64_t lazy protocol witness table accessor for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder()
{
  result = lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder;
  if (!lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder, &unk_1EFFAF508, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder);
  }

  return result;
}

__n128 __swift_memcpy53_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 GridItem.init(_:spacing:alignment:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, __n128 *a7@<X8>)
{
  v7 = a1[1].n128_u8[0];
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u8[0] = v7;
  a7[1].n128_u64[1] = a2;
  a7[2].n128_u8[0] = a3 & 1;
  a7[2].n128_u64[1] = a4;
  a7[3].n128_u64[0] = a5;
  a7[3].n128_u8[8] = a6 & 1;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>)
  {
    type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for HStack<SectionStyleConfiguration.Header>, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header, MEMORY[0x1E69817F0]);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>(255);
    v5[0] = &type metadata for SelectionPlatformItemListFlags;
    v5[1] = v2;
    v5[2] = &protocol witness table for SelectionPlatformItemListFlags;
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
    v3 = type metadata accessor for PlatformItemListGeneratingViewModifier(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    type metadata accessor for SectionStyleModifier<MenuSectionStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>);
    v5[1] = &protocol witness table for PlatformItemListGeneratingViewModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for HStack<SectionStyleConfiguration.Header>, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier()
{
  result = lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier;
  if (!lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnPlatformContainerSelectionModifier, &type metadata for OnPlatformContainerSelectionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier);
  }

  return result;
}

void type metadata accessor for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSelectionModifier>, lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier, &type metadata for OnPlatformContainerSelectionModifier);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnPlatformContainerSelectionModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSelectionModifier>, lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier, &type metadata for OnPlatformContainerSelectionModifier);
    v6 = type metadata accessor for MergePlatformItemsView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>(255);
    type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, v1, v2, v3);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    v4[0] = &protocol witness table for MergePlatformItemsView<A>;
    v4[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>)
  {
    v4 = type metadata accessor for PlatformItemListTransformModifier(0, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>);
    }
  }
}

uint64_t PickerBuilder.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  PickerBuilder.Content.content.getter(a1, v16, v17, v6);
  (*(v8 + 56))(v3, v8);
  (*(v4 + 8))(v6, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v10 + 8);
  v18(v12, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v15, AssociatedTypeWitness);
}

uint64_t PickerBuilder.Content.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  v7 = type metadata accessor for NestedDynamicProperties(0, v6, a2, a3);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v4, v8);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t protocol witness for PickerContent._identifiedView.getter in conformance _TuplePickerContent<A, B>@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TupleView();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t partial apply for closure #1 in _DisabledPickerContent._identifiedView.getter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _DisabledPickerContent(0, *(v4 + 16), *(v4 + 24), a4);
  if (*a1 == 1)
  {
    v7 = *(v4 + *(result + 36) + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80))) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7 & 1;
  return result;
}

uint64_t closure #1 in SectionPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[3] = a2;
  v27 = a1;
  v28 = a5;
  v7 = type metadata accessor for PickerStyleConfiguration(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v29[0] = &type metadata for SectionPickerStyle;
  v29[1] = a3;
  v29[2] = &protocol witness table for SectionPickerStyle;
  v29[3] = a4;
  v11 = type metadata accessor for _PickerValue(0, v29);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  v15 = type metadata accessor for SectionPicker(0, a3, a4, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  SectionPickerStyle.Body.base.getter(a3, a4, v13);
  (*(v8 + 32))(v10, v13, v7);
  outlined init with copy of SubviewsCollection(v27, v29);
  KeyPath = swift_getKeyPath();
  *&v23 = SectionPicker.init(labelsVisibility:configuration:children:)(KeyPath, 0, v10, v29, a3, a4, v18).n128_u64[0];
  swift_getWitnessTable(protocol conformance descriptor for SectionPicker<A>, v15, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v16 + 8);
  v24(v18, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v21, v15);
}

__n128 SectionPicker.init(labelsVisibility:configuration:children:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  v12 = type metadata accessor for SectionPicker(0, a5, a6, a4);
  v13 = *(v12 + 36);
  v15 = type metadata accessor for PickerStyleConfiguration(0, a5, a6, v14);
  (*(*(v15 - 8) + 32))(a7 + v13, a3, v15);
  v16 = a7 + *(v12 + 40);
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  result = *(a4 + 32);
  v19 = *(a4 + 48);
  *(v16 + 32) = result;
  *(v16 + 48) = v19;
  return result;
}

uint64_t initializeWithCopy for SectionPicker(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v12 = *(v9 + 80);
  v13 = (v12 | 7) + 9;
  v15 = ((a2 + v13) & ~(v12 | 7));
  v14 = ((v13 + a1) & ~(v12 | 7));
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = v16 + v12 + 8;
  v19 = v17 + v12 + 8;

  v10(v18 & ~v12, v19 & ~v12, v8);
  v20 = *(v11 + 48) + ((v12 + 16) & ~v12) + 7;
  v21 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v14 + v23;
  v25 = v15 + v23;
  v26 = *(v15 + v23 + 31);
  *(v24 + 31) = v26;
  *(v24 + 39) = *(v15 + v23 + 39);
  v27 = **(v26 - 8);

  v27(v24 + 7, v25 + 7, v26);
  v28 = *(v25 + 47);
  *(v24 + 47) = v28;
  *(v24 + 55) = *(v25 + 55);
  *(v24 + 63) = *(v25 + 63);
  v29 = v28;

  return a1;
}

uint64_t destroy for SectionPicker(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 9) & ~(v6 | 7);

  (*(v5 + 8))((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v8 = *(v5 + 64) + ((v6 + 16) & ~v6) + 7;

  v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1((v9 + 16));
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance LabelsHiddenModifier@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t SectionPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = v5 + *(a1 + 36);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(v7 + *(type metadata accessor for PickerStyleConfiguration(0, v8, v9, a4) + 36));
  outlined init with copy of SubviewsCollection(v5 + *(a1 + 40), &v51);
  PickerContentView.init(selection:items:)(v10, &v51, v57);
  KeyPath = swift_getKeyPath();
  v50 = 0;
  v12 = swift_getKeyPath();
  v49 = 0;
  v13 = swift_getKeyPath();
  v48 = 0;
  *&v58[0] = 0x4038000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  ScaledMetric.init(wrappedValue:)();
  v47 = v52;
  v46 = v54;
  *&v38 = KeyPath;
  BYTE8(v38) = 0;
  *&v39 = v12;
  BYTE8(v39) = 0;
  v40 = v13;
  v41 = 0uLL;
  LOBYTE(v42) = 0;
  *(&v42 + 1) = v51;
  LOBYTE(v43) = v52;
  *(&v43 + 1) = v53;
  LOBYTE(v44) = v54;
  *(&v44 + 1) = v55;
  v45 = v56;
  v15 = type metadata accessor for PickerContentView(0, v8, v9, v14);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v15);
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v38, v15, &type metadata for CheckmarkToggleStyle, WitnessTable);
  v58[4] = v42;
  v58[5] = v43;
  v58[6] = v44;
  v59 = v45;
  v58[0] = v38;
  v58[1] = v39;
  v58[2] = v40;
  v58[3] = v41;
  outlined destroy of CheckmarkToggleStyle(v58);
  type metadata accessor for PickerStyleConfiguration.Label(255, v8, v9, v16);
  v17 = type metadata accessor for Optional();
  v18 = type metadata accessor for Optional();
  v19 = type metadata accessor for StaticIf();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v20 = type metadata accessor for ModifiedContent();
  v21 = MEMORY[0x1E6981E70];
  v22 = type metadata accessor for Section(0, v19, v20, MEMORY[0x1E6981E70]);
  v23 = type metadata accessor for Section(0, v17, v20, v21);
  v24 = lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  v37 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v25 = MEMORY[0x1E6982090];
  v26 = swift_getWitnessTable(MEMORY[0x1E6982090], v17, &v37);
  v36 = v26;
  v35[0] = v24;
  v35[1] = v26;
  v35[2] = swift_getWitnessTable(v25, v18, &v36);
  v27 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v19, v35);
  v34[0] = WitnessTable;
  v34[1] = &protocol witness table for ToggleStyleModifier<A>;
  v28 = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v34);
  v33[0] = v27;
  v33[1] = v28;
  v29 = MEMORY[0x1E6981E60];
  v33[2] = MEMORY[0x1E6981E60];
  swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v22, v33);
  v32[0] = v26;
  v32[1] = v28;
  v32[2] = v29;
  swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v23, v32);
  StaticIf<>.init<A>(in:then:else:)();
  (*(*(v15 - 8) + 8))(v57, v15);
  return (*(*(v20 - 8) + 8))(&v51, v20);
}

__n128 PickerContentView.init(selection:items:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  v6 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v6;
  result = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a3 + 56) = result;
  *(a3 + 72) = v8;
  return result;
}

uint64_t View.toggleStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToggleStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t initializeWithCopy for CheckmarkToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v8, v9, v10, v11, v12);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  v13 = *(a2 + 72);
  LOBYTE(v9) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v13, v9);
  *(a1 + 72) = v13;
  *(a1 + 80) = v9;
  v14 = *(a2 + 88);
  LOBYTE(v9) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v14, v9);
  *(a1 + 88) = v14;
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t initializeWithCopy for PickerContentView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  v6 = *(a2 + 3);
  *(a1 + 48) = v6;
  v7 = v6;
  v8 = **(v6 - 8);

  v8(a1 + 24, a2 + 3, v7);
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = a2[10];
  v11 = v9;

  return a1;
}

uint64_t destroy for CheckmarkToggleStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t closure #1 in SectionPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SectionPicker(0, a3, a4, a4);
  SectionPicker.styledMenuHeader.getter(v6, v7, v8, v9);
  v29[0] = v31[0];
  v29[1] = v31[1];
  v29[2] = v31[2];
  type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, v10);
  v11 = type metadata accessor for Optional();
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for StaticIf();
  v15 = type metadata accessor for PickerContentView(255, a3, a4, v14);
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v16 = type metadata accessor for ModifiedContent();
  v17 = lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  v28 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v18 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v11, &v28);
  v26[0] = v17;
  v26[1] = WitnessTable;
  v26[2] = swift_getWitnessTable(v18, v12, &WitnessTable);
  v19 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v13, v26);
  v25[0] = swift_getWitnessTable("Q%\rb\\R\t", v15);
  v25[1] = &protocol witness table for ToggleStyleModifier<A>;
  v20 = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v25);
  Section<>.init(header:content:)(v29, partial apply for closure #1 in closure #1 in SectionPicker.body.getter, v13, v16, v30);
  v21 = type metadata accessor for Section(0, v13, v16, MEMORY[0x1E6981E70]);
  v24[0] = v19;
  v24[1] = v20;
  v24[2] = MEMORY[0x1E6981E60];
  swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v21, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(*(v21 - 8) + 8);
  v22(v30, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  return v22(v31, v21);
}

uint64_t SectionPicker.styledMenuHeader.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PickerStyleConfiguration.Label(255, *(a1 + 16), *(a1 + 24), a4);
  v4 = type metadata accessor for Optional();
  v5 = type metadata accessor for Optional();
  v6 = lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  v17 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v7 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v4, &v17);
  v16 = WitnessTable;
  v11 = swift_getWitnessTable(v7, v5, &v16);
  StaticIf<>.init(_:then:else:)();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v9 = type metadata accessor for StaticIf();
  v12[0] = v6;
  v12[1] = WitnessTable;
  v12[2] = v11;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v12, v6, WitnessTable, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = v21;
  v19 = v22;
  v20 = v23;
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t closure #1 in SectionPicker.styledMenuHeader.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SectionPicker(0, a2, a3, a4);
  SectionPicker.styledHeader.getter(v6);
  v11 = v12;
  type metadata accessor for PickerStyleConfiguration.Label(255, a2, a3, v7);
  v8 = type metadata accessor for Optional();
  v10 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  swift_getWitnessTable(MEMORY[0x1E6982090], v8, &v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t SectionPicker.styledHeader.getter(uint64_t a1)
{
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)) == 2)
  {
    v11 = 1;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    type metadata accessor for PickerStyleConfiguration.Label(0, v4, v5, v3);
    static ToolbarContentBuilder.buildIf<A>(_:)(&v11, &v12);
    v7 = v12;
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for PickerStyleConfiguration.Label(0, v4, v5, v8);
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    v15 = 0;
    static ToolbarContentBuilder.buildIf<A>(_:)(&v15, &v16);
    v7 = v16;
  }

  v14 = v7;
  type metadata accessor for PickerStyleConfiguration.Label(255, v4, v5, v6);
  v9 = type metadata accessor for Optional();
  v13 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  swift_getWitnessTable(MEMORY[0x1E6982090], v9, &v13);
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t closure #2 in SectionPicker.styledMenuHeader.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (specialized Environment.wrappedValue.getter(*a1, *(a1 + 8)) == 1)
  {
    v6 = type metadata accessor for SectionPicker(0, a2, a3, v5);
    SectionPicker.styledHeader.getter(v6);
    LOBYTE(v21) = v22;
    type metadata accessor for PickerStyleConfiguration.Label(255, a2, a3, v7);
    v8 = type metadata accessor for Optional();
    v16 = &protocol witness table for PickerStyleConfiguration<A>.Label;
    swift_getWitnessTable(MEMORY[0x1E6982090], v8, &v16);
    static ViewBuilder.buildExpression<A>(_:)();
    v22 = v17;
    static ViewBuilder.buildExpression<A>(_:)();
    v21 = v15;
  }

  else
  {
    v21 = 256;
    type metadata accessor for PickerStyleConfiguration.Label(255, a2, a3, v5);
    v9 = type metadata accessor for Optional();
    v20 = &protocol witness table for PickerStyleConfiguration<A>.Label;
    swift_getWitnessTable(MEMORY[0x1E6982090], v9, &v20);
  }

  static ToolbarContentBuilder.buildIf<A>(_:)(&v21, &v22);
  type metadata accessor for PickerStyleConfiguration.Label(255, a2, a3, v10);
  v11 = type metadata accessor for Optional();
  v12 = type metadata accessor for Optional();
  v19 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v13 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v11, &v19);
  swift_getWitnessTable(v13, v12, &WitnessTable);
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t Section<>.init(header:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v13 + 16))(v17, a1, v18, v15);
  a2(v19);
  (*(v13 + 8))(a1, a3);
  return Section.init(header:content:footer:)(v17, v11, v20, a3, a4, MEMORY[0x1E6981E70], a5);
}

uint64_t closure #1 in closure #1 in SectionPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PickerContentView(255, a2, a3, a4);
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = swift_getWitnessTable("Q%\rb\\R\t", v4);
  v7[1] = &protocol witness table for ToggleStyleModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(*(v5 - 8) + 8))(v8, v5);
}

uint64_t destroy for PickerContentView(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));

  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
}

uint64_t closure #2 in SectionPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SectionPicker(0, a3, a4, a4);
  SectionPicker.styledHeader.getter(v6);
  v20 = v22[0];
  type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, v7);
  v8 = type metadata accessor for Optional();
  v10 = type metadata accessor for PickerContentView(255, a3, a4, v9);
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v11 = type metadata accessor for ModifiedContent();
  v19 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v8, &v19);
  v18[0] = swift_getWitnessTable("Q%\rb\\R\t", v10);
  v18[1] = &protocol witness table for ToggleStyleModifier<A>;
  v13 = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v18);
  Section<>.init(header:content:)(&v20, partial apply for closure #1 in closure #2 in SectionPicker.body.getter, v8, v11, v21);
  v14 = type metadata accessor for Section(0, v8, v11, MEMORY[0x1E6981E70]);
  v17[0] = WitnessTable;
  v17[1] = v13;
  v17[2] = MEMORY[0x1E6981E60];
  swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v14, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(*(v14 - 8) + 8);
  v15(v21, v14);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v22, v14);
}

unint64_t lazy protocol witness table accessor for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator()
{
  result = lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator;
  if (!lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SplitViewNavigationIndicator, &unk_1EFFBB220, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t assignWithTake for MenuSectionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Environment<Bool>.Content(v4, v5);
  return a1;
}

double MenuSectionStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v24 = static VerticalAlignment.center.getter();
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  v32[0] = Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v45;
  v12 = v11;
  specialized Environment.wrappedValue.getter(v9, v10, &v57);
  LOBYTE(v10) = v57;
  v13 = swift_allocObject();
  *(v13 + 16) = 2;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0xC000000000000000;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0;
  *(v13 + 137) = v10;
  v14 = 0;
  if (a2)
  {
    *&v45 = a1;
    *(&v45 + 1) = a2;
    LOBYTE(v46) = a3 & 1;
    type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v32);
    if (LOBYTE(v32[0]) != 1)
    {
      v14 = 1;
    }
  }

  KeyPath = swift_getKeyPath();
  outlined copy of Environment<Bool>.Content();
  outlined consume of Environment<Bool>.Content(KeyPath, 0);
  v56 = 1;
  v54 = v14;
  v52 = 0;
  v26 = v24;
  LOBYTE(v27) = 1;
  *(&v27 + 1) = *v55;
  DWORD1(v27) = *&v55[3];
  *(&v27 + 1) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *&v28 = v12;
  BYTE8(v28) = v14;
  *(&v28 + 9) = *v53;
  HIDWORD(v28) = *&v53[3];
  *&v29 = 0;
  *(&v29 + 1) = KeyPath;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = *v51;
  DWORD1(v30) = *&v51[3];
  *(&v30 + 1) = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  v31 = v13;
  v23 = swift_getKeyPath();
  LOBYTE(v32[0]) = 0;
  v22 = swift_getKeyPath();
  v25[0] = 0;
  v21 = swift_getKeyPath();
  v25[88] = 0;
  v20 = v32[0];
  v47 = v28;
  v48 = v29;
  v49 = v30;
  v50 = v13;
  v45 = v24;
  v46 = v27;
  v32[0] = v24;
  v32[1] = 0;
  v33 = 1;
  *&v34[3] = *&v55[3];
  *v34 = *v55;
  v35 = partial apply for closure #1 in View.platformItemIdentifier(_:);
  v36 = v12;
  v37 = v14;
  *&v38[3] = *&v53[3];
  *v38 = *v53;
  v39 = 0;
  v40 = KeyPath;
  v41 = 0;
  *&v42[3] = *&v51[3];
  *v42 = *v51;
  v43 = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  v44 = v13;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(&v26, v25);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(v32);
  v16 = v48;
  *(a4 + 32) = v47;
  *(a4 + 48) = v16;
  *(a4 + 64) = v49;
  v17 = v50;
  result = *&v45;
  v19 = v46;
  *a4 = v45;
  *(a4 + 16) = v19;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 80) = v17;
  *(a4 + 104) = 1;
  *(a4 + 112) = v23;
  *(a4 + 120) = v20;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = v22;
  *(a4 + 152) = 0;
  *(a4 + 153) = 0;
  *(a4 + 160) = v21;
  *(a4 + 168) = 0;
  return result;
}

uint64_t sub_18BFFE9B8()
{

  return swift_deallocObject();
}

uint64_t sub_18BFFE9F0()
{
  v1 = *(v0 + 48);
  if (v1 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationVie()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInp,  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp,  type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred,  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp,  lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
  }

  else
  {
    *a1 = *a2;
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v5, v6);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 65);
  v11 = *(a2 + 64);
  outlined copy of Environment<KeyboardShortcut?>.Content(v7, v8, v9, v11, v10);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 65) = v10;
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  return a1;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>);
    }
  }
}

uint64_t destroy for OnPlatformContainerSelectionModifier(uint64_t a1)
{
  if (*a1)
  {
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 65));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle, &unk_1EFFDC3C8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ToggleStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  }

  return result;
}

uint64_t sub_18BFFF0A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v6[0] = &type metadata for ToggleStyleConfiguration.Label;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedToggleStyle, &type metadata for ResolvedToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedToggleStyle, &type metadata for ResolvedToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedToggleStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t type metadata completion function for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultListNavigationLinkStyle, &unk_1EFFDC3C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>(255);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(255);
    type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>(255);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for KeyboardShortcutBindingBehavior);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>)
  {
    v4[0] = &unk_1EFFA4A18;
    v4[1] = &type metadata for ToggleStyleConfiguration.Label;
    v4[2] = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
    v4[3] = &protocol witness table for ToggleStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(255);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, MEMORY[0x1E69809A0]);
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedToggleStyleBody, &unk_1EFFA4A18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedToggleStyleBody, &unk_1EFFA4A18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for PlaceholderLargeContentView;
    v4[1] = &type metadata for ToggleStyleConfiguration.Label;
    v4[2] = &protocol witness table for PlaceholderLargeContentView;
    v4[3] = &protocol witness table for ToggleStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>(255);
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle, &unk_1EFFDC3A8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle()
{
  result = lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle;
  if (!lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabeledNavigationLinkButtonStyle, &unk_1EFFDC3A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(&lazy protocol witness table cache variable for type AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label> and conformance AccessibilityToggleModifier<A>.RepresentationModifier<A1>, type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>, protocol conformance descriptor for AccessibilityToggleModifier<A>.RepresentationModifier<A1>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, MEMORY[0x1E69809A0]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle, &unk_1EFFDC3C8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, MEMORY[0x1E69809A0]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, MEMORY[0x1E6980688]);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedToggleStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();

  return MEMORY[0x1EEDE2378](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle, &unk_1EFFDC3A8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for DefaultListNavigationLinkStyle.ListLink(uint64_t a1)
{
  result = type metadata singleton initialization cache for DefaultListNavigationLinkStyle.ListLink;
  if (!type metadata singleton initialization cache for DefaultListNavigationLinkStyle.ListLink)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DefaultListNavigationLinkStyle.ListLink(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedToggleStyleBody(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for VStack<DefaultListNavigationLinkStyle.ListLink>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<DefaultListNavigationLinkStyle.ListLink>)
  {
    type metadata accessor for DefaultListNavigationLinkStyle.ListLink(255);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle.ListLink and conformance DefaultListNavigationLinkStyle.ListLink, type metadata accessor for DefaultListNavigationLinkStyle.ListLink, protocol conformance descriptor for DefaultListNavigationLinkStyle.ListLink);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<DefaultListNavigationLinkStyle.ListLink>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>()
{
  result = lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>;
  if (!lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    result = swift_getWitnessTable(protocol conformance descriptor for Toggle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, &unk_1EFFA4A98, &type metadata for ArchivesInteractiveControlsEffect, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, &unk_1EFFA4A98, &type metadata for ArchivesInteractiveControlsEffect, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody();
    v5[1] = &protocol witness table for ArchivesInteractiveControlsEffect;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedToggleStyleBody.ArchiveBody, &unk_1EFFA4A98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody);
  }

  return result;
}

void type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultToggleStyle>, lazy protocol witness table accessor for type DefaultToggleStyle and conformance DefaultToggleStyle, &type metadata for DefaultToggleStyle, type metadata accessor for ToggleStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>);
  }

  return result;
}

uint64_t type metadata completion function for NavigationLinkLabel(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToggleStyle and conformance DefaultToggleStyle()
{
  result = lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle;
  if (!lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultToggleStyle, &type metadata for DefaultToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for NavigationLinkLabel);
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToggleStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ToggleStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18C000CC0(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for NavigationLinkLabel);
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationLinkLabel<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>> and conformance <> ModifiedContent<A(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for ToggleStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<_DisclosureIndicator, SquareLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<PlatformFallbackToggleStyle>, lazy protocol witness table accessor for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle, &type metadata for PlatformFallbackToggleStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<ButtonToggleStyle>, lazy protocol witness table accessor for type ButtonToggleStyle and conformance ButtonToggleStyle, &type metadata for ButtonToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ToggleStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonToggleStyle and conformance ButtonToggleStyle()
{
  result = lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle;
  if (!lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonToggleStyle, &type metadata for ButtonToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultListToggleStyle>, lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle, &type metadata for DefaultListToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle;
  if (!lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultListToggleStyle, &type metadata for DefaultListToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultListToggleStyle>, lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle, &type metadata for DefaultListToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<ToolbarToggleStyle>, lazy protocol witness table accessor for type ToolbarToggleStyle and conformance ToolbarToggleStyle, &type metadata for ToolbarToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarToggleStyle and conformance ToolbarToggleStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle;
  if (!lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarToggleStyle, &type metadata for ToolbarToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<AccessibilityToggleStyle>, lazy protocol witness table accessor for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle, &type metadata for AccessibilityToggleStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityToggleStyle, &type metadata for AccessibilityToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformFallbackToggleStyle, &type metadata for PlatformFallbackToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle);
  }

  return result;
}

uint64_t sub_18C0017D4(uint64_t *a1)
{
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(255, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for TupleView();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v1);
  v2 = type metadata accessor for HStack();
  v3 = MEMORY[0x1E69817F8];

  return swift_getWitnessTable(v3, v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<SidebarListStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860]);
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for Button<ToggleStyleConfiguration.Label>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Button<ToggleStyleConfiguration.Label>)
  {
    v4 = type metadata accessor for Button(0, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Button<ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for [SwiftUIAnySortComparator](255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Font?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI4FontVSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI5ColorVSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AccessibilityTableContext?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_7(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _sSiSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    _s7SwiftUI5ColorVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    type metadata accessor for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void FetchRequest.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FetchRequest.results.getter(a1, a2, a3, a4);
  outlined consume of FetchedResults<A>?<A>(v9, v10);
  v8 = FetchRequest.controller.getter(a1, v5, v6, v7);
  FetchController.results.getter();
}

void *FetchRequest.results.getter(uint64_t a1, void x1_0, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FetchedResults(255, *(a1 + 16), a2, a3);
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.wrappedValue.getter();
}

void *FetchController.fetchIfNeeded()()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v2 = *(v0 + v1);
  if (v2 != 1)
  {
    return v2;
  }

  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  if (result)
  {
    v13[0] = 0;
    if ([result performFetch_])
    {
      v4 = v13[0];
    }

    else
    {
      v5 = v13[0];
      v6 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v7 = static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_18CD63400;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &dword_18BD4A000, v8, "Failed to perform fetch request: %@", 35, 2, v9);
    }

    *(v0 + v1) = 0;
    return v2;
  }

  __break(1u);
  return result;
}

id partial apply for implicit closure #3 in implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;

  return FetchedResults.init(_:)(v3, a2);
}

id FetchedResults.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x80));
  if (!v4 || (result = [v4 fetchedObjects]) == 0)
  {
    result = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  }

  *a2 = result;
  a2[1] = a1;
  return result;
}

void destroy for PlatformBarUpdater.UpdateContext(uint64_t a1)
{
  v2 = *(a1 + 8);
}

id protocol witness for Collection.endIndex.getter in conformance FetchedResults<A>@<X0>(uint64_t *a1@<X8>)
{
  result = FetchedResults.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PaletteSelectionEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaletteSelectionEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_18C002DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FetchedResults<A>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FetchedResults<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_18C00300C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<TextPlatformItemListFlags>, &type metadata for TextPlatformItemListFlags, &protocol witness table for TextPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>()
{
  result = lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>;
  if (!lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for LabelGroup<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for LabelGroup);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelGroup<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate();
    v5[1] = lazy protocol witness table accessor for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate()
{
  result = lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate;
  if (!lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuStyleContextViewInputPredicate, &type metadata for MenuStyleContextViewInputPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle();
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle()
{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuItemSupportsAttributedTitle, &type metadata for MenuItemSupportsAttributedTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuItemSupportsAttributedTitle, &type metadata for MenuItemSupportsAttributedTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuItemSupportsAttributedTitle, &type metadata for MenuItemSupportsAttributedTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuItemSupportsAttributedTitle, &type metadata for MenuItemSupportsAttributedTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuItemSupportsAttributedTitle, &type metadata for MenuItemSupportsAttributedTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance MenuItemSupportsAttributedTitle(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AllowSectionPickerLabels(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t closure #1 in static PlatformItemListGeneratingViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for PlatformItemListGeneratingViewModifier(0, v11);
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SectionStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t NavigationLinkButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance DefaultListNavigationLinkStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>(0);
  v6 = a2 + *(v5 + 44);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v6, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v7 = type metadata accessor for DefaultListNavigationLinkStyle.ListLink(0);
  v8 = v6 + *(v7 + 20);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v9 = v6 + *(v7 + 24);
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>)
  {
    type metadata accessor for DefaultListNavigationLinkStyle.ListLink(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>);
    }
  }
}

_BYTE *initializeWithCopy for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v45 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v45;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = *(a3 + 20);
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = *(v34 + 2);
  v38 = *(v34 + 3);
  v39 = v34[32];
  outlined copy of Environment<EdgeInsets>.Content(*v34, v36, v37, v38, v39);
  *v33 = v35;
  *(v33 + 1) = v36;
  *(v33 + 2) = v37;
  *(v33 + 3) = v38;
  v33[32] = v39;
  v40 = *(a3 + 24);
  v41 = &a1[v40];
  v42 = &a2[v40];
  v43 = *v42;
  LOBYTE(v35) = v42[8];
  outlined copy of Environment<Bool>.Content();
  *v41 = v43;
  v41[8] = v35;
  return a1;
}

uint64_t destroy for DefaultListNavigationLinkStyle.ListLink(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = a1 + *(a2 + 20);
  outlined consume of Environment<EdgeInsets>.Content(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = a1 + *(a2 + 24);
  v10 = *v9;
  v11 = *(v9 + 8);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

uint64_t EnvironmentValues._navigationLinkIndicatorVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();

    result = v3;
    if (v3)
    {
      return result;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    PropertyList.subscript.getter();
    result = v3;
    if (v3)
    {
      return result;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t DefaultListNavigationLinkStyle.ListLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for DefaultListNavigationLinkStyle.ListLink(0);
  v8 = v1 + *(v7 + 20);
  v37 = *(v8 + 32);
  v9 = *(v8 + 16);
  v35 = *v8;
  v36 = v9;
  v10 = specialized Environment.wrappedValue.getter();
  specialized Environment.wrappedValue.getter();
  v12 = v11;
  v13 = static Edge.Set.all.getter();
  v33 = 0;
  v32 = 0;
  v14 = static Edge.Set.vertical.getter();
  specialized Environment.wrappedValue.getter();
  EdgeInsets.negatedInsets.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v34 = 0;
  if (specialized Environment.wrappedValue.getter(*(v1 + *(v7 + 24)), *(v1 + *(v7 + 24) + 8)))
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.5;
  }

  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(v1, &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v24);
  v26 = swift_getKeyPath();
  v33 = 0;
  v27 = swift_getKeyPath();
  v32 = 0;
  result = swift_getKeyPath();
  v29 = v33;
  v30 = v32;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  *(a1 + 72) = v16;
  *(a1 + 80) = v18;
  *(a1 + 88) = v20;
  *(a1 + 96) = v22;
  *(a1 + 104) = 0;
  *(a1 + 112) = v23;
  *(a1 + 120) = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a1 + 128) = v25;
  *(a1 + 136) = 1;
  *(a1 + 144) = v26;
  *(a1 + 152) = v29;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = v27;
  *(a1 + 184) = 0;
  *(a1 + 185) = v30;
  *(a1 + 192) = result;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_18C0040A0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues._navigationLinkIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NavigationLinkLabel.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(255, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for TupleView();
  swift_getWitnessTable(MEMORY[0x1E6981F48], v4);
  v5 = type metadata accessor for HStack();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  v12 = *(a1 + 24);
  v16 = v3;
  v17 = v12;
  v18 = v1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E69817F8], v5);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, v5);
}

uint64_t getEnumTagSinglePayload for ExternalGestureActionModifier(unsigned __int8 *a1, unsigned int a2)
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

void type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>, &unk_1F001CE90, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV()
{
  result = lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV;
  if (!lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicator_PhoneTV, &unk_1F001CE90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>(255);
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>);
    }
  }
}

void type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>)
  {
    type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(255);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>)
  {
    type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>(255);
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>, &unk_1F001CF18, &protocol witness table for DisclosureIndicatorShapeStyle, MEMORY[0x1E6980480]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>)
  {
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>);
    }
  }
}

double static PlatformButtonActionModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v26 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 40);
  v23 = *(a2 + 24);
  v24 = v8;
  v25[0] = *(a2 + 56);
  *(v25 + 12) = *(a2 + 68);
  v18 = *a2;
  v19 = v7;
  v20 = *(a2 + 24);
  v21 = *(a2 + 40);
  v22[0] = *(a2 + 56);
  *(v22 + 12) = *(a2 + 68);
  a3(&v15);
  v18 = *a2;
  v19 = v7;
  v20 = *(a2 + 24);
  v21 = *(a2 + 40);
  v22[0] = *(a2 + 56);
  *(v22 + 12) = *(a2 + 68);
  v17 = 64;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    KeyPath = swift_getKeyPath();
    LODWORD(v18) = v6;
    *(&v18 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for (())?(0);
    type metadata accessor for Map<PlatformButtonActionModifier, (())?>(0);
    lazy protocol witness table accessor for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>();

    v10 = Attribute.init<A>(body:value:flags:update:)();

    v18 = v26;
    v19 = v7;
    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 12) = *(v25 + 12);
    v11 = _ViewInputs.isEnabled.getter();
    if (one-time initialization token for springLoadingBehavior != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    *&v18 = __PAIR64__(v11, v10);
    DWORD2(v18) = v12;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent();
    v13 = Attribute.init<A>(body:value:flags:update:)();
    v18 = v26;
    v19 = v7;
    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 12) = *(v25 + 12);
    LODWORD(v17) = v13;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform();
    LODWORD(v17) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  *a4 = v15;
  result = v16;
  a4[1] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>);
    v5[2] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor()
{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicatorDifferentiatesWithoutColor, &type metadata for DisclosureIndicatorDifferentiatesWithoutColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicatorDifferentiatesWithoutColor, &type metadata for DisclosureIndicatorDifferentiatesWithoutColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicatorDifferentiatesWithoutColor, &type metadata for DisclosureIndicatorDifferentiatesWithoutColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicatorDifferentiatesWithoutColor, &type metadata for DisclosureIndicatorDifferentiatesWithoutColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisclosureIndicatorDifferentiatesWithoutColor, &type metadata for DisclosureIndicatorDifferentiatesWithoutColor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>)
  {
    v7[5] = v0;
    v7[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v6 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
    v7[0] = v5;
    v7[1] = MEMORY[0x1E6981710];
    v7[2] = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>();
    v6[0] = MEMORY[0x1E6981710];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>)
  {
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>, &unk_1F001CF18, &protocol witness table for DisclosureIndicatorShapeStyle, MEMORY[0x1E6980480]);
    result = swift_getWitnessTable(MEMORY[0x1E6980490], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisclosureIndicatorDifferentiatesWithoutColor(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ToggleStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SquareLayout(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = a2[3];
  v16[2] = a2[2];
  v16[3] = v12;
  v16[4] = a2[4];
  v17 = *(a2 + 20);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v18 = v11;
  v14 = lazy protocol witness table accessor for type SquareLayout and conformance SquareLayout();
  return (*(v14 + 80))(&v18, v16, a3, a4, a5, v14);
}

unint64_t lazy protocol witness table accessor for type SquareLayout and conformance SquareLayout()
{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SquareLayout, &unk_1EFFC6440, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SquareLayout, &unk_1EFFC6440, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SquareLayout, &unk_1EFFC6440, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SquareLayout, &unk_1EFFC6440, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

void type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for LabelStyleWritingModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel()
{
  result = lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel;
  if (!lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedFallbackLabel, &unk_1F0003AA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonContainerIsBorderedInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance FetchedResults<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = FetchedResults.subscript.read(v6, *a2, a3);
  v7[4] = v9;
  v7[5] = v8;
  return protocol witness for Collection.subscript.read in conformance FetchedResults<A>;
}

uint64_t FetchedResults.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = [*v2 objectAtIndex_];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v5;
}

void protocol witness for Collection.subscript.read in conformance FetchedResults<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelIconPlatformItemModifier@<X0>(void *(*a3)(void *__return_ptr)@<X2>, void *a5@<X8>)
{
  a3(a5);
  lazy protocol witness table accessor for type LabelIconPlatformItemModifier and conformance LabelIconPlatformItemModifier();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance FetchedResults<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FetchedResults<A>, a2, a3);
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>)
  {
    type metadata accessor for AccessibilityAttachment?(255, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v1 = type metadata accessor for Focus();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAttachment.DeferredTransform, &type metadata for AccessibilityAttachment.DeferredTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform);
  }

  return result;
}

uint64_t implicit closure #3 in static AccessibilityViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListTransform and conformance PlatformItemListTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t sub_18C005E08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for AsyncImage.Inner(255, *a1, a1[1], a4);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ValueActionModifier2<URL?>(255);
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AsyncImage<A>.Inner, v4);
  v9 = MEMORY[0x1E69805D0];
  v14[0] = WitnessTable;
  v14[1] = MEMORY[0x1E69805D0];
  v10 = MEMORY[0x1E697E858];
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v14);
  v13[1] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type _ValueActionModifier2<URL?> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<URL?>, MEMORY[0x1E697FDE0]);
  v12[0] = swift_getWitnessTable(v10, v6, v13);
  v12[1] = v9;
  return swift_getWitnessTable(v10, v7, v12);
}

void type metadata accessor for _ValueActionModifier2<URL?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ValueActionModifier2<URL?>)
  {
    type metadata accessor for State<LoadingState>(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    v1 = type metadata accessor for _ValueActionModifier2();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ValueActionModifier2<URL?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTransform and conformance PlatformItemListTransform()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform;
  if (!lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTransform, &unk_1EFFC6CC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for State<LoadingState>(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

uint64_t sub_18C006158(void *a1)
{
  v1 = type metadata accessor for _UnaryViewAdaptor();
  v2 = MEMORY[0x1E697F380];

  return swift_getWitnessTable(v2, v1);
}

uint64_t implicit closure #1 in static TooltipModifier._makeView(modifier:inputs:body:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems;
  if (!lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TooltipModifier.TransformPlatformItems, &unk_1EFFB5740, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems);
  }

  return result;
}

uint64_t *closure #1 in View.platformItemIdentifier(_:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    for (i = 0; i != v4; ++i)
    {
      if (i >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v9 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
      v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i;
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
    }

    *v7 = v3;
  }

  return result;
}

uint64_t type metadata completion function for PickerItemView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(255);
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>);
    }
  }
}

void type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(255);
    lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>();
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>(255);
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for PickerItemView<Subview>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PickerItemView<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for PickerItemView);
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

uint64_t AsyncImage.init(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v27 = a3;
  v28 = a4;
  v14 = type metadata accessor for LoadingState(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v19(a7, 1, 1, v18);
  v21 = type metadata accessor for AsyncImage(0, a5, a6, v20);
  v22 = a7 + v21[12];
  *v17 = 0;
  v19(v17 + *(v15 + 28), 1, 1, v18);
  *(v17 + *(v15 + 32)) = 0x8000000000000000;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *(v22 + *(v23 + 28)) = 0;
  outlined init with take of TaskConfig(v17, v22, type metadata accessor for LoadingState);
  result = outlined assign with take of URL?(a1, a7);
  *(a7 + v21[9]) = a8;
  *(a7 + v21[10]) = a2;
  v25 = (a7 + v21[11]);
  v26 = v28;
  *v25 = v27;
  v25[1] = v26;
  return result;
}

unint64_t lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection()
{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F500], MEMORY[0x1E697F4E8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F4F8], MEMORY[0x1E697F4E8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

uint64_t outlined init with take of TaskConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID()
{
  result = lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID;
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981A48], MEMORY[0x1E6981A40], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

char *initializeWithCopy for AsyncImage(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v24 = *(v7 + 48);
  if (v24(a2, 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[11];
  v11 = a3[12];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = &a1[v11];
  v16 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  v17 = type metadata accessor for LoadingState(0);
  v18 = *(v17 + 20);

  if (v24(&v16[v18], 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v15[v18], &v16[v18], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&v15[v18], &v16[v18], v6);
    (*(v7 + 56))(&v15[v18], 0, 1, v6);
  }

  v20 = *(v17 + 24);
  v21 = *&v16[v20];
  outlined copy of AsyncImagePhase(v21);
  *&v15[v20] = v21;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *&v15[*(v22 + 28)] = *&v16[*(v22 + 28)];

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void outlined copy of AsyncImagePhase(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
    v1 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double destroy for AsyncImage(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v7 = a1 + a2[12];

  v8 = type metadata accessor for LoadingState(0);
  v9 = *(v8 + 20);
  if (!v6(v7 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  outlined consume of AsyncImagePhase(*(v7 + *(v8 + 24)));
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>, MEMORY[0x1E697FD30]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PickerItemView<Subview> and conformance PickerItemView<A>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void outlined consume of AsyncImagePhase(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t lazy protocol witness table accessor for type PickerItemView<Subview> and conformance PickerItemView<A>()
{
  result = lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>;
  if (!lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>)
  {
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PickerItemView<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for PickerItemView);
    result = swift_getWitnessTable(protocol conformance descriptor for PickerItemView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, a2, a3, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

char *initializeWithCopy for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(a3 + 24);
  v12 = *&a2[v11];
  outlined copy of AsyncImagePhase(v12);
  *&a1[v11] = v12;
  return a1;
}

uint64_t lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void destroy for LoadingState(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&a1[v4], 1, v5))
  {
    (*(v6 + 8))(&a1[v4], v5);
  }

  v7 = *&a1[*(a2 + 24)];

  outlined consume of AsyncImagePhase(v7);
}

void *sub_18C007924(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C007A0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

char *assignWithTake for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = *&a1[v13];
  *&a1[v13] = *&a2[v13];
  outlined consume of AsyncImagePhase(v14);
  return a1;
}

uint64_t PickerContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SubviewsCollection(v2 + 24, v14);
  (*(*(a1 - 8) + 16))(v12, v2, a1);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 80) = v12[3];
  *(v5 + 96) = v8;
  v9 = v12[0];
  v10 = v12[1];
  *(v5 + 16) = v6;
  *(v5 + 32) = v9;
  *(v5 + 112) = v13;
  *(v5 + 48) = v10;
  *(v5 + 64) = v7;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>(0);
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  result = ForEach<>.init(_:content:)();
  *(a2 + 104) = closure #1 in View.collapsingInlinePickerSections();
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_18C007E84()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t AsyncImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 - 8);
  v48 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LoadingState(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = type metadata accessor for AsyncImage.Inner(255, v11, v12, v13);
  v47 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ValueActionModifier2<URL?>(255);
  v50 = type metadata accessor for ModifiedContent();
  v51 = type metadata accessor for ModifiedContent();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v44 - v17;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v18 = *&v10[*(v8 + 32)];
  outlined copy of AsyncImagePhase(v18);
  outlined destroy of LoadingState(v10, type metadata accessor for LoadingState);
  v19 = (v3 + *(a1 + 44));
  v20 = *v19;
  v21 = v19[1];
  v61 = v18;
  v62 = v20;
  v63 = v21;
  v23 = implicit closure #1 in AsyncImage.body.getter(v3, v11, v12, v22);
  v25 = v24;
  v27 = implicit closure #3 in AsyncImage.body.getter(v3, v11, v12, v26);
  v57 = v23;
  *&v58 = v25;
  *(&v58 + 1) = v27;
  *&v59 = v28;

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AsyncImage<A>.Inner, v14);
  MEMORY[0x18D00A570](&v64, &v57, v14, MEMORY[0x1E69805D8], WitnessTable);

  outlined consume of AsyncImagePhase(v61);

  v57 = v64;
  v58 = v65;
  v59 = v66;
  v60 = v67;
  v30 = v45;
  (*(v5 + 16))(v45, v3, a1);
  v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v11;
  *(v32 + 24) = v12;
  (*(v5 + 32))(v32 + v31, v30, a1);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v33 = MEMORY[0x1E69805D0];
  v56[0] = WitnessTable;
  v56[1] = MEMORY[0x1E69805D0];
  v34 = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable(MEMORY[0x1E697E858], v47, v56);
  lazy protocol witness table accessor for type URL? and conformance <A> A?();
  v36 = v46;
  View.onChange<A>(of:initial:_:)();

  v37 = v59;
  v38 = v60;
  outlined consume of AsyncImagePhase(v57);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v37, *(&v37 + 1));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v38, *(&v38 + 1));
  v39 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type _ValueActionModifier2<URL?> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<URL?>, MEMORY[0x1E697FDE0]);
  v55[0] = v35;
  v55[1] = v39;
  v54[0] = swift_getWitnessTable(v34, v50, v55);
  v54[1] = v33;
  v40 = v51;
  swift_getWitnessTable(v34, v51, v54);
  v41 = v49;
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = *(v52 + 8);
  v42(v36, v40);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v41, v40);
}

unint64_t lazy protocol witness table accessor for type Subview and conformance Subview()
{
  result = lazy protocol witness table cache variable for type Subview and conformance Subview;
  if (!lazy protocol witness table cache variable for type Subview and conformance Subview)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981A68], MEMORY[0x1E6981A60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Subview and conformance Subview);
  }

  return result;
}

uint64_t outlined destroy of LoadingState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*implicit closure #1 in AsyncImage.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncImage(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in AsyncImage.body.getter;
}

__n128 closure #1 in PickerContentView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PickerContentView(0, a3, a4, a4);
  v11 = PickerContentView.isItemSelected(_:)(a1, v10);
  *&v26 = *(a1 + 96);
  LOBYTE(v39) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v12 = v33;
  *a5 = v11;
  *(a5 + 8) = v12;
  outlined init with copy of Subview(a1, a5 + 16);
  *&v26 = *(a1 + 96);
  LOBYTE(v39) = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v33 & 1) == 0;
  *(a5 + 120) = KeyPath;
  *(a5 + 128) = partial apply for closure #1 in View.hoverEffectDisabled(_:);
  *(a5 + 136) = v14;
  v39 = *(a1 + 96);
  v33 = 0uLL;
  BYTE8(v34) = 0;
  *&v34 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();

  v15 = v26;
  v16 = v27;
  v17 = BYTE8(v27);
  *(a5 + 144) = swift_getKeyPath();
  *(a5 + 152) = v15;
  *(a5 + 168) = v16;
  *(a5 + 176) = v17;

  *(a5 + 184) = v15;
  *(a5 + 200) = v16;
  *(a5 + 208) = v17;
  v18 = swift_getKeyPath();
  (*(*(v10 - 8) + 16))(&v33, a2, v10);
  outlined init with copy of Subview(a1, &v26);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = v36;
  *(v19 + 64) = v35;
  *(v19 + 80) = v20;
  *(v19 + 96) = v37;
  *(v19 + 112) = v38;
  v21 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v21;
  v22 = v29;
  *(v19 + 152) = v28;
  v23 = v26;
  *(v19 + 136) = v27;
  *(v19 + 120) = v23;
  result = v30;
  v25 = v31;
  *(v19 + 216) = v32;
  *(v19 + 200) = v25;
  *(v19 + 184) = result;
  *(v19 + 168) = v22;
  *(a5 + 216) = v18;
  *(a5 + 224) = partial apply for closure #2 in closure #1 in PickerContentView.body.getter;
  *(a5 + 232) = v19;
  return result;
}

uint64_t sub_18C008938@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

void *sub_18C0089A8@<X0>(_WORD *a2@<X8>)
{
  result = EnvironmentValues.symbolVariants.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C008A24()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return swift_deallocObject();
}

uint64_t (*implicit closure #3 in AsyncImage.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncImage(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return partial apply for implicit closure #4 in implicit closure #3 in AsyncImage.body.getter;
}

uint64_t PickerContentView.isItemSelected(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding();
  v2 = type metadata accessor for Array();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

  swift_getWitnessTable(MEMORY[0x1E69E6328], v2);
  v3 = Sequence.compactMap<A>(_:)();

  return v3;
}

unint64_t *initializeBufferWithCopyOfBuffer for AsyncImage.Inner(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  outlined copy of AsyncImagePhase(*a2);
  v6 = a2[1];
  v5 = a2[2];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v5;

  return a1;
}

double destroy for AsyncImage.Inner(unint64_t *a1)
{
  outlined consume of AsyncImagePhase(*a1);

  return result;
}

uint64_t closure #1 in PickerContentView.isItemSelected(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v18[1] = *(a1 + 96);

  TraitValues.tag<A>(for:)(a2, a2, a3);

  type metadata accessor for Binding();
  v12 = Binding.selecting<A>(_:)();
  v14 = v13;
  v16 = v15;
  result = (*(v9 + 8))(v11, v8);
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v16 & 1;
  return result;
}

uint64_t TraitValues.tag<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  ViewTraitCollection.tag<A>(for:)();
}

uint64_t AsyncImage.Inner.body.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = type metadata accessor for _UnaryViewAdaptor();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = v1[1];
  v13 = *v1;
  outlined copy of AsyncImagePhase(v13);
  v9(&v13);
  outlined consume of AsyncImagePhase(v13);
  _UnaryViewAdaptor.init(_:)();
  swift_getWitnessTable(MEMORY[0x1E697F380], v2);
  static ViewBuilder.buildExpression<A>(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v10)(v8, v2);
}

void AsyncImagePhase.image.getter()
{
  if (!(*v0 >> 62))
  {
  }
}

uint64_t initializeWithCopy for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = v6 + 9 + a2;

  v5((v6 + 9 + a1) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t sub_18C0092B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for Toggle(255, *a1, v4, a4);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for _ConditionalContent();
  v13[0] = swift_getWitnessTable(protocol conformance descriptor for Toggle<A>, v5);
  v13[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v9 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v13);
  v12[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  v11[0] = v4;
  v11[1] = swift_getWitnessTable(v9, v7, v12);
  return swift_getWitnessTable(MEMORY[0x1E697F968], v8, v11);
}

uint64_t destroy for PickerItemView(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 9) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t assignWithCopy for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 9 + a1) & ~*(v6 + 80), (*(v6 + 80) + 9 + a2) & ~*(v6 + 80));
  return a1;
}

void *PickerItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v91 = a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Toggle(0, v4, v5, a2);
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v86 = (&v74 - v7);
  v8 = type metadata accessor for ModifiedContent();
  v88 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v74 - v13;
  type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v92 = v8;
  v14 = type metadata accessor for ModifiedContent();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v74 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  v90 = type metadata accessor for _ConditionalContent();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v28 = &v74 - v27;
  if (*(v3 + 8) == 1)
  {
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    v94[0] = swift_getWitnessTable(protocol conformance descriptor for Toggle<A>, v6);
    v94[1] = &protocol witness table for AccessibilityAttachmentModifier;
    v29 = v4;
    v30 = MEMORY[0x1E697E858];
    v31 = v92;
    v93[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v92, v94);
    v93[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    WitnessTable = swift_getWitnessTable(v30, v14, v93);
    static ViewBuilder.buildEither<A, B>(first:)(v23, v29, v14, v5, WitnessTable);
    v33 = *(v20 + 8);
    v33(v23, v29);
    v33(v26, v29);
    v34 = v6;
    v35 = v31;
LABEL_10:
    v97[0] = swift_getWitnessTable(protocol conformance descriptor for Toggle<A>, v34);
    v97[1] = &protocol witness table for AccessibilityAttachmentModifier;
    v70 = MEMORY[0x1E697E858];
    v96[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v35, v97);
    v96[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    v71 = swift_getWitnessTable(v70, v14, v96);
    v95[0] = v5;
    v95[1] = v71;
    v72 = v90;
    swift_getWitnessTable(MEMORY[0x1E697F968], v90, v95);
    static ViewBuilder.buildExpression<A>(_:)();
    return (*(v89 + 8))(v28, v72);
  }

  else
  {
    v75 = v14;
    v76 = &v74 - v27;
    v101[0] = *v3;
    v36 = v101[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    type metadata accessor for [Binding<Bool>](0);
    v39 = v38;
    v40 = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A], type metadata accessor for [Binding<Bool>], MEMORY[0x1E69E6338]);

    v41 = v86;
    v77 = v4;
    v78 = v5;
    Toggle.init<A>(sources:isOn:label:)(v101, KeyPath, partial apply for closure #1 in PickerItemView.body.getter, (&v74 - 6), v4, v39, v5, v40, v86);
    v42 = swift_getWitnessTable(protocol conformance descriptor for Toggle<A>, v6);
    v43 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v44 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v45 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v73 = v44;
    v46 = v85;
    v74 = v42;
    View.accessibilityValue<A>(_:description:)(v45, 0, 0, 0, 0, v6, MEMORY[0x1E6980000], v42, v85, v43, v73, v45);
    v47 = *(v87 + 8);
    v87 = v6;
    v47(v41, v6);
    v48 = v84;
    v49 = v92;
    ModifiedContent<>.accessibilityRemoveTraits(_:)(v92, v84);
    v88 = *(v88 + 8);
    result = (v88)(v46, v49);
    v51 = (v36 + 48);
    v52 = -*(v36 + 16);
    v53 = -1;
    v54 = MEMORY[0x1E69E6370];
    v55 = 4;
    while (1)
    {
      if (v52 + v53 == -1)
      {
        v55 = 0;
LABEL_9:
        v101[0] = v55;
        v59 = v81;
        v35 = v92;
        ModifiedContent<>.accessibilityAddTraits(_:)(v101, v92);
        v60 = v48;
        v61 = v88;
        (v88)(v60, v35);
        v99[0] = v74;
        v99[1] = &protocol witness table for AccessibilityAttachmentModifier;
        v62 = MEMORY[0x1E697E858];
        v63 = swift_getWitnessTable(MEMORY[0x1E697E858], v35, v99);
        v64 = v79;
        v65 = View.transformPlatformItemList<A>(_:_:)(&type metadata for SelectionPlatformItemListFlags, closure #3 in PickerItemView.body.getter, 0, v35, &type metadata for SelectionPlatformItemListFlags, v63, &protocol witness table for SelectionPlatformItemListFlags);
        v61(v59, v35, v65);
        v98[0] = v63;
        v98[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
        v14 = v75;
        v66 = swift_getWitnessTable(v62, v75, v98);
        v67 = v80;
        static ViewBuilder.buildExpression<A>(_:)();
        v68 = *(v83 + 8);
        v68(v64, v14);
        v69 = v82;
        static ViewBuilder.buildExpression<A>(_:)();
        v28 = v76;
        v5 = v78;
        static ViewBuilder.buildEither<A, B>(second:)(v69, v77, v14, v78, v66);
        v68(v69, v14);
        v68(v67, v14);
        v34 = v87;
        goto LABEL_10;
      }

      if (++v53 >= *(v36 + 16))
      {
        break;
      }

      v56 = v51 + 24;
      v57 = *v51;
      v58 = *(v51 - 1);
      v101[0] = *(v51 - 2);
      v101[1] = v58;
      v102 = v57;
      _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, v54, MEMORY[0x1E6981948]);
      result = MEMORY[0x18D00ACC0](&v100);
      v51 = v56;
      if (v100 == 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _DisclosureIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  AccessibilityProperties.init()();
  v14 = 0x400000004;
  v15 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v13);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x128uLL);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CD63400;

  LocalizedStringKey.init(stringLiteral:)();
  *(v7 + 32) = Text.init(_:tableName:bundle:comment:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = v9 & 1;
  *(v7 + 56) = v10;

  swift_beginAccess();
  *(v6 + 40) = v7;
  *(v6 + 48) = 3;

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_18C00A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D006560](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t initializeWithCopy for DisclosureIndicator_PhoneTV(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

void type metadata accessor for [Binding<Bool>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Binding<Bool>])
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Binding<Bool>]);
    }
  }
}

uint64_t Toggle.init<A>(sources:isOn:label:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v26 = a8;
  v27 = a7;
  v25 = a5;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v30 = a9;
  v29 = *(*(a8 + 8) + 8);
  v12 = *(v29 + 8);
  v13 = type metadata accessor for LazySequence();
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for LazyMapSequence();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  MEMORY[0x18D00CB50](a6, v12, v17);
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = a2;

  swift_getWitnessTable(MEMORY[0x1E69E6A68], v13);
  LazySequenceProtocol.map<A>(_:)();

  (*(v28 + 8))(v15, v13);
  v34 = v29;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6CD0], v16, &v34);
  Toggle.init<A>(toggledOn:label:)(v19, v31, v25, v16, v22, WitnessTable, v30);

  return (*(*(a6 - 8) + 8))(v33, a6);
}

uint64_t sub_18C00A614()
{

  return swift_deallocObject();
}

uint64_t closure #1 in PickerItemView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PickerItemView(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double protocol witness for View.body.getter in conformance DisclosureIndicator_PhoneTV@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 25);
  v19 = *(v1 + 24);
  closure #1 in DisclosureIndicator_PhoneTV.body.getter(v3, v4, v20);
  specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEF64726177726F66);
  *&v14 = v6;

  closure #2 in DisclosureIndicator_PhoneTV.chevron.getter(v7, &v14 + 8);

  v8 = v18;
  *&v21[8] = v14;
  *&v21[24] = v15;
  LOBYTE(v22) = v16;
  *(&v22 + 1) = v17;
  v9 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v9;
  v10 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v10;
  result = *v21;
  v12 = *&v21[16];
  v13 = v22;
  *(a1 + 64) = *v21;
  *(a1 + 80) = v12;
  *(a1 + 112) = v8;
  *(a1 + 96) = v13;
  *(a1 + 120) = v5;
  return result;
}

__n128 closure #1 in DisclosureIndicator_PhoneTV.body.getter@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEF64726177726F66);
  *&v10[0] = v6;

  closure #2 in DisclosureIndicator_PhoneTV.chevron.getter(v7, v10 + 8);

  if (specialized Environment.wrappedValue.getter(a1, a2 & 1))
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
  }

  else
  {
    static SymbolVariants.none.getter();
  }

  type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>(0);
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>();
  View.symbolVariant(_:)();

  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980010], MEMORY[0x1E6980000], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980008], MEMORY[0x1E6980000], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FFF8], MEMORY[0x1E6980000], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

uint64_t closure #2 in DisclosureIndicator_PhoneTV.chevron.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();

  static Font.Weight.semibold.getter();
  v5 = static Font.system(_:design:weight:)();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t View.accessibilityValue<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a8;
  v24[2] = a9;
  v25 = a6;
  v14 = a4;
  v24[1] = a10;
  v18 = type metadata accessor for Optional();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v24 - v20;
  v22 = *(a7 - 8);
  (*(v22 + 16))(v24 - v20, a1, a7, v19);
  (*(v22 + 56))(v21, 0, 1, a7);
  outlined copy of Text?(a2, a3, v14, a5);
  AccessibilityValueStorage.init<A>(_:description:)();
  v29 = v27;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v28, v25, v26);
  return outlined destroy of AccessibilityValueStorage(v27);
}

uint64_t partial apply for closure #1 in View.accessibilityValue(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);

  return outlined init with copy of AccessibilityValueStorage(v3, a1 + 64);
}

void DisclosureIndicatorShapeStyle._apply(to:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 48);

    EnvironmentValues.backgroundProminence.getter();

    static BackgroundProminence.increased.getter();
    if (static BackgroundProminence.== infix(_:_:)())
    {
      type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
      if (v2)
      {

        PropertyList.Tracker.value<A>(_:for:)();

        if (v3 != 1 || (type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]), lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(), , PropertyList.Tracker.value<A>(_:for:)(), , (v3 & 0x1000000) == 0))
        {
LABEL_14:
          static Color.white.getter();
          goto LABEL_15;
        }
      }

      else
      {
        PropertyList.subscript.getter();
        if ((v3 & 1) == 0)
        {
          goto LABEL_14;
        }

        type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();
        PropertyList.subscript.getter();
        if ((v3 & 0x1000000) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      static Color.primary.getter();
LABEL_15:
      Color._apply(to:)();

      return;
    }

    TintShapeStyle._apply(to:)();
  }

  else
  {
    static Color.tertiary.getter();
    Color._apply(to:)();
  }
}

double protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance SquareLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  static _ProposedSize.unspecified.getter();
  LayoutProxy.size(in:)();
  if (result <= v4)
  {
    return v4;
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityRemoveTraits(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  AccessibilityTraitSet.init(traits:)();
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityTraits(_:), a1, a2);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t protocol witness for UnaryLayout.placement(of:in:) in conformance SquareLayout()
{
  static _ProposedSize.unspecified.getter();
  static UnitPoint.center.getter();
  PlacementContext.size.getter();
  return _Placement.init(proposedSize:aligning:in:)();
}

uint64_t *assignWithCopy for Toggle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 17) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 24);
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v25 = *v13;
      v26 = *(v13 + 8);
      v27 = *(v13 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v26, v27);
      *v12 = v25;
      *(v12 + 8) = v26;
      *(v12 + 16) = v27;
      v28 = *(v13 + 24);
      *(v12 + 24) = v28;
      v29 = *(v13 + 40);
      *(v12 + 32) = *(v13 + 32);
      *(v12 + 40) = v29;
      v30 = v28;

      return a1;
    }

LABEL_7:
    v31 = *v13;
    v32 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v32;
    *v12 = v31;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_7;
  }

  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v16, v17);
  v18 = *v12;
  v19 = *(v12 + 8);
  v20 = *(v12 + 16);
  *v12 = v15;
  *(v12 + 8) = v16;
  *(v12 + 16) = v17;
  outlined consume of Environment<AppIntentExecutor?>.Content(v18, v19, v20);
  v21 = *(v13 + 24);
  v22 = *(v12 + 24);
  *(v12 + 24) = v21;
  v23 = v21;

  v24 = *(v13 + 40);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 40) = v24;

  return a1;
}

uint64_t Toggle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v20 = *(a1 + 16);
  v21 = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  v4 = *(a1 + 24);
  *&v35 = &type metadata for ToggleStyleConfiguration.Label;
  *(&v35 + 1) = v20;
  *&v36 = v21;
  *(&v36 + 1) = v4;
  type metadata accessor for StaticSourceWriter(255, &v35);
  v5 = type metadata accessor for ModifiedContent();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v12 = *v2;
  v11 = v2[1];
  v13 = *(v2 + 16);

  *&v27 = v12;
  *(&v27 + 1) = v11;
  LOBYTE(v28) = v13;
  v14 = (v2 + *(a1 + 40));
  v15 = v14[1];
  v33[0] = *v14;
  v33[1] = v15;
  v33[2] = v14[2];
  outlined init with copy of AppIntentAction?(v33, &v35);
  ToggleStyleConfiguration.init(toggleState:appIntentAction:)(&v27, v33, v34);
  v29 = v34[2];
  v30 = v34[3];
  v31 = v34[4];
  v32 = v34[5];
  v27 = v34[0];
  v28 = v34[1];
  v16 = v20;
  v24[2] = v20;
  v24[3] = v4;
  v25 = v2;
  outlined init with copy of ToggleStyleConfiguration(v34, &v35);
  v17 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for ToggleStyleConfiguration.Label, partial apply for closure #1 in Toggle.body.getter, v24, &type metadata for ResolvedToggleStyle, &type metadata for ToggleStyleConfiguration.Label, v16, v17);
  outlined destroy of ToggleStyleConfiguration(v34);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v35 = v27;
  v36 = v28;
  outlined destroy of ResolvedToggleStyle(&v35);
  v26[0] = v17;
  v26[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v22 + 8);
  v18(v7, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v10, v5);
}

uint64_t outlined init with copy of AppIntentAction?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_4(0, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for UIListSeparatorConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 16))(a4, a2, v7);
  }

  v13 = Strong;
  UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(a1, a2, v12, v10);

  return (*(v8 + 32))(a4, v10, v7);
}

void ToggleStyleConfiguration.init(toggleState:appIntentAction:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[3];
  v22 = a2[4];
  v23 = *a2;
  v20 = a2[5];
  v21 = a2[2];
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type ToggleStateBool and conformance ToggleStateBool();

  v24 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v26 = v7;
  v27 = v8;
  v28 = v9;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  v11 = v10;

  MEMORY[0x18D00ACC0](&v25, v11);

  v12 = v25;
  v13 = a2[3];
  if (v13)
  {
    v14 = v23;
    v19 = v9;
    v15 = v25;
    outlined copy of Environment<AppIntentExecutor?>.Content(v23, v5, v21 & 1);
    v16 = v6;
    v17 = v20;

    outlined destroy of AppIntentAction?(a2, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction);
    v12 = v15;
    v9 = v19;
    v13 = v21 & 1;
    v18 = v22;
  }

  else
  {
    v14 = 0;
    v5 = 0;
    v6 = 0;
    v18 = 0;
    v17 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v24;
  *(a3 + 16) = v9 == 0;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 41) = v12 == 2;
  *(a3 + 48) = v14;
  *(a3 + 56) = v5;
  *(a3 + 64) = v13;
  *(a3 + 72) = v6;
  *(a3 + 80) = v18;
  *(a3 + 88) = v17;
}

void UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x328);
  v11 = *(*((*MEMORY[0x1E69E7D40] & *v5) + 0x338) + 8);
  v134 = type metadata accessor for ShadowRowCollection(0, v10, *(v11 + 8), a3);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v125 - v12;
  v13 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v141 = *(v13 - 8);
  v142 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v125 - v20;
  v145 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v125 - v23;
  v25 = type metadata accessor for ShadowListDataSource(0, v10, v11, v24);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v125 - v27;
  v29 = type metadata accessor for UIListSeparatorConfiguration();
  v30 = *(*(v29 - 8) + 16);
  v148 = a4;
  v30(a4, a2, v29);
  v31 = *((*v9 & *v5) + 0x88);
  swift_beginAccess();
  v32 = *(v26 + 16);
  v129 = v31;
  v128 = v26 + 16;
  v127 = v32;
  v32(v28, &v5[v31], v25);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v25);
  v34 = ListCoreDataSource.separatorConfiguration(forRowAt:)(a1, v25, WitnessTable);
  v137 = v35;
  v37 = v36;
  v39 = v38;
  v40 = *(v26 + 8);
  v130 = v28;
  v125 = v25;
  v131 = v26 + 8;
  v126 = v40;
  v40(v28, v25);
  v147 = a1;
  v41 = IndexPath.row.getter();
  v45 = MEMORY[0x1E69DC250];
  if (!v41 || (v46 = v5, v47 = v34, v48 = v144, UICollectionViewListCoordinator.listAppearance.getter(v41, v42, v43, v44), v49 = *v45, v50 = v143, v51 = v146, v52 = v37, v53 = v145, (*(v143 + 104))(v146, v49, v145), v54 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)(), v55 = *(v50 + 8), v56 = v51, v45 = MEMORY[0x1E69DC250], v55(v56, v53), v57 = v48, v34 = v47, v5 = v46, v58 = v53, v37 = v52, v55(v57, v58), (v54 & 1) != 0) && (v60 = &v46[*((*MEMORY[0x1E69E7D40] & *v46) + 0x150)], (v60[8] & 1) == 0) && (v59.n128_u64[0] = *v60, *v60 > 0.0))
  {
    v61 = v141;
    v62 = **(&unk_1E7238190 + v34);
    v63 = v136;
    v64 = v142;
    (*(v141 + 104))(v136, v62, v142);
    (*(v61 + 32))(v135, v63, v64);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  }

  v65 = v140;
  v66 = v141;
  v67 = v142;
  (*(v141 + 104))(v140, **(&unk_1E7238190 + v37), v142, v59);
  (*(v66 + 32))(v139, v65, v67);
  UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  if (v39)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

    UIColor.init(_:)(v68);
    UIListSeparatorConfiguration.color.setter();
  }

  v69 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v70 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v69, 0);
  v138 = v39;
  if ((v71 & 1) == 0)
  {
    goto LABEL_15;
  }

  v74 = v144;
  UICollectionViewListCoordinator.listAppearance.getter(v70, v71, v72, v73);
  v75 = *v45;
  v76 = v143;
  v78 = v145;
  v77 = v146;
  (*(v143 + 104))(v146, v75, v145);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260], MEMORY[0x1E69DC268]);
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();
  v80 = *(v76 + 8);
  v80(v77, v78);
  v80(v74, v78);
  if ((v79 & 1) == 0)
  {
    goto LABEL_25;
  }

  v81 = IndexPath.row.getter();
  v82 = v130;
  v83 = v125;
  v127(v130, &v5[v129], v125);
  v84 = IndexPath.section.getter();
  v85 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v83);
  v86 = v132;
  ListDiffable.rowIDs(forSectionAtOffset:)(v84, v83, v85);
  v126(v82, v83);
  v87 = v134;
  v88 = ShadowRowCollection.count.getter(v134);
  (*(v133 + 8))(v86, v87);
  if (__OFSUB__(v88, 1))
  {
    __break(1u);
    return;
  }

  if (v81 < v88 - 1)
  {
LABEL_25:
    v89 = UICollectionViewListCoordinatorBase.collectionView.getter();
    if (!v89 || (v90 = v89, v91 = [v89 traitCollection], v90, v92 = objc_msgSend(v91, sel_userInterfaceIdiom), v91, v92 != 6))
    {
      v93 = static HorizontalAlignment.leadingText.getter();
      v70 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v93, 0);
      if ((v94 & 1) == 0)
      {
LABEL_15:
        v95 = v70;
        v96 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
        *(v97 + 8) = v95;
        v98 = v96(v149, 0);
        v99 = v144;
        UICollectionViewListCoordinator.listAppearance.getter(v98, v100, v101, v102);
        v103 = v143;
        v104 = *(v143 + 104);
        v106 = v145;
        v105 = v146;
        v104(v146, *MEMORY[0x1E69DC240], v145);
        v107 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
        v108 = *(v103 + 8);
        v108(v105, v106);
        v109 = (v108)(v99, v106);
        if (v107 & 1) != 0 || (v113 = v144, UICollectionViewListCoordinator.listAppearance.getter(v109, v110, v111, v112), v115 = v145, v114 = v146, v104(v146, *MEMORY[0x1E69DC248], v145), v116 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)(), v108(v114, v115), v108(v113, v115), (v116))
        {
          if (!IndexPath.row.getter())
          {
            v117 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
            *(v118 + 8) = v95;
            v117(v149, 0);
          }
        }
      }
    }
  }

  v119 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v120 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v119, 1);
  if ((v121 & 1) == 0)
  {
    v122 = v120;
    v123 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
    *(v124 + 24) = v122;
    v123(v149, 0);
  }
}

uint64_t ListCoreDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v14 - v9, a1, a2, v6);
  v12 = (*(a3 + 232))(v10, v11, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

unint64_t lazy protocol witness table accessor for type ToggleStateBool and conformance ToggleStateBool()
{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStateBool, &type metadata for ToggleStateBool, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStateBool, &type metadata for ToggleStateBool, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToggleStateBool, &type metadata for ToggleStateBool, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

uint64_t ShadowListDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v41 = a1;
  v42 = v3;
  v5 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v35 - v8;
  v37 = *(v4 - 8);
  v9 = v37;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v14 = v36;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  (*(v7 + 16))(&v35 - v19, v41, AssociatedTypeWitness, v18);
  v21 = v39;
  *&v20[*(TupleTypeMetadata2 + 48)] = v40;
  v22 = *(v9 + 16);
  v23 = v12;
  v22(v12, v21, v4);
  (*(v14 + 16))(v16, v20, TupleTypeMetadata2);
  v24 = *&v16[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v4, v5, v25);
  v27 = v38;
  v28 = ShadowListUpdateRecorder.initialIndex(_:)(v38, v16, v24, updated);
  v29 = *(v7 + 8);
  v30 = v35;
  v29(v16, v35);
  v31 = (*(v42 + 232))(v27, v28, v4);
  v42 = v32;
  LODWORD(v41) = v33;
  v29(v27, v30);
  (*(v37 + 8))(v23, v4);
  (*(v36 + 8))(v20, TupleTypeMetadata2);
  return v31;
}

uint64_t CollectionViewListDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2)
{
  v11 = ListSectionInfo.separatorVisitorOptions(forRowAt:)(*&a1);
  v5 = 0x3FFFFFFFCuLL;
  v6 = 0uLL;
  LOBYTE(v7) = 0;
  *(&v7 + 1) = 0;
  v8[0] = 0;
  *&v8[8] = xmmword_18CD6BBA0;
  v9 = 0uLL;
  *&v8[24] = 0;
  LOBYTE(v10) = v11._0.rawValue & 1;
  *(&v10 + 1) = v11._0.rawValue;
  specialized ListSectionInfo.visitRow<A>(index:visitor:)(v11._1._0, v11._1._1, &v5);
  v2 = specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8[0], *&v8[8], *&v8[16], *&v8[24], v9, *(&v9 + 1));
  v4[4] = *&v8[16];
  v4[5] = v9;
  v4[6] = v10;
  v4[0] = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = *v8;
  outlined destroy of ListRowSeparatorVisitor(v4);
  return v2;
}

Swift::tuple_SwiftUI_ListRowSeparatorVisitor_Options_tuple_Int_Int __swiftcall ListSectionInfo.separatorVisitorOptions(forRowAt:)(Swift::tuple_Int_Int forRowAt)
{
  if (forRowAt._0 < 0)
  {
    goto LABEL_24;
  }

  v3 = forRowAt._0;
  v4 = *(v2 + 64);
  if (*(v4 + 16) <= forRowAt._0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (forRowAt._1 != 0x8000000000000000)
    {
LABEL_29:
      __break(1u);
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = *(v4 + 152 * forRowAt._0 + 136);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v5 + 56 * v6;
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_26;
  }

  v12 = *(v5 + 80);
  if (v11 < v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v12 != v11 && v12 == forRowAt._1)
  {
    forRowAt._0 = 1;
    v1 = forRowAt._1;
    v15 = v12 < v11;
    if (v12 == v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v1 = forRowAt._1 - 1;
    if (__OFSUB__(forRowAt._1, 1))
    {
      goto LABEL_30;
    }

    if (v1 >= v11 || v1 < v12)
    {
      goto LABEL_29;
    }

    forRowAt._0 = 0;
    v15 = v12 < v11;
    if (v12 == v11)
    {
LABEL_16:
      forRowAt._1 = v3;
      goto LABEL_31;
    }
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  if (v11 - 1 == forRowAt._1)
  {
    forRowAt._0 |= 2uLL;
  }

  forRowAt._1 = v3;
LABEL_31:
  result._0 = forRowAt._0;
  result._1._0 = forRowAt._1;
  result._1._1 = v1;
  return result;
}

unint64_t specialized ListSectionInfo.visitRow<A>(index:visitor:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v3 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = outlined init with copy of SectionAccumulator.Item(v4 + 152 * result + 32, v13);
  if (__OFADD__(v18, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v18 + a2;
  if (!v15)
  {
    outlined init with copy of _Benchmark(&v14, v10);
    goto LABEL_8;
  }

  if (*(v15 + 16) >= 2uLL)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v15 + 80, v10);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v11);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v11, v10);
LABEL_8:
    v6 = v16;
    v7 = v17;

    v9 = MEMORY[0x18D00ABE0](v8);
    *&v11[0] = v6;
    *(&v11[0] + 1) = v7;
    MEMORY[0x1EEE9AC00](v9);
    _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

    static Update.end()();
    __swift_destroy_boxed_opaque_existential_1(v10);
    return outlined destroy of SectionAccumulator.Item(v13);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for ToggleStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 20);
  v6 = a2[9];

  if (v6)
  {
    v7 = a2[6];
    v8 = a2[7];
    v9 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    v10 = a2[10];
    v11 = a2[11];
    *(a1 + 72) = v6;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    v12 = v6;
  }

  else
  {
    v13 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v13;
    *(a1 + 80) = *(a2 + 5);
  }

  return a1;
}

uint64_t specialized closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)@<X0>(void *a2@<X1>, _BYTE *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:list:transform:to:)();
  *a6 = result & 1;
  return result;
}

{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:list:transform:to:)();
  *a6 = result & 1;
  return result;
}

uint64_t closure #1 in Toggle.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Toggle(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 1;
  if (*a1 >= v5)
  {
    return v6;
  }

  v9 = *(a2 + 48);
  while (1)
  {
    v14 = a1[3];
    v15 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v35);
    v31 = a1[9];
    v16 = v9;

    v17 = _ViewList_SublistSubgraphStorage.retain()();

    v36 = v17;
    v37 = v15;
    v38 = v14;
    v39 = v4;
    v40 = v5;
    v41 = v9;
    if (!*(a3 + 96))
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v10 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      v13 = a3[3];
      *a3 = v31;
      a3[1] = v32;
      a3[2] = v33 | 0x8000000000000000;
      a3[3] = v34;
      outlined consume of ListRowSeparatorVisitor.Neighbor?(v10, v11, v12, v13);
      *(a3 + 96) = 1;
      goto LABEL_4;
    }

    if (*(a3 + 96) != 1)
    {
      break;
    }

    if (a3[13])
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v18 = *a3;
      v19 = a3[1];
      v20 = a3[2];
      v21 = a3[3];
      *a3 = v31;
      a3[1] = v32;
      a3[2] = v33;
      a3[3] = v34;
      outlined consume of ListRowSeparatorVisitor.Neighbor?(v18, v19, v20, v21);
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    *(a3 + 32) = v31;
    a3[5] = v32;
    *(a3 + 48) = v33;
    a3[7] = v34;

    *(a3 + 96) = 2;
    if ((a3[13] & 2) != 0)
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      goto LABEL_13;
    }

LABEL_4:
    ++v4;
    outlined destroy of _ViewList_View(v35);
    if (v5 == v4)
    {
      return 1;
    }
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v22 = v31;
  v23 = v32;
  v25 = v34;
  v24 = v33 | 0x8000000000000000;
LABEL_13:
  v26 = a3[8];
  v27 = a3[9];
  v28 = a3[10];
  v29 = a3[11];
  a3[8] = v22;
  a3[9] = v23;
  a3[10] = v24;
  a3[11] = v25;
  outlined consume of ListRowSeparatorVisitor.Neighbor?(v26, v27, v28, v29);
  outlined destroy of _ViewList_View(v35);
  return 0;
}

uint64_t partial apply for specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, __n128 a2)
{
  return specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(a1, *(v2 + 16), a2);
}

uint64_t initializeWithCopy for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

double outlined consume of ListRowSeparatorVisitor.Neighbor?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 2 != 0xFFFFFFFF || a3 >= 4)
  {
    return outlined consume of ListRowSeparatorVisitor.Neighbor(result, a2, a3, a4);
  }

  return v5;
}

uint64_t specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7, unint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a6 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v18 = a8;
    v17 = a7;
    v16 = a5;
  }

  if (a1 >> 2 != 0xFFFFFFFF || a3 >= 4)
  {
    if (a3 | a4)
    {
      v19 = a3;
    }

    else
    {
      v19 = v16;
    }

    if (a1 | a2)
    {
      v20 = a1;
    }

    else
    {
      v20 = v16;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  if (a9 >> 2 != 0xFFFFFFFF || a11 >= 4)
  {
    if ((a11 & 0x8000000000000000) != 0)
    {
      if (!v17 && !v18)
      {
      }
    }

    else if (a11 | a12)
    {
    }
  }

  return v16;
}

void closure #2 in closure #1 in PickerContentView.body.getter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (*(a2 + 8) == 1)
  {
    LOBYTE(v10) = BYTE1(*a2);
  }

  else
  {
    outlined copy of Environment<Bool>.Content();
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v24);
      _os_log_impl(&dword_18BD4A000, v12, v11, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x18D0110E0](v14, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v9, 0);

    LOBYTE(v9) = v26;
    v10 = BYTE1(v26);
  }

  if ((v10 & 0xFE) != 4)
  {
    v15 = type metadata accessor for PickerContentView(0, a4, a5, a4);
    v16 = PickerContentView.isItemSelected(_:)(a3, v15);
    v17 = (v16 + 48);
    v18 = -*(v16 + 16);
    v19 = -1;
    v20 = MEMORY[0x1E69E6370];
    while (1)
    {
      if (v18 + v19 == -1)
      {

        return;
      }

      if (++v19 >= *(v16 + 16))
      {
        break;
      }

      v21 = v17 + 24;
      v22 = *v17;
      v23 = *(v17 - 1);
      v24[0] = *(v17 - 2);
      v24[1] = v23;
      v25 = v22;
      _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, v20, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v26);
      v17 = v21;
      if (v26 == 1)
      {

        *a1 = v9;
        a1[1] = v10;
        return;
      }
    }

    __break(1u);
  }
}

double destroy for ListRowSeparatorVisitor(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v2 >> 2 != 0xFFFFFFFF || v3 >= 4)
  {
    outlined consume of ListRowSeparatorVisitor.Neighbor(v2, a1[1], v3, a1[3]);
  }

  v6 = a1[8];
  v7 = a1[10];
  if (v6 >> 2 != 0xFFFFFFFF || v7 >= 4)
  {
    v9 = a1[9];
    v10 = a1[11];

    return outlined consume of ListRowSeparatorVisitor.Neighbor(v6, v9, v7, v10);
  }

  return result;
}

double outlined consume of ListRowSeparatorVisitor.Neighbor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityAttachment.Key@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of AccessibilityAttachment.Tree(&static AccessibilityAttachment.Key.defaultValue, v2);
}

void *explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(uint64_t a1, char a2)
{
  result = UICollectionViewListCoordinatorBase.collectionView.getter();
  if (result)
  {
    v5 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [v5 cellForItemAtIndexPath_];

    if (!v7)
    {
      return 0;
    }

    type metadata accessor for AnyListCollectionViewCell();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
LABEL_6:

      return 0;
    }

    v9 = v8;
    v7 = v7;
    v10 = [v9 contentView];
    [v10 frame];
    v12 = v11;
    v14 = v13;

    *&v15 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v9) + 0x68))(a1, v12, v14));
    if (v16)
    {

      goto LABEL_6;
    }

    v17 = *&v15;
    if (a2)
    {
      [v9 bounds];
      Width = CGRectGetWidth(v40);
      v19 = [v9 contentView];

      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = v27;
      MinX = CGRectGetMinX(v41);

      v29 = Width - (MinX + v17);
    }

    else
    {
      v30 = [v9 contentView];

      [v30 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v42.origin.x = v32;
      v42.origin.y = v34;
      v42.size.width = v36;
      v42.size.height = v38;
      v39 = CGRectGetMinX(v42);

      v29 = v39 + v17;
    }

    return *&v29;
  }

  return result;
}

char *initializeWithCopy for AccessibilityAttachment.Tree(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[296];
  if (v4 >= 2)
  {
    v4 = *__src + 2;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    __dst[296] = 1;

    return __dst;
  }

  if (!v4)
  {
    v5 = *(__src + 1);
    *__dst = *__src;
    *(__dst + 1) = v5;
    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);
    __dst[32] = __src[32];
    *(__dst + 40) = *(__src + 40);
    __dst[56] = __src[56];
    v6 = *(__src + 11);

    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(__src + 5);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v7;
        *(__dst + 6) = *(__src + 6);
LABEL_15:
        *(__dst + 14) = *(__src + 14);
        __dst[120] = __src[120];
        v11 = *(__src + 30);
        if (v11 == 1)
        {
          v12 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v12;
          *(__dst + 16) = *(__src + 16);
          __dst[272] = __src[272];
          v13 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v13;
          v14 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v14;
          v15 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v15;
        }

        else
        {
          *(__dst + 16) = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 18) = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 153) = *(__src + 153);
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          v16 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v16;
          *(__dst + 12) = *(__src + 12);
          *(__dst + 104) = *(__src + 104);
          *(__dst + 216) = *(__src + 216);
          __dst[232] = __src[232];
          *(__dst + 30) = v11;
          *(__dst + 248) = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          __dst[272] = __src[272];
        }

        v17 = *(__src + 35);
        v18 = *(__src + 36);
        *(__dst + 35) = v17;
        *(__dst + 36) = v18;
        __dst[296] = 0;

        v19 = v18;
        return __dst;
      }

      v10 = *(__src + 12);
      *(__dst + 11) = v6;
      *(__dst + 12) = v10;
      (**(v6 - 8))(__dst + 64, __src + 64, v6);
    }

    else
    {
      v9 = *(__src + 5);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = v9;
      *(__dst + 12) = *(__src + 12);
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_15;
  }

  return memcpy(__dst, __src, 0x129uLL);
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(v13, v11);

  return (*(v9 + 8))(v11, v8);
}

void *specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(*((v6 & v5) + 0x70) + 8);
  v12 = *((v6 & v5) + 0x60);
  v37[3] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v15 = (v2 + *(v7 + 152));
    v16 = *v15;
    if (*v15)
    {
      v37[1] = v12;
      v37[2] = result;
      v37[0] = a1;
      v17 = v16;
      v18 = v15[1];
      (*(v9 + 16))(v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
      v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      (*(v9 + 32))(v20 + v19, v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v21 = MEMORY[0x1E69E7D40];
      v22 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
      v23 = *(v22 + 2);
      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if ((v23 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
      {
        outlined copy of AppIntentExecutor?(v17, v18);
        outlined copy of AppIntentExecutor?(v17, v18);
        v25 = v37[0];
        v26 = v37[0];
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        v28 = v18;
        v29 = v17;
LABEL_18:
        v33 = v2 + *((*v21 & *v2) + 0x108);
        v34 = *v33;
        v35 = v33[8];
        v36 = *(swift_getAssociatedConformanceWitness() + 8);
        (*(v36 + 136))(v34, v35, AssociatedTypeWitness, v36);
        (*(v36 + 120))(1, v27, v20, AssociatedTypeWitness, v36);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v29, v28);
        return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v20);
      }

      v28 = v18;
      v25 = v37[0];
      if (v24 == 0x1FFFFFFFCLL)
      {
        v29 = v17;
        outlined copy of AppIntentExecutor?(v17, v28);
        outlined copy of AppIntentExecutor?(v17, v28);
        v30 = v25;
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        goto LABEL_18;
      }

      v29 = v17;
      if (v24 == 0x1FFFFFFFELL)
      {
LABEL_8:
        outlined copy of AppIntentExecutor?(v17, v28);
        outlined copy of AppIntentExecutor?(v17, v28);
        v31 = v25;
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        goto LABEL_18;
      }

      if (v23 >> 62)
      {
        if ((*v22 & 2) == 0 || !*(v22 + 3) || v23 & 1 | (*(v22 + 1) <= 0.0))
        {
          goto LABEL_8;
        }
      }

      else if (*v22 & 2) == 0 || (*(v22 + 4))
      {
        goto LABEL_8;
      }

      outlined copy of AppIntentExecutor?(v17, v28);
      outlined copy of AppIntentExecutor?(v17, v28);
      v32 = v25;

      v27 = 0;
      v20 = 0;
      goto LABEL_18;
    }
  }

  return result;
}

void destroy for AccessibilityAttachment.Tree(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      return;
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      if (v3 == 1)
      {
LABEL_9:
        if (*(a1 + 240) != 1)
        {
        }

        v4 = *(a1 + 288);

        return;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 64));
    }

    goto LABEL_9;
  }
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance FallbackLabelStyle@<D0>(_OWORD *a1@<X8>)
{
  *&v4 = swift_getKeyPath();
  WORD4(v4) = 0;
  closure #2 in FallbackLabelStyle.makeBody(configuration:)(&v5);
  v2 = v5;
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v6[0];
  result = *(v6 + 10);
  *(a1 + 42) = *(v6 + 10);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 9);
  v5 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v5, v4);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  return a1;
}

void *specialized AccessibilityToggleModifier.body(content:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = 12;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v29);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  v8 = a1[3];
  v32 = a1[2];
  v33 = v8;
  v9 = a1[5];
  v34 = a1[4];
  v35 = v9;
  v10 = a1[1];
  v30 = *a1;
  v31 = v10;
  v48 = v30;
  v49 = v10;
  v50 = v32;
  v51 = v8;
  v52 = v34;
  v53 = v9;
  *&v54 = v7;
  *(&v54 + 1) = v6;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  outlined init with copy of ResolvedToggleStyleBody(a1, __src);
  AccessibilityTraitSet.init(traits:)();
  v12 = *(v11 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 0, v12);
  v25[2] = v32;
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[0] = v30;
  v25[1] = v31;
  v26 = v7;
  v27 = v6;
  outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(&v48, __src);
  outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(v25);
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v7 + 16, 0x4000000040uLL);
  v13 = v3[3];
  v14 = v3[1];
  *&v44[16] = v3[2];
  v45 = v13;
  v15 = v3[3];
  v16 = v3[5];
  v46 = v3[4];
  v47 = v16;
  v17 = v3[1];
  v43 = *v3;
  *v44 = v17;
  __src[2] = *&v44[16];
  __src[3] = v15;
  v18 = v3[5];
  __src[4] = v46;
  __src[5] = v18;
  __src[0] = v43;
  __src[1] = v14;
  __dst[0] = ToggleStyleConfiguration.accessibilityActions.getter();
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v21[0]);
  v21[0] = __dst[0];
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 1, 1);
  __src[0] = *&v44[8];
  LOBYTE(__src[1]) = v44[24];
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v24);
  if (LOBYTE(v24[0]))
  {
    v19 = 2 * (LOBYTE(v24[0]) != 1);
  }

  else
  {
    v19 = 1;
  }

  LOBYTE(__src[0]) = v19;
  memset(v24 + 1, 0, 32);
  *(&v24[4] + 1) = 0;
  outlined destroy of AppIntentAction?(v24 + 1, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  AnyAccessibilityValue.init<A>(_:)();
  *(&v24[5] + 1) = 0;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v24 + 1, __src);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v7 + 80, __src);
  outlined destroy of AppIntentAction?(v7 + 80, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AccessibilityValueStorage(__src, v7 + 80);
  outlined destroy of AccessibilityValueStorage(__src);
  swift_endAccess();

  v40 = v52;
  v41 = v53;
  v42 = v54;
  v36 = v48;
  v37 = v49;
  v39 = v51;
  v38 = v50;
  outlined destroy of AccessibilityValueStorage(v24 + 1);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  v22[4] = v40;
  v22[5] = v41;
  v22[6] = v42;
  v22[0] = v36;
  v22[1] = v37;
  v22[2] = v38;
  v22[3] = v39;
  outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(v22);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, 0x110uLL);
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(__dst, v21, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(v29, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
  return memcpy(a2, __dst, 0x110uLL);
}

void *ResolvedToggleStyle.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v23 = *(v1 + 32);
  v24 = v3;
  v4 = *(v1 + 80);
  v25 = *(v1 + 64);
  v26 = v4;
  v5 = *(v1 + 16);
  v21 = *v1;
  v22 = v5;
  v35 = v21;
  v6 = *(v1 + 16);
  v7 = *(&v5 + 1);
  v27 = v21;
  v28 = v6;
  v29 = *(&v5 + 1);
  v30 = v23;
  v31 = BYTE8(v23);
  v8 = *(v1 + 73);
  v9 = *(v1 + 57);
  v10 = *(v1 + 41);
  *&v34[15] = *(v1 + 88);
  v11 = *&v34[15];
  *v34 = v8;
  v33 = v9;
  v32 = v10;
  v36 = v6;
  v37 = v7;
  v38 = v23;
  v39 = BYTE8(v23);
  *&v42[15] = v11;
  *v42 = v8;
  v41 = v9;
  v40 = v10;
  specialized AccessibilityToggleModifier.body(content:)(&v27, __src);
  v18[0] = v7;
  v18[1] = v23;
  v19 = BYTE8(v23);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v20);
  LOBYTE(v7) = v20;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = swift_allocObject();
  v14 = v24;
  v13[3] = v23;
  v13[4] = v14;
  v15 = v26;
  v13[5] = v25;
  v13[6] = v15;
  v16 = v22;
  v13[1] = v21;
  v13[2] = v16;
  outlined init with copy of ResolvedToggleStyle(&v21, v18);
  result = memcpy(a1, __src, 0x110uLL);
  a1[34] = partial apply for closure #1 in View.platformItemToggleState(_:);
  a1[35] = v12;
  a1[36] = partial apply for closure #2 in ResolvedToggleStyle.body.getter;
  a1[37] = v13;
  return result;
}

uint64_t sub_18C00EE94()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ToggleStyleConfiguration.accessibilityActions.getter()
{
  v1 = v0[3];
  v17[2] = v0[2];
  v17[3] = v1;
  v2 = v0[5];
  v18 = v0[4];
  v19 = v2;
  v3 = v0[1];
  v17[0] = *v0;
  v17[1] = v3;
  v20[1] = v18;
  v20[2] = v2;
  v20[0] = v1;
  v4 = v18.n128_u64[1];
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  if (v18.n128_u64[1])
  {
    *(v5 + 16) = xmmword_18CD63400;
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    *(v5 + 56) = v6;
    *(v5 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v7 = swift_allocObject();
    *(v5 + 32) = v7;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = v0[3];
    *(v7 + 64) = v0[4].n128_u64[0];
    *(v7 + 72) = v4;
    *(v7 + 80) = v0[5];
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 120) = 2;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 153) = 0u;
    *(v5 + 72) = 1;
  }

  else
  {
    *(v5 + 16) = xmmword_18CD63400;
    v8 = swift_allocObject();
    v9 = v0[3];
    v8[3] = v0[2];
    v8[4] = v9;
    v10 = v0[5];
    v8[5] = v0[4];
    v8[6] = v10;
    v11 = v0[1];
    v8[1] = *v0;
    v8[2] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in ToggleStyleConfiguration.accessibilityActions.getter;
    *(v12 + 24) = v8;
    LODWORD(v8) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    *(v5 + 56) = v13;
    *(v5 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v14 = swift_allocObject();
    *(v5 + 32) = v14;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0;
    *(v14 + 72) = 2;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0;
    *(v14 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
    *(v14 + 128) = v12;
    *(v14 + 136) = v8;
    *(v5 + 72) = 0;
    outlined init with copy of ToggleStyleConfiguration(v17, v16);
  }

  outlined init with copy of ToggleStyleConfiguration.Effect(v20, v16);
  return v5;
}

uint64_t sub_18C00F2D0()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F344()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F3E0()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 120) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 152))
  {
    outlined consume of Text.Storage(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F490()
{

  return swift_deallocObject();
}

__n128 initializeWithCopy for ToggleStyleConfiguration.Effect(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    v12 = a2[1];
    *a1 = *a2;
    a1[1] = v12;
    result = a2[2];
    a1[2] = result;
  }

  else
  {
    v3 = a2->n128_u64[0];
    v4 = a2->n128_i64[1];
    v5 = a2[1].n128_i8[0];
    outlined copy of Environment<AppIntentExecutor?>.Content(a2->n128_u64[0], v4, v5);
    a1->n128_u64[0] = v3;
    a1->n128_u64[1] = v4;
    a1[1].n128_u8[0] = v5;
    v8 = a2[2].n128_u64[0];
    v9 = a2[2].n128_u64[1];
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = v8;
    a1[2].n128_u64[1] = v9;
    v10 = v2;
  }

  return result;
}

uint64_t outlined destroy of AppIntentAction?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980370], MEMORY[0x1E6980360], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980368], MEMORY[0x1E6980360], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980358], MEMORY[0x1E6980360], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

double specialized closure #1 in AccessibilityToggleModifier.body(content:)@<D0>(_OWORD *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[4];
  v43 = a2[3];
  v44 = v5;
  v45 = a2[5];
  if (v5.n128_u64[1])
  {
    v6 = v43.n128_u64[1];
    v7 = v43.n128_u64[0];
    v8 = v45.n128_u64[1];
    v9 = v45.n128_u64[0];
    v10 = v44.n128_u8[0] & 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v11 = a1[5];
  v34 = a1[4];
  v35 = v11;
  v36 = a1[6];
  v12 = a1[1];
  v31[0] = *a1;
  v31[1] = v12;
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v21 = v31[0];
  v22 = v12;
  v23 = v32;
  v24 = v13;
  v25 = v34;
  v26 = v11;
  v27 = v36;
  *&v28 = v7;
  *(&v28 + 1) = v6;
  *&v29 = v10;
  *(&v29 + 1) = v5.n128_u64[1];
  *&v30 = v9;
  *(&v30 + 1) = v8;
  v37 = v7;
  v38 = v6;
  v39 = v10;
  v40 = v5.n128_u64[1];
  v41 = v9;
  v42 = v8;
  outlined init with copy of ToggleStyleConfiguration.Effect(&v43, v20);
  outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(a1, v20);
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(&v21, v20, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(v31, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
  v14 = v28;
  a3[6] = v27;
  a3[7] = v14;
  v15 = v30;
  a3[8] = v29;
  a3[9] = v15;
  v16 = v24;
  a3[2] = v23;
  a3[3] = v16;
  v17 = v26;
  a3[4] = v25;
  a3[5] = v17;
  result = *&v21;
  v19 = v22;
  *a3 = v21;
  a3[1] = v19;
  return result;
}

double partial apply for specialized closure #1 in AccessibilityToggleModifier.body(content:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v8[6] = a1[6];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return specialized closure #1 in AccessibilityToggleModifier.body(content:)(v8, v3, a2);
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    v15 = *v8;
    v16 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v16;
    *v7 = v15;
  }

  else
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
    *v7 = v9;
    *(v7 + 8) = v10;
    *(v7 + 16) = v11;
    v12 = *(v8 + 24);
    *(v7 + 24) = v12;
    v13 = *(v8 + 40);
    *(v7 + 32) = *(v8 + 32);
    *(v7 + 40) = v13;
    v14 = v12;
  }

  return a1;
}

double destroy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v5, *(v5 + 8), *(v5 + 16));
  }

  return result;
}

double protocol witness for View.body.getter in conformance ResolvedToggleStyleBody@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v9 = *(v1 + 88);
  v11 = v7 & 1;
  if (v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v11 = 0;
    v14 = 0;
  }

  if (v8)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v11;
  *(a1 + 48) = v8;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;

  return outlined copy of ToggleStyleConfiguration.Effect(v5, v6, v7, v8, v10, v9);
}

double outlined copy of ToggleStyleConfiguration.Effect(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, a3 & 1);
    v7 = a4;
  }

  return result;
}

uint64_t assignWithTake for CheckmarkToggleStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v17;
  *(a1 + 64) = v11;
  outlined consume of Environment<EdgeInsets>.Content(v12, v13, v14, v15, v16);
  v18 = *(a2 + 80);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = *(a2 + 96);
  v22 = *(a1 + 88);
  v23 = *(a1 + 96);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v21;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  *(a1 + 104) = a2[13];
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedToggleStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return outlined init with copy of ToggleStyleConfiguration(v9, &v8);
}

uint64_t ToggleStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v13 = a1[5];
  v17[4] = a1[4];
  v17[5] = v13;
  v14 = a1[1];
  v17[0] = *a1;
  v17[1] = v14;
  (*(v3 + 24))(v17, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v11, AssociatedTypeWitness);
}

uint64_t CheckmarkToggleStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  v34[2] = a1[2];
  v34[3] = v8;
  v9 = a1[5];
  v34[4] = a1[4];
  v34[5] = v9;
  v10 = a1[1];
  v34[0] = *a1;
  v34[1] = v10;
  v11 = *(v2 + 80);
  v35[4] = *(v2 + 64);
  v35[5] = v11;
  v35[6] = *(v2 + 96);
  v36 = *(v2 + 112);
  v12 = *(v2 + 16);
  v35[0] = *v2;
  v35[1] = v12;
  v13 = *(v2 + 48);
  v35[2] = *(v2 + 32);
  v35[3] = v13;
  v14 = swift_allocObject();
  v15 = a1[3];
  *(v14 + 3) = a1[2];
  *(v14 + 4) = v15;
  v16 = a1[5];
  *(v14 + 5) = a1[4];
  *(v14 + 6) = v16;
  v17 = a1[1];
  *(v14 + 1) = *a1;
  *(v14 + 2) = v17;
  *a2 = 4;
  type metadata accessor for Button<ToggleStyleConfiguration.Label>(0, v18, v19, v20);
  v22 = &a2[*(v21 + 36)];
  *v22 = partial apply for closure #1 in CheckmarkToggleStyle.menuContent(configuration:);
  v22[1] = v14;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>(0);
  v24 = &a2[*(v23 + 44)];
  v25 = swift_allocObject();
  v26 = a1[3];
  v25[3] = a1[2];
  v25[4] = v26;
  v27 = a1[5];
  v25[5] = a1[4];
  v25[6] = v27;
  v28 = a1[1];
  v25[1] = *a1;
  v25[2] = v28;
  *v24 = 4;
  type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>(0);
  v30 = &v24[*(v29 + 36)];
  *v30 = partial apply for closure #1 in CheckmarkToggleStyle.defaultContent(configuration:);
  v30[1] = v25;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ToggleStyleConfiguration(v34, v33);
  outlined init with copy of ToggleStyleConfiguration(v34, v33);

  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>(0);
  closure #1 in closure #2 in CheckmarkToggleStyle.defaultContent(configuration:)(v34, v35, &v7[*(v31 + 44)]);
  static Color.primary.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>> and conformance HStack<A>();
  View.defaultForegroundColor(_:)();

  return sub_18C010270(v7);
}

uint64_t sub_18C010270(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double closure #1 in closure #2 in CheckmarkToggleStyle.defaultContent(configuration:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = specialized Environment.wrappedValue.getter(*a2, *(a2 + 8));
  v14 = 0;
  if ((v13 & 1) == 0)
  {
    v14 = static Color.tertiary.getter();
  }

  v38 = v14;
  KeyPath = swift_getKeyPath();
  specialized Image.init(systemName:)(0x72616D6B63656863, 0xE90000000000006BLL);
  v36 = v15;
  specialized Environment.wrappedValue.getter(*(a2 + 2), *(a2 + 24), &v47);
  v35 = v47 < 9u;
  v34 = swift_getKeyPath();
  static Font.PrivateTextStyle.emphasizedBody.getter();
  LOBYTE(v40) = 4;
  v33 = static Font.system(_:design:weight:)();

  v32 = swift_getKeyPath();
  v31 = static Color.accentColor.getter();
  v30 = swift_getKeyPath();
  v16 = a2[5];
  v51 = a2[4];
  v52 = v16;
  v53 = a2[6];
  LOBYTE(v54) = *(a2 + 112);
  v17 = a2[1];
  v47 = *a2;
  v48 = v17;
  v18 = a2[3];
  v49 = a2[2];
  v50 = v18;
  CheckmarkToggleStyle.adjustedCheckmarkWidth.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = *a1;
  v61 = *(a1 + 16);
  v47 = *a1;
  LOBYTE(v48) = *(a1 + 16);
  _s7SwiftUI5ColorVSgMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v20 = v19;
  MEMORY[0x18D00ACC0](&v40);
  if (v40)
  {
    v21 = 0x10000000002;
  }

  else
  {
    v21 = 0x1010000000002;
  }

  LOBYTE(v40) = 1;
  v47 = v60;
  LOBYTE(v48) = v61;
  MEMORY[0x18D00ACC0](&v40, v20);
  v22 = 0.0;
  if (v40)
  {
    v22 = 1.0;
  }

  *(v43 + 8) = v57;
  *&v40 = v36;
  *(&v40 + 1) = v34;
  LOBYTE(v41) = v35;
  *(&v41 + 1) = v32;
  *&v42 = v33;
  *(&v42 + 1) = v30;
  *&v43[0] = v31;
  *(&v43[1] + 8) = v58;
  *(&v43[2] + 8) = v59;
  *(&v43[3] + 1) = v21;
  v44 = 0uLL;
  *&v45 = 0x3F80000000007000;
  *(&v45 + 1) = 0x100000000;
  BYTE4(v46) = 1;
  LODWORD(v46) = 0;
  *(&v46 + 1) = v22;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>();
  View.accessibilityDisabled()();
  v53 = v43[3];
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v49 = v42;
  v50 = v43[0];
  v51 = v43[1];
  v52 = v43[2];
  v47 = v40;
  v48 = v41;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(&v47);
  LOBYTE(v40) = 0;
  v23 = *(v8 + 16);
  v24 = v39;
  v23(v39, v12, v7);
  v25 = v38;
  *a3 = KeyPath;
  *(a3 + 8) = v25;
  v26 = v40;
  *(a3 + 16) = 0x4030000000000000;
  *(a3 + 24) = v26;
  type metadata accessor for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)(0);
  v23((a3 + *(v27 + 64)), v24, v7);
  v28 = *(v8 + 8);

  v28(v12, v7);
  v28(v24, v7);

  return result;
}

uint64_t sub_18C010738@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18C010798@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

void *CheckmarkToggleStyle.adjustedCheckmarkWidth.getter()
{
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), &v2);
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_2(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  return ScaledMetric.wrappedValue.getter();
}

__n128 initializeWithCopy for _SymbolEffectModifier(uint64_t a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  if ((~v2 & 0xFFFFFFFE) == 0 && (a2[3] & 0xFEFE) == 2)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 29);
    *(a1 + 29) = result;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    outlined copy of _SymbolEffect.Storage(*a2, v6, v2, v3);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v2;
    *(a1 + 24) = v3;
    result = *(a2 + 28);
    *(a1 + 28) = result;
    *(a1 + 44) = *(a2 + 44);
  }

  return result;
}

double outlined copy of _SymbolEffect.Storage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined copy of _SymbolEffect.Trigger?(a1);
  }

  return result;
}

double destroy for _SymbolEffectModifier(uint64_t *result)
{
  v1 = result[2];
  if ((~v1 & 0xFFFFFFFE) != 0 || (result[3] & 0xFEFE) != 2)
  {
    return outlined consume of _SymbolEffect.Storage(*result, result[1], v1, result[3]);
  }

  return v3;
}

double outlined consume of _SymbolEffect.Storage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined consume of _SymbolEffect.Trigger?(a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t assignWithTake for PlatformItemListButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v9 = *(a2 + 40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 56);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  return a1;
}

uint64_t PlatformItemListButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v2[1];
  v28 = *v2;
  v29 = v8;
  *v30 = v2[2];
  *&v30[9] = *(v2 + 41);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  KeyPath = swift_getKeyPath();
  LOBYTE(v25[0]) = 0;
  v23 = swift_getKeyPath();
  v27 = 0;
  v11 = swift_getKeyPath();
  v26 = 0;
  v12 = v25[0];
  v13 = v27;
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  v15 = specialized Environment.wrappedValue.getter(v28, SBYTE8(v28));
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = swift_allocObject();
  v18 = v29;
  v17[1] = v28;
  v17[2] = v18;
  v17[3] = *v30;
  *(v17 + 57) = *&v30[9];
  v19 = *&v30[16];
  LOBYTE(v9) = v30[24];
  outlined init with copy of PlatformItemListButtonStyle(&v28, v25);
  specialized Environment.wrappedValue.getter(v19, v9, v25);
  LOBYTE(v19) = LOBYTE(v25[0]) == 2;
  result = swift_allocObject();
  *(result + 16) = v19;
  *a2 = partial apply for implicit closure #2 in implicit closure #1 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 8) = v10;
  *(a2 + 16) = 1;
  v21 = v23;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v12;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = v21;
  *(a2 + 64) = 0;
  *(a2 + 65) = v13;
  *(a2 + 72) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 96) = v14;
  *(a2 + 104) = partial apply for closure #1 in View.platformItemTint(_:);
  *(a2 + 112) = v16;
  *(a2 + 120) = partial apply for closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 128) = v17;
  *(a2 + 136) = partial apply for closure #1 in View.platformItemKeepsMenuPresented(_:);
  *(a2 + 144) = result;
  *(a2 + 152) = closure #1 in PlatformItemListButtonStyle.menuItemAttributedTitleModifier.getter;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_18C011204()
{

  return swift_deallocObject();
}

uint64_t sub_18C01123C()
{
  outlined consume of Environment<Color?>.Content(*(v0 + 16));
  outlined consume of Environment<Selector?>.Content(*(v0 + 32), *(v0 + 40));
  outlined consume of Environment<Selector?>.Content(*(v0 + 48), *(v0 + 56));
  outlined consume of Environment<Selector?>.Content(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t outlined init with copy of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*PlatformItemListTransform.value.getter(unint64_t a1))()
{
  v1 = a1;
  v2 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v10[0] = v5;
  v10[1] = v4;

  LOBYTE(v5) = EnvironmentValues.accessibilityEnabled.getter();

  v6 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if ((v5 & 1) != 0 && *MEMORY[0x1E698D3F8] != v1)
  {
    v7 = AGGraphGetValue();
    outlined init with copy of AccessibilityAttachment.Tree(v7, v10);
    v8 = swift_allocObject();
    memcpy(v8 + 4, v10, 0x129uLL);
    v8[79] = v1;
    v8[80] = v2;
    return partial apply for closure #2 in PlatformItemListTransform.value.getter;
  }

  return v6;
}

uint64_t sub_18C0115A8()
{
  if (*(v0 + 312) == 1)
  {

    goto LABEL_11;
  }

  if (*(v0 + 312))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 104);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
LABEL_6:
  }

  if (*(v0 + 256) != 1)
  {
  }

LABEL_11:

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<SwitchToggleStyle>, lazy protocol witness table accessor for type SwitchToggleStyle and conformance SwitchToggleStyle, &type metadata for SwitchToggleStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SwitchToggleStyle and conformance SwitchToggleStyle()
{
  result = lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle;
  if (!lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SwitchToggleStyle, &type metadata for SwitchToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle);
  }

  return result;
}

uint64_t outlined init with copy of PlatformItemList.Item.SystemItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined assign with copy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in View.platformItemHierarchicalLevel(_:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
    }

    else
    {
      v6 = type metadata accessor for PlatformItemList.Item(0);
      v7 = 0;
      v8 = *(v6 - 8);
      result = v6 - 8;
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = *(v8 + 72);
      if (v3 == 1 || v10 != 1)
      {
        goto LABEL_13;
      }

      v7 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v12 = (v2 + v9 + 41);
      v13 = v3 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 1) = a2;
        *v12 = a2;
        v12 = (v12 + 2);
        v13 -= 2;
      }

      while (v13);
      if (v3 != v7)
      {
LABEL_13:
        v14 = v3 - v7;
        v15 = (v2 + v9 + v7 * v10 + 40);
        do
        {
          *v15 = a2;
          v15 = (v15 + v10);
          --v14;
        }

        while (v14);
      }

      *v5 = v2;
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnPlatformContainerSelectionModifier@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = partial apply for closure #1 in OnPlatformContainerSelectionModifier.body(content:);
  a1[1] = v6;
  return outlined init with copy of OnPlatformContainerSelectionModifier(v11, v10);
}

uint64_t sub_18C011C2C()
{
  if (*(v0 + 16))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(v0 + 40), *(v0 + 48));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 81));
  outlined consume of Environment<Selector?>.Content(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t closure #1 in OnPlatformContainerSelectionModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  if (*(*a1 + 16) == 1)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    outlined init with copy of PlatformItemList.Item(*a1 + v11, &v26 - v9);
    v12 = *a2;
    if (*a2)
    {
      v27 = v5;
      v28 = v7;
      v13 = *(a2 + 8);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);

      specialized Environment.wrappedValue.getter(v14, v15, &v35);
      LODWORD(v26) = v35;
      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      v18 = specialized Environment.wrappedValue.getter(v16, v17);
      v29 = a1;
      if ((v18 & 1) == 0)
      {
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12, v13);
        v12 = 0;
        v13 = 0;
      }

      v19 = *(a2 + 16);
      v34 = v10[472];
      v20 = *(v10 + 456);
      v33[2] = *(v10 + 440);
      v33[3] = v20;
      v21 = *(v10 + 424);
      v33[0] = *(v10 + 408);
      v33[1] = v21;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v33, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      v10[408] = v19;
      *(v10 + 409) = 1;
      *(v10 + 52) = v12;
      *(v10 + 53) = v13;
      *(v10 + 27) = 0u;
      *(v10 + 28) = 0u;
      *(v10 + 58) = 0;
      v10[472] = v26;
      v10[56] = specialized Environment.wrappedValue.getter(v16, v17) & 1;
      specialized Environment.wrappedValue.getter(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64) | (*(a2 + 65) << 8), &v30);
      v26 = v30;
      v22 = v31;
      v23 = v32;

      *(v10 + 30) = v26;
      *(v10 + 62) = v22;
      v10[504] = v23;
      v7 = v28;
      a1 = v29;
    }

    outlined init with copy of PlatformItemList.Item(v10, v7);
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD63400;
    outlined init with take of PlatformItemList.Item(v7, v24 + v11);

    *a1 = v24;
    return _s7SwiftUI16CommandOperationVWOhTm_0(v10, type metadata accessor for PlatformItemList.Item);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void closure #1 in View.platformItemTint(_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= v2[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v7 = type metadata accessor for PlatformItemList.Item(0);
      v8 = v2 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * i;
      v9 = *(v7 + 136);
      if (!*(v8 + v9))
      {
        *(v8 + v9) = a2;
      }
    }

    *a1 = v2;
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    type metadata accessor for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>(255);
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    }
  }
}

uint64_t *closure #3 in PlatformItemListButtonStyle.makeBody(configuration:)(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v26 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_24:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = 0;
    while (1)
    {
      if (v5 >= v2[2])
      {
        __break(1u);
        goto LABEL_24;
      }

      v13 = type metadata accessor for PlatformItemList.Item(0);
      v14 = *(v13 - 8);
      result = (v13 - 8);
      v15 = v2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v5;
      if (*(v15 + 336) >> 2 != 0xFFFFFFFFLL)
      {
        goto LABEL_6;
      }

      v35 = *(a2 + 24);
      v16 = *(a2 + 16);
      v34 = v16;
      if (v35 == 1)
      {
        v31 = v16 & 1;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      else
      {

        v17 = static os_log_type_t.fault.getter();
        v18 = static Log.runtimeIssuesLog.getter();
        if (os_log_type_enabled(v18, v17))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v29[0] = v20;
          *v19 = 136315138;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1819242306, 0xE400000000000000, v29);
          _os_log_impl(&dword_18BD4A000, v18, v17, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x18D0110E0](v20, -1, -1);
          MEMORY[0x18D0110E0](v19, -1, -1);
        }

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined destroy of Environment<Bool>(&v34, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);

        if (v31)
        {
LABEL_15:
          v33 = *(a2 + 40);
          v21 = *(a2 + 32);
          v32 = v21;
          if (v33 == 1)
          {
            v7 = v21;
          }

          else
          {
            outlined init with copy of Environment<PaletteSelectionEffect>(&v32, v29);
            v22 = static os_log_type_t.fault.getter();
            v23 = static Log.runtimeIssuesLog.getter();
            if (os_log_type_enabled(v23, v22))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *&v29[0] = v25;
              *v24 = 136315138;
              *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v29);
              _os_log_impl(&dword_18BD4A000, v23, v22, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              MEMORY[0x18D0110E0](v25, -1, -1);
              MEMORY[0x18D0110E0](v24, -1, -1);
            }

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            outlined destroy of Environment<Bool>(&v32, &lazy cache variable for type metadata for Environment<PaletteSelectionEffect>, &type metadata for PaletteSelectionEffect, MEMORY[0x1E697DCC0]);

            v7 = v28;
          }

          v6 = v27 & 3;
          v27 &= 3u;
          goto LABEL_5;
        }
      }

      v6 = 0xC000000000000000;
      v7 = 6;
LABEL_5:
      v8 = *(v15 + 304);
      v9 = *(v15 + 336);
      v29[1] = *(v15 + 320);
      v29[2] = v9;
      v29[0] = v8;
      v10 = *(v15 + 352);
      v11 = *(v15 + 368);
      v12 = *(v15 + 384);
      v30 = *(v15 + 400);
      v29[4] = v11;
      v29[5] = v12;
      v29[3] = v10;
      *(v15 + 304) = v7;
      *(v15 + 312) = 0;
      *(v15 + 320) = 0;
      *(v15 + 328) = 0;
      *(v15 + 336) = v6;
      *(v15 + 344) = 0u;
      *(v15 + 360) = 0u;
      *(v15 + 376) = 0u;
      *(v15 + 392) = 0u;
      result = outlined destroy of Environment<Bool>(v29, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem, MEMORY[0x1E69E6720]);
LABEL_6:
      if (v3 == ++v5)
      {
        *v26 = v2;
        return result;
      }
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>(255);
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>)
  {
    type metadata accessor for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>(255);
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>);
    }
  }
}

uint64_t outlined destroy of Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Environment<Bool>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(255);
    v4 = type metadata accessor for LabeledContent(a1, &type metadata for ToggleStyleConfiguration.Label, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>);
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

uint64_t **closure #1 in View.platformItemKeepsMenuPresented(_:)(uint64_t **result, char a2)
{
  v2 = *result;
  v3 = (*result)[2];
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
    }

    else
    {
      result = type metadata accessor for PlatformItemList.Item(0);
      v6 = v2 + ((*(*(result - 1) + 80) + 32) & ~*(*(result - 1) + 80));
      v7 = (*(result - 1))[9];
      do
      {
        v6[*(result + 30)] = a2 & 1;
        v6 += v7;
        --v3;
      }

      while (v3);
      *v5 = v2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>)
  {
    type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Switch, _FixedSizeLayout>, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697FD48]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = (a4)(0, &type metadata for Switch, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ContentShapeModifier<Capsule>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in View.platformItemToggleState(_:)(uint64_t result, unsigned int a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for PlatformItemList.Item(0);
    v7 = 0;
    v8 = *(v6 - 8);
    result = v6 - 8;
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    if (v3 < 8 || v10 != 1)
    {
LABEL_19:
      v19 = v3 - v7;
      v20 = v2 + v9 + v7 * v10 + 954;
      do
      {
        *v20 = a2;
        v20 += v10;
        --v19;
      }

      while (v19);
LABEL_21:
      *v5 = v2;
      return result;
    }

    if (v3 >= 0x20)
    {
      v12 = (v2 + v9 + 954);
      v7 = v3 & 0x7FFFFFFFFFFFFFE0;
      v13 = vdupq_n_s8(a2);
      v14 = v3 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *v12 = v13;
        v12[1] = v13;
        v12 += 2;
        v14 -= 32;
      }

      while (v14);
      if (v3 == v7)
      {
        goto LABEL_21;
      }

      if ((v3 & 0x18) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = v7;
    v7 = v3 & 0x7FFFFFFFFFFFFFF8;
    v16 = vdup_n_s8(a2);
    v17 = (v2 + v15 + v9 + 954);
    v18 = v15 - (v3 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v17++ = v16;
      v18 += 8;
    }

    while (v18);
    if (v3 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Capsule and conformance Capsule()
{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981990], MEMORY[0x1E69819A8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981970], MEMORY[0x1E69819A8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

uint64_t *closure #3 in PickerItemView.body.getter(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v5 = type metadata accessor for PlatformItemList.Item(0);
      v6 = *(v5 - 8);
      result = (v5 - 8);
      v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i;
      if (*(v7 + 416) != 1)
      {
        *(v7 + 411) = 1;
      }
    }

    *v3 = v1;
  }

  return result;
}

void *closure #1 in View.collapsingInlinePickerSections()(void *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v115 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v115 - v20);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v129 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1E69E7CC0];
  v176 = MEMORY[0x1E69E7CC0];
  v27 = *(v3 + 56);
  v138 = &v115 - v28;
  v136 = v2;
  v131 = v27;
  v132 = v3 + 56;
  result = v27(v25);
  v137 = a1;
  v30 = *a1;
  v31 = *(*a1 + 16);
  if (!v31)
  {
LABEL_60:

    if (v26[2])
    {
      specialized Array.append<A>(contentsOf:)(v26);
      result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
    }

    else
    {
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
    }

    *v137 = v176;
    return result;
  }

  v124 = v11;
  v125 = v8;
  LODWORD(v134) = 0;
  v140 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v141 = v30 + v140;
  v126 = (v3 + 48);
  v127 = v14;
  v122 = v11 + 424;
  v123 = v11 + 344;
  v119 = v11 + 512;
  v120 = v11 + 408;
  v121 = v11 + 536;
  v118 = v11 + 872;
  v128 = v31 - 1;
  v117 = xmmword_18CD633F0;
  v133 = v26;
  v139 = v3;
  v32 = 0;
  while (v32 < *(v30 + 16))
  {
    v33 = *(v3 + 72);
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v141 + v33 * v32, v21, type metadata accessor for PlatformItemList.Item);
    v34 = v21[42];
    if (v34 >> 62 != 3 || (v34 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
    {
      goto LABEL_16;
    }

    v35 = v21[38];
    v36 = v21[39];
    v37 = v21[40];
    v38 = v21[41];
    v40 = v21[43];
    v39 = v21[44];
    v41 = v21[45];
    v42 = v21[46];
    v43 = v21[47];
    v44 = v21[48];
    v45 = v21[49];
    v46 = v21[50];
    v47 = v34 == 0xC000000000000000 && (v36 | v35 | v37 | v38 | v40 | v39 | v41 | v42 | v43 | v44 | v45 | v46) == 0;
    v48 = v47;
    if (v47)
    {
      v134 = v31;
      v51 = v129;
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v138, v129, type metadata accessor for PlatformItemList.Item?);
      if ((*v126)(v51, 1, v136) == 1)
      {
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v51, type metadata accessor for PlatformItemList.Item?);
        if (v26[2])
        {
          _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v161);
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v142 = 0u;
          v52 = v124;
          *(v124 + 1) = 0;
          *(v52 + 16) = 0;
          *(v52 + 32) = 0;
          *(v52 + 24) = 0;
          *(v52 + 40) = -1;
          *(v52 + 56) = 1;
          v53 = v170;
          *(v52 + 192) = v169;
          *(v52 + 208) = v53;
          *(v52 + 224) = v171[0];
          *(v52 + 235) = *(v171 + 11);
          v54 = v166;
          *(v52 + 128) = v165;
          *(v52 + 144) = v54;
          v55 = v168;
          *(v52 + 160) = v167;
          *(v52 + 176) = v55;
          v56 = v162;
          *(v52 + 64) = v161;
          *(v52 + 80) = v56;
          v57 = v164;
          *(v52 + 96) = v163;
          *(v52 + 112) = v57;
          *(v52 + 304) = 0u;
          *(v52 + 320) = 0u;
          *(v52 + 272) = 0u;
          *(v52 + 288) = 0u;
          *(v52 + 256) = 0u;
          *(v52 + 336) = 0x3FFFFFFFCLL;
          v58 = v122;
          v59 = v123;
          *v123 = 0u;
          v59[1] = 0u;
          v59[2] = 0u;
          v59[3] = 0u;
          *(v59 + 8) = 0;
          *(v52 + 416) = 1;
          *v58 = 0u;
          v58[1] = 0u;
          v58[2] = 0u;
          *(v58 + 48) = 0;
          *(v52 + 488) = 0;
          *(v52 + 496) = 0;
          *(v52 + 480) = 0;
          *(v52 + 504) = 0;
          v60 = v119;
          *v119 = 0;
          v60[1] = 0;
          *(v52 + 528) = 4;
          v61 = v121;
          *v121 = 0u;
          v61[1] = 0u;
          v61[2] = 0u;
          v61[3] = 0u;
          v61[4] = 0u;
          v61[5] = 0u;
          v61[6] = 0u;
          v61[7] = 0u;
          v61[8] = 0u;
          v61[9] = 0u;
          v61[10] = 0u;
          v61[11] = 0u;
          v61[12] = 0u;
          v61[13] = 0u;
          v61[14] = 0u;
          v61[15] = 0u;
          v61[16] = 0u;
          v61[17] = 0u;
          v61[18] = 0u;
          v61[19] = 0u;
          *(v61 + 40) = 0;
          *(v52 + 864) = 1;
          *(v52 + 944) = 0;
          v62 = v118;
          *v118 = 0u;
          v62[1] = 0u;
          v62[2] = 0u;
          v62[3] = 0u;
          *(v52 + 953) = 773;
          v63 = v136;
          v116 = v136[28];
          v64 = type metadata accessor for CommandOperation(0);
          (*(*(v64 - 8) + 56))(v52 + v116, 1, 1, v64);
          *(v52 + v63[29]) = 0;
          *(v52 + v63[30]) = 0;
          *(v52 + v63[31]) = 2;
          *(v52 + v63[32]) = 0;
          *(v52 + v63[33]) = 0;
          v116 = v63[34];
          *v52 = 0;
          v65 = *(v52 + 208);
          v172[8] = *(v52 + 192);
          v172[9] = v65;
          v173[0] = *(v52 + 224);
          *(v173 + 11) = *(v52 + 235);
          v66 = *(v52 + 144);
          v172[4] = *(v52 + 128);
          v172[5] = v66;
          v67 = *(v52 + 176);
          v172[6] = *(v52 + 160);
          v172[7] = v67;
          v68 = *(v52 + 80);
          v172[0] = *(v52 + 64);
          v172[1] = v68;
          v69 = *(v52 + 112);
          v172[2] = *(v52 + 96);
          v172[3] = v69;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(v172, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
          v70 = v170;
          *(v52 + 192) = v169;
          *(v52 + 208) = v70;
          *(v52 + 224) = v171[0];
          *(v52 + 235) = *(v171 + 11);
          v71 = v166;
          *(v52 + 128) = v165;
          *(v52 + 144) = v71;
          v72 = v168;
          *(v52 + 160) = v167;
          *(v52 + 176) = v72;
          v73 = v162;
          *(v52 + 64) = v161;
          *(v52 + 80) = v73;
          v74 = v164;
          *(v52 + 96) = v163;
          *(v52 + 112) = v74;
          v75 = v120;
          v76 = *(v120 + 3);
          v174[2] = *(v120 + 2);
          v174[3] = v76;
          v175 = v120[64];
          v77 = *(v120 + 1);
          v174[0] = *v120;
          v174[1] = v77;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(v174, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          *v75 = v117;
          v78 = v121;
          v79 = v122;
          *v122 = 0u;
          v79[1] = 0u;
          v79[2] = 0u;
          *(v79 + 48) = 0;
          outlined assign with take of PlatformItemList.Item.Accessibility?(&v142, v78);
          *(v52 + v116) = 0;
          *(v52 + 48) = 0;
          *(v52 + 936) = v26;
          *(v52 + 952) = 0;
          v80 = *(v52 + 384);
          v146 = *(v52 + 368);
          v147 = v80;
          *&v148 = *(v52 + 400);
          v81 = *(v52 + 320);
          v142 = *(v52 + 304);
          v143 = v81;
          v82 = *(v52 + 352);
          v144 = *(v52 + 336);
          v145 = v82;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(&v142, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
          *(v52 + 304) = 2;
          *(v52 + 312) = 0;
          *(v52 + 320) = 0;
          *(v52 + 328) = 0;
          *(v52 + 336) = 0xC000000000000000;
          v83 = v123;
          *v123 = 0u;
          v83[1] = 0u;
          v83[2] = 0u;
          v83[3] = 0u;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v52, v125, type metadata accessor for PlatformItemList.Item);
          v84 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v134;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
          }

          v87 = v84[2];
          v86 = v84[3];
          v133 = v84;
          v88 = v87 + 1;
          v115 = v87 + 1;
          v116 = v87;
          v89 = v87 >= v86 >> 1;
          v90 = v138;
          v3 = v139;
          if (v89)
          {
            v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v88, 1, v133);
            v90 = v138;
          }

          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v90, type metadata accessor for PlatformItemList.Item?);
          v91 = v133;
          v92 = v116;
          v133[2] = v115;
          v93 = v91 + v140 + v92 * v33;
          v94 = v138;
          outlined init with take of PlatformItemList.Item(v125, v93);
          v176 = v91;
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v124, type metadata accessor for PlatformItemList.Item);
        }

        else
        {
          v94 = v138;
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);

          v31 = v134;
        }
      }

      else
      {
        v98 = v51;
        v99 = v130;
        outlined init with take of PlatformItemList.Item(v98, v130);

        *(v99 + 936) = v26;
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v99, v127, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133[2] + 1, 1, v133);
        }

        v31 = v134;
        v100 = v133[3];
        v101 = v138;
        v134 = v133[2];
        v116 = v134 + 1;
        if (v134 >= v100 >> 1)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v134 + 1, 1, v133);
          v101 = v138;
        }

        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v101, type metadata accessor for PlatformItemList.Item?);
        v103 = v133;
        v102 = v134;
        v133[2] = v116;
        v104 = v103 + v140 + v102 * v33;
        v94 = v138;
        outlined init with take of PlatformItemList.Item(v127, v104);
        v176 = v103;
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v130, type metadata accessor for PlatformItemList.Item);
      }

      (v131)(v94, 1, 1, v136);
      goto LABEL_43;
    }

    if (v34 == 0xC000000000000000 && v35 == 2 && !(v37 | v36 | v38 | v40 | v39 | v41 | v42 | v43 | v44 | v45 | v46))
    {
      if (v134)
      {
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v135, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
        }

        v96 = v26[2];
        v95 = v26[3];
        v97 = v96 + 1;
        if (v96 >= v95 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v26);
          v97 = v96 + 1;
          v26 = v114;
        }

        v26[2] = v97;
        outlined init with take of PlatformItemList.Item(v135, v26 + v140 + v96 * v33);
        result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
        LODWORD(v134) = 1;
        v3 = v139;
        if (v128 == v32)
        {
          goto LABEL_60;
        }

        ++v32;
      }

      else
      {
        v105 = v138;
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v105, type metadata accessor for PlatformItemList.Item);
        result = (v131)(v105, 0, 1, v136);
        v106 = v133;
        v107 = v133[2];
        v134 = v26[2];
        v115 = v107;
        v116 = v107 + v134;
        if (__OFADD__(v107, v134))
        {
          goto LABEL_65;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v116 > v106[3] >> 1)
        {
          if (v115 <= v116)
          {
            v108 = v116;
          }

          else
          {
            v108 = v115;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v108, 1, v106);
          v133 = result;
        }

        v3 = v139;
        if (v26[2])
        {
          if ((v133[3] >> 1) - v133[2] < v134)
          {
            goto LABEL_67;
          }

          v109 = v134;
          swift_arrayInitWithCopy();

          v110 = v133;
          if (v109)
          {
            v111 = v133[2];
            v112 = __OFADD__(v111, v109);
            v113 = v111 + v109;
            if (v112)
            {
              goto LABEL_68;
            }

            v133[2] = v113;
          }
        }

        else
        {

          v110 = v133;
          if (v134)
          {
            goto LABEL_66;
          }
        }

        v176 = v110;
LABEL_43:
        result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
        if (v128 == v32)
        {
          v26 = MEMORY[0x1E69E7CC0];
          goto LABEL_60;
        }

        LODWORD(v134) = v48 ^ 1;
        ++v32;
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
LABEL_16:
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v5, type metadata accessor for PlatformItemList.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v50 = v26[2];
      v49 = v26[3];
      if (v50 >= v49 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v26);
      }

      ++v32;
      v26[2] = v50 + 1;
      outlined init with take of PlatformItemList.Item(v5, v26 + v140 + v50 * v33);
      result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
      v3 = v139;
      if (v31 == v32)
      {
        goto LABEL_60;
      }
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}