void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA014ToolbarContentD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ToolbarContentDescriptor.typeCache;
  if (*(static ToolbarContentDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static ToolbarContentDescriptor.typeCache;
    static ToolbarContentDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static ToolbarContentDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor()
{
  result = lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor;
  if (!lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarContentDescriptor, &type metadata for ToolbarContentDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<ToolbarContentDescriptor>, lazy protocol witness table accessor for type ToolbarContentDescriptor and conformance ToolbarContentDescriptor, &type metadata for ToolbarContentDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>);
    }
  }
}

uint64_t initializeWithCopy for _ToolbarInputs(uint64_t a1, uint64_t *a2)
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

  return a1;
}

void type metadata accessor for Binding<Int>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Int>?)
  {
    type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(255, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Int>?);
    }
  }
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys()
{
  result = lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys;
  if (!lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarGraphUtilities.HostKeys, &type metadata for ToolbarGraphUtilities.HostKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TupleToolbarContent.Visitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = v36;
  *&v38[12] = *(v4 + 68);
  v9 = *(v4 + 24);
  v10 = *(v4 + 56);
  v37 = *(v4 + 40);
  *v38 = v10;
  v36[0] = *(v4 + 8);
  v36[1] = v9;
  v32 = v36[0];
  v33 = v9;
  v34 = v37;
  v35 = v10;
  v11 = *(v4 + 11);
  v12 = *(v4 + 12);
  v13 = *&v38[16] + v12;
  if (__OFADD__(*&v38[16], v12))
  {
    __break(1u);
  }

  else
  {
    v6 = *&v38[24];
    outlined init with copy of _ToolbarInputs(v36, v41);
    type metadata accessor for TupleToolbarContent(255, *(a2 + 16), v17, v18);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    AGGraphCreateOffsetAttribute2();
    _GraphValue.init(_:)();
    v39[2] = v34;
    *v40 = v35;
    v39[0] = v32;
    v39[1] = v33;
    *&v40[16] = v13;
    *&v40[24] = v6;
    v26 = v34;
    *v27 = v35;
    *&v27[12] = *&v40[12];
    v24 = v32;
    v25 = v33;
    v19 = *(a4 + 32);
    outlined init with copy of _ToolbarInputs(v39, v41);
    v19(&v29, v28, &v24, a3, a4);
    v41[2] = v26;
    v42[0] = *v27;
    *(v42 + 12) = *&v27[12];
    v41[0] = v24;
    v41[1] = v25;
    outlined destroy of _ToolbarInputs(v41);
    v11 = v29;
    LODWORD(v8) = v30;
    v5 = v31;
    *(v7 + 12) = v31 + v12;
    v4 = *(v7 + 13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_3:
  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v4);
  }

  v24 = v32;
  v25 = v33;
  v26 = v34;
  *v27 = v35;
  *&v27[16] = v13;
  *&v27[24] = v6;
  result = outlined destroy of _ToolbarInputs(&v24);
  *(v4 + 2) = v21 + 1;
  v23 = &v4[24 * v21];
  *(v23 + 4) = v11;
  *(v23 + 10) = v8;
  *(v23 + 6) = v5;
  *(v7 + 13) = v4;
  return result;
}

uint64_t destroy for TupleNavigationDestination.Collector(void *a1)
{
}

uint64_t *closure #1 in View.renderContainerBackgroundInHostingView<A>(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 < 0)
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *result;

    result = static Edge.Set.all.getter();
    v5 = result;
    v6 = -1;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 18) = v3 < 0;
  return result;
}

uint64_t storeEnumTagSinglePayload for VibrantColorForegroundStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BE96E4C()
{
  type metadata accessor for _ViewModifier_Content<BarPocketModifier>(255);
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>(255, v0, v1, v2);
  type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for BarMagicPocketStyle.Role?, &type metadata for BarMagicPocketStyle.Role, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<BarPocketModifier>, MEMORY[0x1E697FDF8]);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>, type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>, protocol conformance descriptor for CoreInteractionRepresentableAdaptor<A>);
  lazy protocol witness table accessor for type BarMagicPocketStyle.Role? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

double one-time initialization function for navigationBarTrailing()
{
  static ToolbarItemPlacement.navigationBarTrailing = 10;
  result = 0.0;
  unk_1EAA0AC28 = 0u;
  unk_1EAA0AC38 = 0u;
  byte_1EAA0AC48 = 2;
  return result;
}

uint64_t initializeWithCopy for ToolbarMakeEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 72);
  *(a1 + 72) = v3;
  *(a1 + 80) = *(a2 + 80);
  v4 = v3;
  return a1;
}

void type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v6[5] = v0;
    v6[6] = v1;
    type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
    v4 = v3;
    v5 = lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier();
    v6[0] = MEMORY[0x1E6981CD0];
    v6[1] = v5;
    v6[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier;
  if (!lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultToolbarBarPocketModifier, &type metadata for DefaultToolbarBarPocketModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier);
  }

  return result;
}

uint64_t static ToolbarContent.makeViewList<A>(placement:content:inputs:)(int a1, int *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3[1];
  v27 = *a3;
  v28 = v8;
  v10 = *a3;
  v9 = a3[1];
  v29 = a3[2];
  v11 = *a2;
  *v23 = v10;
  *&v23[16] = v9;
  *&v23[32] = a3[2];
  outlined init with copy of _GraphInputs(&v27, v25);
  _ViewListInputs.init(_:)();
  if ((~v26 & 0xC) != 0)
  {
    v26 |= 0xCuLL;
  }

  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for SubscriptionLifetime<ObservableObjectPublisher>, MEMORY[0x1E697FA78]);
  swift_allocObject();
  outlined init with copy of _GraphInputs(&v27, v23);
  v12 = SubscriptionLifetime.init()();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v18 = v27;
  v19 = v28;
  v20 = v29;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  AGCreateWeakAttribute();
  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E6980A48]);
  swift_allocObject();
  v14 = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *v23 = a1;
  *&v23[4] = v13;
  *&v23[40] = v20;
  *&v23[24] = v19;
  *&v23[8] = v18;
  *&v23[56] = v14;
  v24 = v12;
  v20 = *&v23[32];
  v21 = *&v23[48];
  v22 = v12;
  v18 = *v23;
  v19 = *&v23[16];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarPlacementEnvironment(v23, v17);
  lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarPlacementEnvironment(v23);
  _GraphInputs.environment.setter();
  v17[0] = v11;
  static View.makeDebuggableViewList(view:inputs:)();
  v15 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of ToolbarPlacementEnvironment(v23);
  outlined destroy of _ViewListOutputs(&v18);
  outlined destroy of _ViewListInputs(v25);
  return v15;
}

void type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ObservableObjectPublisher();
    v7 = a3(a1, v6, MEMORY[0x1E695BFE0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for ToolbarPlacementEnvironment(uint64_t a1, uint64_t a2)
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

  return a1;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarPlacementEnvironment, &type metadata for ToolbarPlacementEnvironment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment);
  }

  return result;
}

double destroy for ToolbarPlacementEnvironment(void *a1)
{

  return result;
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacement.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacement.Role(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultToolbarBarPocketModifier>, lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier, &type metadata for DefaultToolbarBarPocketModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultToolbarBarPocketModifier>, lazy protocol witness table accessor for type DefaultToolbarBarPocketModifier and conformance DefaultToolbarBarPocketModifier, &type metadata for DefaultToolbarBarPocketModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultToolbarBarPocketModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier()
{
  result = lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier;
  if (!lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarPocketModifier, &type metadata for BarPocketModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarPocketModifier and conformance BarPocketModifier);
  }

  return result;
}

uint64_t type metadata accessor for CoreInteractionRepresentableAdaptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for CoreInteractionRepresentableAdaptor);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for CoreInteractionRepresentableAdaptor);
}

uint64_t getEnumTagSinglePayload for VibrantColorForegroundStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

void type metadata accessor for _ViewModifier_Content<BarPocketModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<BarPocketModifier>)
  {
    lazy protocol witness table accessor for type BarPocketModifier and conformance BarPocketModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<BarPocketModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries()
{
  result = lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries;
  if (!lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarMakeEntries, &type metadata for ToolbarMakeEntries, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarMakeEntries and conformance ToolbarMakeEntries);
  }

  return result;
}

uint64_t implicit closure #1 in static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PreferenceTransform and conformance PreferenceTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform and conformance PreferenceTransform()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform;
  if (!lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform, &unk_1EFFB7A70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform and conformance PreferenceTransform);
  }

  return result;
}

uint64_t type metadata accessor for ToolbarButtonStyle.ResolvedBody(uint64_t a1)
{
  result = type metadata singleton initialization cache for ToolbarButtonStyle.ResolvedBody;
  if (!type metadata singleton initialization cache for ToolbarButtonStyle.ResolvedBody)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Binding<ToggleState>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(255, a2, a3);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I21ButtonContentModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, a2, a3);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>, &type metadata for ToolbarItemBridgingPreferenceKey, &protocol witness table for ToolbarItemBridgingPreferenceKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncludesStyledText and conformance IncludesStyledText()
{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesStyledText, &type metadata for IncludesStyledText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesStyledText, &type metadata for IncludesStyledText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesStyledText, &type metadata for IncludesStyledText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesStyledText, &type metadata for IncludesStyledText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText;
  if (!lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesStyledText, &type metadata for IncludesStyledText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesStyledText and conformance IncludesStyledText);
  }

  return result;
}

uint64_t outlined init with copy of NavigationAuthority?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.HostViewGraph, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC010PositionedE11DestinationO7StorageV13SeededRequest33_EA42A490FE48784768DCEF705CD04CF4LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, &type metadata for PositionedNavigationDestination.Storage.SeededRequest);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 224)
    {
      outlined init with copy of (String, TabEntry)(i, &v21, &lazy cache variable for type metadata for (NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest), &type metadata for NavigationStackViewPosition, &type metadata for PositionedNavigationDestination.Storage.SeededRequest, type metadata accessor for (Badge, Spacer));
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v24);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v25[0];
      *v7 = v24;
      v7[1] = v8;
      *(v7 + 25) = *(v25 + 9);
      v9 = (v3[7] + 176 * result);
      v10 = v22[9];
      v11 = v22[10];
      v12 = v23[0];
      *(v9 + 156) = *(v23 + 12);
      v9[8] = v11;
      v9[9] = v12;
      v9[7] = v10;
      v13 = v22[5];
      v14 = v22[6];
      v15 = v22[8];
      v9[5] = v22[7];
      v9[6] = v15;
      v9[3] = v13;
      v9[4] = v14;
      v17 = v22[3];
      v16 = v22[4];
      *v9 = v22[2];
      v9[1] = v17;
      v9[2] = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
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

uint64_t specialized _UIHostingView.setWantsTransparentBackground(for:_:)(uint64_t result, char a2, uint64_t (*a3)(void))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
  v5 = *(v3 + v4);
  v6 = v5 & result;
  if (a2)
  {
    if (v6 == result)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    v8 = v7 | v5;
    *(v3 + v4) = v8;
    if ((v5 != 0) == (v8 == 0))
    {
      return a3();
    }
  }

  else
  {
    if (v6)
    {
      v9 = ~result;
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    *(v3 + v4) = v10;
    if (v5)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      return a3();
    }
  }

  return result;
}

unsigned __int8 *ContainerBackgroundBridge.backgroundPlacement.didset(unsigned __int8 *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *(v1 + 145);
  if (v3 != 5)
  {
    if (v3 == v4)
    {
      return result;
    }

LABEL_5:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = *(v8 + 8);
      v10 = Strong;
      v11 = v9(ObjectType, v8);

      if (*(v2 + 145) != 5)
      {
        ContainerBackgroundKind.Builtin.addPreference(to:)(v11);
      }

      v12 = *(v2 + 145);
      v13 = swift_getObjectType();
      v14 = v10;
      v9(v13, v8);

      if (v12 == 5)
      {
        GraphHost.removePreference<A>(_:)();

LABEL_11:
        v15 = *(v2 + 72);
        v16 = *(v2 + 80);
        v17 = *(v2 + 88);
        v18 = *(v2 + 96);
        v19 = *(v2 + 104);
        *(v2 + 80) = 0;
        *(v2 + 88) = 0;
        *(v2 + 72) = 0;
        *(v2 + 96) = xmmword_18CD6A6D0;
        outlined consume of ContainerBackgroundValue?(v15, v16, v17, v18, v19);
        ContainerBackgroundBridge.lastContainerBackground.didset();

        v20 = 1;
        result = swift_beginAccess();
        *(v2 + 48) = 0;
LABEL_14:
        *(v2 + 52) = v20;
        return result;
      }

      GraphHost.addPreference<A>(_:)();
    }

    else if (*(v1 + 145) == 5)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v20 = 0;
    *(v2 + 48) = -1;
    goto LABEL_14;
  }

  if (v4 != 5)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t ContainerBackgroundKind.Builtin.addPreference(to:)(uint64_t a1)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    v6 = &type metadata for ContainerBackgroundKeys.NavigationKey;
    v7 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v8 = v3 == 0;
    if (*v1)
    {
      v9 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
    }

    else
    {
      v9 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    }

    if (!v8)
    {
      v7 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      v6 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
    }
  }

  else
  {
    if (v3 == 2 || v3 != 3)
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      return outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v16);
    }

    v6 = &type metadata for ContainerBackgroundKeys.PresentationKey;
    v7 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v9 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
  }

  v16 = 0uLL;
  *&v17 = 0;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v9;
  outlined init with take of MutableCollection & RangeReplaceableCollection(&v16, &v19);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = __swift_project_boxed_opaque_existential_1(&v19, v20);
  MEMORY[0x1EEE9AC00](v13);
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = partial apply for closure #1 in ContainerBackgroundKind.Builtin.addPreference(to:);
  v15[6] = a1;
  static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v14, thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> ()partial apply, v15, v10);
  return __swift_destroy_boxed_opaque_existential_1(&v19);
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV020ToolbarUpdateContextD033_0E31079E853BF37F2F0477B683D77398LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  outlined init with copy of AnyAccessibilityValue?(a2, v9, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v8)
  {
    if (!v10)
    {
      outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
      return 1;
    }

LABEL_7:
    outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(v7, &lazy cache variable for type metadata for (Toolbar.UpdateContext?, Toolbar.UpdateContext?), &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    return 0;
  }

  outlined init with copy of AnyAccessibilityValue?(v7, v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v10)
  {
    outlined destroy of Toolbar.UpdateContext(v6);
    goto LABEL_7;
  }

  outlined init with take of Toolbar.UpdateContext(v9, v5);
  v3 = specialized static Toolbar.UpdateContext.== infix(_:_:)(v6, v5);
  outlined destroy of Toolbar.UpdateContext(v5);
  outlined destroy of Toolbar.UpdateContext(v6);
  outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  return v3;
}

