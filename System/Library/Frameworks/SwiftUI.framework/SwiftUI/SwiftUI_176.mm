void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>)
  {
    lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>);
    }
  }
}

uint64_t specialized static SwiftUIResolvedTextProvider.updateWidgetTextAttachment(_:namedImage:)(void *a1, __int128 *a2)
{
  v28[0] = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a2[1];
  v33 = *a2;
  v34 = v13;
  v35 = a2[2];
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v36);
  v32[0] = v33;
  v32[1] = v34;
  v32[2] = v35;
  v30[9] = v36[9];
  v31[0] = v37[0];
  *(v31 + 11) = *(v37 + 11);
  v30[5] = v36[5];
  v30[6] = v36[6];
  v30[7] = v36[7];
  v30[8] = v36[8];
  v30[0] = v36[0];
  v30[1] = v36[1];
  v30[2] = v36[2];
  v30[3] = v36[3];
  v30[4] = v36[4];
  outlined init with copy of Image.NamedResolved(&v33, &v29);
  WidgetAuxiliaryViewMetadata.Graphic.Named.init(_:_:)(v32, v30, v12);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Graphic(v12, v5);
  v14 = *(v10 + 56);
  v14(v5, 0, 1, v9);
  *v8 = 0;
  *(v8 + 1) = 0;
  v15 = v6[6];
  v14(&v8[v15], 1, 1, v9);
  *&v8[v6[7]] = 0;
  v16 = v6[8];
  v17 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = &v8[v6[9]];
  *(v18 + 41) = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *v18 = 0u;
  v19 = v6[10];
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(&v8[v19], 1, 1, v20);
  v21 = &v8[v6[11]];
  *v21 = xmmword_18CD633F0;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(v5, &v8[v15]);

  *v8 = 0;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v24 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v26 = outlined consume of Data._Representation(v22, v24);
  [v28[0] setContents_];

  outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  return outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(v8, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized OptionSet<>.insert(_:)(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = *v2;
  if (v3 < 0x10)
  {
    v4 = v3 & a2;
    if (v4 == a2)
    {
LABEL_5:
      *a1 = a2;
      return v4 != a2;
    }

    v5 = v3 | a2;
    if (v5 < 0x10)
    {
      *v2 = v5;
      goto LABEL_5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Material._GlassVariant.appIcons(tint:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GlassMaterialProvider.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  a2(v11);
  if (!a1)
  {
    return (*(v7 + 32))(a3, v13, v6);
  }

  GlassMaterialProvider.Configuration.tint(_:color:)();

  (*(v7 + 8))(v13, v6);
  v14 = *(v7 + 32);
  v14(v13, v9, v6);
  return (v14)(a3, v13, v6);
}

uint64_t Material._GlassVariant.interactionState(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InteractionState();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = *a1;
  outlined init with copy of Material._GlassVariant(v3, a2, v11);
  (*(v7 + 104))(v9, **(&unk_1E7238A90 + v14), v6);
  (*(v7 + 32))(v13, v9, v6);
  return GlassMaterialProvider.Configuration.interactionState.setter();
}

uint64_t Material._GlassVariant.tint(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v2, a2, v6);
  GlassMaterialProvider.Configuration.tint(_:color:)();
  return (*(v5 + 40))(a2, v8, v4);
}

double static Material._GlassVariant.highlightAngle(dynamic:)(uint64_t a1)
{
  v1 = MEMORY[0x1E6999C40];
  type metadata accessor for GlassMaterialProvider.Subvariant?(0, &lazy cache variable for type metadata for DesignIdiom?, MEMORY[0x1E6999C40]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DesignIdiom();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  static GlassMaterialProvider.highlightAngle(dynamic:idiom:offset:)();
  v7 = v6;
  outlined destroy of GlassMaterialProvider.Subvariant?(v4, &lazy cache variable for type metadata for DesignIdiom?, v1);
  return v7;
}

uint64_t outlined destroy of GlassMaterialProvider.Subvariant?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for GlassMaterialProvider.Subvariant?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Material._GlassVariant.focusOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v3, a1, v7);
  GlassMaterialProvider.Configuration.focusOffset(_:)();
  return (*(v6 + 40))(a1, v9, v5);
}

uint64_t Material._GlassVariant.adaptive(colorScheme:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  outlined init with copy of Material._GlassVariant(v2, a2, v7);
  v12 = a1;
  MEMORY[0x18D000940](&v12);
  return (*(v6 + 40))(a2, v9, v5);
}

uint64_t Material._GlassVariant.identity()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v1, a1, v5);
  GlassMaterialProvider.Configuration.identity()();
  return (*(v4 + 40))(a1, v7, v3);
}

uint64_t Material._GlassVariant.fixedBackgroundColor(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v2, a2, v6);
  GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)();
  return (*(v5 + 40))(a2, v8, v4);
}

uint64_t Material._GlassVariant.adaptive(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GlassMaterialProvider.Configuration();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v3, a3, v9);
  a2(a1);
  return (*(v8 + 40))(a3, v11, v7);
}

uint64_t Material._GlassVariant.hash(into:)(uint64_t a1)
{
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18], MEMORY[0x1E6999D20]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Material._GlassVariant.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18], MEMORY[0x1E6999D20]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material._GlassVariant()
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18], MEMORY[0x1E6999D20]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Material._GlassVariant(uint64_t a1)
{
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18], MEMORY[0x1E6999D20]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material._GlassVariant(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18], MEMORY[0x1E6999D20]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState()
{
  result = lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState;
  if (!lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Material._GlassVariant.InteractionState, &type metadata for Material._GlassVariant.InteractionState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size()
{
  result = lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size;
  if (!lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Material._GlassVariant.Size, &type metadata for Material._GlassVariant.Size, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t assignWithCopy for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _PlainButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  outlined copy of AppIntentExecutor?(v3, v4);

  return outlined copy of AppIntentExecutor?(v5, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>)
  {
    type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(&lazy protocol witness table cache variable for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>, type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>, protocol conformance descriptor for ButtonStyleAdaptorMenuStyle<A>);
    v6 = type metadata accessor for MenuStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>);
    }
  }
}

void type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>)
  {
    v2 = lazy protocol witness table accessor for type PlainButtonStyleBase and conformance PlainButtonStyleBase();
    v4 = type metadata accessor for ButtonStyleAdaptorMenuStyle(a1, &type metadata for PlainButtonStyleBase, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t TabContent.defaultVisibility(_:for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v6 = a2;
  return TabContent.modifier<A>(_:)(v5, a3, &type metadata for DefaultTabVisibilityModifier, a4);
}

Swift::Int TabPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabPlacement and conformance TabPlacement()
{
  result = lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement;
  if (!lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabPlacement, &type metadata for TabPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier()
{
  result = lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier;
  if (!lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultTabVisibilityModifier, &type metadata for DefaultTabVisibilityModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier()
{
  result = lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier;
  if (!lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabHiddenModifier, &type metadata for TabHiddenModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRzlAA08ModifiedcD0VyxAA07DefaultC18VisibilityModifierVGAaBHPxAaBHD1__AfA04ViewH0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedTabContent(255, *a1, a2, a4);
  v8[0] = v5;
  v8[1] = a3();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v6, v8);
}

unint64_t lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier()
{
  result = lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier;
  if (!lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabDisabledModifier, &type metadata for TabDisabledModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlacement.Placement and conformance TabPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement;
  if (!lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabPlacement.Placement, &type metadata for TabPlacement.Placement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement);
  }

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance TabDisabledModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<TabDisabledModifier>, lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier, &type metadata for TabDisabledModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TabDisabledModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<TabDisabledModifier>, lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier, &type metadata for TabDisabledModifier);
  View.transformTrait<A>(_:transform:)();

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance TabHiddenModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<TabHiddenModifier>, lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier, &type metadata for TabHiddenModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TabHiddenModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<TabHiddenModifier>, lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier, &type metadata for TabHiddenModifier);
  View.transformTrait<A>(_:transform:)();

  return result;
}

unint64_t closure #1 in DefaultTabVisibilityModifier.body(content:)(unint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v5 + 32);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v10;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    v18 = v10;
    if (v16)
    {
LABEL_3:
      *(v18[7] + result) = a2;
      goto LABEL_4;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    *(v18[7] + result) = a2;
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
LABEL_4:
    *(v5 + 32) = v18;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance DefaultTabVisibilityModifier()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultTabVisibilityModifier>, lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier, &type metadata for DefaultTabVisibilityModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultTabVisibilityModifier>, lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier, &type metadata for DefaultTabVisibilityModifier);

  View.transformTrait<A>(_:transform:)();

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ViewModifier_Content();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE14transformTrait_0D0Qrqd__m_y5ValueQyd__zctAA01_cE3KeyRd__lFQOyAA01_C16Modifier_ContentVyAA020DefaultTabVisibilityH0VG_AA0K7OptionsV0eG0VQo_HOTm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(255, a2, a3, a4);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(a5, a2, a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t View.sectionActions<A>(content:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a4;
  v25 = a1;
  v28 = a6;
  v36[0] = &type metadata for SectionStyleConfiguration.Actions;
  v36[1] = a3;
  v36[2] = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  v36[3] = a5;
  type metadata accessor for StaticSourceWriter(255, v36);
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  v25(v17);
  v30 = a2;
  v31 = a3;
  v32 = v26;
  v33 = a5;
  v34 = v19;
  v20 = a2;
  v21 = v26;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Actions, partial apply for closure #1 in View.sectionActions<A>(content:), v29, v20, &type metadata for SectionStyleConfiguration.Actions, a3, v26);
  (*(v12 + 16))(v15, v19, a3);
  v22 = AnyView.init<A>(_:)();
  v35[0] = v21;
  v35[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v36[0] = v22;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v35);
  View._trait<A>(_:_:)();

  (*(v27 + 8))(v11, v9);
  return (*(v12 + 8))(v19, a3);
}

uint64_t closure #1 in View.sectionActions<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance SidebarSectionActionStyleContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v8)
  {
    memcpy(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void SidebarSectionActionButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  v22 = 0;
  v11 = swift_getKeyPath();
  v21 = 0;
  v12 = swift_getKeyPath();
  v20 = 0;
  v13 = swift_getKeyPath();
  v19[0] = 0;
  v14 = v22;
  v15 = v21;
  v16 = v20;
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>(0);
  v18 = &a2[*(v17 + 36)];
  *v18 = KeyPath;
  v18[8] = v14;
  *(v18 + 2) = v11;
  v18[24] = v15;
  *(v18 + 4) = v12;
  v18[40] = v16;
  *(v18 + 6) = v13;
  v18[56] = 0;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double View.listSectionMargins(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  View.transformTrait<A>(_:transform:)();

  return result;
}

uint64_t closure #1 in View.listSectionMargins(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    result = OptionalEdgeInsets.subscript.setter();
    if ((a2 & 2) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = OptionalEdgeInsets.subscript.setter();
  if ((a2 & 4) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      return result;
    }

    return OptionalEdgeInsets.subscript.setter();
  }

LABEL_9:
  result = OptionalEdgeInsets.subscript.setter();
  if ((a2 & 8) == 0)
  {
    return result;
  }

  return OptionalEdgeInsets.subscript.setter();
}

void _UIHostingView.transparentBackgroundReasons.setter(int a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  _UIHostingView.transparentBackgroundReasons.didset(v3);
}

__n128 _UIHostingView.explicitSafeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v3 = v2[32];
  result = *v2;
  v5 = *(v2 + 1);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

id _UIHostingView.explicitSafeAreaInsets.setter(uint64_t a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  v2[32] = *(a1 + 32);
  return [v1 safeAreaInsetsDidChange];
}

void (*_UIHostingView.safeAreaRegions.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = _UIHostingView.base.getter();
  v4 = UIHostingViewBase.safeAreaRegions.getter();

  *a1 = v4;
  return _UIHostingView.safeAreaRegions.modify;
}

void _UIHostingView.safeAreaRegions.modify(uint64_t *a1)
{
  v1 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();
}

uint64_t _UIHostingView.accessibilityEnabled.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = UIHostingViewBase.accessibilityEnabled.getter() & 1;
  result = UIHostingViewBase.accessibilityEnabled.setter();
  if (v5 != v3)
  {
    v8 = type metadata accessor for _UIHostingView(0, *(v4 + 80), *(v4 + 88), v7);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v8);

    return specialized static AccessibilityFocus.changed(from:to:within:)(0, 0, v2, v8, WitnessTable);
  }

  return result;
}

uint64_t (*_UIHostingView.accessibilityEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = UIHostingViewBase.accessibilityEnabled.getter() & 1;
  return _UIHostingView.accessibilityEnabled.modify;
}

double _UIHostingView.scrollTest.setter(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8)) = a1;

  return result;
}

double _UIHostingView.rootViewDelegate.setter(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8)) = a1;

  return result;
}

void _UIHostingView.updateWindowGeometryScene()()
{
  v1 = [v0 window];
  v9 = [v1 windowScene];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    if (!Strong)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!Strong || (v3 = Strong, Strong, v9 != v3))
  {
LABEL_7:
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD5A5A0);
      [v5 removeObserver:v0 forKeyPath:v6];
    }

    if (v9)
    {
      v7 = v9;
      v8 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD5A5A0);
      [v7 addObserver:v0 forKeyPath:v8 options:1 context:&effectiveGeometryObservationContext];
    }

    swift_unknownObjectWeakAssign();
  }
}

double _UIHostingView.setRootView(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-v7];
  (*(v9 + 16))(&v14[-v7], v6);
  v10 = CoreCoordinator.dataSource.setter(v8);
  _UIHostingView.viewGraph.getter(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = *((v4 & v3) + 0x58);
  v12[4] = v11;

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();

  return result;
}

void (*_UIHostingView.rootView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CoreCoordinator.dataSource.getter(v9);
  return _UIHostingView.rootView.modify;
}

void _UIHostingView.rootView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized _UIHostingView.rootView.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized _UIHostingView.rootView.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E0);
  swift_beginAccess();
  return *(v0 + v1);
}

void (*_UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify;
}

void _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify(uint64_t a1)
{
  v1 = *a1;
  _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter(*(*a1 + 32));

  free(v1);
}

void _UIHostingView.accessibilityFocusedElementDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 userInfo];
  v13 = MEMORY[0x1E69E7CA0];
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = v12;
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v42 + 1) = v16;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
LABEL_9:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v17, &v42);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v43 + 1))
  {
LABEL_10:
    _sypSgWOhTm_8(&v42, &lazy cache variable for type metadata for Any?, v13 + 8, type metadata accessor for AnyAccessibilityValue?);
    v19 = 0;
    goto LABEL_11;
  }

  type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
  if (swift_dynamicCast())
  {
    v19 = aBlock[0];
  }

  else
  {
    v19 = 0;
  }

LABEL_11:
  v20 = [a1 userInfo];
  if (!v20)
  {
LABEL_19:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_20;
  }

  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v42 + 1) = v23;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v25 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v24, &v42);
  outlined destroy of AnyHashable(aBlock);

  if (*(&v43 + 1))
  {
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
    if (swift_dynamicCast())
    {
      v27 = aBlock[0];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_21;
  }

LABEL_20:
  _sypSgWOhTm_8(&v42, &lazy cache variable for type metadata for Any?, v13 + 8, type metadata accessor for AnyAccessibilityValue?);
  v27 = 0;
LABEL_21:
  v29 = *(v4 + 80);
  v28 = *(v4 + 88);
  v30 = type metadata accessor for _UIHostingView(0, v29, v28, v26);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v30);
  if (specialized static AccessibilityFocus.changed(from:to:within:)(v19, v27, v2, v30, WitnessTable))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v29;
    v34[3] = v28;
    v34[4] = v33;
    aBlock[4] = partial apply for closure #1 in _UIHostingView.accessibilityFocusedElementDidChange(_:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_85_1;
    v35 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x18D00DA20](0, v11, v7, v35);
    _Block_release(v35);

    (*(v39 + 8))(v7, v36);
    (*(v37 + 8))(v11, v38);
  }

  else
  {
  }
}

unint64_t _UIHostingView.accessibilityDidChange(nodes:)(uint64_t (*a1)(void))
{
  result = UIHostingViewBase.accessibilityEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = a1();
  v3 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v4 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x18D00E9C0](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        AccessibilityNode.updatePlatformProperties()();
      }
    }
  }
}

uint64_t _UIHostingView.uiKitAccessibilityElements(options:)(uint64_t a1)
{
  v2 = a1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if ((UIHostingViewBase.accessibilityEnabled.getter() & 1) == 0)
  {
    if (_AXSAccessibilityEnabled() || (v5 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v6 = NSClassFromString(v5), v5, v6))
    {
      _UIHostingView.accessibilityEnabled.setter(1);
    }
  }

  v7 = type metadata accessor for _UIHostingView(0, *(v3 + 80), *(v3 + 88), v4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v7);
  v9 = ViewRendererHost.accessibilityNodes.getter(v7, WitnessTable);
  if ((v2 & 2) != 0)
  {
    v26[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache], MEMORY[0x1E69E5FE0], &type metadata for AccessibilitySortCache, MEMORY[0x1E69E5FE8]);
    Dictionary.reserveCapacity(_:)(v10);

    v25 = specialized Array._copyToContiguousArray()(v11);
    specialized MutableCollection<>.sort(by:)(&v25, 2, 0, 4, v26);

    v9 = v25;
  }

  v12 = specialized static AccessibilityCore.queryFilter(elements:options:)(v9, v2);

  Array<A>.representedElements(options:)(v2, v12);
  v14 = v13;

  v15 = _UIHostingView.foreignSubviews.getter();
  v16 = [v15 allObjects];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();

    v24 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v17 = v24;
  }

  else
  {
    v18 = v17 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
    if (swift_dynamicCastMetatype() || (v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_11:
    }

    else
    {
      v23 = v18 + 32;
      while (1)
      {
        v26[1] = &unk_1F00D1888;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v23 += 8;
        if (!--v22)
        {
          goto LABEL_11;
        }
      }

      v17 = v18 | 1;
    }
  }

  Array<A>.merge(with:options:)(v17, v2, v14);
  v20 = v19;

  return v20;
}

unint64_t _UIHostingView._accessibilitySwiftUIDebugData.getter()
{
  v0 = UIHostingViewBase.accessibilityEnabled.getter();
  if ((v0 & 1) == 0)
  {
    if (_AXSAccessibilityEnabled() || (v1 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v2 = NSClassFromString(v1), v1, v2))
    {
      v0 = _UIHostingView.accessibilityEnabled.setter(1);
    }
  }

  _UIHostingView.viewGraph.getter(v0);
  v3 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11AGAttributea_7SwiftUI16ArrayWith2InlineVyAE17AccessibilityNodeCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  TreeRoot = AGSubgraphGetTreeRoot();
  if (TreeRoot)
  {
    v5 = TreeRoot;
    _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    static Update.ensure<A>(_:)();
    static AccessibilityDebugger.appendNodes(nodes:to:)(v18, &v24);

    static AccessibilityDebugger.appendDebugData(from:to:nodes:)(v5, &v19, v24);

    v6 = v19;
    v7 = *(v19 + 2);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v24 = v3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v3 = v24;
  v8 = v6 + 64;
  do
  {
    v9 = *(v8 - 6);
    v10 = *(v8 - 2);
    v11 = *(v8 - 2);
    v12 = *v8;
    v19 = *(v8 - 4);
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v13 = AccessibilityDebugger.Entry.dictionaryRepresentation.getter();
    v24 = v3;
    v15 = *(v3 + 16);
    v14 = *(v3 + 24);
    if (v15 >= v14 >> 1)
    {
      v16 = v13;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v13 = v16;
      v3 = v24;
    }

    *(v3 + 16) = v15 + 1;
    *(v3 + 8 * v15 + 32) = v13;
    v8 += 5;
    --v7;
  }

  while (v7);
LABEL_13:

  return v3;
}

void _UIHostingView.setLayerDebugName()()
{
  swift_getObjectType();
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v2)
  {
    v3 = v2;
    v4 = _typeName(_:qualified:)();
    v6 = v5;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    v9 = type metadata accessor for _UIHostingView(0, *(v1 + 80), *(v1 + 88), v8);
    *(v7 + 56) = v9;
    *(v7 + 64) = swift_getWitnessTable(MEMORY[0x1E69E81C8], v9);
    *(v7 + 32) = v0;
    v10 = v0;
    v11 = String.init(format:_:)();
    v13 = v12;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v11, v13);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v14 = v4;
    v15 = [v10 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v16 = UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v10, v3);
    MEMORY[0x18D00C9B0](v16);

    v17 = MEMORY[0x18D00C850](v14, v6);

    [v15 setName_];
  }
}

