double protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationLink@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t NavigationLinkStyleModifier.styleBody(configuration:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v14 = *a1;
  (*(v3 + 24))(&v14, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v12 = *(v6 + 8);
  v12(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v11, AssociatedTypeWitness);
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;

  return result;
}

{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

double protocol witness for NavigationLinkStyle.makeBody(configuration:) in conformance ButtonNavigationLinkStyle@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 4;
  type metadata accessor for Button<NavigationLinkStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<NavigationLinkStyleConfiguration.Label>, &type metadata for NavigationLinkStyleConfiguration.Label, &protocol witness table for NavigationLinkStyleConfiguration.Label, type metadata accessor for Button);
  v7 = &a2[*(v6 + 36)];
  *v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v7[1] = v5;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_18C03E78C()
{

  return swift_deallocObject();
}

BOOL NavigationLinkDisabledModifier.valueLinkDisabledByClient.getter()
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(v0 + 40, v5, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (v6 == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(v5, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    return 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(v5, v3);
    v1 = v4 == 0;
    if (v4)
    {
      outlined destroy of NavigationLinkPresentedValue(v3);
    }

    outlined destroy of NavigationLinkPresentedValue(v5);
  }

  return v1;
}

double NavigationLinkDisabledModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  NavigationLinkDisabledModifier.isDisabled.getter(a2);
  swift_getWitnessTable(protocol conformance descriptor for NavigationLinkDisabledModifier<A>, a2);
  v3 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  View.disabled(_:)();
  v8 = v10;
  v9 = v11;
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = WitnessTable;
  v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
  static ViewBuilder.buildExpression<A>(_:)();

  v10 = v12;
  v11 = v13;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

BOOL NavigationLinkDisabledModifier.isContextuallyDisabled.getter()
{
  v1 = *(v0 + 144);
  if (v1 == 1)
  {
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v2 = *(v0 + 136);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_1(v0 + 40, &v10, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (*(&v11 + 1) == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(&v10, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  outlined init with copy of NavigationLinkPresentedValue(v13, &v10);
  if (!*(&v11 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(v13);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  v7 = v10;
  v8 = v11;
  v9 = v12;
  if ((v2 & 1) == 0)
  {
    outlined destroy of NavigationLinkPresentedValue(v13);
    goto LABEL_11;
  }

  v3 = *(&v8 + 1);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  outlined destroy of NavigationLinkPresentedValue(v13);
  if (!v1)
  {
LABEL_11:
    outlined destroy of AnyNavigationLinkPresentedValue(&v7);
    return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
  }

  outlined destroy of AnyNavigationLinkPresentedValue(&v7);
  if (v5 == v1)
  {
    return 0;
  }

  return specialized Environment.wrappedValue.getter(*v0, *(v0 + 8)) != 1;
}

BOOL NavigationLinkDisabledModifier.inEditModeAndShouldDisable.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, &lazy cache variable for type metadata for Never?, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6720]);
  result = 0;
  if (v2 != v3)
  {
    specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24), *(v1 + 32) | (*(v1 + 33) << 8), &v11);
    v4 = v12;
    if (v12)
    {
      v5 = v11;
      v8 = v11;
      v9 = v12;
      v10 = v13;
      _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v7);
      outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
      if (v7)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t static Transform.didReinsert(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGGraphGetAttributeInfo();
  v6 = type metadata accessor for Transform(0, a2, a3, v5);
  return Transform.insert()(v6);
}

uint64_t Transform.insert()(uint64_t result)
{
  v2 = *(result + 56);
  if (*(v1 + v2) == 1)
  {
    v3 = result;
    *(v1 + v2) = 0;
    Value = AGGraphGetValue();
    v5 = *Value;
    v6 = Value[1];

    v8[0] = v5;
    v8[1] = v6;
    Transform.updateScope(nodeList:changed:)(v8, 1, v3, v7);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyNavigationLinkPresentedValue(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 112))(a2, v3, v4) & 1;
}

uint64_t AnyNavigationLinkPresentedValueStorage.matches(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7 - 8];
  outlined init with copy of _Benchmark(v9, v16);
  type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol();
  if (swift_dynamicCast())
  {
    v10 = v15;
    v11 = *(v3 + 16);
    v11(v8, v1 + *(*v1 + 96), v2);
    v11(v5, v10 + *(*v10 + 96), v2);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol()
{
  result = lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol;
  if (!lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorageProtocol);
  }

  return result;
}

double destructiveInjectEnumTag for _PresentationTransitionOutputs.Content(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarRow_iOS and conformance SidebarRow_iOS()
{
  result = lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS;
  if (!lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarRow_iOS, &unk_1EFF93750, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarRow_iOS and conformance SidebarRow_iOS);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<ListLabelStyle>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ScaledMetric<CGFloat>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980AB8]);
    result = swift_getWitnessTable(MEMORY[0x1E6980AC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)
  {
    type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(255);
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for ScaledMetric<CGFloat>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle, &type metadata for ListLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation;
  if (!lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelStyle.PhoneImplementation, &unk_1EFFDB6C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle.PhoneImplementation and conformance ListLabelStyle.PhoneImplementation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation;
  if (!lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelStyle.SimpleImplementation, &unk_1EFFDB630, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle.SimpleImplementation and conformance ListLabelStyle.SimpleImplementation);
  }

  return result;
}

uint64_t type metadata completion function for ListLabelTitleModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ScrollTransitionModifier.StageProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListLabelConfiguration.Resolved(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, type metadata accessor for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>);
    type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0(255, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ListLabelStack;
    v5[1] = lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697FEC0]);
    lazy protocol witness table accessor for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>, type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<ListLabelStack, CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for PlaceholderContentView<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FEC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<LabelStyleConfiguration.Icon> and conformance PlaceholderContentView<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, a2);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for ListLabelTitleModifier<BodyLabelGroupStyle>, &type metadata for BodyLabelGroupStyle, &protocol witness table for BodyLabelGroupStyle, type metadata accessor for ListLabelTitleModifier);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.enumerated<A>(_:)>>.0)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>(255, a2);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>(v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.enumerated<A>(_:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v2;
    v7[5] = v3;
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>(255, a2);
    v6 = v5;
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = &protocol witness table for ListLabelTitleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>()
{
  result = lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>;
  if (!lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>)
  {
    type metadata accessor for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<ModifiedContent<HStack<LabelStyleConfiguration.Icon>, ListLabelIconModifier>, _FrameLayout>?, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, _AlignmentWritingModifier>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>>)>>(255, &lazy cache variable for type metadata for CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>, type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0), &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)> and conformance TupleView<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697DA30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CountViews<LabelStyleConfiguration.Icon, TupleView<(ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)>> and conformance CountViews<A, B>);
  }

  return result;
}

uint64_t static ListLabelStack._makeView(root:inputs:body:)(int *a1, uint64_t a2)
{
  _GraphInputs.interfaceIdiom.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListLabelStack.Child and conformance ListLabelStack.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout();
  return static Layout.makeLayoutView(root:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type ListLabelStack.Child and conformance ListLabelStack.Child()
{
  result = lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child;
  if (!lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelStack.Child, &unk_1EFFDB938, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStack.Child and conformance ListLabelStack.Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout()
{
  result = lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout;
  if (!lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelLayout, &type metadata for ListLabelLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout;
  if (!lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelLayout, &type metadata for ListLabelLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelLayout and conformance ListLabelLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListLabelLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListLabelLayout and conformance ListLabelLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListLabelIconModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelIconModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelIconModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ListLabelIconModifier and conformance ListLabelIconModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ListLabelIconModifier and conformance ListLabelIconModifier()
{
  result = lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier;
  if (!lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabelIconModifier, &type metadata for ListLabelIconModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelIconModifier and conformance ListLabelIconModifier);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListLabelTitleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ListLabelTitleModifier<A>, a3);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance SidebarLabelStyle@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  SidebarRow_iOS.init(configuration:listItemTint:)(&KeyPath, v7);
  v2 = v8[0];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v2;
  *(a1 + 90) = *(v8 + 10);
  v3 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v3;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t SidebarRow_iOS.init(configuration:listItemTint:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  result = swift_getKeyPath();
  *(a2 + 80) = result;
  *(a2 + 88) = 0;
  *(a2 + 96) = v3;
  *(a2 + 104) = v4;
  *(a2 + 105) = v5;
  return result;
}

uint64_t initializeWithCopy for SidebarRow_iOS(uint64_t a1, uint64_t a2)
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
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 57);
  v10 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 57) = v9;
  v11 = *(a2 + 64);
  v12 = *(a2 + 73);
  v13 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v11, v13, v12);
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 73) = v12;
  v14 = *(a2 + 80);
  v15 = *(a2 + 89);
  v16 = *(a2 + 88);
  outlined copy of Environment<CGFloat?>.Content(v14, v16, v15);
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  *(a1 + 89) = v15;
  v17 = *(a2 + 96);
  v18 = *(a2 + 105);
  v19 = *(a2 + 104);
  outlined copy of Environment<ListItemTint?>.Content(v17, v19, v18);
  *(a1 + 96) = v17;
  *(a1 + 104) = v19;
  *(a1 + 105) = v18;
  return a1;
}

double destroy for SidebarRow_iOS(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 57));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 73));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 80), *(a1 + 88), *(a1 + 89));
  v2 = *(a1 + 96);
  v3 = *(a1 + 105);
  v4 = *(a1 + 104);

  return outlined consume of Environment<ListItemTint?>.Content(v2, v4, v3);
}

uint64_t closure #1 in SidebarRow_iOS.stack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(*(a1 + 64), *(a1 + 72) | (*(a1 + 73) << 8));
  if (v5)
  {
    v6 = *(a1 + 16);
    *v13 = *a1;
    *&v13[16] = v6;
    *&v13[25] = *(a1 + 25);
    type metadata accessor for ScaledMetric<CGFloat>(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
    ScaledMetric.wrappedValue.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v15 + 7) = *&v15[7];
  *(&v15[2] + 7) = *&v15[9];
  *(&v15[4] + 7) = v16;
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>(0);
  type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, MEMORY[0x1E6980688]);
  lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  v7 = *v13;
  v8 = *&v13[8];
  *v12 = KeyPath;
  v12[8] = 2;
  *&v12[9] = *v15;
  *&v12[25] = *&v15[2];
  *&v12[41] = *&v15[4];
  *&v12[56] = *(&v16 + 1);
  v9 = *&v12[16];
  *a2 = *v12;
  *(a2 + 16) = v9;
  v10 = *&v12[48];
  *(a2 + 32) = *&v12[32];
  *(a2 + 48) = v10;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(v12, v13, type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
  *v13 = KeyPath;
  v13[8] = 2;
  *&v13[9] = *v15;
  *&v13[25] = *&v15[2];
  *v14 = *&v15[4];
  *&v14[15] = *(&v15[5] + 7);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, LabelStyleConfiguration.Title>)>(v13, type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, LabelStyleConfiguration.Icon, LabelStyleConfiguration.Icon>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier>, &type metadata for LabelStyleConfiguration.Title, MEMORY[0x1E69805A8], MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for LabelStyleConfiguration.Title;
    v4[1] = MEMORY[0x1E69805A0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SidebarRow_iOS.stack.getter@<X0>(uint64_t *a2@<X8>)
{
  result = static HorizontalAlignment.listRowSeparatorLeading.getter();
  *a2 = result;
  a2[1] = closure #1 in closure #1 in closure #1 in SidebarRow_iOS.stack.getter;
  a2[2] = 0;
  return result;
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance ListLabelStyle@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  ListLabelStyle.SimpleImplementation.init(configuration:)(v5);
  *&v4[55] = v5[3];
  *&v4[71] = v5[4];
  *&v4[87] = v6[0];
  *&v4[96] = *(v6 + 9);
  *&v4[7] = v5[0];
  *&v4[23] = v5[1];
  *&v4[39] = v5[2];
  *(a1 + 81) = *&v4[48];
  *(a1 + 97) = *&v4[64];
  *(a1 + 113) = *&v4[80];
  *(a1 + 129) = *&v4[96];
  result = *v4;
  *(a1 + 33) = *v4;
  *(a1 + 49) = *&v4[16];
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 65) = *&v4[32];
  return result;
}

void sub_18C0408D8(uint64_t a3@<X8>)
{
  v4 = ListLabelConfiguration.resolved.getter();
  *a3 = v5 & 1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double ListLabelStyle.SimpleImplementation.init(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  result = v7;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  return result;
}

uint64_t initializeWithCopy for ListLabelStyle.SimpleImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 41);
  v11 = *(a2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v9, v11, v10);
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 41) = v10;
  v12 = *(a2 + 48);
  v13 = *(a2 + 57);
  v14 = *(a2 + 56);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 57) = v13;
  v15 = *(a2 + 64);
  v16 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t initializeWithCopy for ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Environment<EdgeInsets>.Content(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t destroy for ListLabelStyle.SimpleImplementation(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 57));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

double ListLabelConfiguration.resolved.getter()
{
  v1 = *(v0 + 8);
  lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
  EnvironmentValues.subscript.getter();
  ListLabelConfiguration.effectiveIconWidth.getter();
  v3 = v2;
  ListLabelConfiguration.effectiveSpacing.getter();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey;
  if (!lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLayoutKey, &type metadata for AccessibilityLayoutKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey);
  }

  return result;
}

BOOL protocol witness for static DerivedEnvironmentKey.value(in:) in conformance AccessibilityLayoutKey@<W0>(_BYTE *a1@<X8>, uint64_t *a2@<X0>)
{
  result = specialized static AccessibilityLayoutKey.value(in:)(a2);
  *a1 = result;
  return result;
}

BOOL specialized static AccessibilityLayoutKey.value(in:)(uint64_t *a1)
{
  EnvironmentValues.dynamicTypeSize.getter();
  if (v4 - 7 > 4)
  {
    return 0;
  }

  EnvironmentValues.horizontalSizeClass.getter();
  return (v3 & 1) == 0 && v3 != 2;
}

void ListLabelConfiguration.effectiveIconWidth.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelReservedIconWidthKey>, &type metadata for LabelReservedIconWidthKey, &protocol witness table for LabelReservedIconWidthKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v6 == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v4 = 6;
    static Solarium.isEnabled(for:)();
    v5 = v2;
    v6 = v1;
    EnvironmentValues.dynamicTypeSize.getter();
    MEMORY[0x18D0099E0](&v4, &v3);
    v5 = v2;
    v6 = v1;
    EnvironmentValues.pixelLength.getter();
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelReservedIconWidthKey>, &type metadata for LabelReservedIconWidthKey, &protocol witness table for LabelReservedIconWidthKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double ListLabelConfiguration.effectiveSpacing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v4 == 1)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();

      goto LABEL_6;
    }

    return v3;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
LABEL_6:
  if (v4 != 1)
  {
    return v3;
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  v1 = static Solarium.isEnabled(for:)();
  result = 10.0;
  if (v1)
  {
    return 12.0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelIconToTitleSpacingKey>, &type metadata for LabelIconToTitleSpacingKey, &protocol witness table for LabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ListLabelStyle.PhoneImplementation@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v18 = *(v1 + 32);
  v19 = v16;
  v20 = v3;
  v21 = v18;
  v4 = specialized Environment.wrappedValue.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4 & 1;
  v12 = swift_allocObject();
  v13 = v17;
  *(v12 + 16) = v16;
  *(v12 + 32) = v13;
  *(v12 + 48) = v18;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = partial apply for closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter;
  *(a1 + 40) = v12;
  return outlined init with copy of ListLabelStyle.PhoneImplementation(&v16, v15);
}

uint64_t sub_18C0413D4()
{
  outlined consume of Environment<EdgeInsets>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t specialized Environment.wrappedValue.getter()
{
  v1 = *v0;
  if (*(v0 + 32) != 1)
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6465766C6F736552, 0xE800000000000000, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<ListLabelConfiguration.Resolved>, &type metadata for ListLabelConfiguration.Resolved);

    LOBYTE(v1) = v7;
  }

  return v1 & 1;
}

uint64_t outlined init with copy of ListLabelStyle.PhoneImplementation(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  outlined copy of Environment<EdgeInsets>.Content(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

double ListLabelLayout.makeCache(subviews:)@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *v2;
  v9 = *(v2 + 3);
  LOBYTE(v13) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *&v22 = 0xFFF0000000000000;
  BYTE8(v22) = 0;
  *&v23 = 0xFFF0000000000000;
  BYTE8(v23) = 0;
  v25 = 0u;
  v24 = 0u;
  v26 = 1;
  v17 = v8;
  v18 = *(v2 + 8);
  v19 = v9;
  v20 = *(v2 + 2);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  ListLabelLayout.makeChildren(cache:subviews:)(&v21, &v13);
  v10 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v10;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  result = *&v21;
  v12 = v22;
  *a2 = v21;
  *(a2 + 16) = v12;
  return result;
}

double protocol witness for Layout.makeCache(subviews:) in conformance ListLabelLayout@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  ListLabelLayout.makeCache(subviews:)(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t ListLabelLayout.makeChildren(cache:subviews:)(char **a1, int *a2)
{
  v16 = *a2;
  v2 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if ((v2 & 0x8000000000000000) != 0 || result < v2)
  {
    goto LABEL_27;
  }

  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v4 + 3) >> 1)
  {
    if (*(v4 + 2) <= v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = *(v4 + 2);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 0, v4);
  }

  *a1 = v4;
  a1[1] = 0;
  v7 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_28;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v7 < 0 || result < v7)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
LABEL_18:
    v10 = 0.0;
    while (1)
    {
      LayoutSubviews.subscript.getter();
      result = static ViewGeometry.invalidValue.getter();
      *&v19[39] = v22;
      *&v19[55] = v23;
      *&v19[7] = v20;
      *&v19[23] = v21;
      v24 = *(&v23 + 1);
      LOBYTE(v24) = BYTE8(v23);
      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[96 * v13];
      *(v14 + 2) = v17;
      v14[48] = v18;
      *(v14 + 49) = *v19;
      *(v14 + 14) = v24;
      *(v14 + 97) = *&v19[48];
      *(v14 + 81) = *&v19[32];
      *(v14 + 65) = *&v19[16];
      *(v14 + 15) = v10;
      if (v7 - 1 == v8)
      {
        break;
      }

      if (++v8 < 2)
      {
        goto LABEL_18;
      }

      static _GraphInputs.defaultInterfaceIdiom.getter();
      v10 = 4.0;
      if ((static Solarium.isEnabled(for:)() & 1) == 0)
      {
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        *v19 = v16;
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        ViewSpacing.distance(to:along:)();
        v10 = v11;
      }

      v9 = v9 + v10;
      *(a1 + 1) = v9;
    }

    *a1 = v4;
  }

  return result;
}