uint64_t NavigationState.stackContent(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v8 = *(v4 + 24);
  if (a2 == 4)
  {
    __src[0] = *v5;
    *&__src[1] = *(v5 + 16);
    *(&__src[1] + 1) = v8;
    v9 = *(v5 + 112);
    __src[6] = *(v5 + 96);
    __src[7] = v9;
    __src[8] = *(v5 + 128);
    *(&__src[8] + 10) = *(v5 + 138);
    v10 = *(v5 + 48);
    __src[2] = *(v5 + 32);
    __src[3] = v10;
    v11 = *(v5 + 80);
    __src[4] = *(v5 + 64);
    __src[5] = v11;
    return NavigationState.mergedStackContent(for:columnCount:)(result, a3, a4);
  }

  if (*(v8 + 16))
  {
    v12 = a2;
    v13 = result;
    result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2, a3);
    if (v14)
    {
      outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * result, __src);
      v15 = 0;
      if (v12 <= 1u)
      {
        if (v12)
        {
          v25 = 0u;
          v16 = 0;
          if (!*(v8 + 16))
          {
LABEL_18:
            v15 = 0;
            v18 = 0uLL;
            goto LABEL_19;
          }

LABEL_16:
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v16, a3);
          if (v20)
          {
            outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v19, v33);
            v28 = v35;
            v29 = v36;
            v30 = v37;
            v31 = v38;
            v32 = v39;
            v27 = v34;
            outlined init with copy of ResolvedNavigationDestinations(&v27, v26);
            outlined destroy of NavigationColumnState(v33);
            v24 = v28;
            v25 = v27;
            v22 = v30;
            v23 = v29;
            v21 = v31;
            v15 = v32;
LABEL_20:
            result = memcpy(a4, __src, 0x163uLL);
            *(a4 + 360) = v25;
            *(a4 + 376) = v24;
            *(a4 + 392) = v23;
            *(a4 + 408) = v22;
            *(a4 + 424) = v21;
            *(a4 + 55) = v15;
            v17 = 1;
            goto LABEL_21;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (v12 == 2)
        {
          v25 = 0u;
          v16 = a3 == 3;
          if (!*(v8 + 16))
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        if (v12 != 3)
        {
          v25 = 0u;
          v16 = 2;
          if (!*(v8 + 16))
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      v18 = 0uLL;
      v25 = 0u;
LABEL_19:
      v23 = v18;
      v24 = v18;
      v21 = v18;
      v22 = v18;
      goto LABEL_20;
    }
  }

  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[12] = 0u;
  a4[13] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v17 = -1;
LABEL_21:
  *(a4 + 448) = v17;
  return result;
}

uint64_t initializeWithCopy for NavigationState.Base(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 448);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  if (v4 == 2)
  {
    *a1 = *a2;
    v10 = (a1 + 8);
    v11 = a2[3];

    if (v11 == 1)
    {
      v12 = *(a2 + 3);
      v13 = *(a2 + 7);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = v13;
      *(a1 + 72) = *(a2 + 36);
      *v10 = *(a2 + 1);
      *(a1 + 24) = v12;
LABEL_34:
      v14 = 2;
      goto LABEL_53;
    }

    *(a1 + 8) = a2[1];
    if (v11)
    {
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v11;
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = *(a2 + 32);
    }

    v21 = a2[5];
    *(a1 + 33) = *(a2 + 33);
    if (v21)
    {
      v22 = a2[6];
      *(a1 + 40) = v21;
      *(a1 + 48) = v22;

      v23 = a2[8];
      if (v23)
      {
LABEL_30:
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v23;
        *(a1 + 72) = *(a2 + 72);

LABEL_33:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_34;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      v23 = a2[8];
      if (v23)
      {
        goto LABEL_30;
      }
    }

    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 72);
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v5 = a2[6];
    if (v5)
    {
      *(a1 + 40) = *(a2 + 10);
      v6 = a2[7];
      v7 = a2[8];
      *(a1 + 48) = v5;
      *(a1 + 56) = v6;
      v8 = a2[9];
      v9 = a2[10];
      *(a1 + 64) = v7;
      *(a1 + 72) = v8;
      *(a1 + 80) = v9;
      *(a1 + 88) = *(a2 + 22);
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = *(a2 + 22);
    }

    *(a1 + 92) = *(a2 + 23);
    v15 = a2[13];
    if (v15)
    {
      *(a1 + 96) = a2[12];
      *(a1 + 104) = v15;
      *(a1 + 112) = a2[14];
    }

    else
    {
      *(a1 + 96) = *(a2 + 6);
      *(a1 + 112) = a2[14];
    }

    v16 = *(a2 + 208);
    if (a2[30])
    {
      if (v16 == 255)
      {
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 184) = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 120) = *(a2 + 15);
        *(a1 + 136) = *(a2 + 17);
      }

      else if (v16)
      {
        *(a1 + 120) = a2[15];
        v17 = a2[19];

        if (v17)
        {
          v18 = a2[20];
          *(a1 + 152) = v17;
          *(a1 + 160) = v18;
          (**(v17 - 8))(a1 + 128, a2 + 16, v17);
        }

        else
        {
          v26 = *(a2 + 9);
          *(a1 + 128) = *(a2 + 8);
          *(a1 + 144) = v26;
          *(a1 + 160) = a2[20];
        }

        v27 = a2[22];
        if (v27 == 1)
        {
          *(a1 + 168) = *(a2 + 21);
        }

        else
        {
          *(a1 + 168) = a2[21];
          *(a1 + 176) = v27;
        }

        v28 = a2[24];
        v29 = a2[25];
        *(a1 + 184) = a2[23];
        *(a1 + 192) = v28;
        *(a1 + 200) = v29;
        *(a1 + 208) = 1;
      }

      else
      {
        v24 = *(a2 + 9);
        *(a1 + 144) = v24;
        (**(v24 - 8))(a1 + 120, a2 + 15);
        *(a1 + 208) = 0;
      }

      *(a1 + 240) = 1;
    }

    else
    {
      if (v16 == 255)
      {
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 168) = *(a2 + 21);
        *(a1 + 184) = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 120) = *(a2 + 15);
        *(a1 + 136) = *(a2 + 17);
      }

      else if (v16)
      {
        *(a1 + 120) = a2[15];
        v19 = a2[19];

        if (v19)
        {
          v20 = a2[20];
          *(a1 + 152) = v19;
          *(a1 + 160) = v20;
          (**(v19 - 8))(a1 + 128, a2 + 16, v19);
        }

        else
        {
          v30 = *(a2 + 9);
          *(a1 + 128) = *(a2 + 8);
          *(a1 + 144) = v30;
          *(a1 + 160) = a2[20];
        }

        v31 = a2[22];
        if (v31 == 1)
        {
          *(a1 + 168) = *(a2 + 21);
        }

        else
        {
          *(a1 + 168) = a2[21];
          *(a1 + 176) = v31;
        }

        v32 = a2[24];
        v33 = a2[25];
        *(a1 + 184) = a2[23];
        *(a1 + 192) = v32;
        *(a1 + 200) = v33;
        *(a1 + 208) = 1;
      }

      else
      {
        v25 = *(a2 + 9);
        *(a1 + 144) = v25;
        (**(v25 - 8))(a1 + 120, a2 + 15);
        *(a1 + 208) = 0;
      }

      v34 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v34;
      *(a1 + 232) = a2[29];
      *(a1 + 240) = 0;
    }

    v35 = a2[32];
    *(a1 + 248) = a2[31];
    *(a1 + 256) = v35;
    v36 = a2[34];
    *(a1 + 264) = a2[33];
    *(a1 + 272) = v36;
    v37 = a2[36];
    *(a1 + 280) = a2[35];
    *(a1 + 288) = v37;
    v38 = a2[38];
    *(a1 + 296) = a2[37];
    *(a1 + 304) = v38;
    v39 = *(a2 + 39);
    *(a1 + 328) = a2[41];
    *(a1 + 312) = v39;
    *(a1 + 336) = a2[42];
    *(a1 + 344) = a2[43];
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 353) = *(a2 + 353);
    v40 = a2[45];

    if (v40)
    {
      v41 = a2[46];
      v42 = a2[47];
      *(a1 + 360) = v40;
      *(a1 + 368) = v41;
      v43 = a2[48];
      v44 = a2[49];
      *(a1 + 376) = v42;
      *(a1 + 384) = v43;
      v45 = a2[50];
      v46 = a2[51];
      *(a1 + 392) = v44;
      *(a1 + 400) = v45;
      v47 = a2[52];
      *(a1 + 408) = v46;
      *(a1 + 416) = v47;
      *(a1 + 440) = a2[55];
      *(a1 + 424) = *(a2 + 53);
    }

    else
    {
      v48 = *(a2 + 51);
      *(a1 + 392) = *(a2 + 49);
      *(a1 + 408) = v48;
      *(a1 + 424) = *(a2 + 53);
      *(a1 + 440) = a2[55];
      v49 = *(a2 + 47);
      *(a1 + 360) = *(a2 + 45);
      *(a1 + 376) = v49;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[2];
  }

LABEL_53:
  *(a1 + 448) = v14;
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7ToolbarO11BarLocationO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        outlined init with copy of Toolbar.BarLocation(v3, v8);
        outlined init with copy of Toolbar.BarLocation(v4, v7);
        v5 = specialized static Toolbar.BarLocation.== infix(_:_:)(v8, v7);
        outlined destroy of Toolbar.BarLocation(v7);
        outlined destroy of Toolbar.BarLocation(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void type metadata accessor for PushTarget?()
{
  if (!lazy cache variable for type metadata for PushTarget?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PushTarget?);
    }
  }
}

uint64_t outlined destroy of (PushTarget?, PushTarget?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for NavigationState.StackContent(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2 == 2)
  {

    v5 = *(a1 + 24);
    if (v5)
    {
      if (v5 == 1)
      {
        return result;
      }
    }

    if (*(a1 + 40))
    {
    }

    if (*(a1 + 64))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 48))
    {
    }

    if (*(a1 + 104))
    {
    }

    v3 = *(a1 + 208);
    if (*(a1 + 240))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 128));
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 120));
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 128));
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 120));
        }
      }
    }

    if (*(a1 + 360))
    {

      goto LABEL_34;
    }
  }

  return result;
}

id UIKitNavigationController.init(rootViewController:)(void *a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_update;
  type metadata accessor for PlatformBarUpdater();
  v4 = swift_allocObject();
  v4[2] = specialized InferredToolbarState.init()();
  v4[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x1E69E7CD0];
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = v5;
  *&v1[v3] = v4;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize] = 0;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority];
  *v6 = xmmword_18CD633F0;
  *(v6 + 2) = 0;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context];
  *v7 = xmmword_18CD67BC0;
  *(v7 + 2) = 0;
  v8 = &v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_backgroundHost] = 0;
  type metadata accessor for UIKitNavigationBar();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for UIKitToolbar();
  v10 = swift_getObjCClassFromMetadata();
  v18.receiver = v1;
  v18.super_class = type metadata accessor for UIKitNavigationController();
  v11 = objc_msgSendSuper2(&v18, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v10);
  if (a1)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18CD69590;
    *(v12 + 32) = a1;
  }

  type metadata accessor for UIViewController();
  v13 = v11;
  v14 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 _swiftui_setViewControllers_];

  v16 = [v13 navigationBar];
  [v16 setPrefersLargeTitles_];

  return v13;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, a3, a4, a5);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12VerticalEdgeO_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<VerticalEdge, Double>, lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge, MEMORY[0x1E697DFA8], MEMORY[0x1E69E63B0]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(255, a2, a3);
    v8[0] = MEMORY[0x1E697E2E8];
    v8[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

__n128 assignWithTake for _PresentationTransitionOutputs.Content(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void UIKitNavigationController.configure(environment:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  if (v3)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  if ((v8 & 1) == 0)
  {
LABEL_3:
    v4 = [v2 navigationBar];
    [v4 setPreferredBehavioralStyle_];
  }

LABEL_4:
  v5 = 1;
  *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven) = 1;
  v6 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure) & 1) == 0)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v5 = v7;
  }

  *(v2 + v6) = v5;
}

double destroy for NavigationState.StackContent.PositionedView(uint64_t a1)
{

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 24));
    }

    if (*(a1 + 72) != 1)
    {
    }
  }

  else if (!*(a1 + 88))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>, &type metadata for ContainerBackgroundKeys.HostTransparency, &protocol witness table for ContainerBackgroundKeys.HostTransparency, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>(255);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E6981E60];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981900];
    v4[1] = MEMORY[0x1E6980A30];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>, &type metadata for ContainerBackgroundKeys.HostTransparency, &protocol witness table for ContainerBackgroundKeys.HostTransparency, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of NavigationState.StackContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for UINavigationPresentationAdaptor?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id specialized NavigationStackCoordinator.init(context:navigationAuthority:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x70));
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  *(v4 + *((*v10 & *v4) + 0x78)) = 2;
  *(v4 + *((*v10 & *v4) + 0x80)) = 0;
  *(v4 + *((*v10 & *v4) + 0x88)) = 0;
  *(v4 + *((*v10 & *v4) + 0x90)) = 0;
  *(v4 + *((*v10 & *v4) + 0x98)) = 0;
  v12 = (v4 + *((*v10 & *v4) + 0xA0));
  *v12 = 0;
  v12[1] = 0;
  *(v4 + *((*v10 & *v4) + 0xA8)) = -1;
  v13 = v4 + *((*v10 & *v4) + 0xB0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 7) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 9) = 0u;
  *(v13 + 10) = 0u;
  *(v13 + 11) = 0u;
  *(v13 + 12) = 0u;
  *(v13 + 13) = 0u;
  *(v13 + 14) = 0u;
  *(v13 + 15) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 19) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 21) = 0u;
  *(v13 + 22) = 0u;
  *(v13 + 23) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 25) = 0u;
  *(v13 + 26) = 0u;
  *(v13 + 27) = 0u;
  v13[448] = -1;
  v14 = v4 + *((*v10 & *v4) + 0x60);
  *v14 = a1;
  v14[8] = a2;
  *(v14 + 2) = a3;
  outlined init with copy of NavigationAuthority(a4, v4 + *((*v10 & *v4) + 0x68));
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of NavigationAuthority(a4);
  return v15;
}

uint64_t outlined destroy of UINavigationPresentationAdaptor?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for UINavigationPresentationAdaptor?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a3;
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70));
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;

  outlined consume of NavigationStrategy_Phone?(v13, v14, v15);
  v16 = *((*v11 & *v7) + 0x68);
  Strong = swift_weakLoadStrong();
  if (Strong && (v18 = Strong, swift_beginAccess(), v19 = v18[8], v93 = v18[7], v94 = v19, v95[0] = v18[9], *(v95 + 10) = *(v18 + 154), v20 = v18[4], v90 = v18[3], v91 = v20, v21 = v18[6], *v92 = v18[5], *&v92[16] = v21, v22 = v18[2], v88 = v18[1], v89 = v22, outlined init with copy of NavigationState.StackContent?(&v88, v96, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v82 = v93, v83 = v94, v84[0] = v95[0], *(v84 + 10) = *(v95 + 10), v79 = v90, v80 = v91, *v81 = *v92, *&v81[16] = *&v92[16], v77 = v88, v78 = v89, getEnumTag for AccessibilityActionCategory.Category(&v77) != 1))
  {
    v97[6] = v82;
    v97[7] = v83;
    v97[8] = v84[0];
    *(&v97[8] + 10) = *(v84 + 10);
    v97[2] = v79;
    v97[3] = v80;
    v97[4] = *v81;
    v97[5] = *&v81[16];
    v97[0] = v77;
    v97[1] = v78;
    v63 = v7 + *((*v11 & *v7) + 0x60);
    NavigationState.stackContent(for:)(*v63, v63[8], *(v63 + 2), v96);
    v75[6] = v97[6];
    v75[7] = v97[7];
    v76[0] = v97[8];
    *(v76 + 10) = *(&v97[8] + 10);
    v75[2] = v97[2];
    v75[3] = v97[3];
    v75[4] = v97[4];
    v75[5] = v97[5];
    v75[0] = v97[0];
    v75[1] = v97[1];
    outlined destroy of NavigationState(v75);
    if (LOBYTE(v96[28]) != 255)
    {
      memcpy(v97, v96, 0x1C1uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v96, 0, 448);
  }

  v23 = v7 + *((*v11 & *v7) + 0x60);
  v24 = *v23;
  v25 = v23[8];
  v26 = *(v23 + 2);
  if (v25 == 4)
  {
    LOBYTE(v25) = 0;
  }

  *&v97[0] = v24;
  BYTE8(v97[0]) = v25;
  *&v97[1] = v26;
  LOBYTE(v97[28]) = 0;
LABEL_7:
  outlined init with copy of NavigationState.StackContent(v97, v96);
  v27 = *((*v11 & *v7) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v96, v7 + v27, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  swift_endAccess();
  outlined init with copy of NavigationState.Base(v97, &v88);
  v29 = v98;
  v28 = v99;
  v30 = v100;
  outlined init with copy of NavigationState.Base(&v88, &v77);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v30;
  v85 = implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply;
  v86 = v31;
  v87 = v30;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  swift_bridgeObjectRetain_n();

  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(&v88);
  v33 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v35 = v34;
  v37 = v36;
  v38 = v32;
  if ((v34 & 1) != 0 && v32 >= 2u)
  {
    result = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    __break(1u);
    goto LABEL_16;
  }

  specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v33, v35 & 1, v37, v38);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v79 = v90;
  v80 = v91;
  *v81 = *v92;
  *&v81[9] = *&v92[9];
  v77 = v88;
  v78 = v89;
  outlined init with copy of NavigationAuthority(v7 + v16, v96);
  NavigationAuthority.controllerCache.getter();
  v39 = outlined destroy of NavigationAuthority(v96);
  MEMORY[0x1EEE9AC00](v39);
  v72 = &v77;
  MEMORY[0x1EEE9AC00](v40);
  v70 = &v98;
  v71 = &v77;
  MEMORY[0x1EEE9AC00](v41);
  v64[16] = v42;
  v65 = v43;
  v66 = partial apply for closure #1 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v67 = v44;
  v68 = partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v69 = v45;
  specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(0, partial apply for closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), v64, closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), 0);
  v47 = v46;

  specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(v47, v74 & 1, v48);
  result = [v47 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v50 = result;
  [result setClipsToBounds_];

  v51 = direct field offset for UIHostingController.host;
  v52 = *&v47[direct field offset for UIHostingController.host];
  v75[0] = v29;
  type metadata accessor for MainActor();
  swift_retain_n();
  v53 = v52;
  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E85E0];
  *(v55 + 16) = v54;
  *(v55 + 24) = v56;
  *(v55 + 32) = 0;
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = static MainActor.shared.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  *(v59 + 32) = 0;
  *(v59 + 40) = v57;

  Binding.init(get:set:)();
  v88 = v96[0];
  LOBYTE(v89) = v96[1];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();

  v96[0] = v75[0];
  UIHostingViewBase.inheritedEnvironment.setter();

  v96[0] = v73;
  v60 = EnvironmentValues.preferenceBridge.getter();
  if (v60)
  {
    v61 = v60;
    v62 = *&v47[v51];
    specialized ViewRendererHost.setPreferenceBridge(_:)(v61);
  }

  outlined destroy of NavigationState.StackContent(v97);
  outlined destroy of NavigationState.StackContent.PositionedView(&v77);
  return v47;
}

uint64_t sub_18BE9B42C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BE9B464()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double outlined consume of NavigationStrategy_Phone?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