uint64_t _UIHostingView.makeViewDebugData()()
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
  static Update.ensure<A>(_:)();
  return v1;
}

Swift::Void __swiftcall _UIHostingView.beginInsertingManagedSubviews()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x200);
  v2 = *(v0 + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

Swift::Void __swiftcall _UIHostingView.endInsertingManagedSubviews()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x200);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4 & ~(v4 >> 63);
  }
}

void _UIHostingView.printHitTestIfNeeded(at:with:)(void *a1, double a2, double a3)
{
  _eventDebugTriggers.getter();
  if ((v15 & 0x40) == 0 || !a1)
  {
    return;
  }

  v14 = a1;
  if (![v14 type])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = specialized implicit closure #1 in UIView.ancestors.getter;
    *(v7 + 24) = 0;
    v15 = v3;
    v16 = 1;
    v17 = partial apply for specialized closure #1 in sequence<A>(first:next:);
    v18 = v7;
    v19 = 0;
    v20 = 1;
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for HostingViewProtocol, &protocol descriptor for HostingViewProtocol, 0);
    type metadata accessor for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>> and conformance DropFirstSequence<A>, type metadata accessor for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>, MEMORY[0x1E69E6D58]);
    Sequence.first<A>(ofType:)();

    if (v21)
    {

      swift_unknownObjectRelease();
      return;
    }

    v9 = MEMORY[0x18D008800](v8);
    v10 = _UICurrentHitTestContext();
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        [v10 radius];
        v13 = v12;
        default argument 2 of UIView.printHitTest(_:radius:options:)(&v15);
        UIView.printHitTest(_:radius:options:)(&v15, a2, a3, v13);
LABEL_13:

        return;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_13;
      }

      default argument 2 of UIView.printHitTest(_:radius:options:)(&v15);
      UIView.printHitTest(_:radius:options:)(&v15, a2, a3, 1.0);
    }

    return;
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    type metadata accessor for (String?, String)(0);
    type metadata accessor for (key: String?, value: String)(0);
    v4 = a1 + 56;
    do
    {

      swift_dynamicCast();
      v5 = v10;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 32 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIKitProxyFocusItem, &protocol descriptor for UIKitProxyFocusItem, 0);
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
    do
    {
      v4 += 16;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    type metadata accessor for (String, String)();
    type metadata accessor for (name: String, value: String)();
    v4 = a1 + 56;
    do
    {

      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x18D00E9C0](i, a1);
        type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x18D00E9C0](i, a1);
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIAccessibilityContainerDataTableCell, &protocolRef_UIAccessibilityContainerDataTableCell);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIAccessibilityContainerDataTableCell, &protocolRef_UIAccessibilityContainerDataTableCell);
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

double _UIHostingView.eventBindingManager.getter()
{
  specialized _UIHostingView.eventBindingManager.getter();

  return result;
}

void *protocol witness for CurrentEventProvider.currentEvent.getter in conformance _UIHostingView<A>()
{
  v0 = specialized _UIHostingView.currentEvent.getter();
  v1 = v0;
  return v0;
}

id thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);
  v6 = v5;

  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x18D00C850](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void specialized SheetBridge.didMoveToWindow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a3;
  v6 = v4;
  v7 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v4 + direct field offset for SheetBridge.host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_35;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v9 + 16) + 8));
  swift_unknownObjectRelease();
  v50 = a4;
  if (v11 && (v12 = [v11 window], v11, v12))
  {

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  *(v6 + direct field offset for SheetBridge.hasWindow) = v13;
  if (*(v6 + direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v15 = *(v8 + 8);
      v16 = swift_getObjectType();
      Strong = ViewGraphDelegate.uiPresenterViewController.getter(v16, *(*(v15 + 16) + 8));
      swift_unknownObjectRelease();
      if (!Strong)
      {
        return;
      }
    }

    v17 = [Strong view];

    if (v17)
    {
      v18 = [v17 window];

      if (!v18)
      {
        return;
      }

      v19 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v6 + v19, &v58);
      PresentationState.delayedPresentation.getter(v65);
      outlined destroy of PresentationState(&v58);
      swift_beginAccess();
      outlined init with copy of PresentationState.Base(v6 + v19, &v58);
      if (v64 == 10)
      {
        v56[4] = v62;
        v57[0] = v63[0];
        *(v57 + 10) = *(v63 + 10);
        v56[0] = v58;
        v56[1] = v59;
        v56[2] = v60;
        v56[3] = v61;
        outlined init with copy of SheetPreference(v56, v53);
        v55 = 11;
        PresentationState.base.willset(v53);
        outlined destroy of SheetPreference(v56);
        outlined assign with take of PresentationState.Base(v53, v6 + v19);
      }

      else
      {
        outlined destroy of PresentationState.Base(&v58);
      }

      swift_endAccess();
      outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(v65, v53, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
      if (!*&v53[0])
      {
        outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(v65, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
        outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(v53, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
        return;
      }

      v62 = v53[4];
      v63[0] = v53[5];
      v63[1] = v54[0];
      *(&v63[1] + 9) = *(v54 + 9);
      v58 = v53[0];
      v59 = v53[1];
      v60 = v53[2];
      v61 = v53[3];
      v49 = swift_unknownObjectWeakLoadStrong();
      if (v49)
      {
        goto LABEL_19;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v8 + 8);
        v21 = swift_getObjectType();
        v22 = ViewGraphDelegate.uiPresenterViewController.getter(v21, *(*(v20 + 16) + 8));
        swift_unknownObjectRelease();
        v49 = v22;
        if (!v22)
        {
          outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(v65, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
LABEL_32:
          outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(&v58, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));
          return;
        }

LABEL_19:
        v48 = BYTE8(v63[2]);
        v23 = [objc_opt_self() defaultCenter];
        if (one-time initialization token for willPresent != -1)
        {
          swift_once();
        }

        [v23 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

        MEMORY[0x1EEE9AC00](v24);
        *&v47[-32] = 0;
        *&v47[-24] = &v58;
        *&v47[-16] = v6;
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
        static Update.ensure<A>(_:)();
        v25 = *&v53[0];
        v26 = direct field offset for UIHostingController.host;
        *(*(*&v53[0] + direct field offset for UIHostingController.host) + *((*MEMORY[0x1E69E7D40] & **(*&v53[0] + direct field offset for UIHostingController.host)) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
        swift_unknownObjectWeakAssign();
        v27 = *&v25[v26];
        v53[0] = *(v63 + 8);

        v28 = v27;

        UIHostingViewBase.environmentOverride.setter();

        specialized PresentationHostingController.setupDelayIfNeeded()();
        specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, v49, BYTE8(v62));
        v29 = *(v6 + direct field offset for SheetBridge.lastEnvironment + 8);
        *&v53[0] = *(v6 + direct field offset for SheetBridge.lastEnvironment);
        *(&v53[0] + 1) = v29;

        EnvironmentValues.explicitPreferredColorScheme.getter();

        if (LOBYTE(v56[0]) == 2)
        {
          goto LABEL_31;
        }

        v30 = *&v25[v26];
        v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0xF8);
        v32 = *(v30 + v31);
        *(v30 + v31) = v56[0];
        v33 = v30;
        specialized _UIHostingView.didChangeColorScheme(from:)(v32);

        v34 = [v25 presentationController];
        if (v34)
        {
          v35 = v34;
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (v36)
          {
            v37 = v36;
LABEL_30:
            UIPresentationController.traitOverrides.getter();
            UIMutableTraits.userInterfaceStyle.setter();
            UIPresentationController.traitOverrides.setter();

LABEL_31:
            v40 = direct field offset for SheetBridge.seed;
            LODWORD(v56[0]) = *(v6 + direct field offset for SheetBridge.seed);
            swift_beginAccess();
            PresentationState.present(_:presentedVC:presentationSeed:)();
            swift_endAccess();
            LOBYTE(v53[0]) = 17;
            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v42 = *(v6 + v40);
            v43 = swift_allocObject();
            *(v43 + 16) = v41;
            *(v43 + 24) = 0;
            v44 = v49;
            *(v43 + 32) = v49;
            *(v43 + 40) = v48;
            *(v43 + 44) = v42;
            *(v43 + 48) = v25;

            v45 = v44;
            v46 = v25;
            static Update.enqueueAction(reason:_:)();

            outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(v65, &lazy cache variable for type metadata for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?, type metadata accessor for (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool));

            goto LABEL_32;
          }
        }

        v38 = [v25 popoverPresentationController];
        if (!v38)
        {
          goto LABEL_31;
        }

        v39 = v38;
        v37 = [v38 adaptiveSheetPresentationController];

        if (!v37)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_37:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }
}

uint64_t (*_UIHostingView.environmentOverride.modify(void *a1))(uint64_t *a1, char a2, __n128 a3)
{
  a1[2] = v1;
  UIHostingViewBase.environmentOverride.getter();
  return _UIHostingView.environmentOverride.modify;
}

uint64_t _UIHostingView.environmentOverride.modify(uint64_t *a1, char a2, __n128 a3)
{
  v4 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return UIHostingViewBase.environmentOverride.setter();
  }

  outlined copy of EnvironmentValues?(*a1, v3);
  UIHostingViewBase.environmentOverride.setter();

  return outlined consume of EnvironmentValues?(v4, v3);
}

void *protocol witness for UIHostingViewProvider.popoverBridge.getter in conformance _UIHostingView<A>(uint64_t a1)
{
  v1 = specialized _UIHostingView.popoverBridge.getter();
  v2 = v1;
  return v1;
}

void closure #1 in _UIHostingView.init(rootView:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _UIHostingView.setLayerDebugName()();
  }
}

void closure #2 in _UIHostingView.init(rootView:)(int a1, int a2, uint64_t a3)
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  notify_get_state(a1, state64);
  if ((a2 & 0x80000000) == 0 && state64[0] == a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      _UIHostingView.setLayerDebugName()();
    }
  }
}

id _UIHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

double key path setter for _UIHostingView._rendererConfiguration : <A>_UIHostingView<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v6 = v3;

  return _UIHostingView._rendererConfiguration.setter(v5);
}

void (*_UIHostingView._rendererConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 56) = v1;
  *(v3 + 16) = v1;
  static Update.locked<A>(_:)();
  return _UIHostingView._rendererConfiguration.modify;
}

void _UIHostingView._rendererConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  v6[0] = *(*a1 + 24);
  v6[1] = v3;
  v6[2] = v4;
  v7 = v5;
  if (a2)
  {

    _UIHostingView._rendererConfiguration.setter(v6);
  }

  else
  {
    _UIHostingView._rendererConfiguration.setter(v6);
  }

  free(v2);
}

uint64_t _UIHostingView._rendererObject.getter()
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Swift.AnyObject?, MEMORY[0x1E69E7C98] + 8);
  static Update.locked<A>(_:)();
  return v1;
}

void closure #1 in _UIHostingView._rendererObject.getter(uint64_t *a2@<X8>)
{
  v3 = _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  v4 = DisplayList.ViewRenderer.exportedObject(rootView:)();

  *a2 = v4;
}

void _UIHostingView.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, Swift::Int *a5)
{
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  if (a5 != &effectiveGeometryObservationContext)
  {
    if (a2)
    {
      v17 = MEMORY[0x18D00C850](a1, a2);
    }

    else
    {
      v17 = 0;
    }

    outlined init with copy of Any?(a3, v30);
    v19 = v31;
    if (v31)
    {
      v20 = __swift_project_boxed_opaque_existential_1(v30, v31);
      v21 = *(v19 - 8);
      v22 = MEMORY[0x1EEE9AC00](v20);
      v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v21 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (!isa)
      {
LABEL_15:
        v26 = type metadata accessor for _UIHostingView(0, *(v9 + 80), *(v9 + 88), v18);
        v29.receiver = v5;
        v29.super_class = v26;
        objc_msgSendSuper2(&v29, sel_observeValueForKeyPath_ofObject_change_context_, v17, v25, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v25 = 0;
      if (!isa)
      {
        goto LABEL_15;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, protocol conformance descriptor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_15;
  }

  if (a2 && (a1 == 0xD000000000000011 && 0x800000018CD5A5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    outlined init with copy of Any?(a3, v30);
    if (v31)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindowScene, 0x1E69DD2F0);
      if (swift_dynamicCast())
      {
        v10 = [v28 effectiveGeometry];
        v11 = *(v5 + *((*v8 & *v5) + 0x190));

        v12 = [v10 isInteractivelyResizing];
        v14 = type metadata accessor for _UIHostingView(0, *(v9 + 80), *(v9 + 88), v13);
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v14);
        specialized InteractiveResizeBridge.handleLiveResize(isResizing:host:)(v12, v5, v11, v14, WitnessTable);
      }
    }

    else
    {
      _sypSgWOhTm_8(v30, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for AnyAccessibilityValue?);
    }
  }
}

uint64_t @objc _UIHostingView.observeValue(forKeyPath:of:change:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, Swift::Int *a6)
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
LABEL_3:
      swift_unknownObjectRetain();
      v13 = a5;
      v14 = a1;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  memset(v20, 0, sizeof(v20));
  v15 = a5;
  v16 = a1;
LABEL_6:
  v17 = MEMORY[0x1E69E7CA0];
  if (a5)
  {
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, protocol conformance descriptor for NSKeyValueChangeKey);
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = 0;
  }

  _UIHostingView.observeValue(forKeyPath:of:change:context:)(v10, v12, v20, v18, a6);

  return _sypSgWOhTm_8(v20, &lazy cache variable for type metadata for Any?, v17 + 8, type metadata accessor for AnyAccessibilityValue?);
}

void @objc _UIHostingView.transform3D.setter(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v10[0] = *a3;
  v10[1] = v3;
  v4 = a3[3];
  v10[2] = a3[2];
  v10[3] = v4;
  v5 = a3[5];
  v10[4] = a3[4];
  v10[5] = v5;
  v6 = a3[7];
  v10[6] = a3[6];
  v10[7] = v6;
  v9 = a1;
  _UIHostingView.transform3D.setter(v10, v9, v7, v8);
}

void _UIHostingView.transform3D.setter(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_transform3D);
  v13.receiver = v4;
  v13.super_class = v6;
  v7 = a1[5];
  v12[4] = a1[4];
  v12[5] = v7;
  v8 = a1[7];
  v12[6] = a1[6];
  v12[7] = v8;
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  objc_msgSendSuper2(&v13, sel_setTransform3D_, v12);
  v11 = _UIHostingView.base.getter();
  UIHostingViewBase.transform3DDidChange(oldValue:)(&oldValue);
}

void @objc _UIHostingView.transform.setter(void *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v7[0] = *a3;
  v7[1] = v3;
  v7[2] = a3[2];
  v6 = a1;
  _UIHostingView.transform.setter(v7, v6, v4, v5);
}

void _UIHostingView.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v15.receiver = v4;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, sel_transform);
  v14.receiver = v4;
  v14.super_class = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = v6;
  v13 = v7;
  objc_msgSendSuper2(&v14, sel_setTransform_, v11);
  v10 = _UIHostingView.base.getter();
  UIHostingViewBase.transformDidChange(oldValue:)(&oldValue);
}

void closure #1 in _UIHostingView.setRootView(_:transaction:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    _UIHostingView.updateRootView()();
  }
}

double closure #1 in _UIHostingView.accessibilityFocusedElementDidChange(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _UIHostingView.viewGraph.getter(Strong);

    static Update.locked<A>(_:)();
  }

  return result;
}

void @objc _UIHostingView.accessibilityFocusedElementDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.accessibilityFocusedElementDidChange(_:)(v4);
}

Swift::Int __swiftcall _UIHostingView.accessibilityElementCount()()
{
  v0 = _UIHostingView.uiKitAccessibilityElements(options:)(4);
  if (v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

Swift::Int @objc _UIHostingView.accessibilityElementCount()(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView.accessibilityElementCount()();

  return v2;
}

Class @objc _UIHostingView.accessibilityElements.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = _UIHostingView.accessibilityElements.getter(a3);

  if (v5)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

char *_UIHostingView.accessibilityElements.getter(uint64_t a1)
{
  v1 = _UIHostingView.uiKitAccessibilityElements(options:)(a1);
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  return v2;
}

Class @objc _UIHostingView._accessibilitySwiftUIDebugData.getter(void *a1)
{
  v1 = a1;
  _UIHostingView._accessibilitySwiftUIDebugData.getter();

  _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t _UIHostingView.forEachIdentifiedView(body:)(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v9 = *((v6 & v5) + 0x50);
  v8[2] = v9;
  v10 = *((v6 & v5) + 0x58);
  v8[3] = v10;
  v8[4] = v7;
  v12 = type metadata accessor for _UIHostingView(0, v9, v10, v11);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v12);
  ViewRendererHost.preferenceValue<A>(_:)();
  specialized _IdentifiedViewTree.forEach(_:)(v14, partial apply for closure #1 in _UIHostingView.forEachIdentifiedView(body:), v8, a1, a2);

  return outlined destroy of _IdentifiedViewTree(v14);
}

void closure #1 in _UIHostingView.forEachIdentifiedView(body:)(double *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (Strong)
  {
    v8 = Strong;
    [Strong convertRect:0 fromView:{*a1, a1[1], a1[2], a1[3]}];
    v4 = v9;
    v5 = v10;
    v6 = v11;
    v7 = v12;
  }

  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
}

uint64_t _UIHostingView._viewDebugData()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  v1 = ViewGraph.viewDebugData()();

  return v1;
}

unint64_t _UIHostingView.addsKeyboardToSafeAreaInsets.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase.safeAreaRegions.getter();

  return (v1 >> 1) & 1;
}

void _UIHostingView.addsKeyboardToSafeAreaInsets.setter(char a1)
{
  v1 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.getter();

  v2 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();
}

void (*_UIHostingView.addsKeyboardToSafeAreaInsets.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _UIHostingView.addsKeyboardToSafeAreaInsets.getter() & 1;
  return _UIHostingView.addsKeyboardToSafeAreaInsets.modify;
}

Class @objc _UIHostingView.makeViewDebugData()(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView.makeViewDebugData()();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v2, v4);
    v5 = isa;
  }

  return v5;
}

Swift::Void __swiftcall _UIHostingView.swiftui_insertManagedSubview(_:at:)(UIView *_, Swift::Int at)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x200);
  v5 = *(v2 + v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v4) = v7;
    [v2 insertSubview:_ atIndex:at];
    v8 = *((*v3 & *v2) + 0x200);
    v9 = *(v2 + v8);
    v6 = __OFSUB__(v9, 1);
    v10 = v9 - 1;
    if (!v6)
    {
      *(v2 + v8) = v10 & ~(v10 >> 63);
      return;
    }
  }

  __break(1u);
}

void @objc _UIHostingView.swiftui_insertManagedSubview(_:at:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  _UIHostingView.swiftui_insertManagedSubview(_:at:)(v6, a4);
}

void __swiftcall _UIHostingView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  _UIHostingView.printHitTestIfNeeded(at:with:)(with.value.super.isa, _.x, _.y);
  v7 = swift_allocObject();
  v7[2] = 1;
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    goto LABEL_20;
  }

  v9 = _UICurrentHitTestContext();
  if (!v9)
  {
    if (static CoreTesting.isRunning.getter())
    {
      goto LABEL_5;
    }

LABEL_20:
    getter of result #1 in _UIHostingView.hitTest(_:with:)(v7, v3, x, y, isa, v8);

    return;
  }