uint64_t initializeWithCopy for ListLabelLayout.Cache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t ListLabelLayout.spacing(subviews:cache:)@<X0>(uint64_t a2@<X8>)
{
  v3 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = LayoutSubviews.endIndex.getter();
  if (v3 < 0 || v4 < v3)
  {
    goto LABEL_24;
  }

  if (!v3)
  {

    return MEMORY[0x1EEDDD780]();
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (LayoutSubviews.endIndex.getter())
  {
    AbsoluteEdge.Set.init(_:layoutDirection:)();
    LayoutSubviews.subscript.getter();
    LayoutSubview.spacing.getter();
    Spacing.incorporate(_:of:)();
  }

  v5 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    goto LABEL_25;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v5 < 0 || result < v5)
  {
    goto LABEL_26;
  }

  if (v5 < 2)
  {
    goto LABEL_19;
  }

  v7 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    goto LABEL_27;
  }

  result = LayoutSubviews.endIndex.getter();
  if ((v7 & 0x8000000000000000) == 0 && result >= v7)
  {
    if (v7 != 1)
    {
      if (v7)
      {
        LayoutSubviews.endIndex.getter();
        AbsoluteEdge.Set.init(_:layoutDirection:)();
        LayoutSubviews.subscript.getter();
        LayoutSubview.spacing.getter();
        Spacing.incorporate(_:of:)();

        if (v7 != 2)
        {
          for (i = 2; i != v7; ++i)
          {
            LayoutSubviews.endIndex.getter();
            AbsoluteEdge.Set.init(_:layoutDirection:)();
            LayoutSubviews.subscript.getter();
            LayoutSubview.spacing.getter();
            Spacing.incorporate(_:of:)();
          }
        }

        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_19:
    *a2 = v9;
    *(a2 + 8) = 2;
    return result;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return MEMORY[0x1EEDDD780]();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key, MEMORY[0x1E6981A20], MEMORY[0x1E6981A30]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 56)
    {
      v5 = *(i - 1);
      v6 = *i;
      v15 = *(i + 24);
      v16 = *(i + 8);
      v7 = i[40];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, *i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double specialized static ListLabelIconModifier.makeEnvironment(modifier:environment:)(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  EnvironmentValues.defaultForegroundStyle.setter();
  EnvironmentValues.dynamicTypeSize.getter();
  EnvironmentValues.imageScale.setter();

  return result;
}

uint64_t static ListLabelTitleModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v26 - v8;
  v11 = type metadata accessor for ListLabelTitleModifier(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  Value = AGGraphGetValue();
  v30 = v12;
  (*(v12 + 16))(v14, Value, v11);
  v16 = *a2;
  v28 = a2[1];
  v17 = *&v14[*(v11 + 36)];
  v26 = v16;
  v27 = v17;
  v18 = *(a4 + 32);

  v18(v17, v31, a4);
  v19 = a2[1];
  *&v34 = *a2;
  *(&v34 + 1) = v19;
  swift_getAssociatedConformanceWitness();

  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)();
  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  v20 = v26;

  (*(v29 + 8))(v9, AssociatedTypeWitness);
  EnvironmentValues.defaultForegroundStyle.setter();
  v21 = *(a4 + 24);
  v22 = v27;
  v23 = a4;
  v24 = v28;
  v21(v27, v31, v23);
  EnvironmentValues.defaultFont.setter();
  if (!v22)
  {
    v34 = *a2;
    lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
    EnvironmentValues.subscript.getter();
    if (v32 == 1 && v14[*(v11 + 40)] == 1)
    {
      *&v34 = v20;
      *(&v34 + 1) = v24;
      ListLabelConfiguration.effectiveIconWidth.getter();
      v32 = v20;
      v33 = v24;
      ListLabelConfiguration.effectiveSpacing.getter();
      EnvironmentValues.bodyHeadOutdent.setter();
    }
  }

  return (*(v30 + 8))(v14, v11);
}

uint64_t closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of View.enumerated<A>(_:)>>.0(0, a2);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *(a1 + 8);
  v26 = *a1;
  v27 = v13;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(0, &lazy cache variable for type metadata for CountViewsProxy<LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, &protocol witness table for LabelStyleConfiguration.Icon, MEMORY[0x1E697E678]);
  v14 = CountViewsProxy.count.getter() == 0;
  v15 = static VerticalAlignment.center.getter();
  *(swift_allocObject() + 16) = v14;
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>(0, v16);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>> and conformance <> ModifiedContent<A, B>(v17, v18);
  View.enumerated<A>(_:)();

  v25 = 1;
  v19 = *(v7 + 16);
  v19(v9, v12, v6);
  v20 = v25;
  *a3 = v15;
  *(a3 + 8) = 0;
  *(a3 + 16) = v20;
  type metadata accessor for (ModifiedContent<HStack<PlaceholderContentView<LabelStyleConfiguration.Icon>>, ListLabelIconModifier>, <<opaque return type of View.enumerated<A>(_:)>>.0)(0);
  v19((a3 + *(v21 + 48)), v9, v6);
  v22 = *(v7 + 8);
  v22(v12, v6);
  return (v22)(v9, v6);
}

void storeEnumTagSinglePayload for ListLabelTitleModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void closure #2 in closure #1 in closure #1 in ListLabelStyle.PhoneImplementation.body.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(0, a2);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v12 = a1[2];
  *&v13 = *a1;
  v19 = v13;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  MappedViewElement.view.getter();
  v22 = v12;
  v20 = 0uLL;
  v21 = -1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v24 == 255)
  {
    v14 = 0;
  }

  else
  {
    v20 = v23;
    v21 = v24 & 1;
    v14 = ViewContentOffset.offset.getter();
  }

  v15 = v14 + v19;
  if (__OFADD__(v14, v19))
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a3, v10, v7);
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, ListLabelTitleModifier<BodyLabelGroupStyle>>(0, v16);
    v18 = a3 + *(v17 + 36);
    *v18 = v15;
    *(v18 + 8) = (v3 & 1) == 0;
  }
}

uint64_t getEnumTagSinglePayload for ListLabelTitleModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ListLabelLayout(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v8 = *a5;
  v9 = *(a5 + 1);
  v10 = *(a5 + 16);
  v11 = *(a5 + 17);
  v12 = *(v6 + 3);
  v18 = *v6;
  v19 = *(v6 + 8);
  v20 = v12;
  v21 = *(v6 + 2);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  ListLabelLayout.placeChildren(proposal:subviews:cache:)(a1, a2 & 1, a3, a4 & 1, &v14, a6);
  return *(a6 + 48);
}

uint64_t ListLabelLayout.placeChildren(proposal:subviews:cache:)(uint64_t a1, int a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  LODWORD(v14) = a2;
  v107 = *v6;
  v17 = v6[1];
  v16 = v6[2];
  v18 = v6[3];
  LOBYTE(v145) = a2 & 1;
  LOBYTE(v143) = a4 & 1;
  result = static ProposedViewSize.== infix(_:_:)();
  if (result)
  {
    return result;
  }

  v20 = *a6;
  if (!*(*a6 + 16))
  {
    return result;
  }

  *(a6 + 48) = 0;
  v21 = (a6 + 48);
  *(a6 + 56) = 0;
  v22 = ListLabelLayout.Cache.hasIconView.getter(result);
  v23 = 0.0;
  if (v22)
  {
    if (*(v20 + 2) <= 1uLL)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v16;
    }
  }

  v24 = *&a1;
  if (v14)
  {
    v24 = 10.0;
  }

  v103 = v24;
  v108 = v24 - v23;
  LODWORD(v25) = a6;
  v26 = ListLabelLayout.Cache.hasIconView.getter(v22);
  v27 = *(v20 + 2);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_17;
    }

    static ViewDimensions.zero.getter();
    v137 = v143;
    v138 = *v144;
    v139 = *&v144[16];
    ViewGeometry.init(origin:dimensions:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_83;
    }

    if (*(v20 + 2))
    {
      goto LABEL_16;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!v27)
  {
    goto LABEL_17;
  }

  v101 = v23;
  v98 = a1;
  v99 = v14;
  v100 = a6;
  v7 = v130;
  v28 = *(v20 + 3);
  v145 = *(v20 + 2);
  *v146 = v28;
  v29 = *(v20 + 4);
  v30 = *(v20 + 5);
  v31 = *(v20 + 7);
  *&v146[48] = *(v20 + 6);
  *&v146[64] = v31;
  *&v146[16] = v29;
  *&v146[32] = v30;
  LODWORD(v8) = DWORD1(v145);
  v32 = v12;
  a6 = DWORD2(v145);
  v12 = HIDWORD(v145);
  a1 = v146[0];
  v33 = *(v20 + 49);
  v34 = *(v20 + 65);
  v35 = *(v20 + 81);
  v36 = *(v20 + 97);
  *&v130[63] = *(v20 + 14);
  *&v130[32] = v35;
  *&v130[48] = v36;
  *v130 = v33;
  *&v130[16] = v34;
  v118 = *&v146[72];
  v97 = v32;
  v102 = a3;
  v120 = v145;
  v137 = v145;
  LOBYTE(v138) = v146[0] & 1;
  outlined init with copy of ListLabelLayout.Child(&v145, &v143);
  LOBYTE(v143) = 0;
  LOBYTE(v131) = 0;
  LayoutSubview.dimensions(in:)();
  v14 = *(&v143 + 1);
  a3 = v143;
  v37 = *v144;
  v38 = *&v144[16];
  v9 = v17;
  v39 = static HorizontalAlignment.center.getter();
  v143 = __PAIR128__(v14, a3);
  *v144 = v37;
  *&v144[16] = v38;
  MEMORY[0x18D004E80](v39);
  v10 = v18;
  if (v107)
  {
    v40 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v40 = static VerticalAlignment.center.getter();
  }

  *&v143 = a3;
  *(&v143 + 1) = v14;
  *v144 = v37;
  *&v144[16] = v38;
  MEMORY[0x18D004E70](v40);
  *&v143 = a3;
  *(&v143 + 1) = v14;
  *v144 = v37;
  *&v144[16] = v38;

  ViewGeometry.init(origin:dimensions:)();
  *v127 = *&v130[7];
  *&v127[16] = *&v130[23];
  v128 = *&v130[39];
  v129 = *&v130[55];
  outlined destroy of ViewGeometry(v127);
  *&v130[7] = v122;
  *&v130[23] = v124;
  *&v130[39] = v125;
  *&v130[55] = v126;
  *v21 = v17;
  LODWORD(v25) = v120;
  *&v143 = __PAIR64__(v8, v120);
  *(&v143 + 1) = __PAIR64__(v12, a6);
  v144[0] = a1;
  v21 = &v137;
  *&v144[1] = *v130;
  *&v144[64] = *&v130[63];
  *&v144[49] = *&v130[48];
  *&v144[33] = *&v130[32];
  *&v144[17] = *&v130[16];
  v16 = v118;
  *&v144[72] = v118;
  outlined init with copy of ListLabelLayout.Child(&v143, &v137);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_85:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  }

  v18 = v10;
  v23 = v101;

  if (*(v20 + 2))
  {
    v108 = v108 - v9;
    v104 = v9 + v101;
    v45 = *(v20 + 4);
    v46 = *(v20 + 5);
    v47 = *(v20 + 7);
    v134 = *(v20 + 6);
    *v135 = v47;
    *&v132[16] = v45;
    v133 = v46;
    v48 = *(v20 + 3);
    v131 = *(v20 + 2);
    *v132 = v48;
    v49 = *&v144[64];
    *(v20 + 6) = *&v144[48];
    *(v20 + 7) = v49;
    v50 = *&v144[32];
    *(v20 + 4) = *&v144[16];
    *(v20 + 5) = v50;
    v51 = *v144;
    *(v20 + 2) = v143;
    *(v20 + 3) = v51;
    outlined destroy of ListLabelLayout.Child(&v131);
    v52 = *v130;
    *(v7 + 225) = *&v130[16];
    v53 = *&v130[48];
    *(v7 + 241) = *&v130[32];
    *(v21 + 65) = v53;
    *v100 = v20;
    *&v137 = __PAIR64__(v8, LODWORD(v25));
    *(&v137 + 1) = __PAIR64__(v12, a6);
    a6 = v100;
    LOBYTE(v138) = a1;
    *&v142 = *(v7 + 63);
    *(v21 + 17) = v52;
    *(&v142 + 1) = v16;
    outlined destroy of ListLabelLayout.Child(&v137);
    v12 = v97;
    a3 = v102;
    LODWORD(v14) = v99;
    a1 = v98;
    while (1)
    {
      v123 = 1;
      LOBYTE(v145) = v14 & 1;
      LOBYTE(v143) = v12 & 1;
      v54 = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
      if (v55)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v54 - *(a6 + 8) - (v18 + v18);
        v123 = 0;
      }

      v56 = *(v20 + 2);
      v16 = 0.0;
      v105 = v56 - 2;
      if (v56 < 2)
      {
        break;
      }

      v95 = v9;
      v96 = v18;
      v101 = v23;
      v98 = a1;
      v99 = v14;
      v102 = a3;
      v97 = v12;
      v100 = a6;
      v21 = 0;
      *&a1 = 0.0;
      v106 = v104;
      v114 = 0.0;
      while (1)
      {
        v57 = *(v21 + v20 + 160);
        v58 = *(v21 + v20 + 176);
        v59 = *(v21 + v20 + 192);
        *&v146[64] = *(v21 + v20 + 208);
        v60 = *(v21 + v20 + 144);
        v145 = *(v21 + v20 + 128);
        *v146 = v60;
        *&v146[32] = v58;
        *&v146[48] = v59;
        *&v146[16] = v57;
        v61 = *&v146[72];
        v117 = DWORD1(v145);
        v119 = v145;
        v115 = HIDWORD(v145);
        v116 = DWORD2(v145);
        v121 = v60;
        v62 = *(v21 + v20 + 145);
        *&v127[15] = *(v21 + v20 + 160);
        *v127 = v62;
        v109 = v25;
        v110 = v58;
        v111 = *&v146[24];
        v112 = *&v146[56];
        v113 = *&v146[40];
        v18 = v18 + *&v146[72];
        v131 = v145;
        a6 = HIDWORD(v145);
        LODWORD(v8) = DWORD2(v145);
        v12 = v60;
        v132[0] = v60 & 1;
        outlined init with copy of ListLabelLayout.Child(&v145, &v137);
        LOBYTE(v137) = 0;
        v136 = v123;
        LayoutSubview.dimensions(in:)();
        v63 = *(&v137 + 1);
        a3 = v137;
        v23 = *(&v138 + 1);
        v64 = v138;
        v65 = v139;
        v66 = static HorizontalAlignment.leading.getter();
        v137 = __PAIR128__(v63, a3);
        v138 = __PAIR128__(*&v23, v64);
        v139 = v65;
        v9 = v106 + MEMORY[0x18D004E80](v66);
        v131 = __PAIR128__(v63, a3);
        *v132 = __PAIR128__(*&v23, v64);
        *&v132[16] = v65;

        ViewGeometry.init(origin:dimensions:)();
        v7 = *(&v138 + 1);
        v14 = v138;
        v10 = *(&v139 + 1);
        v67 = v139;
        v16 = *(&v140 + 1);
        v68 = v140;
        *&v25 = v127;
        *v130 = *&v127[7];
        *&v130[16] = v111;
        *&v130[24] = v110;
        *&v130[32] = v113;
        *&v130[48] = v112;
        outlined destroy of ViewGeometry(v130);
        *&v127[7] = v137;
        *&v143 = __PAIR64__(v117, v119);
        *(&v143 + 1) = __PAIR64__(v115, v116);
        v144[0] = v121;
        *&v144[1] = *v127;
        *&v144[16] = *(&v137 + 1);
        *&v144[24] = v14;
        *&v144[32] = v7;
        *&v144[40] = v67;
        *&v144[48] = v10;
        *&v144[56] = v68;
        *&v144[64] = v16;
        *&v144[72] = v61;
        outlined init with copy of ListLabelLayout.Child(&v143, &v137);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if ((a1 + 1) >= *(v20 + 2))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v69 = (v21 + v20);
        v70 = *(v21 + v20 + 144);
        v137 = *(v21 + v20 + 128);
        v138 = v70;
        v71 = *(v21 + v20 + 160);
        v72 = *(v21 + v20 + 176);
        v73 = *(v21 + v20 + 208);
        v141 = *(v21 + v20 + 192);
        v142 = v73;
        v139 = v71;
        v140 = v72;
        v74 = *&v144[64];
        v76 = *&v144[16];
        v75 = *&v144[32];
        v69[12] = *&v144[48];
        v69[13] = v74;
        v69[10] = v76;
        v69[11] = v75;
        v77 = *v144;
        v69[8] = v143;
        v69[9] = v77;
        outlined destroy of ListLabelLayout.Child(&v137);
        *&v131 = v14;
        *(&v131 + 1) = v7;
        *v132 = v67;
        *&v132[8] = v10;
        *&v132[16] = v68;
        *&v132[24] = v16;
        ViewDimensions.width.getter();
        if (v107)
        {
          if (*&a1 == 0.0)
          {
            v106 = 0.0;
            v108 = v103;
          }

          else
          {
            v78 = v78 - v104;
          }
        }

        v79 = v114;
        if (v114 <= v78)
        {
          v79 = v78;
        }

        v114 = v79;
        *&v131 = v14;
        *(&v131 + 1) = v7;
        *v132 = v67;
        *&v132[8] = v10;
        *&v132[16] = v68;
        *&v132[24] = v16;
        ViewDimensions.height.getter();
        v9 = v80;
        if (v123)
        {

          v25 = v109;
        }

        else
        {
          *&v131 = v14;
          *(&v131 + 1) = v7;
          *v132 = v67;
          *&v132[8] = v10;
          *&v132[16] = v68;
          *&v132[24] = v16;
          ViewDimensions.height.getter();
          v23 = v81;

          v25 = v109 - v23;
        }

        v18 = v18 + v9;
        *&v131 = __PAIR64__(v117, v119);
        *(&v131 + 1) = __PAIR64__(v115, v116);
        v132[0] = v121;
        *&v132[1] = *v127;
        *&v132[16] = *&v127[15];
        *&v132[24] = v14;
        *&v133 = v7;
        *(&v133 + 1) = v67;
        *&v134 = v10;
        *(&v134 + 1) = v68;
        v135[0] = v16;
        v135[1] = v61;
        result = outlined destroy of ListLabelLayout.Child(&v131);
        if (v105 == a1)
        {
          break;
        }

        v82 = a1 + 2;
        ++a1;
        v21 += 6;
        if (v82 >= *(v20 + 2))
        {
          goto LABEL_79;
        }
      }

      a6 = v100;
      *v100 = v20;
      v83 = v96 + v18;
      *(v100 + 48) = v101 + v95 + v114;
      if (v107)
      {
        a3 = v102;
        LODWORD(v14) = v99;
        a1 = v98;
        if (*(v20 + 2) < 2uLL)
        {
          goto LABEL_89;
        }

        v84 = *(v20 + 11);
        *&v146[16] = *(v20 + 10);
        *&v146[32] = v84;
        v85 = *(v20 + 13);
        *&v146[48] = *(v20 + 12);
        *&v146[64] = v85;
        v86 = *(v20 + 9);
        v145 = *(v20 + 8);
        *v146 = v86;
        outlined init with copy of ListLabelLayout.Child(&v145, &v143);
        static VerticalAlignment.firstTextLineCenter.getter();
        v143 = *&v146[8];
        *v144 = *&v146[24];
        *&v144[16] = *&v146[40];
        *&v144[32] = *&v146[56];
        *&v25 = &v143;
        ViewGeometry.subscript.getter();
        v23 = v87;
        outlined destroy of ListLabelLayout.Child(&v145);
        v12 = v97;
      }

      else
      {
        v23 = v83 * 0.5;
        v12 = v97;
        a3 = v102;
        LODWORD(v14) = v99;
        a1 = v98;
      }

      v9 = -v23;
      v88 = 0.0;
      v147.origin.x = 0.0;
      v147.origin.y = -v23;
      v147.size.width = v114;
      v147.size.height = v83;
      *&v54 = CGRectIsNull(v147);
      if (LOBYTE(v54))
      {
        v89 = 0.0;
        goto LABEL_56;
      }

      if (v83 - v23 >= v9)
      {
        v16 = -v23;
      }

      else
      {
        v16 = v83 - v23;
      }

      if (v83 - v23 < v9)
      {
        v90 = -v23;
      }

      else
      {
        v90 = v83 - v23;
      }

      v89 = 0.0;
      if (v16 > v90)
      {
LABEL_56:
        v18 = v88;
        v16 = v89;
        goto LABEL_57;
      }

      if (v16 >= 0.0)
      {
        v88 = v90;
        v16 = 0.0;
        v18 = 0.0;
        if (v90 >= 0.0)
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      v18 = 0.0;
      v88 = v90;
      v89 = v16;
      if (v90 >= 0.0)
      {
        goto LABEL_56;
      }

LABEL_57:
      if (v16 > v18)
      {
        goto LABEL_81;
      }

LABEL_58:
      v21 = *(v20 + 2);
      if (v21 == 1)
      {
        goto LABEL_66;
      }

      if (v21)
      {
        v9 = v9 - v16;
        v7 = 1;
        a3 = 152;
        v8 = &v145;
        while (1)
        {
          *&v25 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          }

          if (v7 >= *(*&v25 + 16))
          {
            goto LABEL_80;
          }

          v20 = *&v25;
          ++v7;
          v91 = ViewGeometry.origin.modify();
          *(v92 + 8) = v9 + *(v92 + 8);
          v54 = COERCE_DOUBLE(v91(&v145, 0));
          a3 += 96;
          if (v21 == v7)
          {
            *v100 = v25;
            a3 = v102;
            goto LABEL_66;
          }
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      if (!*(v20 + 2))
      {
        goto LABEL_84;
      }

LABEL_16:
      v41 = *(v20 + 104);
      v42 = *(v20 + 72);
      v143 = *(v20 + 56);
      *v144 = v42;
      *&v144[16] = *(v20 + 88);
      *&v144[32] = v41;
      v43 = v145;
      *(v20 + 72) = *v146;
      v44 = *&v146[32];
      *(v20 + 88) = *&v146[16];
      *(v20 + 104) = v44;
      *(v20 + 56) = v43;
      outlined destroy of ViewGeometry(&v143);
      *a6 = v20;
LABEL_17:
      v9 = 0.0;
      v104 = v23;
    }

    v18 = 0.0;
LABEL_66:
    result = ListLabelLayout.Cache.hasIconView.getter(*&v54);
    if ((result & 1) == 0 || !*(v20 + 2))
    {
      goto LABEL_71;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (*(v20 + 2))
      {
LABEL_70:
        v93 = ViewGeometry.origin.modify();
        *(v94 + 8) = *(v94 + 8) - v16;
        result = v93(&v145, 0);
        *a6 = v20;
LABEL_71:
        *(a6 + 56) = v18 - v16;
        *(a6 + 16) = *&a1;
        *(a6 + 24) = v14 & 1;
        *(a6 + 32) = a3;
        *(a6 + 40) = v12 & 1;
        return result;
      }

      goto LABEL_88;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  v20 = result;
  if (*(result + 16))
  {
    goto LABEL_70;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

BOOL ListLabelLayout.Cache.hasIconView.getter(uint64_t a1)
{
  if (*(v1 + 80))
  {
    if (*(*v1 + 16))
    {
      static ProposedViewSize.unspecified.getter();
      LayoutSubview.sizeThatFits(_:)();
      *(v1 + 64) = v3;
      *(v1 + 72) = v2;
      *(v1 + 80) = 0;
      if (v3 > 0.0)
      {
        v4 = v2 <= 0.0;
        return !v4;
      }
    }

    return 0;
  }

  if (*(v1 + 64) <= 0.0)
  {
    return 0;
  }

  v4 = *(v1 + 72) <= 0.0;
  return !v4;
}

uint64_t outlined init with copy of ListLabelLayout.Child(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 6);
  *(a2 + 40) = *(a1 + 5);
  *(a2 + 48) = v4;
  v5 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v5;
  *(a2 + 88) = *(a1 + 11);

  return a2;
}

uint64_t initializeWithCopy for ListLabelLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for ListLabelLayout.Cache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t ListLabelLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, unint64_t a3, char a4, int *a5, uint64_t *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v16 = *a5;
  v17 = *(a5 + 1);
  v18 = *(a5 + 16);
  v19 = *(a5 + 17);
  v20 = *(v10 + 24);
  v46[0] = *v10;
  *&v46[8] = *(v10 + 8);
  *&v46[24] = v20;
  *&v46[32] = *(v10 + 32);
  LODWORD(v42) = v16;
  *(&v42 + 1) = v17;
  LOBYTE(v43) = v18;
  BYTE1(v43) = v19;
  v21 = a2 & 1;
  LOBYTE(v38) = v21;
  LOBYTE(v37[0]) = a4 & 1;
  result = ListLabelLayout.placeChildren(proposal:subviews:cache:)(a1, v21, a3, a4 & 1, &v42, a6);
  v23 = *a6;
  v24 = *(*a6 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = v25[1];
      *v46 = *v25;
      *&v46[16] = v26;
      v27 = v25[2];
      v28 = v25[3];
      v29 = v25[5];
      *&v46[64] = v25[4];
      *&v46[80] = v29;
      *&v46[32] = v27;
      *&v46[48] = v28;
      outlined init with copy of ListLabelLayout.Child(v46, &v42);
      v47.origin.x = a7;
      v47.origin.y = a8;
      v47.size.width = a9;
      v47.size.height = a10;
      CGRectGetMinX(v47);
      v48.origin.x = a7;
      v48.origin.y = a8;
      v48.size.width = a9;
      v48.size.height = a10;
      CGRectGetMinY(v48);
      v38 = *&v46[24];
      v39 = *&v46[40];
      v40 = *&v46[56];
      v41 = *&v46[72];
      outlined init with copy of ListLabelLayout.Child(v46, &v42);
      ViewGeometry.origin.getter();
      if ((~v30 & 0x7FF0000000000000) != 0 || (v30 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        ViewGeometry.origin.getter();
      }

      ViewGeometry.origin.getter();
      if ((~v31 & 0x7FF0000000000000) != 0 || (v31 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        ViewGeometry.origin.getter();
      }

      ViewGeometry.origin.setter();
      v36[0] = v38;
      v36[1] = v39;
      v36[2] = v40;
      v36[3] = v41;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      outlined init with copy of ViewGeometry(v36, &v42);
      LayoutSubview.place(in:layoutDirection:)();
      outlined destroy of ListLabelLayout.Child(v46);
      v37[0] = v32;
      v37[1] = v33;
      v37[2] = v34;
      v37[3] = v35;
      outlined destroy of ViewGeometry(v37);
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      result = outlined destroy of ViewGeometry(&v42);
      v25 += 6;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t ListLabelLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, int *a6, double *a7, double a8)
{
  v12 = *a6;
  v13 = *(a6 + 1);
  v14 = *(a6 + 16);
  v15 = *(a6 + 17);
  v16 = *v8;
  v17 = v8[1];
  v18 = *(v8 + 4);
  v19 = *(v8 + 5);
  LOBYTE(v61) = *v8;
  *(&v61 + 1) = v17;
  v56 = *(v8 + 1);
  *v62 = v56;
  *&v62[16] = v18;
  *&v62[24] = v19;
  LODWORD(v57) = v12;
  *(&v57 + 1) = v13;
  LOBYTE(v58) = v14;
  BYTE1(v58) = v15;
  LOBYTE(v63) = a3 & 1;
  v65 = a5 & 1;
  ListLabelLayout.placeChildren(proposal:subviews:cache:)(a2, a3 & 1, a4, a5 & 1, &v57, a7);
  v63 = 0.0;
  v64 = 1;
  if (static HorizontalAlignment.listRowSeparatorLeading.getter() != a1 || (*&v61 = v18, *(&v61 + 1) = v19, (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0))
  {
    v20 = *a7;
    v21 = *(*a7 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (v20 + 56);
      while (1)
      {
        v61 = *v23;
        *v62 = v23[1];
        *&v62[16] = v23[2];
        *&v62[32] = v23[3];
        *&v24 = COERCE_DOUBLE(ViewGeometry.subscript.getter());
        if ((v25 & 1) == 0)
        {
          v26 = *&v24;
          AlignmentKey.id.getter();
          (*(v27 + 16))(v22, &v63, v26);
          if (__OFADD__(v22++, 1))
          {
            break;
          }
        }

        v23 += 6;
        if (!--v21)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      if (v64)
      {
        *&result = v63;
      }

      else
      {
        *&result = v63 + a8;
      }

      return result;
    }

LABEL_16:
    *&result = 0.0;
    return result;
  }

  v30 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_16;
  }

  v31 = *(v30 + 72);
  v61 = *(v30 + 56);
  *v62 = v31;
  v32 = *(v30 + 104);
  *&v62[16] = *(v30 + 88);
  *&v62[32] = v32;
  *&result = COERCE_DOUBLE(ViewGeometry.subscript.getter());
  if (v33)
  {
    *&result = 0.0;
    v34 = 0;
  }

  else
  {
    v63 = *&result;
    v64 = 0;
    v34 = 1;
  }

  v35 = *(v30 + 16);
  if (v35 < 2)
  {
    return result;
  }

  v36 = *(v30 + 176);
  *&v62[16] = *(v30 + 160);
  *&v62[32] = v36;
  v37 = *(v30 + 208);
  *&v62[48] = *(v30 + 192);
  *&v62[64] = v37;
  v38 = *(v30 + 144);
  v61 = *(v30 + 128);
  *v62 = v38;
  outlined init with copy of ListLabelLayout.Child(&v61, &v57);
  static HorizontalAlignment.leadingText.getter();
  v57 = *&v62[8];
  v58 = *&v62[24];
  v59 = *&v62[40];
  v60 = *&v62[56];
  ViewGeometry.subscript.getter();
  v40 = v39;
  outlined destroy of ListLabelLayout.Child(&v61);
  if (v16)
  {
    if (a7[10])
    {
      if (!*(v30 + 16))
      {
        goto LABEL_29;
      }

      v41 = *(v30 + 48);
      v57 = *(v30 + 32);
      LOBYTE(v58) = v41;
      static ProposedViewSize.unspecified.getter();
      v65 = v42 & 1;
      LayoutSubview.sizeThatFits(_:)();
      a7[8] = v44;
      a7[9] = v43;
      *(a7 + 80) = 0;
      if (v44 <= 0.0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a7[8] <= 0.0)
      {
        goto LABEL_29;
      }

      v43 = a7[9];
    }

    if (v43 > 0.0)
    {
      v40 = v40 - (v17 + *&v56);
    }
  }

LABEL_29:
  AlignmentKey.id.getter();
  (*(v45 + 16))(v34, &v63, v40);
  v46 = v35 - 2;
  if (v35 == 2)
  {
LABEL_33:
    *&result = v63;
  }

  else
  {
    v47 = v34 + 1;
    v48 = (v30 + 224);
    while (1)
    {
      v49 = v48[1];
      v61 = *v48;
      *v62 = v49;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v48[5];
      *&v62[48] = v48[4];
      *&v62[64] = v52;
      *&v62[16] = v50;
      *&v62[32] = v51;
      outlined init with copy of ListLabelLayout.Child(&v61, &v57);
      static HorizontalAlignment.leadingText.getter();
      v57 = *&v62[8];
      v58 = *&v62[24];
      v59 = *&v62[40];
      v60 = *&v62[56];
      ViewGeometry.subscript.getter();
      v54 = v53;
      outlined destroy of ListLabelLayout.Child(&v61);
      AlignmentKey.id.getter();
      *&result = COERCE_DOUBLE((*(v55 + 16))(v47, &v63, v54));
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v47;
      v48 += 6;
      if (!--v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(v17, v13, v15, v12);

  return (*(v10 + 8))(v12, v9);
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v44 = a1;
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
  {
    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v19 = *(*(v7 + 112) + 8);
  v20 = *(v7 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v22 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x98));
    v23 = *v22;
    if (*v22)
    {
      v42[0] = v20;
      v42[1] = v19;
      v24 = v22[1];
      (*(v9 + 16))(v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v8);
      v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      (*(v9 + 32))(v26 + v25, v11, v8);
      v27 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100);
      v28 = *(v27 + 2);
      v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
      v43 = v26;
      if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
      {
        outlined copy of AppIntentExecutor?(v23, v24);
        outlined copy of AppIntentExecutor?(v23, v24);
        v30 = v44;
        v31 = v44;
        v32 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:);
        v33 = v24;
LABEL_30:
        v37 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x108);
        v38 = *v37;
        v39 = v37[8];
        v40 = *(swift_getAssociatedConformanceWitness() + 8);
        (*(v40 + 136))(v38, v39, AssociatedTypeWitness, v40);
        v41 = v43;
        (*(v40 + 120))(1, v32, v43, AssociatedTypeWitness, v40);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23, v33);
        return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32, v41);
      }

      v30 = v44;
      if (v29 == 0x1FFFFFFFCLL)
      {
        v33 = v24;
        outlined copy of AppIntentExecutor?(v23, v24);
        outlined copy of AppIntentExecutor?(v23, v24);
        v34 = v30;
        v32 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:);
        goto LABEL_30;
      }

      v33 = v24;
      if (v29 == 0x1FFFFFFFELL)
      {
LABEL_20:
        outlined copy of AppIntentExecutor?(v23, v24);
        outlined copy of AppIntentExecutor?(v23, v24);
        v35 = v30;
        v32 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplaySupplementaryView:forElementKind:at:);
        goto LABEL_30;
      }

      if (v28 >> 62)
      {
        if ((*v27 & 2) == 0 || !*(v27 + 3) || v28 & 1 | (*(v27 + 1) <= 0.0))
        {
          goto LABEL_20;
        }
      }

      else if (*v27 & 2) == 0 || (*(v27 + 4))
      {
        goto LABEL_20;
      }

      outlined copy of AppIntentExecutor?(v23, v24);
      outlined copy of AppIntentExecutor?(v23, v24);
      v36 = v30;

      v32 = 0;
      v43 = 0;
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t ListCollectionViewCellBase.explicitAlignment(of:at:)(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + direct field offset for ListCollectionViewCellBase.host);
  if (!v4)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69E7D40] & *v3;
  v6 = type metadata accessor for ModifiedContent();
  v13 = *(*(v5 + 176) + 8);
  v14 = lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
  v7 = v4;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, &v13);
  v10 = type metadata accessor for _UIHostingView(0, v6, WitnessTable, v9);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v10, v13, v14);
  v11 = ViewRendererHost.explicitAlignment(of:at:)();

  return v11;
}

