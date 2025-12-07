uint64_t View.listHasStackBehavior()(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  v4 = 256;
  return MEMORY[0x18D00A570](&v3, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t View.listHasLazyStackBehavior()(uint64_t a1, uint64_t a2)
{
  v3 = 2;
  v4 = 256;
  return MEMORY[0x18D00A570](&v3, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t View.listSizesToFit(maxHeight:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return MEMORY[0x18D00A570](&v4, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t EnvironmentValues.listStackBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListHasStackBehaviorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier, &type metadata for ListHasStackBehaviorModifier);
}

void protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance ListHasStackBehaviorModifier(uint64_t a1, void *a2)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8) | (*(Value + 9) << 8);
  v5 = *Value;

  specialized static ListHasStackBehaviorModifier.makeEnvironment(behavior:environment:)(v5, v4, a2);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListHasStackBehaviorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListHasLazyStackBehaviorInScrollableAxisModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier, &type metadata for ListHasLazyStackBehaviorInScrollableAxisModifier);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListHasStackBehaviorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListHasLazyStackBehaviorInScrollableAxisModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t static ListAccessoryVisibility.editing(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

double View.listReorderControlVisibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues, serialized(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double EnvironmentValues.listReorderControlVisibility.setter(char *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
  a5();

  PropertyList.subscript.setter();
  if (*(v5 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double key path setter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues, serialized(char *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a5, a6, a7, MEMORY[0x1E697FE38]);
  a8();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.listReorderControlVisibility.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listReorderControlVisibility.modify;
}

void key path getter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, _BYTE *a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();
    PropertyList.subscript.getter();
  }

  *a6 = v8;
}

double (*EnvironmentValues.listDeleteControlVisibility.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listDeleteControlVisibility.modify;
}

double EnvironmentValues.listReorderControlVisibility.modify(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a3, a4, a5, MEMORY[0x1E697FE38]);
  a6();

  PropertyList.subscript.setter();
  if (v7)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>, &type metadata for ScrollContentBackground, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier()
{
  result = lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier;
  if (!lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollContentBackgroundModifier, &type metadata for ScrollContentBackgroundModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA06ScrollE10BackgroundVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(void))
{
  v6 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, a2, a3, a4);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v6;
  v9[1] = a5();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListAccessoryVisibility>, &type metadata for ListAccessoryVisibility, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ListStackBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts()
{
  result = lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts;
  if (!lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListAccessoryVisibility.Guts, &type metadata for ListAccessoryVisibility.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.listStackBehavior.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
}

void specialized implicit closure #1 in _GraphInputs.listReorderControlVisibility.getter(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    PropertyList.subscript.getter();
  }

  *a6 = v8;
}

void specialized static ListHasStackBehaviorModifier.makeEnvironment(behavior:environment:)(uint64_t a1, __int16 a2, void *a3)
{
  v15 = a1;
  v16 = a2 & 0x1FF;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v6 = a3[1];
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if ((a2 & 0x100) != 0 && a1 | a2)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    if (v6)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v15;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v15 + 16, &v15);
    swift_getKeyPath();
    *&v13 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v7 + 280, &v13);
    if (v14)
    {
      outlined init with take of ScrollEnvironmentTransform(&v13, &v10);
      v8 = *(&v11 + 1);
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      (*(v9 + 8))(&v15, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v10);
    }

    LOBYTE(v15) = 0;
    outlined init with copy of ScrollEnvironmentProperties(&v15, &v13);
    type metadata accessor for ScrollEnvironmentStorage(0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    swift_allocObject();
    *&v13 = ScrollEnvironmentStorage.init(_:transform:)(&v13, &v10);
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined destroy of ScrollEnvironmentProperties(&v15);
  }
}

uint64_t specialized static ListHasLazyStackBehaviorInScrollableAxisModifier.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2, __n128 a3)
{
  EnvironmentValues.nearestScrollableAxes.getter();
  AGGraphGetValue();
  result = Axis.Set.contains(_:)();
  if (result)
  {
    v13 = 2;
    v14 = 256;
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    v5 = a2[1];
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

      type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {

      type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    swift_getKeyPath();
    lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v11 + 16, &v13);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v11 + 280, &v11);
    if (v12)
    {
      outlined init with take of ScrollEnvironmentTransform(&v11, &v8);
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(&v13, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    LOBYTE(v13) = 0;
    outlined init with copy of ScrollEnvironmentProperties(&v13, &v11);
    type metadata accessor for ScrollEnvironmentStorage(0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    swift_allocObject();
    *&v11 = ScrollEnvironmentStorage.init(_:transform:)(&v11, &v8);
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return outlined destroy of ScrollEnvironmentProperties(&v13);
  }

  return result;
}

unint64_t type metadata accessor for ScrollEnvironmentTransform()
{
  result = lazy cache variable for type metadata for ScrollEnvironmentTransform;
  if (!lazy cache variable for type metadata for ScrollEnvironmentTransform)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollEnvironmentTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier()
{
  result = lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier;
  if (!lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListHasLazyStackBehaviorInScrollableAxisModifier, &type metadata for ListHasLazyStackBehaviorInScrollableAxisModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier()
{
  result = lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier;
  if (!lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListHasStackBehaviorModifier, &type metadata for ListHasStackBehaviorModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

double Scene.defaultSize(_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.defaultSize(_:), v8, a1, a2);

  return result;
}

char *closure #1 in Scene.defaultSize(_:)(char *result, double a2, double a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    if (v4 > *(v3 + 2))
    {
      __break(1u);
    }

    else
    {
      v8 = (v3 + 568);
      do
      {
        *(v8 - 2) = a2;
        *(v8 - 1) = a3;
        *v8 = 0;
        v8 += 71;
        --v4;
      }

      while (v4);
      *v7 = v3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role()
{
  result = lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role;
  if (!lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowCascadeBehavior.Role, &type metadata for WindowCascadeBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role);
  }

  return result;
}

uint64_t type metadata completion function for PullDownMenuPresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PullDownMenuPresentationModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    *((v7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double destroy for PullDownMenuPresentationModifier(void *a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 17) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

uint64_t initializeWithCopy for PullDownMenuPresentationModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;

  v6(v9, v10, v5);
  *((*(v7 + 48) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 48) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *assignWithCopy for PullDownMenuPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  *((*(v7 + 40) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 40) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for PullDownMenuPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 17) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 40))(v9, v10);
  *((*(v7 + 24) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 24) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PullDownMenuPresentationModifier(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for PullDownMenuPresentationModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PullDownMenuPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PullDownMenuPresentationModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata completion function for UITableViewListCoordinator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[10];
  v5 = *(a1[12] + 8);
  type metadata accessor for ShadowListUpdateRecorder(319, v4, v5, a4);
  if (v6 <= 0x3F)
  {
    type metadata accessor for Binding();
    type metadata accessor for Optional();
    if (v7 <= 0x3F)
    {
      _s10Foundation9IndexPathVSgMaTm_0(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        type metadata accessor for ListCoreBatchUpdates(319, v4, v5, v8);
        if (v10 <= 0x3F)
        {
          type metadata accessor for Optional();
          if (v11 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(uint64_t result)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (result)
  {
    v5 = result;
    v6 = v4;
    v11 = result;

    if (Transaction.animationIgnoringTransitionPhase.getter())
    {

      *(v2 + *((*v3 & *v2) + 0xF8)) = 1;
      UITableViewListCoordinator.isAnimatingInitialLayout.didset();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = *(v6 + 80);
      *(v8 + 24) = *(v6 + 88);
      *(v8 + 40) = *(v6 + 104);
      *(v8 + 48) = v7;

      Transaction.addAnimationListener(allFinished:)();

      v5 = v11;
    }

    v9 = *((*v3 & *v2) + 0x88);
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = v5;
    return outlined consume of ListItemTint?(v10);
  }

  return result;
}

id UITableViewListCoordinator.dragAndDropController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v6 = *&v4[v5];
  if (v6)
  {
    v7 = *&v4[v5];
  }

  else
  {
    v8 = closure #1 in UITableViewListCoordinator.dragAndDropController.getter(v4, a2, a3, a4);
    v9 = *&v4[v5];
    *&v4[v5] = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

void *UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v94 = a2;
  v97 = a1;
  v98 = (*MEMORY[0x1E69E7D40] & *v4);
  v6 = v98;
  v7 = v98[10];
  v86 = type metadata accessor for Optional();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v79[-v8];
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v79[-v10];
  v11 = v6[12];
  v92 = type metadata accessor for ShadowListDataSource(0, v7, v11, v12);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v79[-v13];
  v82 = v6[11];
  v14 = type metadata accessor for Binding();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79[-v17];
  v88 = v11;
  v19 = *(v11 + 8);
  v93 = v7;
  v21 = type metadata accessor for ListCoreBatchUpdates(0, v7, v19, v20);
  v22 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v79[-v23];
  v87 = v6[31];
  if ((*(v4 + v87) & 1) == 0)
  {
    v25 = v98[17];
    swift_beginAccess();
    v26 = *(v4 + v25);
    *(v4 + v25) = a3;
    outlined consume of ListItemTint?(v26);
    v6 = (*MEMORY[0x1E69E7D40] & *v4);
  }

  v27 = v6[24];
  swift_beginAccess();
  v28 = *(v22 + 16);
  v99 = v27;
  v96 = v28;
  v28(v24, v4 + v27, v21);
  LOBYTE(v27) = ListCoreBatchUpdates.isEmpty.getter(v21);
  v95 = *(v22 + 8);
  v95(v24, v21);
  if (v27)
  {
    v29 = *v4;
    v30 = *MEMORY[0x1E69E7D40];
    if ((*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8)) & 1) == 0)
    {
      v81 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
      if (*(v4 + v81))
      {
        v80 = 0;
      }

      else
      {
        UITableViewListCoordinator.resolvedEditMode.getter(v103);
        if (v103[0] == 1)
        {
          v80 = 0;
          v29 = *v4;
          v30 = *MEMORY[0x1E69E7D40];
        }

        else
        {
          v80 = [v97 isEditing];
          UITableViewListCoordinator.resolvedEditMode.getter(v103);
          v29 = *v4;
          v30 = *MEMORY[0x1E69E7D40];
          if (v80 == (v103[0] == 0))
          {
            v31 = 1;
          }

          else
          {
            v31 = *(v4 + *((v30 & v29) + 0xE8));
          }

          v80 = v31;
        }
      }

      v32 = *((v30 & v29) + 0x78);
      swift_beginAccess();
      (*(v16 + 16))(v18, v4 + v32, v15);
      v33 = (*(*(v14 - 8) + 48))(v18, 1, v14) != 1;
      (*(v16 + 8))(v18, v15);
      v34 = v97;
      [v97 setAllowsMultipleSelectionDuringEditing_];
      if (*(v4 + v81))
      {
        UITableViewListCoordinator.resolvedEditMode.getter(v102);
        if (LOBYTE(v102[0]))
        {
          specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(v34);
          [v34 setEditing:1 animated:0];
        }
      }

      else
      {
        v35 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
        swift_beginAccess();
        v36 = v91;
        v37 = v90;
        v38 = v92;
        (*(v91 + 16))(v90, v4 + v35, v92);
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v38);
        ListCoreBatchUpdates.formUpdates<A>(from:to:)(v37, v94, v21, v38, WitnessTable);
        swift_endAccess();
        v40 = v37;
        v34 = v97;
        (*(v36 + 8))(v40, v38);
        if (*(v4 + v87) == 1)
        {
          v96(v24, v4 + v99, v21);
          v41 = ListCoreBatchUpdates.isEmpty.getter(v21);
          v95(v24, v21);
          if (v41)
          {
            v42 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v43 = swift_allocObject();
            v44 = v82;
            v43[2] = v93;
            v43[3] = v44;
            v43[4] = v88;
            v43[5] = v98[13];
            v43[6] = v42;
            v43[7] = v34;
            v45 = MEMORY[0x1E69E7D40];
            v46 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100));
            v47 = *v46;
            v48 = v46[1];
            *v46 = partial apply for closure #1 in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
            v46[1] = v43;

            v49 = v34;
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v47, v48);

            v50 = *v4;
            v51 = *v45;
LABEL_38:
            *(v4 + *((v51 & v50) + 0xB0)) = 0;
            return $defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v4);
          }

          v52 = MEMORY[0x1E69E7D40];
          v53 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100));
          v54 = *v53;
          v55 = v53[1];
          *v53 = 0;
          v53[1] = 0;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v54, v55);
          *(v4 + *((*v52 & *v4) + 0xF8)) = 0;
          UITableViewListCoordinator.isAnimatingInitialLayout.didset();
        }
      }

      if (UITableViewListCoordinator.isAnimated.getter())
      {
        v56 = 1;
      }

      else
      {
        type metadata accessor for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
        v56 = static SemanticFeature.isEnabled.getter() ^ 1;
      }

      LODWORD(v98) = v56;
      v57 = MEMORY[0x1E69E7D40];
      *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0)) = 0;
      if ([v34 style])
      {
        v58 = 0;
      }

      else
      {
        v58 = 100;
      }

      v59 = *((*v57 & *v4) + 0x88);
      swift_beginAccess();
      if (*(v4 + v59) == 1)
      {
        swift_endAccess();
      }

      else
      {
        Transaction.subscript.getter();
        v60 = v100;
        swift_endAccess();
        if (v60)
        {
          v61 = 0;
          goto LABEL_31;
        }
      }

      v61 = 100;
LABEL_31:
      v96(v24, v4 + v99, v21);
      v62 = ListCoreBatchUpdates.isEmpty.getter(v21);
      v95(v24, v21);
      v63 = *(v89 + 16);
      if (v62)
      {
        v64 = v83;
        v65 = v93;
        v63(v83, v94, v93);
        v66 = v90;
        ShadowListDataSource.init(_:)(v64, v65, v88, v90);
        v67 = MEMORY[0x1E69E7D40];
        v68 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
        swift_beginAccess();
        (*(v91 + 40))(v4 + v68, v66, v92);
      }

      else
      {
        v69 = v84;
        v70 = v93;
        v71 = v89;
        v63(v84, v94, v93);
        (*(v71 + 56))(v69, 0, 1, v70);
        v67 = MEMORY[0x1E69E7D40];
        v72 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC8);
        swift_beginAccess();
        (*(v85 + 40))(v4 + v72, v69, v86);
      }

      swift_endAccess();
      v96(v24, v4 + v99, v21);
      v73 = ListCoreBatchUpdates.isEmpty.getter(v21);
      v95(v24, v21);
      v50 = *v4;
      v51 = *v67;
      if (((v73 & 1) == 0 || (*(v4 + *((v51 & v50) + 0xD0)) & 1) == 0) && (*(v4 + v81) & 1) == 0)
      {
        *(v4 + *((v51 & v50) + 0xD0)) = 1;
        v101 = 17;
        v74 = swift_allocObject();
        *(v74 + 16) = v98 & 1;
        *(v74 + 24) = v4;
        *(v74 + 32) = v80;
        v75 = v97;
        *(v74 + 40) = v97;
        *(v74 + 48) = v58;
        *(v74 + 56) = v61;
        v76 = v75;
        v77 = v4;
        static Update.enqueueAction(reason:_:)();

        v50 = *v77;
        v51 = *v67;
      }

      goto LABEL_38;
    }
  }

  return $defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v4);
}

_BYTE *closure #1 in variable initialization expression of UITableViewListCoordinator.helper()
{
  v0 = type metadata accessor for ScrollViewHelper();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v6 = 257;
  *(v6 + 21) = 0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 67) = 0u;
  *(v6 + 44) = 4;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
  v6[112] = 0;
  v6[120] = 0;
  *(v6 + 16) = 0;
  *(v6 + 68) = 0;
  v6[144] = 0;
  *(v6 + 19) = 0;
  *(v6 + 158) = 0;
  v6[166] = 1;
  *(v6 + 167) = 0u;
  *(v6 + 183) = 0u;
  v6[199] = 0;
  static EdgeInsets.zero.getter();
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 27) = v10;
  *(v6 + 28) = v11;
  v12 = static EdgeInsets.zero.getter();
  *(v6 + 29) = v13;
  *(v6 + 30) = v14;
  *(v6 + 31) = v15;
  *(v6 + 32) = v16;
  v17 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v18 = MEMORY[0x18D007050](v42, v12);
  v19 = MEMORY[0x18D007050](v44, v18);
  v20 = MEMORY[0x18D007050](v46, v19);
  MEMORY[0x18D007050](v48, v20);
  v21 = v42[1];
  *v17 = v42[0];
  v17[1] = v21;
  v17[2] = v43[0];
  *(v17 + 41) = *(v43 + 9);
  v22 = v44[1];
  v17[4] = v44[0];
  v17[5] = v22;
  v17[6] = v45[0];
  *(v17 + 105) = *(v45 + 9);
  v23 = v46[0];
  v24 = v46[1];
  v25 = v47[0];
  *(v17 + 169) = *(v47 + 9);
  v17[9] = v24;
  v17[10] = v25;
  v17[8] = v23;
  v26 = v48[1];
  v17[12] = v48[0];
  v17[13] = v26;
  v17[14] = v49[0];
  *(v17 + 233) = *(v49 + 9);
  v27 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v27 = 0;
  *(v27 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v28 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v31 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[66] = 0;
  *(v31 + 32) = 512;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v32 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v35 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v35 = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  *&v1[v2] = 0;
  *&v1[v3] = 0;
  *&v1[v4] = 0;
  *&v1[v5] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = 2;
  v41.receiver = v1;
  v41.super_class = v0;
  result = objc_msgSendSuper2(&v41, sel_init);
  result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  return result;
}

uint64_t closure #1 in UITableViewListCoordinator.dragAndDropController.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v9 = type metadata accessor for ShadowListDataSource(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  type metadata accessor for TableViewListDragAndDropController(0, v7, v8, v13);
  v14 = *((v6 & v5) + 0x70);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a1[v14], v9);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = specialized CollectionViewListDragAndDropController.__allocating_init(dataSource:dispatchUpdate:)(v12, partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter, v15);
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t UITableViewListCoordinator.isAnimated.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    swift_endAccess();
  }

  else
  {
    v3 = Transaction.animation.getter();
    swift_endAccess();
    if (v3)
    {

      return 1;
    }
  }

  return *(v0 + *((*v1 & *v0) + 0xE0));
}

void *UITableViewListCoordinator.resolvedEditMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[16];
    v9 = v5;
    v10 = v4;
    v11 = v6;
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    result = MEMORY[0x18D00ACC0](&v8);
    LOBYTE(v4) = v8;
  }

  *a1 = v4;
  return result;
}

void UITableViewListCoordinator.isAnimatingInitialLayout.didset()
{
  if ((*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8)) & 1) == 0)
  {
    v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100));
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);
      v5 = *v1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
  }
}

double closure #1 in UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  onMainThread(do:)();

  return result;
}

void closure #1 in closure #1 in UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xF8)) = 0;
    UITableViewListCoordinator.isAnimatingInitialLayout.didset();
  }
}

double UITableViewListCoordinator.commitUpdates()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  *(v0 + *((v2 & v1) + 0xD8)) = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x50);
  *(v5 + 24) = *(v3 + 88);
  *(v5 + 40) = *((v2 & v1) + 0x68);
  *(v5 + 48) = v4;

  static Update.enqueueAction(reason:_:)();

  return result;
}

void closure #1 in UITableViewListCoordinator.commitUpdates()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource(0, a2, a4, v9);
    ShadowListDataSource.commitUpdates()();
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    *(v10 + *((*v7 & *v10) + 0xD8)) = 0;
  }
}