char *initializeWithCopy for NavigationState.StackContent(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[448];
  if (v4 == 2)
  {
    *__dst = *__src;
    v10 = __dst + 8;
    v11 = *(__src + 3);

    if (v11 == 1)
    {
      v12 = *(__src + 24);
      v13 = *(__src + 56);
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = v13;
      *(__dst + 36) = *(__src + 36);
      *v10 = *(__src + 8);
      *(__dst + 24) = v12;
LABEL_34:
      v24 = 2;
LABEL_53:
      __dst[448] = v24;
      return __dst;
    }

    *(__dst + 1) = *(__src + 1);
    if (v11)
    {
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = v11;
      __dst[32] = __src[32];
    }

    else
    {
      *(__dst + 1) = *(__src + 1);
      __dst[32] = __src[32];
    }

    v21 = *(__src + 5);
    __dst[33] = __src[33];
    if (v21)
    {
      v22 = *(__src + 6);
      *(__dst + 5) = v21;
      *(__dst + 6) = v22;

      v23 = *(__src + 8);
      if (v23)
      {
LABEL_30:
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = v23;
        __dst[72] = __src[72];

LABEL_33:
        __dst[73] = __src[73];
        goto LABEL_34;
      }
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      v23 = *(__src + 8);
      if (v23)
      {
        goto LABEL_30;
      }
    }

    *(__dst + 56) = *(__src + 56);
    __dst[72] = __src[72];
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + 1) = *(__src + 1);
    *(__dst + 4) = *(__src + 4);
    v5 = *(__src + 6);
    if (v5)
    {
      *(__dst + 10) = *(__src + 10);
      v6 = *(__src + 7);
      v7 = *(__src + 8);
      *(__dst + 6) = v5;
      *(__dst + 7) = v6;
      v8 = *(__src + 9);
      v9 = *(__src + 10);
      *(__dst + 8) = v7;
      *(__dst + 9) = v8;
      *(__dst + 10) = v9;
      *(__dst + 22) = *(__src + 22);
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = *(__src + 56);
      *(__dst + 72) = *(__src + 72);
      *(__dst + 22) = *(__src + 22);
    }

    *(__dst + 23) = *(__src + 23);
    v15 = *(__src + 13);
    if (v15)
    {
      *(__dst + 12) = *(__src + 12);
      *(__dst + 13) = v15;
      *(__dst + 14) = *(__src + 14);
    }

    else
    {
      *(__dst + 6) = *(__src + 6);
      *(__dst + 14) = *(__src + 14);
    }

    v16 = __src[208];
    if (__src[240])
    {
      if (v16 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v16)
      {
        *(__dst + 15) = *(__src + 15);
        v17 = *(__src + 19);

        if (v17)
        {
          v18 = *(__src + 20);
          *(__dst + 19) = v17;
          *(__dst + 20) = v18;
          (**(v17 - 8))(__dst + 128, __src + 128, v17);
        }

        else
        {
          v27 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v27;
          *(__dst + 20) = *(__src + 20);
        }

        v28 = *(__src + 22);
        if (v28 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v28;
        }

        v29 = *(__src + 24);
        v30 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v29;
        *(__dst + 25) = v30;
        __dst[208] = 1;
      }

      else
      {
        v25 = *(__src + 9);
        *(__dst + 9) = v25;
        (**(v25 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      __dst[240] = 1;
    }

    else
    {
      if (v16 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v16)
      {
        *(__dst + 15) = *(__src + 15);
        v19 = *(__src + 19);

        if (v19)
        {
          v20 = *(__src + 20);
          *(__dst + 19) = v19;
          *(__dst + 20) = v20;
          (**(v19 - 8))(__dst + 128, __src + 128, v19);
        }

        else
        {
          v31 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v31;
          *(__dst + 20) = *(__src + 20);
        }

        v32 = *(__src + 22);
        if (v32 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v32;
        }

        v33 = *(__src + 24);
        v34 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v33;
        *(__dst + 25) = v34;
        __dst[208] = 1;
      }

      else
      {
        v26 = *(__src + 9);
        *(__dst + 9) = v26;
        (**(v26 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      v35 = *(__src + 28);
      *(__dst + 27) = *(__src + 27);
      *(__dst + 28) = v35;
      *(__dst + 29) = *(__src + 29);
      __dst[240] = 0;
    }

    v36 = *(__src + 32);
    *(__dst + 31) = *(__src + 31);
    *(__dst + 32) = v36;
    v37 = *(__src + 34);
    *(__dst + 33) = *(__src + 33);
    *(__dst + 34) = v37;
    v38 = *(__src + 36);
    *(__dst + 35) = *(__src + 35);
    *(__dst + 36) = v38;
    v39 = *(__src + 38);
    *(__dst + 37) = *(__src + 37);
    *(__dst + 38) = v39;
    v40 = *(__src + 312);
    *(__dst + 41) = *(__src + 41);
    *(__dst + 312) = v40;
    *(__dst + 42) = *(__src + 42);
    *(__dst + 43) = *(__src + 43);
    __dst[352] = __src[352];
    *(__dst + 353) = *(__src + 353);
    v41 = *(__src + 45);

    if (v41)
    {
      v42 = *(__src + 46);
      v43 = *(__src + 47);
      *(__dst + 45) = v41;
      *(__dst + 46) = v42;
      v44 = *(__src + 48);
      v45 = *(__src + 49);
      *(__dst + 47) = v43;
      *(__dst + 48) = v44;
      v46 = *(__src + 50);
      v47 = *(__src + 51);
      *(__dst + 49) = v45;
      *(__dst + 50) = v46;
      v48 = *(__src + 52);
      *(__dst + 51) = v47;
      *(__dst + 52) = v48;
      *(__dst + 55) = *(__src + 55);
      *(__dst + 424) = *(__src + 424);
    }

    else
    {
      v49 = *(__src + 408);
      *(__dst + 392) = *(__src + 392);
      *(__dst + 408) = v49;
      *(__dst + 424) = *(__src + 424);
      *(__dst + 55) = *(__src + 55);
      v50 = *(__src + 376);
      *(__dst + 360) = *(__src + 360);
      *(__dst + 376) = v50;
    }

    v24 = 1;
    goto LABEL_53;
  }

  return memcpy(__dst, __src, 0x1C1uLL);
}

uint64_t outlined assign with take of NavigationState.StackContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 449))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 448);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 440) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 448) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 449) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 449) = 0;
    }

    if (a2)
    {
      *(result + 448) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier()
{
  result = lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier;
  if (!lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationBackgroundReaderModifier, &type metadata for NavigationBackgroundReaderModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier);
  }

  return result;
}