uint64_t UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  updated = type metadata accessor for UpdateViewDestinationViewModifier(0, v7, v8, a4);
  v10 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v12 = v31 - v11;
  UpdateViewDestinationViewModifier.RequestWriter.modifier.getter(a1, v13, v31 - v11);
  UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter(&v35);
  v15 = *(&v35 + 1);
  v14 = v35;
  if (*(&v35 + 1) == 2)
  {
    v14 = 0;
    v15 = 1;
  }

  *&v35 = v14;
  *(&v35 + 1) = v15;
  UpdateViewDestinationViewModifier.request(viewListID:)(&v35, updated, v54);
  v16 = outlined consume of Text.LineStyle?(v35, *(&v35 + 1));
  (*(v10 + 8))(v12, updated, v16);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v54, &v35, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  if (v42 >> 1 == 4294967294)
  {
    v17 = &lazy cache variable for type metadata for UpdateViewDestinationRequest?;
    v18 = &type metadata for UpdateViewDestinationRequest;
    v19 = &v35;
LABEL_7:
    outlined destroy of NavigationAuthority?(v19, v17, v18);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = -1;
    goto LABEL_9;
  }

  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v36 + 8, &v55, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined destroy of UpdateViewDestinationRequest(&v35);
  if (v59 >> 1 == 0xFFFFFFFF)
  {
    v17 = &lazy cache variable for type metadata for NavigationRequest?;
    v18 = &type metadata for NavigationRequest;
    v19 = &v55;
    goto LABEL_7;
  }

  outlined init with copy of NavigationRequest.Action(&v55, &v47);
  outlined destroy of NavigationRequest(&v55);
LABEL_9:
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v35 = v47;
  v41[0] = v53;
  v36 = v48;
  v37 = v49;
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v4 + 32, &v41[8], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
  if (v41[0] != 255)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v35, &v55, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    if (v58 == 13)
    {

      v20 = &v56;

      if (v46 != 255)
      {
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v41[8], &v32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        if (v34 == 13)
        {

          v21 = &v32 + 8;
LABEL_18:
          outlined destroy of NavigationLinkSelectionIdentifier(v21);
          outlined destroy of NavigationLinkSelectionIdentifier(v20);
          outlined destroy of NavigationAuthority?(&v41[8], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
          outlined destroy of NavigationAuthority?(&v35, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
          v22 = *(v5 + 20);
          v23 = *(v5 + 24);
          v24 = UpdateViewDestinationViewModifier.RequestWriter.structuralSeed.getter();
          if (v23)
          {
            if ((v24 & 0x100000000) == 0)
            {
LABEL_29:
              memset(v41, 0, sizeof(v41));
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v36 = 0u;
              v35 = 0u;
              v42 = 0x1FFFFFFFCLL;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              goto LABEL_30;
            }
          }

          else if ((v24 & 0x100000000) != 0 || v22 != v24)
          {
            goto LABEL_29;
          }

          _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v54, &v35, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
LABEL_30:
          outlined init with take of NavigationAuthority?(&v35, &v55, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
          goto LABEL_25;
        }

        goto LABEL_22;
      }

LABEL_23:
      outlined destroy of NavigationLinkSelectionIdentifier(v20);
      goto LABEL_24;
    }

    if (v58 == 18)
    {

      v20 = &v57;

      if (v46 != 255)
      {
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v41[8], &v32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        if (v34 == 18)
        {

          v21 = v33;
          goto LABEL_18;
        }

LABEL_22:
        outlined destroy of NavigationRequest.Action(&v32);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    outlined destroy of NavigationRequest.Action(&v55);
  }

LABEL_24:
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v54, &v55, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  outlined destroy of (NavigationRequest.Action?, NavigationRequest.Action?)(&v35);
LABEL_25:
  UpdateViewDestinationViewModifier.RequestWriter.selectionIdentifier.getter(a1, v25, &v47);
  outlined init with copy of NavigationLinkSelectionIdentifier(&v47, &v32);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v55, &v35, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  v26 = swift_allocObject();
  v27 = v33[0];
  v26[1] = v32;
  v26[2] = v27;
  v28 = v33[2];
  v26[3] = v33[1];
  v26[4] = v28;
  outlined init with take of NavigationAuthority?(&v35, (v26 + 5), &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  v31[1] = partial apply for closure #1 in UpdateViewDestinationViewModifier.RequestWriter.updateValue();
  v31[2] = v26;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
  outlined destroy of NavigationLinkSelectionIdentifier(&v47);

  $defer #2 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(v5, v54);
  $defer #1 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(v5, v7, v8, v29);
  outlined destroy of NavigationAuthority?(v54, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  return outlined destroy of NavigationAuthority?(&v55, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
}

uint64_t sub_18C044F90()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  if (*(v0 + 64) != 1)
  {
  }

  v1 = *(v0 + 240) & 0xFFFFFFFFFFFFFFFELL;
  if (v1 != 0x1FFFFFFFCLL)
  {
    if (*(v0 + 88) != 1)
    {
      swift_weakDestroy();

      v1 = *(v0 + 240) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v1 != 0x1FFFFFFFELL)
    {
      switch(*(v0 + 200))
      {
        case 0:
          goto LABEL_37;
        case 1:

          goto LABEL_37;
        case 2:

          __swift_destroy_boxed_opaque_existential_1((v0 + 120));
          break;
        case 3:

          break;
        case 4:
        case 5:

          goto LABEL_37;
        case 6:

          goto LABEL_37;
        case 0xA:
        case 0x11:
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          goto LABEL_37;
        case 0xB:
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));
          break;
        case 0xC:
        case 0xD:

          if (*(v0 + 136))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 112));
          }

          if (*(v0 + 160) != 1)
          {
          }

          goto LABEL_37;
        case 0xE:

          if (*(v0 + 136))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 112));
          }

          v2 = *(v0 + 160);
          goto LABEL_32;
        case 0x12:

          if (*(v0 + 144))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 120));
          }

          if (*(v0 + 168) != 1)
          {
          }

          goto LABEL_37;
        case 0x13:
          if (*(v0 + 128))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 104));
          }

          v2 = *(v0 + 152);
LABEL_32:
          if (v2 == 1)
          {
            break;
          }

          goto LABEL_37;
        case 0x15:
          if (*(v0 + 104))
          {
          }

          if (*(v0 + 120))
          {
LABEL_37:
          }

          break;
        default:
          break;
      }
    }
  }

  return swift_deallocObject();
}

uint64_t UpdateViewDestinationViewModifier.RequestWriter.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(updated - 8) + 16);

  return v6(a3, Value, updated);
}

void UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    v4 = WeakValue[1];
    outlined copy of Text.LineStyle?(*WeakValue, v4);
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  *a1 = v3;
  a1[1] = v4;
}