void *$defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *result)
{
  if ((*(result + *((*MEMORY[0x1E69E7D40] & *result) + 0xF8)) & 1) == 0)
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *result) + 0x88);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);
    *(v2 + v1) = 1;
    return outlined consume of ListItemTint?(v3);
  }

  return result;
}

void closure #1 in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    UITableViewListCoordinator.updateListContents(_:)(a2, v4, v5, v6);
  }
}

void UITableViewListCoordinator.updateListContents(_:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v154 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = *((v8 & v6) + 0x50);
  v10 = *((v8 & v6) + 0x60);
  v11 = type metadata accessor for ShadowSectionCollection(0, v9, *(v10 + 8), a4);
  v159 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v142 - v12;
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v173 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v167 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = &v142 - v18;
  v19 = *(*((v8 & v6) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v142 - v21;
  v153 = v22;
  v162 = type metadata accessor for Binding();
  v23 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v151 = &v142 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = type metadata accessor for Optional();
  v188 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v164 = &v142 - v26;
  v165 = AssociatedTypeWitness;
  v185 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v161 = &v142 - v28;
  v190 = v9;
  v192 = v10;
  v30 = type metadata accessor for ShadowListDataSource(0, v9, v10, v29);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v142 - v32;
  v33 = type metadata accessor for IndexPath();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v163 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v142 - v37;
  UITableViewListCoordinator.clearDataSourceUpdates()();
  *(v4 + *((*v7 & *v4) + 0xD0)) = 0;
  v38 = [a1 indexPathsForVisibleRows];
  v193 = v4;
  v189 = a1;
  v184 = v30;
  if (v38)
  {
    v183 = v23;
    v150 = v11;
    v39 = v38;
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v40;
    v42 = *(v40 + 16);
    if (v42)
    {
      v43 = v33;
      v44 = *v4;
      v45 = *MEMORY[0x1E69E7D40];
      v46 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
      v166 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
      v47 = *((v45 & v44) + 0x78);
      v179 = v19;
      v48 = *((v45 & v44) + 0xB8);
      v49 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v50 = v31;
      v145 = v41;
      v51 = v41 + v49;
      v178 = v46;
      swift_beginAccess();
      v155 = v47;
      swift_beginAccess();
      v170 = v48;
      swift_beginAccess();
      v53 = *(v34 + 16);
      v52 = v34 + 16;
      v187 = v53;
      v177 = (v50 + 16);
      v186 = v50;
      v176 = (v50 + 8);
      v160 = (v185 + 6);
      v54 = *(v52 + 56);
      v149 = (v185 + 4);
      v148 = (v183 + 48);
      v144 = (v183 + 16);
      v143 = (v183 + 8);
      v142 = v179 + 8;
      v147 = (v185 + 1);
      v185 = (v52 - 8);
      v146 = (v188 + 8);
      v169 = (v52 + 40);
      v168 = (v52 + 32);
      v188 = v52;
      v156 = (v52 + 16);
      v55 = v182;
      v181 = v43;
      v171 = v54;
      v53(v182, v51, v43);
      while (1)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v57 = [a1 cellForRowAtIndexPath_];

        if (!v57)
        {
          goto LABEL_5;
        }

        swift_getAssociatedTypeWitness();
        v58 = swift_dynamicCastUnknownClass();
        if (!v58)
        {

LABEL_5:
          (*v185)(v55, v43);
          goto LABEL_6;
        }

        v183 = v57;
        v59 = v193;
        v60 = v191;
        v61 = v58;
        v175 = *v177;
        v62 = v175(v191, &v193[v178], v30);
        v63 = MEMORY[0x1EEE9AC00](v62);
        *(&v142 - 2) = v59;
        *(&v142 - 1) = v61;
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v30, v63);
        ListCoreDataSource.visitContent<A>(atRow:visitor:)(v55, partial apply for closure #1 in UITableViewListCoordinator.updateListContents(_:), (&v142 - 4), v30, MEMORY[0x1E69E7CA8] + 8, WitnessTable, v195);
        v64 = v60;
        v65 = *v176;
        (*v176)(v64, v30);
        type metadata accessor for ListTableViewCell(0);
        v179 = v61;
        v66 = swift_dynamicCastClass();
        if (v66)
        {
          v67 = v66;
          v68 = v183;
          UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(v67, a1, v55, 1);
        }

        v69 = [a1 isEditing];
        v70 = v180;
        if (!v69)
        {
          goto LABEL_21;
        }

        v71 = *(v166 + 1);
        if (v71)
        {
          v72 = v166[16];
          v195[0] = *v166;
          v195[1] = v71;
          v196 = v72;
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
          MEMORY[0x18D00ACC0](&v194);
          if (v194 == 1)
          {
            goto LABEL_21;
          }
        }

        v73 = v193;
        v74 = v191;
        v175(v191, &v193[v178], v30);
        v75 = v164;
        ListCoreDataSource.selectionValue(forRowAt:)(v182, v30, WitnessTable, v164);
        v65(v74, v30);
        v76 = v165;
        if ((*v160)(v75, 1, v165) == 1)
        {
          (*v146)(v75, v157);
          goto LABEL_21;
        }

        v77 = v161;
        (*v149)(v161, v75, v76);
        if ((*v148)(&v73[v155], 1, v162))
        {
          break;
        }

        v78 = v151;
        v79 = v162;
        (*v144)(v151, &v73[v155], v162);
        v80 = v152;
        MEMORY[0x18D00ACC0](v79);
        (*v143)(v78, v79);
        v81 = v77;
        v82 = v153;
        v83 = (*(*(v154 + 104) + 64))(v81, v153);
        v76 = v165;
        LOBYTE(v79) = v83;
        v84 = v82;
        v77 = v161;
        (*v142)(v80, v84);
        if ((v79 & 1) == 0)
        {
          break;
        }

        v55 = v182;
        v85 = IndexPath._bridgeToObjectiveC()().super.isa;
        v86 = UITableViewListCoordinator.isAnimated.getter();
        a1 = v189;
        [v189 selectRowAtIndexPath:v85 animated:v86 & 1 scrollPosition:0];

        (*v147)(v77, v76);
LABEL_28:
        v43 = v181;
        (*v185)(v55, v181);
LABEL_32:
        v54 = v171;
LABEL_6:
        v51 += v54;
        if (!--v42)
        {

          v31 = v186;
          v7 = MEMORY[0x1E69E7D40];
          v11 = v150;
          v4 = v193;
          goto LABEL_35;
        }

        v187(v55, v51, v43);
      }

      (*v147)(v77, v76);
LABEL_21:
      v87 = v181;
      v187(v70, v182, v181);
      (*v169)(v70, 0, 1, v87);
      v88 = *(v173 + 48);
      v89 = MEMORY[0x1E6969C28];
      v90 = MEMORY[0x1E69E6720];
      v91 = v172;
      _s10Foundation9IndexPathVSgWOcTm_0(v70, v172, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
      _s10Foundation9IndexPathVSgWOcTm_0(&v193[v170], v91 + v88, &lazy cache variable for type metadata for IndexPath?, v89, v90, _s10Foundation9IndexPathVSgMaTm_0);
      v92 = *v168;
      if ((*v168)(v91, 1, v87) == 1)
      {
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v70, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        v93 = v92(v91 + v88, 1, v87);
        a1 = v189;
        v30 = v184;
        if (v93 == 1)
        {

          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v91, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
          v94 = *v185;
LABEL_31:
          v43 = v181;
          v100 = v182;
          v94(v182, v181);
          v55 = v100;
          goto LABEL_32;
        }
      }

      else
      {
        v95 = v167;
        _s10Foundation9IndexPathVSgWOcTm_0(v91, v167, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        if (v92(v91 + v88, 1, v87) != 1)
        {
          v97 = v163;
          (*v156)(v163, v91 + v88, v87);
          lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
          LODWORD(v175) = dispatch thunk of static Equatable.== infix(_:_:)();
          v94 = *v185;
          (*v185)(v97, v87);
          v98 = MEMORY[0x1E6969C28];
          v99 = MEMORY[0x1E69E6720];
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v180, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
          v94(v167, v87);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v91, &lazy cache variable for type metadata for IndexPath?, v98, v99, _s10Foundation9IndexPathVSgMaTm_0);
          a1 = v189;
          v30 = v184;
          if (v175)
          {

            goto LABEL_31;
          }

          goto LABEL_27;
        }

        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v180, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        (*v185)(v95, v87);
        a1 = v189;
        v30 = v184;
      }

      outlined destroy of (IndexPath?, IndexPath?)(v91);
LABEL_27:
      v55 = v182;
      v96 = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectRowAtIndexPath:v96 animated:0];

      [v179 setSelected:0 animated:0];
      goto LABEL_28;
    }

    v7 = MEMORY[0x1E69E7D40];
    v11 = v150;
  }

LABEL_35:
  v101 = *((*v7 & *v4) + 0x70);
  swift_beginAccess();
  v102 = v31 + 16;
  v103 = *(v31 + 16);
  v104 = v4 + v101;
  v105 = v191;
  v103(v191, v104, v30);
  v106 = v158;
  ShadowListDataSource.sectionIDs.getter(v30, v107, v158);
  v108 = v31 + 8;
  v109 = *(v31 + 8);
  v186 = v108;
  v109(v105, v30);
  v110 = specialized ViewLeafView.platformView.getter(v11);
  (*(v159 + 8))(v106, v11);
  if (v110 < 0)
  {
    __break(1u);
  }

  else
  {
    v187 = v103;
    v188 = v101;
    if (v110)
    {
      v182 = *((*v7 & *v193) + 0x88);
      swift_beginAccess();
      v111 = 0;
      v185 = v110;
      do
      {
        v112 = [a1 headerViewForSection_];
        if (v112)
        {
          v113 = v112;
          swift_getAssociatedTypeWitness();
          v114 = swift_dynamicCastUnknownClass();
          if (v114)
          {
            v183 = v114;
            v115 = v109;
            v116 = v188;
            v117 = v191;
            v118 = v102;
            v119 = v187;
            v187(v191, &v193[v188], v30);
            swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v30);
            v120 = ListDiffable.hasHeader(forSectionAtOffset:)(v111);
            v115(v117, v30);
            if (v120)
            {
              v121 = v193;
              v119(v117, &v193[v116], v30);
              v122 = *(v121 + v182);
              outlined copy of Transaction?(v122);
              v123 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v30);
              ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v183, v122, v111, v30, v123);
              outlined consume of ListItemTint?(v122);
              v115(v117, v30);
              type metadata accessor for ListTableViewHeaderFooter();
              v124 = swift_dynamicCastClass();
              v102 = v118;
              v109 = v115;
              if (v124)
              {
                v125 = v124;
                v126 = v113;
                v113 = v125;
                a1 = v189;
                specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v113, 0, v189);
              }

              else
              {
                a1 = v189;
              }

              v30 = v184;
            }

            else
            {
              v102 = v118;
              v109 = v115;
              a1 = v189;
            }

            v110 = v185;
          }
        }

        v127 = [a1 footerViewForSection_];
        if (v127)
        {
          v128 = v127;
          swift_getAssociatedTypeWitness();
          v129 = swift_dynamicCastUnknownClass();
          if (v129)
          {
            v183 = v129;
            v130 = v109;
            v131 = v188;
            v132 = v191;
            v133 = v102;
            v134 = v187;
            v187(v191, &v193[v188], v30);
            swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v30);
            v135 = ListDiffable.hasFooter(forSectionAtOffset:)(v111);
            v130(v132, v30);
            if (v135)
            {
              v136 = v193;
              v134(v132, &v193[v131], v30);
              v137 = *(v136 + v182);
              outlined copy of Transaction?(v137);
              v138 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v30);
              ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v183, v137, v111, v30, v138);
              outlined consume of ListItemTint?(v137);
              v130(v132, v30);
              type metadata accessor for ListTableViewHeaderFooter();
              v139 = swift_dynamicCastClass();
              v102 = v133;
              v109 = v130;
              if (v139)
              {
                v140 = v139;
                v141 = v128;
                v128 = v140;
                a1 = v189;
                specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v128, 1, v189);
              }

              else
              {
                a1 = v189;
              }

              v30 = v184;
            }

            else
            {
              v102 = v133;
              v109 = v130;
              a1 = v189;
            }

            v110 = v185;
          }
        }

        ++v111;
      }

      while (v110 != v111);
    }
  }
}

void performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, char a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a6;
  v10 = *a1;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v72 = *MEMORY[0x1E69E7D40] & *a1;
  v13 = *((v12 & v10) + 0x50);
  v14 = type metadata accessor for Optional();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v68 - v15;
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v68 - v19;
  v70 = *((v12 & v10) + 0x60);
  v20 = *(v70 + 8);
  v77 = v13;
  v22 = type metadata accessor for ListCoreBatchUpdates(0, v13, v20, v21);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v68 - v24;
  *(a1 + *((v12 & v10) + 0xD0)) = 1;
  if (a2)
  {
    if (*(a1 + *((*v11 & *a1) + 0xE8)) == 1)
    {
      UITableViewListCoordinator.resolvedEditMode.getter(&aBlock);
      if (aBlock)
      {
        specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a3);
        [a3 setEditing:0 animated:a4 & 1];
      }
    }

    UITableViewListCoordinator.resolvedEditMode.getter(&aBlock);
    v26 = aBlock != 0;
    specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a3);
    [a3 setEditing:v26 animated:a4 & 1];
    v11 = MEMORY[0x1E69E7D40];
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = a1;
  *(isEscapingClosureAtFileLocation + 24) = a4 & 1;
  *(isEscapingClosureAtFileLocation + 25) = a2 & 1;
  v29 = v79;
  v28 = v80;
  *(isEscapingClosureAtFileLocation + 32) = a3;
  *(isEscapingClosureAtFileLocation + 40) = v29;
  *(isEscapingClosureAtFileLocation + 48) = v28;
  v30 = *((*v11 & *a1) + 0xC0);
  swift_beginAccess();
  (*(v23 + 16))(v25, a1 + v30, v22);
  v31 = a1;
  v32 = a3;
  LOBYTE(v30) = ListCoreBatchUpdates.isEmpty.getter(v22);
  (*(v23 + 8))(v25, v22);
  if ((v30 & 1) == 0)
  {
    v68 = v32;
    v33 = *v11;
    v34 = v31;
    v35 = *((v33 & *v31) + 0xC8);
    swift_beginAccess();
    v36 = v74;
    v37 = v31 + v35;
    v25 = v73;
    v38 = v75;
    (*(v74 + 16))(v73, v37, v75);
    v39 = v77;
    v32 = v78;
    if ((*(v78 + 48))(v25, 1, v77) != 1)
    {
LABEL_13:
      v45 = v32;
      v46 = v32[4];
      v47 = v76;
      v46(v76, v25, v39);
      v48 = v32[2];
      v49 = v71;
      v48(v71, v47, v39);
      v50 = (*(v45 + 80) + 56) & ~*(v45 + 80);
      v51 = (v69 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      v54 = v39;
      v55 = v53;
      v53[2] = v54;
      v56 = v54;
      v57 = v72;
      v58 = v70;
      v53[3] = *(v72 + 88);
      v53[4] = v58;
      v53[5] = *(v57 + 104);
      v53[6] = v34;
      v59 = v49;
      v60 = v56;
      (v46)(v53 + v50, v59);
      v61 = v68;
      *(v55 + v51) = v68;
      v62 = v80;
      *(v55 + v52) = v79;
      *(v55 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
      v63 = swift_allocObject();
      *(v63 + 16) = partial apply for closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
      *(v63 + 24) = v55;
      v85 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v86 = v63;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = thunk for @escaping @callee_guaranteed () -> ();
      v84 = &block_descriptor_115;
      v64 = _Block_copy(&aBlock);
      v65 = v34;
      v66 = v61;

      v85 = partial apply for closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
      v86 = isEscapingClosureAtFileLocation;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v84 = &block_descriptor_118;
      v67 = _Block_copy(&aBlock);

      [v66 performBatchUpdates:v64 completion:v67];
      _Block_release(v67);
      _Block_release(v64);

      (*(v78 + 8))(v76, v60);

      return;
    }

    (*(v36 + 8))(v25, v38);
    v32 = v68;
  }

  if (a2)
  {
    v85 = partial apply for closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
    v86 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v84 = &block_descriptor_105;
    v40 = _Block_copy(&aBlock);

    [v32 performBatchUpdates:0 completion:v40];

    _Block_release(v40);
    return;
  }

  v34 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v32;
  *(v41 + 24) = v31;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #3 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
  *(v39 + 24) = v41;
  v85 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v86 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = thunk for @escaping @callee_guaranteed () -> ();
  v84 = &block_descriptor_102;
  v42 = _Block_copy(&aBlock);
  v43 = v31;
  v44 = v32;

  [v34 performWithoutAnimation_];

  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }
}

void closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(uint64_t a1, char *a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v9 = a4;
  v12 = *a2;
  v13 = *MEMORY[0x1E69E7D40];
  v14 = type metadata accessor for ListCoreBatchUpdates(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50), *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x60) + 8), a4);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v18 = *((v13 & v12) + 0xC0);
  swift_beginAccess();
  (*(v15 + 16))(v17, &a2[v18], v14);
  LOBYTE(v18) = ListCoreBatchUpdates.isEmpty.getter(v14);
  v19 = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    UITableViewListCoordinator.enqueueLayoutInvalidationIfNeeded(_:)(a5);
    UITableViewListCoordinator.updateListContents(_:)(a5, v20, v21, v22);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v23 - 48) = a3 & 1;
    *(&v23 - 5) = a2;
    *(&v23 - 32) = v9 & 1;
    *(&v23 - 3) = a5;
    *(&v23 - 2) = a6;
    *(&v23 - 1) = v24;
    static Update.ensure<A>(_:)();
  }
}