char *initializeWithCopy for NavigationState.StackContent.Views.ViewsSequence(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[448];
  if (v4 == 2)
  {
    *__dst = *__src;
    v10 = __dst + 8;
    v11 = *(__src + 3);

    if (v11 == 1)
    {
      v12 = *(__src + 24);
      v13 = *(__src + 56);
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = v13;
      *(__dst + 36) = *(__src + 36);
      *v10 = *(__src + 8);
      *(__dst + 24) = v12;
LABEL_32:
      v23 = 2;
LABEL_51:
      __dst[448] = v23;
      goto LABEL_52;
    }

    *(__dst + 1) = *(__src + 1);
    if (v11)
    {
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = v11;
      __dst[32] = __src[32];
    }

    else
    {
      *(__dst + 1) = *(__src + 1);
      __dst[32] = __src[32];
    }

    v20 = *(__src + 5);
    __dst[33] = __src[33];
    if (v20)
    {
      v21 = *(__src + 6);
      *(__dst + 5) = v20;
      *(__dst + 6) = v21;

      v22 = *(__src + 8);
      if (v22)
      {
LABEL_28:
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = v22;
        __dst[72] = __src[72];

LABEL_31:
        __dst[73] = __src[73];
        goto LABEL_32;
      }
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      v22 = *(__src + 8);
      if (v22)
      {
        goto LABEL_28;
      }
    }

    *(__dst + 56) = *(__src + 56);
    __dst[72] = __src[72];
    goto LABEL_31;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + 1) = *(__src + 1);
    *(__dst + 4) = *(__src + 4);
    v5 = *(__src + 6);
    if (v5)
    {
      *(__dst + 10) = *(__src + 10);
      v6 = *(__src + 7);
      v7 = *(__src + 8);
      *(__dst + 6) = v5;
      *(__dst + 7) = v6;
      v8 = *(__src + 9);
      v9 = *(__src + 10);
      *(__dst + 8) = v7;
      *(__dst + 9) = v8;
      *(__dst + 10) = v9;
      *(__dst + 22) = *(__src + 22);
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = *(__src + 56);
      *(__dst + 72) = *(__src + 72);
      *(__dst + 22) = *(__src + 22);
    }

    *(__dst + 23) = *(__src + 23);
    v14 = *(__src + 13);
    if (v14)
    {
      *(__dst + 12) = *(__src + 12);
      *(__dst + 13) = v14;
      *(__dst + 14) = *(__src + 14);
    }

    else
    {
      *(__dst + 6) = *(__src + 6);
      *(__dst + 14) = *(__src + 14);
    }

    v15 = __src[208];
    if (__src[240])
    {
      if (v15 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v15)
      {
        *(__dst + 15) = *(__src + 15);
        v16 = *(__src + 19);

        if (v16)
        {
          v17 = *(__src + 20);
          *(__dst + 19) = v16;
          *(__dst + 20) = v17;
          (**(v16 - 8))(__dst + 128, __src + 128, v16);
        }

        else
        {
          v26 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v26;
          *(__dst + 20) = *(__src + 20);
        }

        v27 = *(__src + 22);
        if (v27 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v27;
        }

        v28 = *(__src + 24);
        v29 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v28;
        *(__dst + 25) = v29;
        __dst[208] = 1;
      }

      else
      {
        v24 = *(__src + 9);
        *(__dst + 9) = v24;
        (**(v24 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      __dst[240] = 1;
    }

    else
    {
      if (v15 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v15)
      {
        *(__dst + 15) = *(__src + 15);
        v18 = *(__src + 19);

        if (v18)
        {
          v19 = *(__src + 20);
          *(__dst + 19) = v18;
          *(__dst + 20) = v19;
          (**(v18 - 8))(__dst + 128, __src + 128, v18);
        }

        else
        {
          v30 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v30;
          *(__dst + 20) = *(__src + 20);
        }

        v31 = *(__src + 22);
        if (v31 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v31;
        }

        v32 = *(__src + 24);
        v33 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v32;
        *(__dst + 25) = v33;
        __dst[208] = 1;
      }

      else
      {
        v25 = *(__src + 9);
        *(__dst + 9) = v25;
        (**(v25 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      v34 = *(__src + 28);
      *(__dst + 27) = *(__src + 27);
      *(__dst + 28) = v34;
      *(__dst + 29) = *(__src + 29);
      __dst[240] = 0;
    }

    v35 = *(__src + 32);
    *(__dst + 31) = *(__src + 31);
    *(__dst + 32) = v35;
    v36 = *(__src + 34);
    *(__dst + 33) = *(__src + 33);
    *(__dst + 34) = v36;
    v37 = *(__src + 36);
    *(__dst + 35) = *(__src + 35);
    *(__dst + 36) = v37;
    v38 = *(__src + 38);
    *(__dst + 37) = *(__src + 37);
    *(__dst + 38) = v38;
    v39 = *(__src + 312);
    *(__dst + 41) = *(__src + 41);
    *(__dst + 312) = v39;
    *(__dst + 42) = *(__src + 42);
    *(__dst + 43) = *(__src + 43);
    __dst[352] = __src[352];
    *(__dst + 353) = *(__src + 353);
    v40 = *(__src + 45);

    if (v40)
    {
      v41 = *(__src + 46);
      v42 = *(__src + 47);
      *(__dst + 45) = v40;
      *(__dst + 46) = v41;
      v43 = *(__src + 48);
      v44 = *(__src + 49);
      *(__dst + 47) = v42;
      *(__dst + 48) = v43;
      v45 = *(__src + 50);
      v46 = *(__src + 51);
      *(__dst + 49) = v44;
      *(__dst + 50) = v45;
      v47 = *(__src + 52);
      *(__dst + 51) = v46;
      *(__dst + 52) = v47;
      *(__dst + 55) = *(__src + 55);
      *(__dst + 424) = *(__src + 424);
    }

    else
    {
      v48 = *(__src + 408);
      *(__dst + 392) = *(__src + 392);
      *(__dst + 408) = v48;
      *(__dst + 424) = *(__src + 424);
      *(__dst + 55) = *(__src + 55);
      v49 = *(__src + 376);
      *(__dst + 360) = *(__src + 360);
      *(__dst + 376) = v49;
    }

    v23 = 1;
    goto LABEL_51;
  }

  memcpy(__dst, __src, 0x1C1uLL);
LABEL_52:
  v50 = *(__src + 58);
  *(__dst + 57) = *(__src + 57);
  *(__dst + 58) = v50;
  *(__dst + 59) = *(__src + 59);

  return __dst;
}

double destroy for NavigationState.Base(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  if (v2)
  {
    if (v2 == 2)
    {

      v4 = *(a1 + 24);
      if (v4)
      {
        if (v4 == 1)
        {
          return result;
        }
      }

      if (*(a1 + 40))
      {
      }

      if (*(a1 + 64))
      {

LABEL_36:
      }
    }

    else
    {
      if (*(a1 + 48))
      {
      }

      if (*(a1 + 104))
      {
      }

      v5 = *(a1 + 208);
      if (*(a1 + 240))
      {
        if (v5 != 255)
        {
          if (v5)
          {

            if (*(a1 + 152))
            {
              __swift_destroy_boxed_opaque_existential_1((a1 + 128));
            }

            if (*(a1 + 176) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 120));
          }
        }
      }

      else
      {
        if (v5 != 255)
        {
          if (v5)
          {

            if (*(a1 + 152))
            {
              __swift_destroy_boxed_opaque_existential_1((a1 + 128));
            }

            if (*(a1 + 176) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 120));
          }
        }
      }

      if (*(a1 + 360))
      {

        goto LABEL_36;
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, MEMORY[0x1E697FFD0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>)
  {
    v6[6] = v0;
    v6[7] = v1;
    v3 = MEMORY[0x1E697FFD0];
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, MEMORY[0x1E697FFD0]);
    v5 = v4;
    v6[0] = lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, _VariadicView_Children> and conformance <> _VariadicView.Tree<A, B>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, v3, MEMORY[0x1E697FFC8]);
    v6[1] = &protocol witness table for ReadDestinationsModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_57Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 96) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm_0()
{

  return swift_deallocObject();
}

void specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(id a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *__return_ptr, int64_t), uint64_t a5)
{
  v121 = a5;
  v122 = a4;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v121 - v15;
  v151[0] = 0;
  v149 = v5;
  v150 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();

  a2(&v149);
  v18 = v150;
  if (v150 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v134 = a1;
    v132 = v18;
    if (!i)
    {
      break;
    }

    v20 = 0;
    v139 = v18 & 0xC000000000000001;
    v137 = v18 & 0xFFFFFFFFFFFFFF8;
    *&v17 = 138412290;
    v131 = v17;
    *&v17 = 138412546;
    v125 = v17;
    v133 = v10;
    v135 = v13;
    v136 = v16;
    v138 = i;
    while (v139)
    {
      v21 = MEMORY[0x18D00E9C0](v20, v18);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_106;
      }

LABEL_11:
      v140 = v22;
      v23 = v21;
      v24 = [v23 navigationController];
      v25 = v24;
      if (!v24)
      {

        if (!a1)
        {
          static Log.navigation.getter();
          v29 = type metadata accessor for Logger();
          v30 = *(v29 - 8);
          if ((*(v30 + 48))(v16, 1, v29) == 1)
          {

            outlined destroy of UINavigationPresentationAdaptor?(v16, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          }

          else
          {
            v58 = v23;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v61 = v131;
              *(v61 + 4) = v58;
              *v62 = v58;
              v130 = v58;
              outlined destroy of NSObject?(v62);
              v63 = v62;
              v10 = v133;
              MEMORY[0x18D0110E0](v63, -1, -1);
              v64 = v61;
              v16 = v136;
              MEMORY[0x18D0110E0](v64, -1, -1);
              v58 = v59;
              v59 = v130;
            }

            v18 = v132;

            (*(v30 + 8))(v16, v29);
          }

          v13 = v135;
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (!a1)
      {

LABEL_20:
        static Log.navigation.getter();
        v31 = type metadata accessor for Logger();
        v32 = *(v31 - 8);
        if ((*(v32 + 48))(v10, 1, v31) == 1)
        {

          outlined destroy of UINavigationPresentationAdaptor?(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          a1 = v134;
        }

        else
        {
          v33 = v23;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v131;
            *(v36 + 4) = v33;
            *v37 = v33;
            v38 = v33;
            _os_log_impl(&dword_18BD4A000, v34, v35, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController or destination were nil", v36, 0xCu);
            outlined destroy of NSObject?(v37);
            v39 = v37;
            v13 = v135;
            MEMORY[0x18D0110E0](v39, -1, -1);
            v40 = v36;
            v10 = v133;
            MEMORY[0x18D0110E0](v40, -1, -1);
          }

          (*(v32 + 8))(v10, v31);
          a1 = v134;
          v18 = v132;
          v16 = v136;
        }

        goto LABEL_33;
      }

      if (v24 == a1)
      {

        static Log.navigation.getter();
        v41 = type metadata accessor for Logger();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v13, 1, v41) != 1)
        {
          v128 = v41;
          v43 = v23;
          v44 = v25;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          v129 = v44;

          LODWORD(v127) = v46;
          v130 = v45;
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v126 = v48;
            v49 = swift_slowAlloc();
            *&v142 = v49;
            *v47 = v125;
            *(v47 + 4) = v43;
            *v48 = v43;
            *(v47 + 12) = 2080;
            *&v141[0] = v25;
            _sSo22UINavigationControllerCSgMaTm_0(0, &lazy cache variable for type metadata for UINavigationController?, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
            v50 = v43;
            v129 = v129;
            v51 = String.init<A>(describing:)();
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v142);

            *(v47 + 14) = v53;
            v54 = v130;
            _os_log_impl(&dword_18BD4A000, v130, v127, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController and destination were equal %s", v47, 0x16u);
            v55 = v126;
            outlined destroy of NSObject?(v126);
            MEMORY[0x18D0110E0](v55, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x18D0110E0](v49, -1, -1);
            v56 = v47;
            v18 = v132;
            MEMORY[0x18D0110E0](v56, -1, -1);

            v57 = v129;
          }

          else
          {

            v57 = v130;
          }

          v65 = v138;
          v66 = v140;
          v13 = v135;
          (*(v42 + 8))(v135, v128);
          v10 = v133;
          v16 = v136;
          goto LABEL_34;
        }

        outlined destroy of UINavigationPresentationAdaptor?(v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        v10 = v133;
      }

      else
      {
        v26 = v24;
        v27 = a1;
        [v23 willMoveToParentViewController_];
        v28 = [v23 view];

        if (!v28)
        {
          __break(1u);
          return;
        }

        [v28 removeFromSuperview];

        specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v23, v26, v151);
        v18 = v132;
      }

LABEL_33:
      v65 = v138;
      v66 = v140;
LABEL_34:
      ++v20;
      if (v66 == v65)
      {
        goto LABEL_38;
      }
    }

    if (v20 >= *(v137 + 16))
    {
      goto LABEL_108;
    }

    v21 = *(v18 + 8 * v20 + 32);
    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_11;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

LABEL_38:
  swift_beginAccess();
  v67 = v151[0];
  if (!v151[0])
  {
    v122(&v148, v18);
    goto LABEL_102;
  }

  v68 = v151[0] + 64;
  v69 = 1 << *(v151[0] + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v18 = v70 & *(v151[0] + 64);
  v71 = (v69 + 63) >> 6;

  v72 = 0;
  v124 = v67 + 64;
  *&v125 = v67;
  v123 = v71;
  if (v18)
  {
LABEL_48:
    while (1)
    {
      v127 = v72;
      v75 = (v72 << 9) | (8 * __clz(__rbit64(v18)));
      v76 = *(*(v67 + 56) + v75);
      v77 = *(*(v67 + 48) + v75);
      v140 = v76;

      v129 = v77;
      v78 = [v77 _swiftui_viewControllers];
      v128 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v142 = MEMORY[0x1E69E7CC0];
      if (v16 >> 62)
      {
        break;
      }

      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v130 = v18;
      if (v10)
      {
        goto LABEL_50;
      }

LABEL_74:
      v96 = v140 & 0xC000000000000001;
LABEL_75:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v129 _swiftui_setViewControllers:isa];

      if (v96)
      {
        __CocoaSet.makeIterator()();
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
        lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
        Set.Iterator.init(_cocoa:)();
        v98 = v151[2];
        v140 = v151[1];
        v99 = v151[3];
        v100 = v151[4];
        v18 = v151[5];
      }

      else
      {
        v100 = 0;
        v98 = v140 + 56;
        v101 = -1 << *(v140 + 32);
        v99 = ~v101;
        v102 = -v101;
        if (v102 < 64)
        {
          v103 = ~(-1 << v102);
        }

        else
        {
          v103 = -1;
        }

        v18 = v103 & *(v140 + 56);
      }

      v130 &= v130 - 1;
      v16 = (v99 + 64) >> 6;
      if (v140 < 0)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v104 = v100;
        v105 = v18;
        v10 = v100;
        if (!v18)
        {
          while (1)
          {
            v10 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              break;
            }

            if (v10 >= v16)
            {
              goto LABEL_92;
            }

            v105 = *(v98 + 8 * v10);
            ++v104;
            if (v105)
            {
              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_86:
        v13 = ((v105 - 1) & v105);
        v106 = *(*(v140 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v105)))));
        if (!v106)
        {
          break;
        }

        while (1)
        {
          [v106 removeFromParentViewController];
          [v106 willMoveToParentViewController_];

          v100 = v10;
          v18 = v13;
          if ((v140 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_88:
          v107 = __CocoaSet.Iterator.next()();
          if (v107)
          {
            *&v141[0] = v107;
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
            swift_dynamicCast();
            v106 = v142;
            v10 = v100;
            v13 = v18;
            if (v142)
            {
              continue;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_92:
      outlined consume of Set<UIPress>.Iterator._Variant(v140);

      v68 = v124;
      v67 = v125;
      v71 = v123;
      v72 = v127;
      v18 = v130;
      if (!v130)
      {
        goto LABEL_43;
      }
    }

    v10 = __CocoaSet.count.getter();
    v130 = v18;
    if (!v10)
    {
      goto LABEL_74;
    }

LABEL_50:
    v79 = 0;
    v137 = v16 & 0xFFFFFFFFFFFFFF8;
    v138 = v16 & 0xC000000000000001;
    v126 = v16;
    v135 = v140 & 0xC000000000000001;
    v136 = v16 + 32;
    v80 = v140 & 0xFFFFFFFFFFFFFF8;
    if (v140 < 0)
    {
      v80 = v140;
    }

    v133 = v80;
    v139 = v140 + 56;
    v81 = MEMORY[0x1E6981910];
    while (1)
    {
      if (v138)
      {
        v82 = MEMORY[0x18D00E9C0](v79, v126);
      }

      else
      {
        if (v79 >= *(v137 + 16))
        {
          goto LABEL_105;
        }

        v82 = *(v136 + 8 * v79);
      }

      v16 = v82;
      if (__OFADD__(v79++, 1))
      {
        goto LABEL_104;
      }

      v18 = v10;
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v81, MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v13 = v84;
      if (swift_dynamicCastClass())
      {
        if (v135)
        {
          v85 = v16;
          v86 = __CocoaSet.contains(_:)();

          if (v86)
          {

            goto LABEL_55;
          }
        }

        else if (*(v140 + 16))
        {
          v87 = v140;
          v88 = *(v140 + 40);
          *&v131 = v16;
          v89 = NSObject._rawHashValue(seed:)(v88);
          v90 = -1 << *(v87 + 32);
          v91 = v89 & ~v90;
          if ((*(v139 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
          {
            v92 = ~v90;
            while (1)
            {
              v93 = *(*(v87 + 48) + 8 * v91);
              v94 = static NSObject.== infix(_:_:)();

              if (v94)
              {
                break;
              }

              v91 = (v91 + 1) & v92;
              v87 = v140;
              if (((*(v139 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v95 = v131;

            a1 = v134;
            v81 = MEMORY[0x1E6981910];
            goto LABEL_55;
          }

LABEL_53:

          a1 = v134;
          v81 = MEMORY[0x1E6981910];
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_55:
      if (v79 == v10)
      {
        v96 = v135;
        goto LABEL_75;
      }
    }
  }

LABEL_43:
  v73 = v132;
  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_107;
    }

    if (v74 >= v71)
    {
      break;
    }

    v18 = *(v68 + 8 * v74);
    ++v72;
    if (v18)
    {
      v72 = v74;
      goto LABEL_48;
    }
  }

  v108 = (v122)(&v148, v73);
  v109 = -1 << *(v67 + 32);
  v110 = ~v109;
  v111 = *(v67 + 64);
  v112 = -v109;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  *&v142 = v67;
  *(&v142 + 1) = v68;
  v143 = v110;
  *&v144 = v113 & v111;
  *(&v144 + 1) = closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:);
  *&v145 = 0;
  *(&v145 + 1) = 0xF000000000000007;
  v146 = 0u;
  v147 = 0u;
  specialized FlattenSequence.Iterator.next()(v108);
  if (v114)
  {
    v115 = v114;
    v116 = MEMORY[0x1E6981910];
    v117 = MEMORY[0x1E6981900];
    do
    {
      [v115 didMoveToParentViewController_];
      v118 = *&v115[direct field offset for UIHostingController.host];
      static ViewGraphRootValues.all.getter();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, v116, v117, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      a1 = v134;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      specialized FlattenSequence.Iterator.next()(v119);
      v115 = v120;
    }

    while (v120);
  }

  v141[2] = v144;
  v141[3] = v145;
  v141[4] = v146;
  v141[5] = v147;
  v141[0] = v142;
  v141[1] = v143;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v141, type metadata accessor for FlattenSequence<LazyMapSequence<[UINavigationController : Set<NavigationStackHostingController<AnyView>>].Values, Set<NavigationStackHostingController<AnyView>>>>.Iterator);
LABEL_102:
  outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v149);
}

void NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t), void *a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  v10 = a2;
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = *a1;
  v19 = *(a1 + 1);
  v20 = *v7;
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19), (v23 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v57 = a4;
  v60 = a3;
  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  v25 = v24;
  if (requiresNew #1 (_:) in NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v25, v7, v10 & 1, v18, v19))
  {

LABEL_6:
    LODWORD(v60) = v18;
    static Log.navigation.getter();
    v26 = type metadata accessor for Logger();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      v28 = outlined destroy of Logger?(v14);
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v56 = v31;
        v57 = swift_slowAlloc();
        v61 = v57;
        *v31 = 136315138;
        v62[0] = v60;
        v63 = v19;
        v32 = NavigationContentAbstractPosition.description.getter();
        v34 = v19;
        v35 = v7;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v61);

        v37 = v56;
        *(v56 + 1) = v36;
        v7 = v35;
        v19 = v34;
        _os_log_impl(&dword_18BD4A000, v29, v30, "<NavigationHostingControllerCache>: MISS at %s", v37, 0xCu);
        v38 = v57;
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x18D0110E0](v38, -1, -1);
        MEMORY[0x18D0110E0](v37, -1, -1);
      }

      v28 = (*(v27 + 8))(v14, v26);
    }

    v39 = v59(v28);
    swift_beginAccess();
    v40 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v20 + 16);
    *(v20 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v60, v19, isUniquelyReferenced_nonNull_native);
    *(v20 + 16) = v61;
    v42 = swift_endAccess();
    goto LABEL_12;
  }

  v43 = v18;
  static Log.navigation.getter();
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v17, 1, v44) == 1)
  {
    outlined destroy of Logger?(v17);
    v46 = v60;
  }

  else
  {
    v59 = v19;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v49 = 136315138;
      v62[0] = v43;
      v63 = v59;
      v50 = NavigationContentAbstractPosition.description.getter();
      v52 = v7;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v61);

      *(v49 + 4) = v53;
      v7 = v52;
      _os_log_impl(&dword_18BD4A000, v47, v48, "<NavigationHostingControllerCache>: HIT at %s", v49, 0xCu);
      v54 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x18D0110E0](v54, -1, -1);
      MEMORY[0x18D0110E0](v49, -1, -1);
    }

    v46 = v60;
    (*(v45 + 8))(v17, v44);
  }

  v40 = v25;
  v42 = v46();
LABEL_12:
  MEMORY[0x18D00CC30](v42);
  if (*((v7[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(void), void *a5, uint64_t (*a6)(uint64_t), void *a7)
{
  v7[0] = a2;
  v8 = a3;
  NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v7, 0, a4, a5, a6, a7);
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  type metadata accessor for Logger?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized NavigationStrategy.viewControllerCommon(for:entering:canPop:isRoot:)(uint64_t a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E6981910];
  v11 = MEMORY[0x1E6981900];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = v13 + *((*MEMORY[0x1E69E7D40] & *v13) + 0x3F8);
  *v15 = 1542;
  v15[2] = 0;
  *(v13 + *((*v14 & *v13) + 0x400)) = 0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>.HostingView, v10, v11, type metadata accessor for NavigationStackHostingController.HostingView);
  v17 = objc_allocWithZone(v16);

  v19 = specialized _UIHostingView.init(rootView:)(v18);
  v20 = specialized UIHostingController.init(_hostingView:)(v19);
  result = [v20 view];
  if (result)
  {
    v22 = result;
    [result setClipsToBounds_];

    v23 = *&v20[direct field offset for UIHostingController.host];
    type metadata accessor for MainActor();
    swift_retain_n();
    v24 = v23;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    v28 = a2 & 1;
    *(v26 + 32) = v28;
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v27;
    *(v31 + 32) = v28;
    *(v31 + 40) = v29;

    Binding.init(get:set:)();
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();

    UIHostingViewBase.inheritedEnvironment.setter();
    v32 = EnvironmentValues.preferenceBridge.getter();
    if (v32)
    {
      specialized ViewRendererHost.setPreferenceBridge(_:)(v32);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ContainerBackgroundKeys.NavigationKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v8);
  v3 = v10;
  v4 = *(a1 + 8);
  if (v4 >> 62 == 2 && (v4 == 0x8000000000000000 ? (v5 = *a1 == 0) : (v5 = 0), v5))
  {
    v6 = v8;
    v7 = v9;
    outlined copy of ContainerBackgroundValue.Content(v8, v9);
    outlined consume of ContainerBackgroundValue.Content(v6, v7);

    *a1 = v6;
    *(a1 + 8) = v7;
  }

  else
  {
    outlined consume of ContainerBackgroundValue.Content(v8, v9);
  }

  *(a1 + 16) = (*(a1 + 16) | v3) & 1;
}

uint64_t type metadata completion function for NavigationStackHostingController(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double NavigationStackHostingController.HostingView.appendViewGraphFeatures()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature();
  ViewGraph.append<A>(feature:)();

  _UIHostingView.viewGraph.getter(v1);
  ViewGraph.append<A>(feature:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature()
{
  result = lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature;
  if (!lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarInputFeature, &type metadata for ToolbarInputFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature);
  }

  return result;
}

double specialized ViewRendererHost.setPreferenceBridge(_:)(uint64_t a1)
{
  UIHostingViewBase.viewGraph.getter();

  v2 = ViewGraph.preferenceBridge.getter();

  if (!v2 || (, v2 != a1))
  {
    UIHostingViewBase.viewGraph.getter();

    ViewGraph.preferenceBridge.setter();
  }

  return result;
}

void type metadata accessor for Binding<EditMode>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<EditMode>?)
  {
    type metadata accessor for Bool?(255, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<EditMode>?);
    }
  }
}

uint64_t static NavigationStackHostingController.HostingView.ignoresPresentations.getter(uint64_t a1)
{
  static Semantics.v6.getter();

  return isLinkedOnOrAfter(_:)();
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSbSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSbSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = a2;
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v11, v23);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, v8, a3, a1, v21);
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
      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8](v11, v23);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
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

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v9 = (*(v3 + 48) + 16 * result);
      v10 = *v9;
      v11 = *(v9 + 1);
      if (v10 == 3)
      {
        if (a1 == 3 && v11 == a2)
        {
          return result;
        }
      }

      else if (v10 == a1 && v11 == a2)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition()
{
  result = lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition;
  if (!lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationContentAbstractPosition, &type metadata for NavigationContentAbstractPosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition;
  if (!lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationContentAbstractPosition, &type metadata for NavigationContentAbstractPosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = __CocoaSet.count.getter();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_9:
    result = MEMORY[0x18D00E9C0](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(result + 32);
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void destroy for NavigationHostingControllerCache_UIKit.Source(void *a1)
{

  JUMPOUT(0x18D011290);
}

void specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(void *a1, char a2)
{
  v5 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v6 = v5[8];
  v7 = a1 + *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3F8);
  swift_beginAccess();
  if (v6 <= 5 && ((1 << v6) & 0x27) != 0)
  {
    v7[1] = v6;
  }

  v9 = direct field offset for UIHostingController.host;
  v10 = *(a1 + direct field offset for UIHostingController.host);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = v14 == 5 && v5[8] == 0;
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(2, v15);

  v16 = *(a1 + v9);
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(1, a2 & 1);
}

uint64_t specialized _UIHostingView.setWantsTransparentBackground(for:_:)(uint64_t a1, char a2)
{
  return specialized _UIHostingView.setWantsTransparentBackground(for:_:)(a1, a2, specialized _UIHostingView.updateBackgroundColor());
}

{
  return specialized _UIHostingView.setWantsTransparentBackground(for:_:)(a1, a2, specialized _UIHostingView.updateBackgroundColor());
}

void specialized UIHostingController.promoteTitle(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[direct field offset for UIHostingController.host];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v10 = v9;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  v11 = 0;
  v12 = 0;
  v38 = v35;
  v39 = v36;
  v40[0] = v37[0];
  *(v40 + 9) = *(v37 + 9);
  if (*(&v36 + 1) >= 2uLL)
  {
    v13 = v39;
    *&v30 = a1;
    *(&v30 + 1) = a2;
    v29 = 0uLL;
    v35 = v38;
    v36 = v39;
    v37[0] = v40[0];
    *(v37 + 9) = *(v40 + 9);
    v14 = outlined init with copy of NavigationTitleStorage(&v35, v33);
    MEMORY[0x18D009CB0](v33, v14);
    v28 = v13 & 1;
    v11 = Text.resolveString(in:with:idiom:)();
    v12 = v15;
    outlined destroy of PPTTestCase?(&v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }

  v16 = [v3 navigationItem];
  if (v12)
  {
    v17 = MEMORY[0x18D00C850](v11, v12);
  }

  else
  {
    v17 = 0;
  }

  [v16 setTitle_];

  *&v35 = a1;
  *(&v35 + 1) = a2;
  if (EnvironmentValues.accessibilityEnabled.getter())
  {
    if (*(&v39 + 1) == 1)
    {
      v18 = 0;
    }

    else
    {
      v32[0] = v40[0];
      *(v32 + 9) = *(v40 + 9);
      *(v34 + 9) = *(v40 + 9);
      v33[1] = v39;
      v34[0] = v40[0];
      v30 = v38;
      v31 = v39;
      *&v29 = a1;
      *(&v29 + 1) = a2;
      v33[0] = v38;
      outlined init with copy of NavigationTitleStorage(v33, &v35);
      v18 = NavigationTitleStorage.accessibilityLabel(in:)(&v29);
      v35 = v30;
      v36 = v31;
      v37[0] = v32[0];
      *(v37 + 9) = *(v32 + 9);
      outlined destroy of NavigationTitleStorage(&v35);
    }

    v19 = [v3 navigationItem];
    [v19 setAccessibilityAttributedLabel_];

    *&v35 = a1;
    *(&v35 + 1) = a2;
    EnvironmentValues.locale.getter();
    v20 = Locale.bcp47LanguageCode.getter();
    v22 = v21;
    (*(v26 + 8))(v8, v27);
    v23 = [v3 navigationItem];
    if (v22)
    {
      v24 = MEMORY[0x18D00C850](v20, v22);
    }

    else
    {
      v24 = 0;
    }

    [v23 setAccessibilityLanguage_];
    outlined destroy of PPTTestCase?(&v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }

  else
  {
    outlined destroy of PPTTestCase?(&v38, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }
}

uint64_t specialized NavigationStackHostingController.hostingView<A>(_:willModifyViewInputs:)(_OWORD *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
  swift_beginAccess();
  if (static StyleContextAcceptsAnyPredicate.evaluate(inputs:)())
  {
    v2[1] = 5;
  }

  result = swift_endAccess();
  v4 = *v2;
  v5 = v2[2] != 1 || v4 == 6;
  if (!v5 && (v4 == 4 || v4 == 1 || !*v2))
  {
    return _GraphInputs.pushStyleContext<A>(_:)();
  }

  return result;
}

void ToolbarInputFeature.modifyViewInputs(inputs:graph:)(__int128 *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = a1[1];
  v24 = a1[2];
  v25 = v4;
  v6 = a1[3];
  v26 = a1[4];
  v7 = a1[1];
  v23[0] = *a1;
  v23[1] = v7;
  v19 = v24;
  v20 = v6;
  v21 = a1[4];
  v8 = *v2;
  v27 = *(a1 + 20);
  v22 = *(a1 + 20);
  v17 = v23[0];
  v18 = v5;
  outlined init with copy of _ViewInputs(v23, v28);
  v9 = ContentToolbarPlacement.Placement.isEnabled(inputs:)(&v17, v8);
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v29 = v22;
  v28[0] = v17;
  v28[1] = v18;
  outlined destroy of _ViewInputs(v28);
  v2[18] = v9 & 1;
  if ((v9 & 1) == 0)
  {
    return;
  }

  if (!v8)
  {
    LOBYTE(v17) = 0;
    lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
    goto LABEL_6;
  }

  if (v8 == 1)
  {
    LOBYTE(v17) = 0;
    lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
LABEL_6:
    PropertyList.subscript.setter();
  }

  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.getter();
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v11 = Attribute;
    swift_beginAccess();
    v12 = *(a2 + 32);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    *(v2 + 1) = v11;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }

  if (v8 != 1)
  {
    swift_beginAccess();
    swift_getKeyPath();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for Map<EnvironmentValues, Bool>();
    lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>();

    v14 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    v15 = *(a2 + 32);
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    *(v2 + 2) = v14;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t ContentToolbarPlacement.Placement.isEnabled(inputs:)(uint64_t *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
      PropertyList.subscript.getter();
      if (v6 == 1 && (lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar(), PropertyList.subscript.getter(), v5 == 1))
      {
        PropertyList.subscript.getter();
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
      PropertyList.subscript.getter();
      return v7;
    }
  }

  else
  {
    lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
    PropertyList.subscript.getter();
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar()
{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserPopulatesSwiftUINavigationBar, &unk_1EFF9BED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserPopulatesSwiftUINavigationBar, &unk_1EFF9BED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserPopulatesSwiftUINavigationBar, &unk_1EFF9BED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserPopulatesSwiftUINavigationBar, &unk_1EFF9BED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentBrowserPopulatesSwiftUINavigationBar, &unk_1EFF9BED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<NavigationBackgroundReaderModifier>)
  {
    lazy protocol witness table accessor for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationBackgroundReaderModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>);
    }
  }
}

uint64_t static ReadDestinationsModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v36 = a6;
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v64 = *(a2 + 32);
  v65 = v9;
  v11 = *(a2 + 48);
  v66 = *(a2 + 64);
  v12 = *(a2 + 16);
  v63[0] = *a2;
  v63[1] = v12;
  v54 = v64;
  v55 = v11;
  v56 = *(a2 + 64);
  v35 = *a1;
  v67 = *(a2 + 80);
  v57 = *(a2 + 80);
  v52 = v63[0];
  v53 = v10;
  outlined init with copy of _ViewInputs(v63, v70);
  PreferenceKeys.add(_:)();
  PreferenceKeys.remove(_:)();
  v68[2] = v54;
  v68[3] = v55;
  v68[4] = v56;
  v69 = v57;
  v68[0] = v52;
  v68[1] = v53;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v48 = v57;
  v43 = v52;
  v44 = v53;
  v13 = outlined init with copy of _ViewInputs(v68, v70);
  a3(&v49, v13, &v43);
  v70[2] = v45;
  v70[3] = v46;
  v70[4] = v47;
  v71 = v48;
  v70[0] = v43;
  v70[1] = v44;
  outlined destroy of _ViewInputs(v70);
  v14 = v49;
  v15 = v50;
  v41 = v49;
  v42 = v50;

  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v43 = v52;
    v44 = v53;
    result = outlined destroy of _ViewInputs(&v43);
  }

  else
  {
    v34[2] = v34;
    MEMORY[0x1EEE9AC00](v17);
    v33[2] = a4;
    v33[3] = a5;
    v18 = v35;
    LODWORD(v43) = v35;
    type metadata accessor for ReadDestinationsModifier(255, a4, a5, v19);
    type metadata accessor for _GraphValue();
    v20 = _GraphValue.subscript.getter();
    v34[1] = v33;
    v21 = v37;
    MEMORY[0x1EEE9AC00](v20);
    v32[2] = a4;
    v32[3] = a5;
    v40 = v18;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
    _GraphValue.subscript.getter();
    v22 = v39;
    v23 = (*(a5 + 8))(a4, a5);
    v25 = v24;
    v26 = AGMakeUniqueID();
    v58[0] = v21;
    v58[1] = v22;
    v58[2] = v16;
    v59 = v23;
    v60 = v25;
    v61 = v26;
    v62 = 0;
    v37 = v65;
    v38 = DWORD2(v65);
    MEMORY[0x1EEE9AC00](v65);
    v32[-4] = a4;
    v32[-3] = a5;
    v32[-2] = v58;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    Destinations = type metadata accessor for ReadDestinationsModifier.RequestsTransform(0, a4, a5, v27);
    (*(*(Destinations - 8) + 8))(v58, Destinations);

    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v43 = v52;
    v44 = v53;
    result = outlined destroy of _ViewInputs(&v43);
    v14 = v49;
    v15 = v50;
  }

  v30 = v51;
  v31 = v36;
  *v36 = v14;
  *(v31 + 2) = v15;
  *(v31 + 3) = v30;
  return result;
}

uint64_t closure #1 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ReadDestinationsModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E69E6370];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 41, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for ReadDestinationsModifier(0, a2, a3, a4);
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t initializeWithCopy for ReadDestinationsModifier.RequestsTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 NavigationBackgroundReaderModifier.body(content:)@<Q0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v3 = static Alignment.center.getter();
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 96) = v12;
  *a2 = v6;
  *(a2 + 16) = v7;
  result = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 112) = closure #1 in View.renderContainerBackgroundInHostingView<A>(_:);
  *(a2 + 120) = 0;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  return result;
}

double one-time initialization function for automatic()
{
  qword_1EAA11F68 = 0;
  result = 0.0;
  static ToolbarItemPlacement.automatic = 0u;
  unk_1EAA11F58 = 0u;
  byte_1EAA11F70 = 2;
  return result;
}

double specialized static NavigationSearchAdjustmentModifier.updateEnvironment(searchAdjustment:environment:)(char a1, void *a2)
{
  v3 = a2[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    v4 = v6;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    v4 = v6;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);
    PropertyList.subscript.getter();
  }

  if (a1 == 1 && (v4 & 0xFE) != 6)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);

    PropertyList.subscript.setter();
    if (v3)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationDestinationKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static NavigationDestinationKey.defaultValue;

  return result;
}