void UpdateViewDestinationViewModifier.request(viewListID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  if (*(v3 + *(v14 + 60)))
  {
    goto LABEL_8;
  }

  v17 = v11;
  v15 = *v11;
  v16 = v17[1];
  memset(v65, 0, sizeof(v65));
  v18 = *(v3 + *(a2 + 48));
  v66 = 0;
  v67 = v15;
  v68 = v16;
  v69 = v18;
  LOBYTE(v46) = 17;
  MEMORY[0x1EEE9AC00](v15);
  *&v45 = *(a2 + 24);
  outlined copy of Text.LineStyle?(v19, v20);
  static Update.dispatchImmediately<A>(reason:_:)();
  v21 = v58[0];
  v22 = UpdateViewDestinationViewModifier.authorityIsPresenting.getter(a2);
  v23 = v3 + *(a2 + 44);
  v24 = *(v23 + 8);
  if ((v22 & 1) == 0)
  {
    if (v21 && (v24 & 1) == 0)
    {
      v35 = *v23;
      (*(v7 + 16))(v13, v3 + *(a2 + 36), v6);
      v36 = (v3 + *(a2 + 40));
      v37 = v36[1];
      v46 = *v36;
      v47 = v37;
      v48 = v36[2];
      outlined init with copy of NavigationLinkSelectionIdentifier(v65, v58);
      v38 = *v3;
      v39 = *(v3 + 8);
      v40 = *(v3 + 16);
      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + *(a2 + 56), v64, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
      v41 = *(v3 + *(a2 + 64));
      v42 = v41;
      if (v41 == 1)
      {

        v42 = v38;
      }

      outlined copy of Transaction?(v41);
      UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)(v13, &v46, v35, v58, v38, v39, v40, a3, v64, v42, v6, v45);
      goto LABEL_14;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v65);
LABEL_8:
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    return;
  }

  if ((v21 | v24))
  {
    (*(v7 + 16))(v9, v3 + *(a2 + 36), v6);
    v25 = (v3 + *(a2 + 40));
    v26 = v25[1];
    v46 = *v25;
    v47 = v26;
    v48 = v25[2];
    outlined init with copy of NavigationLinkSelectionIdentifier(v65, v58);
    v27 = *(a2 + 56);
    v28 = *(v3 + *(a2 + 52));
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + v27, v64, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)(v9, &v46, v58, v28, v64, v6, a3);
LABEL_14:
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    return;
  }

  v29 = (v3 + *(a2 + 40));
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 2);
  v44 = *(v29 + 1);
  v45 = v32;
  outlined init with copy of NavigationLinkSelectionIdentifier(v65, v64);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v3 + *(a2 + 56), v63, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  *v58 = xmmword_18CD633F0;
  memset(&v58[16], 0, 144);
  v59 = 0x1FFFFFFFELL;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (v45 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of NavigationLinkSelectionIdentifier(v64);
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    v33 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v56 = 0;
    v53 = 0;
    v34 = xmmword_18CD67BD0;
  }

  else
  {
    outlined init with copy of NavigationLinkSelectionIdentifier(v64, &v46);
    LOBYTE(v52) = 19;
    v43 = Transaction.disablesAnimations.getter();
    outlined destroy of NavigationLinkSelectionIdentifier(v64);
    outlined destroy of NavigationLinkSelectionIdentifier(v65);
    v33 = v44;
    v34 = v45;
    *(&v52 + 1) = v30;
    v53 = v31;
    LOBYTE(v56) = v43 & 1;
  }

  v54 = v33;
  v55 = v34;
  v57 = 0;
  outlined assign with take of NavigationRequest?(&v46, &v58[24], &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(v63, v58, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with take of UpdateViewDestinationRequest(v58, a3);
}

double outlined copy of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t UpdateViewDestinationViewModifier.authorityIsPresenting.getter(int *a1)
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v1 + a1[14], v36, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v36[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v36, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    outlined init with take of NavigationAuthority(v36, v42);
    v3 = v1 + a1[10];
    v4 = *(v3 + 32);
    if (v4 >> 1 != 0xFFFFFFFF)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 16);
      v43[0] = *v3;
      v43[1] = v6;
      v44 = v4;
      v45 = v5;
      v7 = *(v1 + a1[12]);
      memset(v38, 0, sizeof(v38));
      v40 = xmmword_18CD633F0;
      v39 = 0;
      v41 = v7;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        swift_beginAccess();
        v10 = v9[8];
        v33 = v9[7];
        v34 = v10;
        v35[0] = v9[9];
        *(v35 + 10) = *(v9 + 154);
        v11 = v9[4];
        v29 = v9[3];
        v30 = v11;
        v12 = v9[6];
        v31 = v9[5];
        v32 = v12;
        v13 = v9[2];
        v27 = v9[1];
        v28 = v13;
        _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(&v27, v25, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

        v36[6] = v33;
        v36[7] = v34;
        v37[0] = v35[0];
        *(v37 + 10) = *(v35 + 10);
        v36[2] = v29;
        v36[3] = v30;
        v36[4] = v31;
        v36[5] = v32;
        v36[0] = v27;
        v36[1] = v28;
        if (getEnumTag for AccessibilityActionCategory.Category(v36) != 1)
        {
          v22 = v33;
          v23 = v34;
          *v24 = v35[0];
          *&v24[10] = *(v35 + 10);
          v18 = v29;
          v19 = v30;
          v20 = v31;
          v21 = v32;
          v16 = v27;
          v17 = v28;
          v14 = NavigationState.isPresentingView(_:from:)(v38, v43);
          outlined destroy of NavigationLinkSelectionIdentifier(v38);
          outlined destroy of NavigationAuthority(v42);
          v25[6] = v22;
          v25[7] = v23;
          v26[0] = *v24;
          *(v26 + 10) = *&v24[10];
          v25[2] = v18;
          v25[3] = v19;
          v25[4] = v20;
          v25[5] = v21;
          v25[0] = v16;
          v25[1] = v17;
          outlined destroy of NavigationState(v25);
          return v14 & 1;
        }
      }

      outlined destroy of NavigationLinkSelectionIdentifier(v38);
    }

    outlined destroy of NavigationAuthority(v42);
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t NavigationState.isPresentingView(_:from:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(v2 + 24);
  v9 = a2[4] >> 62;
  v10 = *a2;
  v11 = v5;
  v12 = v7;
  if (v9)
  {
    if (v9 != 1)
    {
      return 0;
    }

    v10 = v5;
    v11 = v7;
    v12 = v6;
    if (v7 == 6)
    {
      return 0;
    }
  }

  if (!*(v8 + 16))
  {
    return 0;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11, v12);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v13, v21);
  memcpy(__dst, v21, 0x163uLL);
  v15 = NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(a1);
  outlined destroy of NavigationColumnState(__dst);
  if (v15)
  {
    return 1;
  }

  if (!v9)
  {
    v6 = v7;
    goto LABEL_12;
  }

  v4 = v5;
  LOBYTE(v5) = v7;
  if (v7 != 6)
  {
LABEL_12:
    if (v5 - 2 >= 4)
    {
      if (v5 == 1)
      {
        v17 = 2;
      }

      else
      {
        v17 = v6 == 3 ? 1 : 2;
      }

      for (; *(v8 + 16); v17 = 2)
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17, v6);
        if ((v19 & 1) == 0)
        {
          break;
        }

        outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v18, v21);
        memcpy(__dst, v21, 0x163uLL);
        v20 = NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(a1);
        outlined destroy of NavigationColumnState(__dst);
        if (v20)
        {
          return 1;
        }

        if (v17 != 1)
        {
          break;
        }
      }
    }
  }

  return 0;
}