void closure #1 in closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(a2, a3 & 1, a4, 1, a5, a6);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3 & 1;
    *(v12 + 32) = a4;
    *(v12 + 40) = 0;
    *(v12 + 48) = a5;
    *(v12 + 56) = a6;
    v13 = swift_allocObject();
    *(v13 + 16) = performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)partial apply;
    *(v13 + 24) = v12;
    v18[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed () -> ();
    v18[3] = &block_descriptor_129;
    v14 = _Block_copy(v18);
    v15 = a2;
    v16 = a4;

    [v11 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void UITableViewListCoordinator.enqueueLayoutInvalidationIfNeeded(_:)(void *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  if (v2[9] != 1 || *v2 | v2[8])
  {
    v3 = specialized UIView.firstAncestorWhere(_:)(a1);
    if (v3)
    {
      v6 = v3;
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      if (v5)
      {
        (*(v5 + 8))(ObjectType, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, char *a2, void *a3, char *a4, uint64_t a5)
{
  v91 = a2;
  v92 = a5;
  v84 = a4;
  v94 = a3;
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for IndexPath();
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - v11;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for IndexSet();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *((v7 & v6) + 0x50);
  v88 = *((v7 & v6) + 0x60);
  v89 = v22;
  v24 = type metadata accessor for ShadowListDataSource(0, v22, v88, v23);
  v25 = v18;
  v26 = v19;
  ShadowListDataSource.updateBase(to:)(v91, v24, v27, v28);
  swift_endAccess();
  v29 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  v83 = a1;
  v30 = a1 + v29;
  swift_beginAccess();
  v31 = v19 + 16;
  v32 = *(v19 + 16);
  v91 = v30;
  v32(v21, v30, v25);
  LOBYTE(v30) = IndexSet.isEmpty.getter();
  v33 = *(v26 + 8);
  v90 = v26 + 8;
  v33(v21, v25);
  v35 = v32;
  v36 = v94;
  if ((v30 & 1) == 0)
  {
    v35(v21, v91, v25);
    IndexSet._bridgeToObjectiveC()(v37);
    v39 = v38;
    v33(v21, v25);
    [v36 deleteSections:v39 withRowAnimation:v84];
  }

  v40 = type metadata accessor for ListCoreBatchUpdates(0, v89, *(v88 + 8), v34);
  v41 = &v91[*(v40 + 36)];
  v87 = v35;
  v88 = v31;
  v35(v21, v41, v25);
  v42 = v40;
  v43 = IndexSet.isEmpty.getter();
  v86 = v33;
  v33(v21, v25);
  v89 = v25;
  if ((v43 & 1) == 0)
  {
    v87(v21, &v91[*(v40 + 36)], v25);
    IndexSet._bridgeToObjectiveC()(v44);
    v46 = v45;
    v86(v21, v89);
    [v36 insertSections:v46 withRowAnimation:v84];
  }

  v47 = *&v91[*(v40 + 40)];
  v48 = *(v47 + 16);
  v84 = v21;
  v49 = v95;
  if (v48)
  {
    v50 = v42;

    v51 = (v47 + 40);
    do
    {
      [v36 moveSection:*(v51 - 1) toSection:*v51];
      v51 += 2;
      --v48;
    }

    while (v48);

    v42 = v50;
  }

  v52 = v92;
  if (*(*&v91[v42[11]] + 16))
  {

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 deleteRowsAtIndexPaths:isa withRowAnimation:v52];
  }

  if (*(*&v91[v42[12]] + 16))
  {

    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v36 insertRowsAtIndexPaths:v54 withRowAnimation:v52];
  }

  v82 = v42;
  v55 = *&v91[v42[13]];
  v56 = *(v55 + 16);
  v57 = (v85 + 32);
  v58 = (v85 + 8);
  v92 = v55;

  i = 0;
  if (v56)
  {
    goto LABEL_15;
  }

LABEL_14:
  type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
  v61 = v60;
  (*(*(v60 - 8) + 56))(v49, 1, 1, v60);
  for (i = v56; ; ++i)
  {
    outlined init with take of (source: IndexPath, destination: IndexPath)?(v49, v17);
    type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
    if ((*(*(v61 - 8) + 48))(v17, 1, v61) == 1)
    {
      break;
    }

    v66 = *v57;
    (*v57)(v12, &v17[*(v61 + 48)], v8);
    v67 = v93;
    v66(v93, v17, v8);
    v68 = IndexPath._bridgeToObjectiveC()().super.isa;
    v69 = *v58;
    (*v58)(v67, v8);
    v70 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v94 moveRowAtIndexPath:v68 toIndexPath:v70];

    v69(v12, v8);
    v49 = v95;
    if (i == v56)
    {
      goto LABEL_14;
    }

LABEL_15:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v62 = v92;
    if (i >= *(v92 + 16))
    {
      goto LABEL_25;
    }

    type metadata accessor for (source: IndexPath, destination: IndexPath)(0);
    v61 = v63;
    v64 = v62;
    v65 = *(v63 - 8);
    outlined init with copy of (source: IndexPath, destination: IndexPath)(v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * i, v95);
    (*(v65 + 56))(v95, 0, 1, v61);
    v49 = v95;
  }

  v71 = v82;
  v72 = v91;
  v73 = v84;
  v74 = v89;
  v75 = v87;
  v87(v84, &v91[v82[14]], v89);
  v76 = IndexSet.isEmpty.getter();
  v77 = v86;
  v86(v73, v74);
  if ((v76 & 1) == 0)
  {
    v75(v73, &v72[v71[14]], v74);
    IndexSet._bridgeToObjectiveC()(v78);
    v80 = v79;
    v77(v73, v74);
    [v94 reloadSections:v80 withRowAnimation:100];
  }

  UITableViewListCoordinator.clearDataSourceUpdates()();
}

uint64_t UITableViewListCoordinator.clearDataSourceUpdates()()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  swift_beginAccess();
  type metadata accessor for ListCoreBatchUpdates(0, v5, *(*((v4 & v2) + 0x60) + 8), v10);
  ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  v11 = *((*v3 & *v1) + 0xC8);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v11], v9, v6);
  return swift_endAccess();
}

void closure #2 in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(a2, a3 & 1, a4, 1, a5, a6);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3 & 1;
    *(v12 + 32) = a4;
    *(v12 + 40) = 0;
    *(v12 + 48) = a5;
    *(v12 + 56) = a6;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
    *(v13 + 24) = v12;
    v18[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed () -> ();
    v18[3] = &block_descriptor_89;
    v14 = _Block_copy(v18);
    v15 = a2;
    v16 = a4;

    [v11 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    ListTableViewCell.updateSeparatorsFromConfiguration()();
  }

  v7 = a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_cellConfiguration;
  v8 = *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x90));
  swift_beginAccess();
  v9 = type metadata accessor for CellConfiguration(0);
  v10 = *(v9 + 20);
  v11 = *(v7 + v10);
  *(v7 + v10) = v8;
  specialized CellConfiguration.updateValues<A>(pre:post:)(v11, v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
  if (v13)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v14 = v13;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v7 + *(v9 + 32)) = [a2 style];
  v15 = *(a1 + v12);
  if (v15)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v16 = v15;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_delegate + 8) = &protocol witness table for UITableViewListCoordinator<A, B>;
  return swift_unknownObjectWeakAssign();
}

void closure #1 in UITableViewListCoordinator.updateListContents(_:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *a2;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50), *((*MEMORY[0x1E69E7D40] & *a2) + 0x60), a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  v14 = *((v9 & v8) + 0x70);
  swift_beginAccess();
  (*(v11 + 16))(v13, &a2[v14], v10);
  v15 = *((*v7 & *a2) + 0xF8);
  if (a2[v15])
  {
    v16 = 1;
  }

  else
  {
    v17 = *((*v7 & *a2) + 0x88);
    swift_beginAccess();
    v16 = *&a2[v17];
    outlined copy of Transaction?(v16);
  }

  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v16, a1, v10);
  outlined consume of ListItemTint?(v16);
  (*(v11 + 8))(v13, v10);
  v18 = [a3 layer];
  v19 = 0.0;
  if (a2[v15] == 1)
  {
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10, 0.0);
    v22[1] = *(a1 + *(type metadata accessor for _RowVisitationContext(0, v10, WitnessTable, v21) + 40));
    ViewTraitCollection.zIndex.getter();
  }

  [v18 setZPosition_];
}

uint64_t @objc UITableViewListCoordinator.numberOfSections(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v9 = specialized UITableViewListCoordinator.numberOfSections(in:)(v5, v6, v7, v8);

  return v9;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v11 = specialized UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(a4, v8, v9, v10);

  return v11;
}

uint64_t closure #1 in UITableViewListCoordinator.tableView(_:canEditRowAt:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, a1, a2, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  if (_RowVisitationContext.canDelete.getter(v7) || _RowVisitationContext.canMove.getter(v7))
  {
    result = 1;
  }

  else
  {
    result = _RowVisitationContext.hasSwipeActions.getter(v7);
  }

  *a3 = result & 1;
  return result;
}

BOOL closure #1 in UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)@<W0>(uint64_t a1@<X1>, uint64_t a2@<X3>, _BOOL8 *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, a1, a2, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  result = _RowVisitationContext.canDelete.getter(v7);
  *a3 = result;
  return result;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v15 = specialized UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(v9, v12, v13, v14);

  (*(v7 + 8))(v9, v6);
  return v15;
}

void UITableViewListCoordinator.tableView(_:commit:forRowAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (a2 == 1)
  {
    *(v3 + *(v7 + 224)) = 1;
    (*(v9 + 16))(&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v11);
    v12 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = *(v7 + 80);
    *(v13 + 24) = *(v7 + 88);
    *(v13 + 40) = *(v7 + 104);
    *(v13 + 48) = v3;
    (*(v9 + 32))(v13 + v12, &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:);
    *(v14 + 24) = v13;
    v26 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v27 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed () -> ();
    v25 = &block_descriptor_66_0;
    v15 = _Block_copy(&aBlock);
    v16 = v3;
    v17 = a1;

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v26 = partial apply for closure #2 in UITableViewListCoordinator.tableView(_:commit:forRowAt:);
    v27 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_72;
    v19 = _Block_copy(&aBlock);
    v20 = v16;
    v21 = v17;

    [v21 performBatchUpdates:v15 completion:v19];
    _Block_release(v19);
    _Block_release(v15);
    UITableViewListCoordinator.commitUpdates()();
  }
}

void closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.deleteCell(forRowAt:)(a2, v8, WitnessTable);
  swift_endAccess();
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63400;
  (*(v11 + 16))(v13 + v12, a2, v10);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 deleteRowsAtIndexPaths:isa withRowAnimation:100];
}

uint64_t @objc UITableViewListCoordinator.tableView(_:commit:forRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  UITableViewListCoordinator.tableView(_:commit:forRowAt:)(v12, a4, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a3);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *((v9 & v8) + 0x70);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v14], v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  v16 = ListCoreDataSource.canMoveCell(fromRowAt:to:)(a1, a2, v10, WitnessTable);
  (*(v11 + 8))(v13, v10);
  v17 = type metadata accessor for IndexPath();
  if (v16)
  {
    v18 = a2;
  }

  else
  {
    v18 = a1;
  }

  return (*(*(v17 - 8) + 16))(a4, v18, v17);
}

Class @objc UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = a1;
  UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(v13, v10, v19, v16);

  v20 = *(v8 + 8);
  v20(v10, v7);
  v20(v13, v7);
  v21.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20(v16, v7);

  return v21.super.isa;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:moveRowAt:to:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  specialized UITableViewListCoordinator.tableView(_:moveRowAt:to:)(v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  specialized UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)();

  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
}

void closure #1 in UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if ([v6 isEditing])
      {

        v6 = v8;
      }

      else
      {
        [v8 bounds];
        if (v4 == v9)
        {
        }

        else
        {
          type metadata accessor for UpdateCoalescingTableView(0);
          v10 = swift_dynamicCastClassUnconditional();
          v11 = (v10 + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_visibleCellsUpdate);
          if (*(v10 + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_visibleCellsUpdate + 8) >= 2)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v12 = v10;
          v6 = v6;
          [v12 setNeedsLayout];

          *v11 = 1;
        }
      }
    }
  }
}

void @objc UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(v6, v7);
}

void @objc UITableViewListCoordinator.tableView(_:didEndDisplayingHeaderView:forSection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for ListTableViewHeaderFooter();
  v7 = swift_dynamicCastClass();
  v8 = a3;
  if (v7)
  {
    v11 = v8;
    v9 = a4;
    v10 = a1;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(0, 0, 0, &OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host, MEMORY[0x1E69DC3A0], &unk_1EFFB24D0, thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ()partial apply);

    v8 = v11;
  }
}

void UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v83 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v82 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = type metadata accessor for IndexPath();
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v76 = v10;
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*((v8 & v7) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v63 - v13;
  v81 = v14;
  v70 = type metadata accessor for Binding();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v63 - v15;
  v16 = *((v8 & v7) + 0x50);
  v17 = *((v8 & v7) + 0x60);
  v19 = type metadata accessor for ShadowListDataSource(0, v16, v17, v18);
  v73 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v79 = v17;
  v80 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = type metadata accessor for Optional();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v24 = &v63 - v23;
  v75 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  type metadata accessor for ListTableViewCell(0);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v64 = v27;
    v72 = a3;
    v71 = a2;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(1, 0, 0, &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host, MEMORY[0x1E69DC3F0], &unk_1EFFB23E0, partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ());
    v30 = *&v29[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
    if (v30)
    {
      v31 = v30;
      v32 = v9;
      v33 = v11;
      v34 = *(UIHostingViewBase.viewGraph.getter() + 88);

      specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(v83, v31, v34);

      v11 = v33;
      v9 = v32;
    }

    v35 = [v83 isEditing];
    v36 = v72;
    if (v35)
    {
      v37 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
      swift_beginAccess();
      v38 = v73;
      (*(v73 + 16))(v21, &v4[v37], v19);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v19);
      ListCoreDataSource.selectionValue(forRowAt:)(v36, v19, WitnessTable, v24);
      (*(v38 + 8))(v21, v19);
      v40 = v74;
      v41 = v75;
      if ((*(v74 + 48))(v24, 1, v75) == 1)
      {
        (*(v67 + 8))(v24, v68);
      }

      else
      {
        (*(v40 + 32))(v64, v24, v41);
        v42 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x78);
        swift_beginAccess();
        v43 = v69;
        v44 = v70;
        if (!(*(v69 + 48))(&v4[v42], 1, v70))
        {
          v45 = v65;
          (*(v43 + 16))(v65, &v4[v42], v44);
          v46 = v66;
          MEMORY[0x18D00ACC0](v44);
          (*(v43 + 8))(v45, v44);
          v47 = v81;
          v48 = (*(*(v82 + 104) + 64))(v64, v81);
          v41 = v75;
          v49 = v48;
          v50 = v46;
          v40 = v74;
          (*(v11 + 8))(v50, v47);
          if (v49)
          {
            [v29 setSelected:1 animated:0];
            (*(v40 + 8))(v64, v41);
LABEL_13:
            v51 = [objc_opt_self() sharedApplication];
            v53 = v77;
            v52 = v78;
            (*(v78 + 16))(v77, v36, v9);
            v54 = (*(v52 + 80) + 56) & ~*(v52 + 80);
            v55 = (v76 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
            v56 = swift_allocObject();
            v57 = v81;
            *(v56 + 2) = v80;
            *(v56 + 3) = v57;
            *(v56 + 4) = v79;
            *(v56 + 5) = *(v82 + 104);
            *(v56 + 6) = v4;
            (*(v52 + 32))(&v56[v54], v53, v9);
            *&v56[v55] = v29;
            v58 = v83;
            *&v56[(v55 + 15) & 0xFFFFFFFFFFFFFFF8] = v83;
            aBlock[4] = partial apply for closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:);
            aBlock[5] = v56;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_39;
            v59 = _Block_copy(aBlock);
            v60 = v71;
            v61 = v4;
            v62 = v58;

            [v51 _performBlockAfterCATransactionCommits_];
            _Block_release(v59);

            ListTableViewCell.updateSeparatorsFromConfiguration()();
            return;
          }
        }

        (*(v40 + 8))(v64, v41);
      }
    }

    if ([v29 isSelected])
    {
      [v29 setSelected:0 animated:0];
    }

    goto LABEL_13;
  }
}

id closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasDragItemsPreference))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasItemProviderTrait);
  }

  UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(a2, v6);
  [a4 isEditing];
  return specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a4);
}

uint64_t UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for IndexPath();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  swift_beginAccess();
  v15 = *(v2 + v14);

  v16 = a1;
  LODWORD(a1) = specialized Set.contains(_:)(a1, v15) & 1;

  if (a1 != v20)
  {
    if (a2)
    {
      v18 = v19;
      (*(v19 + 16))(v10, v16, v8);
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v13, v10);
      swift_endAccess();
      return (*(v18 + 8))(v13, v8);
    }

    else
    {
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v16, v7);
      swift_endAccess();
      return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v7, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    }
  }

  return result;
}

id UITableViewListCoordinator.tableView(_:didEndDisplaying:forRowAt:)(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for ListTableViewCell(0);
  if (swift_dynamicCastClass())
  {
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(0, 0, 0, &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host, MEMORY[0x1E69DC3F0], &unk_1EFFB23E0, partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ());
  }

  UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(a3, 0);
  [a1 isEditing];

  return specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a1);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:shouldIndentWhileEditingRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

unint64_t UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-v9 - 8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27[-v15 - 8];
  if ([a1 isEditing])
  {
    v17 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
    swift_beginAccess();
    (*(v8 + 16))(v10, &v4[v17], v7);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v7);
    ListCoreDataSource.selectionValue(forRowAt:)(a2, v7, WitnessTable, v16);
    (*(v8 + 8))(v10, v7);
    v19 = (*(*(AssociatedTypeWitness - 8) + 48))(v16, 1, AssociatedTypeWitness) != 1;
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [a1 cellForRowAtIndexPath_];

    if (v19)
    {
      type metadata accessor for ListTableViewCell(0);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v28[0] = *(v21 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
        v23 = *(v21 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
        v22 = *(v21 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
        v24 = *(v21 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
        v29 = *(v21 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
        v28[2] = v23;
        v28[3] = v22;
        v28[1] = v24;
        _s10Foundation9IndexPathVSgWOcTm_0(v28, v27, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

        if (*(&v28[0] + 1))
        {
          if (*(&v28[0] + 1) != 1)
          {
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v28, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
            return 1;
          }
        }

        else
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v28, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return v19;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(v10, v9, v12, v13);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

Swift::Bool __swiftcall UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(UITableView *_, Swift::Int shouldDrawTopSeparatorForSection)
{
  v3 = v2;
  v56 = shouldDrawTopSeparatorForSection;
  v53 = _;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for IndexPath();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v5 & v4) + 0x60);
  v9 = *(v8 + 8);
  v10 = *((v5 & v4) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v12;
  v14 = type metadata accessor for ShadowRowCollection(0, v10, v9, v13);
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v45 - v16;
  v18 = type metadata accessor for ShadowSectionCollection(0, v10, v9, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  v23 = type metadata accessor for ShadowListDataSource(0, v10, v8, v22);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v46 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  v29 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v57 = *(v24 + 16);
  v57(v28, &v3[v29], v23);
  ShadowListDataSource.sectionIDs.getter(v23, v30, v21);
  v58 = *(v24 + 8);
  v58(v28, v23);
  swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, v18);
  LOBYTE(v10) = Collection.isEmpty.getter();
  (*(v19 + 8))(v21, v18);
  if (v10)
  {
    return 0;
  }

  v57(v28, &v3[v29], v23);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v23);
  v33 = v56;
  v45 = WitnessTable;
  ListDiffable.rowIDs(forSectionAtOffset:)(v56, v23, WitnessTable);
  v58(v28, v23);
  v34 = v54;
  swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, v54);
  if ((Collection.isEmpty.getter() & 1) != 0 || (v35 = v57, v57(v28, &v3[v29], v23), v36 = &v3[v29], v37 = v46, v35(v46, v36, v23), v38 = v50, MEMORY[0x18D000680](0, v33), v39 = v47, v40 = ListDiffable.rowIndex(at:)(v47, v38, v23, v45), (*(v51 + 8))(v38, v52), v41 = v37, v42 = v58, v58(v41, v23), v43 = ShadowListDataSource.separatorConfiguration(forRowAt:)(v39, v40, v23), (*(v48 + 8))(v39, v49), v42(v28, v23), , , !v43))
  {
    v44 = [(UITableView *)v53 _drawsSeparatorAtTopOfSections];
    (*(v55 + 8))(v59, v34);
    return v44;
  }

  else
  {
    (*(v55 + 8))(v59, v34);
    return v43 == 1;
  }
}

Swift::Int @objc UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(v6, a4);

  return a4 & 1;
}

Swift::Bool __swiftcall UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(UITableView *_, Swift::Int shouldDrawBottomSeparatorForSection)
{
  v3 = v2;
  v84 = shouldDrawBottomSeparatorForSection;
  v78 = _;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for IndexPath();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4;
  v83 = v4;
  v9 = *((v5 & v4) + 0x60);
  v10 = *(v9 + 8);
  v11 = *((v5 & v8) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v74 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v65 - v13;
  v15 = type metadata accessor for ShadowRowCollection(0, v11, v10, v14);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v65 - v16;
  v18 = type metadata accessor for ShadowSectionCollection(0, v11, v10, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  v23 = type metadata accessor for ShadowListDataSource(0, v11, v9, v22);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  v29 = *((v5 & v83) + 0x70);
  swift_beginAccess();
  v79 = *(v24 + 16);
  v79(v28, &v3[v29], v23);
  ShadowListDataSource.sectionIDs.getter(v23, v30, v21);
  v83 = *(v24 + 8);
  (v83)(v28, v23);
  swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, v18);
  LOBYTE(v11) = Collection.isEmpty.getter();
  v31 = *(v19 + 8);
  v68 = v21;
  v69 = v19 + 8;
  v70 = v18;
  v67 = v31;
  v31(v21, v18);
  if (v11)
  {
    v32 = 0;
  }

  else
  {
    v33 = v79;
    v79(v28, &v3[v29], v23);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v23);
    v35 = v80;
    v66 = WitnessTable;
    ListDiffable.rowIDs(forSectionAtOffset:)(v84, v23, WitnessTable);
    (v83)(v28, v23);
    v36 = v82;
    v37 = ShadowRowCollection.count.getter(v82);
    (*(v81 + 8))(v35, v36);
    v38 = v37 < 1;
    v39 = v37 - 1;
    v40 = v29;
    v41 = v33;
    if (v38 || (v33(v28, &v3[v29], v23), v42 = v71, v41(v71, &v3[v29], v23), v43 = v75, MEMORY[0x18D000680](v39, v84), v82 = v40, v44 = v72, v45 = ListDiffable.rowIndex(at:)(v72, v43, v23, v66), (*(v76 + 8))(v43, v77), v46 = v42, v47 = v83, (v83)(v46, v23), ShadowListDataSource.separatorConfiguration(forRowAt:)(v44, v45, v23), v81 = v48, v50 = v49, v51 = v44, v40 = v82, (*(v73 + 8))(v51, v74), v47(v28, v23), , , !v50))
    {
      v53 = v83;
      v52 = v84;
      v54 = v3;
      v55 = [(UITableView *)v78 style];
      if (v55 == 1)
      {
        goto LABEL_7;
      }

      v81 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        return v55;
      }

      v56 = v41;
      v57 = v54;
      v56(v28, &v54[v40], v23);
      v58 = ListDiffable.hasFooter(forSectionAtOffset:)(v52);
      v53(v28, v23);
      if (v58)
      {
        v32 = 0;
      }

      else
      {
        v56(v28, &v54[v40], v23);
        v82 = v40;
        v59 = v68;
        ShadowListDataSource.sectionIDs.getter(v23, v60, v68);
        v53(v28, v23);
        v61 = v70;
        v62 = specialized ViewLeafView.platformView.getter(v70);
        v67(v59, v61);
        if (v81 >= v62)
        {
          v32 = 1;
        }

        else
        {
          v63 = v81;
          v56(v28, &v57[v82], v23);
          LOBYTE(v63) = ListDiffable.hasHeader(forSectionAtOffset:)(v63);
          v53(v28, v23);
          v32 = v63 ^ 1;
        }
      }

      static Semantics.v3.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) != 0 && [(UITableView *)v78 style]== UITableViewStylePlain)
      {
LABEL_7:
        v32 = 1;
      }
    }

    else
    {
      v32 = v50 == 1;
    }
  }

  LOBYTE(v55) = v32 & 1;
  return v55;
}