void type metadata accessor for Attribute<NavigationState.ListKey?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NavigationState.ListKey?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for NavigationState.StackContent.Key?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *specialized _UIHostingView.init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v210 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v181 = type metadata accessor for UIHostingViewBase.Options();
  v186 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v176 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v173 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v183 = *(v8 - 8);
  v184 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v185 = &v173 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v180 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v192.receiver = v21;
  v192.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v192, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v191.receiver = v26;
  v191.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v191, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v173 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v175 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v174 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v177 = ObjectType;
  v46(&v195, v45);
  v47 = v195;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v193) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v182 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v187 = *(v182 + 88);

  v48 = v185;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v176;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v178;
  specialized OptionSet<>.insert(_:)(v178, v50);
  v54 = (v186 + 1);
  v53 = v186[1];
  v55 = v181;
  v53(v50, v181);
  v186 = v54;
  v53(v52, v55);
  v56 = v51(&v195, 0);
  v57 = v48;
  if (((*(v177 + 1408))(v56) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v58 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v52, v50);
    v59 = v181;
    v53(v50, v181);
    v53(v52, v59);
    v58(&v195, 0);
    v57 = v185;
  }

  (*(v183 + 16))(v179, v57, v184);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v187;

  *&v195 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v195 + 1) = v63;
  LOWORD(v196) = v64 & 0x101;
  BYTE2(v196) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v195 = 0;
  WORD4(v195) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v193 = 0uLL;
    *v194 = v66;
    memset(&v194[8], 0, 64);
    *&v194[72] = v173;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v198 = *&v194[32];
    v199 = *&v194[48];
    v200 = *&v194[64];
    v201 = *&v194[80];
    v195 = v193;
    v196 = *v194;
    v197 = *&v194[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v195);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.EnableVFDFeature, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v193);
  aBlock = v193;
  v207 = *v194;
  v208 = *&v194[16];
  v209 = *&v194[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v195 = aBlock;
  v196 = v207;
  v197 = v208;
  *&v198 = v209;
  outlined destroy of AccessibilityViewGraph(&v195);
  v68 = *(v2 + v175);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v207 + 1) = &type metadata for HoverEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v207 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v207 + 1) = &type metadata for KeyEventDispatcher;
  *&v208 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v75 = UIKitEventBindingBridge.init(eventBindingManager:)(v74);
  v76 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v75;
  v77 = MEMORY[0x1E6981910];
  v78 = MEMORY[0x1E6981900];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  v190.receiver = v2;
  v190.super_class = v79;
  v80 = v76;
  v81 = objc_msgSendSuper2(&v190, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, v77, v78, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<AnyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v82 = v81;
  ViewGraph.append<A>(feature:)();
  v83 = outlined destroy of _UIHostingView<AnyView>.HostViewGraph(&aBlock);
  (*((*v76 & *v82) + 0x5C0))(v83);
  v84 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v85 = aBlock;
  v186 = v81;
  if (aBlock != 1)
  {
    v86 = *(&aBlock + 1);
    v87 = v207;
    v88 = v208;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v89);
    }

    *&aBlock = v85;
    *(&aBlock + 1) = v86;
    v207 = v87;
    LOBYTE(v208) = v88 & 1;
    RepresentableContextValues.environment.getter();
    v204 = v205;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v85, v86, v87, *(&v87 + 1), v88);
    v61 = v187;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v90 = v82;

  v91 = *(v90 + *((*v80 & *v90) + 0x150));
  v92 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  *(v91 + 40) = v92;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v181 = *((*v80 & *v90) + 0x188);
  *(*(v90 + v181) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v93 = *(v90 + *((*v80 & *v90) + 0x100));
  *(v93 + *((*v93 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = *(v90 + *((*v80 & *v90) + 0x108));
  *(v94 + *((*v94 & *v80) + 0x60) + 8) = v92;
  swift_unknownObjectWeakAssign();

  v95 = GraphHost.addPreference<A>(_:)();
  v97 = specialized _UIHostingView.sheetBridge.getter(v95, v96);
  if (v97)
  {
    *&v97[direct field offset for SheetBridge.host + 8] = v92;
    v98 = v97;
    swift_unknownObjectWeakAssign();
  }

  v99 = *v80 & *v90;
  v100 = *(v90 + *(v99 + 0x110));
  if (v100)
  {
    v101 = *((*v100 & *v80) + 0x210);
    v102 = v100;
    v101(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v100);
    v99 = *v80 & *v90;
  }

  v103 = *(v90 + *(v99 + 280));
  v104 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  *(v103 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v103 + 40) = v104;
  swift_unknownObjectWeakAssign();

  v105 = FocusBridge.host.getter();
  if (v105)
  {
    v107 = v105;
    v108 = v106;
    v109 = swift_getObjectType();
    (*(*(*(v108 + 8) + 8) + 8))(v109);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v110 = *((*v80 & *v90) + 0x120);
  *(*(v90 + v110) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v111 = *(v90 + v110);
  v112 = &v111[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v113 = *(v112 + 1);
  v114 = swift_getObjectType();
  v115 = *(*(v113 + 16) + 8);
  v116 = v111;
  LOBYTE(v114) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v114, v115);
  swift_unknownObjectRelease();
  if (v114)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v90 + *((*v80 & *v90) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  v117 = v90;
  GraphHost.addPreference<A>(_:)();
  *(*(v117 + *((*v80 & *v117) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v117 + *((*v80 & *v117) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v118 = *((*v80 & *v117) + 0x168);
  *(*(v117 + v118) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v92;
  swift_unknownObjectWeakAssign();

  v119 = *(v117 + v118);
  v120 = &v119[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v121 = *(v120 + 1);
  v122 = swift_getObjectType();
  v123 = *(v121 + 8);
  v124 = *(v123 + 8);
  v125 = v119;
  v124(v122, v123);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v126 = [v117 traitCollection];

  v127 = [v126 userInterfaceIdiom];
  v128 = MEMORY[0x1E69E7D40];
  if (v127 == 1 || (v129 = [v117 traitCollection], v130 = objc_msgSend(v129, sel_userInterfaceIdiom), v129, v130 == 6))
  {
    v131 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v131[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v92;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v132 = *((*v128 & *v117) + 0x178);
    v133 = *(v117 + v132);
    *(v117 + v132) = v131;
  }

  v134 = *(v90 + v181);
  v135 = &v134[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v136 = *(v135 + 1);
  v137 = v134;

  v138 = swift_getObjectType();
  v139 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v138, *(*(v136 + 16) + 8));
  swift_unknownObjectRelease();
  v140 = v187;
  if (v139)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v141 = *((*v128 & *v117) + 0x1A0);
  *(*(v117 + v141) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v92;
  v142 = swift_unknownObjectWeakAssign();
  v143 = *(v117 + v141);
  MEMORY[0x1EEE9AC00](v142);
  *(&v173 - 2) = v143;
  *(&v173 - 1) = v140;
  v144 = v117;
  v145 = v143;
  static Update.ensure<A>(_:)();

  v146 = *((*v128 & *v144) + 0x78);
  v147 = *(v144 + v146);
  v148 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v147 + 24) = v148;
  swift_unknownObjectWeakAssign();

  v149 = *(v144 + v146);
  v150 = *((*v128 & *v144) + 0xE0);
  swift_beginAccess();
  *(v149 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v151 = *(v144 + v150);
  v152 = *(v151 + 32);

  if (v152)
  {
    [v144 addGestureRecognizer_];
  }

  [v144 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v153 = [v144 window];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 rootViewController];

      if (v155)
      {
        v156 = [v155 viewIfLoaded];

        if (v156)
        {

          if (v156 == v144)
          {
            v202 = 0;
            v189[0] = 0;
            v157 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v188 = v157;
            v158 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v158);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v159 = static OS_dispatch_queue.main.getter();
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v208 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v160;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_113;
            v161 = _Block_copy(&aBlock);

            v162 = String.utf8CString.getter();

            notify_register_dispatch((v162 + 32), &v202, v159, v161);

            _Block_release(v161);

            v163 = static OS_dispatch_queue.main.getter();
            v164 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v165 = swift_allocObject();
            *(v165 + 16) = v157;
            *(v165 + 24) = v164;
            *&v208 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v208 + 1) = v165;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v207 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v207 + 1) = &block_descriptor_120;
            v166 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v189, v163, v166);
            _Block_release(v166);

            v167 = v144 + *((*v128 & *v144) + 0xE8);
            *v167 = v202 | (v189[0] << 32);
            v167[8] = 0;
          }
        }
      }
    }
  }

  v168 = [objc_opt_self() defaultCenter];
  [v168 addObserver:v144 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v169 = one-time initialization token for didUpdateListLayout;
  v170 = v144;
  if (v169 != -1)
  {
    swift_once();
  }

  [v168 addObserver:v170 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v171 = v185;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v203 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v202, v170);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v183 + 8))(v171, v184);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v183 + 8))(v171, v184);
  }

  static Update.end()();
  return v170;
}

{
  v2 = v1;
  v212 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v189 = type metadata accessor for UIHostingViewBase.Options();
  v181 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v183 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v176 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v185 = *(v8 - 8);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v187 = &v176 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v182 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v194.receiver = v21;
  v194.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v194, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v193.receiver = v26;
  v193.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v193, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v176 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v178 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v177 = a1;
  v45 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v44, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
  MEMORY[0x18D00ABE0](v45);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v46 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v47 = *(ObjectType + 1384);
  v179 = ObjectType;
  v47(&v197, v46);
  v48 = v197;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v195) = v48;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
  v184 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v184 + 88);

  v50 = v187;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v183;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v188;
  specialized OptionSet<>.insert(_:)(v188, v52);
  v55 = *(v181 + 8);
  v56 = v189;
  v55(v52, v189);
  v55(v54, v56);
  v57 = v53(&v197, 0);
  v58 = v50;
  if (((*(v179 + 1408))(v57) & 1) == 0)
  {
    v59 = v183;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v188;
    specialized OptionSet<>.insert(_:)(v188, v59);
    v63 = v189;
    v55(v59, v189);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v197, 0);
  }

  (*(v185 + 16))(v180, v58, v186);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v66;

  *&v197 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v197 + 1) = v69;
  LOWORD(v198) = v70 & 0x101;
  BYTE2(v198) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v197 = 0;
  WORD4(v197) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v195 = 0uLL;
    *v196 = v72;
    memset(&v196[8], 0, 64);
    *&v196[72] = v176;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v200 = *&v196[32];
    v201 = *&v196[48];
    v202 = *&v196[64];
    v203 = *&v196[80];
    v197 = v195;
    v198 = *v196;
    v199 = *&v196[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v197);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v195);
  aBlock = v195;
  v209 = *v196;
  v210 = *&v196[16];
  v211 = *&v196[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v197 = aBlock;
  v198 = v209;
  v199 = v210;
  *&v200 = v211;
  outlined destroy of AccessibilityViewGraph(&v197);
  v74 = *(v2 + v178);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v209 + 1) = &type metadata for HoverEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v209 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v209 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v209 + 1) = &type metadata for KeyEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v67 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v80);
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0);
  v192.receiver = v2;
  v192.super_class = v81;
  v82 = objc_msgSendSuper2(&v192, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v83 = v82;
  ViewGraph.append<A>(feature:)();
  v84 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph);
  (*((*v67 & *v83) + 0x5C0))(v84);
  v85 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v86 = aBlock;
  v188 = v49;
  v189 = v82;
  if (aBlock != 1)
  {
    v87 = *(&aBlock + 1);
    v88 = v209;
    v89 = v210;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v90);
    }

    *&aBlock = v86;
    *(&aBlock + 1) = v87;
    v209 = v88;
    LOBYTE(v210) = v89 & 1;
    RepresentableContextValues.environment.getter();
    v206 = v207;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v86, v87, v88, *(&v88 + 1), v89);
    v49 = v188;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v91 = v83;

  v92 = *(v91 + *((*v67 & *v91) + 0x150));
  v93 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v92 + 40) = v93;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v183 = *((*v67 & *v91) + 0x188);
  *(*&v183[v91] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v94 = *(v91 + *((*v67 & *v91) + 0x100));
  *(v94 + *((*v94 & *v67) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = *(v91 + *((*v67 & *v91) + 0x108));
  *(v95 + *((*v95 & *v67) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  v96 = GraphHost.addPreference<A>(_:)();
  v98 = specialized _UIHostingView.sheetBridge.getter(v96, v97);
  if (v98)
  {
    *&v98[direct field offset for SheetBridge.host + 8] = v93;
    v99 = v98;
    swift_unknownObjectWeakAssign();
  }

  v100 = *v67 & *v91;
  v101 = *(v91 + *(v100 + 0x110));
  if (v101)
  {
    v102 = *((*v101 & *v67) + 0x210);
    v103 = v101;
    v102(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v101);
    v100 = *v67 & *v91;
  }

  v104 = *(v91 + *(v100 + 280));
  v105 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v104 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v104 + 40) = v105;
  swift_unknownObjectWeakAssign();

  v106 = FocusBridge.host.getter();
  if (v106)
  {
    v108 = v106;
    v109 = v107;
    v110 = swift_getObjectType();
    (*(*(*(v109 + 8) + 8) + 8))(v110);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v111 = *((*v67 & *v91) + 0x120);
  *(*(v91 + v111) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v112 = *(v91 + v111);
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(*(v114 + 16) + 8);
  v117 = v112;
  LOBYTE(v115) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v115, v116);
  swift_unknownObjectRelease();
  if (v115)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v91 + *((*v67 & *v91) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v118 = v91;
  GraphHost.addPreference<A>(_:)();
  *(*(v118 + *((*v67 & *v118) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v118 + *((*v67 & *v118) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v119 = *((*v67 & *v118) + 0x168);
  *(*(v118 + v119) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();

  v120 = *(v118 + v119);
  v121 = &v120[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v122 = *(v121 + 1);
  v123 = swift_getObjectType();
  v124 = *(v122 + 8);
  v125 = *(v124 + 8);
  v126 = v120;
  v125(v123, v124);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v127 = [v118 traitCollection];

  v128 = [v127 userInterfaceIdiom];
  v129 = MEMORY[0x1E69E7D40];
  if (v128 == 1 || (v130 = [v118 traitCollection], v131 = objc_msgSend(v130, sel_userInterfaceIdiom), v130, v131 == 6))
  {
    v132 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v132[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v93;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v133 = *((*v129 & *v118) + 0x178);
    v134 = *(v118 + v133);
    *(v118 + v133) = v132;
  }

  v135 = *&v183[v91];
  v136 = &v135[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v138 = v187;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v139 = *(v136 + 1);
  v140 = swift_getObjectType();
  v141 = *(*(v139 + 16) + 8);
  v142 = v135;
  LOBYTE(v140) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v140, v141);
  swift_unknownObjectRelease();
  v143 = v188;
  if (v140)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v144 = *((*v129 & *v118) + 0x1A0);
  *(*(v118 + v144) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v93;
  v145 = swift_unknownObjectWeakAssign();
  v146 = *(v118 + v144);
  MEMORY[0x1EEE9AC00](v145);
  *(&v176 - 2) = v146;
  *(&v176 - 1) = v143;
  v147 = v118;
  v148 = v146;
  static Update.ensure<A>(_:)();

  v149 = *((*v129 & *v147) + 0x78);
  v150 = *(v147 + v149);
  v151 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v150 + 24) = v151;
  swift_unknownObjectWeakAssign();

  v152 = *(v147 + v149);
  v153 = *((*v129 & *v147) + 0xE0);
  swift_beginAccess();
  *(v152 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v154 = *(v147 + v153);
  v155 = *(v154 + 32);

  if (v155)
  {
    [v147 addGestureRecognizer_];
  }

  [v147 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v156 = [v147 window];
    if (v156)
    {
      v157 = v156;
      v158 = [v156 rootViewController];

      if (v158)
      {
        v159 = [v158 viewIfLoaded];

        if (v159)
        {

          if (v159 == v147)
          {
            v204 = 0;
            v191[0] = 0;
            v160 = getpid();
            LODWORD(v183) = v160;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v190 = v160;
            v161 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v161);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v162 = static OS_dispatch_queue.main.getter();
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v210 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v210 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v209 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v209 + 1) = &block_descriptor_312;
            v164 = _Block_copy(&aBlock);

            v165 = String.utf8CString.getter();

            notify_register_dispatch((v165 + 32), &v204, v162, v164);

            _Block_release(v164);

            v166 = static OS_dispatch_queue.main.getter();
            v167 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v168 = swift_allocObject();
            *(v168 + 16) = v183;
            *(v168 + 24) = v167;
            *&v210 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v210 + 1) = v168;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v209 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v209 + 1) = &block_descriptor_319;
            v169 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v191, v166, v169);
            _Block_release(v169);

            v170 = v147 + *((*v129 & *v147) + 0xE8);
            *v170 = v204 | (v191[0] << 32);
            v170[8] = 0;
          }
        }
      }
    }
  }

  v171 = [objc_opt_self() defaultCenter];
  [v171 addObserver:v147 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v172 = one-time initialization token for didUpdateListLayout;
  v173 = v147;
  if (v172 != -1)
  {
    swift_once();
  }

  [v171 addObserver:v173 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v205 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v204, v173);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v185 + 8))(v138, v186);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v185 + 8))(v138, v186);
  }

  v174 = v177;
  static Update.end()();
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v174);
  return v173;
}

{
  v2 = v1;
  v211 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v188 = type metadata accessor for UIHostingViewBase.Options();
  v180 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v182 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v187 = &v175 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v185 = *(v8 - 8);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v175 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v181 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v193.receiver = v21;
  v193.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v193, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v192.receiver = v26;
  v192.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v192, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v175 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v177 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v176 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v178 = ObjectType;
  v46(&v196, v45);
  v47 = v196;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v48 = MEMORY[0x1E697E108];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
  LOBYTE(v194) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, EmptyModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, v48, MEMORY[0x1E697E100]);
  v183 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v183 + 88);

  v50 = v184;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v182;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v187;
  specialized OptionSet<>.insert(_:)(v187, v52);
  v55 = *(v180 + 8);
  v56 = v188;
  v55(v52, v188);
  v55(v54, v56);
  v57 = v53(&v196, 0);
  v58 = v50;
  if (((*(v178 + 1408))(v57) & 1) == 0)
  {
    v59 = v182;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v187;
    specialized OptionSet<>.insert(_:)(v187, v59);
    v63 = v188;
    v55(v59, v188);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v196, 0);
  }

  (*(v185 + 16))(v179, v58, v186);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v196 = specialized FocusViewGraph.init(graph:)(v66);
  *(&v196 + 1) = v67;
  LOWORD(v197) = v68 & 0x101;
  BYTE2(v197) = v69 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v196 = 0;
  WORD4(v196) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v70 = *MEMORY[0x1E698D3F8];
    v194 = 0uLL;
    *v195 = v70;
    memset(&v195[8], 0, 64);
    *&v195[72] = v175;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v199 = *&v195[32];
    v200 = *&v195[48];
    v201 = *&v195[64];
    v202 = *&v195[80];
    v196 = v194;
    v197 = *v195;
    v198 = *&v195[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v196);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v71, &v194);
  aBlock = v194;
  v208 = *v195;
  v209 = *&v195[16];
  v210 = *&v195[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v196 = aBlock;
  v197 = v208;
  v198 = v209;
  *&v199 = v210;
  outlined destroy of AccessibilityViewGraph(&v196);
  v72 = *(v2 + v177);
  v73 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v74 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v72;
  DWORD2(aBlock) = v74;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v75 = MEMORY[0x1E69E7CC0];
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v208 + 1) = &type metadata for HoverEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v76;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v208 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v208 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v75);
  *(&v208 + 1) = &type metadata for KeyEventDispatcher;
  *&v209 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v77;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v79 = UIKitEventBindingBridge.init(eventBindingManager:)(v78);
  v80 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v79;
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  v191.receiver = v2;
  v191.super_class = v81;
  v82 = v80;
  v83 = objc_msgSendSuper2(&v191, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v84 = v83;
  ViewGraph.append<A>(feature:)();
  v85 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph);
  (*((*v80 & *v84) + 0x5C0))(v85);
  v86 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v87 = aBlock;
  v187 = v49;
  v188 = v83;
  if (aBlock != 1)
  {
    v88 = *(&aBlock + 1);
    v89 = v208;
    v90 = v209;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v91);
    }

    *&aBlock = v87;
    *(&aBlock + 1) = v88;
    v208 = v89;
    LOBYTE(v209) = v90 & 1;
    RepresentableContextValues.environment.getter();
    v205 = v206;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v87, v88, v89, *(&v89 + 1), v90);
    v49 = v187;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v92 = v84;

  v93 = *(v92 + *((*v82 & *v92) + 0x150));
  v94 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v93 + 40) = v94;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v182 = *((*v82 & *v92) + 0x188);
  *(*&v182[v92] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v95 = *(v92 + *((*v82 & *v92) + 0x100));
  *(v95 + *((*v95 & *v82) + 0x60) + 8) = v94;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v96 = *(v92 + *((*v82 & *v92) + 0x108));
  *(v96 + *((*v96 & *v82) + 0x60) + 8) = v94;
  swift_unknownObjectWeakAssign();

  v97 = GraphHost.addPreference<A>(_:)();
  v99 = specialized _UIHostingView.sheetBridge.getter(v97, v98);
  if (v99)
  {
    *&v99[direct field offset for SheetBridge.host + 8] = v94;
    v100 = v99;
    swift_unknownObjectWeakAssign();
  }

  v101 = *v82 & *v92;
  v102 = *(v92 + *(v101 + 0x110));
  if (v102)
  {
    v103 = *((*v102 & *v82) + 0x210);
    v104 = v102;
    v103(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v102);
    v101 = *v82 & *v92;
  }

  v105 = *(v92 + *(v101 + 280));
  v106 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v105 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v105 + 40) = v106;
  swift_unknownObjectWeakAssign();

  v107 = FocusBridge.host.getter();
  if (v107)
  {
    v109 = v107;
    v110 = v108;
    v111 = swift_getObjectType();
    (*(*(*(v110 + 8) + 8) + 8))(v111);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v112 = *((*v82 & *v92) + 0x120);
  *(*(v92 + v112) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v113 = *(v92 + v112);
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(*(v115 + 16) + 8);
  v118 = v113;
  LOBYTE(v116) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v116, v117);
  swift_unknownObjectRelease();
  if (v116)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v92 + *((*v82 & *v92) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  v119 = v92;
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v82 & *v119) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v119 + *((*v82 & *v119) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v120 = *((*v82 & *v119) + 0x168);
  *(*(v119 + v120) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v94;
  swift_unknownObjectWeakAssign();

  v121 = *(v119 + v120);
  v122 = &v121[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v123 = *(v122 + 1);
  v124 = swift_getObjectType();
  v125 = *(v123 + 8);
  v126 = *(v125 + 8);
  v127 = v121;
  v126(v124, v125);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v128 = [v119 traitCollection];

  v129 = [v128 userInterfaceIdiom];
  v130 = MEMORY[0x1E69E7D40];
  if (v129 == 1 || (v131 = [v119 traitCollection], v132 = objc_msgSend(v131, sel_userInterfaceIdiom), v131, v132 == 6))
  {
    v133 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v133[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v94;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v134 = *((*v130 & *v119) + 0x178);
    v135 = *(v119 + v134);
    *(v119 + v134) = v133;
  }

  v136 = *&v182[v92];
  v137 = &v136[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v138 = *(v137 + 1);
  v139 = v136;

  v140 = swift_getObjectType();
  v141 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v140, *(*(v138 + 16) + 8));
  swift_unknownObjectRelease();
  v142 = v187;
  if (v141)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v143 = *((*v130 & *v119) + 0x1A0);
  *(*(v119 + v143) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v94;
  v144 = swift_unknownObjectWeakAssign();
  v145 = *(v119 + v143);
  MEMORY[0x1EEE9AC00](v144);
  *(&v175 - 2) = v145;
  *(&v175 - 1) = v142;
  v146 = v119;
  v147 = v145;
  static Update.ensure<A>(_:)();

  v148 = *((*v130 & *v146) + 0x78);
  v149 = *(v146 + v148);
  v150 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v149 + 24) = v150;
  swift_unknownObjectWeakAssign();

  v151 = *(v146 + v148);
  v152 = *((*v130 & *v146) + 0xE0);
  swift_beginAccess();
  *(v151 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v153 = *(v146 + v152);
  v154 = *(v153 + 32);

  if (v154)
  {
    [v146 addGestureRecognizer_];
  }

  [v146 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v155 = [v146 window];
    if (v155)
    {
      v156 = v155;
      v157 = [v155 rootViewController];

      if (v157)
      {
        v158 = [v157 viewIfLoaded];

        if (v158)
        {

          if (v158 == v146)
          {
            v203 = 0;
            v190[0] = 0;
            v159 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v189 = v159;
            v160 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v160);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v209 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v209 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v208 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v208 + 1) = &block_descriptor_8;
            v163 = _Block_copy(&aBlock);

            v164 = String.utf8CString.getter();

            notify_register_dispatch((v164 + 32), &v203, v161, v163);

            _Block_release(v163);

            v165 = static OS_dispatch_queue.main.getter();
            v166 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v167 = swift_allocObject();
            *(v167 + 16) = v159;
            *(v167 + 24) = v166;
            *&v209 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v209 + 1) = v167;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v208 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v208 + 1) = &block_descriptor_8;
            v168 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v190, v165, v168);
            _Block_release(v168);

            v169 = v146 + *((*v130 & *v146) + 0xE8);
            *v169 = v203 | (v190[0] << 32);
            v169[8] = 0;
          }
        }
      }
    }
  }

  v170 = [objc_opt_self() defaultCenter];
  [v170 addObserver:v146 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v171 = one-time initialization token for didUpdateListLayout;
  v172 = v146;
  if (v171 != -1)
  {
    swift_once();
  }

  [v170 addObserver:v172 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v173 = v184;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v204 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v203, v172);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v185 + 8))(v173, v186);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v185 + 8))(v173, v186);
  }

  static Update.end()();
  return v172;
}