uint64_t NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(void *a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v25);
  if ((v25[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v25, &v19);

    v4 = v24;
    v16 = v21;
    v17 = v22;
    *v18 = *v23;
    *&v18[9] = *&v23[9];
    v14 = v19;
    v15 = v20;
    outlined init with copy of NavigationColumnState.ReplacedRoot?(&v14, v9);
    if (v11 == 255)
    {
      v6 = outlined destroy of NavigationColumnState.ReplacedRoot?(v9, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    else if (v11)
    {
      v12[2] = v9[2];
      v12[3] = v9[3];
      v12[4] = v9[4];
      v13 = v10;
      v12[0] = v9[0];
      v12[1] = v9[1];
      v5 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
      v6 = outlined destroy of NavigationViewDestinationView(v12);
      if (v5)
      {
        outlined destroy of NavigationColumnState.ReplacedRoot?(&v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);

        v3 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = outlined destroy of NavigationColumnState.ReplacedRoot(v9);
    }

    MEMORY[0x1EEE9AC00](v6);
    specialized Sequence.first(where:)(partial apply for closure #1 in NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:), v4, v9);

    v7 = MEMORY[0x1E69E6720];
    outlined destroy of NavigationColumnState.ReplacedRoot?(&v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v3 = *&v9[0] != 0;
    outlined destroy of NavigationColumnState.ReplacedRoot?(v9, &lazy cache variable for type metadata for NavigationViewDestinationView?, &type metadata for NavigationViewDestinationView, v7);
    goto LABEL_15;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v25, &v19);
  if (v23[24] == 255)
  {
    outlined destroy of NavigationColumnState.ReplacedRoot?(&v19, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_12:
    v3 = 0;
    goto LABEL_15;
  }

  if ((v23[24] & 1) == 0)
  {
    outlined destroy of NavigationColumnState.ReplacedRoot(&v19);
    goto LABEL_12;
  }

  v16 = v21;
  v17 = v22;
  *v18 = *v23;
  *&v18[16] = *&v23[16];
  v14 = v19;
  v15 = v20;
  v3 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
  outlined destroy of NavigationViewDestinationView(&v14);
LABEL_15:
  outlined destroy of NavigationColumnState.ColumnContent(v25);
  return v3 & 1;
}

uint64_t outlined init with copy of NavigationColumnState.ReplacedRoot?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationColumnState.ReplacedRoot?(0, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = a2 + 32;
    while (1)
    {
      outlined init with copy of NavigationViewDestinationView(v8, v11);
      result = v7(v11);
      if (v4)
      {
        return outlined destroy of NavigationViewDestinationView(v11);
      }

      if (result)
      {
        break;
      }

      result = outlined destroy of NavigationViewDestinationView(v11);
      v8 += 88;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v9 = v11[3];
    *(a3 + 32) = v11[2];
    *(a3 + 48) = v9;
    *(a3 + 64) = v11[4];
    *(a3 + 80) = v12;
    v10 = v11[1];
    *a3 = v11[0];
    *(a3 + 16) = v10;
  }

  else
  {
LABEL_6:
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t outlined destroy of (NavigationRequest.Action?, NavigationRequest.Action?)(uint64_t a1)
{
  type metadata accessor for (NavigationRequest.Action?, NavigationRequest.Action?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationRequest.Action?, NavigationRequest.Action?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NavigationRequest.Action?, NavigationRequest.Action?))
  {
    type metadata accessor for NavigationAuthority?(255, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationRequest.Action?, NavigationRequest.Action?));
    }
  }
}

double UpdateViewDestinationViewModifier.RequestWriter.selectionIdentifier.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v14 - v7;
  UpdateViewDestinationViewModifier.RequestWriter.viewListID.getter(&v14);
  if (v15 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v14;
  }

  if (v15 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v15;
  }

  UpdateViewDestinationViewModifier.RequestWriter.modifier.getter(a1, v9, v8);
  v12 = *&v8[*(updated + 48)];
  (*(v6 + 8))(v8, updated);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  return result;
}

uint64_t $defer #2 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(a2, v7, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  if (v8[17] >> 1 == 4294967294)
  {
    v3 = &lazy cache variable for type metadata for UpdateViewDestinationRequest?;
    v4 = &type metadata for UpdateViewDestinationRequest;
    v5 = v7;
  }

  else
  {
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v8, v9, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    outlined destroy of UpdateViewDestinationRequest(v7);
    if (v10 >> 1 != 0xFFFFFFFF)
    {
      outlined init with copy of NavigationRequest.Action(v9, v11);
      outlined destroy of NavigationRequest(v9);
      return outlined assign with take of NavigationRequest?(v11, a1 + 32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    }

    v3 = &lazy cache variable for type metadata for NavigationRequest?;
    v4 = &type metadata for NavigationRequest;
    v5 = v9;
  }

  outlined destroy of NavigationAuthority?(v5, v3, v4);
  memset(v11, 0, 96);
  v11[96] = -1;
  return outlined assign with take of NavigationRequest?(v11, a1 + 32, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
}

uint64_t outlined assign with take of NavigationRequest?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationAuthority?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI17NavigationRequestVSgWOdTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AnyAccessibilityValue?(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t $defer #1 <A>() in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateViewDestinationViewModifier.RequestWriter(0, a2, a3, a4);
  v6 = *(updated - 8);
  (*(v6 + 16))(v11, a1, updated);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v8 = *WeakValue;
  }

  else
  {
    v8 = 0;
  }

  v9 = WeakValue == 0;
  result = (*(v6 + 8))(v11, updated);
  *(a1 + 20) = v8;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #1 in UpdateViewDestinationViewModifier.RequestWriter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of NavigationLinkSelectionIdentifier(a2, v6);
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(a3, v5, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
  return specialized Dictionary.subscript.setter(v5, v6);
}

uint64_t outlined destroy of TabEntry?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Bool>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 160) >> 1 == 4294967294)
  {
    v4 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of NavigationLinkSelectionIdentifier(a2);
    return outlined destroy of TabEntry?(v8, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest, v4);
  }

  else
  {
    outlined init with take of UpdateViewDestinationRequest(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of NavigationLinkSelectionIdentifier(a2);
    *v2 = v7;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(*(v9 + 48) + (v7 << 6));
    outlined init with take of UpdateViewDestinationRequest(*(v9 + 56) + 192 * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 160) = 0x1FFFFFFFCLL;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  Hasher.init(_seed:)();
  NavigationLinkSelectionIdentifier.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      outlined init with copy of NavigationLinkSelectionIdentifier(*(v6 + 48) + (v5 << 6), v31);
      _sypSgWOcTm_0(v31, v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      _sypSgWOcTm_0(a1, &v28, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      if (v27[3])
      {
        _sypSgWOcTm_0(v27, v24, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
        if (!*(&v29 + 1))
        {
          outlined destroy of AnyNavigationLinkPresentedValue(v24);
LABEL_4:
          outlined destroy of (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(v27, &lazy cache variable for type metadata for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?), &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
          goto LABEL_5;
        }

        v22[0] = v28;
        v22[1] = v29;
        v23 = v30;
        v9 = v25;
        v10 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v11 = (*(v10 + 112))(v22, v9, v10);
        outlined destroy of AnyNavigationLinkPresentedValue(v22);
        outlined destroy of AnyNavigationLinkPresentedValue(v24);
        _sypSgWOhTm_0(v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
        if ((v11 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (*(&v29 + 1))
        {
          goto LABEL_4;
        }

        _sypSgWOhTm_0(v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      }

      v12 = v8;
      v13 = v3;
      v14 = v32;
      v15 = v33;
      v16 = a1[5];
      v17 = a1[6];
      if (v33 == 1)
      {
        outlined copy of Text.LineStyle?(v32, 1);
        if (v17 != 1)
        {
          outlined copy of Text.LineStyle?(v16, v17);
          goto LABEL_18;
        }

        outlined copy of Text.LineStyle?(v16, 1);
        outlined consume of Text.LineStyle?(v14, 1);
        v3 = v13;
        v8 = v12;
        v6 = v21;
      }

      else
      {
        v27[0] = v32;
        v27[1] = v33;
        if (v17 == 1)
        {
          outlined copy of Text.LineStyle?(v32, v33);
          outlined copy of Text.LineStyle?(v16, 1);
          outlined copy of Text.LineStyle?(v14, v15);

LABEL_18:
          outlined consume of Text.LineStyle?(v14, v15);
          outlined consume of Text.LineStyle?(v16, v17);
          v3 = v13;
          v8 = v12;
          v6 = v21;
          goto LABEL_5;
        }

        v24[0] = v16;
        v24[1] = v17;
        outlined copy of Text.LineStyle?(v32, v33);
        outlined copy of Text.LineStyle?(v16, v17);
        v18 = outlined copy of Text.LineStyle?(v14, v15);
        v19 = MEMORY[0x18D003E10](v27, v24, v18);

        outlined consume of Text.LineStyle?(v14, v15);
        v3 = v13;
        v8 = v12;
        v6 = v21;
        if ((v19 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v34 == a1[7])
      {
        outlined destroy of NavigationLinkSelectionIdentifier(v31);
        return v5;
      }

LABEL_5:
      outlined destroy of NavigationLinkSelectionIdentifier(v31);
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t *UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(void *a1)
{
  v2 = v1;
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 56);
  if (v4 != *AGGraphGetValue() >> 1)
  {
    *(v2 + 56) = *AGGraphGetValue() >> 1;
    *(v2 + 36) = 0xFFFFFFFFLL;
    *(v2 + 44) = 0;
  }

  v5 = a1[2];
  AGGraphGetValue();
  v7 = v6;
  v8 = a1[3];
  type metadata accessor for Optional();
  AGGraphGetValue();
  v10 = v9;
  UpdateViewDestinationRequestProcessor.PreferenceDebouncer.viewListID.getter(&v23);
  if (v24 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v23;
  }

  if (v24 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v24;
  }

  v13 = *(v2 + 48);
  v14 = *AGGraphGetValue();
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = v11;
  v28 = v12;
  v29 = v14;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v16 = *WeakValue;
  }

  else
  {
    v16 = 0;
  }

  v17 = WeakValue == 0;
  outlined init with copy of NavigationLinkSelectionIdentifier(v25, v22);
  v18 = swift_allocObject();
  *(v18 + 28) = v13;
  v19 = v22[1];
  *(v18 + 40) = v22[0];
  *(v18 + 56) = v19;
  v20 = v22[3];
  *(v18 + 72) = v22[2];
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 36) = v7 & 1;
  *(v18 + 37) = v10 & 1;
  *(v18 + 88) = v20;
  *(v18 + 104) = 0;
  type metadata accessor for (_:)();
  AGGraphSetOutputValue();
  outlined destroy of NavigationLinkSelectionIdentifier(v25);

  return $defer #1 <A, B>() in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(v2, v5, v8, a1[4]);
}

uint64_t sub_18C046F28()
{
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  if (v0[11] != 1)
  {
  }

  return swift_deallocObject();
}

void UpdateViewDestinationRequestProcessor.PreferenceDebouncer.viewListID.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for NavigationAuthority?(0, &lazy cache variable for type metadata for _ViewList_ID.Canonical?, MEMORY[0x1E697E088], MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    v4 = WeakValue[1];
    outlined copy of Text.LineStyle?(*WeakValue, v4);
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t *$defer #1 <A, B>() in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(0, a2, a3, a4);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v6 = *result;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(v6);
  if (!result)
  {
    LODWORD(v6) = -1;
    LODWORD(v7) = -1;
  }

  *(a1 + 12) = v6;
  *(a1 + 13) = v7;
  return result;
}

uint64_t closure #1 in UpdateViewDestinationRequestProcessor.PreferenceDebouncer.updateValue()(uint64_t result, unint64_t a2, char a3, uint64_t a4, char a5, char a6, void *a7, char a8)
{
  if ((a3 & 1) == 0)
  {
    if (a4 == a2)
    {
      if ((a4 ^ a2) >> 32)
      {
        if ((a5 & 1) == 0 && (a6 & 1) == 0)
        {
          v9 = *result;
          if (*(*result + 16))
          {
            v10 = a4;
            v11 = a2;
            v12 = a7;
            v13 = a8;
            result = specialized __RawDictionaryStorage.find<A>(_:)(a7);
            a8 = v13;
            a7 = v12;
            LODWORD(a4) = v10;
            v14 = a2;
            LODWORD(a2) = v11;
            if (v14)
            {
              outlined init with copy of UpdateViewDestinationRequest(*(v9 + 56) + 192 * result, v21);
              outlined init with take of UpdateViewDestinationRequest(v21, v24);
              _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
              if (v22 >> 1 == 0xFFFFFFFF)
              {
                outlined destroy of UpdateViewDestinationRequest(v24);
                result = outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
              }

              else
              {
                outlined init with copy of NavigationRequest.Action(v21, &v17);
                outlined destroy of NavigationRequest(v21);
                if (v20 == 14)
                {

                  outlined destroy of NavigationLinkSelectionIdentifier(&v18);
                  specialized Dictionary._Variant.removeValue(forKey:)(v12, v21);
                  outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
                  return outlined destroy of UpdateViewDestinationRequest(v24);
                }

                outlined destroy of UpdateViewDestinationRequest(v24);
                result = outlined destroy of NavigationRequest.Action(&v17);
              }

              LODWORD(a4) = v10;
              LODWORD(a2) = v11;
              a7 = v12;
              a8 = v13;
            }
          }
        }
      }
    }

    if (a8)
    {
      return result;
    }

    v15 = a2;
    v16 = a4;
    specialized Dictionary._Variant.removeValue(forKey:)(a7, v21);
    if (v23 >> 1 == 4294967294)
    {
      return outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for UpdateViewDestinationRequest?, &type metadata for UpdateViewDestinationRequest);
    }

    outlined init with take of UpdateViewDestinationRequest(v21, v24);
    if ((a6 & 1) == 0)
    {
      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      if (v22 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      }

      else
      {
        outlined init with copy of NavigationRequest.Action(v21, &v17);
        outlined destroy of NavigationRequest(v21);
        if (v20 == 18)
        {

          outlined destroy of NavigationLinkSelectionIdentifier(&v19);
          if (v16 != v15)
          {
            return outlined destroy of UpdateViewDestinationRequest(v24);
          }
        }

        else
        {
          outlined destroy of NavigationRequest.Action(&v17);
        }
      }

      _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v25, v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      if (v22 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of NavigationAuthority?(v21, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
      }

      else
      {
        outlined init with copy of NavigationRequest.Action(v21, &v17);
        outlined destroy of NavigationRequest(v21);
        if (v20 == 13)
        {

          outlined destroy of NavigationLinkSelectionIdentifier(&v18);
          if (v16 != v15)
          {
            return outlined destroy of UpdateViewDestinationRequest(v24);
          }
        }

        else
        {
          outlined destroy of NavigationRequest.Action(&v17);
        }
      }
    }

    UpdateViewDestinationRequest.enqueue()();
    return outlined destroy of UpdateViewDestinationRequest(v24);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance UpdateViewDestinationRequest.UpdateViewDestinationRequestKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.layoutSubviews()()
{
  v2 = type metadata accessor for ListCollectionViewCellBase(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8), *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0), v0);
  v10.receiver = v1;
  v10.super_class = v2;
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v3 = *(v1 + direct field offset for ListCollectionViewCellBase.host);
    if (v3)
    {
      [*(v1 + direct field offset for ListCollectionViewCellBase.host) bounds];
      Width = CGRectGetWidth(v11);
      v5 = (v1 + direct field offset for ListCollectionViewCellBase.cellHostWidth);
      v6 = v1 + direct field offset for ListCollectionViewCellBase.cellHostWidth + 8;
      if (!*v6 && Width == *v5)
      {
        return;
      }
    }

    else
    {
      v5 = (v1 + direct field offset for ListCollectionViewCellBase.cellHostWidth);
      if (*(v1 + direct field offset for ListCollectionViewCellBase.cellHostWidth + 8))
      {
        return;
      }

      v6 = (v5 + 1);
      Width = 0.0;
    }

    v7 = v1 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    *v5 = Width;
    *v6 = v3 == 0;
  }
}

void @objc ListCollectionViewCellBase.layoutSubviews()(void *a1)
{
  v1 = a1;
  ListCollectionViewCellBase.layoutSubviews()();
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.listCollectionViewSeparatorInsetsChanged(for:)(UICollectionViewCell *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong _cellPreferredSeparatorInsetsChanged_];
}

uint64_t destroy for FocusStore.Entry.Target(void *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v4 = a1 + *(v3 + 32);
    v5 = *(type metadata accessor for SearchFieldState(0) + 36);
    v6 = type metadata accessor for AttributedString();
    v7 = *(*(v6 - 8) + 8);

    return v7(&v4[v5], v6);
  }

  else
  {
    swift_weakDestroy();

    return swift_weakDestroy();
  }
}

uint64_t FocusStore.Entry.searchFieldState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FocusStore.Entry.Target(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3 + *(a1 + 40), v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Binding<SearchFieldState>(v10, a3, type metadata accessor for Binding<SearchFieldState>);
    type metadata accessor for Binding<SearchFieldState>(0);
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  else
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
    return (*(v7 + 8))(v10, v6);
  }
}

void BaseModifier.SelectionObserver.updateValue()()
{
  Attribute = AGWeakAttributeGetAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    AGGraphGetValue();
    v3 = v4 & 1;
  }

  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v7 = v6;
  outlined init with copy of NavigationLinkPresentedValue?(Value, v66, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (*(v0 + 36) == v2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v12 = MEMORY[0x1E69E69B8];
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v13 = AGGraphGetValue();
    v8 = v14;
    outlined init with copy of NavigationLinkPresentedValue?(v13, &v67, &lazy cache variable for type metadata for AnyHashable?, v12);
    v10 = v67;
    v11 = v68;
    v9 = v69;
  }

  v64[0] = v10;
  v64[1] = v11;
  v65 = v9;
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
LABEL_17:
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v64, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    v16 = &lazy cache variable for type metadata for NavigationLinkPresentedValue?;
    v17 = &type metadata for NavigationLinkPresentedValue;
    v18 = v66;
    goto LABEL_18;
  }

  outlined init with copy of NavigationLinkPresentedValue?(WeakValue, v62, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v63 != 1)
  {
    Strong = swift_weakLoadStrong();
    outlined destroy of NavigationAuthority(v62);
    if (Strong)
    {
      swift_beginAccess();
      v20 = Strong[8];
      v50 = Strong[7];
      v51 = v20;
      v52[0] = Strong[9];
      *(v52 + 10) = *(Strong + 154);
      v21 = Strong[4];
      v46 = Strong[3];
      v47 = v21;
      v22 = Strong[6];
      v48 = Strong[5];
      v49 = v22;
      v23 = Strong[2];
      v44 = Strong[1];
      v45 = v23;
      outlined init with copy of NavigationLinkPresentedValue?(&v44, &v67, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

      v59 = v50;
      v60 = v51;
      v61[0] = v52[0];
      *(v61 + 10) = *(v52 + 10);
      v55 = v46;
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v53 = v44;
      v54 = v45;
      if (getEnumTag for AccessibilityActionCategory.Category(&v53) != 1)
      {
        v73 = v59;
        v74 = v60;
        v75[0] = v61[0];
        *(v75 + 10) = *(v61 + 10);
        v69 = v55;
        v70 = v56;
        v71 = v57;
        v72 = v58;
        v67 = v53;
        v68 = v54;
        type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
        v24 = AGGraphGetWeakValue();
        if (v24)
        {
          v25 = *(v24 + 40);
          if (v25 != 1 && ((v3 | v8 | v7) & 1) != 0)
          {
            v36 = *(v24 + 16);
            v37 = *v24;
            v26 = *(v24 + 32) & 1;
            v43 = 11;
            v27 = swift_allocObject();
            swift_weakInit();
            outlined init with copy of NavigationLinkPresentedValue?(v66, v41, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
            v28 = MEMORY[0x1E69E69B8];
            outlined init with copy of NavigationLinkPresentedValue?(v64, v39, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
            v29 = swift_allocObject();
            v30 = v74;
            *(v29 + 120) = v73;
            *(v29 + 136) = v30;
            *(v29 + 152) = v75[0];
            *(v29 + 162) = *(v75 + 10);
            v31 = v70;
            *(v29 + 56) = v69;
            *(v29 + 72) = v31;
            v32 = v72;
            *(v29 + 88) = v71;
            *(v29 + 104) = v32;
            v33 = v68;
            *(v29 + 24) = v67;
            *(v29 + 16) = v27;
            *(v29 + 40) = v33;
            *(v29 + 200) = v36;
            *(v29 + 184) = v37;
            *(v29 + 216) = v26;
            *(v29 + 217) = v76[0];
            *(v29 + 220) = *(v76 + 3);
            *(v29 + 224) = v25;
            v34 = v41[1];
            *(v29 + 232) = v41[0];
            *(v29 + 248) = v34;
            *(v29 + 264) = v42;
            *(v29 + 304) = v40;
            v35 = v39[1];
            *(v29 + 272) = v39[0];
            *(v29 + 288) = v35;
            outlined init with copy of NavigationLinkPresentedValue?(&v44, v38, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

            static Update.enqueueAction(reason:_:)();

            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v44, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v64, &lazy cache variable for type metadata for AnyHashable?, v28);
            _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v66, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);

            return;
          }
        }

        _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v44, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
      }
    }

    goto LABEL_17;
  }

  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v64, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v66, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v16 = &lazy cache variable for type metadata for NavigationAuthority?;
  v17 = &type metadata for NavigationAuthority;
  v18 = v62;
LABEL_18:
  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v18, v16, v17);
}

uint64_t sub_18C0483A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0483E0()
{

  if (v0[8])
  {
  }

  v1 = v0[16];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_10;
    }
  }

  if (v0[18])
  {
  }

  if (v0[21])
  {
  }

LABEL_10:
  if (v0[32] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  }

  if (v0[37])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  }

  return swift_deallocObject();
}

uint64_t NavigationSelectionModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ShouldUseNavigationLinkV4 = type metadata accessor for ShouldUseNavigationLinkV4(0, *(a2 + 16), a3, a4);
  v7 = *v4;
  outlined init with copy of NavigationLinkPresentedValue?((v4 + 8), v17, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  v17[40] = v7;
  outlined init with copy of NavigationLinkPresentedValue?((v4 + 8), &v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  LOBYTE(v18) = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShouldUseNavigationLinkV4<A>, ShouldUseNavigationLinkV4);
  StaticIf<>.init(_:then:else:)();
  swift_getWitnessTable(protocol conformance descriptor for NavigationSelectionModifier<A>, a2, &protocol witness table for LegacyBaseModifier);
  v9 = type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for StaticIf();
  v11 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  MEMORY[0x18D00A570](&v18, v20, v9, v10, v11);
  (*(*(v10 - 8) + 8))(v20, v10);
  v12 = type metadata accessor for ModifiedContent();
  v16[0] = WitnessTable;
  v16[1] = &protocol witness table for BaseModifier;
  v16[2] = &protocol witness table for LegacyBaseModifier;
  v15[0] = v11;
  v15[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v10, v16);
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(*(v12 - 8) + 8);
  v13(&v18, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v20, v12);
}

uint64_t initializeWithCopy for BaseModifier(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 > 1)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v4;
    v5 = result;
    v6 = a2;
    (**(v2 - 8))();
    a2 = v6;
    result = v5;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 32) = *(a2 + 32);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

void *destroy for BaseModifier(void *a1)
{
  if (a1[3] >= 2uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

double closure #1 in BaseModifier.SelectionStateBox.update(state:listKey:presentedValue:tag:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a2[7];
    v14[6] = a2[6];
    v14[7] = v10;
    v15[0] = a2[8];
    *(v15 + 10) = *(a2 + 138);
    v11 = a2[3];
    v14[2] = a2[2];
    v14[3] = v11;
    v12 = a2[5];
    v14[4] = a2[4];
    v14[5] = v12;
    v13 = a2[1];
    v14[0] = *a2;
    v14[1] = v13;
    BaseModifier.SelectionStateBox.updateSelectionState(state:listKey:presentedValue:tag:)(v14, a3, a4, a5);
  }

  return result;
}

void BaseModifier.SelectionStateBox.updateSelectionState(state:listKey:presentedValue:tag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of NavigationLinkPresentedValue?(a3, &v29, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (!*(&v30 + 1))
  {
    outlined destroy of NavigationLinkPresentedValue(&v29);
    goto LABEL_5;
  }

  if (*(&v30 + 1) == 1)
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v29, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
LABEL_5:
    v9 = 2;
    v10 = 1;
    goto LABEL_6;
  }

  v38 = v29;
  v39 = v30;
  v40 = v31;
  v20 = a1[7];
  v35 = a1[6];
  v36 = v20;
  v37[0] = a1[8];
  *(v37 + 10) = *(a1 + 138);
  v21 = a1[3];
  v31 = a1[2];
  v32 = v21;
  v22 = a1[5];
  v33 = a1[4];
  v34 = v22;
  v23 = a1[1];
  v29 = *a1;
  v30 = v23;
  v24 = NavigationState.isSelected(_:in:)(&v38, a2);
  outlined destroy of AnyNavigationLinkPresentedValue(&v38);
  if (v24)
  {
    v19 = 1;
    v9 = 1;
    goto LABEL_14;
  }

  v10 = 0;
  v9 = 0;
LABEL_6:
  outlined init with copy of NavigationLinkPresentedValue?(a4, &v29, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (*(&v30 + 1))
  {
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v11 = a1[7];
    v35 = a1[6];
    v36 = v11;
    v37[0] = a1[8];
    *(v37 + 10) = *(a1 + 138);
    v12 = a1[3];
    v31 = a1[2];
    v32 = v12;
    v13 = a1[5];
    v33 = a1[4];
    v34 = v13;
    v14 = a1[1];
    v29 = *a1;
    v30 = v14;
    outlined init with copy of AnyHashable(&v38, v25);
    outlined init with copy of AnyHashable(v25, &v26);
    type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(0, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AnyNavigationLinkPresentedValueStorage);
    v16 = v15;
    v17 = swift_allocObject();
    v18 = v27;
    *(v17 + 16) = v26;
    *(v17 + 32) = v18;
    *(v17 + 48) = v28;
    *(&v27 + 1) = v16;
    v28 = lazy protocol witness table accessor for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>();
    *&v26 = v17;
    outlined destroy of AnyHashable(v25);
    v19 = NavigationState.isSelected(_:in:)(&v26, a2);
    outlined destroy of AnyHashable(&v38);
    outlined destroy of AnyNavigationLinkPresentedValue(&v26);
    v9 = v19 & 1;
  }

  else
  {
    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v29, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    if (v10)
    {
      v9 = 2;
      goto LABEL_16;
    }

    v19 = 0;
  }

LABEL_14:
  if (swift_weakLoadStrong())
  {
    static Transaction.current.getter();
    *&v29 = *(v5 + 16);
    BYTE8(v29) = v19 & 1;
    lazy protocol witness table accessor for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    LOBYTE(v26) = 1;
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  }

LABEL_16:
  *(v5 + 32) = v9;
}

uint64_t NavigationState.isSelected(_:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  if (v5 == 6)
  {
    v6 = *(v2 + 80);
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    outlined copy of NavigationListState?(v12, v11);
    if (!v11)
    {
LABEL_8:
      v16 = 0;
      return v16 & 1;
    }
  }

  else
  {
    v13 = *(v2 + 24);
    if (!*(v13 + 16))
    {
      goto LABEL_8;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(a2 + 8), v5, *(a2 + 24));
    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }

    outlined init with copy of NavigationColumnState(*(v13 + 56) + 360 * v14, &v18);
    v12 = v23;
    v11 = v24;
    v10 = v25;
    v9 = v26;
    v8 = v27;
    v7 = v28;
    v6 = v29;
    outlined copy of NavigationListState?(v23, v24);
    outlined destroy of NavigationColumnState(&v18);
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  LODWORD(v24) = v6;
  v16 = NavigationListState.isSelected(key:value:)(a2, a1);
  outlined consume of NavigationListState?(v12, v11);
  return v16 & 1;
}

double outlined copy of NavigationListState?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NavigationListState.isSelected(key:value:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (*(v3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of NavigationListState.Selection(*(v3 + 56) + 72 * v5, v14);
    type metadata accessor for Binding<AnyListSelection>(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = (*(v8 + 48))(a2, v7, v8);
    outlined destroy of NavigationListState.Selection(v14);
    outlined destroy of AnyListSelection(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t AnyListSelection.Storage.isSelected(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for SelectionManagerBox(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *(v5 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  v13 = AnyNavigationLinkPresentedValue.isSelected<A>(in:)(v11, v6, v7);
  (*(v9 + 8))(v11, v8);
  return v13 & 1;
}

uint64_t AnyNavigationLinkPresentedValue.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 72))(a1, a2, a3, v7, v8) & 1;
}

uint64_t AnyNavigationLinkPresentedValueStorage.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a3;
  v26[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 96)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v23 = type metadata accessor for SelectionManagerBox(0, a2, v26[0], v22);
    v24 = SelectionManagerBox.isSelected(_:)(v18, v23);
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t lazy protocol witness table accessor for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation()
{
  result = lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation;
  if (!lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BaseModifier.SelectionStateBox.Mutation, &unk_1EFFC58B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BaseModifier.SelectionStateBox.Mutation and conformance BaseModifier.SelectionStateBox.Mutation);
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    result = swift_once();
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v4 = direct field offset for ListCollectionViewCellBase.popUpButtonSeed;
    swift_beginAccess();
    PreferenceValues.subscript.getter();
    v5 = *&v3[v4];
    if (v5 == -1 || v10 == -1 || v5 != v10)
    {
      *&v3[v4] = v10;
      closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)(&v9, v3);
    }

    _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(&v9, type metadata accessor for PreferenceValues.Value<WeakBox<UIButton>?>);
    return swift_endAccess();
  }

  return result;
}

void closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePreferences:)(uint64_t a1, void *a2)
{
  outlined init with copy of UIListContentConfiguration?(a1, v5, type metadata accessor for WeakBox<UIButton>?);
  v3 = type metadata accessor for WeakBox<UIButton>?;
  if (v5[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = type metadata accessor for WeakBox<UIButton>;
  }

  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v5, v3);
  [a2 _setPopupMenuButton_];
}

uint64_t closure #1 in View.transformPlatformItemSelectionBehavior(_:)(uint64_t result, void (*a2)(__int128 *))
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v25 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v2[2])
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
      if (*(result + 16))
      {
LABEL_4:
        v5 = type metadata accessor for PlatformItemList.Item(0);
        v6 = 0;
        v7 = *(v5 - 8);
        result = v5 - 8;
        v8 = *(v7 + 72);
        v9 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 408;
        v10 = v3 - 1;
        do
        {
          v12 = *v9;
          v11 = *(v9 + 8);
          v13 = *(v9 + 16);
          v14 = *(v9 + 32);
          v15 = *(v9 + 48);
          v41 = *(v9 + 64);
          v39 = v14;
          v40 = v15;
          v38 = v13;
          v16 = *(v9 + 16);
          v17 = *(v9 + 32);
          v18 = *(v9 + 48);
          v45 = *(v9 + 64);
          v43 = v17;
          v44 = v18;
          v42 = v16;
          if (v11 != 1)
          {
            *&v33 = v12;
            *(&v33 + 1) = v11;
            v34 = v42;
            v35 = v43;
            v36 = v44;
            v37 = v45;
            v26[0] = v12;
            v26[1] = v11;
            v27 = v38;
            v28 = v39;
            v29 = v40;
            v30 = v41;
            outlined init with copy of PlatformItemList.Item.SelectionBehavior(v26, v31);
            a2(&v33);
            v31[0] = *v9;
            v19 = *(v9 + 16);
            v20 = *(v9 + 32);
            v21 = *(v9 + 48);
            v32 = *(v9 + 64);
            v31[2] = v20;
            v31[3] = v21;
            v31[1] = v19;
            v22 = v36;
            v23 = v35;
            v24 = v34;
            *(v9 + 64) = v37;
            *(v9 + 32) = v23;
            *(v9 + 48) = v22;
            *(v9 + 16) = v24;
            *v9 = v33;
            result = _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v31, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          }

          if (v10 == v6)
          {
            goto LABEL_10;
          }

          ++v6;
          v9 += v8;
        }

        while (v6 < v2[2]);
      }
    }

    __break(1u);
LABEL_10:
    *v25 = v2;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item.SelectionBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t partial apply for closure #1 in StyledNavigationLinkButton.body.getter(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for StyledNavigationLinkButton(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in StyledNavigationLinkButton.body.getter(a1, v8, v3, v4, v5, v6);
}

uint64_t closure #1 in StyledNavigationLinkButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v7 = type metadata accessor for StyledNavigationLinkButton(0, v9);
  result = StyledNavigationLinkButton.isPresentingViewDestinationView.getter(v7);
  if (result)
  {
    *(a1 + 4) = 2;
  }

  return result;
}

uint64_t StyledNavigationLinkButton.isPresentingViewDestinationView.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  return v6;
}

double destroy for PlatformItemList.Item.SelectionBehavior(void *a1)
{
  if (a1[1])
  {
  }

  if (a1[3])
  {
  }

  if (a1[5])
  {
  }

  return result;
}

uint64_t BaseModifier.Child.value.getter@<X0>(_BYTE *a1@<X8>)
{
  Attribute = AGWeakAttributeGetAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v4 = 2;
  }

  else
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v4 = *AGGraphGetValue();
  }

  result = AGWeakAttributeGetAttribute();
  if (result != v3)
  {
    result = AGGraphRegisterDependency();
  }

  if (v4 == 2 || (v4 & 1) == 0)
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
    result = AGGraphGetWeakValue();
    if (result)
    {
      v6 = *(result + 16);
      if (*(result + 40) != 1 && v6 != 6)
      {
        v8 = *(result + 8);
        v9 = *(result + 24);
        type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
        result = AGGraphGetWeakValue();
        if (result)
        {
          outlined init with copy of NavigationLinkPresentedValue?(result, v46, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
          if (v47 == 1)
          {
            result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(v46, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
          }

          else
          {
            Strong = swift_weakLoadStrong();
            result = outlined destroy of NavigationAuthority(v46);
            if (Strong)
            {
              swift_beginAccess();
              v11 = Strong[8];
              v34 = Strong[7];
              v35 = v11;
              v36[0] = Strong[9];
              *(v36 + 10) = *(Strong + 154);
              v12 = Strong[4];
              v30 = Strong[3];
              v31 = v12;
              v13 = Strong[6];
              v32 = Strong[5];
              v33 = v13;
              v14 = Strong[2];
              v28 = Strong[1];
              v29 = v14;
              outlined init with copy of NavigationLinkPresentedValue?(&v28, &v19, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

              v43 = v34;
              v44 = v35;
              v45[0] = v36[0];
              *(v45 + 10) = *(v36 + 10);
              v39 = v30;
              v40 = v31;
              v41 = v32;
              v42 = v33;
              v37 = v28;
              v38 = v29;
              result = getEnumTag for AccessibilityActionCategory.Category(&v37);
              if (result != 1)
              {
                type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
                Value = AGGraphGetValue();
                outlined init with copy of NavigationLinkPresentedValue?(Value, &v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
                if (*(&v20 + 1))
                {
                  if (*(&v20 + 1) == 1)
                  {
                    _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                    result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v19, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
                  }

                  else
                  {
                    v17[0] = v19;
                    v17[1] = v20;
                    v18 = v21;
                    v25 = v43;
                    v26 = v44;
                    v27[0] = v45[0];
                    *(v27 + 10) = *(v45 + 10);
                    v21 = v39;
                    v22 = v40;
                    v23 = v41;
                    v24 = v42;
                    v19 = v37;
                    v20 = v38;
                    v16 = NavigationState.isSelected(_:in:)(v17, v8, v6, v9);
                    outlined destroy of AnyNavigationLinkPresentedValue(v17);
                    result = _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                    if (v16)
                    {
                      LOBYTE(v4) = 1;
                    }
                  }
                }

                else
                {
                  _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(&v28, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
                  result = outlined destroy of NavigationLinkPresentedValue(&v19);
                }
              }
            }
          }
        }
      }
    }
  }

  *a1 = v4;
  return result;
}

uint64_t NavigationState.isSelected(_:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (!*(v5 + 16) || (v6 = a3, v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4), (v11 & 1) == 0))
  {
LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  outlined init with copy of NavigationColumnState(*(v5 + 56) + 360 * v10, v24);
  outlined init with copy of NavigationColumnState.ColumnContent(&v25, v22);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v22);
    goto LABEL_7;
  }

  v12 = v22[12];

  outlined destroy of Binding<NavigationSplitViewColumn>(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 120))(v12, v13, v14);

  if ((v15 & 1) == 0)
  {
LABEL_7:
    if (v6 - 2 >= 4)
    {
      if (v6)
      {
        v19 = 2;
        v18 = a4;
      }

      else
      {
        v18 = a4;
        v19 = a4 == 3 ? 1 : 2;
      }

      if (*(v5 + 16))
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, v19, v18);
        if (v21)
        {
          outlined init with copy of NavigationColumnState(*(v5 + 56) + 360 * v20, v22);
          v16 = NavigationColumnState.ColumnContent.isRoot(_:)(a1);
          outlined destroy of NavigationColumnState(v22);
          outlined destroy of NavigationColumnState(v24);
          return v16 & 1;
        }
      }
    }

    outlined destroy of NavigationColumnState(v24);
    goto LABEL_9;
  }

  outlined destroy of NavigationColumnState(v24);
  v16 = 1;
  return v16 & 1;
}

uint64_t NavigationColumnState.ColumnContent.isRoot(_:)(uint64_t a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v10);
  if ((v10[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v10, v7);

    if (v9 != 255)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v10, v7);
  if (v9 == 255)
  {
    goto LABEL_8;
  }

  if (v9)
  {
LABEL_7:
    outlined destroy of NavigationColumnState.ReplacedRoot(v7);
LABEL_9:
    outlined destroy of NavigationColumnState.ColumnContent(v10);
    v5 = 0;
    return v5 & 1;
  }

LABEL_4:
  v11 = v7[0];
  v12 = v7[1];
  v13 = v8;
  outlined destroy of NavigationColumnState.ColumnContent(v10);
  v3 = *(&v12 + 1);
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  v5 = (*(v4 + 112))(a1, v3, v4);
  outlined destroy of AnyNavigationLinkPresentedValue(&v11);
  return v5 & 1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance PlatformItemNavigationSelectionStyleModifier@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in PlatformItemNavigationSelectionStyleModifier.body(content:);
  *(result + 24) = v4;
  *a1 = partial apply for closure #1 in View.transformPlatformItemSelectionBehavior(_:);
  a1[1] = result;
  return result;
}