Swift::Int @objc UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(v6, a4);

  return a4 & 1;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = specialized UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t UITableViewListCoordinator.tableView(_:cellForRowAt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = MEMORY[0x18D00C850](0x6C6C65437473694CLL, 0xE800000000000000, v10);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = a1;
  v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:isa];

  swift_getAssociatedTypeWitness();
  v16 = swift_dynamicCastUnknownClassUnconditional();
  v17 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x70);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v5[v17], v8);
  v27 = v5;
  v28 = v16;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a2, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:cellForRowAt:), v26, v8, MEMORY[0x1E69E7CA8] + 8, WitnessTable, &v29);
  (*(v9 + 8))(v12, v8);
  type metadata accessor for ListTableViewCell(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = v15;
    UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(v20, v25, a2, 0);
    v22 = v21;
    [v20 setAutomaticallyUpdatesBackgroundConfiguration_];
    [v20 setAutomaticallyUpdatesContentConfiguration_];
  }

  return v16;
}

void closure #1 in UITableViewListCoordinator.tableView(_:cellForRowAt:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *a2;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50), *((*MEMORY[0x1E69E7D40] & *a2) + 0x60), a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v14 = *((v9 & v8) + 0x70);
  swift_beginAccess();
  (*(v11 + 16))(v13, &a2[v14], v10);
  v15 = *((*v7 & *a2) + 0x88);
  swift_beginAccess();
  v16 = *&a2[v15];
  outlined copy of Transaction?(v16);
  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v16, a1, v10);
  outlined consume of ListItemTint?(v16);
  (*(v11 + 8))(v13, v10);
  if (a2[*((*v7 & *a2) + 0xF8)] == 1)
  {
    v17 = [a3 layer];
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
    v20[1] = *(a1 + *(type metadata accessor for _RowVisitationContext(0, v10, WitnessTable, v19) + 40));
    ViewTraitCollection.zIndex.getter();
    [v17 setZPosition_];
  }
}

id @objc UITableViewListCoordinator.tableView(_:cellForRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v14 = UITableViewListCoordinator.tableView(_:cellForRowAt:)(v10, v9, v12, v13);

  (*(v7 + 8))(v9, v6);

  return v14;
}

id @objc UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(v6, a4, ListDiffable.hasHeader(forSectionAtOffset:), ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:), 0);
  v9 = v8;

  return v9;
}

uint64_t ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 104))(&v12, v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  if (v14)
  {
    return 0;
  }

  else
  {
    return v13 & (v12 != 0);
  }
}

double @objc UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v11 = specialized UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(a4, v8, v9, v10);

  return v11;
}

double @objc UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  v11 = specialized UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(a4, v8, v9, v10);

  return v11;
}

void UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), int a5)
{
  HIDWORD(v29) = a5;
  v33 = a4;
  v34 = a1;
  v7 = v5;
  v9 = *v5;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  v31 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x50);
  v12 = type metadata accessor for ShadowListDataSource(0, v31, v11, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *((v10 & v9) + 0x70);
  swift_beginAccess();
  v17 = *(v13 + 16);
  v17(v15, &v7[v16], v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
  v32 = a2;
  LOBYTE(a2) = a3(a2, v12, WitnessTable);
  v30 = *(v13 + 8);
  v30(v15, v12);
  if (a2)
  {
    v19 = MEMORY[0x18D00C850](0x646165487473694CLL, 0xEA00000000007265);

    v20 = [v34 dequeueReusableHeaderFooterViewWithIdentifier_];

    if (v20)
    {
      swift_getAssociatedTypeWitness();
      v21 = swift_dynamicCastUnknownClassUnconditional();
      v17(v15, &v7[v16], v12);
      v22 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
      swift_beginAccess();
      v23 = *&v7[v22];
      outlined copy of Transaction?(v23);
      v24 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
      v33(v21, v23, v32, v12, v24);
      outlined consume of ListItemTint?(v23);
      v30(v15, v12);
      type metadata accessor for ListTableViewHeaderFooter();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        v27 = v20;
        v28 = v26;
        specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v28, SBYTE4(v29), v34);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id @objc UITableViewListCoordinator.tableView(_:viewForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(v6, a4, ListDiffable.hasFooter(forSectionAtOffset:), ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:), 1);
  v9 = v8;

  return v9;
}

double @objc UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  specialized UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(a4, v8, v9, v10);
  v12 = v11;

  return v12;
}

double @objc UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  specialized UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(a4, v8, v9, v10);
  v12 = v11;

  return v12;
}

uint64_t UITableViewListCoordinator.listTableViewCell(_:platformItemIsSelected:)(_BYTE *a1, int a2)
{
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16];
  v88 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior];
  v89 = v28;
  v29 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48];
  v90 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32];
  v91 = v29;
  v92 = a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64];
  result = *(&v88 + 1);
  if (*(&v88 + 1) == 1 || (BYTE1(v88) & 1) == 0 || (v88 & 1) != 0)
  {
    return result;
  }

  LODWORD(v83) = a2;
  v85 = v2;
  v80 = v11;
  v86 = &v76 - v25;
  v82 = v17;
  v81 = v8;
  v87 = v27;
  v84 = v26;
  v31 = *(&v89 + 1);
  v32 = v90;
  v33 = v91;
  outlined copy of AppIntentExecutor?(*(&v88 + 1), v89);
  outlined copy of AppIntentExecutor?(v31, v32);
  outlined copy of AppIntentExecutor?(*(&v32 + 1), v33);
  v34 = [a1 _tableView];
  if (!v34)
  {
    return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v35 = v34;
  v36 = [v34 indexPathForCell_];
  if (!v36)
  {

    return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v79 = v35;
  v37 = v36;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v86;
  v38 = v87;
  v40 = *(v87 + 32);
  v41 = v84;
  v40(v86, v23, v84);
  if (v83)
  {
    v42 = v82;
    (*(v38 + 16))(v82, v39, v41);
    (*(v38 + 56))(v42, 0, 1, v41);
    v43 = v85;
    v44 = v41;
    v45 = v39;
    v46 = v38;
    v47 = *((*MEMORY[0x1E69E7D40] & *v85) + 0xB8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v42, v43 + v47);
    swift_endAccess();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v49 = v79;
    [v79 selectRowAtIndexPath:isa animated:0 scrollPosition:0];

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    return (*(v46 + 8))(v45, v44);
  }

  v76 = v40;
  v50.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v51 = v85;
  v52 = v38;
  v53 = v50.super.isa;
  [v79 deselectRowAtIndexPath:v50.super.isa animated:0];

  v54 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xB8);
  swift_beginAccess();
  (*(v52 + 16))(v14, v39, v41);
  v55 = *(v52 + 56);
  v78 = v52 + 56;
  v77 = v55;
  v55(v14, 0, 1, v41);
  v56 = *(v6 + 48);
  v57 = MEMORY[0x1E6969C28];
  v58 = MEMORY[0x1E69E6720];
  v83 = v54;
  v59 = v51 + v54;
  v60 = v56;
  v61 = v81;
  _s10Foundation9IndexPathVSgWOcTm_0(v59, v81, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v62 = v87;
  _s10Foundation9IndexPathVSgWOcTm_0(v14, v61 + v60, &lazy cache variable for type metadata for IndexPath?, v57, v58, _s10Foundation9IndexPathVSgMaTm_0);
  v63 = *(v62 + 48);
  if (v63(v61, 1, v41) == 1)
  {

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    (*(v62 + 8))(v86, v41);
    v64 = v61;
    if (v63(v61 + v60, 1, v41) == 1)
    {
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v61, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
      v65 = v84;
      v66 = v85;
      v67 = v82;
LABEL_18:
      v77(v67, 1, 1, v65);
      v75 = v83;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v67, v66 + v75);
      return swift_endAccess();
    }

    return outlined destroy of (IndexPath?, IndexPath?)(v64);
  }

  v68 = v80;
  _s10Foundation9IndexPathVSgWOcTm_0(v61, v80, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v64 = v61;
  if (v63(v61 + v60, 1, v41) == 1)
  {

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    v69 = *(v87 + 8);
    v69(v86, v41);
    v69(v68, v41);
    return outlined destroy of (IndexPath?, IndexPath?)(v64);
  }

  v76(v20, v61 + v60, v41);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = v85;
  LODWORD(v76) = v70;

  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v88, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  v71 = v68;
  v72 = *(v87 + 8);
  v72(v20, v41);
  v73 = MEMORY[0x1E6969C28];
  v74 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v72(v86, v41);
  v72(v71, v41);
  result = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v81, &lazy cache variable for type metadata for IndexPath?, v73, v74, _s10Foundation9IndexPathVSgMaTm_0);
  v65 = v41;
  v67 = v82;
  if (v76)
  {
    goto LABEL_18;
  }

  return result;
}

void UITableViewListCoordinator.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v65 = *MEMORY[0x1E69E7D40] & v5;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v59 - v8;
  v63 = *(*((v6 & v5) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - v10;
  v64 = v11;
  v12 = type metadata accessor for Binding();
  v67 = *(v12 - 1);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v13;
  v15 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  if ([a1 isEditing])
  {
    v28 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
    swift_beginAccess();
    (*(v16 + 16))(v18, &v3[v28], v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
    ListCoreDataSource.selectionValue(forRowAt:)(v69, v15, WitnessTable, v22);
    (*(v16 + 8))(v18, v15);
    v30 = v23;
    if ((*(v23 + 48))(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v66 + 8))(v22, v20);
      return;
    }

    (*(v23 + 32))(v27, v22, AssociatedTypeWitness);
    v43 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
    swift_beginAccess();
    v45 = v67;
    v44 = v68;
    if (!(*(v67 + 48))(&v3[v43], 1, v68))
    {
      v47 = v61;
      (*(v45 + 16))(v61, &v3[v43], v44);
      swift_endAccess();
      v48 = v62;
      MEMORY[0x18D00ACC0](v44);
      v49 = v64;
      (*(*(v65 + 104) + 32))(v27, v64);
      specialized Binding.wrappedValue.setter(v48);
      (*(v63 + 8))(v48, v49);
      (*(v45 + 8))(v47, v44);
      (*(v30 + 8))(v27, AssociatedTypeWitness);
      return;
    }

    (*(v30 + 8))(v27, AssociatedTypeWitness);
    goto LABEL_20;
  }

  v31 = v69;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v68 = [a1 cellForRowAtIndexPath_];

  if (!v68)
  {
    return;
  }

  type metadata accessor for ListTableViewCell(0);
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v70 = *(v33 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
    v35 = *(v33 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
    v34 = *(v33 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
    v36 = *(v33 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
    v74 = *(v33 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
    v72 = v35;
    v73 = v34;
    v71 = v36;
    v37 = v70;
    v38 = *(&v70 + 1);
    if (*(&v70 + 1))
    {
      if (*(&v70 + 1) == 1)
      {
        goto LABEL_18;
      }

      v39 = *(&v71 + 1);
      v41 = v72;
      v40 = v73;
      outlined copy of AppIntentExecutor?(*(&v70 + 1), v71);
      outlined copy of AppIntentExecutor?(v39, v41);
      v42 = outlined copy of AppIntentExecutor?(*(&v41 + 1), v40);
      v38(v42);
    }

    else
    {
      v50 = *(&v71 + 1);
      v52 = v72;
      v51 = v73;
      outlined copy of AppIntentExecutor?(0, v71);
      outlined copy of AppIntentExecutor?(v50, v52);
      outlined copy of AppIntentExecutor?(*(&v52 + 1), v51);
    }

    v53 = MEMORY[0x1E69E7D40];
    if ((v37 & 1) == 0)
    {
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v70, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

      v55 = type metadata accessor for IndexPath();
      v56 = *(v55 - 8);
      v57 = v60;
      (*(v56 + 16))(v60, v31, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = *((*v53 & *v3) + 0xB8);
      swift_beginAccess();
      outlined assign with take of IndexPath?(v57, &v3[v58]);
LABEL_20:
      swift_endAccess();
      return;
    }

    v54 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v54 animated:UITableViewListCoordinator.isAnimated.getter() & 1];
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v70, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

LABEL_18:
    return;
  }

  v46 = v68;
}

id UITableViewListCoordinator.tableView(_:didDeselectRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & v5;
  v40 = *(*((v6 & v5) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v36 - v7;
  v41 = v8;
  v9 = type metadata accessor for Binding();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - v10;
  v12 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v42 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  result = [a1 isEditing];
  if (result)
  {
    v26 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
    swift_beginAccess();
    (*(v13 + 16))(v15, &v3[v26], v12);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
    ListCoreDataSource.selectionValue(forRowAt:)(v45, v12, WitnessTable, v19);
    (*(v13 + 8))(v15, v12);
    v28 = v20;
    if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v42 + 8))(v19, v17);
    }

    else
    {
      (*(v20 + 32))(v24, v19, AssociatedTypeWitness);
      v29 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
      swift_beginAccess();
      v31 = v43;
      v30 = v44;
      if ((*(v43 + 48))(&v3[v29], 1, v44))
      {
        (*(v28 + 8))(v24, AssociatedTypeWitness);
        return swift_endAccess();
      }

      else
      {
        v32 = &v3[v29];
        v33 = v37;
        (*(v31 + 16))(v37, v32, v30);
        swift_endAccess();
        v34 = v38;
        MEMORY[0x18D00ACC0](v30);
        v35 = v41;
        (*(*(v39 + 104) + 48))(v24, v41);
        specialized Binding.wrappedValue.setter(v34);
        (*(v40 + 8))(v34, v35);
        (*(v31 + 8))(v33, v30);
        return (*(v28 + 8))(v24, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:canEditRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:willBeginEditingRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id @objc UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = specialized UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

void (*UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(void *a1, uint64_t a2))()
{
  v16 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *((v5 & v4) + 0x50);
  *(v11 + 24) = *(v15 + 88);
  v12 = v16;
  *(v11 + 40) = *((v5 & v4) + 0x68);
  *(v11 + 48) = v12;
  *(v11 + 56) = v9;
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = v12;
  return partial apply for closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:);
}

void closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a1;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  *(v17 + 5) = a7;
  v18 = v26;
  *(v17 + 6) = v26;
  (*(v13 + 32))(&v17[v16], &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = v27;
  *&v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v27;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:);
  *(v20 + 24) = v17;
  v34 = partial apply for thunk for @callee_guaranteed () -> ();
  v35 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> ();
  v33 = &block_descriptor_22;
  v21 = _Block_copy(&aBlock);

  v22 = v19;

  v34 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v35 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v33 = &block_descriptor_22_0;
  v23 = _Block_copy(&aBlock);
  [v22 performBatchUpdates:v21 completion:v23];
  _Block_release(v23);
  _Block_release(v21);
  LOBYTE(aBlock) = 17;
  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v28;
  v24[3] = v25;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = v18;

  static Update.enqueueAction(reason:_:)();

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v13 = type metadata accessor for ShadowListDataSource(0, a4, a6, v12);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v13);
    ListCoreDataSource.deleteCell(forRowAt:)(a2, v13, WitnessTable);
    swift_endAccess();
    _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v15 = type metadata accessor for IndexPath();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18CD63400;
    (*(v16 + 16))(v18 + v17, a2, v15);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 deleteRowsAtIndexPaths:isa withRowAnimation:100];
  }
}

void closure #3 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource(0, a2, a4, v8);
    ShadowListDataSource.discardUpdatesForDeletion()();
    swift_endAccess();
  }
}

uint64_t UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  result = 0;
  if (v3)
  {
    type metadata accessor for ListTableViewCell(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        LOBYTE(v13) = 17;
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
        static Update.dispatchImmediately<A>(reason:_:)();
      }

      else
      {

        _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(&v27);
      }

      v12[11] = v38;
      v12[12] = v39;
      v12[7] = v34;
      v12[8] = v35;
      v12[9] = v36;
      v12[10] = v37;
      v12[3] = v30;
      v12[4] = v31;
      v12[5] = v32;
      v12[6] = v33;
      v12[0] = v27;
      v12[1] = v28;
      v12[2] = v29;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      v12[13] = v40;
      v13 = v27;
      v14 = v28;
      v15 = v29;
      if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v13) == 1)
      {
        return 0;
      }

      else
      {
        v45 = v17;
        v46 = v18;
        v47 = v19;
        v41 = v13;
        v42 = v14;
        v43 = v15;
        v44 = v16;
        v8 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOcTm_0(&v13, &v11, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        v9 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v12, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:));
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v13, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        return v10;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UITableViewListCoordinator.tableView(_:trailingSwipeActionsConfigurationForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  result = 0;
  if (v3)
  {
    type metadata accessor for ListTableViewCell(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        LOBYTE(v13[0]) = 17;
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
        static Update.dispatchImmediately<A>(reason:_:)();
      }

      else
      {

        _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(&v21);
      }

      v12[11] = v32;
      v12[12] = v33;
      v12[7] = v28;
      v12[8] = v29;
      v12[9] = v30;
      v12[10] = v31;
      v12[3] = v24;
      v12[4] = v25;
      v12[5] = v26;
      v12[6] = v27;
      v12[0] = v21;
      v12[1] = v22;
      v12[2] = v23;
      v18 = v32;
      v19 = v33;
      v20 = v34;
      v14 = v28;
      v15 = v29;
      v16 = v30;
      v17 = v31;
      v13[3] = v24;
      v13[4] = v25;
      v13[5] = v26;
      v13[6] = v27;
      v12[13] = v34;
      v13[0] = v21;
      v13[1] = v22;
      v13[2] = v23;
      if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v13) == 1)
      {
        return 0;
      }

      else
      {
        v39 = v18;
        v40 = v19;
        v41 = v20;
        v35 = v14;
        v36 = v15;
        v37 = v16;
        v38 = v17;
        v8 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOcTm_0(&v14, &v11, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        v9 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v12, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UITableViewListCoordinator.tableView(_:trailingSwipeActionsConfigurationForRowAt:));
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v14, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        return v10;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(_OWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v33 = a6;
  v31 = a5;
  v32 = a3;
  v34 = a7;
  v9 = *MEMORY[0x1E69E7D40];
  v28 = *a2;
  v29 = v9;
  v30 = v9 & v28;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[5];
  v37[4] = a1[4];
  v37[5] = v13;
  v37[6] = a1[6];
  v14 = a1[1];
  v37[0] = *a1;
  v37[1] = v14;
  v15 = a1[3];
  v37[2] = a1[2];
  v37[3] = v15;
  v27 = type metadata accessor for UISwipeActionsConfiguration();
  v16 = a1[5];
  v36[4] = a1[4];
  v36[5] = v16;
  v36[6] = a1[6];
  v17 = a1[1];
  v36[0] = *a1;
  v36[1] = v17;
  v18 = a1[3];
  v36[2] = a1[2];
  v36[3] = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v20 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  *(v21 + 16) = *((v29 & v28) + 0x50);
  *(v21 + 24) = *(v30 + 88);
  *(v21 + 40) = *((v22 & v23) + 0x68);
  *(v21 + 48) = v19;
  v24 = v32;
  *(v21 + 56) = v32;
  (*(v11 + 32))(v21 + v20, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  outlined init with copy of SwipeActions.Configuration(v37, &v35);
  v25 = v24;
  v26 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v36, 0, v33, v21);

  *v34 = v26;
}

uint64_t closure #1 in closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(a4, a5);

    v10();
  }

  return a1(1);
}