LABEL_5:
  v10 = _UIHostingView.foreignSubviews.getter();
  v11 = &selRef_titleTextAttributes;
  v12 = [v10 allObjects];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v16 = MEMORY[0x1E69E7D40];
    if (!i)
    {
      break;
    }

    v17 = getter of result #1 in _UIHostingView.hitTest(_:with:)(v7, v3, x, y, isa, v15);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    v19 = [*(v3 + *((*v16 & *v3) + 0x1F8)) v11[146]];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = isa;
    if (v20 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    isa = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v21 == v11)
      {

        isa = v29;
        v16 = MEMORY[0x1E69E7D40];
        goto LABEL_22;
      }

      if (isa)
      {
        v22 = MEMORY[0x18D00E9C0](v11, v20);
      }

      else
      {
        if (v11 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v22 = *(v20 + 8 * v11 + 32);
      }

      v7 = v22;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v23 = [v18 isDescendantOfView_];

      v11 = (v11 + 1);
      if (v23)
      {

        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_22:
  v24 = *((*v16 & *v3) + 0xD8);
  v25 = *(v3 + v24);
  *(v3 + v24) = isa;
  v26 = isa;

  if ((UIViewIgnoresTouchEvents(v27) & 1) != 0 || ([v3 pointInside:v26 withEvent:{x, y}] & 1) == 0)
  {
  }

  else
  {
    v28 = v3;
  }
}

id getter of result #1 in _UIHostingView.hitTest(_:with:)(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  v8 = v6;
  if (v6 == 1)
  {
    v13 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50), *((*MEMORY[0x1E69E7D40] & *a2) + 0x58), a6);
    v17.receiver = a2;
    v17.super_class = v13;
    v8 = objc_msgSendSuper2(&v17, sel_hitTest_withEvent_, a5, a3, a4);
    swift_beginAccess();
    v14 = *v7;
    *v7 = v8;
    v15 = v8;
    outlined consume of SheetBridge<SheetPreference.Key>??(v14);
  }

  outlined copy of SheetBridge<SheetPreference.Key>??(v6);
  return v8;
}

id @objc _UIHostingView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  _UIHostingView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

uint64_t _UIHostingView._hitTest(with:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  result = MEMORY[0x18D008800]();
  if ((result & 1) == 0)
  {
    v28 = *((*v4 & *v1) + 0xD8);
    v29 = *(v1 + v28);
    *(v1 + v28) = 0;

    return 0;
  }

  if (!a1)
  {
    __break(1u);
    return result;
  }

  v7 = [a1 event];
  if (v7)
  {
    v8 = *((*v4 & *v1) + 0xD8);
    v9 = *(v1 + v8);
    *(v1 + v8) = v7;
  }

  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  _UIHostingView.updateTransformWithoutGeometryObservation()();
  AGGraphSetUpdate();
  [a1 point];
  v11 = v10;
  v13 = v12;
  [a1 radius];
  v15 = type metadata accessor for _UIHostingView(0, *(v5 + 80), *(v5 + 88), v14);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v15);
  if (!ViewGraphRootValueUpdater.responderNode.getter())
  {
    goto LABEL_16;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {
LABEL_15:

    goto LABEL_16;
  }

  v16 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  if (!v16)
  {
LABEL_16:
    static Update.end()();
    v30 = *((*v4 & *v2) + 0xD8);
    v31 = *(v2 + v30);
    *(v2 + v30) = 0;

    v32 = v2;
    return v2;
  }

  v17 = static ViewResponder.hitTestKey.getter();
  type metadata accessor for UIViewResponder(0);
  v18 = swift_dynamicCastClass();
  if (!v18 || (v19 = v18, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v33 = dispatch thunk of ViewResponder.gestureContainer.getter();
    if (v33)
    {
      v34 = v33;
      _eventDebugTriggers.getter();

      static Update.end()();
      v35 = *((*v4 & *v1) + 0xD8);
      v36 = *(v1 + v35);
      *(v1 + v35) = 0;

      return v34;
    }

    v37 = ViewResponder.parentGestureContainer.getter();
    if (v37)
    {
      v38 = v37;
      swift_getObjectType();
      if (v38 != v2)
      {
        _eventDebugTriggers.getter();

        static Update.end()();
        v39 = *((*v4 & *v2) + 0xD8);
        v40 = *(v2 + v39);
        *(v2 + v39) = 0;

        return v38;
      }
    }

    goto LABEL_15;
  }

  v21 = Strong;
  v22 = closure #2 in _UIHostingView._hitTest(with:)(v19, v17, Strong, v2, v11, v13);
  if (!v22)
  {

    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 _hitTestWithContext_];
  if (!v24)
  {
    v24 = v23;
  }

  v25 = v24;
  _eventDebugTriggers.getter();

  static Update.end()();
  v26 = *((*v4 & *v2) + 0xD8);
  v27 = *(v2 + v26);
  *(v2 + v26) = 0;

  return v25;
}

id closure #2 in _UIHostingView._hitTest(with:)(uint64_t a1, int a2, void *a3, void *a4, double a5, double a6)
{
  swift_beginAccess();
  outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(a1 + 184, v14, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
  if (v14[32] == 1)
  {
    outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(v14, &lazy cache variable for type metadata for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
  }

  else
  {
    outlined init with take of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(v14, v15);
    if (v15[0] == a2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(v15, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
      return Strong;
    }

    outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(v15, type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult);
  }

  [a3 convertPoint:0 fromView:{a5, a6}];
  return [a3 hitTest:*(a4 + *((*MEMORY[0x1E69E7D40] & *a4) + 0xD8)) withEvent:?];
}

id @objc _UIHostingView._hitTest(with:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = _UIHostingView._hitTest(with:)(a3);

  return v7;
}

unint64_t _UIHostingView._childContainers.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = MEMORY[0x18D008800]();
  v5 = type metadata accessor for _UIHostingView(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v4);
  if ((v3 & 1) == 0)
  {
    v14.receiver = v0;
    v14.super_class = v5;
    v8 = objc_msgSendSuper2(&v14, sel__childGestureRecognizerContainers);
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIGestureRecognizerContainer, &protocolRef__UIGestureRecognizerContainer);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v5);
  if (ViewGraphRootValueUpdater.responderNode.getter())
  {
    type metadata accessor for ViewResponder();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = ViewResponder.childGestureContainers.getter(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (!(v7 >> 62))
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIGestureRecognizerContainer, &protocolRef__UIGestureRecognizerContainer);
    if (swift_dynamicCastMetatype() || (v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_11:
    }

    else
    {
      v12 = v9 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v12 += 8;
        if (!--v11)
        {
          goto LABEL_11;
        }
      }

      return v9 | 1;
    }

    return v7;
  }

  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIGestureRecognizerContainer, &protocolRef__UIGestureRecognizerContainer);

  v13 = _bridgeCocoaArray<A>(_:)();
  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t @objc _UIHostingView._intelligenceBaseClass.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _UIHostingView._intelligenceBaseClass.getter(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), a3, a4);

  return swift_getObjCClassFromMetadata();
}

void @objc _UIHostingView._intelligenceCollectContent(in:collector:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IntelligenceElement.Content();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = a1;
  UIIntelligenceElementCollector.createRemoteContext(description:)();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBBE0], v5);
  UIIntelligenceElementCollector.collect(_:)();
  (*(v6 + 8))(v8, v5);
}

double _UIHostingView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v14);

  return IntelligenceHost.collectContent(in:remoteContextWrapper:)(a1, v14, WitnessTable, a2, a3, a4, a5);
}

void @objc _UIHostingView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v15 = a1;
  _UIHostingView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(v12, a2, a3, a4, a5, v15, v13, v14);
}

void @objc _UIHostingView.legacyKeyboardWillShow(notification:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.legacyKeyboardWillShow(notification:)(v4);
}

void @objc _UIHostingView.legacyKeyboardWillHide(notification:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.legacyKeyboardWillHide(notification:)(v4);
}

void @objc _UIHostingView.legacyKeyboardFrameWillChange(notification:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.legacyKeyboardFrameWillChange(notification:)(v4);
}

id _UIHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t (*_UIHostingView.isHiddenForReuse.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = UIHostingViewBase.isHiddenForReuse.getter() & 1;
  return _UIHostingView.isHiddenForReuse.modify;
}

Swift::Void __swiftcall _UIHostingView.setTestSize(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  static CGSize.deviceSize.getter();
  if (v5 == width && v4 == height)
  {
    v7 = objc_opt_self();
    v8 = [v7 currentDevice];
    specialized UIDevice.screenSize.getter();
    height = v9;
    v11 = v10;

    v12 = [v7 currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v14 = v13 == 1 && height < v11;
    if (v14 || (!v13 ? (v15 = v11 < height) : (v15 = 0), v15))
    {
      width = v11;
    }

    else
    {
      width = height;
      height = v11;
    }
  }

  [v1 bounds];
  if (v17 != width || v16 != height)
  {
    v19 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90)) = 1;
    [v1 setBounds_];
    *(v1 + *((*v19 & *v1) + 0x90)) = 0;
  }
}

void *_UIHostingView.attributeCountInfo.getter(void x0_0, void x1_0, void a3, uint64_t a1)
{
  v3 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3);

  return ViewRendererHost.preferenceValue<A>(_:)();
}

id _UIHostingView.setTestSafeAreaInsets(_:)(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  *(v5 + 32) = 0;
  return [v4 safeAreaInsetsDidChange];
}

Swift::Void __swiftcall _UIHostingView._renderForTest(interval:)(Swift::Double interval)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
  ViewRendererHost.advanceTimeForTest(interval:)(interval);
  UIHostingViewBase.canAdvanceTimeAutomatically.setter();
  v5 = 16;
  v10 = 16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  v6 = objc_opt_self();
  swift_beginAccess();
  while (!__OFSUB__(v5--, 1))
  {
    v10 = v5;
    static CoreTesting.needsRender.setter();
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
    v8 = ViewGraphRootValueUpdater.updateGraph<A>(body:)();
    MEMORY[0x18D00E3E0](v8);
    LOBYTE(v9) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    [v6 flush];
    if (!specialized shouldContinue #1 <A>() in _UIHostingView._renderForTest(interval:)(v2, &v10))
    {
      static CoreTesting.needsRender.setter();
      UIHostingViewBase.canAdvanceTimeAutomatically.setter();
      return;
    }
  }

  __break(1u);
}

BOOL specialized shouldContinue #1 <A>() in _UIHostingView._renderForTest(interval:)(uint64_t a1, void *a2)
{
  if (!_UIHostingView.valuesNeedingUpdate.getter(a1) && (static CoreTesting.needsRender.getter() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  return *a2 >= 0;
}

Swift::Bool __swiftcall _UIHostingView._renderAsyncForTest(interval:)(Swift::Double interval)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
  ViewRendererHost.advanceTimeForTest(interval:)(interval);
  UIHostingViewBase.canAdvanceTimeAutomatically.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  v5 = 1;
  while (1)
  {
    v8 = MEMORY[0x18D00E3E0]();
    MEMORY[0x1EEE9AC00](v8);
    static Update.locked<A>(_:)();
    if (v10 != 1)
    {
      break;
    }

    v7 = [objc_opt_self() flush];
    if (v5)
    {
      _UIHostingView.viewGraph.getter(v7);
      v6 = ViewGraph.updateRequiredMainThread.getter();

      v5 = v6 ^ 1;
    }

    else
    {
      v5 = 0;
    }

    if (!_UIHostingView.valuesNeedingUpdate.getter(v7))
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  UIHostingViewBase.canAdvanceTimeAutomatically.setter();
  return v5 & 1;
}

void *closure #1 in _UIHostingView._renderAsyncForTest(interval:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v6 = 1;
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *a1) + 0x50), *((*MEMORY[0x1E69E7D40] & *a1) + 0x58), a2);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4, 0, v6);
  result = ViewGraphRootValueUpdater.renderAsync(interval:targetTimestamp:)();
  *a3 = (v7 & 1) == 0;
  return result;
}

void _UIHostingView._performScrollTest(startOffset:iterations:delta:length:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*MEMORY[0x1E69E7D40] & *v6);
  v9 = v8[55];
  if (*(v6 + v9))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ScrollTest();
    v16 = swift_allocObject();
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0;
    *(v16 + 16) = a4;
    *(v16 + 24) = a1;
    *(v16 + 32) = a5;
    *(v16 + 40) = a6;
    *(v16 + 48) = 1;
    *(v6 + v9) = v16;
    if (*(v6 + *((*v7 & *v6) + 0x1B8)))
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v8[10];
      v18[3] = v8[11];
      v18[4] = a2;
      v18[5] = a3;
      v18[6] = v17;

      outlined copy of AppIntentExecutor?(a2, a3);

      ScrollTest.run<A>(in:completion:)(v6, partial apply for closure #1 in _UIHostingView._performScrollTest(startOffset:iterations:delta:length:completion:), v18);
    }
  }
}

double closure #1 in _UIHostingView._performScrollTest(startOffset:iterations:delta:length:completion:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8)) = 0;
  }

  return result;
}

void closure #1 in _UIHostingView.viewCacheIsEmpty.getter(_BYTE *a1@<X8>)
{
  v2 = _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  v3 = DisplayList.ViewRenderer.viewCacheIsEmpty.getter();

  *a1 = v3 & 1;
}

Swift::Void __swiftcall _UIHostingView.dismissActivePresentations()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in _UIHostingView.dismissActivePresentations();
  *(v3 + 24) = v2;
  v7[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_43_0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 _performWithoutDeferringTransitions_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void closure #1 in _UIHostingView.dismissActivePresentations()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

void protocol witness for TestHost.sendTestEvents(_:) in conformance _UIHostingView<A1>(Swift::OpaquePointer a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>);

  ViewRendererHost.sendTestEvents(_:)(a1);
}

void protocol witness for TestHost.resetTestEvents() in conformance _UIHostingView<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a1);

  ViewRendererHost.resetTestEvents()();
}

void (*protocol witness for TestHost.environmentOverride.modify in conformance _UIHostingView<A>(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _UIHostingView.environmentOverride.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*protocol witness for TestHost.isHiddenForReuse.modify in conformance _UIHostingView<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _UIHostingView.isHiddenForReuse.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t protocol witness for TestHost.invalidateProperties(_:mayDeferUpdate:) in conformance _UIHostingView<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a3);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*protocol witness for TestHost.accessibilityEnabled.modify in conformance _UIHostingView<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _UIHostingView.accessibilityEnabled.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

uint64_t _s7SwiftUI26GestureContainerDefinitionC05printcD9AncestorsyySo020_UIGestureRecognizerD0_pFZTf4en_nAA013ViewRespondercD0C_Tt0g5(uint64_t a1)
{
  v11 = specialized thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String);
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String?);
  v10 = &block_descriptor_89_1;
  v1 = _Block_copy(&v7);

  v2 = _UIGestureRecognizerContainerAncestralDescription();
  _Block_release(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v7 = 0;
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v7 = 0xD000000000000013;
  v8 = 0x800000018CD43630;
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D0097D0](v7, v8);
}

uint64_t partial apply for closure #1 in _UIHostingView.makeViewDebugData()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _UIHostingView.viewGraph.getter(a1);
  ViewGraph.viewDebugData()();

  v3 = static _ViewDebug.serializedData(_:)();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

void specialized _UIHostingView.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) = 0;
  v3 = *((*v2 & *v0) + 0x78);
  type metadata accessor for EventBindingManager();
  *(v0 + v3) = EventBindingManager.__allocating_init()();
  *(v0 + *((*v2 & *v0) + 0x80)) = 0;
  *(v0 + *((*v2 & *v0) + 0x88)) = 0;
  *(v0 + *((*v2 & *v0) + 0x90)) = 1;
  *(v0 + *((*v2 & *v0) + 0x98)) = 0;
  *(v0 + *((*v2 & *v0) + 0xA0)) = 0;
  v4 = v1 + *((*v2 & *v1) + 0xA8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = v1 + *((*v2 & *v1) + 0xB0);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  *(v0 + *((*v2 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v2 & *v0) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v2 & *v0) + 0xD8)) = 0;
  v6 = v1 + *((*v2 & *v1) + 0xE8);
  *v6 = 0;
  v6[8] = 1;
  *(v0 + *((*v2 & *v0) + 0xF0)) = 0;
  *(v0 + *((*v2 & *v0) + 0xF8)) = 2;
  v7 = *((*v2 & *v0) + 0x100);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v9 = v8;
  v10 = objc_allocWithZone(v8);
  *(v10 + *((*v2 & *v10) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + *((*v2 & *v10) + 0x68)) = 0;
  *(v10 + *((*v2 & *v10) + 0x70)) = 0;
  *(v10 + *((*v2 & *v10) + 0x78)) = 0;
  EnvironmentValues.init()();
  v11 = v10 + *((*v2 & *v10) + 0x88);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  *(v11 + 8) = 0u;
  *(v11 + 9) = 0u;
  *(v11 + 10) = 0u;
  *(v11 + 11) = 0u;
  *(v11 + 12) = 0u;
  *(v11 + 13) = 0u;
  *(v11 + 14) = 0u;
  *(v11 + 15) = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 34) = 0;
  *(v10 + *((*v2 & *v10) + 0x90)) = 0;
  *(v10 + *((*v2 & *v10) + 0x98)) = 1;
  v34.receiver = v10;
  v34.super_class = v9;
  *(v0 + v7) = objc_msgSendSuper2(&v34, sel_init);
  v12 = *((*v2 & *v0) + 0x108);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v14 = v13;
  v15 = objc_allocWithZone(v13);
  *(v15 + *((*v2 & *v15) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + *((*v2 & *v15) + 0x68)) = 0;
  *(v15 + *((*v2 & *v15) + 0x70)) = 0;
  *(v15 + *((*v2 & *v15) + 0x78)) = 0;
  EnvironmentValues.init()();
  v16 = v15 + *((*v2 & *v15) + 0x88);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  *(v16 + 7) = 0u;
  *(v16 + 8) = 0u;
  *(v16 + 9) = 0u;
  *(v16 + 20) = 0;
  *(v15 + *((*v2 & *v15) + 0x90)) = 0;
  *(v15 + *((*v2 & *v15) + 0x98)) = 0;
  v33.receiver = v15;
  v33.super_class = v14;
  *(v1 + v12) = objc_msgSendSuper2(&v33, sel_init);
  *(v1 + *((*v2 & *v1) + 0x110)) = 1;
  v17 = *((*v2 & *v1) + 0x118);
  type metadata accessor for FocusBridge();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v18 + 48) = 0;
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  EnvironmentValues.init()();
  *(v18 + 120) = 0u;
  *(v18 + 104) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v18 + 160) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 1;
  *(v1 + v17) = v18;
  v21 = *((*v2 & *v1) + 0x120);
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v1 + *((*v2 & *v1) + 0x128)) = 0;
  v22 = *((*v2 & *v1) + 0x130);
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v23 = *((*v2 & *v1) + 0x138);
  *(v1 + v23) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v1 + *((*v2 & *v1) + 0x140)) = 0;
  *(v1 + *((*v2 & *v1) + 0x148)) = 0;
  v24 = *((*v2 & *v1) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v25 = swift_allocObject();
  *(v25 + 16) = 514;
  *(v25 + 24) = v19;
  *(v25 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + v24) = v25;
  swift_weakInit();
  *(v1 + *((*v2 & *v1) + 0x160)) = 0;
  v26 = *((*v2 & *v1) + 0x168);
  *(v1 + v26) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v27 = *((*v2 & *v1) + 0x170);
  *(v1 + v27) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v1 + *((*v2 & *v1) + 0x178)) = 0;
  *(v1 + *((*v2 & *v1) + 0x180)) = 0;
  v28 = *((*v2 & *v1) + 0x188);
  *(v1 + v28) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v29 = *((*v2 & *v1) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 20) = 0;
  *(v30 + 24) = 0;
  *(v1 + v29) = v30;
  *(v1 + *((*v2 & *v1) + 0x198)) = 0;
  v31 = *((*v2 & *v1) + 0x1A0);
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v1 + *((*v2 & *v1) + 0x1A8)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1B0)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1B8)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v2 & *v1) + 0x1C8)) = 0;
  v32 = v1 + *((*v2 & *v1) + 0x1D0);
  *v32 = 0;
  v32[8] = 0;
  *(v32 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v2 & *v1) + 0x1E0)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1E8)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1F0)) = 0;
  *(v1 + *((*v2 & *v1) + 0x1F8)) = 0;
  *(v1 + *((*v2 & *v1) + 0x200)) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for _UIHostingView<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for (name: String, value: String)()
{
  if (!lazy cache variable for type metadata for (name: String, value: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (name: String, value: String));
    }
  }
}

void _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of (presentation: SheetPreference, presentedVC: PresentationHostingController<AnyView>?, animated: Bool)?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>)
  {
    type metadata accessor for UnfoldSequence<UIView, (UIView?, Bool)>(255);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type UnfoldSequence<UIView, (UIView?, Bool)> and conformance UnfoldSequence<A, B>, type metadata accessor for UnfoldSequence<UIView, (UIView?, Bool)>, MEMORY[0x1E69E6BA8]);
    Sequence = type metadata accessor for DropFirstSequence();
    if (!v2)
    {
      atomic_store(Sequence, &lazy cache variable for type metadata for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>);
    }
  }
}