uint64_t sub_18C04A1A8()
{

  return swift_deallocObject();
}

_BYTE *partial apply for closure #1 in PlatformItemNavigationSelectionStyleModifier.body(content:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  *result = 0;
  if (v2 != 2)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    result[4] = v3;
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v37 = *MEMORY[0x1E69E7D40] & *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlatformItemList.containerSelectionBehavior.getter(a1, v43);
  v12 = v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior;
  v13 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32);
  v14 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48);
  v15 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior);
  v45[1] = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16);
  v45[2] = v13;
  v45[3] = v14;
  v46 = *(v3 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 64);
  v45[0] = v15;
  v16 = v43[1];
  *v12 = v43[0];
  *(v12 + 1) = v16;
  v17 = v43[3];
  *(v12 + 2) = v43[2];
  *(v12 + 3) = v17;
  v12[64] = v44;
  outlined destroy of AnyAccessibilityValue?(v45, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  PlatformItemList.containerSecondaryNavigationBehavior.getter(a1, &v47);
  v18 = direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior;
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item.SecondaryNavigationBehavior?(&v47, v3 + v18);
  swift_endAccess();
  v19 = *(v12 + 1);
  v47 = *v12;
  v48 = v19;
  v20 = *(v12 + 3);
  v49 = *(v12 + 2);
  v50 = v20;
  v51 = v12[64];
  result = *(&v47 + 1);
  if (*(&v47 + 1) != 1)
  {
    v36 = v6;
    v22 = BYTE4(v47);
    v23 = *(&v48 + 1);
    v24 = v49;
    v25 = v50;
    outlined copy of AppIntentExecutor?(*(&v47 + 1), v48);
    outlined copy of AppIntentExecutor?(v23, v24);
    outlined copy of AppIntentExecutor?(*(&v24 + 1), v25);
    [v3 alpha];
    if (v26 == 0.0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v27 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      v29 = v39;
      *(v28 + 16) = v38;
      *(v28 + 24) = v29;
      *(v28 + 32) = v3;
      *(v28 + 40) = v22 == 2;
      v42[4] = partial apply for closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:);
      v42[5] = v28;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 1107296256;
      v42[2] = thunk for @escaping @callee_guaranteed () -> ();
      v42[3] = &block_descriptor_49;
      v30 = _Block_copy(v42);
      v31 = v3;

      static DispatchQoS.unspecified.getter();
      v42[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      type metadata accessor for [DispatchWorkItemFlags](0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x18D00DA20](0, v11, v8, v30);
      _Block_release(v30);

      outlined destroy of AnyAccessibilityValue?(&v47, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      (*(v36 + 8))(v8, v5);
      return (*(v40 + 8))(v11, v41);
    }

    else
    {
      v32 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v32 + 1);
        ObjectType = swift_getObjectType();
        (*(v33 + 8))(v3, v22 == 2, *(v37 + 168), *(v37 + 176), ObjectType, v33);
        swift_unknownObjectRelease();
      }

      return outlined destroy of AnyAccessibilityValue?(&v47, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    }
  }

  return result;
}

uint64_t sub_18C04A6F4()
{

  return swift_deallocObject();
}

uint64_t PlatformItemList.containerSelectionBehavior.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v46 = 0;
    result = 0;
    v47 = 0;
    v42 = 1;
    goto LABEL_50;
  }

  v58 = a2;
  v9 = 0;
  LODWORD(v60) = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v10 = *(v5 + 72);
  v63 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v64 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v11 = v63 + v10 * v9;
  v12 = v9;
  while (1)
  {
    outlined init with copy of PlatformItemList.Item(v11, v7);
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_52;
    }

    v13 = *(v7 + 456);
    v70 = *(v7 + 440);
    v71 = v13;
    v72 = v7[472];
    v14 = *(v7 + 424);
    v68 = *(v7 + 408);
    v69 = v14;
    outlined init with copy of PlatformItemList.Item.SystemItem?(&v68, v67, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    _s7SwiftUI16CommandOperationVWOhTm_0(v7, type metadata accessor for PlatformItemList.Item);
    v15 = *(&v68 + 1);
    if (*(&v68 + 1) != 1)
    {
      if ((BYTE1(v68) & 1) == 0)
      {
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v68, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        goto LABEL_8;
      }

      v16 = *(&v70 + 1);
      v56 = v71;
      v55 = v70;
      v57 = *(&v69 + 1);
      v50 = BYTE4(v68);
      v54 = v68;
      v53 = BYTE2(v68);
      v60 = *(&v70 + 1);
      if (*(&v68 + 1))
      {
        v17 = v69;
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        *(v18 + 24) = v17;
        v52 = v18;
        outlined copy of AppIntentExecutor?(v15, v17);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
        }

        v20 = v64[2];
        v19 = v64[3];
        v51 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v64);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v15, v17);
        v21 = v64;
        v64[2] = v51;
        v22 = &v21[2 * v20];
        v23 = v52;
        v22[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
        v22[5] = v23;
        v16 = v60;
      }

      v24 = v57;
      if (v57)
      {
        v25 = swift_allocObject();
        v26 = v55;
        *(v25 + 16) = v24;
        *(v25 + 24) = v26;
        outlined copy of AppIntentExecutor?(v24, v26);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
        }

        v28 = v65[2];
        v27 = v65[3];
        if (v28 >= v27 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v65);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v57, v55);
        v29 = v65;
        v65[2] = v28 + 1;
        v30 = &v29[2 * v28];
        v30[4] = partial apply for thunk for @callee_guaranteed () -> ();
        v30[5] = v25;
        v16 = v60;
      }

      if (v16)
      {
        v31 = swift_allocObject();
        *(v31 + 16) = v16;
        v32 = v16;
        v33 = v56;
        *(v31 + 24) = v56;
        outlined copy of AppIntentExecutor?(v32, v33);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
        }

        v35 = v66[2];
        v34 = v66[3];
        if (v35 >= v34 >> 1)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v66);
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v60, v56);
        v36 = v66;
        v66[2] = v35 + 1;
        v37 = &v36[2 * v35];
        v37[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned ()?) -> (@unowned Bool);
        v37[5] = v31;
      }

      v62 |= v53;
      v11 = v61 | v54;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v68, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      v61 = v11;
      if (v59)
      {
        if (v9 == v8)
        {
LABEL_54:
          a2 = v58;
          goto LABEL_38;
        }

        LODWORD(v60) = 1;
        if (v9 < v8)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 == v8)
        {
LABEL_53:
          v59 = v50;
          goto LABEL_54;
        }

        LODWORD(v60) = 1;
        v59 = v50;
        if (v9 < v8)
        {
          goto LABEL_3;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_8:
    if (v9 == v8)
    {
      break;
    }

    ++v12;
    v11 += v10;
    if (v9 >= v8)
    {
      goto LABEL_51;
    }
  }

  if ((v60 & 1) == 0)
  {

    v41 = 0;
    v44 = 0;
    v43 = 0;
    v46 = 0;
    result = 0;
    v47 = 0;
    v42 = 1;
    a2 = v58;
    goto LABEL_50;
  }

  a2 = v58;
  LOBYTE(v11) = v61;
LABEL_38:
  v38 = v65;
  v39 = v66;
  v40 = v64;
  if (v64[2])
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = partial apply for specialized closure #1 in PlatformItemList.containerSelectionBehavior.getter;
    if (v38[2])
    {
      goto LABEL_40;
    }

LABEL_45:

    v44 = 0;
    v43 = 0;
    if (!v39[2])
    {
      goto LABEL_46;
    }

LABEL_41:
    result = swift_allocObject();
    *(result + 16) = v39;
    v46 = partial apply for specialized closure #3 in PlatformItemList.containerSelectionBehavior.getter;
  }

  else
  {

    v42 = 0;
    v41 = 0;
    if (!v38[2])
    {
      goto LABEL_45;
    }

LABEL_40:
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    v44 = partial apply for specialized closure #2 in PlatformItemList.containerSelectionBehavior.getter;
    if (v39[2])
    {
      goto LABEL_41;
    }

LABEL_46:

    v46 = 0;
    result = 0;
  }

  v48 = 0x10000;
  if ((v62 & 1) == 0)
  {
    v48 = 0;
  }

  v47 = v48 & 0xFFFFFFFFFFFFFFFELL | (v59 << 32) | v11 & 1 | 0x100;
LABEL_50:
  *a2 = v47;
  *(a2 + 8) = v42;
  *(a2 + 16) = v41;
  *(a2 + 24) = v44;
  *(a2 + 32) = v43;
  *(a2 + 40) = v46;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_18C04AE5C()
{

  return swift_deallocObject();
}

uint64_t sub_18C04AE94()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.SelectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double PlatformItemList.containerSecondaryNavigationBehavior.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item(0) - 8;
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    a2[5] = 0;
    a2[6] = 0;
    a2[4] = 0;
    return result;
  }

  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  while (1)
  {
    outlined init with copy of PlatformItemList.Item(v10, v8);
    outlined init with copy of PlatformItemList.Item.SystemItem?((v8 + 840), &v16, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
    if (*(&v17 + 1) != 1)
    {
      break;
    }

    v12 = &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?;
    v13 = &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior;
LABEL_4:
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v16, v12, v13);
    v10 += v11;
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  outlined init with copy of PlatformItemList.Item.SystemItem?(&v20, &v16, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  if (!*(&v17 + 1))
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(&v20);
    v12 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
    v13 = &type metadata for AnyNavigationLinkPresentedValue;
    goto LABEL_4;
  }

  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v16, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  v14 = v21;
  *a2 = v20;
  *(a2 + 1) = v14;
  result = *&v22;
  *(a2 + 2) = v22;
  a2[6] = v23;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatformItemList.Item.SecondaryNavigationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t outlined assign with take of PlatformItemList.Item.SecondaryNavigationBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void UICollectionViewListCoordinatorBase.listCollectionViewCell<A>(_:platformItemIsSelected:)(_BYTE *a1, int a2)
{
  v123 = a2;
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v124 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v104 - v8;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v104 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  v25 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v104 - v27;
  MEMORY[0x1EEE9AC00](v29);
  if (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD8)))
  {
    return;
  }

  v34 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 16];
  v125 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior];
  v126 = v34;
  v35 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 48];
  v127 = *&a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 32];
  v128 = v35;
  v129 = a1[direct field offset for ListCollectionViewCellBase.selectionBehavior + 64];
  if (*(&v125 + 1) == 1 || (BYTE1(v125) & 1) == 0 || (v125 & 1) != 0)
  {
    return;
  }

  v118 = v33;
  v117 = v15;
  v114 = v12;
  v116 = v18;
  v115 = v6;
  v121 = &v104 - v31;
  v119 = v32;
  v122 = v30;
  v36 = *(&v126 + 1);
  v37 = v127;
  v38 = v128;
  outlined copy of AppIntentExecutor?(*(&v125 + 1), v126);
  outlined copy of AppIntentExecutor?(v36, v37);
  outlined copy of AppIntentExecutor?(*(&v37 + 1), v38);
  v120 = a1;
  v39 = [a1 _collectionView];
  if (!v39)
  {
LABEL_19:
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    return;
  }

  v40 = v39;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v41 = swift_dynamicCastClass();
  if (!v41)
  {

    goto LABEL_19;
  }

  v42 = v41;
  v43 = v40;
  v44 = [v42 indexPathForCell_];
  if (!v44)
  {

    goto LABEL_19;
  }

  v113 = v43;
  v45 = v44;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v119;
  v47 = v119[4];
  v48 = v121;
  v49 = v28;
  v50 = v122;
  v106 = v119 + 4;
  v105 = v47;
  v47(v121, v49, v122);
  v112 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  v51 = v46[2];
  v108 = v46 + 2;
  v107 = v51;
  v51(v24, v48, v50);
  v52 = v46[7];
  v110 = v46 + 7;
  v109 = v52;
  v52(v24, 0, 1, v50);
  v53 = *(v124 + 48);
  v54 = MEMORY[0x1E6969C28];
  v55 = v42;
  v56 = MEMORY[0x1E69E6720];
  v111 = v55;
  outlined init with copy of SwipeActions.Configuration?(v55 + v112, v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  v112 = v53;
  v57 = v46;
  outlined init with copy of SwipeActions.Configuration?(v24, &v9[v53], &lazy cache variable for type metadata for IndexPath?, v54, v56, _s10Foundation9IndexPathVSgMaTm_1);
  v59 = v46 + 6;
  v58 = v46[6];
  if (v58(v9, 1, v50) == 1)
  {
    _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    if (v58(&v9[v112], 1, v122) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v60 = v113;

      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      (v57[1])(v121, v122);
      return;
    }
  }

  else
  {
    outlined init with copy of SwipeActions.Configuration?(v9, v21, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    v61 = v112;
    if (v58(&v9[v112], 1, v122) != 1)
    {
      v104 = v58;
      v112 = v59;
      v69 = v118;
      v70 = v122;
      v105(v118, &v9[v61], v122);
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = v57[1];
      v72(v69, v70);
      v73 = MEMORY[0x1E6969C28];
      v74 = MEMORY[0x1E69E6720];
      _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v72(v21, v70);
      v75 = v73;
      v59 = v112;
      v76 = v74;
      v57 = v119;
      _s10Foundation9IndexPathVSgWOhTm_1(v9, &lazy cache variable for type metadata for IndexPath?, v75, v76);
      v62 = v111;
      if (v71)
      {
        v77 = v113;

        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        v72(v121, v122);
        return;
      }

      goto LABEL_16;
    }

    _s10Foundation9IndexPathVSgWOhTm_1(v24, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    (v57[1])(v21, v122);
  }

  v104 = v58;
  _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v9, type metadata accessor for (IndexPath?, IndexPath?));
  v62 = v111;
LABEL_16:
  v63 = [v62 isEditing];
  v64 = v113;

  if (v63)
  {
    (v57[1])(v121, v122);
LABEL_18:

    goto LABEL_19;
  }

  v65 = v121;
  if (v123)
  {
    v66 = v116;
    v67 = v122;
    v107(v116, v121, v122);
    v109(v66, 0, 1, v67);
    v68 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v66, v2 + v68, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    if (([v120 isSelected] & 1) == 0)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v62 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      (v57[1])(v65, v122);
      return;
    }

    (v57[1])(v65, v122);
    goto LABEL_18;
  }

  v112 = v59;
  if ([v120 isSelected])
  {
    v78 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v62 deselectItemAtIndexPath:v78 animated:0];
  }

  v79 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  swift_beginAccess();
  v80 = v117;
  v81 = v122;
  v107(v117, v65, v122);
  v109(v80, 0, 1, v81);
  v82 = *(v124 + 48);
  v83 = MEMORY[0x1E6969C28];
  v84 = MEMORY[0x1E69E6720];
  v124 = v79;
  v85 = v2 + v79;
  v86 = v82;
  v87 = v115;
  outlined init with copy of SwipeActions.Configuration?(v85, v115, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  outlined init with copy of SwipeActions.Configuration?(v80, v87 + v86, &lazy cache variable for type metadata for IndexPath?, v83, v84, _s10Foundation9IndexPathVSgMaTm_1);
  v88 = v104;
  if (v104(v87, 1, v81) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

    _s10Foundation9IndexPathVSgWOhTm_1(v80, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    v89 = v122;
    (v57[1])(v121, v122);
    if (v88(v87 + v86, 1, v89) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v87, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
LABEL_37:
      v102 = v116;
      v109(v116, 1, 1, v122);
      v103 = v124;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v102, v2 + v103, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      swift_endAccess();
      return;
    }

LABEL_35:
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v87, type metadata accessor for (IndexPath?, IndexPath?));
    return;
  }

  v91 = v121;
  v92 = v114;
  outlined init with copy of SwipeActions.Configuration?(v87, v114, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  if (v88(v87 + v86, 1, v122) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

    _s10Foundation9IndexPathVSgWOhTm_1(v117, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    v93 = v57[1];
    v94 = v122;
    v93(v91, v122);
    v93(v92, v94);
    goto LABEL_35;
  }

  v95 = v118;
  v96 = v122;
  v105(v118, (v87 + v86), v122);
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
  v123 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

  v97 = v91;
  v98 = v57[1];
  v98(v95, v96);
  v99 = MEMORY[0x1E6969C28];
  v100 = v87;
  v101 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(v117, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  v98(v97, v96);
  v98(v92, v96);
  _s10Foundation9IndexPathVSgWOhTm_1(v100, &lazy cache variable for type metadata for IndexPath?, v99, v101);
  if (v123)
  {
    goto LABEL_37;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance BaseModifier.SelectionStateBox.Mutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    return AGGraphSetValue();
  }

  return result;
}

uint64_t ListLabelLayout.updateCache(_:subviews:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = *(v2 + 3);
  v16 = *(v2 + 2);
  a1[8] = 0;
  a1[9] = 0;
  *(a1 + 80) = 1;
  a1[2] = 0xFFF0000000000000;
  *(a1 + 24) = 0;
  a1[4] = 0xFFF0000000000000;
  *(a1 + 40) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16));
  }

  else
  {
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15ListLabelLayout33_46E184F179717CA4D1066F6C1EAE4B61LLV5ChildV_Tt1g5(0, *(v13 + 24) >> 1);

    *a1 = v14;
  }

  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v16;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  return ListLabelLayout.makeChildren(cache:subviews:)(a1, &v17);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + (result << 6) + (a3 << 6);
  v10 = (v6 + 32 + (a2 << 6));
  if (result != v10 || result >= v10 + 64 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, v9 << 6);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  if (result != v13 || result >= v13 + 104 * v12)
  {
    result = memmove(result, v13, 104 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 72 * a3;
  v12 = v7 + 32 + 72 * a2;
  if (result < v12 || result >= v12 + 72 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  type metadata accessor for (tag: String, item: String)();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 96 * result + 96 * a3;
  v10 = (v6 + 32 + 96 * a2);
  v11 = 96 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIKitProxyFocusItem, &protocol descriptor for UIKitProxyFocusItem, 0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 320 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 320 * a3;
  v13 = (v7 + 32 + 320 * a2);
  v14 = 320 * v12;
  v15 = v13 + 320 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 40 * result + 40 * a3;
  v10 = (v6 + 32 + 40 * a2);
  v11 = 40 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t assignWithCopy for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v4, v5, v6, v7, v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  outlined consume of Environment<EdgeInsets>.Content(v9, v10, v11, v12, v13);
  v14 = *(a2 + 72);
  LOBYTE(v5) = *(a2 + 80);
  outlined copy of Environment<Bool>.Content();
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  *(a1 + 72) = v14;
  *(a1 + 80) = v5;
  outlined consume of Environment<Bool>.Content(v15, v16);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  v21 = *(a2 + 120);
  v22 = *(a2 + 128);
  v23 = *(a2 + 136);
  v24 = *(a2 + 144);
  outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(v17, v18, v19, v20, v21, v22, v23, v24);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  v29 = *(a1 + 120);
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v20;
  *(a1 + 120) = v21;
  *(a1 + 128) = v22;
  *(a1 + 136) = v23;
  *(a1 + 144) = v24;
  outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v25, v26, v27, v28, v29, v30, v31, v32);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t assignWithCopy for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1);
    v4 = *(a2 + 70);
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
    }

    else if (v4 == 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      v7 = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 64) = v7;
    }

    *(a1 + 70) = v4;
  }

  v8 = *(a2 + 352);
  if (*(a1 + 352))
  {
    if (v8)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
      v10 = *(a1 + 160);
      v11 = *(a2 + 160);
      if (v10 != 1)
      {
        if (v11 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 136);
          v18 = *(a2 + 168);
          v19 = *(a2 + 152);
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = v19;
          *(a1 + 168) = v18;
        }

        else
        {
          if (v10)
          {
            v20 = (a1 + 136);
            if (v11)
            {
              __swift_assign_boxed_opaque_existential_1(v20, (a2 + 136));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v20);
              v40 = *(a2 + 168);
              v41 = *(a2 + 152);
              *(a1 + 136) = *(a2 + 136);
              *(a1 + 152) = v41;
              *(a1 + 168) = v40;
            }
          }

          else if (v11)
          {
            *(a1 + 160) = v11;
            *(a1 + 168) = *(a2 + 168);
            (**(v11 - 8))(a1 + 136, a2 + 136);
          }

          else
          {
            v42 = *(a2 + 136);
            v43 = *(a2 + 152);
            *(a1 + 168) = *(a2 + 168);
            *(a1 + 152) = v43;
            *(a1 + 136) = v42;
          }

          *(a1 + 176) = *(a2 + 176);
        }

        goto LABEL_40;
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v12 = *(a2 + 136);
          v13 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v13;
          *(a1 + 136) = v12;