id @objc UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = a5(v12, v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t UITableViewListCoordinator.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x108);
  swift_beginAccess();
  return _s10Foundation9IndexPathVSgWOcTm_0(v1 + v3, a1, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
}

double UITableViewListCoordinator.id(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v32 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = *((v6 & v5) + 0x60);
  v30 = *((v6 & v5) + 0x50);
  v31 = v7;
  v8 = type metadata accessor for ShadowListDataSource(0, v30, v7, a2);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for IntelligenceDataSourceItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11, v17);
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x1E69DBC38])
  {
    (*(v12 + 96))(v14, v11);
    (*(v16 + 32))(v19, v14, v15);
    v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
    swift_beginAccess();
    v21 = v33;
    v22 = (*(v33 + 16))(v10, &v3[v20], v8);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v24 = v32;
    v25 = *(v32 + 88);
    *(&v30 - 4) = v30;
    *(&v30 - 3) = v25;
    v26 = *(v24 + 104);
    *(&v30 - 2) = v31;
    *(&v30 - 1) = v26;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8, v23);
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v19, partial apply for closure #1 in UITableViewListCoordinator.id(for:), (&v30 - 6), v8, MEMORY[0x1E69E69B8], WitnessTable, v34);
    (*(v21 + 8))(v10, v8);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v29 = v34;
    *(v34 + 32) = 0;
    result = 0.0;
    *v29 = 0u;
    v29[1] = 0u;
  }

  return result;
}

void closure #1 in UITableViewListCoordinator.id(for:)(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = type metadata accessor for ShadowListDataSource(255, a1, a2, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v4);
  v7 = type metadata accessor for _RowVisitationContext(0, v4, WitnessTable, v6);
  _RowVisitationContext.intelligenceDataSourceItemID.getter(v7, a3);
}

uint64_t UITableViewListCoordinator.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v9 = type metadata accessor for ShadowListDataSource(0, v7, v8, a4);
  (*(*(v9 - 8) + 8))(&v4[v6], v9);
  v10 = *((*v5 & *v4) + 0x78);
  type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v4[v10], v11);
  v12 = &v4[*((*v5 & *v4) + 0x80)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v12, v12[1]);
  outlined consume of ListItemTint?(*&v4[*((*v5 & *v4) + 0x88)]);

  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v4[*((*v5 & *v4) + 0xB8)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v14 = *((*v5 & *v4) + 0xC0);
  v16 = type metadata accessor for ListCoreBatchUpdates(0, v7, *(v8 + 8), v15);
  (*(*(v16 - 8) + 8))(&v4[v14], v16);
  v17 = *((*v5 & *v4) + 0xC8);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 8))(&v4[v17], v18);

  v19 = &v4[*((*v5 & *v4) + 0x100)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v19, v19[1]);
  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v4[*((*v5 & *v4) + 0x108)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v13, _s10Foundation9IndexPathVSgMaTm_0);
}

uint64_t @objc UITableViewListCoordinator.__ivar_destroyer(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v9 = type metadata accessor for ShadowListDataSource(0, v7, v8, a4);
  (*(*(v9 - 8) + 8))(&a1[v6], v9);
  v10 = *((*v5 & *a1) + 0x78);
  type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&a1[v10], v11);
  v12 = &a1[*((*v5 & *a1) + 0x80)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v12, v12[1]);
  outlined consume of ListItemTint?(*&a1[*((*v5 & *a1) + 0x88)]);

  v13 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&a1[*((*v5 & *a1) + 0xB8)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v14 = *((*v5 & *a1) + 0xC0);
  v16 = type metadata accessor for ListCoreBatchUpdates(0, v7, *(v8 + 8), v15);
  (*(*(v16 - 8) + 8))(&a1[v14], v16);
  v17 = *((*v5 & *a1) + 0xC8);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 8))(&a1[v17], v18);

  v19 = &a1[*((*v5 & *a1) + 0x100)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v19, v19[1]);
  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&a1[*((*v5 & *a1) + 0x108)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v13, _s10Foundation9IndexPathVSgMaTm_0);
}

unint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>, a3);

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceNeedsAppIntentsPayloadsFetch(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>, a3);

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>, a4);
  *v9 = v4;
  v9[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>, a3);
  *v7 = v3;
  v7[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for UITableViewListCoordinator<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of (IndexPath?, IndexPath?)(uint64_t a1)
{
  type metadata accessor for (IndexPath?, IndexPath?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding()
{
  result = lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding;
  if (!lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding);
  }

  return result;
}

void specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(__n128), uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v41 = a2;
  v42 = a3;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = *a4;
  v16 = *(v7 + *a4);
  if (v16)
  {
    v17 = v16;
    if (((UIHostingViewBase.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      UIHostingViewBase.isHiddenForReuse.setter();
    }
  }

  a5(v12);
  v18 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v18 - 8) + 48))(v14, 1, v18))
  {
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  }

  else
  {
    v19 = UIBackgroundConfiguration.customView.getter();
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    if (v19)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
      if (swift_dynamicCastClass() && (UIHostingViewBase.isHiddenForReuse.getter() & 1) == (a1 & 1))
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }

  v20 = *(v7 + v15);
  if (v20)
  {
    v21 = v20;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
    ViewGraphGeometryObservers.removeAll()();
    swift_endAccess();
  }

  if (a1)
  {
    v22 = *(v7 + v15);
    if (v22)
    {
      v23 = v22;
      v24 = [v23 superview];
      if (v24)
      {
        v25 = v24;
        v26 = v41;
        if (v41)
        {

          [v25 bounds];
          CGRectGetWidth(v48);
          _ProposedSize.init(width:height:)();
          v27 = v44;
          v28 = v45;
          v38 = v45;
          v29 = v46;
          v36 = v44;
          v37 = v46;
          v30 = v47;
          UIHostingViewBase.viewGraph.getter();

          v44 = v27;
          v45 = v28;
          v46 = v29;
          v47 = v30;
          v31 = swift_allocObject();
          v32 = v42;
          *(v31 + 16) = v26;
          *(v31 + 24) = v32;
          swift_beginAccess();
          type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);

          ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
          swift_endAccess();

          v33 = *(UIHostingViewBase.viewGraph.getter() + 88);

          swift_beginAccess();
          v34 = *(v33 + 352);

          v43 = v34;
          v44 = v36;
          v45 = v38;
          v46 = v37;
          v47 = v30;
          ViewGraphGeometryObservers.resetObserver(for:)();

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26, v32);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

id specialized UITableViewListCoordinator.init(dataSource:selection:transaction:editMode:sidebarStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v7 = *v5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v40 = &v38 - v12;
  v38 = *((v9 & v7) + 0x60);
  v14 = type metadata accessor for ShadowListDataSource(0, v10, v38, v13);
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = *a4;
  v44 = a4[1];
  v45 = v17;
  v46 = *(a4 + 16);
  v39 = *((v9 & v7) + 0x78);
  v18 = v39;
  v19 = type metadata accessor for Binding();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = &v5[*((*v8 & *v5) + 0x80)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = *((*v8 & *v5) + 0x88);
  *&v5[v21] = 1;
  v22 = &v5[*((*v8 & *v5) + 0x98)];
  *v22 = 0;
  *(v22 + 4) = 256;
  v23 = *((*v8 & *v5) + 0xA0);
  *&v5[v23] = closure #1 in variable initialization expression of UITableViewListCoordinator.helper();
  *&v5[*((*v8 & *v5) + 0xA8)] = 0;
  v5[*((*v8 & *v5) + 0xB0)] = 1;
  v24 = *((*v8 & *v5) + 0xB8);
  v25 = type metadata accessor for IndexPath();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = v38;
  ListCoreBatchUpdates.init()(v10, *(v38 + 8), &v5[*((*v8 & *v5) + 0xC0)]);
  (*(v11 + 56))(&v5[*((*v8 & *v5) + 0xC8)], 1, 1, v10);
  v5[*((*v8 & *v5) + 0xD0)] = 0;
  v5[*((*v8 & *v5) + 0xD8)] = 0;
  v5[*((*v8 & *v5) + 0xE0)] = 0;
  v5[*((*v8 & *v5) + 0xE8)] = 0;
  *&v5[*((*v8 & *v5) + 0xF0)] = MEMORY[0x1E69E7CD0];
  v5[*((*v8 & *v5) + 0xF8)] = 0;
  v27 = &v5[*((*v8 & *v5) + 0x100)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v5[*((*v8 & *v5) + 0x108)];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v29 = v40;
  (*(v11 + 16))(v40, v43, v10);
  ShadowListDataSource.init(_:)(v29, v10, v26, v16);
  (*(v41 + 32))(&v5[*((*v8 & *v5) + 0x70)], v16, v42);
  v30 = v39;
  swift_beginAccess();
  v31 = type metadata accessor for Optional();
  (*(*(v31 - 8) + 24))(&v5[v30], v47, v31);
  swift_endAccess();
  swift_beginAccess();
  v32 = *&v5[v21];
  v33 = v48;
  *&v5[v21] = v48;
  outlined copy of Transaction?(v33);
  outlined consume of ListItemTint?(v32);
  v34 = *v20;
  v35 = *(v20 + 1);
  v36 = v44;
  *v20 = v45;
  *(v20 + 1) = v36;
  v20[16] = v46;
  outlined consume of Binding<NavigationSplitViewColumn>?(v34, v35);
  v5[*((*v8 & *v5) + 0x90)] = v50;
  v51.receiver = v5;
  v51.super_class = ObjectType;
  return objc_msgSendSuper2(&v51, sel_init);
}

id specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  result = [a1 dragInteractionEnabled];
  if ((v4 != 0) != result)
  {
    return [a1 setDragInteractionEnabled_];
  }

  return result;
}

void specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90));
  v11 = a1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
  swift_beginAccess();
  *(v11 + 1) = v10;
  v12 = OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host;
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
  if (v13)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v14 = v13;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v11 + 8) = [a3 style];
  v15 = *(a1 + v12);
  if (v15)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v16 = v15;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  swift_beginAccess();
  *v11 = a2 & 1;
  if (a2)
  {
    static UIListContentConfiguration.footer()();
  }

  else
  {
    static UIListContentConfiguration.header()();
  }

  specialized HeaderFooterConfiguration.Values.init(_:)(v9, v23);
  v17 = v23[1];
  *(v11 + 24) = v23[0];
  *(v11 + 40) = v17;
  *(v11 + 56) = v23[2];

  swift_endAccess();
  v18 = *(a1 + v12);
  if (v18)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v19 = v18;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v11 + 17) = UITableView.isPseudoInsetGrouped.getter();
  v20 = *(a1 + v12);
  if (v20)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>(0);
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    v21 = v20;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

uint64_t specialized UITableViewListCoordinator.numberOfSections(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v9 = type metadata accessor for ShadowSectionCollection(0, v7, *(v8 + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v14 = type metadata accessor for ShadowListDataSource(0, v7, v8, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = *((v6 & v5) + 0x70);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v4[v18], v14);
  ShadowListDataSource.sectionIDs.getter(v14, v19, v12);
  (*(v15 + 8))(v17, v14);
  v20 = specialized ViewLeafView.platformView.getter(v9);
  (*(v10 + 8))(v12, v9);
  return v20;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v10 = type metadata accessor for ShadowListDataSource(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v15 = type metadata accessor for ShadowRowCollection(0, v8, *(v9 + 8), v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *((v7 & v6) + 0x70);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v19], v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v10);
  ListDiffable.rowIDs(forSectionAtOffset:)(a1, v10, WitnessTable);
  (*(v11 + 8))(v13, v10);
  v21 = ShadowRowCollection.count.getter(v15);
  (*(v16 + 8))(v18, v15);
  return v21;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:canEditRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v46 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *((v9 & v7) + 0x50);
  v11 = *((v9 & v7) + 0x60);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for ShadowRowCollection(0, v10, v12, a4);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v44 - v14;
  v16 = type metadata accessor for ShadowSectionCollection(0, v10, v12, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v44 = v10;
  v45 = v11;
  v21 = type metadata accessor for ShadowListDataSource(0, v10, v11, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v50 = a1;
  v25 = IndexPath.section.getter();
  v26 = *((*v8 & *v5) + 0x70);
  swift_beginAccess();
  v51 = *(v22 + 16);
  v52 = v26;
  v51(v24, v5 + v26, v21);
  ShadowListDataSource.sectionIDs.getter(v21, v27, v19);
  v53 = *(v22 + 8);
  v53(v24, v21);
  v28 = specialized ViewLeafView.platformView.getter(v16);
  (*(v17 + 8))(v19, v16);
  if (v25 >= v28 || (v29 = v50, v30 = IndexPath.row.getter(), v51(v24, v5 + v52, v21), v31 = IndexPath.section.getter(), v32 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v21), v33 = v47, ListDiffable.rowIDs(forSectionAtOffset:)(v31, v21, v32), v53(v24, v21), v34 = v49, v35 = ShadowRowCollection.count.getter(v49), (*(v48 + 8))(v33, v34), v30 >= v35))
  {
    v42 = 0;
  }

  else
  {
    v36 = (v51)(v24, v5 + v52, v21);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = v46;
    v39 = *(v46 + 88);
    *(&v44 - 4) = v44;
    *(&v44 - 3) = v39;
    v40 = *(v38 + 104);
    *(&v44 - 2) = v45;
    *(&v44 - 1) = v40;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v21, v37);
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v29, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:canEditRowAt:), (&v44 - 6), v21, MEMORY[0x1E69E6370], WitnessTable, &v54);
    v53(v24, v21);
    v42 = v54;
  }

  return v42 & 1;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v4);
  v8 = v7 + 11;
  v9 = v7 + 13;
  v10 = v7[10];
  v11 = v7[12];
  v12 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = *((v6 & v5) + 0x70);
  swift_beginAccess();
  (*(v13 + 16))(v15, &v4[v16], v12);
  *&v17 = v10;
  *(&v17 + 1) = *v8;
  *&v18 = v11;
  *(&v18 + 1) = *v9;
  v26 = v17;
  v27 = v18;
  type metadata accessor for UITableViewCellEditingStyle(0);
  v20 = v19;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v12);
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v24, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:editingStyleForRowAt:), v25, v12, v20, WitnessTable, &v28);
  (*(v13 + 8))(v15, v12);
  if (v29)
  {
    return 0;
  }

  else
  {
    return v28;
  }
}

uint64_t specialized UITableViewListCoordinator.tableView(_:canMoveRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *((v7 & v6) + 0x70);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v12], v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  LOBYTE(a1) = ListCoreDataSource.canMoveCell(forRowAt:)(a1, v8, WitnessTable);
  (*(v9 + 8))(v11, v8);
  return a1 & 1;
}

double specialized UITableViewListCoordinator.tableView(_:moveRowAt:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v8);
  ListCoreDataSource.moveCell(fromRowAt:to:)(a1, a2, v8, WitnessTable);
  swift_endAccess();
  return UITableViewListCoordinator.commitUpdates()();
}

void *specialized UITableViewListCoordinator.tableView(_:willBeginEditingRowAt:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8)) = 1;
  result = UITableViewListCoordinator.resolvedEditMode.getter(&v6);
  if (v6 != 2)
  {
    v3 = (v0 + *((*v1 & *v0) + 0x80));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

void *specialized UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8)) = 0;
  result = UITableViewListCoordinator.resolvedEditMode.getter(&v6);
  if (v6)
  {
    v3 = (v0 + *((*v1 & *v0) + 0x80));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 bounds];
  CGRectGetWidth(v7);
  _ProposedSize.init(width:height:)();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0);
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();

  ViewGraphGeometryObservers.resetObserver(for:)();
}

void specialized UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(void *a1, void *a2)
{
  type metadata accessor for ListTableViewHeaderFooter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v9 = a2;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(1, 0, 0, &OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host, MEMORY[0x1E69DC3A0], &unk_1EFFB24D0, thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ()partial apply);
    v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
    if (v6)
    {
      v7 = v6;
      v8 = *(UIHostingViewBase.viewGraph.getter() + 88);

      specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(a1, v7, v8);
    }
  }
}

uint64_t specialized UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  if (v3)
  {
    type metadata accessor for ListTableViewCell(0);
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      v9 = 0;
      return v9 & 1;
    }

    v18 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
    v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
    v5 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
    v7 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
    v22 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
    v20 = v6;
    v21 = v5;
    v19 = v7;
    _s10Foundation9IndexPathVSgWOcTm_0(&v18, &v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

    v8 = v18;
    if (*(&v18 + 1) != 1)
    {
      v11 = v18;
      *v12 = *(&v18 + 1);
      *&v12[3] = DWORD1(v18);
      v13 = *(&v18 + 1);
      v14 = v19;
      v15 = v20;
      v16 = v21;
      v17 = v22;
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
      v9 = v8 ^ 1;
      return v9 & 1;
    }

    v11 = v18;
    *v12 = *(&v18 + 1);
    *&v12[3] = DWORD1(v18);
    v13 = 1;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v11, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v9 = 0;
  return v9 & 1;
}