void type metadata accessor for UnfoldSequence<UIView, (UIView?, Bool)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UnfoldSequence<UIView, (UIView?, Bool)>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    type metadata accessor for (UIView?, Bool)(255);
    v1 = type metadata accessor for UnfoldSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UnfoldSequence<UIView, (UIView?, Bool)>);
    }
  }
}

void type metadata accessor for (UIView?, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIView?, Bool))
  {
    _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1(255, &lazy cache variable for type metadata for UIView?, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIView?, Bool));
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void _sSDySSypGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = type metadata accessor for Dictionary();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of PlatformViewResponderBase<UIView, UIViewContentResponder>.PlatformHitTestResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider()
{
  result = lazy protocol witness table cache variable for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider;
  if (!lazy protocol witness table cache variable for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIInteractionResponderProvider, &type metadata for UIInteractionResponderProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider);
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ExtendedLaunchTestNameKey(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = result[1];
  if (v3)
  {
    v4 = *result;
  }

  else
  {
    result = a2(v5);
    v4 = v5[0];
    v3 = v5[1];
  }

  *v2 = v4;
  v2[1] = v3;
  return result;
}

Swift::Void __swiftcall FinishLaunchTestAction.callAsFunction()()
{
  v0 = static AppGraph.shared;
  if (static AppGraph.shared && (*(static AppGraph.shared + 234) & 1) == 0)
  {
    *(static AppGraph.shared + 234) = 1;

    if (AppGraph.traceLaunch.getter())
    {
      type metadata accessor for AGGraphRef(0);
      static AGGraphRef.stopTracing()();
    }

    else
    {
      if ((AppGraph.launchProfileOptions.getter() & 2) != 0)
      {
        AGGraphStopProfiling();
      }

      if (*(v0 + 228))
      {
        AGGraphArchiveJSON();
      }
    }
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  v3 = [v1 sharedApplication];
  v4 = [v3 _launchTestName];

  [v2 finishedTest_];
}

unint64_t lazy protocol witness table accessor for type EmptyWidget and conformance EmptyWidget()
{
  result = lazy protocol witness table cache variable for type EmptyWidget and conformance EmptyWidget;
  if (!lazy protocol witness table cache variable for type EmptyWidget and conformance EmptyWidget)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmptyWidget, &type metadata for EmptyWidget, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyWidget and conformance EmptyWidget);
  }

  return result;
}

uint64_t UIHostingController.centersRootView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + direct field offset for UIHostingController.host);
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7 = v5;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
  LOBYTE(v6) = ViewRendererHost.centersRootView.getter();

  return v6 & 1;
}

void UIHostingController.centersRootView.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + direct field offset for UIHostingController.host);
  v6 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7 = v5;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v6);
  ViewRendererHost.centersRootView.setter();
}

void (*UIHostingController.centersRootView.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = v4;
  *(a1 + 8) = UIHostingController.centersRootView.getter(a1, a2, a3, a4) & 1;
  return UIHostingController.centersRootView.modify;
}

uint64_t UIHostingController.isHiddenForReuse.getter()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  v2 = _UIHostingView.isHiddenForReuse.getter();

  return v2 & 1;
}

void UIHostingController.isHiddenForReuse.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for UIHostingController.host);
  _UIHostingView.isHiddenForReuse.setter(a1);
}

void (*UIHostingController.isHiddenForReuse.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = UIHostingController.isHiddenForReuse.getter() & 1;
  return UIHostingController.isHiddenForReuse.modify;
}

void (*specialized UIHostingController.rootView.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for UIHostingController.host;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x60);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return UIHostingController.rootView.modifyspecialized ;
}

void UIHostingController.rootView.modifyspecialized (char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  v4 = *(*(*a1 + 10) + *(*a1 + 11));
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  if (a2)
  {
    swift_beginAccess();
    *(v4 + v5) = v3;

    v6 = v4;

    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {
    swift_beginAccess();
    *(v4 + v5) = v3;
    v7 = v4;

    type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  free(v2);
}

void (*UIHostingController.rootView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _UIHostingView.rootView.getter(v9);
  return UIHostingController.rootView.modify;
}

void UIHostingController.rootView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized UIHostingController.rootView.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized UIHostingController.rootView.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*UIHostingController.sizingOptions.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return UIHostingController.sizingOptions.modify;
}

void UIHostingController.sizingOptions.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  UIHostingController.sizingOptions.setter(&v2);

  free(v1);
}

void UIHostingController.setRootView(_:transaction:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + direct field offset for UIHostingController.host);
  _UIHostingView.setRootView(_:transaction:)(a1, a2);
}

CGSize __swiftcall UIHostingController.sizeThatFits(in:)(CGSize in)
{
  [*(v1 + direct field offset for UIHostingController.host) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

Swift::Void __swiftcall UIHostingController._render(seconds:)(Swift::Double seconds)
{
  v3 = *(v2 + direct field offset for UIHostingController.host);
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  v5 = v3;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v4);
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t specialized UIHostingController._forEachIdentifiedView(body:)(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(v2 + direct field offset for UIHostingController.host);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v7 = v5;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
  specialized _IdentifiedViewTree.forEach(_:)(v9, partial apply for specialized closure #1 in _UIHostingView.forEachIdentifiedView(body:), v6, a1, a2);

  return outlined destroy of _IdentifiedViewTree(v9);
}

void UIHostingController._forEachIdentifiedView(body:)(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(v2 + direct field offset for UIHostingController.host);
  _UIHostingView.forEachIdentifiedView(body:)(a1, a2);
}

uint64_t UIHostingController._disableSafeArea.getter()
{
  _UIHostingView.explicitSafeAreaInsets.getter(&v1);
  static EdgeInsets.zero.getter();
  if (v2)
  {
    return 0;
  }

  return static EdgeInsets.== infix(_:_:)();
}

void UIHostingController._disableSafeArea.setter(char a1)
{
  v7 = *(v1 + direct field offset for UIHostingController.host);
  v3 = 0uLL;
  v4 = 0uLL;
  if (a1)
  {
    static EdgeInsets.zero.getter();
    *(&v3 + 1) = v5;
    *(&v4 + 1) = v6;
  }

  v8[0] = v3;
  v8[1] = v4;
  v9 = (a1 & 1) == 0;
  _UIHostingView.explicitSafeAreaInsets.setter(v8);
}

void (*specialized UIHostingController._disableSafeArea.modify(uint64_t a1))(uint64_t a1)
{
  v3 = direct field offset for UIHostingController.host;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(*(v1 + v3) + *((*MEMORY[0x1E69E7D40] & **(v1 + v3)) + 0xA8) + 32);
  static EdgeInsets.zero.getter();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = static EdgeInsets.== infix(_:_:)();
  }

  *(a1 + 16) = v5 & 1;
  return UIHostingController._disableSafeArea.modifyspecialized ;
}

void UIHostingController._disableSafeArea.modifyspecialized (uint64_t a1)
{
  v1 = *(a1 + 16);
  v7 = *(*a1 + *(a1 + 8));
  v2 = 0uLL;
  v3 = 0uLL;
  if (v1 == 1)
  {
    static EdgeInsets.zero.getter();
    *(&v2 + 1) = v4;
    *(&v3 + 1) = v5;
  }

  v6 = v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0xA8);
  *v6 = v2;
  *(v6 + 1) = v3;
  v6[32] = v1 ^ 1;
  [v7 safeAreaInsetsDidChange];
}

void (*UIHostingController._disableSafeArea.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = UIHostingController._disableSafeArea.getter() & 1;
  return UIHostingController._disableSafeArea.modify;
}

Class @objc UIHostingController.keyCommands.getter(void *a1)
{
  v1 = a1;
  v5 = UIHostingController.keyCommands.getter(v1, v2, v3, v4);

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIKeyCommand, 0x1E69DCBA0);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t UIHostingController.keyCommands.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = v6;
  v8 = *(v4 + direct field offset for UIHostingController.keyboardShortcutBridge);
  if (v8)
  {
    if (*&v8[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings + 8] == -1)
    {
      MEMORY[0x1EEE9AC00](a1);
      v12 = v8;
      static Update.ensure<A>(_:)();
    }

    else
    {
      v9 = v8;
    }

    v11 = type metadata accessor for UIHostingController(0, *(v7 + 80), *(v7 + 88), v10);
    v18[3] = v11;
    v18[4] = &protocol witness table for UIHostingController<A>;
    v18[0] = v5;
    v13 = v5;
    KeyboardShortcutBridge.updateKeyCommands(_:)(v18);

    outlined destroy of KeyboardShortcutSource?(v18);
  }

  else
  {
    v11 = type metadata accessor for UIHostingController(0, *(v6 + 80), *(v6 + 88), a4);
  }

  v19.receiver = v5;
  v19.super_class = v11;
  v14 = objc_msgSendSuper2(&v19, sel_keyCommands);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIKeyCommand, 0x1E69DCBA0);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

uint64_t closure #1 in UIHostingController.keyCommands.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + direct field offset for UIHostingController.host);
  _UIHostingView.viewGraph.getter(v4);

  GraphHost.addPreference<A>(_:)();

  v5 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences;
  *(a1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences) = 1;
  v6 = *(a2 + direct field offset for UIHostingController.host);
  _UIHostingView.viewGraph.getter(v6);

  GraphHost.preferenceValues()();

  if (*(a1 + v5) == 1)
  {
    PreferenceValues.subscript.getter();

    v7 = a1 + OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_updatedBindings;
    *v7 = v9;
    *(v7 + 8) = v10;
  }
}