LABEL_40:
          v44 = *(a2 + 184);
          *(a1 + 192) = *(a2 + 192);
          *(a1 + 184) = v44;
          v45 = (a1 + 200);
          v46 = (a2 + 200);
          v47 = *(a2 + 312);
          if (*(a1 + 312) == 1)
          {
            if (v47 == 1)
            {
              v48 = *(a2 + 216);
              *v45 = *v46;
              *(a1 + 216) = v48;
              v49 = *(a2 + 232);
              v50 = *(a2 + 248);
              v51 = *(a2 + 280);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 280) = v51;
              *(a1 + 232) = v49;
              *(a1 + 248) = v50;
              v52 = *(a2 + 296);
              v53 = *(a2 + 312);
              v54 = *(a2 + 328);
              *(a1 + 344) = *(a2 + 344);
              *(a1 + 312) = v53;
              *(a1 + 328) = v54;
              *(a1 + 296) = v52;
            }

            else
            {
              v62 = *v46;
              *(a1 + 208) = *(a2 + 208);
              *v45 = v62;
              v63 = *(a2 + 216);
              *(a1 + 224) = *(a2 + 224);
              *(a1 + 216) = v63;
              *(a1 + 225) = *(a2 + 225);
              *(a1 + 226) = *(a2 + 226);
              *(a1 + 227) = *(a2 + 227);
              *(a1 + 228) = *(a2 + 228);
              *(a1 + 232) = *(a2 + 232);
              *(a1 + 240) = *(a2 + 240);
              *(a1 + 248) = *(a2 + 248);
              *(a1 + 256) = *(a2 + 256);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 272) = *(a2 + 272);
              *(a1 + 280) = *(a2 + 280);
              *(a1 + 281) = *(a2 + 281);
              *(a1 + 288) = *(a2 + 288);
              *(a1 + 296) = *(a2 + 296);
              *(a1 + 304) = *(a2 + 304);
              *(a1 + 312) = *(a2 + 312);
              v64 = *(a2 + 320);
              *(a1 + 336) = *(a2 + 336);
              *(a1 + 320) = v64;
              *(a1 + 344) = *(a2 + 344);
            }
          }

          else if (v47 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 200);
            v55 = *(a2 + 216);
            *v45 = *v46;
            *(a1 + 216) = v55;
            v56 = *(a2 + 280);
            v58 = *(a2 + 232);
            v57 = *(a2 + 248);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 280) = v56;
            *(a1 + 232) = v58;
            *(a1 + 248) = v57;
            v60 = *(a2 + 312);
            v59 = *(a2 + 328);
            v61 = *(a2 + 296);
            *(a1 + 344) = *(a2 + 344);
            *(a1 + 312) = v60;
            *(a1 + 328) = v59;
            *(a1 + 296) = v61;
          }

          else
          {
            v65 = *v46;
            *(a1 + 208) = *(a2 + 208);
            *v45 = v65;
            v66 = *(a2 + 216);
            *(a1 + 224) = *(a2 + 224);
            *(a1 + 216) = v66;
            *(a1 + 225) = *(a2 + 225);
            *(a1 + 226) = *(a2 + 226);
            *(a1 + 227) = *(a2 + 227);
            *(a1 + 228) = *(a2 + 228);
            *(a1 + 232) = *(a2 + 232);
            *(a1 + 240) = *(a2 + 240);
            *(a1 + 248) = *(a2 + 248);
            *(a1 + 256) = *(a2 + 256);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 272) = *(a2 + 272);
            *(a1 + 280) = *(a2 + 280);
            *(a1 + 281) = *(a2 + 281);
            *(a1 + 288) = *(a2 + 288);
            *(a1 + 296) = *(a2 + 296);
            *(a1 + 304) = *(a2 + 304);
            *(a1 + 312) = *(a2 + 312);

            v67 = *(a2 + 320);
            *(a1 + 336) = *(a2 + 336);
            *(a1 + 320) = v67;
            *(a1 + 344) = *(a2 + 344);
          }

          *(a1 + 352) = *(a2 + 352);

          v68 = *(a1 + 360);
          v69 = *(a2 + 360);
          *(a1 + 360) = v69;
          v70 = v69;

          return a1;
        }

        *(a1 + 160) = v11;
        *(a1 + 168) = *(a2 + 168);
        (**(v11 - 8))(a1 + 136, a2 + 136);
      }

      else
      {
        v38 = *(a2 + 136);
        v39 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v39;
        *(a1 + 136) = v38;
      }

      *(a1 + 176) = *(a2 + 176);

      goto LABEL_40;
    }

    outlined destroy of AccessibilityAttachment(a1 + 72);
LABEL_19:
    memcpy((a1 + 72), (a2 + 72), 0x128uLL);
    return a1;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v14;
  v15 = *(a2 + 160);

  if (!v15)
  {
    v21 = *(a2 + 136);
    v22 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v22;
    *(a1 + 136) = v21;
LABEL_27:
    *(a1 + 176) = *(a2 + 176);

    goto LABEL_28;
  }

  if (v15 != 1)
  {
    *(a1 + 160) = v15;
    *(a1 + 168) = *(a2 + 168);
    (**(v15 - 8))(a1 + 136, a2 + 136, v15);
    goto LABEL_27;
  }

  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v17;
  *(a1 + 136) = v16;
LABEL_28:
  v23 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v23;
  v24 = (a1 + 200);
  v25 = (a2 + 200);
  if (*(a2 + 312) == 1)
  {
    v26 = *(a2 + 216);
    *v24 = *v25;
    *(a1 + 216) = v26;
    v27 = *(a2 + 232);
    v28 = *(a2 + 248);
    v29 = *(a2 + 280);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = v29;
    *(a1 + 232) = v27;
    *(a1 + 248) = v28;
    v30 = *(a2 + 296);
    v31 = *(a2 + 312);
    v32 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 312) = v31;
    *(a1 + 328) = v32;
    *(a1 + 296) = v30;
  }

  else
  {
    v33 = *v25;
    *(a1 + 208) = *(a2 + 208);
    *v24 = v33;
    v34 = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 216) = v34;
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 226) = *(a2 + 226);
    *(a1 + 227) = *(a2 + 227);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 281) = *(a2 + 281);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    v35 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v35;
    *(a1 + 344) = *(a2 + 344);
  }

  *(a1 + 352) = *(a2 + 352);
  v36 = *(a2 + 360);
  *(a1 + 360) = v36;

  v37 = v36;
  return a1;
}

uint64_t assignWithCopy for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = (a1 + 72);
  v5 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = (a2 + 72);
  v6 = *(a2 + 72);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      *(a1 + 80) = *(a2 + 80);
      *v4 = v8;
    }

    else
    {
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v9 = *(a2 + 80);
    *v4 = *v7;
    *(a1 + 80) = v9;
  }

  else
  {
    *(a1 + 72) = v6;

    *(a1 + 80) = *(a2 + 80);
  }

  v10 = (a1 + 152);
  v11 = *(a1 + 152);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v13 = (a2 + 152);
  v12 = *(a2 + 152);
  if (v11 == 1)
  {
    if (v12 == 1)
    {
      v14 = *v13;
      *(a1 + 160) = *(a2 + 160);
      *v10 = v14;
    }

    else
    {
      *(a1 + 152) = v12;
      *(a1 + 160) = *(a2 + 160);
    }
  }

  else if (v12 == 1)
  {
    outlined destroy of ListItemTint(a1 + 152);
    v15 = *(a2 + 160);
    *v10 = *v13;
    *(a1 + 160) = v15;
  }

  else
  {
    *(a1 + 152) = v12;

    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  return a1;
}

uint64_t assignWithCopy for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *(*(v9 + 40) + v12) = *(*(v9 + 40) + v13);
  return a1;
}

uint64_t *assignWithCopy for Switch(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithCopy for CollectionViewCellModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 41);
  v14 = *(a2 + 40);
  outlined copy of Environment<ListItemTint?>.Content(v12, v14, v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 32) = v12;
  v17 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 41) = v13;
  outlined consume of Environment<ListItemTint?>.Content(v15, v17, v16);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  outlined copy of Environment<EdgeInsets>.Content(v18, v19, v20, v21, v22);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  outlined consume of Environment<EdgeInsets>.Content(v23, v24, v25, v26, v27);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v33 = *(a2 + 128);
  v34 = *(a2 + 136);
  v35 = *(a2 + 144);
  v60 = *(a2 + 152);
  v61 = *(a2 + 160);
  v62 = *(a2 + 168);
  v63 = *(a2 + 169);
  outlined copy of Environment<ListContentStyling>.Content(v28, v29, v30, v31, v32, v33, v34, v35, v60, v61, v62, v63);
  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  v40 = *(a1 + 120);
  v41 = *(a1 + 128);
  v42 = *(a1 + 136);
  v43 = *(a1 + 144);
  v44 = *(a1 + 152);
  v45 = *(a1 + 160);
  v46 = *(a1 + 168);
  v47 = *(a1 + 169);
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  *(a1 + 136) = v34;
  *(a1 + 144) = v35;
  *(a1 + 152) = v60;
  *(a1 + 160) = v61;
  *(a1 + 168) = v62;
  *(a1 + 169) = v63;
  outlined consume of Environment<ListContentStyling>.Content(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  *(a1 + 170) = *(a2 + 170);
  v48 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v48;
  v49 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v49;
  v50 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v50;
  v51 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v51;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v52 = *(a2 + 256);
  if (*(a1 + 256) == 1)
  {
    if (v52 == 1)
    {
      v53 = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 256) = v53;
    }

    else
    {
      *(a1 + 256) = v52;
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else
  {
    if (v52 == 1)
    {
      outlined destroy of ListItemTint(a1 + 256);
      v54 = *(a2 + 264);
      *(a1 + 256) = *(a2 + 256);
    }

    else
    {
      *(a1 + 256) = v52;

      v54 = *(a2 + 264);
    }

    *(a1 + 264) = v54;
  }

  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = *(a2 + 272);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 280);
    v55 = *(a2 + 350);
    if (v55 == 2)
    {
      v56 = *(a2 + 304);
      *(a1 + 304) = v56;
      *(a1 + 312) = *(a2 + 312);
      (**(v56 - 8))(a1 + 280, a2 + 280);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 324) = *(a2 + 324);
      *(a1 + 328) = *(a2 + 328);
    }

    else if (v55 == 1)
    {
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v57 = *(a2 + 304);
      *(a1 + 304) = v57;
      *(a1 + 312) = *(a2 + 312);
      (**(v57 - 8))(a1 + 280, a2 + 280);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 332) = *(a2 + 332);
      *(a1 + 336) = *(a2 + 336);
      v58 = *(a2 + 344);
      *(a1 + 348) = *(a2 + 348);
      *(a1 + 344) = v58;
    }

    *(a1 + 350) = v55;
  }

  return a1;
}

void closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x60), *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x70) + 8), a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v14 = *((v9 & v7) + 0x88);
  swift_beginAccess();
  (*(v11 + 16))(v13, &a2[v14], v10);
  v15 = *((*v8 & *a2) + 0xA0);
  swift_beginAccess();
  v16 = *&a2[v15];
  outlined copy of Transaction?(v16);
  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v16, a1, v10);
  outlined consume of ListItemTint?(v16);
  (*(v11 + 8))(v13, v10);
  v17 = [a3 layer];
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v20[1] = *(a1 + *(type metadata accessor for _RowVisitationContext(0, v10, WitnessTable, v19) + 40));
  ViewTraitCollection.zIndex.getter();
  [v17 setZPosition_];
}

uint64_t assignWithTake for CollectionViewCellModifier(uint64_t a1, uint64_t *a2)
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
  v11 = *(a2 + 40);
  v12 = *(a2 + 41);
  v13 = *(a1 + 32);
  v14 = *(a1 + 41);
  *(a1 + 32) = a2[4];
  v15 = *(a1 + 40);
  *(a1 + 40) = v11;
  *(a1 + 41) = v12;
  outlined consume of Environment<ListItemTint?>.Content(v13, v15, v14);
  v16 = *(a2 + 80);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v22;
  *(a1 + 80) = v16;
  outlined consume of Environment<EdgeInsets>.Content(v17, v18, v19, v20, v21);
  v23 = *(a2 + 168);
  v24 = *(a2 + 169);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  v29 = *(a1 + 120);
  v30 = *(a1 + 128);
  v31 = *(a1 + 136);
  v32 = *(a1 + 144);
  v33 = *(a1 + 152);
  v34 = *(a1 + 160);
  v35 = *(a1 + 168);
  v36 = *(a1 + 169);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = v23;
  *(a1 + 169) = v24;
  outlined consume of Environment<ListContentStyling>.Content(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 176) = a2[22];
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = a2[24];
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = a2[26];
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = a2[28];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = *(a2 + 248);
  if (*(a1 + 256) == 1)
  {
    goto LABEL_4;
  }

  v37 = a2[32];
  if (v37 == 1)
  {
    outlined destroy of ListItemTint(a1 + 256);
LABEL_4:
    *(a1 + 256) = a2[32];
    goto LABEL_6;
  }

  *(a1 + 256) = v37;

LABEL_6:
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = a2[34];
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 280);
    v38 = *(a2 + 41);
    *(a1 + 312) = *(a2 + 39);
    *(a1 + 328) = v38;
    *(a1 + 343) = *(a2 + 343);
    v39 = *(a2 + 37);
    *(a1 + 280) = *(a2 + 35);
    *(a1 + 296) = v39;
  }

  return a1;
}

uint64_t outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    v6 = a4(255, a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for _UIHostingView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981900];
    v4[1] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_18C0500E8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C050120()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    v8[0] = MEMORY[0x1E6981900];
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature)
  {
    v2 = MEMORY[0x1E697E108];
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v2, MEMORY[0x1E697E100]);
    v7 = type metadata accessor for _UIHostingView.EnableVFDFeature(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph)
  {
    v2 = MEMORY[0x1E697E108];
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v2, MEMORY[0x1E697E100]);
    v7 = type metadata accessor for _UIHostingView.HostViewGraph(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph);
    }
  }
}

void *_s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ContainerBackgroundHost, &protocol descriptor for ContainerBackgroundHost);
  UIHostingViewBase._as<A>(_:)();
  result = v9;
  if (v9)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingControllerProvider, &protocol descriptor for UIHostingControllerProvider))
    {
      return v5;
    }
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for FocusHost, &protocol descriptor for FocusHost))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
    v8 = protocol conformance descriptor for _UIHostingView<A>;
LABEL_17:
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(v7, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, v8);
    return swift_unknownObjectRetain();
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for PlatformItemListHost, &protocol descriptor for PlatformItemListHost) || v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for AccessibilityHost, &protocol descriptor for AccessibilityHost))
  {
    return swift_unknownObjectRetain();
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider, MEMORY[0x1E69DC170]))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
    v8 = protocol conformance descriptor for _UIHostingView<A>;
    goto LABEL_17;
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for EventGraphHost, MEMORY[0x1E697E358]))
  {
    v7 = &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>;
    v8 = protocol conformance descriptor for _UIHostingView<A>;
    goto LABEL_17;
  }

  if (v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for PointerHost, &protocol descriptor for PointerHost) || v2 == type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for WindowLayoutHost, &protocol descriptor for WindowLayoutHost))
  {
    return swift_unknownObjectRetain();
  }

  result = type metadata accessor for UIView();
  if (v2 != result)
  {
    if (v2 != type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for CurrentEventProvider, &protocol descriptor for CurrentEventProvider) && v2 != type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for FallbackResponderProvider, &protocol descriptor for FallbackResponderProvider))
    {
      v6 = v1;
      return v1;
    }

    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t static Grid._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v16 = a2[2];
  v17 = v7;
  v18 = a2[4];
  v19 = *(a2 + 20);
  v8 = a2[1];
  v14 = *a2;
  v15 = v8;
  v9 = type metadata accessor for _VariadicView.Tree();
  v13 = v6;
  type metadata accessor for Grid(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12[0] = &protocol witness table for GridLayout;
  v12[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E308], v9, v12);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static Grid._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for Grid(0, a2, a3, a4);
  v9 = type metadata accessor for _VariadicView.Tree();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v10;
}

unint64_t lazy protocol witness table accessor for type GridLayout and conformance GridLayout()
{
  result = lazy protocol witness table cache variable for type GridLayout and conformance GridLayout;
  if (!lazy protocol witness table cache variable for type GridLayout and conformance GridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridLayout, &type metadata for GridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout and conformance GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridLayout and conformance GridLayout;
  if (!lazy protocol witness table cache variable for type GridLayout and conformance GridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridLayout, &type metadata for GridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridLayout and conformance GridLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GridLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridLayout and conformance GridLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance InsetGroupedListStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

_OWORD *initializeWithCopy for Grid(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 16))((a1 + *(v5 + 80) + 41) & ~*(v5 + 80), (a2 + *(v5 + 80) + 41) & ~*(v5 + 80));
  return a1;
}

void storeEnumTagSinglePayload for GridRow(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

uint64_t getEnumTagSinglePayload for GridRow(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t static GridRow._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 40))(v6);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance GridLayout@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  *(a2 + 72) = 0x7FF8000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  *(a2 + 112) = v12;
  *(a2 + 120) = v12;
  *(a2 + 128) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a2 + 136) = v12;
  *(a2 + 144) = v13;
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 65) = v11;

  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t GridLayout.Cache.assignSubviews()()
{
  v2 = v0;
  v3 = (v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 104);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
  }

  else
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v5 + 24) >> 1);

    *v3 = v6;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 112);
  v159 = (v2 + 112);
  if (v7)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v8 + 16));
  }

  else
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV11RowOrColumn33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v8 + 24) >> 1);

    *(v2 + 112) = v9;
  }

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 136);
  v165 = v3;
  if (v10)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v11 + 2));
  }

  else
  {
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10GridLayoutV5CacheV4Cell33_69F00159ECCD7162D5EDC19B53BBB085LLV_Tt1g5(0, *(v11 + 3) >> 1);

    *(v2 + 136) = v12;
  }

  v13 = *(v2 + 144);
  if (*(v13 + 16))
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v176 = *(v2 + 144);
    type metadata accessor for _DictionaryStorage<GridIndex, Int>(0, &lazy cache variable for type metadata for _NativeDictionary<GridIndex, Int>, MEMORY[0x1E69E6DC8]);
    _NativeDictionary.removeAll(isUnique:)(v14);
    v13 = v176;
    *(v2 + 144) = v176;
  }

  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 65);
  v181 = *(v2 + 48);
  v182 = v15;
  v183 = v16;
  v184 = v17;
  v185 = 0;

  v18 = &v181;
  v175 = v2;
  v166 = (v2 + 136);
  if (!LayoutSubviews.endIndex.getter())
  {

    LODWORD(v1) = 0;
    LODWORD(v11) = 0;
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_205;
  }

  LayoutSubviews.subscript.getter();
  v19 = v176;
  v20 = v177;
  if (LayoutSubviews.endIndex.getter() < 1)
  {
    goto LABEL_261;
  }

  v21 = 0;
  v151 = 0;
  v22 = 0;
  LODWORD(v1) = 0;
  v150 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v23 = v21 + 1;
    v185 = v23;
    static UnitPoint.infinity.getter();
    v25 = v24;
    v27 = v26;
    v176 = v19;
    LODWORD(v177) = v20;
    v18 = &v176;
    LayoutProxy.subscript.getter();
    v28 = *(v180 + 16);
    v167 = v11;
    v155 = v23;
    v162 = v22;
    if (!v28)
    {

      if (v151)
      {
        v29 = 0.0;
        LODWORD(v1) = 1;
        v30 = 0.0;
        LODWORD(v32) = 1;
        LODWORD(v151) = 0;
        v47 = 0;
        v51 = 1;
        v163 = 1;
        if (!v162)
        {
          v157 = 0.0;
          v48 = HIDWORD(v151);
          LODWORD(v30) = 0;
          v156 = 0;
          v162 = 0;
          LODWORD(v32) = 1;
          v154 = 1;
          v47 = 0;
          v160 = 1;
          v163 = 1;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v18) = 0;
      v29 = 0.0;
      LODWORD(v1) = 1;
      v30 = 0.0;
      LODWORD(v32) = 1;
      v50 = 0;
      v51 = 1;
      v52 = 1;
      if (v49)
      {
        v30 = 0.0;
        LODWORD(v151) = 0;
        LODWORD(v32) = 1;
        v50 = 0;
        v163 = 1;
        goto LABEL_78;
      }

LABEL_203:
      v163 = v52;
      v121 = v50;
      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
      v50 = v121;
      v167 = v122;
LABEL_200:
      LODWORD(v151) = v18;
LABEL_78:
      LODWORD(v11) = v50;
      v54 = *(v167 + 2);
      v53 = *(v167 + 3);
      v18 = (v54 + 1);
      if (v54 >= v53 >> 1)
      {
        v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v167);
      }

      *(v167 + 2) = v18;
      v55 = &v167[8 * v54];
      *(v55 + 8) = v162;
      *(v55 + 9) = HIDWORD(v151);
      v150 = HIDWORD(v151);
      v47 = v11;
      if (!v162)
      {
        goto LABEL_81;
      }

      goto LABEL_83;
    }

    v156 = v1;
    v29 = 0.0;
    v157 = 0.0;
    v18 = 0;
    v30 = 0.0;
    v31 = 0;
    LODWORD(v1) = 1;
    LODWORD(v32) = 1;
    LODWORD(v11) = 1;
    v160 = 1;
    v163 = 1;
    v33 = 0;
    while (1)
    {
      while (1)
      {
        if (v33 >= v28)
        {
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          LODWORD(v11) = v150;
LABEL_205:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_282;
          }

          goto LABEL_206;
        }

        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_252;
        }

        v35 = v180 + 32 + 24 * v33;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = v38 >> 5;
        if (!(v38 >> 5))
        {
          break;
        }

        if (v38 >> 5 > 3)
        {
          if (v39 == 4)
          {
            v163 = 0;
            v157 = v36;
            goto LABEL_65;
          }

          if (v39 == 5)
          {
            v160 = 0;
            goto LABEL_63;
          }

LABEL_64:
          v31 |= LODWORD(v36);
          goto LABEL_65;
        }

        if (v39 == 1)
        {
          if ((v38 & 1) == 0)
          {
            v29 = v37;
          }

          if ((v11 & 1) == 0)
          {
            goto LABEL_283;
          }

          v160 &= v38;
          LODWORD(v11) = 1;
          v18 = *&v36;
          goto LABEL_65;
        }

        if (v39 != 2)
        {
          goto LABEL_48;
        }