double specialized UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &WitnessTable - v11;
  v13 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v5[v13], v9);
  v15 = a1;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  LOBYTE(a1) = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(a1, v9, WitnessTable);
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = 6.0;
  if ((a1 & 1) == 0)
  {
    v18 = v15;
    v19 = v15 < 1;
    v20 = v15 - 1;
    if (v19)
    {
      return *MEMORY[0x1E69DE3D0];
    }

    v14(v12, &v5[v13], v9);
    swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
    v21 = ListDiffable.hasHeader(forSectionAtOffset:)(v18);
    v16(v12, v9);
    if (v21)
    {
      return *MEMORY[0x1E69DE3D0];
    }

    v14(v12, &v5[v13], v9);
    v22 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v20, v9, WitnessTable);
    v16(v12, v9);
    if ((v22 & 1) == 0)
    {
      return *MEMORY[0x1E69DE3D0];
    }
  }

  return v17;
}

double specialized UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v5[v13], v9);
  swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  v21 = a1;
  LOBYTE(v8) = ListDiffable.hasHeader(forSectionAtOffset:)(a1);
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (v8)
  {
    return 28.0;
  }

  v14(v12, &v5[v13], v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v9);
  v17 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v21, v9, WitnessTable);
  v15(v12, v9);
  if (v17)
  {
    return 28.0;
  }

  result = 0.0;
  v19 = v21 - 1;
  if (v21 >= 1)
  {
    (v14)(v12, &v5[v13], v9, 0.0);
    v20 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v19, v9, WitnessTable);
    v15(v12, v9);
    result = 0.0;
    if (v20)
    {
      return 28.0;
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v10 = *((*MEMORY[0x1E69E7D40] & v7) + 0x60);
  v11 = type metadata accessor for ShadowSectionCollection(0, v9, *(v10 + 8), a4);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v15 = type metadata accessor for ShadowListDataSource(0, v9, v10, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  v20 = *(v16 + 16);
  v20(v18, &v5[v19], v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
  v32 = a1;
  LOBYTE(v9) = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(a1, v15, WitnessTable);
  v21 = *(v16 + 8);
  result = v21(v18, v15);
  if ((v9 & 1) == 0)
  {
    v30 = v20;
    v20(v18, &v5[v19], v15);
    ShadowListDataSource.sectionIDs.getter(v15, v23, v13);
    v24 = v21;
    v21(v18, v15);
    v25 = v34;
    v26 = specialized ViewLeafView.platformView.getter(v34);
    result = (*(v33 + 8))(v13, v25);
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      v27 = v32;
      v28 = v30;
      if (v26 - 1 > v32)
      {
        v30(v18, &v5[v19], v15);
        swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
        v29 = ListDiffable.hasFooter(forSectionAtOffset:)(v27);
        result = v24(v18, v15);
        if (!v29)
        {
          v28(v18, &v5[v19], v15);
          ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v27 + 1, v15, WitnessTable);
          return v24(v18, v15);
        }
      }
    }
  }

  return result;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v10 = *((*MEMORY[0x1E69E7D40] & v7) + 0x60);
  v11 = type metadata accessor for ShadowSectionCollection(0, v9, *(v10 + 8), a4);
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v33 - v13;
  v15 = type metadata accessor for ShadowListDataSource(0, v9, v10, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  v20 = *(v16 + 16);
  v20(v18, &v5[v19], v15);
  swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
  v21 = a1;
  v22 = a1;
  v23 = v20;
  LOBYTE(v20) = ListDiffable.hasFooter(forSectionAtOffset:)(v22);
  v24 = *(v16 + 8);
  result = v24(v18, v15);
  if ((v20 & 1) == 0)
  {
    v23(v18, &v5[v19], v15);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v15);
    v26 = ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v21, v15, WitnessTable);
    result = v24(v18, v15);
    if ((v26 & 1) == 0)
    {
      v34 = v23;
      v35 = v21;
      v23(v18, &v5[v19], v15);
      v27 = v37;
      ShadowListDataSource.sectionIDs.getter(v15, v28, v37);
      v24(v18, v15);
      v29 = v38;
      v30 = specialized ViewLeafView.platformView.getter(v38);
      result = (*(v39 + 8))(v27, v29);
      v31 = v30 - 1;
      if (__OFSUB__(v30, 1))
      {
        __break(1u);
      }

      else
      {
        v32 = v35;
        if (v31 > v35)
        {
          v34(v18, &v5[v19], v15, 0.0);
          ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(v32 + 1, v15, WitnessTable);
          return v24(v18, v15);
        }
      }
    }
  }

  return result;
}

BOOL specialized UITableViewListCoordinator.tableView(_:shouldBeginMultipleSelectionInteractionAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v21 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = type metadata accessor for ShadowListDataSource(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x60), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  if (!*&v4[*((v6 & v5) + 0x80) + 8])
  {
    return 0;
  }

  v16 = *(v21 + 112);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v4[v16], v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v7);
  ListCoreDataSource.selectionValue(forRowAt:)(v22, v7, WitnessTable, v15);
  (*(v8 + 8))(v10, v7);
  v18 = (*(*(AssociatedTypeWitness - 8) + 48))(v15, 1, AssociatedTypeWitness) != 1;
  (*(v13 + 8))(v15, v12);
  return v18;
}

uint64_t specialized UITableViewListCoordinator.tableView(_:didBeginMultipleSelectionInteractionAt:)()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;

    dispatch thunk of AnyLocation.set(_:transaction:)();
    return outlined consume of Binding<NavigationSplitViewColumn>?(v3, v2);
  }

  return result;
}

unint64_t specialized UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  if (v3)
  {
    type metadata accessor for ListTableViewCell(0);
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = *(v4 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
    v6 = v5;

    if (v5)
    {
      v3 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x188));

      v7 = ContextMenuBridge.outermostConfiguration()();
LABEL_7:

      return v7;
    }
  }

  return 0;
}

uint64_t _s7SwiftUI12SwipeActionsO5ValueVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  return result;
}

unint64_t type metadata accessor for UISwipeActionsConfiguration()
{
  result = lazy cache variable for type metadata for UISwipeActionsConfiguration;
  if (!lazy cache variable for type metadata for UISwipeActionsConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
  }

  return result;
}

void partial apply for closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(v6, v7, v8, v1, v2, v3, v4);
}

void partial apply for closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[6];
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(v6, v0 + v5, v7, v1, v2, v3);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id partial apply for closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 48);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(v4, v0 + v2, v5, v6);
}

void partial apply for closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)(v3, v0 + v2, v4);
}

void type metadata accessor for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void partial apply for closure #3 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  UITableViewListCoordinator.updateListContents(_:)(v1, v2, v3, v4);
}

void partial apply for closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(*(v0 + 48), (v0 + v1), *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with take of (source: IndexPath, destination: IndexPath)?(uint64_t a1, uint64_t a2)
{
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v9[4] = v4;
    v9[5] = v5;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>(255, a2, a3, a4);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v9[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, a2, a3, a4);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for StyleBox<SystemSegmentedControlStyle>(0);
  result = swift_allocObject();
  static AnySegmentedControlStyle.default = result;
  return result;
}

double closure #1 in SystemSegmentedControlStyle.Body.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SystemSegmentItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v22 = a2;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v23;
    v12 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      outlined init with copy of SystemSegmentItem(v13, v9, type metadata accessor for PlatformItemList.Item);
      v23 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v16 + 1;
      outlined init with take of SystemSegmentItem(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v10;
    }

    while (v10);
    a2 = v22;
  }

  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  v20 = *(a2 + 88);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;

  return result;
}

uint64_t closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v7 = *(a1 + 96);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  ViewTraitCollection.value<A>(for:defaultValue:)();

  v4 = swift_allocObject();
  *(v4 + 16) = (v6 & 1) == 0;
  *(v4 + 24) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  result = outlined init with copy of Subview(a1, a2);
  *(a2 + 104) = partial apply for closure #1 in closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter;
  *(a2 + 112) = v4;
  return result;
}

uint64_t *closure #1 in closure #1 in closure #2 in SystemSegmentedControlStyle.Body.body.getter(uint64_t *result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    LOBYTE(v12) = a2;
    v17 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v13 = 0;
    v14 = (v12 & 1) == 0;
    do
    {
      if (v13 >= v6[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v15 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
      v16 = v6 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13;
      *(v16 + 56) = v14;
      v12 = *(v16 + 488);
      *(v16 + 480) = a3;
      *(v16 + 488) = a4;
      *(v16 + 496) = a5;
      *(v16 + 504) = a6;

      ++v13;
    }

    while (v7 != v13);
    *v17 = v6;
  }

  return result;
}

void protocol witness for View.body.getter in conformance SystemSegmentedControlStyle.Body(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  outlined init with copy of SystemSegmentedControlStyle.Body(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[5];
  *(v3 + 80) = v8[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v8[6];
  *(v3 + 128) = v9;
  v5 = v8[1];
  *(v3 + 16) = v8[0];
  *(v3 + 32) = v5;
  v6 = v8[3];
  *(v3 + 48) = v8[2];
  *(v3 + 64) = v6;
  *a1 = partial apply for closure #1 in SystemSegmentedControlStyle.Body.body.getter;
  a1[1] = v3;

  a1[2] = static Alignment.center.getter();
  a1[3] = v7;
  outlined init with copy of SubviewsCollection(v1, v8);
  type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(0);
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  lazy protocol witness table accessor for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  ForEach<>.init(_:content:)();

  a1[17] = closure #1 in View.forcePlatformItem();
  a1[18] = 0;
}

id SystemSegmentedControl.makeUIView(context:)(uint64_t a1)
{
  v3 = type metadata accessor for SystemSegmentItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v35 = v7;
    v70 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v70;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    while (1)
    {
      outlined init with copy of SystemSegmentItem(v11, v6, type metadata accessor for SystemSegmentItem);
      v13 = *v6;
      if (*v6)
      {
        *(&v69 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
        *&v68 = v13;
        v14 = v13;
        outlined destroy of SystemSegmentItem(v6);
        outlined init with take of Any(&v68, &v36);
      }

      else
      {
        v15 = *(v6 + 13);
        v16 = *(v6 + 11);
        v57 = *(v6 + 12);
        v58 = v15;
        v17 = *(v6 + 13);
        v59[0] = *(v6 + 14);
        *(v59 + 11) = *(v6 + 235);
        v18 = *(v6 + 9);
        v19 = *(v6 + 7);
        v53 = *(v6 + 8);
        v54 = v18;
        v20 = *(v6 + 9);
        v21 = *(v6 + 11);
        v55 = *(v6 + 10);
        v56 = v21;
        v22 = *(v6 + 5);
        v50[0] = *(v6 + 4);
        v50[1] = v22;
        v23 = *(v6 + 7);
        v25 = *(v6 + 4);
        v24 = *(v6 + 5);
        v51 = *(v6 + 6);
        v52 = v23;
        v65[3] = v57;
        v66 = v17;
        v67[0] = *(v6 + 14);
        *(v67 + 11) = *(v6 + 235);
        v64 = v53;
        v65[0] = v20;
        v65[1] = v55;
        v65[2] = v16;
        v60 = v25;
        v61 = v24;
        v68 = 0u;
        v69 = 0u;
        v62 = v51;
        v63 = v19;
        if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v60) != 1)
        {
          if (v66)
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            v28 = swift_dynamicCastObjCClassUnconditional();
LABEL_15:
            *(&v45 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
            *&v44 = v28;
            outlined destroy of SystemSegmentItem(v6);
            outlined init with take of Any(&v44, &v36);
            if (!*(&v69 + 1))
            {
              goto LABEL_8;
            }

LABEL_7:
            outlined destroy of AnyAccessibilityValue?(&v68, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            goto LABEL_8;
          }

          v42 = v64;
          v43[0] = v65[0];
          *(v43 + 12) = *(v65 + 12);
          v38 = v60;
          v39 = v61;
          v40 = v62;
          v41 = v63;
          v29 = *(v6 + 6);
          outlined init with copy of Image.Resolved?(v50, &v36);
          outlined init with copy of GraphicsImage(&v60, &v36);
          v28 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v29);
          outlined destroy of AnyAccessibilityValue?(v50, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
          v48 = v42;
          v49[0] = v43[0];
          *(v49 + 12) = *(v43 + 12);
          v44 = v38;
          v45 = v39;
          v46 = v40;
          v47 = v41;
          outlined destroy of GraphicsImage(&v44);
          if (v28)
          {
            goto LABEL_15;
          }
        }

        v37 = MEMORY[0x1E69E6158];
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        outlined destroy of SystemSegmentItem(v6);
        if (*(&v69 + 1))
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      v70 = v10;
      v27 = *(v10 + 16);
      v26 = *(v10 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v10 = v70;
      }

      *(v10 + 16) = v27 + 1;
      outlined init with take of Any(&v36, (v10 + 32 * v27 + 32));
      v11 += v12;
      if (!--v9)
      {
        v7 = v35;
        break;
      }
    }
  }

  v30 = objc_allocWithZone(type metadata accessor for SystemSegmentedControl.UISegmentedControl());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithItems_];

  [v32 addTarget:v7 action:sel_selectionChanged_ forControlEvents:4096];
  return v32;
}

id SystemSegmentedControl.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v21 = *(a2 + 32);
  v4 = *(a2 + 5);
  v15 = *v2;
  v14 = *(v2 + 8);
  v5 = v2[2];
  v6 = v2[3];
  v17 = v2[5];
  v18 = v2[4];
  v16 = *(v2 + 48);
  v7 = v4 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration;
  v26 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 16);
  v28 = v5;
  v13 = OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_itemChanges;
  swift_beginAccess();
  type metadata accessor for CollectionChanges<Int, Int>();
  type metadata accessor for [SystemSegmentItem](0);
  lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](&lazy protocol witness table cache variable for type [SystemSegmentItem] and conformance [A], type metadata accessor for [SystemSegmentItem], MEMORY[0x1E69E6310]);
  lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](&lazy protocol witness table cache variable for type SystemSegmentItem and conformance SystemSegmentItem, type metadata accessor for SystemSegmentItem, protocol conformance descriptor for SystemSegmentItem);
  v19 = a2[1];
  v22 = *a2;
  CollectionChanges.formChanges<A, B>(from:to:)();
  swift_endAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v12 = *(v7 + 16);
  *v7 = v15;
  *(v7 + 8) = v14;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v18;
  *(v7 + 40) = v17;
  *(v7 + 48) = v16;
  outlined copy of Environment<Bool>.Content();

  outlined consume of Environment<Bool>.Content(v8, v9);

  *&v23 = *(v4 + v13);

  SegmentedControlCoordinator.apply(_:to:in:)(&v23, a1, *(&v22 + 1));

  *&v23 = v6;
  *(&v23 + 1) = v18;
  *&v24 = v17;
  BYTE8(v24) = v16;
  type metadata accessor for Binding<Int?>(0);
  MEMORY[0x18D00ACC0](&v26);
  if (v27)
  {
    v10 = -1;
  }

  else
  {
    v10 = v26;
  }

  [a1 setSelectedSegmentIndex_];
  v24 = v19;
  v23 = v22;
  v25 = v21;
  RepresentableContextValues.environment.getter();
  if (v27)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return [a1 setSpringLoaded_];
}

void *protocol witness for UIViewRepresentable.makeCoordinator() in conformance SystemSegmentedControl@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v10 = type metadata accessor for SegmentedControlCoordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration];
  *v12 = v3;
  v12[8] = v4;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v12[48] = v9;
  *&v11[OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_itemChanges] = MEMORY[0x1E69E7CC0];
  outlined copy of Environment<Bool>.Content();
  v14.receiver = v11;
  v14.super_class = v10;

  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