{
  v2 = v1;
  v182 = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v174 = *(v3 - 8);
  v175 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v178 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v177 = &v171 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v7 - 8);
  v181 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v171 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v12 = *((*v11 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v176 = v12;
  *(v1 + v12) = v13;
  *(v1 + *((*v11 & *v1) + 0x80)) = 0;
  *(v1 + *((*v11 & *v1) + 0x88)) = 0;
  *(v1 + *((*v11 & *v1) + 0x90)) = 1;
  *(v1 + *((*v11 & *v1) + 0x98)) = 0;
  *(v1 + *((*v11 & *v1) + 0xA0)) = 0;
  v14 = v2 + *((*v11 & *v2) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v2 + *((*v11 & *v2) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v1 + *((*v11 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0xD8)) = 0;
  v16 = v2 + *((*v11 & *v2) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v1 + *((*v11 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xF8)) = 2;
  v17 = *((*v11 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v189.receiver = v20;
  v189.super_class = v19;
  *(v1 + v17) = objc_msgSendSuper2(&v189, sel_init);
  v22 = *((*v11 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v188.receiver = v25;
  v188.super_class = v24;
  *(v2 + v22) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v11 & *v2) + 0x110)) = 1;
  v27 = *((*v11 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v2 + v27) = v28;
  v31 = *((*v11 & *v2) + 0x120);
  *(v2 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x128)) = 0;
  v32 = *((*v11 & *v2) + 0x130);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v2) + 0x138);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x140)) = 0;
  *(v2 + *((*v11 & *v2) + 0x148)) = 0;
  v34 = *((*v11 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v34) = v35;
  swift_weakInit();
  *(v2 + *((*v11 & *v2) + 0x160)) = 0;
  v36 = *((*v11 & *v2) + 0x168);
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v2) + 0x170);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x178)) = 0;
  *(v2 + *((*v11 & *v2) + 0x180)) = 0;
  v38 = *((*v11 & *v2) + 0x188);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v172 = v39;
  *(v2 + v39) = v40;
  *(v2 + *((*v11 & *v2) + 0x198)) = 0;
  v41 = *((*v11 & *v2) + 0x1A0);
  *(v2 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1C8)) = 0;
  v42 = v2 + *((*v11 & *v2) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x200)) = 0;
  v43 = outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v182, v2 + *((*v11 & *v2) + 0x60), &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v192, v44);
  v45 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v46 = MEMORY[0x1E6981D28];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  LOBYTE(v190) = v45;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, v46);
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v184 = *(v47 + 88);

  v48 = v179;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v178;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v177;
  specialized OptionSet<>.insert(_:)(v177, v50);
  v53 = *(v174 + 8);
  v54 = v50;
  v55 = v175;
  v53(v54, v175);
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = v48;
  if (((*(ObjectType + 1408))(v56) & 1) == 0)
  {
    v58 = v178;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    ObjectType = UIHostingViewBase.Configuration.options.modify();
    v59 = v177;
    specialized OptionSet<>.insert(_:)(v177, v58);
    v53(v58, v55);
    v53(v59, v55);
    (ObjectType)(&v192, 0);
  }

  (*(v180 + 16))(v173, v57, v181);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v177 = v47;
  v61 = UIHostingViewBase.init(viewGraph:configuration:)();
  v62 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v61;
  v63 = v184;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v2 + v172);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v62 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0);
  v187.receiver = v2;
  v187.super_class = v77;
  v78 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph);
  (*((*v62 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  ObjectType = v78;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v204;
    v85 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v204 = v84;
    LOBYTE(v205) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v63 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *(v87 + *((*v62 & *v87) + 0x150));
  v89 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v62 & *v87) + 0x188);
  *(*&v178[v87] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *(v87 + *((*v62 & *v87) + 0x100));
  *(v90 + *((*v90 & *v62) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *(v87 + *((*v62 & *v87) + 0x108));
  *(v91 + *((*v91 & *v62) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v62 & *v87;
  v97 = *(v87 + *(v96 + 0x110));
  if (v97)
  {
    v98 = *((*v97 & *v62) + 0x210);
    v99 = v97;
    v98(v63);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v62 & *v87;
  }

  v100 = *(v87 + *(v96 + 280));
  v101 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v62 & *v87) + 0x120);
  *(*(v87 + v107) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *(v87 + v107);
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v87 + *((*v62 & *v87) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v62 & *v114) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v62 & *v114) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v62 & *v114) + 0x168);
  *(*(v114 + v115) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *(v114 + v115);
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  v125 = MEMORY[0x1E69E7D40];
  if (v124 == 1 || (v126 = [v114 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*v125 & *v114) + 0x178);
    v130 = *(v114 + v129);
    *(v114 + v129) = v128;
  }

  v131 = *&v178[v87];
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v132 + 1);
  v134 = swift_getObjectType();
  v135 = *(*(v133 + 16) + 8);
  v136 = v131;
  LOBYTE(v134) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v134, v135);
  swift_unknownObjectRelease();
  v137 = v184;
  if (v134)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = *((*v125 & *v114) + 0x1A0);
  *(*(v114 + v138) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v139 = swift_unknownObjectWeakAssign();
  v140 = *(v114 + v138);
  MEMORY[0x1EEE9AC00](v139);
  *(&v171 - 2) = v140;
  *(&v171 - 1) = v137;
  v141 = v114;
  v142 = v140;
  static Update.ensure<A>(_:)();

  v143 = *((*v125 & *v141) + 0x78);
  v144 = *(v141 + v143);
  v145 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *(v141 + v143);
  v147 = *((*v125 & *v141) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *(v141 + v147);
  v149 = *(v148 + 32);

  if (v149)
  {
    [v141 addGestureRecognizer_];
  }

  [v141 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v141 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v141)
          {
            v199 = 0;
            v186[0] = 0;
            v154 = getpid();
            LODWORD(v178) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_255;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();

            notify_register_dispatch((v159 + 32), &v199, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v178;
            *(v162 + 24) = v161;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_262;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v160, v163);
            _Block_release(v163);

            v164 = v141 + *((*v125 & *v141) + 0xE8);
            *v164 = v199 | (v186[0] << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v141 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v141;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v168 = v179;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v168, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v168, v181);
  }

  v169 = v182;
  static Update.end()();
  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v169, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0, MEMORY[0x1E6981D28]);
  return v167;
}

{
  v2 = v1;
  v182 = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v174 = *(v3 - 8);
  v175 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v178 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v177 = &v171 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v7 - 8);
  v181 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v171 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v12 = *((*v11 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v176 = v12;
  *(v1 + v12) = v13;
  *(v1 + *((*v11 & *v1) + 0x80)) = 0;
  *(v1 + *((*v11 & *v1) + 0x88)) = 0;
  *(v1 + *((*v11 & *v1) + 0x90)) = 1;
  *(v1 + *((*v11 & *v1) + 0x98)) = 0;
  *(v1 + *((*v11 & *v1) + 0xA0)) = 0;
  v14 = v2 + *((*v11 & *v2) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v2 + *((*v11 & *v2) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v1 + *((*v11 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0xD8)) = 0;
  v16 = v2 + *((*v11 & *v2) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v1 + *((*v11 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v11 & *v1) + 0xF8)) = 2;
  v17 = *((*v11 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v189.receiver = v20;
  v189.super_class = v19;
  *(v1 + v17) = objc_msgSendSuper2(&v189, sel_init);
  v22 = *((*v11 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v188.receiver = v25;
  v188.super_class = v24;
  *(v2 + v22) = objc_msgSendSuper2(&v188, sel_init);
  *(v2 + *((*v11 & *v2) + 0x110)) = 1;
  v27 = *((*v11 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v2 + v27) = v28;
  v31 = *((*v11 & *v2) + 0x120);
  *(v2 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x128)) = 0;
  v32 = *((*v11 & *v2) + 0x130);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v2) + 0x138);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x140)) = 0;
  *(v2 + *((*v11 & *v2) + 0x148)) = 0;
  v34 = *((*v11 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v34) = v35;
  swift_weakInit();
  *(v2 + *((*v11 & *v2) + 0x160)) = 0;
  v36 = *((*v11 & *v2) + 0x168);
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v2) + 0x170);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x178)) = 0;
  *(v2 + *((*v11 & *v2) + 0x180)) = 0;
  v38 = *((*v11 & *v2) + 0x188);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v172 = v39;
  *(v2 + v39) = v40;
  *(v2 + *((*v11 & *v2) + 0x198)) = 0;
  v41 = *((*v11 & *v2) + 0x1A0);
  *(v2 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v11 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1C8)) = 0;
  v42 = v2 + *((*v11 & *v2) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v11 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v11 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v11 & *v2) + 0x200)) = 0;
  v43 = outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v182, v2 + *((*v11 & *v2) + 0x60), &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  (*(ObjectType + 1384))(&v192, v44);
  v45 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v46 = MEMORY[0x1E6981D20];
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  LOBYTE(v190) = v45;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, v46);
  v47 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v184 = *(v47 + 88);

  v48 = v179;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v178;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v177;
  specialized OptionSet<>.insert(_:)(v177, v50);
  v53 = *(v174 + 8);
  v54 = v50;
  v55 = v175;
  v53(v54, v175);
  v53(v52, v55);
  v56 = v51(&v192, 0);
  v57 = v48;
  if (((*(ObjectType + 1408))(v56) & 1) == 0)
  {
    v58 = v178;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    ObjectType = UIHostingViewBase.Configuration.options.modify();
    v59 = v177;
    specialized OptionSet<>.insert(_:)(v177, v58);
    v53(v58, v55);
    v53(v59, v55);
    (ObjectType)(&v192, 0);
  }

  (*(v180 + 16))(v173, v57, v181);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v177 = v47;
  v61 = UIHostingViewBase.init(viewGraph:configuration:)();
  v62 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v61;
  v63 = v184;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v2 + v172);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v62 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v76);
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
  v187.receiver = v2;
  v187.super_class = v77;
  v78 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v79 = v78;
  ViewGraph.append<A>(feature:)();
  v80 = sub_18C0B1D84(&aBlock);
  (*((*v62 & *v79) + 0x5C0))(v80);
  v81 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v82 = aBlock;
  ObjectType = v78;
  if (aBlock != 1)
  {
    v83 = *(&aBlock + 1);
    v84 = v204;
    v85 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v86);
    }

    *&aBlock = v82;
    *(&aBlock + 1) = v83;
    v204 = v84;
    LOBYTE(v205) = v85 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v82, v83, v84, *(&v84 + 1), v85);
    v63 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v87 = v79;

  v88 = *(v87 + *((*v62 & *v87) + 0x150));
  v89 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
  *(v88 + 40) = v89;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v62 & *v87) + 0x188);
  *(*&v178[v87] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v90 = *(v87 + *((*v62 & *v87) + 0x100));
  *(v90 + *((*v90 & *v62) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = *(v87 + *((*v62 & *v87) + 0x108));
  *(v91 + *((*v91 & *v62) + 0x60) + 8) = v89;
  swift_unknownObjectWeakAssign();

  v92 = GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter(v92, v93);
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v89;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v62 & *v87;
  v97 = *(v87 + *(v96 + 0x110));
  if (v97)
  {
    v98 = *((*v97 & *v62) + 0x210);
    v99 = v97;
    v98(v63);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v62 & *v87;
  }

  v100 = *(v87 + *(v96 + 280));
  v101 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v62 & *v87) + 0x120);
  *(*(v87 + v107) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v108 = *(v87 + v107);
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v87 + *((*v62 & *v87) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  v114 = v87;
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v62 & *v114) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v62 & *v114) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v62 & *v114) + 0x168);
  *(*(v114 + v115) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v89;
  swift_unknownObjectWeakAssign();

  v116 = *(v114 + v115);
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  v125 = MEMORY[0x1E69E7D40];
  if (v124 == 1 || (v126 = [v114 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v89;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*v125 & *v114) + 0x178);
    v130 = *(v114 + v129);
    *(v114 + v129) = v128;
  }

  v131 = *&v178[v87];
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v132 + 1);
  v134 = swift_getObjectType();
  v135 = *(*(v133 + 16) + 8);
  v136 = v131;
  LOBYTE(v134) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v134, v135);
  swift_unknownObjectRelease();
  v137 = v184;
  if (v134)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = *((*v125 & *v114) + 0x1A0);
  *(*(v114 + v138) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v89;
  v139 = swift_unknownObjectWeakAssign();
  v140 = *(v114 + v138);
  MEMORY[0x1EEE9AC00](v139);
  *(&v171 - 2) = v140;
  *(&v171 - 1) = v137;
  v141 = v114;
  v142 = v140;
  static Update.ensure<A>(_:)();

  v143 = *((*v125 & *v141) + 0x78);
  v144 = *(v141 + v143);
  v145 = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *(v141 + v143);
  v147 = *((*v125 & *v141) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *(v141 + v147);
  v149 = *(v148 + 32);

  if (v149)
  {
    [v141 addGestureRecognizer_];
  }

  [v141 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v141 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v141)
          {
            v199 = 0;
            v186[0] = 0;
            v154 = getpid();
            LODWORD(v178) = v154;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_240;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();

            notify_register_dispatch((v159 + 32), &v199, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v178;
            *(v162 + 24) = v161;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_247;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v160, v163);
            _Block_release(v163);

            v164 = v141 + *((*v125 & *v141) + 0xE8);
            *v164 = v199 | (v186[0] << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v141 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v141;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v168 = v179;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v168, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v168, v181);
  }

  v169 = v182;
  static Update.end()();
  outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v169, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0, MEMORY[0x1E6981D20]);
  return v167;
}