id UIHostingController.init(coder:rootView:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  *(v2 + direct field offset for UIHostingController.allowedBehaviors) = 0;
  *(v2 + direct field offset for UIHostingController.requiredBridges) = 0;
  v8 = v2 + direct field offset for UIHostingController.overrides;
  *v8 = xmmword_18CD874C0;
  *(v8 + 2) = 0;
  v8[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8[48] = 2;
  *&v3[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v3[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v3[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v3[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v9 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v3[v9] = UIKitDialogBridge.init()();
  *&v3[direct field offset for UIHostingController.testBridge] = 0;
  *&v3[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v10 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v11 = swift_allocObject();
  *(v11 + 16) = -1;
  *&v3[v10] = v11;
  *&v3[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v12 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v3[v12] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v3[direct field offset for UIHostingController.deferredEdges] = 256;
  v13 = MEMORY[0x1E69E7CC0];
  *&v3[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v3[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v14 = &v3[direct field offset for UIHostingController.persistentSystemOverlays];
  *v14 = 512;
  v14[2] = 3;
  *&v3[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v13;
  v3[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v15 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v3[v15] = ContainerBackgroundBridge.init()();
  *&v3[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v3[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v3[direct field offset for UIHostingController.sizingOptions] = 0;
  v16 = *((v7 & v6) + 0x50);
  v17 = *((v7 & v6) + 0x58);
  type metadata accessor for _UIHostingView(0, v16, v17, v18);
  *&v3[direct field offset for UIHostingController.host] = specialized _UIHostingView.__allocating_init(rootView:)(a2, v19, v20, v21);
  v27.receiver = v3;
  v27.super_class = type metadata accessor for UIHostingController(0, v16, v17, v22);
  v23 = objc_msgSendSuper2(&v27, sel_initWithCoder_, a1);
  if (v23)
  {
    v24 = v23;
    v25 = v23;
    UIHostingController._commonInit()();

    (*(*(v16 - 8) + 8))(a2, v16);
    return v24;
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    return 0;
  }
}

id UIHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UIHostingController.init(_hostingView:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + direct field offset for UIHostingController.allowedBehaviors) = 0;
  *(v1 + direct field offset for UIHostingController.requiredBridges) = 0;
  v6 = v1 + direct field offset for UIHostingController.overrides;
  *v6 = xmmword_18CD874C0;
  *(v6 + 2) = 0;
  v6[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v7 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *&v2[v7] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v8 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v9 = swift_allocObject();
  *(v9 + 16) = -1;
  *&v2[v8] = v9;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v10 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v11 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v12 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v12 = 512;
  v12[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v11;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v13 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v13] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  *&v2[direct field offset for UIHostingController.host] = a1;
  v15 = type metadata accessor for UIHostingController(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v14);
  v19.receiver = v2;
  v19.super_class = v15;
  v16 = a1;
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  UIHostingController._commonInit()();

  return v17;
}

uint64_t @objc UIHostingController.isModalInPresentation.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.isModalInPresentation.getter();

  return v2 & 1;
}

void @objc UIHostingController.isModalInPresentation.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1;
  UIHostingController.isModalInPresentation.setter(v3, v6, v4, v5);
}

id UIHostingController.isModalInPresentation.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_setModalInPresentation_, a1 & 1);
}

id closure #1 in UIHostingController.isModalInPresentation.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *(a1 + direct field offset for UIHostingController.host);
  _UIHostingView.viewGraph.getter(v5);

  GraphHost.preferenceValue<A>(_:)();

  if (v10 == 2)
  {
    v7 = type metadata accessor for UIHostingController(0, *(v4 + 80), *(v4 + 88), v6);
    v9.receiver = a1;
    v9.super_class = v7;
    result = objc_msgSendSuper2(&v9, sel_isModalInPresentation);
  }

  else
  {
    result = (v10 & 1);
  }

  *a2 = result;
  return result;
}

void UIHostingController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v16.receiver = v4;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 superview];

      if (v10)
      {
        ObjectType = swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          v13 = *(v12 + 8);
          v14 = v12;
          v15 = v10;
          v13(ObjectType, v14);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void @objc UIHostingController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v7 = a1;
  UIHostingController.preferredContentSizeDidChange(forChildContentContainer:)(a3, v7, v5, v6);
  swift_unknownObjectRelease();
}

id @objc UIHostingController.childForInterfaceOrientationLock.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForInterfaceOrientationLock.getter();

  return v2;
}

uint64_t UIHostingController._update(with:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(v2 + direct field offset for UIHostingController.alwaysOnBridge))
  {
    v4 = a1;

    AlwaysOnBridge.update(with:)(v4);
  }

  return a2(a1);
}

double @objc UIHostingController._update(with:completion:)(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = a1;
  UIHostingController._update(with:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ());

  return result;
}

uint64_t UIHostingController._timelines(for:)()
{
  if (!*(v0 + direct field offset for UIHostingController.alwaysOnBridge))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = AlwaysOnBridge.timelines(for:)();

  return v1;
}

Class @objc UIHostingController._timelines(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  UIHostingController._timelines(for:)();

  (*(v5 + 8))(v7, v4);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnTimeline, 0x1E698E508);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

void key path setter for UIHostingController._rendererConfiguration : <A>UIHostingController<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v5 = v3;

  UIHostingController._rendererConfiguration.setter(v4);
}

uint64_t UIHostingController._rendererObject.getter()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  v2 = _UIHostingView._rendererObject.getter();

  return v2;
}

double UIHostingController.target(forAction:withSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  if (static Selector.== infix(_:_:)())
  {
    if (*(v4 + direct field offset for UIHostingController.keyboardShortcutBridge))
    {
      v24 = *(v4 + direct field offset for UIHostingController.keyboardShortcutBridge);
      *(a3 + 24) = type metadata accessor for KeyboardShortcutBridge();
      v9 = v24;
      *a3 = v24;

      v10 = v9;
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    outlined init with copy of Any?(a2, &v26);
    v13 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      v14 = __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      v15 = *(v13 - 8);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for UIHostingController(0, *(v8 + 80), *(v8 + 88), v12);
    v25.receiver = v4;
    v25.super_class = v20;
    v21 = objc_msgSendSuper2(&v25, sel_targetForAction_withSender_, a1, v19);
    swift_unknownObjectRelease();
    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    result = *&v26;
    v22 = v27;
    *a3 = v26;
    *(a3 + 16) = v22;
  }

  return result;
}

id @objc UIHostingController.target(forAction:withSender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  UIHostingController.target(forAction:withSender:)(a3, v16, v17);

  outlined destroy of Any?(v16);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id UIHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x18D00C850](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void @objc UIHostingController.init(nibName:bundle:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  specialized UIHostingController.init(nibName:bundle:)();
}

id UIHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double protocol witness for _UIHostingViewable.rootView.getter in conformance <> UIHostingController<A>()
{
  swift_beginAccess();

  return result;
}

void protocol witness for _UIHostingViewable.rootView.setter in conformance <> UIHostingController<A>(uint64_t a1)
{
  v3 = *(v1 + direct field offset for UIHostingController.host);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3;

  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void (*protocol witness for _UIHostingViewable.rootView.modify in conformance <> UIHostingController<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = specialized UIHostingController.rootView.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

void protocol witness for _UIHostingViewable._render(seconds:) in conformance <> UIHostingController<A>(double a1)
{
  v2 = *(v1 + direct field offset for UIHostingController.host);
  type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v3 = v2;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t protocol witness for _UIHostingViewable._disableSafeArea.getter in conformance <> UIHostingController<A>(uint64_t a1)
{
  v2 = *(*(v1 + direct field offset for UIHostingController.host) + *((*MEMORY[0x1E69E7D40] & **(v1 + direct field offset for UIHostingController.host)) + 0xA8) + 32);
  static EdgeInsets.zero.getter();
  if (v2)
  {
    return 0;
  }

  return static EdgeInsets.== infix(_:_:)();
}

void protocol witness for _UIHostingViewable._disableSafeArea.setter in conformance <> UIHostingController<A>(char a1)
{
  v8 = *(v1 + direct field offset for UIHostingController.host);
  v3 = 0uLL;
  v4 = 0uLL;
  if (a1)
  {
    static EdgeInsets.zero.getter();
    *(&v3 + 1) = v5;
    *(&v4 + 1) = v6;
  }

  v7 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0xA8);
  *v7 = v3;
  *(v7 + 1) = v4;
  v7[32] = (a1 & 1) == 0;
  [v8 safeAreaInsetsDidChange];
}

void (*protocol witness for _UIHostingViewable._disableSafeArea.modify in conformance <> UIHostingController<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized UIHostingController._disableSafeArea.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void specialized UIHostingController.init(coder:)()
{
  v1 = v0;
  *(v0 + direct field offset for UIHostingController.allowedBehaviors) = 0;
  *(v0 + direct field offset for UIHostingController.requiredBridges) = 0;
  v2 = v0 + direct field offset for UIHostingController.overrides;
  *v2 = xmmword_18CD874C0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 2;
  *(v1 + direct field offset for UIHostingController.customTabItem) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + direct field offset for UIHostingController.toolbarBridge) = 0;
  *(v1 + direct field offset for UIHostingController.inspectorBridgeV5) = 0;
  *(v1 + direct field offset for UIHostingController.barAppearanceBridge) = 0;
  v3 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge(0);
  swift_allocObject();
  *(v1 + v3) = UIKitDialogBridge.init()();
  *(v1 + direct field offset for UIHostingController.testBridge) = 0;
  *(v1 + direct field offset for UIHostingController.contentScrollViewBridge) = 0;
  v4 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v5 = swift_allocObject();
  *(v5 + 16) = -1;
  *(v1 + v4) = v5;
  *(v1 + direct field offset for UIHostingController.alwaysOnBridge) = 0;
  v6 = direct field offset for UIHostingController.fileImportExportBridge;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *(v1 + direct field offset for UIHostingController.deferredEdges) = 256;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker) = MEMORY[0x1E69E7CC0];
  *(v1 + direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController) = 0;
  v8 = v1 + direct field offset for UIHostingController.persistentSystemOverlays;
  *v8 = 512;
  *(v8 + 2) = 3;
  *(v1 + direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker) = v7;
  *(v1 + direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController) = 0;
  v9 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *(v1 + v9) = ContainerBackgroundBridge.init()();
  *(v1 + direct field offset for UIHostingController.navigationBridge) = 0;
  *(v1 + direct field offset for UIHostingController.keyboardShortcutBridge) = 0;
  *(v1 + direct field offset for UIHostingController.sizingOptions) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for EnvironmentPropertyKey<UndoManagerKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TableRowElementCount(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TableRowForEachState.__allocating_init(inputs:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TableRowForEachState.init(inputs:)(a1);
  return v2;
}

id TableRowForEachState.init(inputs:)(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[7];
  v36 = a1[6];
  v37 = v3;
  v38 = a1[8];
  v39 = *(a1 + 18);
  v4 = a1[3];
  v32 = a1[2];
  v33 = v4;
  v5 = a1[5];
  v34 = a1[4];
  v35 = v5;
  v6 = a1[1];
  v30 = *a1;
  v31 = v6;
  v7 = v2;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(v1 + 168) = result;
    *(v1 + 176) = 0;
    *(v1 + 180) = 1;
    *(v1 + 184) = 0;
    *(v1 + 188) = 1;
    v9 = *(*v1 + 160);
    v10 = v7[11];
    v12 = v7[12];
    v13 = v7[13];
    v14 = v7[14];
    v24 = v7[10];
    v11 = v24;
    v25 = v10;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v15 = type metadata accessor for ForEach();
    (*(*(v15 - 8) + 56))(v1 + v9, 1, 1, v15);
    v16 = v1 + *(*v1 + 168);
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = *(*v1 + 176);
    v18 = v7[15];
    v24 = v11;
    v25 = v10;
    v26 = v12;
    v27 = v13;
    v28 = v14;
    v29 = v18;
    type metadata accessor for TableRowForEachState.Item(0, &v24);
    *(v1 + v17) = Dictionary.init()();
    *(v1 + *(*v1 + 184)) = 0;
    v19 = v36;
    v20 = v37;
    *(v1 + *(*v1 + 192)) = 0;
    *(v1 + 112) = v19;
    *(v1 + 128) = v20;
    *(v1 + 144) = v38;
    *(v1 + 160) = v39;
    v21 = v33;
    *(v1 + 48) = v32;
    *(v1 + 64) = v21;
    v22 = v35;
    *(v1 + 80) = v34;
    *(v1 + 96) = v22;
    v23 = v31;
    *(v1 + 16) = v30;
    *(v1 + 32) = v23;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TableRowForEachState.update(forEach:)(uint64_t a1)
{
  v2 = v1;
  v192 = a1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v179 = *(*(v4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v172 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v180 = (&v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v170 = &v162 - v8;
  v9 = *(v3 + 88);
  v176 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v191 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v162 - v13;
  *&v14 = *(v3 + 96);
  *&v15 = v5;
  *(&v15 + 1) = v9;
  v184 = v15;
  *(&v14 + 1) = v4;
  v185 = v14;
  v200 = v14;
  v199 = v15;
  v193 = *(v3 + 112);
  v201 = v193;
  v16 = type metadata accessor for TableRowForEachState.Item(255, &v199);
  v195 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v189 = type metadata accessor for Optional();
  v168 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v177 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v162 - v20;
  v194 = v5;
  v173 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v162 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v162 - v30;
  v200 = v185;
  v199 = v184;
  v178 = v193;
  *&v201 = v193;
  v32 = type metadata accessor for ForEach();
  v33 = type metadata accessor for Optional();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v162 - v37;
  if (AGSubgraphIsValid())
  {
    v163 = v26;
    v39 = AGMakeUniqueID();
    v186 = *(*v2 + 184);
    *&v2[v186] = v39;
    v40 = *(*v2 + 192);
    LODWORD(v183) = *&v2[v40];
    v181 = v40;
    *&v2[v40] = v183 + 1;
    v41 = *(*v2 + 160);
    swift_beginAccess();
    v42 = *(v34 + 16);
    v174 = v41;
    v42(v38, &v2[v41], v33);
    v165 = *(v32 - 8);
    v187 = v16;
    v44 = (v165 + 48);
    v43 = *(v165 + 48);
    v45 = v43(v38, 1, v32);
    v46 = v34;
    v47 = v45;
    v166 = v46;
    v48 = *(v46 + 8);
    v167 = v33;
    v48(v38, v33);
    *&v193 = v2;
    v190 = v32;
    if (v47 != 1)
    {
      v49 = v174;
      swift_beginAccess();
      v164 = v43;
      if (v43(&v2[v49], 1, v32) == 1)
      {
        goto LABEL_65;
      }

      ForEach.idGenerator.getter();
      v50 = v198;
      swift_endAccess();
      v197 = v50;
      v200 = v185;
      v199 = v184;
      *&v201 = v178;
      type metadata accessor for ForEach.IDGenerator();
      v51 = ForEach.IDGenerator.isConstant.getter();

      v52 = v164;
      if (v51)
      {
        *&v185 = v23;
        v53 = v174;
        swift_beginAccess();
        v191 = v44;
        if (v52(&v2[v53], 1, v32) == 1)
        {
          goto LABEL_66;
        }

        ForEach.data.getter();
        swift_endAccess();
        v54 = v194;
        AssociatedTypeWitness = dispatch thunk of Collection.count.getter();
        v55 = v32;
        v56 = v173 + 8;
        v57 = *(v173 + 8);
        v57(v31, v54);
        v58 = v169;
        ForEach.data.getter();
        v59 = dispatch thunk of Collection.count.getter();
        v60 = v54;
        v61 = v57;
        v62 = v55;
        v178 = v56;
        v61(v58, v60);
        v63 = v195;
        v64 = v167;
        v180 = v61;
        if (AssociatedTypeWitness != v59)
        {
          v65 = v194;
          *&v199 = 0;
          *(&v199 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(205);
          v198 = v199;
          v66 = _typeName(_:qualified:)();
          MEMORY[0x18D00C9B0](v66);

          MEMORY[0x18D00C9B0](0x2820746E756F6320, 0xE800000000000000);
          ForEach.data.getter();
          v67 = dispatch thunk of Collection.count.getter();
          v61(v31, v65);
          *&v199 = v67;
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v68);

          MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD4F950);
          v69 = v174;
          swift_beginAccess();
          if (v164(&v2[v69], 1, v62) == 1)
          {
LABEL_69:
            __break(1u);
            return;
          }

          ForEach.data.getter();
          swift_endAccess();
          v70 = dispatch thunk of Collection.count.getter();
          v61 = v180;
          v180(v31, v65);
          *&v199 = v70;
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v71);

          MEMORY[0x18D00C9B0](0xD0000000000000A7, 0x800000018CD4F970);
          MEMORY[0x18D009810](v198, *(&v198 + 1));

          v64 = v167;
        }

        v72 = v174;
        swift_beginAccess();
        if (v164(&v2[v72], 1, v62) == 1)
        {
          goto LABEL_67;
        }

        v73 = v174;
        v74 = v163;
        v75 = v190;
        ForEach.data.getter();
        swift_endAccess();
        v76 = v165;
        v77 = v171;
        (*(v165 + 16))(v171, v192, v75);
        (*(v76 + 56))(v77, 0, 1, v75);
        swift_beginAccess();
        (*(v166 + 40))(&v2[v73], v77, v64);
        (*(v173 + 16))(v185, v74, v194);
        v78 = v164(&v2[v73], 1, v75);
        v79 = v177;
        v80 = v168;
        if (v78 != 1)
        {
          ForEach.data.setter();
          swift_endAccess();
          v81 = *(*v2 + 176);
          swift_beginAccess();
          v82 = *(v193 + v81);
          if ((v82 & 0xC000000000000001) != 0)
          {
            v83 = __CocoaDictionary.makeIterator()();
            v84 = 0;
            v85 = 0;
            v86 = 0;
            v190 = v83 | 0x8000000000000000;
          }

          else
          {
            v133 = -1 << *(v82 + 32);
            v85 = ~v133;
            v84 = v82 + 64;
            v134 = -v133;
            if (v134 < 64)
            {
              v135 = ~(-1 << v134);
            }

            else
            {
              v135 = -1;
            }

            v86 = v135 & *(v82 + 64);
            v190 = *(v193 + v81);
          }

          v136 = v175;
          v179 = (v176 + 32);
          AssociatedTypeWitness = TupleTypeMetadata2 - 8;
          v173 = v85;
          v137 = (v85 + 64) >> 6;
          v174 = v176 + 16;
          *&v185 = v80 + 32;
          *&v184 = v176 + 8;

          for (i = 0; ; i = v142)
          {
            v191 = i;
            v192 = v86;
            if ((v190 & 0x8000000000000000) != 0)
            {
              if (__CocoaDictionary.Iterator.next()())
              {
                v156 = v182;
                _forceBridgeFromObjectiveC<A>(_:_:)();
                swift_unknownObjectRelease();
                _forceBridgeFromObjectiveC<A>(_:_:)();
                swift_unknownObjectRelease();
                v157 = *(TupleTypeMetadata2 + 48);
                v158 = v156;
                v61 = v180;
                (*v179)(v79, v158, v63);
                *&v79[v157] = v198;
                v155 = *(TupleTypeMetadata2 - 8);
                (*(v155 + 56))(v79, 0, 1, TupleTypeMetadata2);
              }

              else
              {
                v155 = *(TupleTypeMetadata2 - 8);
                (*(v155 + 56))(v79, 1, 1, TupleTypeMetadata2);
              }

              v142 = v191;
              v86 = v192;
            }

            else
            {
              v139 = v86;
              v140 = i;
              if (!v86)
              {
                if (v137 <= (i + 1))
                {
                  v141 = (i + 1);
                }

                else
                {
                  v141 = v137;
                }

                v142 = (v141 - 1);
                v143 = i;
                while (1)
                {
                  v140 = (v143 + 1);
                  if (__OFADD__(v143, 1))
                  {
                    break;
                  }

                  if (v140 >= v137)
                  {
                    v155 = *(TupleTypeMetadata2 - 8);
                    (*(v155 + 56))(v79, 1, 1, TupleTypeMetadata2);
                    v86 = 0;
                    goto LABEL_58;
                  }

                  v139 = *(v84 + 8 * v140);
                  ++v143;
                  if (v139)
                  {
                    goto LABEL_53;
                  }
                }

                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                break;
              }

LABEL_53:
              v86 = (v139 - 1) & v139;
              v144 = __clz(__rbit64(v139)) | (v140 << 6);
              v145 = v176;
              v146 = TupleTypeMetadata2;
              v147 = v182;
              v148 = v190;
              v149 = v195;
              (*(v176 + 16))(v182, *(v190 + 48) + *(v176 + 72) * v144, v195);
              v150 = *(*(v148 + 56) + 8 * v144);
              v151 = *(v146 + 48);
              v152 = *(v145 + 32);
              v79 = v177;
              v153 = v147;
              TupleTypeMetadata2 = v146;
              v136 = v175;
              v154 = v149;
              v61 = v180;
              v152(v177, v153, v154);
              *&v79[v151] = v150;
              v155 = *(TupleTypeMetadata2 - 8);
              (*(v155 + 56))(v79, 0, 1, TupleTypeMetadata2);

              v142 = v140;
            }

LABEL_58:
            (*v185)(v136, v79, v189);
            if ((*(v155 + 48))(v136, 1, TupleTypeMetadata2) == 1)
            {
              v61(v163, v194);
              outlined consume of Set<UIPress>.Iterator._Variant(v190);
              return;
            }

            v159 = *&v136[*(TupleTypeMetadata2 + 48)];
            v160 = v193;
            *(v159 + *(*v159 + 176)) = *(v193 + v186);
            v161 = *(*v159 + 184);
            if (*(v159 + v161) == v183)
            {
              *(v159 + v161) = *(v160 + v181);
            }

            v63 = v195;
            (*v184)(v136, v195);
          }
        }

        __break(1u);
        goto LABEL_69;
      }
    }

    v87 = v165;
    v88 = v171;
    (*(v165 + 16))(v171, v192, v32);
    (*(v87 + 56))(v88, 0, 1, v32);
    v89 = v174;
    swift_beginAccess();
    (*(v166 + 40))(&v2[v89], v88, v167);
    swift_endAccess();
    ForEach.data.getter();
    v90 = v170;
    v91 = v194;
    dispatch thunk of Collection.startIndex.getter();
    v92 = *(v173 + 8);
    v92(v31, v91);
    ForEach.data.getter();
    dispatch thunk of Collection.endIndex.getter();
    v92(v31, v91);
    v93 = *(*v2 + 176);
    swift_beginAccess();
    v189 = v93;

    v95 = MEMORY[0x18D00C470](v94, v195, v187, v178);

    if (v95)
    {
      v96 = 0;
      v177 = *(swift_getAssociatedConformanceWitness() + 8);
      v175 = (v172 + 24);
      v183 = (v176 + 8);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        ForEach.idGenerator.getter();
        ForEach.data.getter();
        v200 = v185;
        v199 = v184;
        v100 = v178;
        *&v201 = v178;
        type metadata accessor for ForEach.IDGenerator();
        v101 = v191;
        ForEach.IDGenerator.makeID(data:index:offset:)();
        v92(v31, v194);

        v102 = v189;
        swift_beginAccess();
        MEMORY[0x18D00C560](&v197, v101, *&v2[v102], v195, v187, v100);
        v103 = v197;
        if (v197)
        {
          swift_endAccess();
          v97 = *(*v103 + 160);
          swift_beginAccess();
          v98 = v103 + v97;
          v2 = v193;
          (*v175)(v98, v90, AssociatedTypeWitness);
          swift_endAccess();
          *(v103 + *(*v103 + 176)) = *&v2[v186];
          *(v103 + *(*v103 + 168)) = v96;
          *(v103 + *(*v103 + 184)) = *&v2[v181];

          --v95;
        }

        else
        {
          swift_endAccess();
        }

        ForEach.data.getter();
        v99 = v194;
        dispatch thunk of Collection.formIndex(after:)();
        v92(v31, v99);
        (*v183)(v191, v195);
        ++v96;
        if (!v95)
        {
          goto LABEL_20;
        }
      }

      v106 = v187;
      v197 = Array.init()();

      v108 = v195;
      v109 = v178;
      v110 = MEMORY[0x18D00C400](v107, v195, v106, v178);
      v112 = v111;
      v114 = v113;

      *&v199 = v110;
      *(&v199 + 1) = v112;
      v115 = v106;
      LOBYTE(v200) = v114 & 1;

      v194 = MEMORY[0x18D00C500](v116, v108, v106, v109);
      v192 = v117;
      LODWORD(v191) = v118;

      do
      {
        if (static Dictionary.Index.== infix(_:_:)())
        {
          break;
        }

        v120 = v182;
        Dictionary.subscript.getter();

        (*v183)(v120, v108);
        if ((*(v196 + *(*v196 + 200)) & 1) != 0 || *(v196 + *(*v196 + 184)) == *&v2[v181])
        {
          v115 = v187;
        }

        else
        {
          v121 = v187;
          type metadata accessor for Array();

          v115 = v121;
          Array.append(_:)();
          --v95;
        }

        v119 = *&v2[v189];

        MEMORY[0x18D00C510](&v199, v119, v108, v115, v109);
      }

      while (v95);
      v122 = v197;
      v123 = MEMORY[0x18D00CDE0](v197, v115);
      v124 = v172;
      v125 = v170;
      if (v123)
      {
        v126 = 4;
        do
        {
          v127 = v126 - 4;
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            v129 = *(v122 + 8 * v126);

            v130 = v126 - 3;
            if (__OFADD__(v127, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v129 = _ArrayBuffer._getElementSlowPath(_:)();
            v130 = v126 - 3;
            if (__OFADD__(v127, 1))
            {
LABEL_36:
              __break(1u);
              break;
            }
          }

          TableRowForEachState.eraseItem(_:)(v129);

          ++v126;
        }

        while (v130 != MEMORY[0x18D00CDE0](v122, v115));
      }

      outlined consume of Set<UIOpenURLContext>.Index._Variant(v194, v192, v191 & 1);

      v131 = *(v124 + 8);
      v132 = AssociatedTypeWitness;
      v131(v180, AssociatedTypeWitness);
      v131(v125, v132);
      outlined consume of Set<UIOpenURLContext>.Index._Variant(v199, *(&v199 + 1), v200);
    }

    else
    {
LABEL_20:
      v104 = *(v172 + 8);
      v105 = AssociatedTypeWitness;
      v104(v180, AssociatedTypeWitness);
      v104(v90, v105);
    }
  }
}

uint64_t TableRowForEachState.eraseItem(_:)(uint64_t a1)
{
  AGSubgraphRef.willRemove()();
  AGSubgraphRemoveChild();
  *(a1 + *(*a1 + 200)) = 1;
  return TableColumnForEachState.Item.release()();
}

char *TableRowForEachState.item(at:offset:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v97 = a2;
  v98 = a1;
  v4 = *v2;
  v94 = v4;
  v5 = v4[13];
  v6 = v4[10];
  v85 = *(*(v5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = *(AssociatedTypeWitness - 8);
  v92 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v81 - v10;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = v4[11];
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v102 = (&v81 - v21);
  v22 = v4[20];
  swift_beginAccess();
  v83 = v4[12];
  *&v23 = v83;
  *(&v23 + 1) = v5;
  v95 = v6;
  *&v24 = v6;
  v103 = v15;
  *(&v24 + 1) = v15;
  v25 = v4[14];
  v99 = v24;
  v100 = v23;
  v139 = v24;
  v140 = v23;
  *&v141 = v25;
  v26 = type metadata accessor for ForEach();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v27 + 48;
  result = v28(v3 + v22, 1, v26);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  ForEach.idGenerator.getter();
  swift_endAccess();
  swift_beginAccess();
  v86 = v29;
  v87 = v28;
  result = v28(v3 + v22, 1, v26);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v93 = v26;
  ForEach.data.getter();
  swift_endAccess();
  v139 = v99;
  v140 = v100;
  *&v141 = v25;
  v31 = type metadata accessor for ForEach.IDGenerator();
  v101 = v25;
  v32 = v102;
  ForEach.IDGenerator.makeID(data:index:offset:)();
  (*(v11 + 8))(v14, v95);

  v33 = *(*v3 + 176);
  swift_beginAccess();
  v34 = *(v3 + v33);
  v35 = v94[15];
  v139 = v99;
  v140 = v100;
  *&v141 = v101;
  *(&v141 + 1) = v35;
  v36 = type metadata accessor for TableRowForEachState.Item(0, &v139);
  v37 = v34;
  v38 = v36;
  MEMORY[0x18D00C560](v149, v32, v37, v103, v36, v101);
  v39 = v149[0];
  if (v149[0])
  {
    swift_endAccess();
    v40 = *v39;
    if (*(v39 + *(*v39 + 200)) == 1)
    {
      TableRowForEachState.uneraseItem(_:)(v39);
      v40 = *v39;
    }

    v41 = v40[23];
    v42 = *(*v3 + 192);
    if (*(v39 + v41) == *(v3 + v42))
    {
      v43 = v40[26];
      if ((*(v39 + v43) & 1) == 0)
      {
        v44 = v40[20];
        swift_beginAccess();
        v46 = v91;
        v45 = v92;
        v47 = v84;
        (*(v91 + 16))(v84, v39 + v44, v92);
        swift_getAssociatedConformanceWitness();
        LOBYTE(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v46 + 8))(v47, v45);
        if ((v44 & 1) == 0)
        {
          *(v39 + v43) = 1;
          *&v129 = 0;
          *(&v129 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(92);
          v48 = _typeName(_:qualified:)();
          MEMORY[0x18D00C9B0](v48);

          MEMORY[0x18D00C9B0](0x444920656874203ALL, 0xE900000000000020);
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x18D00C9B0](0xD00000000000004FLL, 0x800000018CD4FA20);
          MEMORY[0x18D009810](v129, *(&v129 + 1));
        }
      }
    }

    else
    {
      v72 = v40[20];
      swift_beginAccess();
      (*(v91 + 24))(v39 + v72, v98, v92);
      swift_endAccess();
      *(v39 + *(*v39 + 168)) = v97;
      *(v39 + *(*v39 + 176)) = *(v3 + *(*v3 + 184));
      *(v39 + v41) = *(v3 + v42);
    }

    goto LABEL_21;
  }

  v85 = v31;
  v94 = v38;
  v95 = v33;
  v81 = v35;
  swift_endAccess();
  result = AGSubgraphGetGraph();
  if (*(v3 + 188) == 1)
  {
    goto LABEL_27;
  }

  v49 = result;
  v50 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  v51 = *(v3 + 128);
  v52 = *(v3 + 96);
  v145 = *(v3 + 112);
  v146 = v51;
  v53 = *(v3 + 128);
  v147 = *(v3 + 144);
  v54 = *(v3 + 64);
  v55 = *(v3 + 32);
  v141 = *(v3 + 48);
  v142 = v54;
  v56 = *(v3 + 64);
  v57 = *(v3 + 96);
  v143 = *(v3 + 80);
  v144 = v57;
  v58 = *(v3 + 32);
  v139 = *(v3 + 16);
  v140 = v58;
  v135 = v145;
  v136 = v53;
  v137 = *(v3 + 144);
  v131 = v141;
  v132 = v56;
  v133 = v143;
  v134 = v52;
  v148 = *(v3 + 160);
  v138 = *(v3 + 160);
  v129 = v139;
  v130 = v55;
  v127 = 0;
  v128 = 1;
  outlined init with copy of _TableRowInputs(&v139, &v117);
  AGGraphClearUpdate();
  v59 = AGSubgraphGetCurrent();
  v84 = v50;
  AGSubgraphSetCurrent();
  v60 = v102;
  closure #1 in TableRowForEachState.item(at:offset:)(v3, v102, &v127, &v129, &v117);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v61 = v117;
  v62 = DWORD2(v117);
  v63 = *(v96 + 16);
  v63(v89, v60, v103);
  *&v117 = v61;
  DWORD2(v117) = v62;
  v64 = PreferencesOutputs.subscript.getter();
  result = v90;
  v65 = v93;
  if ((v64 & 0x100000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v82 = v63;
  (*(v91 + 16))(v90, v98, v92);
  v66 = *v3;
  v98 = *(v3 + *(*v3 + 184));
  LODWORD(v92) = *(v3 + *(v66 + 192));
  swift_beginAccess();
  result = v87(v3 + v22, 1, v65);
  if (result != 1)
  {
    ForEach.idGenerator.getter();
    v67 = *&v115[0];
    swift_endAccess();

    *&v117 = v67;
    v68 = ForEach.IDGenerator.isConstant.getter();

    swift_allocObject();
    v69 = v84;
    v39 = specialized TableRowForEachState.Item.init(id:rows:subgraph:index:offset:contentID:seed:state:isConstant:)(v89, v64, v84, v90, v97, v98, v92, v3, v68 & 1);
    v82(v88, v102, v103);
    *&v115[0] = v39;
    swift_beginAccess();
    v70 = v101;
    type metadata accessor for Dictionary();
    v71 = v69;

    Dictionary.subscript.setter();
    swift_endAccess();
    if (v128)
    {
      static Log.internalError(_:)();
    }

    else
    {
      v117 = v99;
      v118 = v100;
      *&v119 = v70;
      *(&v119 + 1) = v81;
      v73 = type metadata accessor for TableRowForEachState.ChildTraits(0, &v117);
      MEMORY[0x1EEE9AC00](v73);
      *(&v81 - 4) = v74;
      *(&v81 - 3) = partial apply for closure #2 in TableRowForEachState.item(at:offset:);
      v80 = v39;
      AGGraphMutateAttribute();
    }

    v75 = v3 + *(*v3 + 168);
    if (*(v75 + 8) == 1 && !*v75)
    {
      v115[6] = v135;
      v115[7] = v136;
      v115[8] = v137;
      v115[2] = v131;
      v115[3] = v132;
      v115[4] = v133;
      v115[5] = v134;
      v115[0] = v129;
      v115[1] = v130;
      v111 = v135;
      v112 = v136;
      v113 = v137;
      v107 = v131;
      v108 = v132;
      v109 = v133;
      v110 = v134;
      v116 = v138;
      v114 = v138;
      v105 = v129;
      v106 = v130;
      v76 = *(v81 + 56);
      outlined init with copy of _TableRowInputs(v115, &v104);
      v77 = v76(&v105);
      v79 = v78;

      v123 = v111;
      v124 = v112;
      v125 = v113;
      v126 = v114;
      v119 = v107;
      v120 = v108;
      v121 = v109;
      v122 = v110;
      v117 = v105;
      v118 = v106;
      outlined destroy of _TableRowInputs(&v117);
      if (v79)
      {
        *v75 = 1;
        *(v75 + 8) = 1;
      }

      else
      {
        *v75 = v77;
        *(v75 + 8) = 0;
      }
    }

    else
    {
    }

    v123 = v135;
    v124 = v136;
    v125 = v137;
    v126 = v138;
    v119 = v131;
    v120 = v132;
    v121 = v133;
    v122 = v134;
    v117 = v129;
    v118 = v130;
    outlined destroy of _TableRowInputs(&v117);
LABEL_21:
    (*(v96 + 8))(v102, v103);
    return v39;
  }

LABEL_29:
  __break(1u);
  return result;
}

void TableRowForEachState.uneraseItem(_:)(uint64_t a1)
{
  *(a1 + *(*a1 + 200)) = 0;
  AGSubgraphAddChild();
  AGSubgraphRef.didReinsert()();
}

uint64_t closure #1 in TableRowForEachState.item(at:offset:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v69 = a3;
  v74 = a2;
  v64 = a5;
  v113 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a1;
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v64 - v11;
  v12 = v7[10];
  v80 = *(v8 + 6);
  v13 = v7[14];
  *&v103 = v12;
  *(&v103 + 1) = v9;
  v104 = v80;
  *&v105 = v13;
  v73 = type metadata accessor for ForEach();
  v14 = type metadata accessor for Optional();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v64 - v15;
  v16 = v7[15];
  *&v103 = v12;
  *(&v103 + 1) = v9;
  v104 = v80;
  *&v105 = v13;
  *(&v105 + 1) = v16;
  v68 = type metadata accessor for TableRowForEachState.ChildTraits(0, &v103);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v64 - v17;
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v77 = v13;
  v78 = v12;
  *&v103 = v12;
  *(&v103 + 1) = v9;
  v104 = v80;
  *&v105 = v13;
  *(&v105 + 1) = v16;
  v79 = v16;
  v21 = type metadata accessor for TableRowForEachState.ChildContent(0, &v103);
  v70 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  if (*(a1 + 180))
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(a1 + 176);
  v26 = v75;
  (*(v75 + 16))(v20, v74, v9, v22);
  *v24 = v25;
  *&v27 = v78;
  *(&v27 + 1) = v9;
  v103 = v27;
  v104 = v80;
  *&v105 = v77;
  *(&v105 + 1) = v79;
  v28 = type metadata accessor for TableRowForEachState.ChildContent(0, &v103);
  v29 = (*(v26 + 32))(&v24[*(v28 + 68)], v20, v9);
  v74 = &v64;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v80;
  v61[0] = v80;
  v61[1] = v21;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowForEachState<A, B, C>.ChildContent, v21);
  v31 = v30;
  v32 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, (&v64 - 6), v21, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  (*(v70 + 8))(v24, v21);
  LODWORD(v74) = v103;
  v34 = *(*a1 + 160);
  swift_beginAccess();
  v35 = a1 + v34;
  v36 = v76;
  (*(v71 + 16))(v76, v35, v72);
  if ((*(*(v73 - 8) + 48))(v36, 1) == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v37 = *(a1 + 164);
  v38 = v67;
  (*(v75 + 56))(v67, 1, 1, v9);
  WitnessTable = v77;
  v77 = v31;
  v39 = v65;
  v40 = TableRowForEachState.ChildTraits.init(forEach:item:traits:itemOffset:itemID:)(v76, 0, v37, 0, 1, v38, v78, v9, v65, v31, *(&v80 + 1), WitnessTable, v79);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = v68;
  WitnessTable = v68;
  v63 = swift_getWitnessTable(protocol conformance descriptor for TableRowForEachState<A, B, C>.ChildTraits, v68, v41);
  _s14AttributeGraph0A0Vy7SwiftUI12TableRowListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, closure #1 in Attribute.init<A>(_:)partial apply, v61, v42, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v44);
  (*(v66 + 8))(v39, v42);
  v45 = v69;
  *v69 = v103;
  *(v45 + 4) = 0;
  v46 = v79;
  if (*(a1 + 188))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  AGGraphAddInput();
  if (v45[1])
  {
    goto LABEL_9;
  }

  *(a4 + 148) = *v45;
  v47 = v77;
  _GraphValue.init(_:)();
  v48 = *(a4 + 112);
  v49 = *(a4 + 80);
  v99 = *(a4 + 96);
  v100 = v48;
  v50 = *(a4 + 112);
  v101 = *(a4 + 128);
  v51 = *(a4 + 48);
  v52 = *(a4 + 16);
  v95 = *(a4 + 32);
  v96 = v51;
  v53 = *(a4 + 48);
  v54 = *(a4 + 80);
  v97 = *(a4 + 64);
  v98 = v54;
  v55 = *(a4 + 16);
  v94[0] = *a4;
  v94[1] = v55;
  v89 = v49;
  v90 = v99;
  v56 = *(a4 + 128);
  v91 = v50;
  v92 = v56;
  v86 = v95;
  v87 = v53;
  v88 = v97;
  v102 = *(a4 + 144);
  v93 = *(a4 + 144);
  v84 = v94[0];
  v85 = v52;
  v57 = *(v46 + 48);
  outlined init with copy of _TableRowInputs(v94, &v103);
  v57(&v82, &v81, &v84, v47, v46);
  v109 = v90;
  v110 = v91;
  v111 = v92;
  v112 = v93;
  v105 = v86;
  v106 = v87;
  v107 = v88;
  v108 = v89;
  v103 = v84;
  v104 = v85;
  result = outlined destroy of _TableRowInputs(&v103);
  v59 = v83;
  v60 = v64;
  *v64 = v82;
  *(v60 + 2) = v59;
  return result;
}

uint64_t TableRowForEachState.ChildTraits.init(forEach:item:traits:itemOffset:itemID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v19 = type metadata accessor for ForEach();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v28 = a7;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v20 = type metadata accessor for TableRowForEachState.ChildTraits(0, &v28);
  *(a9 + v20[17]) = a2;
  *(a9 + v20[18]) = a3;
  v21 = a9 + v20[19];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = v20[20];
  v23 = type metadata accessor for Optional();
  return (*(*(v23 - 8) + 32))(a9 + v22, a6, v23);
}

void closure #2 in TableRowForEachState.item(at:offset:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 96);
  v7[0] = *(*a2 + 80);
  v7[1] = v5;
  v7[2] = *(v4 + 112);
  v6 = *(type metadata accessor for TableRowForEachState.ChildTraits(0, v7) + 68);

  *(a1 + v6) = a2;
}

uint64_t implicit closure #2 in TableRowForEachState.item(at:offset:)(void *a1)
{
  _StringGuts.grow(_:)(52);
  MEMORY[0x18D00C9B0](0xD000000000000031, 0x800000018CD5B410);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  return 0;
}

Swift::Int_optional __swiftcall TableRowForEachState.fetchRowsPerElement()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = &v0[*(v1 + 168)];
  if (v14[8] != 1)
  {
    goto LABEL_9;
  }

  if (!*v14)
  {
    v27 = v11;
    v28 = v10;
    v15 = *(v2 + 160);
    swift_beginAccess();
    v16 = *(v2 + 112);
    v31 = v4;
    v32 = *(v2 + 88);
    v33 = v3;
    v34 = v16;
    v17 = type metadata accessor for ForEach();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v29 = v18 + 48;
    v30 = v19;
    v20 = v19(&v0[v15], 1, v17);
    if (v20 == 1)
    {
      __break(1u);
    }

    else
    {
      v26 = v0;
      ForEach.data.getter();
      swift_endAccess();
      v22 = dispatch thunk of Collection.isEmpty.getter();
      v23 = *(v8 + 8);
      v23(v13, v4);
      if (v22)
      {
        goto LABEL_7;
      }

      v24 = v26;
      swift_beginAccess();
      v20 = v30(&v24[v15], 1, v17);
      if (v20 != 1)
      {
        ForEach.data.getter();
        swift_endAccess();
        dispatch thunk of Collection.startIndex.getter();
        v23(v13, v4);
        TableRowForEachState.item(at:offset:)(v7, 0);

        (*(v27 + 8))(v7, v28);
LABEL_7:
        if (v14[8])
        {
          goto LABEL_8;
        }

LABEL_9:
        v21 = 0;
        v20 = *v14;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  v20 = 0;
  v21 = 1;
LABEL_13:
  result.value = v20;
  result.is_nil = v21;
  return result;
}

uint64_t TableRowForEachState.forEachItem(from:do:)(uint64_t *a1, uint64_t (*a2)(uint64_t *, char *), uint64_t a3)
{
  v119 = a3;
  v118 = a2;
  v5 = *v3;
  v6 = *v3;
  v124 = *(*v3 + 104);
  v7 = *(*(v124 + 8) + 8);
  v8 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = &v101 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v108 = type metadata accessor for Optional();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  value = &v101 - v12;
  v125 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v126 = (&v101 - v16);
  v17 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v101 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v122 = &v101 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v101 - v29;
  v130 = v3;
  result = AGSubgraphIsValid();
  if (result)
  {
    v137 = 0;
    v138 = TableRowForEachState.fetchRowsPerElement()();
    v127 = v7;
    v112 = v8;
    v120 = v11;
    v123 = a1;
    v128 = v23;
    v106 = v20;
    if (v138.is_nil)
    {
      v105 = AssociatedTypeWitness;
      v114 = v17;
      v136 = 0;
      v31 = v130;
      v32 = *(*v130 + 160);
      swift_beginAccess();
      v33 = v6[11];
      v34 = v6[12];
      v35 = v6[14];
      v131 = v8;
      v132 = v33;
      v117 = v33;
      v116 = v34;
      v133 = v34;
      v134 = v124;
      v115 = v35;
      v135 = v35;
      v36 = type metadata accessor for ForEach();
      v103 = *(*(v36 - 8) + 48);
      result = v103(v31 + v32, 1, v36);
      if (result == 1)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v37 = v129;
      v38 = v130;
      v102 = v36;
      ForEach.data.getter();
      swift_endAccess();
      v39 = v111;
      dispatch thunk of Collection.indices.getter();
      v40 = *(v125 + 8);
      v125 += 8;
      v126 = v40;
      v41 = (v40)(v37, v8);
      MEMORY[0x1EEE9AC00](v41);
      *(&v101 - 4) = v38;
      *(&v101 - 3) = &v137;
      *(&v101 - 2) = v123;
      *(&v101 - 1) = &v136;
      v42 = v105;
      swift_getAssociatedConformanceWitness();
      v43 = value;
      Sequence.first(where:)();
      v104 = 0;
      (*(v110 + 8))(v39, v42);
      v17 = v114;
      v44 = *(v114 + 48);
      v45 = v120;
      if (v44(v43, 1, v120) == 1)
      {
        v46 = v130;
        swift_beginAccess();
        result = v103(v46 + v32, 1, v102);
        v47 = v113;
        if (result == 1)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v48 = v129;
        ForEach.data.getter();
        swift_endAccess();
        v8 = v112;
        dispatch thunk of Collection.endIndex.getter();
        v126(v48, v8);
        v49 = v43;
        v50 = v43;
        v11 = v120;
        v51 = v44(v49, 1, v120);
        v52 = v128;
        if (v51 != 1)
        {
          (*(v107 + 8))(v50, v108);
        }
      }

      else
      {
        v47 = v113;
        (*(v17 + 32))(v113, v43, v45);
        v8 = v112;
        v11 = v45;
        v52 = v128;
      }

      v68 = v109;
      result = (*(v17 + 32))(v109, v47, v11);
      v72 = *v123 - v136;
      v73 = v106;
      if (__OFSUB__(*v123, v136))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v71 = v125;
    }

    else
    {
      if (v138.value < 1)
      {
        v137 = 0;
        v74 = v130;
        v75 = *(*v130 + 160);
        swift_beginAccess();
        v76 = v6[11];
        v77 = v6[12];
        v78 = v6[14];
        v131 = v8;
        v132 = v76;
        v117 = v76;
        v116 = v77;
        v133 = v77;
        v134 = v124;
        v115 = v78;
        v135 = v78;
        v79 = type metadata accessor for ForEach();
        result = (*(*(v79 - 8) + 48))(v74 + v75, 1, v79);
        v80 = v125;
        if (result == 1)
        {
LABEL_34:
          __break(1u);
          return result;
        }

        v81 = v129;
        ForEach.data.getter();
        swift_endAccess();
        v68 = v109;
        dispatch thunk of Collection.endIndex.getter();
        v126 = *(v80 + 8);
        v71 = v80 + 8;
        v126(v81, v8);
        v72 = 0;
        v104 = 0;
      }

      else
      {
        v53 = *a1;
        value = v138.value;
        v114 = v53;
        v54 = v53 / v138.value;
        v137 = v53 / v138.value;
        v55 = v130;
        v56 = *(*v130 + 160);
        swift_beginAccess();
        v57 = v6[11];
        v58 = v6[12];
        v59 = v6[14];
        v131 = v8;
        v132 = v57;
        v117 = v57;
        v116 = v58;
        v133 = v58;
        v134 = v124;
        v115 = v59;
        v135 = v59;
        v60 = type metadata accessor for ForEach();
        v61 = *(*(v60 - 8) + 48);
        result = v61(v55 + v56, 1, v60);
        v62 = v125;
        if (result == 1)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v113 = v54;
        v63 = v130;
        v64 = v126;
        ForEach.data.getter();
        swift_endAccess();
        swift_beginAccess();
        result = v61(v63 + v56, 1, v60);
        if (result == 1)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v65 = v129;
        ForEach.data.getter();
        swift_endAccess();
        v66 = v122;
        v8 = v112;
        dispatch thunk of Collection.startIndex.getter();
        v67 = *(v62 + 8);
        v67(v65, v8);
        v68 = v109;
        v69 = v113;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v11 = v120;
        (*(v17 + 8))(v66, v120);
        v70 = v64;
        v126 = v67;
        v71 = v62 + 8;
        v67(v70, v8);
        v104 = 0;
        v72 = v114 - v69 * value;
      }

      v52 = v128;
      v73 = v106;
    }

    *v123 = v72;
    v83 = *(v17 + 16);
    v82 = v17 + 16;
    v113 = v83;
    (v83)(v52, v68, v11);
    v84 = *(*v130 + 160);
    value = v82 - 8;
    v111 = (v72 & ~(v72 >> 63));
    v114 = v82;
    v110 = v84;
    while (1)
    {
      (v113)(v73, v52, v11);
      v85 = v130;
      swift_beginAccess();
      v131 = v8;
      v132 = v117;
      v133 = v116;
      v134 = v124;
      v135 = v115;
      v86 = type metadata accessor for ForEach();
      v87 = *(v86 - 8);
      v88 = *(v87 + 48);
      v125 = v87 + 48;
      result = v88(v85 + v84, 1, v86);
      if (result == 1)
      {
        goto LABEL_28;
      }

      v89 = v73;
      v90 = v129;
      ForEach.data.getter();
      swift_endAccess();
      v91 = v122;
      dispatch thunk of Collection.endIndex.getter();
      v126(v90, v8);
      swift_getAssociatedConformanceWitness();
      v92 = dispatch thunk of static Equatable.== infix(_:_:)();
      v93 = *value;
      (*value)(v91, v11);
      v93(v89, v11);
      if (v92)
      {
        v93(v128, v11);
        v93(v109, v11);
        return 1;
      }

      v73 = v89;
      v94 = v71;
      v95 = v137;
      v96 = v130;
      v97 = TableRowForEachState.item(at:offset:)(v128, v137);
      v98 = v123;
      *v123 = v111;
      if ((v118(v98, v97) & 1) == 0)
      {

        v100 = v120;
        v93(v128, v120);
        v93(v109, v100);
        return 0;
      }

      v137 = v95 + 1;
      *v98 = 0;
      v84 = v110;
      swift_beginAccess();
      result = v88(v96 + v84, 1, v86);
      if (result == 1)
      {
        goto LABEL_29;
      }

      v99 = v129;
      ForEach.data.getter();
      swift_endAccess();
      v52 = v128;
      v8 = v112;
      dispatch thunk of Collection.formIndex(after:)();

      v71 = v94;
      v126(v99, v8);
      v11 = v120;
    }
  }

  return result;
}

void closure #1 in TableRowForEachState.forEachItem(from:do:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  TableRowForEachState.item(at:offset:)(a1, *a3);

  if (*(a2 + 188) == 1)
  {
    goto LABEL_7;
  }

  InputValue = AGGraphGetInputValue();
  outlined init with copy of TableRowList(InputValue, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v12 = (*(v11 + 16))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v13 = *a5 + v12;
  if (__OFADD__(*a5, v12))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (*a4 >= v13)
  {
    *a5 = v13;
    *a3 &= 1uLL;
  }
}

Swift::Int __swiftcall TableRowForEachState.count()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v11 - v4;
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v16 = TableRowForEachState.fetchRowsPerElement()();
  if (v16.is_nil)
  {
    v12 = 0;
    v15 = 0;
    MEMORY[0x1EEE9AC00](v16.value);
    *(&v11 - 2) = &v15;
    *(&v11 - 1) = v0;
    TableRowForEachState.forEachItem(from:do:)(&v12, partial apply for closure #1 in TableRowForEachState.count(), (&v11 - 2));
    return v15;
  }

  value = v16.value;
  v8 = *(*v0 + 160);
  swift_beginAccess();
  v12 = v2;
  v13 = *(v1 + 88);
  v11 = *(v1 + 104);
  v14 = v11;
  v9 = type metadata accessor for ForEach();
  result = (*(*(v9 - 8) + 48))(v0 + v8, 1, v9);
  if (result != 1)
  {
    ForEach.data.getter();
    swift_endAccess();
    v10 = dispatch thunk of Collection.count.getter();
    (*(v3 + 8))(v5, v2);
    result = v10 * value;
    if ((v10 * value) >> 64 == (v10 * value) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in TableRowForEachState.count()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 188) != 1)
  {
    InputValue = AGGraphGetInputValue();
    outlined init with copy of TableRowList(InputValue, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = (*(v7 + 16))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v9);
    if (!__OFADD__(*a3, v8))
    {
      *a3 += v8;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t TableRowForEachState.Info.Init.forEach.getter@<X0>(uint64_t a7@<X8>)
{
  v8 = type metadata accessor for ForEach();
  Value = AGGraphGetValue();
  return (*(*(v8 - 8) + 16))(a7, Value, v8);
}

uint64_t TableRowForEachState.Info.Init.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v8 = type metadata accessor for ForEach();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;

  TableRowForEachState.Info.Init.forEach.getter(v11);
  TableRowForEachState.update(forEach:)(v11);
  (*(v9 + 8))(v11, v8);
  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance TableRowForEachState<A, B, C>.Info.Init@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TableRowForEachState.Info.Init.value.getter(*v2, *(v2 + 8), a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void TableRowForEachState.ChildTraits.traits.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + *(a1 + 72)) == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = v4;
}

Swift::Void __swiftcall TableRowForEachState.ChildTraits.updateValue()()
{
  v2 = v0;
  v101[1] = *MEMORY[0x1E69E9840];
  v3 = v0 - 8;
  v4 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v91 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 32);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v71 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v89 = &v71 - v13;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v26 = *(v1 + *(v3 + 76));
  v92 = v26;
  v93 = v14;
  if (!v26)
  {
    v42 = 0;
    v41 = v91;
    goto LABEL_17;
  }

  v27 = v1 + *(v2 + 76);
  v28 = *(v27 + 8);
  v29 = *(v26 + *(*v26 + 168));
  v82 = v4;
  v73 = v24;
  if ((v28 & 1) != 0 || *v27 != v29)
  {
    *v27 = v29;
    *(v27 + 8) = 0;
    v72 = 1;
  }

  else
  {
    v72 = 0;
  }

  v86 = v2;
  v30 = *(v2 + 80);
  v31 = *(v14 + 16);
  v83 = v1;
  v79 = v30;
  v32 = &v71 - v23;
  v31(&v71 - v23, v1 + v30, v12, v25);
  v33 = *(v7 + 16);
  v75 = *(*v92 + 128);
  v76 = v7 + 16;
  v74 = v33;
  v33(v21, v92 + v75, v6);
  v34 = *(v7 + 56);
  v78 = v7 + 56;
  v77 = v34;
  v34(v21, 0, 1, v6);
  v35 = v89;
  v36 = *(TupleTypeMetadata2 + 48);
  (v31)(v89, v32, v12);
  (v31)(&v35[v36], v21, v12);
  v84 = v7;
  v37 = *(v7 + 48);
  v81 = v6;
  if ((v37)(v35, 1) != 1)
  {
    v71 = v32;
    v43 = v87;
    v44 = v12;
    (v31)(v87, v35, v12);
    v45 = v81;
    if (v37(&v35[v36], 1, v81) != 1)
    {
      v48 = v84;
      v49 = v80;
      (*(v84 + 32))(v80, &v35[v36], v45);

      LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v48 + 8);
      v50(v49, v45);
      v38 = *(v93 + 8);
      v38(v21, v44);
      v38(v71, v44);
      v50(v87, v45);
      v38(v35, v44);
      v7 = v48;
      v6 = v45;
      v1 = v83;
      v12 = v44;
      v4 = v82;
      v41 = v91;
      if (TupleTypeMetadata2)
      {
        goto LABEL_16;
      }

LABEL_14:
      v47 = v79;
      v38((v1 + v79), v12);
      v74(v1 + v47, v92 + v75, v6);

      v42 = 1;
      v77(v1 + v47, 0, 1, v6);
      v2 = v86;
      goto LABEL_17;
    }

    v38 = *(v93 + 8);

    v38(v21, v44);
    v46 = v44;
    v38(v71, v44);
    v7 = v84;
    (*(v84 + 8))(v43, v45);
    v6 = v45;
LABEL_13:
    v1 = v83;
    (*(v73 + 8))(v35, TupleTypeMetadata2);
    v12 = v46;
    v4 = v82;
    v41 = v91;
    goto LABEL_14;
  }

  v38 = *(v93 + 8);

  v38(v21, v12);
  v38(v32, v12);
  v39 = &v35[v36];
  v40 = v81;
  if ((v37)(v39, 1) != 1)
  {
    v46 = v12;
    v6 = v40;
    v7 = v84;
    goto LABEL_13;
  }

  v38(v35, v12);
  v6 = v40;
  v1 = v83;
  v7 = v84;
  v4 = v82;
  v41 = v91;
LABEL_16:

  v2 = v86;
  v42 = v72;
LABEL_17:
  if (*(v1 + *(v2 + 72)) == *MEMORY[0x1E698D3F8])
  {
    v51 = 1;
  }

  else
  {
    AGGraphGetValue();
    v51 = (v52 & 1) == 0;
  }

  if (!AGGraphGetOutputValue() || !v51)
  {
    TableRowForEachState.ChildTraits.traits.getter(v2, v101);
    v54 = v101[0];
    if (!v101[0])
    {
      ViewTraitCollection.init()();
      v54 = v95;
    }

LABEL_26:
    v56 = v93;
    v101[0] = v54;
    if (v42)
    {
      v57 = v88;
      (*(v93 + 16))(v88, v1 + *(v2 + 80), v12);
      if ((*(v7 + 48))(v57, 1, v6) == 1)
      {
        (*(v56 + 8))(v57, v12);
      }

      else
      {
        v58 = v85;
        (*(v7 + 32))(v85, v57, v6);
        v59 = v1 + *(v2 + 76);
        if (*(v59 + 8) != 1)
        {
          v60 = v7;
          v61 = *v59;
          v62 = v6;
          if (v92)
          {
            v63 = *(v92 + *(*v92 + 176));
          }

          else
          {
            v63 = 0;
          }

          v95 = v63;
          LOBYTE(v96) = 0;
          ViewTraitCollection.subscript.setter();
          v95 = v61;
          LOBYTE(v96) = 0;
          ViewTraitCollection.subscript.setter();
          v64 = *(v2 + 16);
          v65 = v2;
          v66 = *(v2 + 32);
          v68 = *(v65 + 40);
          v67 = *(v65 + 48);
          v95 = v64;
          v96 = v62;
          v97 = v66;
          v98 = v68;
          v99 = v67;
          type metadata accessor for ForEach();
          ForEach.idGenerator.getter();
          v94 = v100;
          v95 = v64;
          v96 = v62;
          v97 = v66;
          v98 = v68;
          v99 = v67;
          type metadata accessor for ForEach.IDGenerator();
          v69 = ForEach.IDGenerator.isConstant.getter();

          if (v69)
          {
            v95 = v61;
            LOBYTE(v96) = 0;
            _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for TagValueTraitKey<Int>, MEMORY[0x1E69E6540], MEMORY[0x1E697EB60]);
            lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>();
            ViewTraitCollection.subscript.setter();
            v70 = v85;
          }

          else
          {
            v70 = v85;
            ViewTraitCollection.setTag<A>(for:value:)();
          }

          v95 = v101[0];
          AGGraphSetOutputValue();
          (*(v60 + 8))(v70, v62);
          goto LABEL_40;
        }

        (*(v7 + 8))(v58, v6);
      }
    }

    if (!AGGraphGetOutputValue())
    {
      v95 = v101[0];
      AGGraphSetOutputValue();
    }

LABEL_40:

    return;
  }

  (*(v4 + 16))(v41, v1, v2);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v54 = *OutputValue;
    v55 = *(v4 + 8);

    v55(v41, v2);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TableRowForEachState<A, B, C>.ChildTraits(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowForEachState<A, B, C>.ChildTraits, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

Swift::Void __swiftcall TableRowForEachState.ChildContent.updateValue()()
{
  v2 = v0;
  v64[4] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 32);
  v53 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 40);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v45 - v9;
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v7;
  v12 = swift_getAssociatedTypeWitness();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v45 - v13;
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = specialized TableRowForEachState.ChildContent.info.getter(v2);
  v19 = *(v14 + 16);
  v51 = v1;
  v19(v17, v1, v2);
  v20 = *(v2 + 68);
  v21 = *(*v18 + 176);
  swift_beginAccess();
  v22 = *(v18 + v21);
  v23 = *(v2 + 24);

  *&v24 = v8;
  *(&v24 + 1) = v23;
  v54 = v3;
  *&v25 = v3;
  *(&v25 + 1) = v6;
  v55 = v25;
  v61 = v24;
  v62 = v25;
  v56 = v24;
  v60 = *(v2 + 48);
  v63 = v60;
  v26 = type metadata accessor for TableRowForEachState.Item(0, &v61);
  v27 = v60;
  MEMORY[0x18D00C560](v64, &v17[v20], v22, v23, v26, v60);
  (*(*(v23 - 8) + 8))(&v17[v20], v23);
  v28 = v64[0];
  if (!v64[0])
  {
    swift_endAccess();
LABEL_7:

    return;
  }

  swift_endAccess();
  if (*(v28 + *(*v28 + 184)) != *(v18 + *(*v18 + 192)))
  {

    goto LABEL_7;
  }

  v29 = *(*v18 + 160);
  swift_beginAccess();
  v61 = v56;
  v62 = v55;
  *&v63 = v27;
  v30 = type metadata accessor for ForEach();
  if ((*(*(v30 - 8) + 48))(v18 + v29, 1, v30) == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v45;
    ForEach.data.getter();
    swift_endAccess();
    v32 = *(*v28 + 160);
    swift_beginAccess();
    v33 = v49;
    v34 = v46;
    v35 = AssociatedTypeWitness;
    (*(v49 + 16))(v46, v28 + v32, AssociatedTypeWitness);
    v36 = dispatch thunk of Collection.subscript.read();
    v37 = v57;
    (*(v58 + 16))();
    v36(&v61, 0);
    (*(v33 + 8))(v34, v35);
    v38 = (*(v47 + 8))(v31, v8);
    *&v60 = &v45;
    v39 = MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 2) = v18;
    *(&v45 - 1) = v37;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowForEachState<A, B, C>.ChildContent, v2, v39);
    v41 = v54;
    MEMORY[0x18D000B40](v2, v54, WitnessTable);
    v42 = v52;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    MEMORY[0x1EEE9AC00](v43);
    *(&v45 - 2) = v2;
    *(&v45 - 1) = WitnessTable;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, partial apply for closure #1 in StatefulRule.value.setter, (&v45 - 4), v41, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v44);

    (*(v53 + 8))(v42, v41);
    (*(v58 + 8))(v57, v59);
  }
}

void closure #1 in TableRowForEachState.ChildContent.updateValue()(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 160);
  swift_beginAccess();
  v5 = type metadata accessor for ForEach();
  if ((*(*(v5 - 8) + 48))(&a1[v4], 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = specialized ForEach.content.getter(v5);

    v6(a2);
  }
}

uint64_t *TableRowForEachState.deinit()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v8[8] = *(v0 + 144);
  v9 = *(v0 + 160);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  outlined destroy of _TableRowInputs(v8);

  v5 = *(*v0 + 160);
  type metadata accessor for ForEach();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

double TableRowForEachState.Item.__deallocating_deinit(void (*a1)(void))
{
  a1();

  swift_deallocClassInstance();
  return result;
}

double static ForEach<>._makeRows(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = *MEMORY[0x1E69E9840];
  v28 = *a1;
  v16 = *(a2 + 112);
  v45[6] = *(a2 + 96);
  v45[7] = v16;
  v46 = *(a2 + 128);
  v47 = *(a2 + 144);
  v17 = *(a2 + 48);
  v45[2] = *(a2 + 32);
  v45[3] = v17;
  v18 = *(a2 + 80);
  v45[4] = *(a2 + 64);
  v45[5] = v18;
  v19 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v19;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  type metadata accessor for TableRowForEachState(0, &v39);
  outlined init with copy of _TableRowInputs(v45, &v39);
  v20 = swift_allocObject();
  TableRowForEachState.init(inputs:)(a2);

  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v29 = v20;
  v30 = _GraphValue.value.getter();
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  v36 = type metadata accessor for TableRowForEachState.Info(0, &v39);
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  v37 = type metadata accessor for TableRowForEachState.Info.Init(0, &v39);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRowForEachState<A, B, C>.Info.Init, v37);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v35, v37, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

  *(v20 + 176) = v39;
  *(v20 + 180) = 0;
  LODWORD(v39) = v28;

  v23 = _GraphValue.value.getter();
  v29 = v20;
  v30 = v23;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a8;
  List = type metadata accessor for ForEach<>.MakeList(0, &v39);
  v33 = List;
  v34 = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.MakeList, List);
  _s14AttributeGraph0A0Vy7SwiftUI12TableRowListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, v32, List, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

  LODWORD(List) = v39;
  *(v20 + 184) = v39;
  *(v20 + 188) = 0;
  PreferencesOutputs.init()();
  v39 = *(&v46 + 1);
  LODWORD(v40) = v47;
  v31 = List;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  return result;
}

uint64_t static ForEach<>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v7;
  v12[8] = *(a1 + 128);
  v13 = *(a1 + 144);
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v9 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v9;
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  return (*(a7 + 64))(v12, a4, a7) & 1;
}

uint64_t ForEach<>.MakeList.value.getter@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a8;
  v25 = a3;
  v23 = a2;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v22 = a7;
  v15 = type metadata accessor for ForEach();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;

  v19 = v24;
  TableRowForEachState.Info.Init.forEach.getter(v18);
  TableRowForEachState.update(forEach:)(v18);
  (*(v16 + 8))(v18, v15);
  LODWORD(v18) = *(a1 + *(*a1 + 192));
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = v22;
  v30 = v19;
  result = type metadata accessor for ForEach<>.Generator(0, &v25);
  *(a9 + 24) = result;
  *(a9 + 32) = &protocol witness table for ForEach<A, B, C><>.Generator;
  *a9 = a1;
  *(a9 + 8) = v18;
  return result;
}

uint64_t ForEach<>.SynthesizedForEachRowIDs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a1;
  v24 = a3;
  v5 = *(a2 + 24);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 40);
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20 - v12;
  Collection.index(atOffset:)();
  v28 = *(v3 + *(a2 + 68));
  v14 = *(a2 + 48);
  *&v15 = *(a2 + 32);
  v20 = v15;

  *&v16 = v10;
  *(&v16 + 1) = v5;
  *&v17 = v20;
  *(&v17 + 1) = v9;
  v25 = v16;
  v26 = v17;
  v27 = v14;
  type metadata accessor for ForEach.IDGenerator();
  ForEach.IDGenerator.makeID(data:index:offset:)();

  v18 = v24;
  _convertToAnyHashable<A>(_:)();
  (*(v23 + 8))(v7, v5);
  result = (*(v11 + 8))(v13, AssociatedTypeWitness);
  *(v18 + 40) = 1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs);
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

void (*protocol witness for Collection.subscript.read in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ForEach<>.SynthesizedForEachRowIDs.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*ForEach<>.SynthesizedForEachRowIDs.subscript.read(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x29uLL);
  }

  *a1 = v6;
  ForEach<>.SynthesizedForEachRowIDs.subscript.getter(a2, a3, v6);
  return protocol witness for Collection.subscript.read in conformance AnyTableRowIDs;
}

void *protocol witness for Collection.indices.getter in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a1);

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs);
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a2, a3);
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  (*(*(a1 - 8) + 32))(a2, v4, a1);
  swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a1);
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ForEach<A, B, C><>.SynthesizedForEachRowIDs(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a1);
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t ForEach<>.Generator.visitRows<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13[2] = a8;
  v13[3] = a12;
  v13[4] = a3;
  v14 = a4;
  v15 = a1;
  return TableRowForEachState.forEachItem(from:do:)(a2, partial apply for closure #1 in ForEach<>.Generator.visitRows<A>(applying:from:), v13) & 1;
}