void SegmentedControlCoordinator.apply(_:to:in:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemSegmentItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v105 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v105 - v13;
  v14 = *a1;
  v115 = *(v3 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 16);

  v15 = Transaction.animation.getter();
  if (v15)
  {
  }

  v118 = v9;
  v16 = *(v14 + 16);
  v114 = v7;
  if (v16)
  {
    v17 = v14 + 32;

    while (v16 <= *(v14 + 16))
    {
      v18 = v14;
      --v16;
      v19 = (v17 + 40 * v16);
      v14 = *v19;
      v20 = v19[1];
      if (*(v19 + 32))
      {
        v21 = 1;
      }

      else
      {
        v21 = v20 == v14;
      }

      if (!v21)
      {
        while (v14 < v20)
        {
          [a2 removeSegmentAtIndex:--v20 animated:v15 != 0];
          if (v14 == v20)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
        break;
      }

LABEL_5:
      v14 = v18;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

LABEL_17:

  v22 = *(v14 + 16);

  v23 = v117;
  v24 = v118;
  v107 = v22;
  if (!v22)
  {
LABEL_95:

    return;
  }

  v25 = 0;
  v106 = v14 + 32;
  v109 = v14;
  while (1)
  {
    if (v25 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_97;
    }

    v108 = v25;
    v26 = v106 + 40 * v25;
    if (!*(v26 + 32))
    {
      goto LABEL_19;
    }

    if (*(v26 + 32) != 1)
    {
      break;
    }

    v27 = *v26;
    v28 = *(v26 + 8);
    if (*v26 != v28)
    {
      if (v28 >= v27)
      {
        if (v27 < v28)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            v29 = *(v115 + 16);
            if (v27 < v29 && v28 - 1 < v29)
            {
              v31 = (*(v114 + 80) + 32) & ~*(v114 + 80);
              v32 = *(v114 + 72);
              v111 = v28;
              v112 = v32;
              v33 = v115 + v31 + v27 * v32;
              while (1)
              {
                outlined init with copy of SystemSegmentItem(v33, v23, type metadata accessor for SystemSegmentItem);
                v34 = *v23;
                if (*v23)
                {
                  v113 = v33;
                  v35 = v34;
                  outlined destroy of SystemSegmentItem(v23);
                  v36 = [v35 string];
                  if (!v36)
                  {
                    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v36 = MEMORY[0x18D00C850](v37);
                    v28 = v111;
                  }

                  [a2 insertSegmentWithTitle:v36 atIndex:v27 animated:v15 != 0];

                  v33 = v113;
                  v24 = v118;
                  goto LABEL_45;
                }

                v38 = *(v23 + 208);
                v39 = *(v23 + 176);
                v140 = *(v23 + 192);
                v141 = v38;
                v40 = *(v23 + 208);
                v142[0] = *(v23 + 224);
                *(v142 + 11) = *(v23 + 235);
                v41 = *(v23 + 144);
                v42 = *(v23 + 112);
                v136 = *(v23 + 128);
                v137 = v41;
                v43 = *(v23 + 144);
                v44 = *(v23 + 176);
                v138 = *(v23 + 160);
                v139 = v44;
                v45 = *(v23 + 80);
                v132 = *(v23 + 64);
                v133 = v45;
                v46 = *(v23 + 112);
                v48 = *(v23 + 64);
                v47 = *(v23 + 80);
                v134 = *(v23 + 96);
                v135 = v46;
                v150 = v140;
                v151 = v40;
                v152[0] = *(v23 + 224);
                *(v152 + 11) = *(v23 + 235);
                v147 = v136;
                v148[0] = v43;
                v148[1] = v138;
                v149 = v39;
                v143 = v48;
                v144 = v47;
                v145 = v134;
                v146 = v42;
                if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v143) != 1)
                {
                  v113 = v33;
                  if (v151)
                  {
                    swift_unknownObjectRetain();
                    objc_opt_self();
                    v49 = swift_dynamicCastObjCClassUnconditional();
LABEL_44:
                    outlined destroy of SystemSegmentItem(v23);
                    [a2 insertSegmentWithImage:v49 atIndex:v27 animated:v15 != 0];

                    v33 = v113;
                    goto LABEL_45;
                  }

                  v124 = v147;
                  v125[0] = v148[0];
                  *(v125 + 12) = *(v148 + 12);
                  v120 = v143;
                  v121 = v144;
                  v122 = v145;
                  v123 = v146;
                  v50 = *(v23 + 48);
                  outlined init with copy of Image.Resolved?(&v132, v119);
                  outlined init with copy of GraphicsImage(&v143, v119);
                  v49 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v50);
                  outlined destroy of AnyAccessibilityValue?(&v132, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
                  v130 = v124;
                  v131[0] = v125[0];
                  *(v131 + 12) = *(v125 + 12);
                  v126 = v120;
                  v127 = v121;
                  v128 = v122;
                  v129 = v123;
                  outlined destroy of GraphicsImage(&v126);
                  if (v49)
                  {
                    v28 = v111;
                    goto LABEL_44;
                  }

                  v28 = v111;
                  v33 = v113;
                }

                outlined destroy of SystemSegmentItem(v23);
                [a2 insertSegmentWithImage:0 atIndex:v27 animated:v15 != 0];
LABEL_45:
                if ([a2 _accessibilitySegmentItemAtIndex_])
                {
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v132 = 0u;
                  v133 = 0u;
                }

                v143 = v132;
                v144 = v133;
                if (*(&v133 + 1))
                {
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
                  if (swift_dynamicCast())
                  {
                    v51 = v119[0];
                    v52 = v116;
                    outlined init with copy of SystemSegmentItem(v33, v116, type metadata accessor for SystemSegmentItem);
                    outlined destroy of SystemSegmentItem(v52);
                    isa = Bool._bridgeToObjectiveC()().super.super.isa;
                    v54 = MEMORY[0x18D00C850](0x64656C62616E65, 0xE700000000000000);
                    [v51 setValue:isa forKey:v54];

                    v28 = v111;
                    outlined init with copy of SystemSegmentItem(v33, v52, type metadata accessor for SystemSegmentItem);
                    v55 = v51;
                    v24 = v118;
                    v56 = v55;
                    specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(v55);

                    v57 = v52;
                    v14 = v109;
                    v23 = v117;
                    outlined destroy of SystemSegmentItem(v57);
                  }
                }

                else
                {
                  outlined destroy of AnyAccessibilityValue?(&v143, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
                }

                ++v27;
                v33 += v112;
                if (v28 == v27)
                {
                  goto LABEL_19;
                }
              }
            }

            goto LABEL_104;
          }

          goto LABEL_101;
        }

        goto LABEL_99;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_19:
    v25 = v108 + 1;
    if (v108 + 1 == v107)
    {
      goto LABEL_95;
    }
  }

  v59 = *(v26 + 16);
  v58 = *(v26 + 24);
  if (v59 == v58)
  {
    goto LABEL_19;
  }

  if (v58 < v59)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v59 >= v58)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = *(v115 + 16);
    if (v59 >= v60 || v58 - 1 >= v60)
    {
      goto LABEL_103;
    }

    v62 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v110 = *(v114 + 72);
    v111 = v58;
    v63 = v115 + v62 + v59 * v110;
    while (2)
    {
      outlined init with copy of SystemSegmentItem(v63, v24, type metadata accessor for SystemSegmentItem);
      v64 = *v24;
      if (*v24)
      {
        v113 = v63;
        v65 = v64;
        outlined destroy of SystemSegmentItem(v24);
        v66 = [a2 titleForSegmentAtIndex_];
        v67 = v59;
        if (v66)
        {
          v68 = v66;
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        v112 = v65;
        v83 = [v65 string];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        if (v71)
        {
          v59 = v67;
          if (v69 == v84 && v71 == v86)
          {

            v23 = v117;
            v24 = v118;
            v63 = v113;
            goto LABEL_88;
          }

          v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v23 = v117;
          v24 = v118;
          if (v87)
          {

            v63 = v113;
            goto LABEL_88;
          }
        }

        else
        {

          v59 = v67;
          v23 = v117;
          v24 = v118;
        }

        v88 = v112;
        v89 = [v112 string];
        v63 = v113;
        if (!v89)
        {
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = MEMORY[0x18D00C850](v90);
          v88 = v112;
        }

        [a2 setTitle:v89 forSegmentAtIndex:v59];

LABEL_87:
LABEL_88:
        if ([a2 _accessibilitySegmentItemAtIndex_])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v132 = 0u;
          v133 = 0u;
        }

        v143 = v132;
        v144 = v133;
        if (*(&v133 + 1))
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
          if (swift_dynamicCast())
          {
            v97 = v119[0];
            v98 = v116;
            outlined init with copy of SystemSegmentItem(v63, v116, type metadata accessor for SystemSegmentItem);
            v99 = v63;
            outlined destroy of SystemSegmentItem(v98);
            v100 = Bool._bridgeToObjectiveC()().super.super.isa;
            v101 = v59;
            v102 = MEMORY[0x18D00C850](0x64656C62616E65, 0xE700000000000000);
            [v97 setValue:v100 forKey:v102];

            v63 = v99;
            v59 = v101;
            v24 = v118;
            outlined init with copy of SystemSegmentItem(v99, v98, type metadata accessor for SystemSegmentItem);
            v103 = v97;
            specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(v103);

            v104 = v98;
            v14 = v109;
            v23 = v117;
            outlined destroy of SystemSegmentItem(v104);
          }
        }

        else
        {
          outlined destroy of AnyAccessibilityValue?(&v143, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
        }

        ++v59;
        v63 += v110;
        if (v111 == v59)
        {
          goto LABEL_19;
        }

        continue;
      }

      break;
    }

    v72 = *(v24 + 208);
    v73 = *(v24 + 176);
    v140 = *(v24 + 192);
    v141 = v72;
    v74 = *(v24 + 208);
    v142[0] = *(v24 + 224);
    *(v142 + 11) = *(v24 + 235);
    v75 = *(v24 + 144);
    v76 = *(v24 + 112);
    v136 = *(v24 + 128);
    v137 = v75;
    v77 = *(v24 + 144);
    v78 = *(v24 + 176);
    v138 = *(v24 + 160);
    v139 = v78;
    v79 = *(v24 + 80);
    v132 = *(v24 + 64);
    v133 = v79;
    v80 = *(v24 + 112);
    v82 = *(v24 + 64);
    v81 = *(v24 + 80);
    v134 = *(v24 + 96);
    v135 = v80;
    v150 = v140;
    v151 = v74;
    v152[0] = *(v24 + 224);
    *(v152 + 11) = *(v24 + 235);
    v147 = v136;
    v148[0] = v77;
    v148[1] = v138;
    v149 = v73;
    v143 = v82;
    v144 = v81;
    v145 = v134;
    v146 = v76;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v143) == 1)
    {
LABEL_67:
      outlined destroy of SystemSegmentItem(v24);
      [a2 setImage:0 forSegmentAtIndex:v59];
      goto LABEL_88;
    }

    v113 = v63;
    if (v151)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v88 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v124 = v147;
      v125[0] = v148[0];
      *(v125 + 12) = *(v148 + 12);
      v120 = v143;
      v121 = v144;
      v122 = v145;
      v123 = v146;
      v91 = *(v24 + 48);
      outlined init with copy of Image.Resolved?(&v132, v119);
      outlined init with copy of GraphicsImage(&v143, v119);
      v88 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v91);
      outlined destroy of AnyAccessibilityValue?(&v132, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      v130 = v124;
      v131[0] = v125[0];
      *(v131 + 12) = *(v125 + 12);
      v126 = v120;
      v127 = v121;
      v128 = v122;
      v129 = v123;
      outlined destroy of GraphicsImage(&v126);
      if (!v88)
      {
        v63 = v113;
        goto LABEL_67;
      }
    }

    outlined destroy of SystemSegmentItem(v24);
    v92 = [a2 imageForSegmentAtIndex_];
    if (v92)
    {
      v93 = v92;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
      v112 = v88;
      v94 = static NSObject.== infix(_:_:)();

      v63 = v113;
      if (v94)
      {
        v95 = v112;

        goto LABEL_88;
      }
    }

    else
    {
      v96 = v88;
      v63 = v113;
    }

    [a2 setImage:v88 forSegmentAtIndex:v59];

    goto LABEL_87;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

id SegmentedControlCoordinator.selectionChanged(_:)(void *a1)
{
  v3 = [a1 selectedSegmentIndex];
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 selectedSegmentIndex];
  }

  v5 = v1 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration;
  *&v12 = v4;
  BYTE8(v12) = v3 == -1;

  dispatch thunk of AnyLocation.set(_:transaction:)();

  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v12 = *(v5 + 24);
  v13 = v6;
  v14 = v7;
  type metadata accessor for Binding<Int?>(0);
  MEMORY[0x18D00ACC0](&v10);
  if (v11)
  {
    v8 = -1;
  }

  else
  {
    v8 = v10;
  }

  return [a1 setSelectedSegmentIndex_];
}

uint64_t SegmentedControlCoordinator.__ivar_destroyer()
{
  outlined consume of Environment<Bool>.Content(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration), *(v0 + OBJC_IVAR____TtC7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7527SegmentedControlCoordinator_configuration + 8));
}

id SegmentedControlCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double destroy for SystemSegmentedControl(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));

  return result;
}

uint64_t initializeWithCopy for SystemSegmentedControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for SystemSegmentedControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = a2[3];

  *(a1 + 32) = a2[4];

  v8 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithTake for SystemSegmentedControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);

  *(a1 + 16) = *(a2 + 1);

  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemSegmentedControl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemSegmentedControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized SegmentedControlCoordinator.applyAccessibility(_:item:)(void *a1)
{
  v2 = SystemSegmentItem.accessibilityIdentifier.getter();
  if (v3)
  {
    v4 = MEMORY[0x18D00C850](v2);

    [a1 setAccessibilityIdentifier_];
  }

  v5 = PlatformItemList.Item.accessibilityEffectiveText.getter();
  if (v5)
  {
    v6 = v5;
    [a1 setAccessibilityAttributedLabel_];
  }

  v7 = SystemSegmentItem.accessibilityHint.getter();
  if (v8)
  {
    v9 = MEMORY[0x18D00C850](v7);

    [a1 setAccessibilityHint_];
  }
}