LABEL_41:
        v32 = SLODWORD(v36) * v32;
        if (v32 != v32)
        {
          goto LABEL_273;
        }

LABEL_65:
        if (v34 == v28)
        {

          if ((v11 & 1) == 0)
          {
            goto LABEL_74;
          }

          if (v151)
          {
            v47 = v31;
            v51 = v160;
            v30 = v157;
            if (v18 && v18 == v151)
            {
              v154 = 1;
              LODWORD(v30) = v162;
              v48 = HIDWORD(v151);
              goto LABEL_84;
            }

            LODWORD(v151) = v18;
            if (!v162)
            {
LABEL_81:
              v157 = v30;
              v160 = v51;
              LODWORD(v30) = 0;
              v156 = 0;
              v162 = 0;
              v154 = 1;
              v48 = HIDWORD(v151);
              goto LABEL_84;
            }

LABEL_83:
            v157 = v30;
            v160 = v51;
            LODWORD(v30) = 0;
            v156 = 0;
            v162 = 0;
            v48 = (HIDWORD(v151) + 1);
            v154 = 1;
            v150 = ++HIDWORD(v151);
            goto LABEL_84;
          }

          v119 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v31;
          v51 = v160;
          v30 = v157;
          v52 = v163;
          if (v119)
          {
            goto LABEL_200;
          }

          goto LABEL_203;
        }

        v33 = v34;
      }

      LODWORD(v32) = LODWORD(v37) - LODWORD(v36);
      v40 = SLODWORD(v37) < SLODWORD(v36);
      if (__OFSUB__(LODWORD(v37), LODWORD(v36)))
      {
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
        goto LABEL_258;
      }

      v41 = HIDWORD(*&v37);
      if (v40 || v41 < SHIDWORD(v36))
      {
        goto LABEL_255;
      }

      LODWORD(v1) = v41 - HIDWORD(v36);
      if (__OFSUB__(v41, HIDWORD(v36)))
      {
        goto LABEL_256;
      }

      if (v18)
      {
        goto LABEL_283;
      }

      if (v34 == v28)
      {
        break;
      }

      v43 = (v180 + 72 + 24 * v33);
      v30 = v36;
      while (1)
      {
        if (v34 >= v28)
        {
          goto LABEL_251;
        }

        v33 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_252;
        }

        v36 = *(v43 - 2);
        v37 = *(v43 - 1);
        v44 = *v43 >> 5;
        if (v44)
        {
          break;
        }

        LODWORD(v32) = LODWORD(v37) - LODWORD(v36);
        if (__OFSUB__(LODWORD(v37), LODWORD(v36)))
        {
          goto LABEL_254;
        }

        if (SLODWORD(v37) < SLODWORD(v36))
        {
          goto LABEL_255;
        }

        v45 = HIDWORD(*&v37);
        LODWORD(v1) = v45 - HIDWORD(v36);
        if (v45 < SHIDWORD(v36))
        {
          goto LABEL_255;
        }

        if (__OFSUB__(v45, HIDWORD(v36)))
        {
          goto LABEL_256;
        }

        ++v34;
        v43 += 3;
        v30 = v36;
        if (v33 == v28)
        {
          goto LABEL_72;
        }
      }

      if (*v43 >> 5 <= 3u)
      {
        if (v44 != 2)
        {
          if (v44 != 3)
          {
            goto LABEL_283;
          }

          v18 = 0;
          LODWORD(v11) = 0;
          ++v34;
LABEL_48:
          if ((~*&v36 & 0x7FF0000000000000) != 0)
          {
            v25 = v36;
          }

          if ((~*&v37 & 0x7FF0000000000000) != 0)
          {
            v27 = v37;
          }

          goto LABEL_65;
        }

        v18 = 0;
        LODWORD(v11) = 0;
        ++v34;
        goto LABEL_41;
      }

      if (v44 != 4)
      {
        if (v44 == 5)
        {
          v18 = 0;
          LODWORD(v11) = 0;
          v160 = 0;
          ++v34;
LABEL_63:
          v29 = v36;
          goto LABEL_65;
        }

        v18 = 0;
        LODWORD(v11) = 0;
        ++v34;
        goto LABEL_64;
      }

      v18 = 0;
      LODWORD(v11) = 0;
      v163 = 0;
      v46 = 0;
      v157 = *(v43 - 2);
      if (v33 == v28)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v30 = v36;
    v46 = v163;
LABEL_73:

    v163 = v46;
LABEL_74:
    v47 = v31;
    v154 = 0;
    v48 = HIDWORD(*&v30);
LABEL_84:
    if (__OFADD__(LODWORD(v30), v32))
    {
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v152 = *&v29;
    v173 = LODWORD(v30) + v32;
    v56 = LODWORD(v30) + v32;
    v57 = *v165;
    v18 = *(*v165 + 2);
    v158 = v32;
    v153 = v47;
    if (v18 < v56)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 + 1), 1, v57);
      }

      v58 = *(v57 + 2);
      v59 = (v58 << 6) | 0x38;
      if (v58)
      {
LABEL_89:
        v60 = 0;
        if ((*(v2 + 24) & 1) == 0)
        {
          v60 = *(v2 + 16);
        }

        goto LABEL_92;
      }

      while (1)
      {
        v60 = 0;
LABEL_92:
        v61 = *(v57 + 3);
        v18 = (v58 + 1);
        if (v58 >= v61 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v58 + 1, 1, v57);
        }

        LOBYTE(v180) = 1;
        *(v57 + 2) = v18;
        v62 = &v57[v59];
        *(v62 - 3) = v60;
        *(v62 - 2) = 0;
        *(v62 - 8) = v180;
        v63 = v176;
        *(v62 - 1) = *(&v176 + 3);
        *(v62 - 7) = v63;
        *v62 = 0u;
        *(v62 + 1) = 0u;
        *(v62 + 4) = 0;
        if (v18 >= v56)
        {
          break;
        }

        v59 += 64;
        if (++v58)
        {
          goto LABEL_89;
        }
      }

      *v165 = v57;
      LODWORD(v32) = v158;
    }

    if (v32 >= 2 && (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v176 = *v2;
      lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment();
      v18 = &v176;
      AlignmentGuide.fraction.getter();
      v25 = v64;
    }

    LODWORD(v11) = v48 + v1;
    if (__OFADD__(v48, v1))
    {
      goto LABEL_269;
    }

    v65 = *v159;
    v18 = *(*v159 + 2);
    v171 = v48;
    if (v18 < v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 + 1), 1, v65);
      }

      v66 = *(v65 + 2);
      v67 = (v66 << 6) | 0x38;
      if (v66)
      {
LABEL_106:
        v68 = 0;
        if ((*(v175 + 40) & 1) == 0)
        {
          v68 = *(v175 + 32);
        }

        goto LABEL_109;
      }

      while (1)
      {
        v68 = 0;
LABEL_109:
        v69 = *(v65 + 3);
        v18 = (v66 + 1);
        if (v66 >= v69 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v66 + 1, 1, v65);
        }

        LOBYTE(v180) = 1;
        *(v65 + 2) = v18;
        v70 = &v65[v67];
        *(v70 - 3) = v68;
        *(v70 - 2) = 0;
        *(v70 - 8) = v180;
        v71 = v176;
        *(v70 - 1) = *(&v176 + 3);
        *(v70 - 7) = v71;
        *v70 = 0u;
        *(v70 + 1) = 0u;
        *(v70 + 4) = 0;
        if (v18 >= v11)
        {
          break;
        }

        v67 += 64;
        if (++v66)
        {
          goto LABEL_106;
        }
      }

      *v159 = v65;
      v48 = v171;
    }

    if (v1 < 2)
    {
      if ((v163 & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_129:
      if (v160)
      {
        goto LABEL_141;
      }

      goto LABEL_130;
    }

    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v176 = *(v175 + 8);
      lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment();
      v18 = &v176;
      AlignmentGuide.fraction.getter();
      v27 = v72;
    }

    if (v163)
    {
      goto LABEL_129;
    }

LABEL_119:
    if ((LODWORD(v30) & 0x80000000) != 0)
    {
      goto LABEL_275;
    }

    if (*(v57 + 2) <= SLODWORD(v30))
    {
      goto LABEL_276;
    }

    v73 = &v57[64 * SLODWORD(v30)];
    if ((v73[48] & 1) != 0 || *(v73 + 5) == *&v157)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
      }

      if (*(v57 + 2) <= SLODWORD(v30))
      {
        goto LABEL_280;
      }

      v74 = &v57[64 * SLODWORD(v30)];
      *(v74 + 5) = v157;
      v74[48] = 0;
      *v165 = v57;
      if (v160)
      {
        goto LABEL_141;
      }

LABEL_130:
      if ((v48 & 0x80000000) == 0)
      {
        if (*(v65 + 2) > v48)
        {
          v75 = &v65[64 * v48];
          v18 = v152;
          if ((v75[48] & 1) == 0 && *(v75 + 5) != v152)
          {
            v176 = 0;
            v177 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);

            v176 = 0xD00000000000002CLL;
            v177 = 0x800000018CD56630;
            LODWORD(v180) = v48;
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            LODWORD(v1) = v80;
            MEMORY[0x18D00C9B0](v79);

            v18 = v177;
            MEMORY[0x18D009810](v176, v177);

            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
          }

          if (*(v65 + 2) > v48)
          {
            v76 = &v65[64 * v48];
            *(v76 + 5) = v152;
            v76[48] = 0;
            *v159 = v65;
            goto LABEL_141;
          }

LABEL_281:
          __break(1u);
LABEL_282:
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
LABEL_206:
          v124 = *(v18 + 2);
          v123 = *(v18 + 3);
          v174 = v124 + 1;
          if (v124 >= v123 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v174, 1, v18);
          }

          *(v18 + 2) = v174;
          v125 = &v18[8 * v124];
          *(v125 + 8) = v1;
          *(v125 + 9) = v11;
LABEL_209:
          v11 = 0;
          v168 = v18;
          v170 = v18 + 32;
          while (1)
          {
            if (v11 >= *(v18 + 2))
            {
              goto LABEL_260;
            }

            if (*(v13 + 16))
            {
              v1 = *&v170[8 * v11 + 4];
              v18 = v13;
              v126 = specialized __RawDictionaryStorage.find<A>(_:)((*&v170[8 * v11] - 1) | (v1 << 32));
              if (v127)
              {
                v128 = *(*(v13 + 56) + 8 * v126);
                if ((v128 & 0x8000000000000000) != 0)
                {
                  goto LABEL_263;
                }

                v129 = *v166;
                v130 = *(*v166 + 2);
                if (v128 >= v130)
                {
                  goto LABEL_264;
                }

                if ((~*&v129[104 * v128 + 96] & 0x7FF0000000000000) == 0)
                {
                  v176 = *v175;
                  lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment();
                  v18 = &v176;
                  AlignmentGuide.fraction.getter();
                  v132 = v131;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
                  }

                  if (v128 >= *(v129 + 2))
                  {
                    goto LABEL_271;
                  }

                  *&v129[104 * v128 + 96] = v132;
                  *v166 = v129;
                  v130 = *(v129 + 2);
                }

                if (v128 >= v130)
                {
                  goto LABEL_265;
                }

                v133 = &v129[104 * v128];
                v134 = *(v133 + 8);
                v135 = *(v133 + 10);
                if (v135 < v134)
                {
                  goto LABEL_266;
                }

                v136 = *(*v165 + 2);
                if (v136 >> 31)
                {
                  goto LABEL_267;
                }

                if (v135 < v136)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
                  }

                  if (v128 >= *(v129 + 2))
                  {
                    goto LABEL_272;
                  }

                  v137 = &v129[104 * v128];
                  *(v137 + 8) = v134;
                  *(v137 + 10) = v136;
                  *v166 = v129;
                  if (v134 != v136)
                  {
                    break;
                  }
                }
              }
            }

LABEL_210:
            ++v11;
            v18 = v168;
            if (v11 == v174)
            {
            }
          }

          v172 = v1;
          v1 <<= 32;
          v18 = v175;
          while (2)
          {
            if (v134 >= v136)
            {
              goto LABEL_257;
            }

            if (v134 >= v135)
            {
              v13 = swift_isUniquelyReferenced_nonNull_native();
              v18 = *(v18 + 18);
              v176 = v18;
              v138 = specialized __RawDictionaryStorage.find<A>(_:)(v1 | v134);
              v140 = *(v18 + 2);
              v141 = (v139 & 1) == 0;
              v98 = __OFADD__(v140, v141);
              v142 = v140 + v141;
              if (v98)
              {
                goto LABEL_259;
              }

              v143 = v139;
              if (*(v18 + 3) >= v142)
              {
                if (v13)
                {
                  goto LABEL_240;
                }

                v18 = &v176;
                v148 = v138;
                specialized _NativeDictionary.copy()();
                v138 = v148;
                v13 = v176;
                if (v143)
                {
                  goto LABEL_230;
                }

LABEL_241:
                *(v13 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                v145 = (*(v13 + 48) + 8 * v138);
                *v145 = v134;
                v145[1] = v172;
                *(*(v13 + 56) + 8 * v138) = v128;
                v146 = *(v13 + 16);
                v98 = __OFADD__(v146, 1);
                v147 = v146 + 1;
                if (v98)
                {
                  goto LABEL_262;
                }

                *(v13 + 16) = v147;
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, v13);
                v18 = v176;
                v138 = specialized __RawDictionaryStorage.find<A>(_:)(v1 | v134);
                if ((v143 & 1) != (v144 & 1))
                {
                  goto LABEL_284;
                }

LABEL_240:
                v13 = v176;
                if ((v143 & 1) == 0)
                {
                  goto LABEL_241;
                }

LABEL_230:
                *(*(v13 + 56) + 8 * v138) = v128;
              }

              v18 = v175;
              *(v175 + 144) = v13;
            }

            if (v136 == ++v134)
            {
              goto LABEL_210;
            }

            continue;
          }
        }

LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v176 = 0;
    v177 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v176 = 0xD00000000000002FLL;
    v177 = 0x800000018CD56660;
    LODWORD(v180) = LODWORD(v30);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v1) = v78;
    MEMORY[0x18D00C9B0](v77);

    v18 = v177;
    MEMORY[0x18D009810](v176, v177);

    if ((v160 & 1) == 0)
    {
      goto LABEL_130;
    }

LABEL_141:
    if (v173 < SLODWORD(v30))
    {
      goto LABEL_270;
    }

    if (LODWORD(v30) == v173)
    {
      v2 = v175;
LABEL_144:
      static ViewDimensions.invalidValue.getter();
      v81 = v176;
      v82 = v177;
      v161 = v179;
      v164 = v178;
      v83 = *v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
      }

      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      v86 = v153;
      if (v85 >= v84 >> 1)
      {
        v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v83);
        v86 = v153;
        v83 = v120;
      }

      *(v83 + 2) = v85 + 1;
      v87 = &v83[104 * v85];
      *(v87 + 8) = LODWORD(v30);
      *(v87 + 9) = v171;
      *(v87 + 10) = v173;
      *(v87 + 11) = v11;
      *(v87 + 6) = v81;
      *(v87 + 7) = v82;
      *(v87 + 4) = v164;
      *(v87 + 5) = v161;
      *(v87 + 12) = v25;
      *(v87 + 13) = v27;
      v87[112] = v86;
      v88 = *(&v180 + 3);
      *(v87 + 113) = v180;
      *(v87 + 29) = v88;
      *(v87 + 15) = 0;
      *(v87 + 16) = 0;
      *v166 = v83;
      v22 = v162;
      LODWORD(v1) = v156;
      if (v154)
      {
        LODWORD(v1) = v158 + v162;
      }

      v18 = &v181;
      v21 = v155;
      if (v155 == LayoutSubviews.endIndex.getter())
      {
        goto LABEL_248;
      }

      if (v154)
      {
        v22 = v158 + v162;
      }

      LayoutSubviews.subscript.getter();
      v19 = v176;
      v20 = v177;
      v11 = v167;
      if (v155 >= LayoutSubviews.endIndex.getter())
      {
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      continue;
    }

    break;
  }

  v2 = v175;
  if (v11 < v48)
  {
    goto LABEL_279;
  }

  v89 = LODWORD(v30);
  v90 = v173;
  v169 = LODWORD(v30);
  while (2)
  {
    if (v89 >= v90)
    {
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    if (v48 == v11)
    {
LABEL_157:
      ++v89;
      v48 = v171;
      v90 = v173;
      LODWORD(v30) = v169;
      if (v89 == v173)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    if (v48 < v11)
    {
      LODWORD(v1) = v89;
      if (*(v13 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
        if (v91)
        {
          goto LABEL_283;
        }
      }

      v92 = *(*(v2 + 136) + 16);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v93 = *(v2 + 144);
      v176 = v93;
      v18 = v93;
      v94 = specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
      v96 = *(v93 + 16);
      v97 = (v95 & 1) == 0;
      v98 = __OFADD__(v96, v97);
      v99 = v96 + v97;
      if (v98)
      {
        goto LABEL_246;
      }

      v100 = v95;
      if (*(v93 + 24) >= v99)
      {
        if (v13)
        {
          v13 = v93;
          goto LABEL_172;
        }

        v1 = v94;
        type metadata accessor for _DictionaryStorage<GridIndex, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<GridIndex, Int>, MEMORY[0x1E69E6EC8]);
        v18 = v105;
        v106 = static _DictionaryStorage.copy(original:)();
        v13 = v106;
        if (*(v93 + 16))
        {
          v107 = (v106 + 64);
          v18 = (v93 + 64);
          v108 = ((1 << *(v13 + 32)) + 63) >> 6;
          if (v13 != v93 || v107 >= &v18[8 * v108])
          {
            memmove(v107, (v93 + 64), 8 * v108);
          }

          v109 = 0;
          *(v13 + 16) = *(v93 + 16);
          v110 = 1 << *(v93 + 32);
          if (v110 < 64)
          {
            v111 = ~(-1 << v110);
          }

          else
          {
            v111 = -1;
          }

          v112 = v111 & *(v93 + 64);
          v113 = (v110 + 63) >> 6;
          if (!v112)
          {
            goto LABEL_184;
          }

          while (1)
          {
            v114 = __clz(__rbit64(v112));
            v112 &= v112 - 1;
            for (i = v114 | (v109 << 6); ; i = __clz(__rbit64(v117)) | (v109 << 6))
            {
              v118 = *(*(v93 + 56) + 8 * i);
              *(*(v13 + 48) + 8 * i) = *(*(v93 + 48) + 8 * i);
              *(*(v13 + 56) + 8 * i) = v118;
              if (v112)
              {
                break;
              }

LABEL_184:
              v116 = v109;
              do
              {
                v109 = v116 + 1;
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_274;
                }

                if (v109 >= v113)
                {
                  goto LABEL_191;
                }

                v117 = *&v18[8 * v109];
                ++v116;
              }

              while (!v117);
              v112 = (v117 - 1) & v117;
            }
          }
        }

LABEL_191:

        v94 = v1;
        if (v100)
        {
          goto LABEL_161;
        }

LABEL_173:
        *(v13 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v102 = (*(v13 + 48) + 8 * v94);
        *v102 = v89;
        v102[1] = v48;
        *(*(v13 + 56) + 8 * v94) = v92;
        v103 = *(v13 + 16);
        v98 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v98)
        {
          goto LABEL_247;
        }

        *(v13 + 16) = v104;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v99, v13);
        v13 = v176;
        v18 = v176;
        v94 = specialized __RawDictionaryStorage.find<A>(_:)(v89 | (v48 << 32));
        if ((v100 & 1) != (v101 & 1))
        {
          while (1)
          {
LABEL_284:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_283:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

LABEL_172:
        if ((v100 & 1) == 0)
        {
          goto LABEL_173;
        }

LABEL_161:
        *(*(v13 + 56) + 8 * v94) = v92;
      }

      v48 = (v48 + 1);
      v2 = v175;
      *(v175 + 144) = v13;
      if (v48 == v11)
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:

  v18 = v167;
  if (!v151)
  {
    goto LABEL_253;
  }

  v174 = *(v167 + 2);
  if (v174)
  {
    goto LABEL_209;
  }
}