{
  v2 = v1;
  v212 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v189 = type metadata accessor for UIHostingViewBase.Options();
  v181 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v183 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v176 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v185 = *(v8 - 8);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v187 = &v176 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v182 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v194.receiver = v21;
  v194.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v194, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v193.receiver = v26;
  v193.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v193, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v176 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v178 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  v44 = v2 + *((*v12 & *v2) + 0x60);
  v177 = a1;
  v45 = outlined init with copy of ModifiedContent<TableRowView, CollectionViewCellModifier>(a1, v44, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
  MEMORY[0x18D00ABE0](v45);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v46 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v47 = *(ObjectType + 1384);
  v179 = ObjectType;
  v47(&v197, v46);
  v48 = v197;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
  LOBYTE(v195) = v48;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
  v184 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v49 = *(v184 + 88);

  v50 = v187;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v183;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v188;
  specialized OptionSet<>.insert(_:)(v188, v52);
  v55 = *(v181 + 8);
  v56 = v189;
  v55(v52, v189);
  v55(v54, v56);
  v57 = v53(&v197, 0);
  v58 = v50;
  if (((*(v179 + 1408))(v57) & 1) == 0)
  {
    v59 = v183;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    v61 = v58;
    v62 = v188;
    specialized OptionSet<>.insert(_:)(v188, v59);
    v63 = v189;
    v55(v59, v189);
    v64 = v62;
    v58 = v61;
    v55(v64, v63);
    v60(&v197, 0);
  }

  (*(v185 + 16))(v180, v58, v186);
  v65 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v66 = UIHostingViewBase.init(viewGraph:configuration:)();
  v67 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = v66;

  *&v197 = specialized FocusViewGraph.init(graph:)(v68);
  *(&v197 + 1) = v69;
  LOWORD(v198) = v70 & 0x101;
  BYTE2(v198) = v71 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v197 = 0;
  WORD4(v197) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v72 = *MEMORY[0x1E698D3F8];
    v195 = 0uLL;
    *v196 = v72;
    memset(&v196[8], 0, 64);
    *&v196[72] = v176;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v200 = *&v196[32];
    v201 = *&v196[48];
    v202 = *&v196[64];
    v203 = *&v196[80];
    v197 = v195;
    v198 = *v196;
    v199 = *&v196[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v197);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature, protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v73, &v195);
  aBlock = v195;
  v209 = *v196;
  v210 = *&v196[16];
  v211 = *&v196[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v197 = aBlock;
  v198 = v209;
  v199 = v210;
  *&v200 = v211;
  outlined destroy of AccessibilityViewGraph(&v197);
  v74 = *(v2 + v178);
  v75 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v76 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v74;
  DWORD2(aBlock) = v76;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v77 = MEMORY[0x1E69E7CC0];
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v209 + 1) = &type metadata for HoverEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v78;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v209 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v209 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v77);
  *(&v209 + 1) = &type metadata for KeyEventDispatcher;
  *&v210 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v79;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  *(v2 + *((*v67 & *v2) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)(v80);
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
  v192.receiver = v2;
  v192.super_class = v81;
  v82 = objc_msgSendSuper2(&v192, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph, protocol conformance descriptor for _UIHostingView<A>.HostViewGraph);
  v83 = v82;
  ViewGraph.append<A>(feature:)();
  v84 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph);
  (*((*v67 & *v83) + 0x5C0))(v84);
  v85 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v86 = aBlock;
  v188 = v49;
  v189 = v82;
  if (aBlock != 1)
  {
    v87 = *(&aBlock + 1);
    v88 = v209;
    v89 = v210;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v90);
    }

    *&aBlock = v86;
    *(&aBlock + 1) = v87;
    v209 = v88;
    LOBYTE(v210) = v89 & 1;
    RepresentableContextValues.environment.getter();
    v206 = v207;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v86, v87, v88, *(&v88 + 1), v89);
    v49 = v188;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v91 = v83;

  v92 = *(v91 + *((*v67 & *v91) + 0x150));
  v93 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v92 + 40) = v93;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v183 = *((*v67 & *v91) + 0x188);
  *(*&v183[v91] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v94 = *(v91 + *((*v67 & *v91) + 0x100));
  *(v94 + *((*v94 & *v67) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v95 = *(v91 + *((*v67 & *v91) + 0x108));
  *(v95 + *((*v95 & *v67) + 0x60) + 8) = v93;
  swift_unknownObjectWeakAssign();

  v96 = GraphHost.addPreference<A>(_:)();
  v98 = specialized _UIHostingView.sheetBridge.getter(v96, v97);
  if (v98)
  {
    *&v98[direct field offset for SheetBridge.host + 8] = v93;
    v99 = v98;
    swift_unknownObjectWeakAssign();
  }

  v100 = *v67 & *v91;
  v101 = *(v91 + *(v100 + 0x110));
  if (v101)
  {
    v102 = *((*v101 & *v67) + 0x210);
    v103 = v101;
    v102(v49);
    outlined consume of SheetBridge<SheetPreference.Key>??(v101);
    v100 = *v67 & *v91;
  }

  v104 = *(v91 + *(v100 + 280));
  v105 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  *(v104 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v104 + 40) = v105;
  swift_unknownObjectWeakAssign();

  v106 = FocusBridge.host.getter();
  if (v106)
  {
    v108 = v106;
    v109 = v107;
    v110 = swift_getObjectType();
    (*(*(*(v109 + 8) + 8) + 8))(v110);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v111 = *((*v67 & *v91) + 0x120);
  *(*(v91 + v111) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v112 = *(v91 + v111);
  v113 = &v112[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v114 = *(v113 + 1);
  v115 = swift_getObjectType();
  v116 = *(*(v114 + 16) + 8);
  v117 = v112;
  LOBYTE(v115) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v115, v116);
  swift_unknownObjectRelease();
  if (v115)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v91 + *((*v67 & *v91) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  v118 = v91;
  GraphHost.addPreference<A>(_:)();
  *(*(v118 + *((*v67 & *v118) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v118 + *((*v67 & *v118) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v119 = *((*v67 & *v118) + 0x168);
  *(*(v118 + v119) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v93;
  swift_unknownObjectWeakAssign();

  v120 = *(v118 + v119);
  v121 = &v120[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v122 = *(v121 + 1);
  v123 = swift_getObjectType();
  v124 = *(v122 + 8);
  v125 = *(v124 + 8);
  v126 = v120;
  v125(v123, v124);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v127 = [v118 traitCollection];

  v128 = [v127 userInterfaceIdiom];
  v129 = MEMORY[0x1E69E7D40];
  if (v128 == 1 || (v130 = [v118 traitCollection], v131 = objc_msgSend(v130, sel_userInterfaceIdiom), v130, v131 == 6))
  {
    v132 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v132[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v93;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v133 = *((*v129 & *v118) + 0x178);
    v134 = *(v118 + v133);
    *(v118 + v133) = v132;
  }

  v135 = *&v183[v91];
  v136 = &v135[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v138 = v187;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v139 = *(v136 + 1);
  v140 = swift_getObjectType();
  v141 = *(*(v139 + 16) + 8);
  v142 = v135;
  LOBYTE(v140) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v140, v141);
  swift_unknownObjectRelease();
  v143 = v188;
  if (v140)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v144 = *((*v129 & *v118) + 0x1A0);
  *(*(v118 + v144) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v93;
  v145 = swift_unknownObjectWeakAssign();
  v146 = *(v118 + v144);
  MEMORY[0x1EEE9AC00](v145);
  *(&v176 - 2) = v146;
  *(&v176 - 1) = v143;
  v147 = v118;
  v148 = v146;
  static Update.ensure<A>(_:)();

  v149 = *((*v129 & *v147) + 0x78);
  v150 = *(v147 + v149);
  v151 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  swift_beginAccess();
  *(v150 + 24) = v151;
  swift_unknownObjectWeakAssign();

  v152 = *(v147 + v149);
  v153 = *((*v129 & *v147) + 0xE0);
  swift_beginAccess();
  *(v152 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v154 = *(v147 + v153);
  v155 = *(v154 + 32);

  if (v155)
  {
    [v147 addGestureRecognizer_];
  }

  [v147 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v156 = [v147 window];
    if (v156)
    {
      v157 = v156;
      v158 = [v156 rootViewController];

      if (v158)
      {
        v159 = [v158 viewIfLoaded];

        if (v159)
        {

          if (v159 == v147)
          {
            v204 = 0;
            v191[0] = 0;
            v160 = getpid();
            LODWORD(v183) = v160;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v190 = v160;
            v161 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v161);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v162 = static OS_dispatch_queue.main.getter();
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v210 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v210 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v209 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v209 + 1) = &block_descriptor_298;
            v164 = _Block_copy(&aBlock);

            v165 = String.utf8CString.getter();

            notify_register_dispatch((v165 + 32), &v204, v162, v164);

            _Block_release(v164);

            v166 = static OS_dispatch_queue.main.getter();
            v167 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v168 = swift_allocObject();
            *(v168 + 16) = v183;
            *(v168 + 24) = v167;
            *&v210 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v210 + 1) = v168;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v209 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v209 + 1) = &block_descriptor_305;
            v169 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v191, v166, v169);
            _Block_release(v169);

            v170 = v147 + *((*v129 & *v147) + 0xE8);
            *v170 = v204 | (v191[0] << 32);
            v170[8] = 0;
          }
        }
      }
    }
  }

  v171 = [objc_opt_self() defaultCenter];
  [v171 addObserver:v147 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v172 = one-time initialization token for didUpdateListLayout;
  v173 = v147;
  if (v172 != -1)
  {
    swift_once();
  }

  [v171 addObserver:v173 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v205 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v204, v173);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v185 + 8))(v138, v186);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v185 + 8))(v138, v186);
  }

  v174 = v177;
  static Update.end()();
  outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(v174);
  return v173;
}

{
  return specialized _UIHostingView.init(rootView:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>.HostViewGraph, specialized _UIHostingView.base.getter, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, &unk_1EFF9D958, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), &block_descriptor_155, qword_1EFF9D9A8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_162, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>, lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>.HostViewGraph, specialized _UIHostingView.base.getter, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance _UIHostingView<A>, &unk_1EFF9D598, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), &block_descriptor_71, qword_1EFF9D5E8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_78, type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, &unk_1EFF9D818, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_127, &unk_1EFF9D868, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_134);
}

{
  v2 = v1;
  v208 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v179 = type metadata accessor for UIHostingViewBase.Options();
  v184 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v174 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v171 - v7;
  v8 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v171 - v11;
  v12 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = 0;
  v13 = *((*v12 & *v1) + 0x78);
  type metadata accessor for EventBindingManager();
  v14 = EventBindingManager.__allocating_init()();
  v178 = v13;
  *(v1 + v13) = v14;
  *(v1 + *((*v12 & *v1) + 0x80)) = 0;
  *(v1 + *((*v12 & *v1) + 0x88)) = 0;
  *(v1 + *((*v12 & *v1) + 0x90)) = 1;
  *(v1 + *((*v12 & *v1) + 0x98)) = 0;
  *(v1 + *((*v12 & *v1) + 0xA0)) = 0;
  v15 = v2 + *((*v12 & *v2) + 0xA8);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = v2 + *((*v12 & *v2) + 0xB0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *(v1 + *((*v12 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v12 & *v1) + 0xD8)) = 0;
  v17 = v2 + *((*v12 & *v2) + 0xE8);
  *v17 = 0;
  v17[8] = 1;
  *(v1 + *((*v12 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v12 & *v1) + 0xF8)) = 2;
  v18 = *((*v12 & *v1) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v20 = v19;
  v21 = objc_allocWithZone(v19);
  *(v21 + *((*v12 & *v21) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v12 & *v21) + 0x68)) = 0;
  *(v21 + *((*v12 & *v21) + 0x70)) = 0;
  *(v21 + *((*v12 & *v21) + 0x78)) = 0;
  EnvironmentValues.init()();
  v22 = v21 + *((*v12 & *v21) + 0x88);
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 7) = 0u;
  *(v22 + 8) = 0u;
  *(v22 + 9) = 0u;
  *(v22 + 10) = 0u;
  *(v22 + 11) = 0u;
  *(v22 + 12) = 0u;
  *(v22 + 13) = 0u;
  *(v22 + 14) = 0u;
  *(v22 + 15) = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 34) = 0;
  *(v21 + *((*v12 & *v21) + 0x90)) = 0;
  *(v21 + *((*v12 & *v21) + 0x98)) = 1;
  v190.receiver = v21;
  v190.super_class = v20;
  *(v1 + v18) = objc_msgSendSuper2(&v190, sel_init);
  v23 = *((*v12 & *v1) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v25 = v24;
  v26 = objc_allocWithZone(v24);
  *(v26 + *((*v12 & *v26) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v12 & *v26) + 0x68)) = 0;
  *(v26 + *((*v12 & *v26) + 0x70)) = 0;
  *(v26 + *((*v12 & *v26) + 0x78)) = 0;
  EnvironmentValues.init()();
  v27 = v26 + *((*v12 & *v26) + 0x88);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 5) = 0u;
  *(v27 + 6) = 0u;
  *(v27 + 7) = 0u;
  *(v27 + 8) = 0u;
  *(v27 + 9) = 0u;
  *(v27 + 20) = 0;
  *(v26 + *((*v12 & *v26) + 0x90)) = 0;
  *(v26 + *((*v12 & *v26) + 0x98)) = 0;
  v189.receiver = v26;
  v189.super_class = v25;
  *(v2 + v23) = objc_msgSendSuper2(&v189, sel_init);
  *(v2 + *((*v12 & *v2) + 0x110)) = 1;
  v28 = *((*v12 & *v2) + 0x118);
  type metadata accessor for FocusBridge();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  swift_unknownObjectWeakInit();
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v29 + 48) = 0;
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  EnvironmentValues.init()();
  *(v29 + 120) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 88) = 0u;
  v171 = xmmword_18CD6A6D0;
  *(v29 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v29 + 160) = 0;
  *(v29 + 168) = 0;
  *(v29 + 176) = 1;
  *(v2 + v28) = v29;
  v32 = *((*v12 & *v2) + 0x120);
  *(v2 + v32) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x128)) = 0;
  v33 = *((*v12 & *v2) + 0x130);
  *(v2 + v33) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v34 = *((*v12 & *v2) + 0x138);
  *(v2 + v34) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x140)) = 0;
  *(v2 + *((*v12 & *v2) + 0x148)) = 0;
  v35 = *((*v12 & *v2) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v36 = swift_allocObject();
  *(v36 + 16) = 514;
  *(v36 + 24) = v30;
  *(v36 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + v35) = v36;
  swift_weakInit();
  *(v2 + *((*v12 & *v2) + 0x160)) = 0;
  v37 = *((*v12 & *v2) + 0x168);
  *(v2 + v37) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v38 = *((*v12 & *v2) + 0x170);
  *(v2 + v38) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x178)) = 0;
  *(v2 + *((*v12 & *v2) + 0x180)) = 0;
  v39 = *((*v12 & *v2) + 0x188);
  *(v2 + v39) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v40 = *((*v12 & *v2) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 20) = 0;
  *(v41 + 24) = 0;
  v173 = v40;
  *(v2 + v40) = v41;
  *(v2 + *((*v12 & *v2) + 0x198)) = 0;
  v42 = *((*v12 & *v2) + 0x1A0);
  *(v2 + v42) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v2 + *((*v12 & *v2) + 0x1A8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1B8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1C8)) = 0;
  v43 = v2 + *((*v12 & *v2) + 0x1D0);
  *v43 = 0;
  v43[8] = 0;
  *(v43 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v12 & *v2) + 0x1E0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1E8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F0)) = 0;
  *(v2 + *((*v12 & *v2) + 0x1F8)) = 0;
  *(v2 + *((*v12 & *v2) + 0x200)) = 0;
  *(v2 + *((*v12 & *v2) + 0x60)) = a1;
  v172 = a1;

  MEMORY[0x18D00ABE0](v44);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition(0);
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v45 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v46 = *(ObjectType + 1384);
  v175 = ObjectType;
  v46(&v193, v45);
  v47 = v193;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v191) = v47;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar();
  v180 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v185 = *(v180 + 88);

  v48 = v183;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v174;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v176;
  specialized OptionSet<>.insert(_:)(v176, v50);
  v54 = (v184 + 1);
  v53 = v184[1];
  v55 = v179;
  v53(v50, v179);
  v184 = v54;
  v53(v52, v55);
  v56 = v51(&v193, 0);
  v57 = v48;
  if (((*(v175 + 1408))(v56) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v58 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v52, v50);
    v59 = v179;
    v53(v50, v179);
    v53(v52, v59);
    v58(&v193, 0);
    v57 = v183;
  }

  (*(v181 + 16))(v177, v57, v182);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v185;

  *&v193 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v193 + 1) = v63;
  LOWORD(v194) = v64 & 0x101;
  BYTE2(v194) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v193 = 0;
  WORD4(v193) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v191 = 0uLL;
    *v192 = v66;
    memset(&v192[8], 0, 64);
    *&v192[72] = v171;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v196 = *&v192[32];
    v197 = *&v192[48];
    v198 = *&v192[64];
    v199 = *&v192[80];
    v193 = v191;
    v194 = *v192;
    v195 = *&v192[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v193);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.EnableVFDFeature, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v191);
  aBlock = v191;
  v205 = *v192;
  v206 = *&v192[16];
  v207 = *&v192[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v193 = aBlock;
  v194 = v205;
  v195 = v206;
  *&v196 = v207;
  outlined destroy of AccessibilityViewGraph(&v193);
  v68 = *(v2 + v173);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v205 + 1) = &type metadata for HoverEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v205 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v205 + 1) = &type metadata for KeyEventDispatcher;
  *&v206 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge(0);
  swift_allocObject();

  v75 = UIKitEventBindingBridge.init(eventBindingManager:)(v74);
  v76 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0)) = v75;
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
  v188.receiver = v2;
  v188.super_class = v77;
  v78 = v76;
  v79 = objc_msgSendSuper2(&v188, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v80 = v79;
  ViewGraph.append<A>(feature:)();
  v81 = outlined destroy of _UIHostingView<InputAccessoryBar>.HostViewGraph(&aBlock);
  (*((*v76 & *v80) + 0x5C0))(v81);
  v82 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v83 = aBlock;
  v184 = v79;
  if (aBlock != 1)
  {
    v84 = *(&aBlock + 1);
    v85 = v205;
    v86 = v206;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v87);
    }

    *&aBlock = v83;
    *(&aBlock + 1) = v84;
    v205 = v85;
    LOBYTE(v206) = v86 & 1;
    RepresentableContextValues.environment.getter();
    v202 = v203;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v83, v84, v85, *(&v85 + 1), v86);
    v61 = v185;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v88 = v80;

  v89 = *(v88 + *((*v78 & *v88) + 0x150));
  v90 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  *(v89 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v179 = *((*v78 & *v88) + 0x188);
  *(*(v88 + v179) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *(v88 + *((*v78 & *v88) + 0x100));
  *(v91 + *((*v91 & *v78) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *(v88 + *((*v78 & *v88) + 0x108));
  *(v92 + *((*v92 & *v78) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  v93 = GraphHost.addPreference<A>(_:)();
  v95 = specialized _UIHostingView.sheetBridge.getter(v93, v94);
  if (v95)
  {
    *&v95[direct field offset for SheetBridge.host + 8] = v90;
    v96 = v95;
    swift_unknownObjectWeakAssign();
  }

  v97 = *v78 & *v88;
  v98 = *(v88 + *(v97 + 0x110));
  if (v98)
  {
    v99 = *((*v98 & *v78) + 0x210);
    v100 = v98;
    v99(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v98);
    v97 = *v78 & *v88;
  }

  v101 = *(v88 + *(v97 + 280));
  v102 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  *(v101 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v101 + 40) = v102;
  swift_unknownObjectWeakAssign();

  v103 = FocusBridge.host.getter();
  if (v103)
  {
    v105 = v103;
    v106 = v104;
    v107 = swift_getObjectType();
    (*(*(*(v106 + 8) + 8) + 8))(v107);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v108 = *((*v78 & *v88) + 0x120);
  *(*(v88 + v108) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v109 = *(v88 + v108);
  v110 = &v109[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v111 = *(v110 + 1);
  v112 = swift_getObjectType();
  v113 = *(*(v111 + 16) + 8);
  v114 = v109;
  LOBYTE(v112) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v112, v113);
  swift_unknownObjectRelease();
  if (v112)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v88 + *((*v78 & *v88) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v115 = v88;
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v78 & *v115) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v115 + *((*v78 & *v115) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v116 = *((*v78 & *v115) + 0x168);
  *(*(v115 + v116) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v117 = *(v115 + v116);
  v118 = &v117[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v119 = *(v118 + 1);
  v120 = swift_getObjectType();
  v121 = *(v119 + 8);
  v122 = *(v121 + 8);
  v123 = v117;
  v122(v120, v121);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v124 = [v115 traitCollection];

  v125 = [v124 userInterfaceIdiom];
  v126 = MEMORY[0x1E69E7D40];
  if (v125 == 1 || (v127 = [v115 traitCollection], v128 = objc_msgSend(v127, sel_userInterfaceIdiom), v127, v128 == 6))
  {
    v129 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v129[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v130 = *((*v126 & *v115) + 0x178);
    v131 = *(v115 + v130);
    *(v115 + v130) = v129;
  }

  v132 = *(v88 + v179);
  v133 = &v132[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v134 = *(v133 + 1);
  v135 = v132;

  v136 = swift_getObjectType();
  v137 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v136, *(*(v134 + 16) + 8));
  swift_unknownObjectRelease();
  v138 = v185;
  if (v137)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v139 = *((*v126 & *v115) + 0x1A0);
  *(*(v115 + v139) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v140 = swift_unknownObjectWeakAssign();
  v141 = *(v115 + v139);
  MEMORY[0x1EEE9AC00](v140);
  *(&v171 - 2) = v141;
  *(&v171 - 1) = v138;
  v142 = v115;
  v143 = v141;
  static Update.ensure<A>(_:)();

  v144 = *((*v126 & *v142) + 0x78);
  v145 = *(v142 + v144);
  v146 = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v145 + 24) = v146;
  swift_unknownObjectWeakAssign();

  v147 = *(v142 + v144);
  v148 = *((*v126 & *v142) + 0xE0);
  swift_beginAccess();
  *(v147 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v149 = *(v142 + v148);
  v150 = *(v149 + 32);

  if (v150)
  {
    [v142 addGestureRecognizer_];
  }

  [v142 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v151 = [v142 window];
    if (v151)
    {
      v152 = v151;
      v153 = [v151 rootViewController];

      if (v153)
      {
        v154 = [v153 viewIfLoaded];

        if (v154)
        {

          if (v154 == v142)
          {
            v200 = 0;
            v187[0] = 0;
            v155 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v186 = v155;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v157 = static OS_dispatch_queue.main.getter();
            v158 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v206 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_43;
            v159 = _Block_copy(&aBlock);

            v160 = String.utf8CString.getter();

            notify_register_dispatch((v160 + 32), &v200, v157, v159);

            _Block_release(v159);

            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v155;
            *(v163 + 24) = v162;
            *&v206 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v206 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v205 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v205 + 1) = &block_descriptor_50;
            v164 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v187, v161, v164);
            _Block_release(v164);

            v165 = v142 + *((*v126 & *v142) + 0xE8);
            *v165 = v200 | (v187[0] << 32);
            v165[8] = 0;
          }
        }
      }
    }
  }

  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v142 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v167 = one-time initialization token for didUpdateListLayout;
  v168 = v142;
  if (v167 != -1)
  {
    swift_once();
  }

  [v166 addObserver:v168 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v169 = v183;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v201 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v200, v168);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v169, v182);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v169, v182);
  }

  static Update.end()();
  return v168;
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.EnableVFDFeature, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<PreparedCompactColumn>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>, &unk_1EFF9E178, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_340, &unk_1EFF9E1C8, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_347);
}

{
  return specialized _UIHostingView.init(rootView:)(a1, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.EnableVFDFeature, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, lazy protocol witness table accessor for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph, outlined destroy of _UIHostingView<MainContentView>.HostViewGraph, specialized _UIHostingView.base.getter, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, closure #1 in UILargeContentViewerInteractionBridge.updateRequestedPreferences(for:)partial apply, lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>, &unk_1EFF9D6D8, partial apply for specialized closure #1 in _UIHostingView.init(rootView:), block_descriptor_99, &unk_1EFF9D728, partial apply for specialized closure #2 in _UIHostingView.init(rootView:), &block_descriptor_106);
}