void specialized SystemSegmentedControl._overrideSizeThatFits(_:in:uiView:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v5 = *(a2 + 8);
  v6 = a2[2];
  v7 = *(a2 + 24);
  v8 = *v3;
  v9 = *(v3 + 8);
  v16 = *a2;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v10 = _ProposedSize.width.getter();
  if ((v11 & 1) == 0)
  {
    *a1 = v10;
  }

  specialized Environment.wrappedValue.getter(v8, v9, &v16);
  v14 = qword_1EFF8C3B8;
  if (qword_1EFF8C3B8)
  {
    v12 = 0;
    v13 = &outlined read-only object #0 of static ControlSize.< infix(_:_:);
    while (*(&outlined read-only object #0 of static ControlSize.< infix(_:_:) + v12 + 32) != v16)
    {
      if (qword_1EFF8C3B8 == ++v12)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __break(1u);
  }

  v15 = 0;
  while (v13[v15 + 32] != 3)
  {
    if (v14 == ++v15)
    {
      __break(1u);
      break;
    }
  }

  if (v12 >= v15)
  {
    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      a1[1] = 0x4048000000000000;
    }
  }
}

void type metadata accessor for [SystemSegmentItem](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [SystemSegmentItem])
  {
    type metadata accessor for SystemSegmentItem(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [SystemSegmentItem]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [SystemSegmentItem] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>, &type metadata for SpringLoadingBehavior.Key, &protocol witness table for SpringLoadingBehavior.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of SystemSegmentItem(uint64_t a1)
{
  v2 = type metadata accessor for SystemSegmentItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for StyleBox<SystemSegmentedControlStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StyleBox<SystemSegmentedControlStyle>)
  {
    v2 = lazy protocol witness table accessor for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle();
    v4 = type metadata accessor for StyleBox(a1, &unk_1EFFB2A08, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for StyleBox<SystemSegmentedControlStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle()
{
  result = lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle;
  if (!lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemSegmentedControlStyle, &unk_1EFFB2A08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemSegmentedControlStyle and conformance SystemSegmentedControlStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body()
{
  result = lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body;
  if (!lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemSegmentedControlStyle.Body, &unk_1EFFB2AD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemSegmentedControlStyle.Body and conformance SystemSegmentedControlStyle.Body);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<AllPlatformItemListFlags>, &type metadata for AllPlatformItemListFlags, &protocol witness table for AllPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>>(255);
    v4[0] = MEMORY[0x1E6981A58];
    v4[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Subview, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of SystemSegmentItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SystemSegmentItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemSegmentItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double destroy for SystemSegmentedControlStyle.Body(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

uint64_t initializeWithCopy for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  LOBYTE(v8) = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  v10 = v5;

  return a1;
}

uint64_t assignWithCopy for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v7 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  return a1;
}

uint64_t assignWithTake for SystemSegmentedControlStyle.Body(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for SystemSegmentedControlStyle.Body(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for SystemSegmentedControlStyle.Body(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.searchable<A>(text:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v90 = a7;
  v92 = a4;
  v95 = a2;
  v96 = a3;
  v94 = a1;
  v88 = a9;
  v89 = a10;
  v85 = a5;
  v86 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = &v75 - v14;
  v84 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v84);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>(0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v75 - v22);
  v24 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v28, v29, v30);
  v32 = v31;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v91 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v85) = *v85;
  (*(v24 + 16))(v27, a6, a8, v33);
  v35 = v16;

  v36 = Text.init<A>(_:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v83 = v40;
  v43 = v40 & 1;
  outlined copy of Text.Storage(v36, v38, v43);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v44 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v45 = v93;
  *v23 = v94;
  v23[1] = v44;
  v86 = v23;
  v46 = v23;
  v47 = v91;
  outlined init with copy of Binding<AttributedString>(v46, v45, type metadata accessor for Binding<AttributedString>);
  v48 = &v47[v32[12]];
  *v48 = 0;
  *(v48 + 1) = 0;
  *(v48 + 8) = 0;
  *v35 = 2;

  v49 = v42;

  outlined copy of Text.Storage(v36, v38, v43);
  *(v35 + 1) = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v35 + 2) = 2;
  *(v35 + 4) = 0;
  *(v35 + 8) = 1;
  v50 = v84;
  AttributedString.init()();
  *(v35 + *(v50 + 48)) = 0;
  v51 = *(v50 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v52 = v35 + v51;
  v53 = byte_1EAB095CC;
  *v52 = static SearchFocusUpdate.empty;
  *(v52 + 4) = v53;

  v54 = outlined copy of Text.Storage(v36, v38, v43);
  MEMORY[0x18D009CE0](v98, v54);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v36, v38, v43);

  *(v47 + 1) = v36;
  *(v47 + 2) = v38;
  v47[24] = v43;
  *(v47 + 4) = v42;
  v82 = v32;
  outlined init with copy of Binding<AttributedString>(v93, &v47[v32[11]], type metadata accessor for Binding<AttributedString>);
  v55 = &v47[v32[13]];
  outlined init with copy of Binding<AttributedString>(v35, v55, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v55 + *(v56 + 28)) = 0;
  v57 = v32[10];
  LOBYTE(v55) = v43;
  v80 = v43;
  v58 = &v47[v57];
  v84 = v83 & 1;
  v99 = 1;
  v79 = v38;
  v78 = v36;
  v59 = v95;
  v98[0] = v94;
  v98[1] = v95;
  v60 = v92;
  v98[2] = v96;
  v98[3] = v92;

  outlined copy of Text.Storage(v36, v38, v55);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v97);
  v77 = v97[0];
  v76 = v97[1];
  LODWORD(v81) = v99;
  type metadata accessor for Binding<TextSelection?>(0);
  v62 = v61;
  v63 = *(*(v61 - 8) + 56);
  v83 = v35;
  v64 = v87;
  v63(v87, 1, 1, v61);
  type metadata accessor for TextField<EmptyView>(0, v65, v66, v67);
  v69 = *(v68 + 56);
  v63(&v58[v69], 1, 1, v62);
  LOBYTE(v98[0]) = 0;
  v70 = v76;
  *(v58 + 9) = v77;
  *(v58 + 10) = v70;
  *(v58 + 88) = 0u;
  *(v58 + 104) = 0u;
  *(v58 + 120) = 0u;
  *(v58 + 136) = 0u;
  v58[152] = 0;
  *(v58 + 39) = 0;
  v58[160] = v81;
  *(v58 + 161) = 2;
  v58[163] = 0;
  *(v58 + 21) = 0;
  v58[180] = 0;
  *v58 = v94;
  *(v58 + 1) = v59;
  *(v58 + 2) = v96;
  *(v58 + 3) = v60;
  *(v58 + 16) = 0;
  v71 = v78;
  v72 = v79;
  *(v58 + 5) = v78;
  *(v58 + 6) = v72;
  *(v58 + 7) = v84;
  *(v58 + 8) = v49;
  outlined assign with take of Binding<TextSelection?>?(v64, &v58[v69]);

  v73 = v91;
  *v91 = v85;
  LOBYTE(v59) = v80;
  outlined consume of Text.Storage(v71, v72, v80);

  outlined consume of Text.Storage(v71, v72, v59);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v83, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v93, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v86, type metadata accessor for Binding<AttributedString>);
  MEMORY[0x18D00A570](v73, v90, v82, v89);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v73, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchable(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v37 = a9;
  v35 = a3;
  v36 = a14;
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, a2, a3, a4);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a8;

  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  v27 = v26 & 1;
  v28 = v32;

  v29 = v33;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(a1, a2, v35, v31, v28, v29, v34 & 1, &v39, v20, v21, v23, v27, v25);
  MEMORY[0x18D00A570](v20, v36, v18, v38);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v20, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t View.searchable<A>(text:isPresented:placement:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48 = a9;
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v40[1] = a14;
  v46 = a3;
  v47 = a13;
  v18 = *(a12 - 8);
  v44 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>(0, v21, v22, v23);
  v41 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a8;
  (*(v18 + 16))(v20, a10, a12, v25);

  v28 = a2;

  v29 = a4;

  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35 & 1;
  v37 = v42;

  v38 = v43;

  SearchModifier.init<>(text:isPresented:placement:prompt:)(a1, v28, v46, v29, v37, v38, v45 & 1, &v49, v27, v30, v32, v36, v34);
  MEMORY[0x18D00A570](v27, v44, v41, v47);
  return _s7SwiftUI16SearchFieldStateVWOhTm_2(v27, type metadata accessor for SearchModifier<TextField<EmptyView>>);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance BorderlessButtonStyle_Car@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, v9, v10, v11);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v12 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>, type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>, protocol conformance descriptor for Button<A>);
    v5[1] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>, protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>)
  {
    v2 = lazy protocol witness table accessor for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit();
    v4 = type metadata accessor for PrimitiveButtonStyleContainerModifier(a1, &unk_1EFFB2B18, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonStyle_UIKit, &unk_1EFFB2B18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyle_UIKit and conformance BorderlessButtonStyle_UIKit);
  }

  return result;
}

uint64_t BorderlessButtonStyle_UIKit.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v16 = 1;
  v15 = 1;
  v14 = 1;
  static Color.accentColor.getter();
  View.defaultForegroundColor(_:)();

  v10 = v13[0];
  v11 = v13[1];
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  result = static UIButton.Configuration.borderless()();
  *a2 = v7;
  *(a2 + 8) = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 1;
  *(a2 + 37) = 514;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>)
  {
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for UIKitButton(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for Color?()
{
  if (!lazy cache variable for type metadata for Color?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_UIKit>>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(&lazy protocol witness table cache variable for type UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>> and conformance UIKitButton<A>, type metadata accessor for UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, protocol conformance descriptor for UIKitButton<A>);
    v5[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *initializeBufferWithCopyOfBuffer for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = ~(v6 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + 64);
  v10 = ((v6 & 0xF8) + 23) & v8;
  if (v7)
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 <= v9)
  {
    v12 = *(v5 + 64);
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 | 1;
  v15 = (v10 | 1) + v13;
  if ((v6 & 0x1000F8) == 0 && ((v15 + (((v6 & 0xF8) + 15) & v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v18 = a2 + 15;
    *a1 = *a2;
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = (v18 & 0xFFFFFFFFFFFFFFF8);
    v21 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (*v21 < 0xFFFFFFFFuLL)
    {
      memcpy(v19, v20, v15);
LABEL_51:
      *((((v3 + 15) | 7) + v14 + v13) & 0xFFFFFFFFFFFFFFF8) = *(((v18 | 7) + v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_52;
    }

    v37 = v7;
    *v19 = *v20;
    v22 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v21;
    v34 = v22 + 15;
    v35 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = v10 | 1;
    v23 = *(v35 + v13);

    if (v23 < 3)
    {
      v27 = v34;
      v25 = v35;
    }

    else
    {
      if (v13 <= 3)
      {
        v24 = v13;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 1)
      {
        v25 = v35;
        if (v24 == 2)
        {
          v26 = *v35;
        }

        else if (v24 == 3)
        {
          v26 = *v35 | (*(v35 + 2) << 16);
        }

        else
        {
          v26 = *v35;
        }

        v27 = v34;
        if (v13 >= 4)
        {
          goto LABEL_33;
        }

LABEL_29:
        v23 = (v26 | ((v23 - 3) << (8 * v13))) + 3;
        goto LABEL_34;
      }

      v27 = v34;
      v25 = v35;
      if (v24)
      {
        v26 = *v35;
        if (v13 >= 4)
        {
LABEL_33:
          v23 = v26 + 3;
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

LABEL_34:
    v28 = (v27 & 0xFFFFFFFFFFFFFFF8);
    if (v23 == 2)
    {
      (*(v5 + 16))(v27 & 0xFFFFFFFFFFFFFFF8, v25, v4);
      v30 = v9 + 1;
      *(v28 + v13) = 2;
      v31 = v37;
      v14 = v36;
    }

    else if (v23 == 1)
    {
      v29 = v25;
      if ((*(v5 + 48))(v25, 1, v4))
      {
        memcpy(v28, v29, v11);
      }

      else
      {
        (*(v5 + 16))(v28, v29, v4);
        (*(v5 + 56))(v28, 0, 1, v4);
      }

      v30 = v9 + 1;
      v14 = v36;
      *(v28 + v13) = 1;
      v31 = v37;
    }

    else
    {
      v14 = v36;
      *v28 = *v25;
      *(v28 + v13) = 0;

      v31 = v37;
      v30 = v9 + 1;
    }

    v32 = 8;
    if (v9 > 8)
    {
      v32 = v9;
    }

    if (v30 <= v9)
    {
      v30 = v9;
    }

    if (v30 <= 8)
    {
      v30 = 8;
    }

    if (v31)
    {
      v13 = v32;
    }

    else
    {
      v13 = v30;
    }

    goto LABEL_51;
  }

  v17 = *a2;
  *v3 = *a2;
  v3 = (v17 + v10);
LABEL_52:

  return v3;
}

void *initializeWithTake for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 15;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((a1 + v7 + 15) & v9);
  v11 = ((a2 + v7 + 15) & v9);
  v12 = *(v5 + 64);
  v13 = (v7 + 23) & v9;
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v6)
    {
      v25 = *(v5 + 64);
    }

    else
    {
      v25 = v12 + 1;
    }

    if (v25 > v12)
    {
      v12 = v25;
    }

    if (v12 <= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v12;
    }

    memcpy(v10, v11, v20 + v13 + 1);
    goto LABEL_42;
  }

  v15 = v6 == 0;
  *v10 = *v11;
  v16 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v14;
  v17 = ((v16 + v8) & v9);
  v18 = ((v14 + v8) & v9);
  if (v15)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = v12;
  }

  if (v19 > v12)
  {
    v12 = v19;
  }

  if (v12 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v12;
  }

  v21 = *(v18 + v20);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *v18;
      }

      else if (v23 == 3)
      {
        v24 = *v18 | (*(v18 + 2) << 16);
      }

      else
      {
        v24 = *v18;
      }

LABEL_31:
      v26 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v26;
      }

      goto LABEL_33;
    }

    if (v23)
    {
      v24 = *v18;
      goto LABEL_31;
    }
  }

LABEL_33:
  if (v21 == 2)
  {
    (*(v5 + 32))(v17, v18, v4);
    v27 = 2;
LABEL_41:
    *(v17 + v20) = v27;
    goto LABEL_42;
  }

  if (v21 == 1)
  {
    if ((*(v5 + 48))(v18, 1, v4))
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v5 + 32))(v17, v18, v4);
      (*(v5 + 56))(v17, 0, 1, v4);
    }

    v27 = 1;
    goto LABEL_41;
  }

  *v17 = *v18;
  *(v17 + v20) = 0;
LABEL_42:
  *((v10 + v20 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v20 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 15;
  v9 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((a1 + v7 + 15) & v9);
  v11 = ((a2 + v7 + 15) & v9);
  v12 = *(v5 + 64);
  v53 = (v7 + 23) & v9;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  if (*v13 < 0xFFFFFFFFuLL)
  {
    if (v15 < 0xFFFFFFFF)
    {
      if (v6)
      {
        v38 = *(*(v4 - 8) + 64);
      }

      else
      {
        v38 = v12 + 1;
      }

      if (v38 <= v12)
      {
        v38 = *(*(v4 - 8) + 64);
      }

      if (v38 <= 8)
      {
        v21 = 8;
      }

      else
      {
        v21 = v38;
      }

      goto LABEL_88;
    }

    v16 = v6 == 0;
    *v10 = *v11;
    *v13 = *v14;
    v17 = ((v13 + v8) & v9);
    v18 = ((v14 + v8) & v9);
    if (v16)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v12;
    }

    if (v19 <= v12)
    {
      v27 = v12;
    }

    else
    {
      v27 = v19;
    }

    if (v27 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v27;
    }

    v28 = v18[v21];
    v29 = v28 - 3;
    if (v28 >= 3)
    {
      if (v21 <= 3)
      {
        v30 = v21;
      }

      else
      {
        v30 = 4;
      }

      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v31 = *v18;
        }

        else if (v30 == 3)
        {
          v31 = *v18 | (v18[2] << 16);
        }

        else
        {
          v31 = *v18;
        }

LABEL_72:
        v40 = (v31 | (v29 << (8 * v21))) + 3;
        v28 = v31 + 3;
        if (v21 < 4)
        {
          v28 = v40;
        }

        goto LABEL_74;
      }

      if (v30)
      {
        v31 = *v18;
        goto LABEL_72;
      }
    }

LABEL_74:
    if (v28 != 2)
    {
      if (v28 == 1)
      {
        v41 = v4;
        if (!(*(v5 + 48))(v18, 1))
        {
LABEL_120:
          (*(v5 + 32))(v17, v18, v41);
          (*(v5 + 56))(v17, 0, 1, v41);
          goto LABEL_121;
        }

LABEL_77:
        memcpy(v17, v18, v19);
LABEL_121:
        v50 = 1;
LABEL_125:
        v17[v21] = v50;
        goto LABEL_126;
      }

LABEL_122:
      *v17 = *v18;
      v17[v21] = 0;
LABEL_126:
      v43 = v53;
      goto LABEL_127;
    }

    (*(v5 + 32))(v17, v18, v4);
LABEL_124:
    v50 = 2;
    goto LABEL_125;
  }

  v52 = v4;
  if (v15 >= 0xFFFFFFFF)
  {
    *v10 = *v11;

    *v13 = *v14;

    v16 = v6 == 0;
    v17 = ((v13 + v8) & v9);
    v18 = ((v14 + v8) & v9);
    if (v16)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v12;
    }

    if (v19 <= v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v19;
    }

    if (v20 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v20;
    }

    if (v17 == v18)
    {
      goto LABEL_126;
    }

    v22 = v17[v21];
    v23 = v22 - 3;
    if (v22 < 3)
    {
      v25 = v52;
      goto LABEL_95;
    }

    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    v25 = v52;
    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_95;
      }

      v26 = *v17;
    }

    else if (v24 == 2)
    {
      v26 = *v17;
    }

    else if (v24 == 3)
    {
      v26 = *v17 | (v17[2] << 16);
    }

    else
    {
      v26 = *v17;
    }

    v44 = (v26 | (v23 << (8 * v21))) + 3;
    v22 = v26 + 3;
    if (v21 < 4)
    {
      v22 = v44;
    }

LABEL_95:
    if (v22 == 2)
    {
      (*(v5 + 8))(v17, v25);
    }

    else if (v22 == 1)
    {
      if (!(*(v5 + 48))(v17, 1, v25))
      {
        (*(v5 + 8))(v17, v52);
      }
    }

    else
    {
    }

    v45 = v18[v21];
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v41 = v52;
    }

    else
    {
      if (v21 <= 3)
      {
        v47 = v21;
      }

      else
      {
        v47 = 4;
      }

      v41 = v52;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = *v18;
        }

        else if (v47 == 3)
        {
          v48 = *v18 | (v18[2] << 16);
        }

        else
        {
          v48 = *v18;
        }

LABEL_115:
        v49 = (v48 | (v46 << (8 * v21))) + 3;
        v45 = v48 + 3;
        if (v21 < 4)
        {
          v45 = v49;
        }

        goto LABEL_117;
      }

      if (v47)
      {
        v48 = *v18;
        goto LABEL_115;
      }
    }

LABEL_117:
    if (v45 != 2)
    {
      if (v45 == 1)
      {
        if (!(*(v5 + 48))(v18, 1, v41))
        {
          goto LABEL_120;
        }

        goto LABEL_77;
      }

      goto LABEL_122;
    }

    (*(v5 + 32))(v17, v18, v41);
    goto LABEL_124;
  }

  v16 = v6 == 0;
  v32 = ((v13 + v8) & v9);
  if (v16)
  {
    v33 = v12 + 1;
  }

  else
  {
    v33 = v12;
  }

  if (v33 <= v12)
  {
    v33 = v12;
  }

  if (v33 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v33;
  }

  v34 = *(v32 + v21);
  v35 = v34 - 3;
  if (v34 < 3)
  {
    v39 = v52;
  }

  else
  {
    if (v21 <= 3)
    {
      v36 = v21;
    }

    else
    {
      v36 = 4;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v37 = *v32;
      }

      else if (v36 == 3)
      {
        v37 = *v32 | (*(((v13 + v8) & v9) + 2) << 16);
      }

      else
      {
        v37 = *v32;
      }

      v39 = v52;
LABEL_81:
      v42 = (v37 | (v35 << (8 * v21))) + 3;
      v34 = v37 + 3;
      if (v21 < 4)
      {
        v34 = v42;
      }

      goto LABEL_83;
    }

    v39 = v52;
    if (v36)
    {
      v37 = *v32;
      goto LABEL_81;
    }
  }

LABEL_83:
  if (v34 == 2)
  {
    goto LABEL_86;
  }

  if (v34 != 1)
  {

    goto LABEL_88;
  }

  if (!(*(v5 + 48))((v13 + v8) & v9, 1, v39))
  {
LABEL_86:
    (*(v5 + 8))((v13 + v8) & v9, v39);
  }

LABEL_88:
  v43 = v53;
  memcpy(v10, v11, v21 + v53 + 1);
LABEL_127:
  *((v10 + v21 + v43 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v21 + v43 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = v5 + ((v6 + 23) & ~(v6 | 7)) + 1;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v11 = ((v8 + ((v6 + 15) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_10:
      v9 = *((v8 + ((a1 + v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for NavigableListModifier(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = (v6 + 15) & ~(v6 | 7);
  v9 = (v6 + 23) & ~(v6 | 7);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v5 + 1;
  }

  if (v10 > v5)
  {
    v5 = v10;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v11 = v5 + v9 + 1;
  v12 = ((v11 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v14 = a3 - 2147483646;
    if (((v11 + v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v15;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v16 = a2 & 0x7FFFFFFF;
    if (v12)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (v12)
    {
      v18 = result;
      bzero(result, v12);
      result = v18;
      *v18 = v16;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v12) = v17;
      }

      else
      {
        *(result + v12) = v17;
      }
    }

    else if (v13)
    {
      *(result + v12) = v17;
    }

    return result;
  }

  v13 = 0;
  if (a2 < 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (v13 <= 1)
  {
    if (v13)
    {
      *(result + v12) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v13 == 2)
  {
    *(result + v12) = 0;
    goto LABEL_33;
  }

  *(result + v12) = 0;
  if (a2)
  {
LABEL_34:
    *((v11 + ((result + v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance NavigableListModifier<A>.ListKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance NavigableListModifier<A>.EnsureNavigationAuthority@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD874C0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t assignWithCopy for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else
  {
    v6 = a1 + 24;
    if (v4 == 1)
    {
      outlined destroy of NavigationAuthority(v6);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
    }

    else
    {
      swift_weakCopyAssign();
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
    }
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t initializeWithTake for NavigableListModifier.EnsureNavigationAuthority(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  v3 = (a2 + 32);
  if (*(a2 + 32) == 1)
  {
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v4 = result;
    swift_weakTakeInit();
    result = v4;
    *(v4 + 32) = *v3;
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t assignWithTake for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = (a1 + 32);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    v7 = a1 + 24;
    if (v5 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      goto LABEL_8;
    }

    outlined destroy of NavigationAuthority(v7);
    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_8;
  }

  swift_weakTakeInit();
  *v4 = *v6;
LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigableListModifier.EnsureNavigationAuthority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigableListModifier.BoundListSelectionDetector(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v9 <= v8)
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  if ((v6 & 0x1000F8) == 0 && ((-61 - (v6 & 0xF8 | 7)) | v6 & 0xF8 | 6uLL) - (v11 + 1) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = *a2;
    v14 = a2 + 11;
    *a1 = v15;
    v16 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = (((v14 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v22;
    v23 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v23;
    v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v25 = *v26;
    *(v25 + 4) = *(v26 + 4);
    v27 = ((v24 + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = *v28;
    *(v27 + 5) = *(v28 + 5);
    *v27 = v29;
    v30 = ((v24 + 31) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = ((v23 + 31) & 0xFFFFFFFFFFFFFFFCLL);
    *v30 = *v31;
    v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 11) & 0xFFFFFFFFFFFFFFF8);
    v34 = *(v33 + v11);
    if (v34 > 2)
    {
      memcpy(v32, ((v31 + 11) & 0xFFFFFFFFFFFFFFF8), v11 + 1);
LABEL_36:
      *(v32 + v11 + 1) = *(v33 + v11 + 1);
      return v3;
    }

    if (v34 == 2)
    {
      (*(v5 + 16))(v32, (v31 + 11) & 0xFFFFFFFFFFFFFFF8, v4);
      v35 = 2;
    }

    else
    {
      if (v34 != 1)
      {
        *v32 = *v33;
        *(v32 + v11) = 0;

LABEL_26:
        v36 = 8;
        if (v8 > 8)
        {
          v36 = v8;
        }

        if (v8 + 1 <= v8)
        {
          v37 = v8;
        }

        else
        {
          v37 = v8 + 1;
        }

        if (v37 <= 8)
        {
          v37 = 8;
        }

        if (v7)
        {
          v11 = v36;
        }

        else
        {
          v11 = v37;
        }

        goto LABEL_36;
      }

      if ((*(v5 + 48))(v33, 1, v4))
      {
        memcpy(v32, v33, v9);
      }

      else
      {
        (*(v5 + 16))(v32, v33, v4);
        (*(v5 + 56))(v32, 0, 1, v4);
      }

      v35 = 1;
    }

    *(v32 + v11) = v35;
    goto LABEL_26;
  }

  v13 = *a2;
  *v3 = *a2;
  v3 = (v13 + (((v6 & 0xF8 | 7) + 16) & ~(v6 & 0xF8 | 7)));

  return v3;
}

_DWORD *assignWithCopy for NavigableListModifier.BoundListSelectionDetector(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v14 = *v15;
  *(v14 + 4) = *(v15 + 4);
  v16 = (v12 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v13 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 12) = *(v17 + 12);
  v18 = ((v12 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80) & 0xF8;
  v23 = ~v22 & 0xFFFFFFFFFFFFFFF8;
  v22 += 11;
  v24 = v18 + v22;
  v25 = (v24 & v23);
  v26 = ((v19 + v22) & v23);
  v27 = *(v21 + 64);
  if (*(v21 + 84))
  {
    v28 = *(v21 + 64);
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v28 > v27)
  {
    v27 = v28;
  }

  if (v27 <= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = v27;
  }

  v30 = *(v25 + v29);
  v31 = v26[v29];
  if (v30 > 2)
  {
    if (v31 <= 2)
    {
      if (v31 == 2)
      {
LABEL_46:
        (*(v21 + 16))(v25, v26, v20);
        v32 = 2;
LABEL_47:
        *(v25 + v29) = v32;
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v31 > 2)
  {
    if (v30 == 2)
    {
      goto LABEL_25;
    }

    if (v30 != 1)
    {

      goto LABEL_28;
    }

    if (!(*(v21 + 48))(v24 & v23, 1, v20))
    {
LABEL_25:
      (*(v21 + 8))(v25, v20);
    }

LABEL_28:
    memcpy(v25, v26, v29 + 1);
    goto LABEL_48;
  }

  if (v25 == v26)
  {
    goto LABEL_48;
  }

  if (v30 == 2)
  {
LABEL_15:
    (*(v21 + 8))(v25, v20);
    goto LABEL_31;
  }

  if (v30 == 1)
  {
    if ((*(v21 + 48))(v24 & v23, 1, v20))
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

LABEL_31:
  v31 = v26[v29];
  v33 = v31 - 3;
  if (v31 < 3)
  {
    goto LABEL_45;
  }

  if (v29 <= 3)
  {
    v34 = v29;
  }

  else
  {
    v34 = 4;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_45;
    }

    v35 = *v26;
  }

  else if (v34 == 2)
  {
    v35 = *v26;
  }

  else if (v34 == 3)
  {
    v35 = *v26 | (v26[2] << 16);
  }

  else
  {
    v35 = *v26;
  }

  v36 = (v35 | (v33 << (8 * v29))) + 3;
  v31 = v35 + 3;
  if (v29 < 4)
  {
    v31 = v36;
  }

LABEL_45:
  if (v31 == 2)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v31 == 1)
  {
    if ((*(v21 + 48))(v26, 1, v20))
    {
      memcpy(v25, v26, v28);
    }

    else
    {
      (*(v21 + 16))(v25, v26, v20);
      (*(v21 + 56))(v25, 0, 1, v20);
    }

    v32 = 1;
    goto LABEL_47;
  }

  *v25 = *v26;
  *(v25 + v29) = 0;

LABEL_48:
  *(v25 + v29 + 1) = v26[v29 + 1];
  return a1;
}