uint64_t closure #1 in ForEach<>.Generator.visitRows<A>(applying:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a3 + 188) == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v7;
    v21 = v8;
    v12 = result;
    InputValue = AGGraphGetInputValue();
    outlined init with copy of TableRowList(InputValue, v16);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v17);
    v14 = v18;
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    LOBYTE(a7) = (*(v15 + 8))(a5, v12, a6, a7, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a7 & 1;
  }

  return result;
}

uint64_t ForEach<>.Generator.rowIDs.getter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v71 = v18;
  v63 = v18;
  v64 = v19;
  v72 = v19;
  v73 = v20;
  v21 = type metadata accessor for ForEach<>.SynthesizedForEachRowIDs(0, &v68);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v52 - v26;
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return 0;
  }

  v60 = a8;
  v61 = v22;
  v74 = TableRowForEachState.fetchRowsPerElement()();
  if (v74.is_nil)
  {
    return 0;
  }

  value = v74.value;
  v59 = v21;
  v66 = 0;
  v67 = 0;
  MEMORY[0x1EEE9AC00](v74.value);
  v52[-2] = &v67;
  TableRowForEachState.forEachItem(from:do:)(&v66, partial apply for closure #1 in ForEach<>.Generator.rowIDs.getter, &v52[-4]);
  result = v67;
  if (!v67)
  {
    type metadata accessor for WrappedTableRowIDs<[TableRowID]>(0);
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
    return result;
  }

  if (value != 1)
  {
    goto LABEL_19;
  }

  if (a1[188] == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = v67;

  InputValue = AGGraphGetInputValue();
  outlined init with copy of TableRowList(InputValue, &v68);
  v31 = v71;
  v32 = v72;
  __swift_project_boxed_opaque_existential_1(&v68, v71);
  v33 = (*(v32 + 24))(v31, v32);
  v34 = outlined destroy of TableRowList(&v68);
  if (v33)
  {
    v35 = *(*v33 + 88);
    v56 = (*v33 + 88);
    v57 = v35;
    v55 = (v35)(v34);
    v36 = *(*v33 + 96);
    v37 = *v33 + 96;
    v53 = v36();
    v38 = v57();
    v39 = v36;
    v40 = v38;
    v54 = v33;
    v52[1] = v37;
    v52[0] = v39;
    result = v39();
    if (v55 < v40 || result < v55)
    {
      __break(1u);
    }

    else
    {
      v41 = v57();
      result = (v52[0])();
      if (v53 >= v41 && result >= v53)
      {
        if (!__OFSUB__(v53, v55))
        {
          if (v53 - v55 == 1)
          {
            v42 = *(*a1 + 160);
            swift_beginAccess();
            v68 = a3;
            v69 = a4;
            v70 = a5;
            v71 = v63;
            v72 = v64;
            v43 = type metadata accessor for ForEach();
            v44 = *(v43 - 8);
            v56 = *(v44 + 48);
            v57 = v43;
            v55 = v44 + 48;
            result = v56(&a1[v42], 1);
            if (result != 1)
            {
              v45 = v57;
              ForEach.data.getter();
              swift_endAccess();
              swift_beginAccess();
              result = (v56)(&a1[v42], 1, v45);
              if (result != 1)
              {
                ForEach.idGenerator.getter();
                v46 = v65;
                swift_endAccess();
                (*(v62 + 32))(v27, v14, a3);
                v68 = a3;
                v69 = a4;
                v70 = a5;
                v71 = v63;
                v72 = v64;
                v73 = v60;
                *&v27[*(type metadata accessor for ForEach<>.SynthesizedForEachRowIDs(0, &v68) + 68)] = v46;
                v47 = v59;
                WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, v59);
                type metadata accessor for WrappedTableRowIDs(0, v47, WitnessTable, v49);
                v50 = v61;
                (*(v61 + 16))(v24, v27, v47);
                v51 = AnyNavigationLinkPresentedViewStorage.__allocating_init(_:)(v24);

                (*(v50 + 8))(v27, v47);

                return v51;
              }

              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return result;
          }

LABEL_19:

          return 0;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return 0;
}

void ForEach<>.init<>(_:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t type metadata completion function for TableRowForEachState(uint64_t a1)
{
  type metadata accessor for ForEach();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for TableRowForEachState.Item(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in ForEach<>.Generator.rowIDs.getter(uint64_t a1, uint64_t a2)
{
  **(v2 + 16) = a2;

  return 0;
}

uint64_t *specialized TableRowForEachState.Item.init(id:rows:subgraph:index:offset:contentID:seed:state:isConstant:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9)
{
  v16 = *v9;
  swift_weakInit();
  *(v9 + *(*v9 + 200)) = 0;
  *(v9 + *(*v9 + 208)) = 0;
  (*(*(*(v16 + 88) - 8) + 32))(v9 + *(*v9 + 128), a1);
  *(v9 + *(*v9 + 136)) = a2;
  swift_weakAssign();
  *(v9 + *(*v9 + 152)) = a3;
  v17 = *(*v9 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v9 + v17, a4, AssociatedTypeWitness);
  *(v9 + *(*v9 + 168)) = a5;
  *(v9 + *(*v9 + 176)) = a6;
  *(v9 + *(*v9 + 184)) = a7;
  *(v9 + *(*v9 + 192)) = a9;
  return v9;
}

void _s14AttributeGraph0A0Vy7SwiftUI12TableRowListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for TableRowForEachState.ChildTraits(uint64_t a1)
{
  result = type metadata accessor for ForEach();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableRowForEachState.ChildTraits(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  v9 = v7 | *(v4 + 80) & 0xF8;
  v10 = v9 <= 7 && ((*(v4 + 80) | *(v6 + 80)) & 0x100000) == 0;
  if (v10 && (v11 = (((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, ((-10 - (((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v7)) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7))
  {
    __n = v8;
    v34 = *(a3 + 24);
    v12 = v11 + 8;
    (*(v4 + 16))(a1);
    v14 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
    v17 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 11) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v24 + 11) & 0xFFFFFFFFFFFFFFF8;
    v27 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *v25 = v27;
    v28 = v7 + 9 + v25;
    v29 = v7 + 9 + v26;
    v30 = *(v6 + 48);

    if (v30(v29 & ~v7, 1, v34))
    {
      memcpy((v28 & ~v7), (v29 & ~v7), __n);
    }

    else
    {
      (*(v6 + 16))(v28 & ~v7, v29 & ~v7, v34);
      (*(v6 + 56))(v28 & ~v7, 0, 1, v34);
    }
  }

  else
  {
    v31 = *a2;
    *v3 = *a2;
    v3 = (v31 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  return v3;
}

uint64_t destroy for TableRowForEachState.ChildTraits(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + 7;

  v6 = (((((a1 + (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9 + 9;
  v13 = v8;
  result = (*(v8 + 48))(v10 & ~v9, 1, v7);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & ~v9, v7);
  }

  return result;
}

uint64_t initializeWithCopy for TableRowForEachState.ChildTraits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = a1;
  v16 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 11) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v21 + 8);
  *v20 = *v21;
  *(v20 + 8) = v14;
  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = v24 + 9 + v20;
  v26 = v24 + 9 + v21;
  v27 = *(v23 + 48);

  if (v27(v26 & ~v24, 1, v22))
  {
    if (*(v23 + 84))
    {
      v28 = *(v23 + 64);
    }

    else
    {
      v28 = *(v23 + 64) + 1;
    }

    memcpy((v25 & ~v24), (v26 & ~v24), v28);
  }

  else
  {
    (*(v23 + 16))(v25 & ~v24, v26 & ~v24, v22);
    (*(v23 + 56))(v25 & ~v24, 0, 1, v22);
  }

  return v30;
}

uint64_t assignWithCopy for TableRowForEachState.ChildTraits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a1 + v15 + 7;
  v17 = a2 + v15 + 7;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v19 & 0xFFFFFFFFFFFFFFF8) = *(v18 & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v21 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v25 + 9 + v20;
  v27 = v25 + 9 + v21;
  v28 = *(v24 + 48);
  LODWORD(a2) = v28(v26 & ~v25, 1, v23);
  v29 = v28(v27 & ~v25, 1, v23);
  if (a2)
  {
    if (!v29)
    {
      (*(v24 + 16))(v26 & ~v25, v27 & ~v25, v23);
      (*(v24 + 56))(v26 & ~v25, 0, 1, v23);
      return a1;
    }

    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v24 + 24))(v26 & ~v25, v27 & ~v25, v23);
      return a1;
    }

    v33 = *(v24 + 8);
    v32 = v24 + 8;
    v33(v26 & ~v25, v23);
    v30 = *(v32 + 76);
    v31 = *(v32 + 56);
  }

  if (v30)
  {
    v34 = v31;
  }

  else
  {
    v34 = v31 + 1;
  }

  memcpy((v26 & ~v25), (v27 & ~v25), v34);
  return a1;
}

uint64_t initializeWithTake for TableRowForEachState.ChildTraits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 11) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = (v17 + 11) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 11) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v13) = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v13;
  v21 = *(a3 + 24);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = v23 + 9 + v19;
  v25 = v23 + 9 + v20;
  if ((*(v22 + 48))(v25 & ~v23, 1, v21))
  {
    if (*(v22 + 84))
    {
      v26 = *(v22 + 64);
    }

    else
    {
      v26 = *(v22 + 64) + 1;
    }

    memcpy((v24 & ~v23), (v25 & ~v23), v26);
  }

  else
  {
    (*(v22 + 32))(v24 & ~v23, v25 & ~v23, v21);
    (*(v22 + 56))(v24 & ~v23, 0, 1, v21);
  }

  return a1;
}

uint64_t assignWithTake for TableRowForEachState.ChildTraits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a1 + v14 + 7;
  v16 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v16 += 11;
  *(v15 & 0xFFFFFFFFFFFFFFF8) = v17;
  v18 = (v15 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v18 & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v16 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = v24 + 9 + v19;
  v26 = v24 + 9 + v20;
  v27 = *(v23 + 48);
  LODWORD(v16) = v27(v25 & ~v24, 1, v22);
  v28 = v27(v26 & ~v24, 1, v22);
  if (v16)
  {
    if (!v28)
    {
      (*(v23 + 32))(v25 & ~v24, v26 & ~v24, v22);
      (*(v23 + 56))(v25 & ~v24, 0, 1, v22);
      return a1;
    }

    v29 = *(v23 + 84);
    v30 = *(v23 + 64);
  }

  else
  {
    if (!v28)
    {
      (*(v23 + 40))(v25 & ~v24, v26 & ~v24, v22);
      return a1;
    }

    v32 = *(v23 + 8);
    v31 = v23 + 8;
    v32(v25 & ~v24, v22);
    v29 = *(v31 + 76);
    v30 = *(v31 + 56);
  }

  if (v29)
  {
    v33 = v30;
  }

  else
  {
    v33 = v30 + 1;
  }

  memcpy((v25 & ~v24), (v26 & ~v24), v33);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableRowForEachState.ChildTraits(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(*(a3 + 16) - 8) + 64);
  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = v15 + 9;
  v19 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v20 = v16 + ((v18 + ((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v7 >= v12)
      {
        if (v6 < 0x7FFFFFFF)
        {
          v30 = *((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }

        else
        {
          v29 = *(v5 + 48);

          return v29();
        }
      }

      else
      {
        v28 = (*(v10 + 48))((v18 + ((((((a1 + v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15, v11, v8, v5);
        if (v28 >= 2)
        {
          return v28 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v13 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for TableRowForEachState.ChildTraits(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(*(*(a4 + 16) - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (!v13)
  {
    ++v16;
  }

  v20 = ((v15 + 9 + ((((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + v16;
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 == 0 || !v21)
  {
LABEL_23:
    if (v18 < a2)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (v20 > 3)
  {
    v6 = 1;
    if (v18 < a2)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v23 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v6 = v24;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_23;
  }

  v6 = 4;
  if (v18 < a2)
  {
LABEL_24:
    v25 = ~v18 + a2;
    if (v20 < 4)
    {
      v26 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v27 = v25 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v27;
            if (v6 > 1)
            {
LABEL_69:
              if (v6 == 2)
              {
                *&a1[v20] = v26;
              }

              else
              {
                *&a1[v20] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v6 > 1)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_66;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v6 > 1)
      {
        goto LABEL_69;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v25;
      v26 = 1;
      if (v6 > 1)
      {
        goto LABEL_69;
      }
    }

LABEL_66:
    if (v6)
    {
      a1[v20] = v26;
    }

    return;
  }

LABEL_33:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v20] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v6)
  {
    goto LABEL_39;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v11 >= v17)
  {
    if (v11 >= a2)
    {
      if (v8 < 0x7FFFFFFF)
      {
        v36 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v36 = a2 & 0x7FFFFFFF;
          v36[1] = 0;
        }

        else
        {
          *v36 = a2 - 1;
        }
      }

      else
      {
        v35 = *(v7 + 56);

        v35(a1);
      }
    }

    else if (v19 != -8)
    {
      v32 = ~v11 + a2;
      bzero(a1, v19 + 8);
      *a1 = v32;
    }
  }

  else
  {
    v28 = ((v15 + 9 + (((((&a1[v19 + 15] & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
    if (v17 >= a2)
    {
      v33 = *(v12 + 56);
      v34 = a2 + 1;

      v33(v28, v34, v13, v9);
    }

    else
    {
      if (v16 <= 3)
      {
        v29 = ~(-1 << (8 * v16));
      }

      else
      {
        v29 = -1;
      }

      if (v16)
      {
        v30 = v29 & (~v17 + a2);
        if (v16 <= 3)
        {
          v31 = v16;
        }

        else
        {
          v31 = 4;
        }

        bzero(v28, v16);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v28 = v30;
            v28[2] = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v28 = v30;
        }

        else
        {
          *v28 = v30;
        }
      }
    }
  }
}

uint64_t type metadata completion function for ForEach<>.SynthesizedForEachRowIDs(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v7;
    result = swift_getWitnessTable(a2, v6, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized TableRowForEachState.ChildContent.info.getter(_OWORD *a1)
{
  v1 = a1[2];
  v3[0] = a1[1];
  v3[1] = v1;
  v3[2] = a1[3];
  type metadata accessor for TableRowForEachState.Info(0, v3);
  return *AGGraphGetValue();
}

uint64_t EnvironmentValues.managedObjectContext.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.managedObjectContext : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.managedObjectContext : EnvironmentValues(id *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  v4 = v3;

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues.managedObjectContext.setter(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  v3 = a1;

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues.managedObjectContext.modify(void *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v5 = v1[1];
  v3[4] = v5;
  type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.managedObjectContext.modify;
}

void EnvironmentValues.managedObjectContext.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  (*a1)[1] = v4;
  v5 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  v6 = v4;

  if (a2)
  {
    v7 = v6;
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18D00E9C0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

{
  sub_18C0FF238(a1, a2, a3);
}

uint64_t specialized Sequence.forEach(_:)(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v5 = *(a3 + 16);

  if (v5)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v6 = 1;
    do
    {
      v7 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v10 = *v8;
      v7(v11, 0);
      v13 = v6;
      v11[0] = v10;
      a1(v11);
      if (v3)
      {
        break;
      }

      ++v6;
    }

    while (v6 - v5 != 1);
  }
}

uint64_t static MapKitPreferenceKeys.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  v3 = MEMORY[0x18D004B90](&v6, &v5);

  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MapKitPreferenceKeys(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;

  v3 = MEMORY[0x18D004B90](&v6, &v5);

  return v3 & 1;
}

void *MapKitPreferencesInputs.init(inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v3;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  outlined destroy of _ViewInputs(v8);
  result = PreferencesInputs.init(hostKeys:)();
  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t MapKitPreferencesInputs.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();

  return v3 & 1;
}

uint64_t MapKitPreferencesInputs.visitKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  specialized Sequence.forEach(_:)(partial apply for closure #1 in MapKitPreferencesInputs.visitKeys<A>(_:), v6, v4);
}

void *MapKitPreferencesOutputs.init()@<X0>(uint64_t a2@<X8>)
{
  result = PreferencesOutputs.init()();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t MapKitPreferencesOutputs.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 2);
  v16 = *v4;
  v17 = v8;
  v9 = PreferencesOutputs.subscript.getter();
  v14 = v9;
  v15 = BYTE4(v9) & 1;
  v13[2] = a2;
  v13[3] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v10 = type metadata accessor for _GraphValue();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in MapKitPreferencesOutputs.subscript.getter, v13, MEMORY[0x1E69E73E0], v10, v11, a4);
}

uint64_t MapKitPreferencesOutputs.subscript.setter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4);
  v9 = *a1;
  v10 = v4;
  v8[2] = a3;
  v8[3] = a4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  type metadata accessor for Optional();
  v5 = type metadata accessor for Attribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in MapKitPreferencesOutputs.subscript.setter, v8, MEMORY[0x1E69E73E0], v5, v6, &v11);
  LOBYTE(v9) = v12;
  return PreferencesOutputs.subscript.setter();
}

uint64_t closure #1 in MapKitPreferencesOutputs.subscript.setter@<X0>(_DWORD *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  result = _GraphValue.value.getter();
  *a3 = result;
  return result;
}

void (*MapKitPreferencesOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  MapKitPreferencesOutputs.subscript.getter(a3, a4, (v9 + 4));
  return MapKitPreferencesOutputs.subscript.modify;
}

void MapKitPreferencesOutputs.subscript.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 36);
  v5 = (*a1)[2];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v9 = *(*a1 + 8);
    v10 = v4;
    v8 = &v9;
  }

  else
  {
    v11 = *(*a1 + 8);
    v12 = v4;
    v8 = &v11;
  }

  MapKitPreferencesOutputs.subscript.setter(v8, v6, v7, v5);

  free(v3);
}

uint64_t MapKitPreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in MapKitPreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(&v5);
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  return _GraphValue.value.getter();
}

uint64_t MapKitPreferencesOutputs.visitKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  PreferencesOutputs.forEachPreference(_:)();
}

uint64_t EnvironmentValues.popoverAutomaticallyDismissesWhenScrolledOutOfView.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

id PresentationDetent.uiSheetDetentId.getter()
{
  v1 = v0[1];
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v2)
    {
      v3 = 0x3A746867696548;
      v4 = 0xE700000000000000;
    }

    else
    {
      v3 = 0x6E6F697463617246;
      v4 = 0xE90000000000003ALL;
    }

    v10 = v3;
    v11 = v4;
    v5 = Double.description.getter();
    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v10 = 0x3A6D6F74737543;
    v11 = 0xE700000000000000;
    v5 = _typeName(_:qualified:)();
LABEL_8:
    MEMORY[0x18D00C9B0](v5);

    v6 = MEMORY[0x18D00C850](v10, v11);

    return v6;
  }

  if (*v0 | v1 ^ 0xC000000000000000)
  {
    v8 = MEMORY[0x1E69DE3B0];
  }

  else
  {
    v8 = MEMORY[0x1E69DE3B8];
  }

  v9 = *v8;

  return v9;
}

id PresentationDetent.uiSheetDetent.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      type metadata accessor for UISheetPresentationControllerDetent();
      v4 = PresentationDetent.uiSheetDetentId.getter();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v1 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    v12 = objc_opt_self();
    if (*&v2 | v1 ^ 0xC000000000000000)
    {
      v13 = [v12 largeDetent];
    }

    else
    {
      v13 = [v12 mediumDetent];
    }

    return v13;
  }

  else
  {
    if (!v3)
    {
      type metadata accessor for UISheetPresentationControllerDetent();
      v4 = PresentationDetent.uiSheetDetentId.getter();
      *(swift_allocObject() + 16) = v2;
LABEL_6:
      v6 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

      return v6;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    if (v2 <= 0.0)
    {
      _StringGuts.grow(_:)(31);

      v9 = Double.description.getter();
      MEMORY[0x18D00C9B0](v9);

      MEMORY[0x18D009810](0xD00000000000001DLL, 0x800000018CD5B4E0);

      *(v8 + 16) = 0x4024000000000000;
    }

    type metadata accessor for UISheetPresentationControllerDetent();
    v10 = PresentationDetent.uiSheetDetentId.getter();

    v11 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    return v11;
  }
}

double View.presentationDetents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;

  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t partial apply for closure #1 in View.presentationDetents(_:)(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

double View.presentationDetents(_:selection:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;

  View.transformPreference<A>(_:_:)();

  return result;
}

uint64_t closure #1 in View.presentationDetents(_:selection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  *a1 = a2;
  v12 = a1[1];
  v13 = a1[2];

  result = outlined consume of Binding<NavigationSplitViewColumn>?(v12, v13);
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  return result;
}

double View.presentationDragIndicator(_:)(char a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  View.transformPreference<A>(_:_:)();

  return result;
}

double View.presentationBackgroundInteraction(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = 2;
  return View.presentationBackgroundInteraction(_:for:)(&v5, &v4, a2, a3);
}

double View.presentationBackgroundInteraction(_:for:)(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  View.transformPreference<A>(_:_:)();

  return result;
}

double View.presentationCompactAdaptation(horizontal:vertical:)(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 17) = v5;
  View.transformPreference<A>(_:_:)();

  return result;
}

double View.presentationCornerRadius(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  View.transformPreference<A>(_:_:)();

  return result;
}

double View.presentationCompactAdaptation(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  *(swift_allocObject() + 16) = v5;
  View.transformPreference<A>(_:_:)();

  return result;
}

double View.presentationDragIndicator(_:offset:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  View.transformPreference<A>(_:_:)();

  return result;
}

void closure #1 in View.presentationBackgroundInteraction(_:for:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v6 = (a3 >> 57) & 0x78 | a3 & 7;
  if (v6 == 95 || v6 == 63)
  {
    outlined consume of PresentationDimmingBehavior?(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  else if ((~a3 & 0xF000000000000007) != 0)
  {
    v9 = PresentationDetent.uiSheetDetentId.getter();
    outlined consume of PresentationDimmingBehavior?(*(a1 + 48));
    *(a1 + 48) = v9;
  }

  else
  {
    outlined consume of PresentationDimmingBehavior?(*(a1 + 48));
    *(a1 + 48) = 1;
  }

  if (a4 == 1)
  {
    if (v6 == 63 || v6 == 95)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *(a1 + 56) = v8;
  }
}

uint64_t partial apply for closure #1 in View.presentationCompactAdaptation(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  *(result + 40) = v2;
  *(result + 41) = v2;
  return result;
}

uint64_t partial apply for closure #1 in View.presentationCornerRadius(_:)(uint64_t result)
{
  v2 = *(v1 + 24);
  *(result + 64) = *(v1 + 16);
  *(result + 72) = v2;
  return result;
}

uint64_t partial apply for closure #1 in View.presentationDragIndicator(_:offset:)(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *(result + 58) = *(v1 + 16);
  *(result + 80) = v2;
  *(result + 88) = v3;
  return result;
}

double View.popoverAutomaticallyDismissesWhenScrolledOutOfView(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.popoverAutomaticallyDismissesWhenScrolledOutOfView : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.popoverAutomaticallyDismissesWhenScrolledOutOfView : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double static PresentationDetent.medium.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CDFAD40;
  return result;
}

double static PresentationDetent.large.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18CDFAD50;
  return result;
}

uint64_t static PresentationDetent.custom<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2 | 0x8000000000000000;
  return result;
}

uint64_t PresentationDetent.Identifier.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x18D00F6F0](4);
      v6 = a2;
    }

    else if (a2 | a3 ^ 0xC000000000000000)
    {
      if (a3 == 0xC000000000000000 && a2 == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x18D00F6F0](v6);
  }

  else
  {
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x18D00F6F0](v5);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x18D00F730](v7);
  }
}