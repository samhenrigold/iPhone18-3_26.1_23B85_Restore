double outlined copy of ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

double outlined consume of ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

double destroy for WindowToolbarConfiguration(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if ((~v1 & 0xF000000000000007) != 0 || v2 <= 0xFB)
  {
    return outlined consume of ToolbarLabelStyle.Data(*(a1 + 8), v1, v2);
  }

  return result;
}

uint64_t initializeWithCopy for WindowToolbarConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if ((~v2 & 0xF000000000000007) != 0 || v3 <= 0xFB)
  {
    v4 = *(a2 + 8);
    v5 = result;
    outlined copy of ToolbarLabelStyle.Data(v4, *(a2 + 16), v3);
    result = v5;
    *(v5 + 8) = v4;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
  }

  else
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t assignWithCopy for WindowToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = (~v3 & 0xF000000000000007) == 0 && v4 > 0xFB;
  if ((~*(a1 + 16) & 0xF000000000000007) != 0 || *(a1 + 24) <= 0xFBu)
  {
    if (v6)
    {
      outlined destroy of ToolbarLabelStyle.Data(a1 + 8);
      v9 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v9;
    }

    else
    {
      v10 = *(a2 + 8);
      outlined copy of ToolbarLabelStyle.Data(v10, *(a2 + 16), v4);
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *(a1 + 8) = v10;
      *(a1 + 16) = v3;
      v13 = *(a1 + 24);
      *(a1 + 24) = v4;
      outlined consume of ToolbarLabelStyle.Data(v11, v12, v13);
    }
  }

  else if (v6)
  {
    v7 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v7;
  }

  else
  {
    v14 = *(a2 + 8);
    outlined copy of ToolbarLabelStyle.Data(v14, *(a2 + 16), v4);
    *(a1 + 8) = v14;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
  }

  return a1;
}

uint64_t assignWithTake for WindowToolbarConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((~v2 & 0xF000000000000007) != 0 || v3 <= 0xFB)
  {
    if ((~v4 & 0xF000000000000007) != 0 || v5 <= 0xFB)
    {
      v8 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(result + 16) = v4;
      *(result + 24) = v5;
      v9 = result;
      outlined consume of ToolbarLabelStyle.Data(v8, v2, v3);
      return v9;
    }

    else
    {
      v6 = result;
      outlined destroy of ToolbarLabelStyle.Data(result + 8);
      result = v6;
      *(v6 + 8) = *(a2 + 8);
      *(v6 + 24) = *(a2 + 24);
    }
  }

  else
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowToolbarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 25))
  {
    return (*a1 + 8190);
  }

  v3 = *(a1 + 24);
  v4 = (*(a1 + 16) >> 57) & 0x78 | *(a1 + 16) & 7 | (((v3 >> 2) & 0x1F) << 7);
  v5 = 8190 - ((v3 >> 7) | (2 * v4));
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowToolbarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      v3 = ((a2 ^ 0x1FFF) << 12) | ((a2 ^ 0x1FFF) >> 1);
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = (v3 >> 5) & 0xFC;
    }
  }

  return result;
}

uint64_t one-time initialization function for tableHeaderFont(uint64_t a1)
{
  static Font.Weight.semibold.getter();
  result = static Font.system(_:design:weight:)();
  static ListMetrics.tableHeaderFont = result;
  return result;
}

void one-time initialization function for tableColumnContentPadding(uint64_t a1)
{
  static EdgeInsets.zero.getter();
  static ListMetrics.tableColumnContentPadding = v1;
  qword_1EAB09F00 = v2;
  qword_1EAB09F08 = v3;
  qword_1EAB09F10 = v4;
}

uint64_t _ConditionalContent<>.CommandsProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.CommandsProvider@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 12) = *(v1 + 44);
  v4 = *(v8 + 12);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 44) = v4;
  return outlined init with copy of _CommandsInputs(v7, &v6);
}

double protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.CommandsProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance A?<A>.Child@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for _ConditionalContent();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

{
  v3 = type metadata accessor for _ConditionalContent();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t assignWithCopy for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = *(a2 + 6);
  *(a1 + 28) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 40) = a2[5];

  *(a1 + 48) = a2[6];

  *(a1 + 56) = *(a2 + 14);
  *(a1 + 64) = a2[8];

  *(a1 + 72) = *(a2 + 18);
  return a1;
}

uint64_t assignWithTake for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t ControlWidgetConfiguration.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _PreferenceWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a2, AssociatedTypeWitness, v13);
  _PreferenceWritingModifier.init(key:value:)();
  ControlWidgetConfiguration.modifier<A>(_:)(v15, v18, v11);
  return (*(v12 + 8))(v15, v11);
}

double ControlWidgetConfiguration.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v11[0] = _PreferenceTransformModifier.init(key:transform:)();
  v11[1] = v8;
  v9 = type metadata accessor for _PreferenceTransformModifier();
  ControlWidgetConfiguration.modifier<A>(_:)(v11, a4, v9);

  return result;
}

uint64_t static _PreferenceWritingModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v9 = *a2;
  v8 = a2[1];
  *v16 = a2[2];
  *&v16[12] = *(a2 + 44);
  v12 = v9;
  v13 = v8;
  *v14 = a2[2];
  *&v14[12] = *(a2 + 44);
  outlined init with copy of _WidgetInputs(v15, &v21);
  PreferenceKeys.remove(_:)();
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = *v14;
  *(v18 + 12) = *&v14[12];
  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  v10 = outlined init with copy of _WidgetInputs(v17, v19);
  a3(v10, &v21);
  v19[0] = v21;
  v19[1] = v22;
  v20[0] = v23[0];
  *(v20 + 12) = *(v23 + 12);
  outlined destroy of _WidgetInputs(v19);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  return outlined destroy of _WidgetInputs(&v21);
}

uint64_t static _PreferenceTransformModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a1;
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  v20 = a2;
  v21 = a3;
  KeyPath = swift_getKeyPath();
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v17 = v5;
    v18 = partial apply for closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    MEMORY[0x1EEE9AC00](v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[2] = swift_getFunctionTypeMetadata();
    v14 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v14);
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    return AssociatedTypeWitness;
  }

  else
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    return OffsetAttribute2;
  }
}

uint64_t get_witness_table_7SwiftUI26ControlWidgetConfigurationRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_F15WritingModifierVyqd__GGAaBHpxAaBHD1__AhA0cdeK0HpyHCHCTm(void *a1, void (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

id EnvironmentValues.isUserAuthenticationEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v6)
    {
LABEL_3:
      _s7SwiftUI7WeakBoxVySo13UIWindowSceneCGSgWOhTm_0(&v5, type metadata accessor for WeakBox<UIWindowScene>?);
      return 0;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  _s7SwiftUI7WeakBoxVySo13UIWindowSceneCGSgWOhTm_0(&v5, type metadata accessor for WeakBox<UIWindowScene>);
  if (Strong)
  {
    v2 = [Strong systemProtectionManager];

    if (v2)
    {
      v3 = [v2 isUserAuthenticationEnabled];

      return v3;
    }
  }

  return 0;
}

double DragReorderableVStack.dragState.getter@<D0>(_OWORD *a1@<X8>)
{
  DragReorderableVStack.$state.getter(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t DragReorderableVStack.init(alignment:spacing:padding:contentTypes:insertionPlaceholder:delegate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v42 = a8;
  v47 = a7;
  v51 = a6;
  v49 = a5;
  v41 = a3;
  v48 = a1;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v54 = MEMORY[0x1E697E300];
  *&v54[8] = a11;
  v55 = MEMORY[0x1E697E2F0];
  v56 = a12;
  v57 = a13;
  v44 = type metadata accessor for DragReorderableLayoutAdaptor(0, v54);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v23 = &v40[-v22];
  *v54 = a11;
  v45 = *(&a11 + 1);
  v46 = a13;
  *&v54[16] = a12;
  v55 = a13;
  v24 = type metadata accessor for DragReorderableVStack(0, v54);
  v25 = *(v24 + 56);
  v50 = a9;
  v26 = a9 + v25;
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  v52[0] = v48;
  v52[1] = a2;
  v48 = a2;
  v27 = v41 & 1;
  v53 = v41 & 1;
  v42();
  if (*(a4 + 32))
  {
    static EdgeInsets.zero.getter();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  v32 = v47;
  outlined init with copy of _Benchmark(v47, v54);
  v33 = AGMakeUniqueID();
  v34 = AGMakeUniqueID();
  __swift_destroy_boxed_opaque_existential_1(v32);
  *(&v39 + 1) = MEMORY[0x1E697E2F0];
  *&v39 = v45;
  DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)(v52, v21, v49, v48, v27, v54, v33, v34, v23, v16, v17, v18, v19, MEMORY[0x1E697E300], a11, v39, a12, v46);
  v35 = v50;
  (*(v43 + 32))(v50, v23, v44);
  v36 = *(v24 + 52);
  type metadata accessor for Optional();
  v37 = type metadata accessor for Binding();
  return (*(*(v37 - 8) + 32))(v35 + v36, v51, v37);
}

uint64_t DragReorderableVStack.adaptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a2;
  v6 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = a3;
  v12 = v6;
  v7 = type metadata accessor for DragReorderableLayoutAdaptor(0, &v9);
  return (*(*(v7 - 8) + 16))(a4, v4, v7);
}

uint64_t DragReorderableVStack.insertionPlaceholder.getter()
{
  type metadata accessor for Optional();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v0);
}

double DragReorderableVStack.$state.getter@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for State<_DragReorderableView_DragState>();
  State.projectedValue.getter();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t DragReorderableLazyVStack.init(alignment:spacing:padding:contentTypes:insertionPlaceholder:delegate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v42 = a8;
  v47 = a7;
  v51 = a6;
  v49 = a5;
  v41 = a3;
  v48 = a1;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v55 = MEMORY[0x1E697E9E8];
  *&v55[8] = a11;
  v56 = MEMORY[0x1E697E9E0];
  v57 = a12;
  v58 = a13;
  v44 = type metadata accessor for DragReorderableLayoutAdaptor(0, v55);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v23 = &v40[-v22];
  *v55 = a11;
  v45 = *(&a11 + 1);
  v46 = a13;
  *&v55[16] = a12;
  v56 = a13;
  v24 = type metadata accessor for DragReorderableLazyVStack(0, v55);
  v25 = *(v24 + 56);
  v50 = a9;
  v26 = a9 + v25;
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  v52[0] = v48;
  v52[1] = a2;
  v48 = a2;
  v27 = v41 & 1;
  v53 = v41 & 1;
  v54 = 0;
  v42();
  if (*(a4 + 32))
  {
    static EdgeInsets.zero.getter();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  v32 = v47;
  outlined init with copy of _Benchmark(v47, v55);
  v33 = AGMakeUniqueID();
  v34 = AGMakeUniqueID();
  __swift_destroy_boxed_opaque_existential_1(v32);
  *(&v39 + 1) = MEMORY[0x1E697E9E0];
  *&v39 = v45;
  DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)(v52, v21, v49, v48, v27, v55, v33, v34, v23, v16, v17, v18, v19, MEMORY[0x1E697E9E8], a11, v39, a12, v46);
  v35 = v50;
  (*(v43 + 32))(v50, v23, v44);
  v36 = *(v24 + 52);
  type metadata accessor for Optional();
  v37 = type metadata accessor for Binding();
  return (*(*(v37 - 8) + 32))(v35 + v36, v51, v37);
}

uint64_t DragReorderableVStack.body.getter@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DragReorderableVStack.$state.getter(&v11);
  outlined destroy of Transaction(&v11);

  (*(v7 + 16))(v9, v3, a1);
  swift_getWitnessTable(a2, a1);
  return OptionalFormatInputToString.init(format:)(v9, a1, a3);
}

uint64_t instantiation function for generic protocol witness table for DragReorderableLazyVStack<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableLazyVStack<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DragReorderableVStack<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DragReorderableVStack<A, B>);
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for DragReorderableVStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = (v9 | v5) <= 7 && ((v9 | *(v4 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v6 + 7, v13 = ((((((((((v6 + 7 + ((v5 + 17) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, ((((v9 + 16) & ~v9) + v10 + 7 + ((v13 + (v9 | 7)) & ~(v9 | 7))) & 0xFFFFFFFFFFFFFFF8) + 40 <= 0x18))
  {
    __n = v10;
    v45 = ((v9 + 16) & ~v9) + v10 + 7;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v14 = (a1 + v5 + 17) & ~v5;
    v15 = (a2 + v5 + 17) & ~v5;
    (*(v4 + 16))(v14, v15);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *v22 = v24;
    v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    v28 = **(v27 - 8);

    v28(v25, v26, v27);
    v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    *((v29 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v33;
    v34 = v33 + 1;
    v36 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = v35;
    v37 = v36 + 1;
    v38 = *(v8 + 48);

    if (v38(v34, 1, v7))
    {
      memcpy(v37, v34, __n);
    }

    else
    {
      (*(v8 + 16))(v37, v34, v7);
      (*(v8 + 56))(v37, 0, 1, v7);
    }

    v40 = (v31 + v45) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v32 + v45) & 0xFFFFFFFFFFFFFFF8;
    v42 = *v41;
    *(v40 + 9) = *(v41 + 9);
    *v40 = v42;
    *(v40 + 32) = *(v41 + 32);
  }

  else
  {
    v39 = *a2;
    *v3 = *a2;
    v3 = (v39 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

double destroy for DragReorderableVStack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  (*(v4 + 8))(v7);
  v8 = *(v5 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1(((((((v8 + v7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v9 = (((((((((v8 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (a1 + (v12 | 7) + v9 + 8) & ~(v12 | 7);

  v14 = v12 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    (*(v11 + 8))(v14 & ~v12, v10);
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (v7 + 17 + a1) & ~v7;
  v9 = (v7 + 17 + a2) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  *(v19 + 24) = v21;
  *(v19 + 32) = *(v20 + 32);
  v22 = **(v21 - 8);

  v22(v19, v20, v21);
  v23 = ((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(a3 + 24);
  v26 = *(v25 - 8);
  v27 = *(v26 + 80);
  v28 = ((((((((((v10 + ((v7 + 17) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v27 | 7) + 8;
  v29 = ((v28 + a1) & ~(v27 | 7));
  v30 = ((v28 + a2) & ~(v27 | 7));
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v31 + v27 + 8;
  v47 = a1;
  v34 = v32 + v27 + 8;
  v35 = *(v26 + 48);

  if (v35(v34 & ~v27, 1, v25))
  {
    v36 = *(v26 + 84);
    v37 = *(v26 + 64);
    if (v36)
    {
      v38 = *(v26 + 64);
    }

    else
    {
      v38 = v37 + 1;
    }

    memcpy((v33 & ~v27), (v34 & ~v27), v38);
  }

  else
  {
    (*(v26 + 16))(v33 & ~v27, v34 & ~v27, v25);
    v40 = *(v26 + 56);
    v39 = v26 + 56;
    v40(v33 & ~v27, 0, 1, v25);
    v36 = *(v39 + 28);
    v37 = *(v39 + 8);
  }

  v41 = v37 + ((v27 + 16) & ~v27);
  if (!v36)
  {
    ++v41;
  }

  v42 = (v29 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  *(v42 + 9) = *(v43 + 9);
  *v42 = v44;
  *(v42 + 32) = *(v43 + 32);

  return v47;
}

uint64_t assignWithCopy for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *(v12 + 8) = v13[1];
  *(v12 + 16) = v13[2];
  *(v12 + 24) = v13[3];
  v12 += 39;
  v14 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *v14;
  v16 = (v12 & 0xFFFFFFFFFFFFFFF8) + 31;

  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *v17 = v19;
  __swift_assign_boxed_opaque_existential_1((v16 & 0xFFFFFFFFFFFFFFF8), ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (((((((((v11 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v22 + (v25 | 7) + 8;
  v27 = ((v26 + a1) & ~(v25 | 7));
  v43 = ((v26 + v3) & ~(v25 | 7));
  *v27 = *v43;

  v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *((v43 + 15) & 0xFFFFFFFFFFFFFFF8);

  v29 = v28 + v25 + 8;
  v30 = v25 + 8 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v24 + 48);
  LODWORD(v3) = v31(v29 & ~v25, 1, v23);
  v32 = v31(v30 & ~v25, 1, v23);
  if (v3)
  {
    if (v32)
    {
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
LABEL_6:
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 + 1;
      }

      memcpy((v29 & ~v25), (v30 & ~v25), v35);
      goto LABEL_12;
    }

    (*(v24 + 16))(v29 & ~v25, v30 & ~v25, v23);
    (*(v24 + 56))(v29 & ~v25, 0, 1, v23);
  }

  else
  {
    if (v32)
    {
      (*(v24 + 8))(v29 & ~v25, v23);
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
      goto LABEL_6;
    }

    (*(v24 + 24))(v29 & ~v25, v30 & ~v25, v23);
  }

LABEL_12:
  v36 = *(v24 + 64) + ((v25 + 16) & ~v25);
  if (!*(v24 + 84))
  {
    ++v36;
  }

  v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 8);
  *v37 = *v38;
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 24) = v40;
  *(v37 + 32) = *(v38 + 32);

  return a1;
}

uint64_t initializeWithTake for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v21;
  v22 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v23;
  *(v20 + 16) = v22;
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = (((((((((v11 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(a3 + 24);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + (v29 | 7) + 8;
  v31 = ((v30 + a1) & ~(v29 | 7));
  v32 = ((v30 + a2) & ~(v29 | 7));
  *v31 = *v32;
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = v33 + v29 + 8;
  v36 = v34 + v29 + 8;
  if ((*(v28 + 48))(v36 & ~v29, 1, v27))
  {
    v37 = *(v28 + 84);
    v38 = *(v28 + 64);
    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 + 1;
    }

    memcpy((v35 & ~v29), (v36 & ~v29), v39);
  }

  else
  {
    (*(v28 + 32))(v35 & ~v29, v36 & ~v29, v27);
    v41 = *(v28 + 56);
    v40 = v28 + 56;
    v41(v35 & ~v29, 0, 1, v27);
    v37 = *(v40 + 28);
    v38 = *(v40 + 8);
  }

  v42 = v38 + ((v29 + 16) & ~v29);
  if (!v37)
  {
    ++v42;
  }

  v43 = v31 + v42 + 7;
  v44 = (v32 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 16);
  v43 &= 0xFFFFFFFFFFFFFFF8;
  *(v43 + 32) = *(v44 + 32);
  *v43 = v45;
  *(v43 + 16) = v46;
  return a1;
}

uint64_t assignWithTake for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 17 + a1) & ~v9;
  v11 = (v9 + 17 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *(v13 + 8) = v14[1];
  *(v13 + 16) = v14[2];
  *(v13 + 24) = v14[3];
  v13 += 39;
  v15 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15;
  v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v13 & 0xFFFFFFFFFFFFFFF8) = *v15;
  v18 = (v13 & 0xFFFFFFFFFFFFFFF8) + 31;

  v19 = v17 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v18 & 0xFFFFFFFFFFFFFFF8));
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((((((((v12 + ((v9 + 17) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(a3 + 24);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + (v31 | 7) + 8;
  v33 = ((v32 + a1) & ~(v31 | 7));
  v49 = ((v32 + a2) & ~(v31 | 7));
  *v33 = *v49;

  v34 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = v34 + v31 + 8;
  v37 = v35 + v31 + 8;
  v38 = *(v30 + 48);
  LODWORD(v35) = v38(v36 & ~v31, 1, v29);
  v39 = v38(v37 & ~v31, 1, v29);
  if (v35)
  {
    if (v39)
    {
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
LABEL_6:
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 + 1;
      }

      memcpy((v36 & ~v31), (v37 & ~v31), v42);
      goto LABEL_12;
    }

    (*(v30 + 32))(v36 & ~v31, v37 & ~v31, v29);
    (*(v30 + 56))(v36 & ~v31, 0, 1, v29);
  }

  else
  {
    if (v39)
    {
      (*(v30 + 8))(v36 & ~v31, v29);
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
      goto LABEL_6;
    }

    (*(v30 + 40))(v36 & ~v31, v37 & ~v31, v29);
  }

LABEL_12:
  v43 = *(v30 + 64) + ((v31 + 16) & ~v31);
  if (!*(v30 + 84))
  {
    ++v43;
  }

  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v49 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = *(v45 + 8);
  *v44 = *v45;
  *(v44 + 8) = v46;
  v47 = *(v45 + 24);
  *(v44 + 16) = *(v45 + 16);
  *(v44 + 24) = v47;
  *(v44 + 32) = *(v45 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableVStack(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(*(*(a3 + 16) - 8) + 64);
  v15 = *(v8 + 80);
  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + 7;
  v18 = v15 | 7;
  v19 = ((((((((((v14 + 7 + ((v13 + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8;
  if (v12 >= a2)
  {
    goto LABEL_36;
  }

  v20 = ((v16 + *(*(v7 - 8) + 64) + ((v15 + 16) & ~v15) + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v21 = a2 - v12;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
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

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v12 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v11 <= v6)
  {
    v31 = (a1 + v13 + 17) & ~v13;
    if (v5 < 0x7FFFFFFF)
    {
      v33 = *((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v32 = *(v4 + 48);

      return v32(v31);
    }
  }

  else
  {
    v30 = (*(v9 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v10, v7);
    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for DragReorderableVStack(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v10 + 80);
  if (v11)
  {
    v15 = v11 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 + 7;
  v19 = ((((((((((v13 + 7 + ((v12 + 17) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 + (v14 | 7);
  v21 = (v14 + 16) & ~v14;
  if (v11)
  {
    v22 = *(*(v9 - 8) + 64);
  }

  else
  {
    v22 = *(*(v9 - 8) + 64) + 1;
  }

  v23 = v21 + v22;
  v24 = ((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v17 < a3)
  {
    v25 = a3 - v17;
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v26 < 0x100)
    {
      v5 = 1;
    }

    if (v26 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v27 = a2 - v17;
    }

    else
    {
      v27 = 1;
    }

    if (v24)
    {
      v28 = ~v17 + a2;
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v5)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v5)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v15 <= v8)
  {
    if (v8 < a2)
    {
      if (!v19)
      {
        return;
      }

      v32 = ~v8 + a2;
      v30 = a1;
      bzero(a1, v19);
      goto LABEL_86;
    }

    v35 = (a1 + v12 + 17) & ~v12;
    if (v7 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v39;
    }

    else
    {
      v36 = *(v6 + 56);

      v36(v35);
    }
  }

  else
  {
    v30 = ((a1 + v20) & ~(v14 | 7));
    if (v16 >= a2)
    {
      v30 = ((v14 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
      if (v15 >= a2)
      {
        v37 = *(v10 + 56);
        v38 = a2 + 1;

        v37(v30, v38, v11, v9);
      }

      else
      {
        if (v22 <= 3)
        {
          v34 = ~(-1 << (8 * v22));
        }

        else
        {
          v34 = -1;
        }

        if (v22)
        {
          v32 = v34 & (~v15 + a2);
          if (v22 <= 3)
          {
            v33 = v22;
          }

          else
          {
            v33 = 4;
          }

          bzero(v30, v22);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_56;
            }

            goto LABEL_73;
          }

          goto LABEL_84;
        }
      }
    }

    else
    {
      if (v23 <= 3)
      {
        v31 = ~(-1 << (8 * v23));
      }

      else
      {
        v31 = -1;
      }

      if (v23)
      {
        v32 = v31 & (~v16 + a2);
        if (v23 <= 3)
        {
          v33 = v21 + v22;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v23);
        if (v33 <= 2)
        {
          if (v33 == 1)
          {
LABEL_56:
            *v30 = v32;
            return;
          }

LABEL_73:
          *v30 = v32;
          return;
        }

LABEL_84:
        if (v33 == 3)
        {
          *v30 = v32;
          v30[2] = BYTE2(v32);
          return;
        }

LABEL_86:
        *v30 = v32;
      }
    }
  }
}

uint64_t type metadata completion function for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v10 = a4;
  v11 = v5;
  v12 = v6;
  v13 = a5;
  v14 = *(a1 + 32);
  result = type metadata accessor for DragReorderableLayoutAdaptor(319, &v10);
  if (v8 <= 0x3F)
  {
    v10 = *(result - 8) + 64;
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v9 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      v12 = "(";
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DragReorderableLazyVStack(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = (v9 | v5) <= 7 && ((v9 | *(v4 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v6 + 7, v13 = ((((((((((v6 + 7 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, ((((v9 + 16) & ~v9) + v10 + 7 + ((v13 + (v9 | 7)) & ~(v9 | 7))) & 0xFFFFFFFFFFFFFFF8) + 40 <= 0x18))
  {
    __n = v10;
    v45 = ((v9 + 16) & ~v9) + v10 + 7;
    *a1 = *a2;
    a1[2] = a2[2];
    v14 = (a1 + v5 + 24) & ~v5;
    v15 = (a2 + v5 + 24) & ~v5;
    (*(v4 + 16))(v14, v15);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *v22 = v24;
    v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    v28 = **(v27 - 8);

    v28(v25, v26, v27);
    v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    *((v29 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v33;
    v34 = v33 + 1;
    v36 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = v35;
    v37 = v36 + 1;
    v38 = *(v8 + 48);

    if (v38(v34, 1, v7))
    {
      memcpy(v37, v34, __n);
    }

    else
    {
      (*(v8 + 16))(v37, v34, v7);
      (*(v8 + 56))(v37, 0, 1, v7);
    }

    v40 = (v31 + v45) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v32 + v45) & 0xFFFFFFFFFFFFFFF8;
    v42 = *v41;
    *(v40 + 9) = *(v41 + 9);
    *v40 = v42;
    *(v40 + 32) = *(v41 + 32);
  }

  else
  {
    v39 = *a2;
    *v3 = *a2;
    v3 = (v39 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

double destroy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = *(v4 + 80);
  v7 = (v6 + 24 + a1) & ~v6;
  (*(v4 + 8))(v7);
  v8 = *(v5 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1(((((((v8 + v7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v9 = (((((((((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (a1 + (v12 | 7) + v9 + 8) & ~(v12 | 7);

  v14 = v12 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    (*(v11 + 8))(v14 & ~v12, v10);
  }

  return result;
}

uint64_t initializeWithCopy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (v7 + 24 + a1) & ~v7;
  v9 = (v7 + 24 + a2) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  *(v19 + 24) = v21;
  *(v19 + 32) = *(v20 + 32);
  v22 = **(v21 - 8);

  v22(v19, v20, v21);
  v23 = ((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(a3 + 24);
  v26 = *(v25 - 8);
  v27 = *(v26 + 80);
  v28 = ((((((((((v10 + ((v7 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v27 | 7) + 8;
  v29 = ((v28 + a1) & ~(v27 | 7));
  v30 = ((v28 + a2) & ~(v27 | 7));
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v31 + v27 + 8;
  v47 = a1;
  v34 = v32 + v27 + 8;
  v35 = *(v26 + 48);

  if (v35(v34 & ~v27, 1, v25))
  {
    v36 = *(v26 + 84);
    v37 = *(v26 + 64);
    if (v36)
    {
      v38 = *(v26 + 64);
    }

    else
    {
      v38 = v37 + 1;
    }

    memcpy((v33 & ~v27), (v34 & ~v27), v38);
  }

  else
  {
    (*(v26 + 16))(v33 & ~v27, v34 & ~v27, v25);
    v40 = *(v26 + 56);
    v39 = v26 + 56;
    v40(v33 & ~v27, 0, 1, v25);
    v36 = *(v39 + 28);
    v37 = *(v39 + 8);
  }

  v41 = v37 + ((v27 + 16) & ~v27);
  if (!v36)
  {
    ++v41;
  }

  v42 = (v29 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  *(v42 + 9) = *(v43 + 9);
  *v42 = v44;
  *(v42 + 32) = *(v43 + 32);

  return v47;
}

uint64_t assignWithCopy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v5;
  *(a1 + 20) = *(a2 + 20);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *(v12 + 8) = v13[1];
  *(v12 + 16) = v13[2];
  *(v12 + 24) = v13[3];
  v12 += 39;
  v14 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *v14;
  v16 = (v12 & 0xFFFFFFFFFFFFFFF8) + 31;

  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *v17 = v19;
  __swift_assign_boxed_opaque_existential_1((v16 & 0xFFFFFFFFFFFFFFF8), ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (((((((((v11 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v22 + (v25 | 7) + 8;
  v27 = ((v26 + a1) & ~(v25 | 7));
  v43 = ((v26 + v3) & ~(v25 | 7));
  *v27 = *v43;

  v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *((v43 + 15) & 0xFFFFFFFFFFFFFFF8);

  v29 = v28 + v25 + 8;
  v30 = v25 + 8 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v24 + 48);
  LODWORD(v3) = v31(v29 & ~v25, 1, v23);
  v32 = v31(v30 & ~v25, 1, v23);
  if (v3)
  {
    if (v32)
    {
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
LABEL_6:
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 + 1;
      }

      memcpy((v29 & ~v25), (v30 & ~v25), v35);
      goto LABEL_12;
    }

    (*(v24 + 16))(v29 & ~v25, v30 & ~v25, v23);
    (*(v24 + 56))(v29 & ~v25, 0, 1, v23);
  }

  else
  {
    if (v32)
    {
      (*(v24 + 8))(v29 & ~v25, v23);
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
      goto LABEL_6;
    }

    (*(v24 + 24))(v29 & ~v25, v30 & ~v25, v23);
  }

LABEL_12:
  v36 = *(v24 + 64) + ((v25 + 16) & ~v25);
  if (!*(v24 + 84))
  {
    ++v36;
  }

  v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 8);
  *v37 = *v38;
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 24) = v40;
  *(v37 + 32) = *(v38 + 32);

  return a1;
}

uint64_t initializeWithTake for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v21;
  v22 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v23;
  *(v20 + 16) = v22;
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = (((((((((v11 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(a3 + 24);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + (v29 | 7) + 8;
  v31 = ((v30 + a1) & ~(v29 | 7));
  v32 = ((v30 + a2) & ~(v29 | 7));
  *v31 = *v32;
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = v33 + v29 + 8;
  v36 = v34 + v29 + 8;
  if ((*(v28 + 48))(v36 & ~v29, 1, v27))
  {
    v37 = *(v28 + 84);
    v38 = *(v28 + 64);
    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 + 1;
    }

    memcpy((v35 & ~v29), (v36 & ~v29), v39);
  }

  else
  {
    (*(v28 + 32))(v35 & ~v29, v36 & ~v29, v27);
    v41 = *(v28 + 56);
    v40 = v28 + 56;
    v41(v35 & ~v29, 0, 1, v27);
    v37 = *(v40 + 28);
    v38 = *(v40 + 8);
  }

  v42 = v38 + ((v29 + 16) & ~v29);
  if (!v37)
  {
    ++v42;
  }

  v43 = v31 + v42 + 7;
  v44 = (v32 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 16);
  v43 &= 0xFFFFFFFFFFFFFFF8;
  *(v43 + 32) = *(v44 + 32);
  *v43 = v45;
  *(v43 + 16) = v46;
  return a1;
}

uint64_t assignWithTake for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *(v13 + 8) = v14[1];
  *(v13 + 16) = v14[2];
  *(v13 + 24) = v14[3];
  v13 += 39;
  v15 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15;
  v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v13 & 0xFFFFFFFFFFFFFFF8) = *v15;
  v18 = (v13 & 0xFFFFFFFFFFFFFFF8) + 31;

  v19 = v17 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v18 & 0xFFFFFFFFFFFFFFF8));
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((((((((v12 + ((v9 + 24) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(a3 + 24);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + (v31 | 7) + 8;
  v33 = ((v32 + a1) & ~(v31 | 7));
  v49 = ((v32 + a2) & ~(v31 | 7));
  *v33 = *v49;

  v34 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = v34 + v31 + 8;
  v37 = v35 + v31 + 8;
  v38 = *(v30 + 48);
  LODWORD(v35) = v38(v36 & ~v31, 1, v29);
  v39 = v38(v37 & ~v31, 1, v29);
  if (v35)
  {
    if (v39)
    {
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
LABEL_6:
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 + 1;
      }

      memcpy((v36 & ~v31), (v37 & ~v31), v42);
      goto LABEL_12;
    }

    (*(v30 + 32))(v36 & ~v31, v37 & ~v31, v29);
    (*(v30 + 56))(v36 & ~v31, 0, 1, v29);
  }

  else
  {
    if (v39)
    {
      (*(v30 + 8))(v36 & ~v31, v29);
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
      goto LABEL_6;
    }

    (*(v30 + 40))(v36 & ~v31, v37 & ~v31, v29);
  }

LABEL_12:
  v43 = *(v30 + 64) + ((v31 + 16) & ~v31);
  if (!*(v30 + 84))
  {
    ++v43;
  }

  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v49 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = *(v45 + 8);
  *v44 = *v45;
  *(v44 + 8) = v46;
  v47 = *(v45 + 24);
  *(v44 + 16) = *(v45 + 16);
  *(v44 + 24) = v47;
  *(v44 + 32) = *(v45 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableLazyVStack(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(*(*(a3 + 16) - 8) + 64);
  v15 = *(v8 + 80);
  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + 7;
  v18 = v15 | 7;
  v19 = ((((((((((v14 + 7 + ((v13 + 24) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8;
  if (v12 >= a2)
  {
    goto LABEL_36;
  }

  v20 = ((v16 + *(*(v7 - 8) + 64) + ((v15 + 16) & ~v15) + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v21 = a2 - v12;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
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

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v12 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v11 <= v6)
  {
    v31 = (a1 + v13 + 24) & ~v13;
    if (v5 < 0x7FFFFFFF)
    {
      v33 = *((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v32 = *(v4 + 48);

      return v32(v31);
    }
  }

  else
  {
    v30 = (*(v9 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v10, v7);
    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for DragReorderableLazyVStack(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v10 + 80);
  if (v11)
  {
    v15 = v11 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 + 7;
  v19 = ((((((((((v13 + 7 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 + (v14 | 7);
  v21 = (v14 + 16) & ~v14;
  if (v11)
  {
    v22 = *(*(v9 - 8) + 64);
  }

  else
  {
    v22 = *(*(v9 - 8) + 64) + 1;
  }

  v23 = v21 + v22;
  v24 = ((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v17 < a3)
  {
    v25 = a3 - v17;
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v26 < 0x100)
    {
      v5 = 1;
    }

    if (v26 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v27 = a2 - v17;
    }

    else
    {
      v27 = 1;
    }

    if (v24)
    {
      v28 = ~v17 + a2;
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v5)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v5)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v15 <= v8)
  {
    if (v8 < a2)
    {
      if (!v19)
      {
        return;
      }

      v32 = ~v8 + a2;
      v30 = a1;
      bzero(a1, v19);
      goto LABEL_86;
    }

    v35 = (a1 + v12 + 24) & ~v12;
    if (v7 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v39;
    }

    else
    {
      v36 = *(v6 + 56);

      v36(v35);
    }
  }

  else
  {
    v30 = ((a1 + v20) & ~(v14 | 7));
    if (v16 >= a2)
    {
      v30 = ((v14 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
      if (v15 >= a2)
      {
        v37 = *(v10 + 56);
        v38 = a2 + 1;

        v37(v30, v38, v11, v9);
      }

      else
      {
        if (v22 <= 3)
        {
          v34 = ~(-1 << (8 * v22));
        }

        else
        {
          v34 = -1;
        }

        if (v22)
        {
          v32 = v34 & (~v15 + a2);
          if (v22 <= 3)
          {
            v33 = v22;
          }

          else
          {
            v33 = 4;
          }

          bzero(v30, v22);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_56;
            }

            goto LABEL_73;
          }

          goto LABEL_84;
        }
      }
    }

    else
    {
      if (v23 <= 3)
      {
        v31 = ~(-1 << (8 * v23));
      }

      else
      {
        v31 = -1;
      }

      if (v23)
      {
        v32 = v31 & (~v16 + a2);
        if (v23 <= 3)
        {
          v33 = v21 + v22;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v23);
        if (v33 <= 2)
        {
          if (v33 == 1)
          {
LABEL_56:
            *v30 = v32;
            return;
          }

LABEL_73:
          *v30 = v32;
          return;
        }

LABEL_84:
        if (v33 == 3)
        {
          *v30 = v32;
          v30[2] = BYTE2(v32);
          return;
        }

LABEL_86:
        *v30 = v32;
      }
    }
  }
}

void type metadata accessor for State<_DragReorderableView_DragState>()
{
  if (!lazy cache variable for type metadata for State<_DragReorderableView_DragState>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<_DragReorderableView_DragState>);
    }
  }
}

void *NavigationTitleStorage.reduce(onto:)(void *result)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (!v6 || *(v1 + 40) == 5 || !*(v1 + 48))
  {
    result = (result)(&v14);
    v7 = v17;
    if (v17 != 1)
    {
      v8 = v18;
      v9 = v19;
      v10 = v20;
      if (!v6)
      {
        v3 = v14;
        v4 = v15;
        v5 = v16;
        outlined copy of Text?(v14, v15, v16, v17);
        v6 = v7;
      }

      *v2 = v3;
      *(v2 + 8) = v4;
      *(v2 + 16) = v5;
      *(v2 + 24) = v6;
      v11 = *(v2 + 40);
      if (v11 == 5)
      {
        LOBYTE(v11) = v8;
      }

      *(v2 + 40) = v11;
      v12 = *(v2 + 48);
      if (!v12)
      {

        v12 = v9;
      }

      result = outlined destroy of NavigationTitleStorage?(&v14);
      *(v2 + 48) = v12;
      v13 = *(v2 + 56);
      if (v13 == 3)
      {
        LOBYTE(v13) = v10;
      }

      *(v2 + 56) = v13;
    }
  }

  return result;
}

uint64_t View.navigationTitle<A>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = a8;
  v24 = a6;
  v23 = a9;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009CE0](v29, v17);
  Text.assertUnstyled(_:options:)();
  (*(v16 + 16))(v19, a5, a7);
  v20 = AnyView.init<A>(_:)();
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3 & 1;
  *(&v27 + 1) = a4;
  *v28 = 1;
  v28[8] = 5;
  *&v28[16] = v20;
  v28[24] = 3;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.navigationTitlePreferenceTransform(adding:)(&v26, v24, v25, v23);
  v29[0] = v26;
  v29[1] = v27;
  v30[0] = *v28;
  *(v30 + 9) = *&v28[9];
  return outlined destroy of NavigationTitleStorage(v29);
}

uint64_t View.navigationTitle<A>(_:icon:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  View.navigationTitle<A>(_:icon:)(v15, v16, v18 & 1, v20, a5, a6, a7, a8, a9, a10);
  outlined consume of Text.Storage(v15, v17, v19 & 1);
}

uint64_t View.navigationTitle<A, B>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  View.navigationTitle<A>(_:icon:)(v18, v19, v21 & 1, v23, a2, a3, a5, a6, a9, a8);
  outlined consume of Text.Storage(v18, v20, v22 & 1);
}

uint64_t View.assistiveAccessNavigationIcon(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v11[0] = a1;

  v8 = 0u;
  v9 = 0u;
  *v10 = 1;
  v10[8] = 5;
  *&v10[16] = AnyView.init<A>(_:)();
  v10[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v8, a2, a3, a4);
  v11[0] = v8;
  v11[1] = v9;
  v12[0] = *v10;
  *(v12 + 9) = *&v10[9];
  return outlined destroy of NavigationTitleStorage(v11);
}

double View.assistiveAccessNavigationIcon(systemImage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  specialized Image.init(systemName:)(a1, a2);
  View.assistiveAccessNavigationIcon(_:)(v10, a3, a4, a5);

  return result;
}

uint64_t View.navigationTitle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v51 = a7;
  v52 = a5;
  v44 = a4;
  v45 = a3;
  v42 = a1;
  v43 = a2;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>(0);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v16 + *(v17 + 60);
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v48 = v20;
  v49 = v19;
  v46 = v21;
  v47 = v22;
  v54[0] = 1;
  *&v61 = a1;
  *(&v61 + 1) = a2;
  *&v62 = a3;
  *(&v62 + 1) = a4;
  _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v55);
  v56 = 0u;
  v57 = 0u;
  *&v58 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(&v58 + 1) = 0;
  *v59 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *&v59[8] = 0;
  v59[16] = 0;
  *&v59[17] = v61;
  v59[19] = BYTE2(v61);
  *&v59[20] = 0;
  v59[24] = v54[0];
  *&v59[25] = 2;
  v59[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v13, 1, 1, v23);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = v26;
  v28 = *(v26 + 56);
  v25(&v18[v28], 1, 1, v24);
  v29 = v58;
  v64 = v58;
  v65[0] = *v59;
  *(v65 + 12) = *&v59[12];
  v31 = v55;
  v30 = v56;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v60 = 0;
  *(v18 + 9) = v57;
  *(v18 + 10) = v29;
  *(v18 + 7) = v31;
  *(v18 + 8) = v30;
  v32 = v65[1];
  *(v18 + 11) = v65[0];
  *(v18 + 12) = v32;
  *(v18 + 26) = 0;
  v18[220] = 0;
  v33 = v43;
  *v18 = v42;
  *(v18 + 1) = v33;
  v34 = v44;
  *(v18 + 2) = v45;
  *(v18 + 3) = v34;
  v18[32] = 0;
  v18[72] = 0;
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  outlined init with copy of TextFieldState(&v55, v54);

  outlined assign with copy of Binding<TextSelection?>?(v13, &v18[v28]);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(v24) = v38;
  v40 = v39;
  outlined destroy of TextFieldState(&v55);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(v13, type metadata accessor for Binding<TextSelection?>?);
  *(v18 + 5) = v35;
  *(v18 + 6) = v37;
  v18[56] = v24 & 1;
  *(v18 + 8) = v40;
  (*(*(v27 - 8) + 56))(v18, 0, 1, v27);
  *v16 = 0;
  MEMORY[0x18D00A570](v16, v52, v50, v53);
  return _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(v16, type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>);
}

uint64_t View.navigationSubtitle(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    MEMORY[0x18D009CE0](v11);
    Text.assertUnstyled(_:options:)();
  }

  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3 & 1;
  v11[3] = a4;
  return View.preference<A>(key:value:)();
}

uint64_t View.navigationSubtitle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v15[0] = v8;
  v15[1] = v9;
  v12 = v11 & 1;
  v15[2] = v11 & 1;
  v15[3] = v13;
  View.preference<A>(key:value:)();
  outlined consume of Text.Storage(v8, v10, v12);
}

uint64_t NavigationTitleStorage.accessibilityLabel(in:)(__int128 *a1)
{
  if (!*(v1 + 24))
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v4 = *v1;
  v3 = *(v1 + 8);
  outlined copy of Text.Storage(*v1, v3, v2 & 1);

  static AccessibilityCore.TextResolutionOptions.defaultAttributedText.getter();
  v5 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  outlined consume of Text.Storage(v4, v3, v2 & 1);

  return v5;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationSubtitleKey(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  v3 = result[3];
  if (v3)
  {
    v4 = *result;
    v5 = result[2];
  }

  else
  {
    result = a2(&v6);
    v4 = v6;
    v5 = v7;
    v3 = v8;
  }

  *v2 = v4;
  v2[2] = v5;
  v2[3] = v3;
  return result;
}

void type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>();
    v7[0] = MEMORY[0x1E69E73E0];
    v7[1] = MEMORY[0x1E6981E70];
    v7[2] = v3;
    v7[3] = MEMORY[0x1E6981E60];
    v7[4] = v4;
    v5 = type metadata accessor for NavigationPropertiesModifier(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>()
{
  result = lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>;
  if (!lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
    result = swift_getWitnessTable(protocol conformance descriptor for TextField<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>);
  }

  return result;
}

uint64_t _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationSubtitleKey>, &type metadata for NavigationSubtitleKey, &protocol witness table for NavigationSubtitleKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = (a1 + 32);
  v17 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v17 != 1)
    {
      *v16 = v17;

      goto LABEL_16;
    }

    v18 = 1;
  }

  else
  {
    if (v17 != 1)
    {
      *v16 = v17;

      goto LABEL_16;
    }

    outlined destroy of Transaction(a1 + 32);
    v18 = *(a2 + 32);
  }

  *v16 = v18;
LABEL_16:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      goto LABEL_6;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
LABEL_6:
  v10 = (a1 + 32);
  v11 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v11 != 1)
    {
      *v10 = v11;

      goto LABEL_11;
    }

    outlined destroy of Transaction(a1 + 32);
    v11 = 1;
  }

  *v10 = v11;
LABEL_11:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void *specialized static NavigationTitleKey.reduce(value:nextValue:)(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  v3 = result[3];
  if (v3 == 1)
  {
    a2(v16);
    v4 = *(v2 + 1);
    v18 = *v2;
    v19 = v4;
    *v20 = *(v2 + 2);
    *&v20[9] = *(v2 + 41);
    result = outlined destroy of NavigationTitleStorage?(&v18);
    v5 = v16[1];
    *v2 = v16[0];
    *(v2 + 1) = v5;
    *(v2 + 2) = v17[0];
    *(v2 + 41) = *(v17 + 9);
  }

  else
  {
    v6 = *result;
    v7 = result[1];
    v8 = result[2];
    if (!v3 || *(result + 40) == 5 || !result[6])
    {
      result = a2(&v18);
      v9 = *(&v19 + 1);
      if (*(&v19 + 1) != 1)
      {
        v10 = v20[8];
        v11 = *&v20[16];
        v12 = v20[24];
        if (!v3)
        {
          v7 = *(&v18 + 1);
          v6 = v18;
          v8 = v19;
          outlined copy of Text?(v18, *(&v18 + 1), v19, *(&v19 + 1));
          v3 = v9;
        }

        *v2 = v6;
        v2[1] = v7;
        v2[2] = v8;
        v2[3] = v3;
        v13 = *(v2 + 40);
        if (v13 == 5)
        {
          LOBYTE(v13) = v10;
        }

        *(v2 + 40) = v13;
        v14 = v2[6];
        if (!v14)
        {

          v14 = v11;
        }

        result = outlined destroy of NavigationTitleStorage?(&v18);
        v2[6] = v14;
        v15 = *(v2 + 56);
        if (v15 == 3)
        {
          LOBYTE(v15) = v12;
        }

        *(v2 + 56) = v15;
      }
    }
  }

  return result;
}

uint64_t ImmersiveSpaceSceneUpdateTransition.Style.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6574616D696E612ELL;
  }

  if (a1 == 1)
  {
    return 0x6D696E41746F6E2ELL;
  }

  outlined copy of Transaction?(a1);
  v3 = Animation.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  outlined consume of ListItemTint?(a1);
  return 0x6574616D696E612ELL;
}

uint64_t ImmersiveSpaceSceneUpdateTransition.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xEC00000064657461;
      v3 = 0x6D696E41746F6E2ELL;
    }

    else
    {

      v4 = Animation.description.getter();
      MEMORY[0x18D00C9B0](v4);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      outlined consume of ListItemTint?(a1);
      v3 = 0x6574616D696E612ELL;
      v2 = 0xEA00000000002864;
    }
  }

  else
  {
    v2 = 0xEE00296C696E2864;
    v3 = 0x6574616D696E612ELL;
  }

  MEMORY[0x18D00C9B0](v3, v2);

  MEMORY[0x18D00C9B0](0x203A6465657320, 0xE700000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  return 0x203A656C797473;
}

void ImmersiveSpace.init<A>(content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(content:)();
}

void ImmersiveSpace.init<A>(id:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(id:content:)();
}

void ImmersiveSpace.init(id:for:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(for:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init(id:for:content:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init(for:content:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<>(id:lazyContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData()
{
  result = lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData;
  if (!lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NoImmersiveSpaceData, &type metadata for NoImmersiveSpaceData, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData);
  }

  return result;
}

double destroy for ImmersiveSpaceSceneUpdateTransition.Style(unint64_t *a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  v3 = v2 + 1;
  if (v1)
  {
    v4 = v3 > 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  v5 = v4 + 1;
  if (v3)
  {
    v6 = v5 > 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = a1;

    a1 = v7;
  }

  *a1 = v3;
  return a1;
}

unint64_t *assignWithCopy for ImmersiveSpaceSceneUpdateTransition.Style(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  LODWORD(v4) = -1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v5) = -1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 + 1;
  v7 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  v8 = v4 + 1;
  if (v7)
  {
    v9 = v8 >= 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (v3)
  {
    v11 = v6 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a1 = v7;
    if (v10)
    {
    }
  }

  else if (v10)
  {
    *a1 = v7;
  }

  else
  {

    *a1 = *a2;
  }

  return a1;
}

unint64_t *assignWithTake for ImmersiveSpaceSceneUpdateTransition.Style(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = v2 + 1;
  v4 = *a2;
  if (*result)
  {
    v5 = v3 > 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *result = v4;
  }

  else
  {
    LODWORD(v6) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v6 = *a2;
    }

    if (v4 && (v6 + 1) > 1)
    {
      v7 = result;

      result = v7;
      *v7 = v4;
    }

    else
    {
      *result = v4;
      v8 = result;

      return v8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double destroy for ImmersiveSpaceSceneUpdateTransition(void *a1)
{
  if (*a1 != 1)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ImmersiveSpaceSceneUpdateTransition(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 != 1)
  {
    v4 = result;

    result = v4;
  }

  v5 = a2[1];
  *result = v3;
  result[1] = v5;
  return result;
}

uint64_t *assignWithCopy for ImmersiveSpaceSceneUpdateTransition(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      *a1 = v5;

      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    if (v5 != 1)
    {
      *a1 = v5;

      goto LABEL_9;
    }

    outlined destroy of Animation?(a1);
    v6 = *a2;
  }

  *a1 = v6;
LABEL_9:
  a1[1] = a2[1];
  return a1;
}

uint64_t outlined destroy of Animation?(uint64_t a1)
{
  type metadata accessor for Animation?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Animation?()
{
  if (!lazy cache variable for type metadata for Animation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Animation?);
    }
  }
}

void *assignWithTake for ImmersiveSpaceSceneUpdateTransition(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (*result == 1)
  {
    if (v3 == 1)
    {
      *result = 1;
    }

    else
    {
      *result = v3;
    }
  }

  else if (v3 == 1)
  {
    v4 = result;
    outlined destroy of Animation?(result);
    result = v4;
    *v4 = 1;
  }

  else
  {
    *result = v3;
    v5 = result;

    result = v5;
  }

  result[1] = a2[1];
  return result;
}

uint64_t getEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

void ImmersiveSpace.init<>(content:)()
{
  ImmersiveSpace.init<A>(content:)();
}

{
  ImmersiveSpace.init<A>(content:)();
}

void ImmersiveSpace.init<>(id:content:)()
{
  ImmersiveSpace.init<A>(id:content:)();
}

{
  ImmersiveSpace.init<A>(id:content:)();
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ScreenEdgesSystemGestureKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (result[1] == 1)
  {
    result = a2(&v5);
    v3 = 0;
    v4 = v5;
    if (BYTE1(v5))
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *result;
    v3 = *result;
  }

  *v2 = (v3 | v4);
  return result;
}

double View.defersSystemGestures(on:)(char a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  View.transformPreference<A>(_:_:)();

  return result;
}

char *partial apply for closure #1 in View.defersSystemGestures(on:)(char *result)
{
  v2 = *(v1 + 16);
  if (result[1])
  {
    v3 = 0;
    result[1] = 0;
  }

  else
  {
    v3 = *result;
  }

  *result = v3 | v2;
  return result;
}

void type metadata accessor for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t DefaultDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v7, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v7, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v8 = v5[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v10 = v9;
  v11 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v7[v8], a2 + *(v9 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v7[v5[9]], a2 + *(v10 + 40), &lazy cache variable for type metadata for Date?, v11);
  *(a2 + *(v10 + 44)) = *&v7[v5[10]];
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for DatePickerStyleConfiguration);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>(0);
  return closure #2 in DefaultDatePickerStyle.makeBody(configuration:)(a1, a2 + *(v12 + 44));
}

uint64_t closure #2 in DefaultDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CollapsibleWheelDatePickerStyle(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v11, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v11, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v12 = v9[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v14 = v13;
  v15 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v11[v12], a2 + *(v13 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v11[v9[9]], a2 + *(v14 + 40), &lazy cache variable for type metadata for Date?, v15);
  *(a2 + *(v14 + 44)) = *&v11[v9[10]];
  outlined destroy of DatePickerStyleConfiguration(v11, type metadata accessor for DatePickerStyleConfiguration);
  *v7 = swift_getKeyPath();
  v16 = MEMORY[0x1E697DCB8];
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v17 = v5[7];
  *(v7 + v17) = swift_getKeyPath();
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v16);
  swift_storeEnumTagMultiPayload();
  v18 = v5[8];
  *(v7 + v18) = swift_getKeyPath();
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v16);
  swift_storeEnumTagMultiPayload();
  v19 = v7 + v5[9];
  *v19 = 0;
  *(v19 + 1) = 0;
  type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(0);
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v20 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v5[7];
  *(v7 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v22 = v5[8];
  *(v7 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = v7 + v5[9];
  *v23 = 0;
  *(v23 + 1) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(0);
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v24 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = v5[7];
  *(v7 + v25) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = v5[8];
  *(v7 + v26) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = v7 + v5[9];
  *v27 = 0;
  *(v27 + 1) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(0);
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v28 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  return outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance DefaultDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v7, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v7, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v8 = v5[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v10 = v9;
  v11 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v7[v8], a2 + *(v9 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v7[v5[9]], a2 + *(v10 + 40), &lazy cache variable for type metadata for Date?, v11);
  *(a2 + *(v10 + 44)) = *&v7[v5[10]];
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for DatePickerStyleConfiguration);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>(0);
  return closure #2 in DefaultDatePickerStyle.makeBody(configuration:)(a1, a2 + *(v12 + 44));
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for Binding<Date>(0, a3, MEMORY[0x1E6969530], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>);
    }
  }
}

void type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<CompactDatePickerStyle>, lazy protocol witness table accessor for type CompactDatePickerStyle and conformance CompactDatePickerStyle, &type metadata for CompactDatePickerStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CompactDatePickerStyle and conformance CompactDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle;
  if (!lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CompactDatePickerStyle, &type metadata for CompactDatePickerStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(255);
    type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<WheelDatePickerStyle>, lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle, &type metadata for WheelDatePickerStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>)
  {
    v2 = type metadata accessor for CollapsibleWheelDatePickerStyle(255);
    v3 = lazy protocol witness table accessor for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle();
    v5 = type metadata accessor for DatePickerStyleModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle;
  if (!lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle)
  {
    v3 = type metadata accessor for CollapsibleWheelDatePickerStyle(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CollapsibleWheelDatePickerStyle, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3, a4);
    type metadata accessor for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>(255);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for DatePickerStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>();
    v5[1] = &protocol witness table for DatePickerStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>()
{
  result = lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>;
  if (!lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    result = swift_getWitnessTable(protocol conformance descriptor for DatePicker<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = &protocol witness table for DatePickerStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>, &type metadata for GroupedListStyleContext);
    v5[1] = &protocol witness table for DatePickerStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, &type metadata for InsetGroupedListStyleContext);
    v5[1] = &protocol witness table for DatePickerStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for DatePickerStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for Binding<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of DatePickerStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DatePickerStyleConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

SwiftUI::FieldDatePickerStyle __swiftcall FieldDatePickerStyle.init()()
{
  result.presentsCalendarOverlay = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t GraphicalDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 3;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance GraphicalDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 3;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for _SystemDatePicker(uint64_t a1)
{
  result = type metadata singleton initialization cache for _SystemDatePicker;
  if (!type metadata singleton initialization cache for _SystemDatePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SystemDatePicker and conformance _SystemDatePicker(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

char *initializeBufferWithCopyOfBuffer for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for TimeZone();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
    v29 = a2;
    v30 = a3;
    v13 = a3[7];
    v14 = &a1[v13];
    v15 = &a2[v13];
    v16 = *&a2[v13 + 8];
    *v14 = *&a2[v13];
    *(v14 + 1) = v16;
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
    v18 = *(v17 + 32);
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    v21 = *(v20 + 16);

    v21(&v14[v18], &v15[v18], v19);
    v31 = type metadata accessor for DatePickerStyleConfiguration(0);
    v22 = v31[6];
    v23 = *(v20 + 48);
    if (v23(&v15[v22], 1, v19))
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v14[v22], &v15[v22], *(*(v24 - 8) + 64));
    }

    else
    {
      v21(&v14[v22], &v15[v22], v19);
      (*(v20 + 56))(&v14[v22], 0, 1, v19);
    }

    v25 = v31[7];
    if (v23(&v15[v25], 1, v19))
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
    }

    else
    {
      v21(&v14[v25], &v15[v25], v19);
      (*(v20 + 56))(&v14[v25], 0, 1, v19);
    }

    *&v14[v31[8]] = *&v15[v31[8]];
    v27 = v30[9];
    a1[v30[8]] = v29[v30[8]];
    a1[v27] = v29[v27];
  }

  return a1;
}

uint64_t destroy for _SystemDatePicker(uint64_t a1, int *a2)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Locale();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = a2[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Calendar();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  else
  {
  }

  v7 = a2[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 8))(a1 + v7, v8);
  }

  else
  {
  }

  v9 = a1 + a2[7];

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v19 = *(v13 + 8);
  v19(v9 + v11, v12);
  v14 = type metadata accessor for DatePickerStyleConfiguration(0);
  v15 = *(v14 + 24);
  v16 = *(v13 + 48);
  if (!v16(v9 + v15, 1, v12))
  {
    v19(v9 + v15, v12);
  }

  v17 = *(v14 + 28);
  result = (v16)(v9 + v17, 1, v12);
  if (!result)
  {

    return (v19)(v9 + v17, v12);
  }

  return result;
}

char *initializeWithCopy for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Locale();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Calendar();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  else
  {
    *&a1[v7] = *&a2[v7];
  }

  swift_storeEnumTagMultiPayload();
  v9 = a3[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for TimeZone();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  else
  {
    *&a1[v9] = *&a2[v9];
  }

  swift_storeEnumTagMultiPayload();
  v28 = a1;
  v29 = a3;
  v11 = a3[7];
  v12 = &a1[v11];
  v30 = a2;
  v13 = &a2[v11];
  v14 = *&a2[v11 + 8];
  *v12 = *&a2[v11];
  *(v12 + 1) = v14;
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v16 = *(v15 + 32);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);

  v19(&v12[v16], &v13[v16], v17);
  v20 = type metadata accessor for DatePickerStyleConfiguration(0);
  v21 = v20[6];
  v22 = *(v18 + 48);
  if (v22(&v13[v21], 1, v17))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v12[v21], &v13[v21], *(*(v23 - 8) + 64));
  }

  else
  {
    v19(&v12[v21], &v13[v21], v17);
    (*(v18 + 56))(&v12[v21], 0, 1, v17);
  }

  v24 = v20[7];
  if (v22(&v13[v24], 1, v17))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v12[v24], &v13[v24], *(*(v25 - 8) + 64));
  }

  else
  {
    v19(&v12[v24], &v13[v24], v17);
    (*(v18 + 56))(&v12[v24], 0, 1, v17);
  }

  *&v12[v20[8]] = *&v13[v20[8]];
  v26 = v29[9];
  v28[v29[8]] = v30[v29[8]];
  v28[v26] = v30[v26];
  return v28;
}

char *assignWithCopy for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    v6 = MEMORY[0x1E6969770];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(a1, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v6, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v8 = a3[5];
    v9 = MEMORY[0x1E6969AE8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v8], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v9, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v8], &a2[v8], v10);
    }

    else
    {
      *&a1[v8] = *&a2[v8];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    v12 = MEMORY[0x1E6969BC0];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v11], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v12, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for TimeZone();
      (*(*(v13 - 8) + 16))(&a1[v11], &a2[v11], v13);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
  }

  v32 = a3;
  v14 = a3[7];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *&a2[v14];

  *(v15 + 1) = *(v16 + 1);

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v18 = *(v17 + 32);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v31 = *(v20 + 24);
  v31(&v15[v18], &v16[v18], v19);
  v33 = type metadata accessor for DatePickerStyleConfiguration(0);
  v21 = v33[6];
  v22 = *(v20 + 48);
  v23 = v22(&v15[v21], 1, v19);
  v24 = v22(&v16[v21], 1, v19);
  if (v23)
  {
    if (!v24)
    {
      (*(v20 + 16))(&v15[v21], &v16[v21], v19);
      (*(v20 + 56))(&v15[v21], 0, 1, v19);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v24)
  {
    (*(v20 + 8))(&v15[v21], v19);
LABEL_17:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v15[v21], &v16[v21], *(*(v25 - 8) + 64));
    goto LABEL_18;
  }

  v31(&v15[v21], &v16[v21], v19);
LABEL_18:
  v26 = v33[7];
  v27 = v22(&v15[v26], 1, v19);
  v28 = v22(&v16[v26], 1, v19);
  if (!v27)
  {
    if (!v28)
    {
      v31(&v15[v26], &v16[v26], v19);
      goto LABEL_24;
    }

    (*(v20 + 8))(&v15[v26], v19);
    goto LABEL_23;
  }

  if (v28)
  {
LABEL_23:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v15[v26], &v16[v26], *(*(v29 - 8) + 64));
    goto LABEL_24;
  }

  (*(v20 + 16))(&v15[v26], &v16[v26], v19);
  (*(v20 + 56))(&v15[v26], 0, 1, v19);
LABEL_24:
  *&v15[v33[8]] = *&v16[v33[8]];
  a1[v32[8]] = a2[v32[8]];
  a1[v32[9]] = a2[v32[9]];
  return a1;
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, a2, a3, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *initializeWithTake for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  v9 = a3[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  v11 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  v13 = a3[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  v15 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
  }

  v35 = a3;
  v36 = a1;
  v17 = a3[7];
  v18 = &a1[v17];
  v34 = a2;
  v19 = &a2[v17];
  v20 = *&a2[v17 + 8];
  *v18 = *&a2[v17];
  *(v18 + 1) = v20;
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v22 = *(v21 + 32);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 32);
  v25(&v18[v22], &v19[v22], v23);
  v26 = type metadata accessor for DatePickerStyleConfiguration(0);
  v27 = v26[6];
  v28 = *(v24 + 48);
  if (v28(&v19[v27], 1, v23))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v18[v27], &v19[v27], *(*(v29 - 8) + 64));
  }

  else
  {
    v25(&v18[v27], &v19[v27], v23);
    (*(v24 + 56))(&v18[v27], 0, 1, v23);
  }

  v30 = v26[7];
  if (v28(&v19[v30], 1, v23))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v18[v30], &v19[v30], *(*(v31 - 8) + 64));
  }

  else
  {
    v25(&v18[v30], &v19[v30], v23);
    (*(v24 + 56))(&v18[v30], 0, 1, v23);
  }

  *&v18[v26[8]] = *&v19[v26[8]];
  result = v36;
  v33 = v35[9];
  v36[v35[8]] = v34[v35[8]];
  v36[v33] = v34[v33];
  return result;
}

char *assignWithTake for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    v6 = MEMORY[0x1E6969770];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(a1, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v6, MEMORY[0x1E697DCB8]);
    v8 = v7;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for Locale();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    v10 = a3[5];
    v11 = MEMORY[0x1E6969AE8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v10], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v11, MEMORY[0x1E697DCB8]);
    v13 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for Calendar();
      (*(*(v14 - 8) + 32))(&a1[v10], &a2[v10], v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
    }

    v15 = a3[6];
    v16 = MEMORY[0x1E6969BC0];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v15], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v16, MEMORY[0x1E697DCB8]);
    v18 = v17;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = type metadata accessor for TimeZone();
      (*(*(v19 - 8) + 32))(&a1[v15], &a2[v15], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    }
  }

  v39 = a3;
  v20 = a3[7];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *&a1[v20] = *&a2[v20];

  *(v21 + 1) = *(v22 + 1);

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v24 = *(v23 + 32);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v38 = *(v26 + 40);
  v38(&v21[v24], &v22[v24], v25);
  v40 = type metadata accessor for DatePickerStyleConfiguration(0);
  v27 = v40[6];
  v28 = *(v26 + 48);
  v29 = v28(&v21[v27], 1, v25);
  v30 = v28(&v22[v27], 1, v25);
  if (v29)
  {
    if (!v30)
    {
      (*(v26 + 32))(&v21[v27], &v22[v27], v25);
      (*(v26 + 56))(&v21[v27], 0, 1, v25);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v30)
  {
    (*(v26 + 8))(&v21[v27], v25);
LABEL_16:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v21[v27], &v22[v27], *(*(v31 - 8) + 64));
    goto LABEL_17;
  }

  v38(&v21[v27], &v22[v27], v25);
LABEL_17:
  v32 = v40[7];
  v33 = v28(&v21[v32], 1, v25);
  v34 = v28(&v22[v32], 1, v25);
  if (!v33)
  {
    if (!v34)
    {
      v38(&v21[v32], &v22[v32], v25);
      goto LABEL_23;
    }

    (*(v26 + 8))(&v21[v32], v25);
    goto LABEL_22;
  }

  if (v34)
  {
LABEL_22:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v21[v32], &v22[v32], *(*(v35 - 8) + 64));
    goto LABEL_23;
  }

  (*(v26 + 32))(&v21[v32], &v22[v32], v25);
  (*(v26 + 56))(&v21[v32], 0, 1, v25);
LABEL_23:
  *&v21[v40[8]] = *&v22[v40[8]];
  v36 = v39[9];
  a1[v39[8]] = a2[v39[8]];
  a1[v36] = a2[v36];
  return a1;
}

void _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for _SystemDatePicker(uint64_t a1)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DatePickerStyleConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style()
{
  result = lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style;
  if (!lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SystemDatePicker.Style, &unk_1EFFFA710, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style);
  }

  return result;
}

double AutomaticTableStyle.makeBody(configuration:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

uint64_t closure #1 in closure #1 in ProgressViewGauge.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 10);
  v29 = *(a1 + 9);
  v30 = v15;
  specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24), &v31);
  if (v31 & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 32), *(a1 + 40)))
  {
    v13 = 0.0;
  }

  if (v13 < 0.0 || v13 > 1.0)
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
  }

  if (v13 <= 1.0)
  {
    v19 = v13;
  }

  else
  {
    v19 = 1.0;
  }

  if (v13 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for CustomProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for CustomProgressView);
  v22 = v21[13];
  *(v9 + v22) = 1;
  v23 = v9 + v21[14];
  *v23 = 256;
  v24 = v21[15];
  *v9 = v20;
  *(v9 + 8) = v13 < 0.0;
  *(v9 + 9) = 0;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + v22) = 0;
  *v23 = v14 & 1;
  v23[1] = 0;
  *(v9 + v24) = 0.0;
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>.Base, type metadata accessor for ProgressView.Base);
  swift_storeEnumTagMultiPayload();
  outlined init with take of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v9, v12);
  outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v12, v6);
  *a2 = v29 & 1;
  type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)(0);
  v26 = v25;
  outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v6, &a2[*(v25 + 48)]);
  v27 = *(v26 + 64);
  outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v12);
  a2[v27] = v30 & 1;
  return outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v6);
}

uint64_t protocol witness for View.body.getter in conformance ProgressViewGauge@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>, type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v5 = a1 + *(v4 + 44);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>, type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return closure #1 in closure #1 in ProgressViewGauge.body.getter(&v8, (v5 + *(v6 + 44)));
}

uint64_t AccessoryLinearCapacityGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewGauge and conformance ProgressViewGauge()
{
  result = lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge;
  if (!lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewGauge, &type metadata for ProgressViewGauge, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge);
  }

  return result;
}

void type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>(255);
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>, type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>);
    }
  }
}

void type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>)
  {
    type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>);
    }
  }
}

void type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MinimumValueLabel?, &type metadata for GaugeStyleConfiguration.MinimumValueLabel);
    type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(255, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MaximumValueLabel?, &type metadata for GaugeStyleConfiguration.MaximumValueLabel);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?));
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = type metadata accessor for _VariadicView.Tree();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?, &type metadata for GaugeStyleConfiguration.CurrentValueLabel);
    v9[0] = &type metadata for GaugeStyleConfiguration.Label;
    v9[1] = v6;
    v9[2] = &protocol witness table for GaugeStyleConfiguration.Label;
    v9[3] = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with take of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>)
  {
    type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>(255);
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>, MEMORY[0x1E69817F8]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double CarPlay.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  specialized ResolvedUISceneAdaptor.init(id:kind:content:)(0x79616C50726143, 0xE700000000000000, 0, 0, 0, &v19);
  v24 = *&v20[24];
  v23 = *&v20[8];
  v21 = v19;
  v22 = v20[0];
  v12 = v19;
  v13 = *v20;
  v14 = *&v20[16];
  v6 = type metadata accessor for ResolvedUISceneAdaptor(0, v3, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for ResolvedUISceneAdaptor<A>, v6, v12, v13, v14);
  static ViewBuilder.buildExpression<A>(_:)(&v12, v6, &v15);
  outlined destroy of SceneID(&v21);
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v23);
  outlined destroy of AnyView(&v24);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v12 = v15;
  LOBYTE(v13) = v16;
  *(&v13 + 1) = v17;
  v14 = v18;
  static SceneBuilder.buildBlock<A>(_:)(&v12, v6, a2);
  outlined consume of SceneID(v7, *(&v7 + 1), v8);
  outlined consume of UISceneAdaptorConfiguration.Kind(v9, v10);

  return result;
}

void PrintItem.init(content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t TableSections.init(list:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TableRowList(a1, a2);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  if (v6)
  {
    v23 = a2;
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableSections.Item>, &type metadata for TableSections.Item, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v22 = (*(v9 + 16))(v8, v9);
    v10 = *(*v6 + 88);

    v12 = v10(v11);
    v13 = *(*v6 + 96);
    v14 = v13();
    v24 = v10;
    v15 = (v10)();
    result = v13();
    if (v12 < v15 || result < v12)
    {
      __break(1u);
    }

    else
    {
      v18 = v24(result);
      result = v13();
      if (v14 >= v18 && result >= v14)
      {
        if (!__OFSUB__(v14, v12))
        {
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 48) = v22;
          *(v7 + 56) = 0u;
          *(v7 + 72) = 0u;
          *(v7 + 88) = 0;
          *(v7 + 96) = v6;
          *(v7 + 104) = 0;
          *(v7 + 112) = 0;
          *(v7 + 120) = v14 - v12;

          result = outlined destroy of TableRowList(a1);
          *(v23 + 40) = v7;
          return result;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = outlined init with copy of TableRowList(a1, &v26);
  v25[0] = MEMORY[0x1E69E7CC0];
  memset(&v25[1], 0, 24);
  MEMORY[0x1EEE9AC00](v20);
  static Update.ensure<A>(_:)();
  TableSections.Accumulator.finalize()();
  outlined destroy of TableRowList(a1);
  v21 = v25[0];

  result = outlined destroy of TableSections.Accumulator(v25);
  *(a2 + 40) = v21;
  return result;
}

void TableSections.firstIndexPath<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v23 = a3;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v6;
  MatchingID = type metadata accessor for TableSections.FindMatchingID(0, v6, v7, v8);
  MEMORY[0x1EEE9AC00](MatchingID);
  v12 = &v23 - v11;
  v24 = v3;
  v31 = *(v3 + 40);
  v27 = *(v31 + 16);
  if (v27)
  {
    v13 = 0;
    v14 = v31 + 32;
    v15 = (v4 + 16);
    v16 = (v4 + 32);
    v26 = (v10 + 8);
    while (v13 < *(v31 + 16))
    {
      *v37 = v13;
      outlined init with copy of TableSections.Item(v14, &v37[8]);
      if (*&v37[56] == 1)
      {
        goto LABEL_10;
      }

      v25 = *v37;
      *v37 = *&v37[8];
      *&v37[16] = *&v37[24];
      *&v37[32] = *&v37[40];
      *&v37[48] = *&v37[56];
      *&v37[64] = *&v37[72];
      *&v37[80] = *&v37[88];
      v17 = v28;
      v18 = v30;
      (*v15)(v28, v29, v30);
      v19 = *&v37[16];
      (*v16)(v12, v17, v18);
      *&v12[MatchingID[9]] = v19;
      v12[MatchingID[10]] = 0;
      *&v12[MatchingID[11]] = 0;
      outlined init with copy of TableRowList?(&v37[24], &v32);
      if (*(&v33 + 1))
      {
        v35[0] = v32;
        v35[1] = v33;
        v36 = v34;
        TableRowList.visitRows<A>(applying:from:)(v12, 0, MatchingID, &protocol witness table for TableSections.FindMatchingID<A>);
        outlined destroy of TableRowList(v35);
      }

      else
      {
        outlined destroy of TableRowList?(&v32);
        TableRowList.visitRows<A>(applying:from:)(v12, *v37, MatchingID, &protocol witness table for TableSections.FindMatchingID<A>);
      }

      if (v12[MatchingID[10]] == 1)
      {
        v21 = v23;
        MEMORY[0x18D0006A0](*&v12[MatchingID[11]], v25);
        (*v26)(v12, MatchingID);
        outlined destroy of TableSections.Item(v37);
        v22 = type metadata accessor for IndexPath();
        (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
        return;
      }

      ++v13;
      (*v26)(v12, MatchingID);
      outlined destroy of TableSections.Item(v37);
      v14 += 96;
      if (v27 == v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v20 = type metadata accessor for IndexPath();
    (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  }
}

uint64_t TableSections.firstIndexPath(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v19 = result;
  v20 = 0;
  v23 = 0;
  v3 = *(v2 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      *v18 = v5;
      outlined init with copy of TableSections.Item(v6, &v18[8]);
      if (*&v18[56] == 1)
      {
        goto LABEL_10;
      }

      v7 = *v18;
      *v18 = *&v18[8];
      *&v18[16] = *&v18[24];
      *&v18[32] = *&v18[40];
      *&v18[48] = *&v18[56];
      *&v18[64] = *&v18[72];
      *&v18[80] = *&v18[88];
      v22 = 0;
      v21 = *&v18[16];
      v8 = outlined init with copy of TableRowList?(&v18[24], &v13);
      if (*(&v14 + 1))
      {
        v16[0] = v13;
        v16[1] = v14;
        v17 = v15;
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
        outlined destroy of TableRowList(v16);
      }

      else
      {
        v9 = outlined destroy of TableRowList?(&v13);
        MEMORY[0x1EEE9AC00](v9);
        static Update.ensure<A>(_:)();
      }

      if (v20 == 1)
      {
        MEMORY[0x18D0006A0](v22, v7);
        outlined destroy of TableSections.Item(v18);
        v11 = type metadata accessor for IndexPath();
        return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
      }

      ++v5;
      result = outlined destroy of TableSections.Item(v18);
      v6 += 96;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v10 = type metadata accessor for IndexPath();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  return result;
}

void TableSections.Accumulator.finalize()()
{
  v1 = *v0;
  if (*(*v0 + 2))
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v3 - v2;
    if (v3 <= v2)
    {
      return;
    }

    outlined init with copy of TableRowList((v0 + 4), v26);
    v5 = v0[1];
    v6 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(v26, v5, v3);
    v8 = v7;
    v10 = v9;
    v25 = v11 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v14 = &v1[96 * v13];
    *(v14 + 4) = v5;
    v14[40] = 0;
    v15 = v26[0];
    *(v14 + 11) = *(v26 + 3);
    *(v14 + 41) = v15;
    *(v14 + 6) = v4;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 11) = 0;
    *(v14 + 12) = v6;
  }

  else
  {
    outlined init with copy of TableRowList((v0 + 4), v26);
    v16 = v0[2];
    v17 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(v26, 0, v16);
    v8 = v18;
    v10 = v19;
    v25 = v20 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v22 = *(v1 + 2);
    v21 = *(v1 + 3);
    if (v22 >= v21 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v1);
    }

    *(v1 + 2) = v22 + 1;
    v14 = &v1[96 * v22];
    *(v14 + 4) = 0;
    v14[40] = 0;
    v23 = v26[0];
    *(v14 + 11) = *(v26 + 3);
    *(v14 + 41) = v23;
    *(v14 + 6) = v16;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 11) = 0;
    *(v14 + 12) = v17;
  }

  v14[104] = v25;
  *(v14 + 105) = *v24;
  *(v14 + 27) = *&v24[3];
  *(v14 + 14) = v8;
  *(v14 + 15) = v10;
  *v0 = v1;
}

uint64_t closure #1 in TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X5>, _BYTE *a7@<X8>)
{
  v42 = a7;
  v37 = a5;
  v41 = a2;
  v45 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v35 - v10;
  v46 = *(v9 - 8);
  v40 = v46;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  dispatch thunk of Identifiable.id.getter();
  v20 = v15;
  v21 = v9;
  v22 = v39;
  v23 = swift_dynamicCast();
  v24 = v45;
  v25 = *(v45 + 56);
  v25(v18, v23 ^ 1u, 1, a3);
  (*(v24 + 16))(v15, v41, a3);
  v25(v15, 0, 1, a3);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v46 + 16);
  v41 = v18;
  v27(v22, v18, v21);
  v27(&v22[v26], v20, v21);
  v28 = *(v24 + 48);
  if (v28(v22, 1, a3) != 1)
  {
    v27(v43, v22, v21);
    if (v28(&v22[v26], 1, a3) != 1)
    {
      v31 = v45;
      v32 = v36;
      (*(v45 + 32))(v36, &v22[v26], a3);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v31 + 8);
      v33(v32, a3);
      v29 = *(v40 + 8);
      v29(v20, v21);
      v33(v43, a3);
      v29(v22, v21);
      goto LABEL_8;
    }

    v29 = *(v40 + 8);
    v29(v20, v21);
    (*(v45 + 8))(v43, a3);
    goto LABEL_6;
  }

  v29 = *(v40 + 8);
  v29(v20, v21);
  if (v28(&v22[v26], 1, a3) != 1)
  {
LABEL_6:
    (*(v38 + 8))(v22, TupleTypeMetadata2);
    v30 = 0;
    goto LABEL_8;
  }

  v29(v22, v21);
  v30 = 1;
LABEL_8:
  result = (v29)(v41, v21);
  *v42 = v30 & 1;
  return result;
}

BOOL protocol witness for TableRowVisitor.visit<A, B>(rowValue:view:children:traits:) in conformance TableSections.FindMatchingRow()
{
  v1 = *(v0 + 32);
  if (*v0 == v1)
  {
    result = 0;
    *(v0 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24) + 1;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1 + 1;
    return v4 != v3;
  }

  return result;
}

uint64_t TableSections.Accumulator.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  outlined init with copy of TableRowList?(a3, &v49);
  if (*(&v50 + 1))
  {
    v56[0] = v49;
    v56[1] = v50;
    v12 = v51;
    v57 = v51;
    v13 = *(&v50 + 1);
    __swift_project_boxed_opaque_existential_1(v56, *(&v50 + 1));
    v14 = (*(v12 + 16))(v13, v12);
    outlined init with copy of TableRowList(v56, &v49);
    v15 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(&v49, 0, 0x7FFFFFFFFFFFFFFFLL);
    LOBYTE(v13) = v16;
    v18 = v17;
    v20 = v19;
    v21 = *(v7 + 8);
    v22 = (*(*(a6 - 8) + 48))(a2, 1, a6) != 1;
    outlined init with copy of TableRowList(v56, &v50 + 8);
    *&v49 = v21;
    BYTE8(v49) = v22;
    *&v50 = v14;
    *&v53 = v15;
    BYTE8(v53) = v13 & 1;
    *&v54 = v18;
    *(&v54 + 1) = v20;
    v23 = *v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[96 * v25];
    v27 = v50;
    *(v26 + 2) = v49;
    *(v26 + 3) = v27;
    v28 = v51;
    v29 = v52;
    v30 = v54;
    *(v26 + 6) = v53;
    *(v26 + 7) = v30;
    *(v26 + 4) = v28;
    *(v26 + 5) = v29;
    *v7 = v23;
    v31 = *(v7 + 16) + v14;
    *(v7 + 16) = v31;
    outlined destroy of TableRowList(v56);
    *(v7 + 24) = v31;
  }

  else
  {
    outlined destroy of TableRowList?(&v49);
    v32 = *(v7 + 16) + 1;
    *(v7 + 16) = v32;
    if ((*(*(a5 - 8) + 48))(a1, 1, a5) == 1 && (*(*(a6 - 8) + 48))(a2, 1, a6) != 1)
    {
      outlined init with copy of TableRowList(v7 + 32, &v49);
      v33 = *(v7 + 8);
      v34 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(&v49, v33, 1);
      v36 = v35;
      v38 = v37;
      v55 = v39 & 1;
      v40 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        v43 = v42 + 1;
        v40 = v48;
      }

      *(v40 + 2) = v43;
      v44 = &v40[96 * v42];
      *(v44 + 4) = v33;
      v44[40] = 0;
      v45 = v49;
      *(v44 + 11) = *(&v49 + 3);
      *(v44 + 41) = v45;
      *(v44 + 6) = 1;
      *(v44 + 56) = 0u;
      *(v44 + 72) = 0u;
      *(v44 + 11) = 0;
      *(v44 + 12) = v34;
      v44[104] = v55;
      v46 = *(v56 + 3);
      *(v44 + 105) = v56[0];
      *(v44 + 27) = v46;
      *(v44 + 14) = v36;
      *(v44 + 15) = v38;
      *v7 = v40;
      *(v7 + 24) = v32;
    }
  }

  ++*(v7 + 8);
  return 1;
}

uint64_t outlined destroy of TableSections.Accumulator(uint64_t a1)
{
  v2 = (a1 + 32);

  __swift_destroy_boxed_opaque_existential_1(v2);
  return a1;
}

uint64_t outlined init with copy of TableRowList?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TableSections.FindMatchingRow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableSections.FindMatchingRow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for TableSections.Accumulator(uint64_t a1)
{
  v1 = (a1 + 32);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t initializeWithCopy for TableSections.Accumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 32, a2 + 32, v5);
  return a1;
}

void *assignWithCopy for TableSections.Accumulator(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  return a1;
}

uint64_t assignWithTake for TableSections.Accumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t destroy for TableSections.Item(uint64_t a1)
{
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 72);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v2, v3);
}

uint64_t initializeWithCopy for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  outlined copy of ResolvedTableRowIDs.Storage(v6, v7);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of TableRowList(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of ResolvedTableRowIDs.Storage(v10, v11);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v12, v13);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 24));
    }

    else
    {
      outlined destroy of TableRowList(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v7);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSections.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for TableSections.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for TableSections.FindMatchingID(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableSections.FindMatchingID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *((v3 + v5 + 23) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSections.FindMatchingID(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

_DWORD *storeEnumTagSinglePayload for TableSections.FindMatchingID(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t destroy for TableSections(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for TableSections(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for TableSections(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for TableSections(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

BOOL specialized TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 + 24);
  v15[2] = *(a4 + 16);
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = v10;
  v15[6] = a7;
  v15[7] = a8;
  v16 = v8;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v11, &v17);
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v13 = *(a4 + 44);
    v14 = *(v8 + v13) + 1;
    *(v8 + v13) = v14;
    return v14 != *(v8 + *(a4 + 36));
  }

  else
  {
    result = 0;
    *(v8 + *(a4 + 40)) = 1;
  }

  return result;
}

double key path getter for EnvironmentValues.listRowInsets : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double key path setter for EnvironmentValues.listRowInsets : EnvironmentValues(_OWORD *a1, void *a2)
{
  _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void *key path getter for EnvironmentValues.sizeCategory : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.sizeCategory.getter();
  *a2 = v4;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA29DigitalCrownAccessoryModifierVyqd__GGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a1[2];
  v5 = a2(255, a1[1], a1[3]);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(a3, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

double destroy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, void (*a3)(void, void, __n128))
{

  (a3)(*(a1 + 16), *(a1 + 24));

  return result;
}

uint64_t initializeWithCopy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  a4(v8, v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, __n128), void (*a5)(uint64_t, uint64_t))
{
  v9 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v9;

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  (a4)(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  a5(v12, v13);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  *a1 = *a2;

  v7 = *(a2 + 24);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  a4(v8, v9);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for DigitalCrownIndicatorModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for DigitalCrownIndicatorModifier(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double DigitalCrownAccessoryModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized FocusState.projectedValue.getter(*(v2 + 32), *(v2 + 5));
  v6 = v5;
  v8 = v7;
  swift_getWitnessTable(protocol conformance descriptor for DigitalCrownAccessoryModifier<A>, a2);
  v9 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  View.focused(_:)(v4, v6, v8 & 1, v9, WitnessTable, &v32);

  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v37 = *(v2 + 2);
  v38 = *(v2 + 24);
  v11 = swift_allocObject();
  v12 = *v2;
  v13 = v2[1];
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v12;
  v14 = v2[2];
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 80) = *(v2 + 48);

  outlined init with copy of Environment<Visibility>(&v37, &v27);
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  v15 = type metadata accessor for ModifiedContent();
  v26[0] = WitnessTable;
  v26[1] = &protocol witness table for FocusStateBindingModifier<A>;

  v16 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v26);
  View.transformPreference<A>(_:_:)();

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  v18 = type metadata accessor for ModifiedContent();
  v20[0] = v17;
  v20[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  swift_getWitnessTable(v16, v18, v20);
  static ViewBuilder.buildExpression<A>(_:)();

  v27 = v32;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31 = v36;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

void closure #1 in DigitalCrownAccessoryModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  if (!*(&v24 + 1))
  {
LABEL_4:
    if ((v24 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    dispatch thunk of AnyLocation.wasRead.setter();
    outlined destroy of FocusState<Bool>(&v24);
    goto LABEL_4;
  }

  dispatch thunk of AnyLocation.get()();
  outlined destroy of FocusState<Bool>(&v24);
  if ((v22 & 1) == 0)
  {
    return;
  }

LABEL_5:
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *&v20 = v8;
  *(&v20 + 1) = v9;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);

  specialized Environment.wrappedValue.getter(v10, v11);
  v13 = type metadata accessor for LazyView(0, a3, a4, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyView<A>, v13);
  View.opacity(_:)();

  v20 = v22;
  v21 = v23;
  v15 = type metadata accessor for ModifiedContent();
  v19[0] = WitnessTable;
  v19[1] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable(MEMORY[0x1E697E858], v15, v19);
  v16 = AnyView.init<A>(_:)();
  v17 = *(a1 + 8);

  LOBYTE(WitnessTable) = specialized Environment.wrappedValue.getter(v10, v11);
  v18 = *(a1 + 17);

  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = WitnessTable;
  *(a1 + 17) = v18;
  *(a1 + 18) = 257;
}

double DigitalCrownIndicatorModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v44 = *(v2 + 48);
  v4 = v2[2];
  v42 = v2[1];
  v43 = v4;
  v41 = *v2;
  v5 = specialized FocusState.projectedValue.getter(v4, *(&v4 + 1));
  v7 = v6;
  v9 = v8;
  swift_getWitnessTable(protocol conformance descriptor for DigitalCrownIndicatorModifier<A>, a2);
  v10 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v10);
  View.focused(_:)(v5, v7, v9 & 1, v10, WitnessTable, &v22);

  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v12 = swift_allocObject();
  v13 = v41;
  v14 = v42;
  *(v12 + 16) = *(a2 + 16);
  *(v12 + 32) = v13;
  v15 = v43;
  *(v12 + 48) = v14;
  *(v12 + 64) = v15;
  *(v12 + 80) = v44;
  (*(*(a2 - 8) + 16))(v28, &v41, a2);
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  v16 = type metadata accessor for ModifiedContent();
  v27[0] = WitnessTable;
  v27[1] = &protocol witness table for FocusStateBindingModifier<A>;
  v17 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v27);
  View.transformPreference<A>(_:_:)();

  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  v19 = type metadata accessor for ModifiedContent();
  v21[0] = v18;
  v21[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  swift_getWitnessTable(v17, v19, v21);
  static ViewBuilder.buildExpression<A>(_:)();

  v36 = v28[0];
  v37 = v28[1];
  v38 = v29;
  v39 = v30;
  v40 = v31;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

void closure #1 in DigitalCrownIndicatorModifier.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  if (!*(&v24 + 1))
  {
LABEL_4:
    if ((v24 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    dispatch thunk of AnyLocation.wasRead.setter();
    outlined destroy of FocusState<Bool>(&v24);
    goto LABEL_4;
  }

  dispatch thunk of AnyLocation.get()();
  outlined destroy of FocusState<Bool>(&v24);
  if ((v22 & 1) == 0)
  {
    return;
  }

LABEL_5:
  v8 = *a1;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *&v20 = v9;
  *(&v20 + 1) = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);

  specialized Environment.wrappedValue.getter(v11, v12, &v22);
  v14 = type metadata accessor for LazyView(0, a3, a4, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyView<A>, v14);
  View.opacity(_:)();

  v20 = v22;
  v21 = v23;
  v16 = type metadata accessor for ModifiedContent();
  v19[0] = WitnessTable;
  v19[1] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable(MEMORY[0x1E697E858], v16, v19);
  v17 = AnyView.init<A>(_:)();
  LOBYTE(WitnessTable) = *(a1 + 16);

  specialized Environment.wrappedValue.getter(v11, v12, &v22);
  v18 = v22;
  *a1 = v8;
  a1[1] = v17;
  *(a1 + 16) = WitnessTable;
  *(a1 + 17) = v18;
  *(a1 + 9) = 257;
}

uint64_t outlined init with copy of Environment<Visibility>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_0(0, &lazy cache variable for type metadata for Environment<Visibility>, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E697DB50]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of FocusState<Bool>(uint64_t a1)
{
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(0, &lazy cache variable for type metadata for FocusState<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyAA01_c9Modifier_E0VyAA021DigitalCrownAccessoryF0VyxGGAA017FocusStateBindingF033_274D264A38B51DC68ACC48A91353B7D0LLVySbGGAA020_PreferenceTransformF0VyAA0ghC3KeyVGGAaBHPAoaBHPAjaBHPyHC_AnA0cF0HPyHCHC_AtaVHPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);
  swift_getWitnessTable(a3, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  v6 = type metadata accessor for ModifiedContent();
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v11[1] = &protocol witness table for FocusStateBindingModifier<A>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v11);
  v10[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(v8, v7, v10);
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance DigitalCrownViewKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EAB09F20;
  v2 = dword_1EAB09F28;
  v3 = BYTE2(dword_1EAB09F28);
  v4 = HIBYTE(dword_1EAB09F28);
  *a1 = static DigitalCrownViewKey.defaultValue;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 18) = v3;
  *(a1 + 19) = v4;

  return result;
}

void specialized static DigitalCrownViewKey.reduce(value:nextValue:)(uint64_t *a1, void (*a2)(void *__return_ptr))
{
  if ((*(a1 + 19) & 1) == 0)
  {
    a2(v10);
    v3 = v10[1];
    v4 = v11;
    v5 = v12;
    v6 = v13;
    v7 = *a1;
    v8 = v10[0];
    if (!v10[0])
    {

      v8 = v7;
    }

    *a1 = v8;
    v9 = a1[1];
    if (!v3)
    {

      v3 = v9;
    }

    a1[1] = v3;
    *(a1 + 16) = v4;
    *(a1 + 17) = v5;
    *(a1 + 18) = (*(a1 + 18) | v6) & 1;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for DigitalCrownViewStorage(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);

  return a1;
}

uint64_t assignWithCopy for DigitalCrownViewStorage(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  return a1;
}

uint64_t assignWithTake for DigitalCrownViewStorage(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  return a1;
}

uint64_t getEnumTagSinglePayload for DigitalCrownViewStorage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DigitalCrownViewStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.updateFidelity.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UpdateFidelityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UpdateFidelityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t DateSequenceTimeline.requestedFidelityForStartEntry(in:withPreviousEntry:)(uint64_t a1, char *a2)
{
  v69 = a2;
  v65 = a1;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - v6;
  type metadata accessor for (lower: Date, upper: Date)(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v66 = type metadata accessor for Date();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  type metadata accessor for Range<Date>(0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v69)
  {
    v62 = v27;
    v63 = v14;
    v64 = v9;
    v33 = v68;
    v69 = v7;
    v56 = v16;
    v57 = v19;
    v58 = v4;
    outlined init with copy of _Benchmark(v67 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule, v71);
    v34 = v72;
    v35 = v73;
    v36 = __swift_project_boxed_opaque_existential_1(v71, v72);
    DateInterval.start.getter();
    static Date.distantFuture.getter();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v37 = v66;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v65 = v35;
    v38 = v37;
    v39 = *(v33 + 32);
    v61 = v36;
    v40 = v63;
    v39(v63, v25, v37);
    v60 = v34;
    v41 = v64;
    v39((v40 + v64[12]), v22, v37);
    _sypSgWOcTm_2(v40, v11, type metadata accessor for (lower: Date, upper: Date));
    v42 = v41[12];
    v39(v30, v11, v38);
    v59 = v30;
    v43 = v68;
    v44 = *(v68 + 8);
    v44(&v11[v42], v38);
    outlined init with take of (lower: Date, upper: Date)(v40, v11);
    v45 = v41[12];
    v46 = v59;
    v47 = &v59[*(v62 + 36)];
    v64 = v39;
    v39(v47, &v11[v45], v38);
    v44(v11, v38);
    v70 = 1;
    TimelineSchedule.lazyEntries(within:mode:limit:)();
    _sypSgWOhTm_6(v46, type metadata accessor for Range<Date>);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    __swift_destroy_boxed_opaque_existential_1(v71);
    v48 = v69;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v49 = *(v43 + 48);
    if (v49(v48, 1, v38) != 1)
    {
      v50 = v57;
      (v64)(v57, v48, v38);
      v48 = v58;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v49(v48, 1, v38) != 1)
      {
        v51 = v56;
        (v64)(v56, v48, v38);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v53 = Date._bridgeToObjectiveC()().super.isa;
        v54 = [v67 estimatedFidelityForPresentationTime:isa nextPresentationTime:v53];

        v44(v51, v38);
        v44(v50, v38);
        return v54;
      }

      v44(v50, v38);
    }

    _sypSgWOhTm_6(v48, type metadata accessor for Date?);
    return 0;
  }

  v31 = v69;

  return [v31 requestedFidelity];
}

uint64_t areEqual #1 <A>(_:_:) in static DateSequenceTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v18);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

Swift::Void __swiftcall TimelineView.Context.invalidateTimelineContent()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 80))(0xD00000000000001ELL, 0x800000018CD57090);
  }
}

uint64_t (*TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for DateSequenceTimeline();
  v15 = a1;
  Value = AGGraphGetValue();
  v17 = *(v8 + 16);
  v17(v13, Value, a3);
  v17(v10, v13, a3);
  v18 = specialized DateSequenceTimeline.__allocating_init(identifier:schedule:)(v15, v10, v14, a3, a5);

  (*(v8 + 8))(v13, a3);
  *(swift_allocObject() + 16) = v18;
  return partial apply for closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter;
}

uint64_t closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x18D00CC30]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t protocol witness for Rule.value.getter in conformance TimelineView<A, B><>.AlwaysOnTimelinePreferenceWriter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(*v3, *(v3 + 8), *(a1 + 16), a2, *(a1 + 32));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter;
  *(result + 24) = v6;
  *a3 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a3[1] = result;
  return result;
}

BOOL TimelineIdentifier.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  _sypSgWOcTm_2(a1, v6, type metadata accessor for Any?);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = *&v5[OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier];

      return v3 == *(v1 + OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier);
    }
  }

  else
  {
    _sypSgWOhTm_6(v6, type metadata accessor for Any?);
  }

  return 0;
}

void type metadata accessor for (lower: Date, upper: Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for Range<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Range<Date>)
  {
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = type metadata accessor for Range();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Range<Date>);
    }
  }
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: Date, upper: Date)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized DateSequenceTimeline.unconfiguredEntries(for:previousEntry:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateInterval.duration.getter();
  v7 = v6 * 4.0;
  if (v7 < 1.84467441e19)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 1.84467441e19;
  }

  if (v7 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    return;
  }

  outlined init with copy of _Benchmark(v1 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  LOBYTE(v21) = 1;
  v8 = TimelineSchedule.entries(within:mode:limit:)();
  v9 = *(v8 + 16);
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = objc_opt_self();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v19 = v12;
    v20 = v10;
    v13 = *(v11 + 64);
    v18[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v15 = *(v11 + 56);
    do
    {
      v19(v5, v14, v2);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v17 = [v20 entryForPresentationTime:isa withRequestedFidelity:-1];

      (*(v11 - 8))(v5, v2);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t type metadata accessor for BLSAlwaysOnTimelineUnconfiguredEntry()
{
  result = lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry;
  if (!lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry);
  }

  return result;
}

id specialized DateSequenceTimeline.__allocating_init(identifier:schedule:)(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = objc_allocWithZone(a3);
  outlined init with copy of _Benchmark(v14, v10 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule);
  v13.receiver = v10;
  v13.super_class = a3;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_configure_, a1, 0);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

double NavigationStateHost.__deallocating_deinit()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 10) = *(v0 + 154);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  outlined destroy of NavigationState?(v6);

  swift_deallocClassInstance();
  return result;
}

id UIBezierPath.init(_:)(uint64_t a1)
{
  Path.roundedRect()();
  if (v30 == 2 || (FixedRoundedRect.isUniform.getter() & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = Path.cgPath.getter();
    v15 = [ObjCClassFromMetadata bezierPathWithCGPath_];
    outlined destroy of Path(a1);

    return v15;
  }

  else
  {
    v2 = FixedRoundedRect.needsContinuousCorners.getter();
    v3 = swift_getObjCClassFromMetadata();
    if (v2)
    {
      v4 = v3;
      FixedRoundedRect.rect.getter();
      v26 = v6;
      v28 = v5;
      v8 = v7;
      v10 = v9;
      FixedRoundedRect.cornerSize.getter();
      v12 = [(objc_class *)v4 bezierPathWithRoundedRect:v28 cornerRadius:v26, v8, v10, v11];
    }

    else
    {
      v17 = objc_allocWithZone(v3);
      FixedRoundedRect.rect.getter();
      v27 = v19;
      v29 = v18;
      v21 = v20;
      v23 = v22;
      FixedRoundedRect.cornerSize.getter();
      v12 = [v17 initWithArcRoundedRectForSwiftUI:v29 cornerRadius:{v27, v21, v23, v24}];
    }

    v25 = v12;
    outlined destroy of Path(a1);
    return v25;
  }
}

uint64_t UIUserInterfaceStyle.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 1;
  if (v1)
  {
    v2 = 2;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t LayoutDirection.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result != 0);
  if (result == 1)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t UILegibilityWeight.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return -1;
  }

  else
  {
    return v1 & 1;
  }
}

id Animation.caBasicAnimation.getter()
{
  Animation.function.getter();
  if (v27 >= 5u)
  {
    if (v27 == 5)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
      [v13 setTimeOffset_];
      LODWORD(v14) = 1.0;
      [v13 setSpeed_];
      [v13 setDuration_];

      [v13 setMass_];
      [v13 setStiffness_];
      [v13 setDamping_];
      [v13 setInitialVelocity_];
      return v13;
    }

    outlined consume of Animation.Function(v22, v23, v24, v25, v26, v27);
  }

  else
  {
    Animation.function.getter();
    LOBYTE(v15) = v21;
    Animation.Function.bezierForm.getter();
    outlined consume of Animation.Function(v16, v17, v18, v19, v20, v21);
    if ((v27 & 1) == 0)
    {
      v0 = [objc_allocWithZone(MEMORY[0x1E6979318]) init];
      [v0 setTimeOffset_];
      LODWORD(v1) = 1.0;
      [v0 setSpeed_];
      v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      v2 = *&v23;
      *&v7 = v2;
      v3 = *&v24;
      *&v8 = v3;
      v4 = *&v25;
      *&v9 = v4;
      v5 = *&v26;
      *&v10 = v5;
      v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
      [v0 setTimingFunction_];

      [v0 setDuration_];
      return v0;
    }
  }

  return 0;
}

id UIBlurEffect.init(materialID:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 > 2)
      {
        if ((v2 - 3) < 2)
        {
          v17 = 9;
        }

        else
        {
          if ((v2 - 6) < 2)
          {
            return 0;
          }

          v17 = 10;
        }
      }

      else
      {
        v16 = 7;
        if (v2 != 1)
        {
          v16 = 4;
        }

        if (v2)
        {
          v17 = v16;
        }

        else
        {
          v17 = 6;
        }
      }

      return [swift_getObjCClassFromMetadata() effectWithStyle_];
    }

    v15 = 2;
  }

  else if (v3)
  {
    v15 = 1;
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = v2;
    v9 = *(v2 + 48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = MEMORY[0x18D00C850](v4, v5);
    v12 = MEMORY[0x18D00C850](v6, v7);
    v13 = [ObjCClassFromMetadata _effectForLightMaterial_darkMaterial_bundle_];

    if (v13)
    {

      outlined consume of Material.ID(v8, 0);
      return v13;
    }

    v2 = v8;
    v15 = 0;
  }

  outlined consume of Material.ID(v2, v15);
  return 0;
}

uint64_t specialized UITableViewScrollPosition.init(_:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  static UnitPoint.bottom.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.bottomLeading.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.bottomTrailing.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.top.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  static UnitPoint.topLeading.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  static UnitPoint.topTrailing.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double outlined consume of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
      goto LABEL_4;
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
LABEL_4:
  }

  return result;
}

double Preview.init(_:traits:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v7 = type metadata accessor for PreviewSourceContentCategory();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for PreviewSourceContentDomain();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E6966790], v8, v13);
  PreviewSourceContentCategory.init(stringLiteral:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  DefaultPreviewSource.init(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:body:)();
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();

  return result;
}

void type metadata accessor for DefaultPreviewSource<ViewPreviewBody>()
{
  if (!lazy cache variable for type metadata for DefaultPreviewSource<ViewPreviewBody>)
  {
    v0 = type metadata accessor for DefaultPreviewSource();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultPreviewSource<ViewPreviewBody>);
    }
  }
}

double Preview.init<A>(_:traits:arguments:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[2] = a2;
  v17[3] = a3;
  v17[1] = a1;
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for PreviewArguments();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - v14;
  buildArguments #1 <A>() in Preview.init<A>(_:traits:arguments:body:)(a4, a7);

  static PreviewSource<>.viewGroupSource<A>(arguments:body:)(v15, a5, a6, a7);
  (*(v13 + 8))(v15, v12);
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();

  return result;
}

uint64_t buildArguments #1 <A>() in Preview.init<A>(_:traits:arguments:body:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PreviewArgumentsBuilder.Component();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13[1] = a1;
  v7 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v7);
  v8 = static PreviewArgumentsBuilder.buildExpression<A>(_:)();
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v9 = static Array._adoptStorage(_:count:)();
  (*(v4 + 16))(v10, v13 - v6, v3);
  _finalizeUninitializedArray<A>(_:)(v9, v3);
  MEMORY[0x18D000E60]();

  static PreviewArgumentsBuilder.buildFinalResult(_:)();
  v11 = *(v4 + 8);
  v11(v13 - v6, v3);
  return (v11)(v13 - v6, v3);
}

uint64_t static PreviewSource<>.viewGroupSource<A>(arguments:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PreviewSourceContentCategory();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for PreviewSourceContentDomain();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6966790], v10);
  PreviewSourceContentCategory.init(stringLiteral:)();
  v13 = type metadata accessor for PreviewArguments();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19 - v15, a1, v14);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a3;

  return DefaultPreviewSource.init<A>(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:arguments:body:)();
}

double Preview.init<A>(_:traits:body:arguments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(double)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19[2] = a2;
  v19[3] = a3;
  v19[0] = a8;
  v19[1] = a1;
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for PreviewArguments();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v19 - v16;
  a6(v15);
  static PreviewSource<>.viewGroupSource<A>(arguments:body:)(v17, a4, a5, a7);
  (*(v14 + 8))(v17, v13);
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();

  return result;
}

uint64_t ViewPreviewSource.makeView.getter()
{
  v1 = *v0;

  return v1;
}

void ViewPreviewSource.makeView.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ViewPreviewSource.contentDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6966790];
  v4 = type metadata accessor for PreviewSourceContentDomain();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t protocol witness for PreviewSource.contentDomain.getter in conformance ViewPreviewSource@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6966790];
  v4 = type metadata accessor for PreviewSourceContentDomain();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t closure #1 in static PreviewSource<>.viewSource(body:)@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v12);
  v11 = v13;
  v3 = v13;
  v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  *(a2 + 24) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>()
{
  result = lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>;
  if (!lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>)
  {
    type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
    result = swift_getWitnessTable(MEMORY[0x1E6966788], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>);
  }

  return result;
}

uint64_t ViewPreviewBody.init<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t closure #1 in static PreviewSource<>.viewGroupSource<A>(arguments:body:)@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v12);
  v11 = v13;
  v3 = v13;
  v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  *(a2 + 24) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void __swiftcall _Previewable.init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.runtimeIssuesLog.getter();
  Logger.init(_:)();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18BD4A000, v4, v5, "'@Previewable' can only be used in a #Preview body closure", v6, 2u);
    MEMORY[0x18D0110E0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

double HostingUIButton.isHighlighted.setter(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_setHighlighted_, a1 & 1);
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8];
  if (v7)
  {
    v8 = v6[16];
    v9 = *v6;
    v14.receiver = v2;
    v14.super_class = ObjectType;

    objc_msgSendSuper2(&v14, sel_isHighlighted);
    v10 = static Animation.coreAnimationDefault(duration:)();
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_isHighlighted);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8 & 1;
    *(v12 + 41) = v11;

    onNextMainRunLoop(do:)();
  }

  return result;
}

void HostingUIButton.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  if (AGGraphGetWeakValue())
  {

    static _ProposedSize.unspecified.getter();
    LayoutComputer.sizeThatFits(_:)();
  }

  else
  {
    v2.receiver = v0;
    v2.super_class = ObjectType;
    objc_msgSendSuper2(&v2, sel_intrinsicContentSize);
  }
}

double HostingUIButton._baselineOffsets(at:)(double a1, double a2)
{
  if (!AGGraphGetWeakValue())
  {
    return 2.22507386e-308;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {

    static _ProposedSize.unspecified.getter();
    LayoutComputer.sizeThatFits(_:)();
  }

  else
  {
  }

  static VerticalAlignment.firstTextBaseline.getter();
  static ViewSize.fixed(_:)();
  v4 = COERCE_DOUBLE(LayoutComputer.explicitAlignment(_:at:)());
  v6 = v5;
  static VerticalAlignment.lastTextBaseline.getter();
  static ViewSize.fixed(_:)();
  LayoutComputer.explicitAlignment(_:at:)();
  if (v6)
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

id closure #1 in HostingUIButton.swiftUI_accessibilityActivateBlock.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong swiftUI:Strong accessibilityShowContextMenuForElement:0 targetPointValue:?];

  return v3;
}

uint64_t closure #1 in HostingUIButton.focusItems(in:)@<X0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v12 = a1;
  v46.receiver = a1;
  v46.super_class = type metadata accessor for HostingUIButton();
  v14 = objc_msgSendSuper2(&v46, sel_focusItemsInRect_, a3, a4, a5, a6);
  type metadata accessor for UIFocusItem();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
LABEL_16:
    v16 = __CocoaSet.count.getter();
    v43 = v12;
    v44 = a2;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v12;
    v44 = a2;
    if (v16)
    {
LABEL_3:
      v42 = v7;
      v17 = 0;
      a2 = (v15 & 0xC000000000000001);
      v7 = v15 & 0xFFFFFFFFFFFFFF8;
      v47 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a2)
        {
          MEMORY[0x18D00E9C0](v17, v15);
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v18 = v45;
            v12 = v43;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v47;
        }

        ++v17;
        if (v12 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *v44 = v18;
  v19 = specialized UIFocusEnvironment.nearestRenderer()();
  if (!v19)
  {
LABEL_39:
    v38 = MEMORY[0x1E69E7CC0];
    return specialized Array.append<A>(contentsOf:)(v38);
  }

  v21 = v19;
  v22 = v20;
  ObjectType = swift_getObjectType();
  v24 = (*(v22 + 24))(ObjectType, v22);
  if (v21 == v12)
  {
LABEL_25:
    swift_unknownObjectRelease();
    if (v24)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (v25 && v12)
  {
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = v12;
    v29 = UIFocusEnvironment.nearestRenderer()();
    if (v29)
    {
      v30 = v29;
      swift_unknownObjectRelease();
      if (v30 == v21)
      {
        v24 = (*(v26 + 56))(v27, v26);

        goto LABEL_25;
      }
    }

    v12 = v43;
  }

  for (i = v12; ; i = v37)
  {
    swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    if (v32)
    {
      if (i)
      {
        v33 = v32;
        v34 = swift_getObjectType();
        v35 = (*(v33 + 8))(v34, v33);
        if (v35)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_36:
    v37 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v37)
    {
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    swift_unknownObjectRetain();
  }

  v24 = v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v21))
  {

    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_41:
  v39 = v43;
  v40 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v24, v39, v21 != v43, a3, a4, a5, a6);

  v38 = v40;
  return specialized Array.append<A>(contentsOf:)(v38);
}

id HostingUIButton._parentContainer.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel__parentGestureRecognizerContainer);
  }

  if (!swift_weakLoadStrong())
  {
    v3 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    v4 = *(v3 + 1);
    v5 = swift_getObjectType();
    (*(v4 + 16))(v5, v4);
    swift_unknownObjectRelease();
  }

LABEL_6:
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = ViewResponder.parentGestureContainer.getter();

    return v7;
  }

  return result;
}

id HostingUIButton.makePreview()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  if (swift_weakLoadStrong())
  {
    type metadata accessor for PlatformUnaryViewResponder(0);
    v4 = swift_dynamicCastClassUnconditional();
    v13 = 0u;
    v14 = 0u;
    v15 = 6;
    MEMORY[0x1EEE9AC00](v4);

    static Update.ensure<A>(_:)();
    v16 = 0u;
    v17 = 0u;
    v18 = 6;
    Path.roundedRect()();
    if (v12 == 2)
    {
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
      v10[0] = v16;
      v10[1] = v17;
      v11 = v18;
      outlined init with copy of Path.Storage(v10, v9);
      v5 = UIBezierPath.init(_:)(&v16);
      [v2 setVisiblePath_];
    }

    outlined destroy of Path(&v16);
  }

  v6 = [v1 _effectiveContentView];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v6 parameters:v2];

  return v7;
}

uint64_t closure #1 in HostingUIButton.makePreview()(uint64_t a1, uint64_t a2)
{
  *&v18[0] = 4;
  v8 = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 2;
  dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
  outlined destroy of CoordinateSpace(&v8);
  v3 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v3;
  v15 = *(a2 + 32);
  v16[0] = v14[0];
  v16[1] = v3;
  v17 = v15;
  outlined init with copy of Path.Storage(v16, &v8);
  v4 = Path.isEmpty.getter();
  outlined destroy of Path(v14);
  if (v4 & 1) != 0 || (v5 = *(a2 + 16), v12[0] = *a2, v12[1] = v5, v13 = *(a2 + 32), v18[0] = v12[0], v18[1] = v5, v19 = v13, outlined init with copy of Path.Storage(v18, &v8), v6 = Path.isInfinite.getter(), result = outlined destroy of Path(v12), (v6))
  {
    v8 = 1;
    v9 = 0u;
    v10 = 0u;
    v11 = 2;
    dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
    return outlined destroy of CoordinateSpace(&v8);
  }

  return result;
}

id HostingUIButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_childLayoutComputer] = 0;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t HostingUIButton.__ivar_destroyer()
{
  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed), *(v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8));
  swift_weakDestroy();
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host;

  return outlined destroy of weak FallbackResponderProvider?(v1);
}

uint64_t protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance UIKitButtonBase(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v8[2] = a5;
  v8[3] = v6;
  v8[4] = a4;
  *&v8[5] = a1;
  *&v8[6] = a2;
  return MEMORY[0x18D00AC20](partial apply for closure #1 in UIKitButtonBase.renderPlatformGroup(_:in:size:renderer:), v8);
}

double specialized TextAttributeValidationRecord.formUnion(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v9 = *(v4 + 16);
    if (v9)
    {
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(v9);
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      v10 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

      outlined consume of AttributedTextFormatting.Constraints?(a3);
      if (v10)
      {
        *v4 = (*v4 | a1) & 1;

        AttributedString.AttributeDependencies.merge(_:uniquingKeysWith:)();
        outlined consume of AttributedTextFormatting.Constraints?(a3);

        return result;
      }

      v12 = a3;
    }

    else
    {
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(0);
      outlined copy of AttributedTextFormatting.Constraints?(a3);

      outlined consume of AttributedTextFormatting.Constraints?(a3);
      v12 = 0;
    }

    outlined consume of AttributedTextFormatting.Constraints?(v12);
    v13 = *(v4 + 16);

    outlined consume of AttributedTextFormatting.Constraints?(v13);
    *v4 = a1 & 1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;

    return outlined copy of AttributedTextFormatting.Constraints?(a3);
  }

  return result;
}

void RichTextAttributeResolver.init(environment:content:for:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  *a6 = *a1;
  a6[1] = v11;
  a6[2] = MEMORY[0x1E69E7CC8];

  v12 = static NSAttributedStringKey.kitFont.getter();
  *&v71[0] = v10;
  *(&v71[0] + 1) = v11;
  v65 = type metadata accessor for FontAttributeDefinition(0);
  v66 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type FontAttributeDefinition and conformance FontAttributeDefinition, type metadata accessor for FontAttributeDefinition, protocol conformance descriptor for FontAttributeDefinition);
  v13 = __swift_allocate_boxed_opaque_existential_1(&v63);

  FontAttributeDefinition.init<A>(in:environment:content:)(v71, a2, a3, v13);
  specialized Dictionary.subscript.setter(&v63, v12);
  v14 = static NSAttributedStringKey.kitForegroundColor.getter();
  *&v71[0] = v10;
  *(&v71[0] + 1) = v11;
  v65 = &unk_1EFFFB5D8;
  v66 = lazy protocol witness table accessor for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition();

  ForgroundColorAttributeDefinition.init<A>(in:environment:)(v71, &v63);
  specialized Dictionary.subscript.setter(&v63, v14);
  v15 = static NSAttributedStringKey.kitBackgroundColor.getter();
  v63 = v10;
  v64 = v11;
  v16 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();

  v17 = MEMORY[0x1E697D838];
  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v63, 0, closure #1 in RichTextAttributeResolver.init(environment:content:for:), 0, v67, v16, a5);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, v17, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v65 = v18;
  v66 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, v17);
  v19 = swift_allocObject();
  v63 = v19;
  v20 = v67[1];
  *(v19 + 16) = v67[0];
  *(v19 + 32) = v20;
  *(v19 + 48) = v68;
  specialized Dictionary.subscript.setter(&v63, v15);
  v21 = static NSAttributedStringKey.kitStrikethroughStyle.getter();
  *&v71[0] = v10;
  *(&v71[0] + 1) = v11;
  v65 = &unk_1EFFFB500;
  v66 = lazy protocol witness table accessor for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition();

  StrikethroughStyleAttributeDefinition.init<A>(in:environment:)(&v63);
  specialized Dictionary.subscript.setter(&v63, v21);
  v22 = static NSAttributedStringKey.kitStrikethroughColor.getter();
  v63 = v10;
  v64 = v11;
  v23 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();

  v24 = MEMORY[0x1E697D878];
  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v63, 0, closure #4 in RichTextAttributeResolver.init(environment:content:for:), 0, v69, v23, a5);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, v24, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v65 = v25;
  v66 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, v24);
  v26 = swift_allocObject();
  v63 = v26;
  v27 = v69[1];
  *(v26 + 16) = v69[0];
  *(v26 + 32) = v27;
  *(v26 + 48) = v70;
  specialized Dictionary.subscript.setter(&v63, v22);
  v28 = static NSAttributedStringKey.kitUnderlineStyle.getter();
  *&v71[0] = v10;
  *(&v71[0] + 1) = v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v29 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>(0);
  v65 = v30;
  v66 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber> and conformance MappedAttributedStringKeyDefinition<A, B>, type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>, protocol conformance descriptor for MappedAttributedStringKeyDefinition<A, B>);
  v31 = swift_allocObject();
  v63 = v31;

  v32 = MEMORY[0x1E697D828];
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #3 in RichTextAttributeResolver.init(environment:content:for:), 0, v31 + 16, a4, v29, a5);
  specialized Dictionary.subscript.setter(&v63, v28);
  v33 = static NSAttributedStringKey.kitUnderlineColor.getter();
  v63 = v10;
  v64 = v11;

  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v63, 0, closure #4 in RichTextAttributeResolver.init(environment:content:for:), 0, v71, v29, a5);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v32, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v65 = v34;
  v66 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v32);
  v35 = swift_allocObject();
  v63 = v35;
  v36 = v71[1];
  *(v35 + 16) = v71[0];
  *(v35 + 32) = v36;
  *(v35 + 48) = v72;
  specialized Dictionary.subscript.setter(&v63, v33);
  v37 = static NSAttributedStringKey.kitKern.getter();
  v38 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
  v39 = MEMORY[0x1E697D8A8];
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute, MEMORY[0x1E697D8A8]);
  v65 = v40;
  v66 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute, v39);
  v41 = swift_allocObject();
  v63 = v41;

  v42 = a5;
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v41 + 16, a4, v38, a5);
  specialized Dictionary.subscript.setter(&v63, v37);
  v43 = static NSAttributedStringKey.kitTracking.getter();
  v44 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
  v45 = MEMORY[0x1E697D8B8];
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute, MEMORY[0x1E697D8B8]);
  v65 = v46;
  v66 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute, v45);
  v47 = swift_allocObject();
  v63 = v47;

  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v47 + 16, a4, v44, v42);
  specialized Dictionary.subscript.setter(&v63, v43);
  v48 = static NSAttributedStringKey.kitBaselineOffset.getter();
  v61 = v10;
  v62 = v11;
  v49 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
  v50 = MEMORY[0x1E697D818];
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, MEMORY[0x1E697D818]);
  v65 = v51;
  v66 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, v50);
  v52 = swift_allocObject();
  v63 = v52;

  v53 = v42;
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v52 + 16, a4, v49, v42);
  specialized Dictionary.subscript.setter(&v63, v48);
  v54 = *MEMORY[0x1E69DB5F0];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
  v55 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>(0);
  v65 = v56;
  v66 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph> and conformance MappedAttributedStringKeyDefinition<A, B>, type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>, protocol conformance descriptor for MappedAttributedStringKeyDefinition<A, B>);
  v57 = swift_allocObject();
  v63 = v57;

  v58 = v54;
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #8 in RichTextAttributeResolver.init(environment:content:for:), 0, v57 + 16, a4, v55, v53);
  specialized Dictionary.subscript.setter(&v63, v58);
  v59 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v61 = v10;
  v62 = v11;
  v65 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  v66 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type ParagraphStyleAttributeDefinition and conformance ParagraphStyleAttributeDefinition, type metadata accessor for ParagraphStyleAttributeDefinition, protocol conformance descriptor for ParagraphStyleAttributeDefinition);
  v60 = __swift_allocate_boxed_opaque_existential_1(&v63);
  ParagraphStyleAttributeDefinition.init<A>(in:environment:)(&v61, v60);
  specialized Dictionary.subscript.setter(&v63, v59);
}

double FontAttributeDefinition.init<A>(in:environment:content:)@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = type metadata accessor for FontAttributeDefinition(0);
  v12 = v11[9];
  LOWORD(v23) = -256;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?, MEMORY[0x1E697F878]);
  AtomicBox.init(wrappedValue:)();
  *(a6 + v12) = v21;
  v13 = (a6 + v11[8]);
  *v13 = a2;
  v13[1] = a3;
  EnvironmentValues.attributeScopeContext.getter();
  *(a6 + v11[11]) = 0uLL;
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CDD3F30;
  v15 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
  *(v14 + 32) = MEMORY[0x1E697D898];
  *(v14 + 40) = v15;
  v16 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  v17 = MEMORY[0x1E69684E0];
  *(v14 + 48) = MEMORY[0x1E6968508];
  *(v14 + 56) = v16;
  v18 = MEMORY[0x1E69684D8];
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *(a6 + v11[10]) = v14;
  *a6 = EnvironmentValues.fontModifiers.getter();
  *&v22 = v10;
  *(&v22 + 1) = v9;
  EnvironmentValues.typesettingConfiguration.getter();
  EnvironmentValues.fontResolutionContext.getter();
  v19 = (a6 + v11[6]);
  *v19 = v22;
  v19[1] = v23;
  v19[2] = v24;
  EnvironmentValues.locale.getter();

  return result;
}

void ForgroundColorAttributeDefinition.init<A>(in:environment:)(uint64_t *a1@<X1>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v6 = PropertyList.Tracker.init()();
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CD63410;
  v8 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
  *(v7 + 32) = MEMORY[0x1E697D848];
  *(v7 + 40) = v8;
  v9 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  *(v7 + 48) = MEMORY[0x1E6968518];
  *(v7 + 56) = v9;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a4 = v7;

  EnvironmentValues.addDependencies(from:)();

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
    PropertyList.Tracker.reset()();
  }

  a4[1] = v5;
  a4[2] = v6;
}

uint64_t StrikethroughStyleAttributeDefinition.init<A>(in:environment:)@<X0>(uint64_t a4@<X8>)
{
  EnvironmentValues.attributeScopeContext.getter();

  *(a4 + 8) = v9;
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63410;
  v6 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
  *(v5 + 32) = MEMORY[0x1E697D878];
  *(v5 + 40) = v6;
  v7 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  *(v5 + 48) = MEMORY[0x1E6968508];
  *(v5 + 56) = v7;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a4 = v5;
  return result;
}

id closure #3 in RichTextAttributeResolver.init(environment:content:for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[1] == 1)
  {
    result = 0;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  *a2 = result;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EnvironmentValues.attributeScopeContext.getter();

  *a5 = v12;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  result = static AttributeScope.contains<A>(_:)();
  *(a5 + 32) = result & 1;
  return result;
}

uint64_t closure #8 in RichTextAttributeResolver.init(environment:content:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69655A0];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  outlined init with copy of AttributedString.AdaptiveImageGlyph?(a1, v7, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v7, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
    (*(v9 + 16))(v11, v14, v8);
    v16 = NSAdaptiveImageGlyph.init(_:)();
    result = (*(v9 + 8))(v14, v8);
  }

  *a2 = v16;
  return result;
}

double ParagraphStyleAttributeDefinition.init<A>(in:environment:)@<D0>(double *a1@<X1>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CDE2490;
  v8 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
  *(v7 + 32) = MEMORY[0x1E6965560];
  *(v7 + 40) = v8;
  v9 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
  *(v7 + 48) = MEMORY[0x1E69684D0];
  *(v7 + 56) = v9;
  v10 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
  *(v7 + 64) = MEMORY[0x1E6965550];
  *(v7 + 72) = v10;
  v11 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
  *(v7 + 80) = MEMORY[0x1E697D858];
  *(v7 + 88) = v11;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a4 = v7;
  *&v14 = v5;
  *(&v14 + 1) = v6;
  v12 = type metadata accessor for ParagraphStyleAttributeDefinition(0);

  ParagraphStyleResolutionContext.init(_:)();
  EnvironmentValues.attributeScopeContext.getter();

  result = v5;
  *(a4 + *(v12 + 24)) = v14;
  return result;
}

uint64_t RichTextAttributeResolver.update(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  v7 = 0;
  v4 = v1[2];

  v5 = specialized _NativeDictionary.mapValues<A>(_:)(v4, v2, v3, &v7);

  v1[2] = v5;
  return v7;
}

Swift::Void __swiftcall RichTextAttributeResolver.update(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(v1 + 16);

  v5 = specialized _NativeDictionary.mapValues<A>(_:)(v4, countAndFlagsBits, object);

  *(v1 + 16) = v5;
}

unint64_t RichTextAttributeResolver.definition(of:)@<X0>(void *a1@<X8>)
{
  v14 = *v1;
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    outlined init with copy of _Benchmark(*(v3 + 56) + 40 * v4, v16);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v17);
    return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v17, a1);
  }

  else
  {
    v7 = static AttributeScope.subscript.getter();
    if (v7)
    {
      v9 = v7;
      v10 = v8;
      v16[0] = v14;
      EnvironmentValues.attributeScopeContext.getter();
      v15 = v17[0];
      static AttributedStringKey.definition(constraintedBy:)(&v15, a1, v9, v10, v11);
    }

    else
    {
      lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
      v12 = MEMORY[0x1E6980378];
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
      type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, v12, type metadata accessor for EmptyTextAttributeDefinition);
      a1[3] = v13;
      result = lazy protocol witness table accessor for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>();
      a1[4] = result;
    }
  }

  return result;
}

void *RichTextAttributeResolver.nsAttributes(for:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AttributeContainer();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v3 + 16);
  v10 = *(v9 + 16);
  v48 = a1;
  v10(v8, a1, v6);
  v11 = Dictionary<>.init<A>(_:including:)();
  v46 = 0;
  v12 = v47 + 64;
  v13 = 1 << *(v47 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v47 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  while (v15)
  {
    v19 = v17;
LABEL_16:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(v47 + 48) + 8 * v23);
    outlined init with copy of _Benchmark(*(v47 + 56) + 40 * v23, &v51);
    *&v53 = v24;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v51, &v53 + 8);
    v25 = v24;
LABEL_17:
    v56[0] = v53;
    v56[1] = v54;
    v56[2] = v55;
    v26 = v53;
    if (!v53)
    {

      return v11;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((v56 + 8), &v53);
    v27 = *(&v54 + 1);
    v28 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    (*(*(v28 + 8) + 16))(&v51, v48, v27);
    if (v52)
    {
      outlined init with take of Any(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v11;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)();
      v32 = v11[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_37;
      }

      v36 = v31;
      if (v11[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v30;
          specialized _NativeDictionary.copy()();
          v30 = v44;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
        v30 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_39;
        }
      }

      v11 = v49;
      if (v36)
      {
        v18 = (v49[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_1(v18);
        outlined init with take of Any(v50, v18);
      }

      else
      {
        v49[(v30 >> 6) + 8] |= 1 << v30;
        *(v11[6] + 8 * v30) = v26;
        outlined init with take of Any(v50, (v11[7] + 32 * v30));
        v42 = v11[2];
        v34 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v34)
        {
          goto LABEL_38;
        }

        v11[2] = v43;
      }
    }

    else
    {
      outlined destroy of Any?(&v51);
      v38 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v39)
      {
        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v11;
        if (!v41)
        {
          specialized _NativeDictionary.copy()();
          v11 = v49;
        }

        outlined init with take of Any((v11[7] + 32 * v40), v50);
        specialized _NativeDictionary._delete(at:)(v40, v11);
      }

      else
      {

        memset(v50, 0, sizeof(v50));
      }

      outlined destroy of Any?(v50);
    }

    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  if (v16 <= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v15 = 0;
      v54 = 0u;
      v55 = 0u;
      v17 = v21;
      v53 = 0u;
      goto LABEL_17;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t RichTextAttributeResolver.merge(_:into:override:)(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v205 = a4;
  v203 = a2;
  v7 = MEMORY[0x1E69E6720];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v188 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v181 - v11;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v195 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v196 = &v181 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v181 - v17;
  v194 = type metadata accessor for AttributedString.LineHeight();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v186 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v181 - v20;
  v199 = type metadata accessor for AttributedString.TextAlignment();
  v197 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v182 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v183 = &v181 - v23;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], v7);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v191 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v181 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v185 = (&v181 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v190 = &v181 - v31;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v7);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v181 - v33;
  v34 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], v7);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v181 - v39;
  v41 = type metadata accessor for AttributeContainer();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4[1];
  *&v202 = *v4;
  *(&v202 + 1) = v45;
  v46 = v4[2];
  LODWORD(v201) = a3;
  if ((a3 & 1) != 0 || *(a1 + 16))
  {
    v198 = v46;
    v47 = *(v205 + 16);
    v48 = *(v205 + 24);

    v204 = v47;
    v205 = v48;
    AttributeContainer.init<A>(_:including:)();
    (*(v42 + 56))(v40, 0, 1, v41);
    (*(v42 + 32))(v44, v40, v41);
    (*(v35 + 104))(v37, *MEMORY[0x1E69686E8], v34);
    v49 = v203;
    AttributeContainer.merge(_:mergePolicy:)();
    (*(v35 + 8))(v37, v34);
    (*(v42 + 8))(v44, v41);
    specialized Dictionary.subscript.getter(a1, &v207);
    v50 = v201;
    if (*(&v208 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
      if (swift_dynamicCast())
      {
        v51 = *&v206[0];
        lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
        AttributeContainer.subscript.getter();
        specialized static FontAttributeDefinition.markdownFontModifiers(for:)(v207, SBYTE8(v207));
        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
        AttributeContainer.subscript.getter();
        if (v210)
        {
          v52 = *(&v202 + 1);
          v53 = v202;
        }

        else
        {
          v57 = v202;
          v207 = v202;
          EnvironmentValues.effectiveFont.getter();
          v52 = *(&v57 + 1);
          v53 = v57;
        }

        *&v213 = v53;
        *(&v213 + 1) = v52;
        EnvironmentValues.fontResolutionContext.getter();
        v58 = Font.platformFont(in:modifiers:overrideContextModifiers:)();

        v207 = v206[0];
        v208 = v206[1];
        v209 = v206[2];
        outlined destroy of Font.Context(&v207);
        type metadata accessor for CTFontRef(0);
        lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
        if (static _CFObject.== infix(_:_:)())
        {
          goto LABEL_21;
        }

        if (static AttributeScope.contains<A>(_:)())
        {
          v59 = v51;
          *&v206[0] = Font.init(_:)();
        }

        else
        {
          if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
          {
            goto LABEL_21;
          }

          AttributeContainer.subscript.getter();
          if (BYTE8(v206[0]) != 1)
          {
            goto LABEL_21;
          }

          *&v206[0] = 0;
          BYTE8(v206[0]) = 0;
        }

        AttributeContainer.subscript.setter();
LABEL_21:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        swift_getKeyPath();
        v62 = specialized AttributeContainer.subscript.modify(v206);
        if ((*(v61 + 8) & 1) == 0)
        {
          *v61 = *v61 & 0xFFFFFFFFFFFFFFFBLL | (CTFontRef.symbolicTraits.getter() >> 8) & 4;
        }

        (v62)(v206, 0);

        v63 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v63);
        swift_getKeyPath();
        v65 = specialized AttributeContainer.subscript.modify(v206);
        if ((*(v64 + 8) & 1) == 0)
        {
          *v64 = *v64 & 0xFFFFFFFFFFFFFFFELL | CTFontRef.symbolicTraits.getter() & 1;
        }

        (v65)(v206, 0);

        v66 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v66);
        swift_getKeyPath();
        v68 = specialized AttributeContainer.subscript.modify(v206);
        if ((*(v67 + 8) & 1) == 0)
        {
          *v67 = *v67 & 0xFFFFFFFFFFFFFFFDLL | CTFontRef.symbolicTraits.getter() & 2;
        }

        (v68)(v206, 0);

        v49 = v203;
        AttributeContainer.subscript.getter();
        if (BYTE8(v206[0]))
        {

          v50 = v201;
        }

        else
        {
          v50 = v201;
          if (!*&v206[0])
          {
            *&v206[0] = 0;
            BYTE8(v206[0]) = 1;
            AttributeContainer.subscript.setter();
          }
        }

        goto LABEL_32;
      }
    }

    else
    {
      outlined destroy of Any?(&v207);
    }

    if (v50)
    {
      *&v207 = 0;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      AttributeContainer.subscript.setter();
      *&v207 = 0;
      BYTE8(v207) = 1;
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
      AttributeContainer.subscript.setter();
    }

LABEL_32:
    specialized Dictionary.subscript.getter(a1, &v207);
    if (*(&v208 + 1))
    {
      if (swift_dynamicCast())
      {
        v69 = *&v206[0];
        specialized Dictionary.subscript.getter(a1, &v207);
        v181 = a1;
        if (*(&v208 + 1))
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
          if (swift_dynamicCast())
          {
            v70 = *&v206[0];
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v207);
          v70 = 0;
        }

        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
        AttributeContainer.subscript.getter();
        v74 = v207;
        if (*(&v207 + 1) != 1 && v207 == v69)
        {
          if (*(&v207 + 1))
          {
            v207 = v202;
            dispatch thunk of AnyColorBox.resolve(in:)();
            v75 = Color.Resolved.kitColor.getter();
            objc_opt_self();
            swift_dynamicCastObjCClassUnconditional();
            if (v70)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
              v76 = v70;
              v77 = static NSObject.== infix(_:_:)();

              v49 = v203;
              v50 = v201;
              if (v77)
              {

                v78 = v69;
                v79 = *(&v74 + 1);
LABEL_52:
                outlined consume of Text.LineStyle?(v78, v79);
                a1 = v181;
                goto LABEL_70;
              }
            }

            else
            {

              v49 = v203;
            }
          }

          else if (!v70)
          {
            v78 = v69;
            v79 = 0;
            goto LABEL_52;
          }
        }

        if (v69)
        {
          if (v70)
          {
            type metadata accessor for UIKitPlatformColorDefinition(0);
            v80 = v70;
            v81 = Color.init(_platformColor:definition:)();
          }

          else
          {
            v81 = 0;
          }
        }

        else
        {
          v81 = 1;
        }

        v82 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v82);
        swift_getKeyPath();
        v84 = specialized AttributeContainer.subscript.modify(&v207);
        if ((*(v83 + 8) & 1) == 0)
        {
          v85 = v69 != 1 || v81 == 1;
          v86 = 32;
          if (v85)
          {
            v86 = 0;
          }

          *v83 = *v83 & 0xFFFFFFFFFFFFFFDFLL | v86;
        }

        (v84)(&v207, 0);

        if (static AttributeScope.contains<A>(_:)())
        {
          *&v207 = v69;
          *(&v207 + 1) = v81;
          outlined copy of Text.LineStyle?(v69, v81);
          AttributeContainer.subscript.setter();
        }

        outlined consume of Text.LineStyle?(v74, *(&v74 + 1));

        a1 = v181;
        outlined consume of Text.LineStyle?(v69, v81);
        v50 = v201;
LABEL_70:
        specialized Dictionary.subscript.getter(a1, &v207);
        if (*(&v208 + 1))
        {
          if (swift_dynamicCast())
          {
            v87 = *&v206[0];
            v88 = *&v206[0] == 0;
            specialized Dictionary.subscript.getter(a1, &v207);
            if (*(&v208 + 1))
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
              if (swift_dynamicCast())
              {
                v89 = *&v206[0];
                if (v87)
                {
                  type metadata accessor for UIKitPlatformColorDefinition(0);
                  v90 = v89;
                  v88 = Color.init(_platformColor:definition:)();
                }

                else
                {
                  v88 = 1;
                }

LABEL_81:
                lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
                if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
                {
LABEL_99:

                  goto LABEL_100;
                }

                AttributeContainer.subscript.getter();
                v91 = v207;
                outlined consume of Text.LineStyle?(v207, *(&v207 + 1));
                if (*(&v91 + 1) == 1)
                {
                  v50 = v201;
                  if (v88 != 1)
                  {
LABEL_98:
                    *&v207 = v87;
                    *(&v207 + 1) = v88;
                    outlined copy of Text.LineStyle?(v87, v88);
                    AttributeContainer.subscript.setter();
                    goto LABEL_99;
                  }
                }

                else
                {
                  if (v88 == 1)
                  {
                    v92 = 0;
                  }

                  else
                  {
                    v92 = v87;
                  }

                  v50 = v201;
                  if (v88 == 1 || v91 != v92)
                  {
                    goto LABEL_98;
                  }
                }

                AttributeContainer.subscript.getter();
                v93 = v207;
                if (*(&v207 + 1) >= 2uLL)
                {

                  outlined consume of Text.LineStyle?(v93, *(&v93 + 1));
                  v206[0] = v202;
                  dispatch thunk of AnyColorBox.resolve(in:)();
                  outlined consume of Text.LineStyle?(v93, *(&v93 + 1));
                  v94 = Color.Resolved.kitColor.getter();
                  objc_opt_self();
                  swift_dynamicCastObjCClassUnconditional();
                  if (v89)
                  {
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                    v95 = v89;
                    v49 = v203;
                    v96 = static NSObject.== infix(_:_:)();

                    v50 = v201;
                    if (v96)
                    {

LABEL_100:
                      outlined consume of Text.LineStyle?(v87, v88);
                      goto LABEL_101;
                    }
                  }

                  else
                  {

                    v50 = v201;
                  }
                }

                else
                {
                  outlined consume of Text.LineStyle?(v207, *(&v207 + 1));
                  v50 = v201;
                  if (!v89)
                  {
                    goto LABEL_100;
                  }
                }

                goto LABEL_98;
              }
            }

            else
            {
              outlined destroy of Any?(&v207);
            }

            v89 = 0;
            goto LABEL_81;
          }
        }

        else
        {
          outlined destroy of Any?(&v207);
        }

        if (v50)
        {
          v207 = xmmword_18CD633F0;
          lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
          AttributeContainer.subscript.setter();
        }

LABEL_101:
        specialized Dictionary.subscript.getter(a1, &v207);
        if (*(&v208 + 1))
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
          if (swift_dynamicCast())
          {
            v97 = *&v206[0];
            lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
            if (static AttributeScope.contains<A>(_:)())
            {
              AttributeContainer.subscript.getter();
              if (!v213 && (v98 = v202, v207 = v202, , , v210 = EnvironmentValues.effectiveBackgroundStyle.getter(), v206[0] = v98, v99 = ShapeStyle.fallbackColor(in:level:)(), , , , !v99) || (v207 = v202, dispatch thunk of AnyColorBox.resolve(in:)(), , v100 = Color.Resolved.kitColor.getter(), objc_opt_self(), swift_dynamicCastObjCClassUnconditional(), v101 = v97, v102 = static NSObject.== infix(_:_:)(), v101, v100, (v102 & 1) == 0))
              {
                type metadata accessor for UIKitPlatformColorDefinition(0);
                v101 = v97;
                *&v207 = Color.init(_platformColor:definition:)();
                AttributeContainer.subscript.setter();
              }

              v50 = v201;
LABEL_112:
              specialized Dictionary.subscript.getter(a1, &v207);
              if (*(&v208 + 1))
              {
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                if (swift_dynamicCast())
                {
                  v103 = *&v206[0];
                  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
                  if (static AttributeScope.contains<A>(_:)())
                  {
                    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
                    v104 = v184;
                    AttributeContainer.subscript.getter();
                    v105 = type metadata accessor for URL();
                    v106 = (*(*(v105 - 8) + 48))(v104, 1, v105);
                    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v104, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
                    v107 = AttributeContainer.subscript.getter();
                    if (!*&v206[0])
                    {
                      if (v106 == 1)
                      {
                        v207 = v202;
                        if (!MEMORY[0x18D006440](v107))
                        {
                          goto LABEL_128;
                        }
                      }

                      else
                      {
                        v207 = v202;
                        EnvironmentValues.effectiveLinkColor.getter();
                      }
                    }

                    v207 = v202;
                    dispatch thunk of AnyColorBox.resolve(in:)();

                    v108 = Color.Resolved.kitColor.getter();
                    objc_opt_self();
                    swift_dynamicCastObjCClassUnconditional();
                    v109 = v103;
                    v110 = static NSObject.== infix(_:_:)();

                    if (v110)
                    {
LABEL_129:

                      v50 = v201;
                      goto LABEL_130;
                    }

LABEL_128:
                    type metadata accessor for UIKitPlatformColorDefinition(0);
                    v109 = v103;
                    *&v207 = Color.init(_platformColor:definition:)();
                    AttributeContainer.subscript.setter();
                    goto LABEL_129;
                  }

                  if ((v50 & 1) == 0)
                  {
LABEL_130:
                    specialized Dictionary.subscript.getter(a1, &v207);
                    if (*(&v208 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v111 = *&v206[0];
                        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
                        if (static AttributeScope.contains<A>(_:)())
                        {
                          *&v207 = v111;
                          BYTE8(v207) = 0;
                          goto LABEL_137;
                        }
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&v207);
                    }

                    if ((v50 & 1) == 0)
                    {
                      goto LABEL_138;
                    }

                    *&v207 = 0;
                    BYTE8(v207) = 1;
                    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
LABEL_137:
                    AttributeContainer.subscript.setter();
LABEL_138:
                    specialized Dictionary.subscript.getter(a1, &v207);
                    if (*(&v208 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v112 = *&v206[0];
                        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
                        if (static AttributeScope.contains<A>(_:)())
                        {
                          *&v207 = v112;
                          BYTE8(v207) = 0;
                          goto LABEL_145;
                        }
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&v207);
                    }

                    if ((v50 & 1) == 0)
                    {
                      goto LABEL_146;
                    }

                    *&v207 = 0;
                    BYTE8(v207) = 1;
                    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
LABEL_145:
                    AttributeContainer.subscript.setter();
LABEL_146:
                    specialized Dictionary.subscript.getter(a1, &v207);
                    if (*(&v208 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v113 = *&v206[0];
                        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
                        if (static AttributeScope.contains<A>(_:)())
                        {
                          *&v207 = v113;
                          BYTE8(v207) = 0;
                          AttributeContainer.subscript.setter();
                          v114 = v200;
                          goto LABEL_153;
                        }
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&v207);
                    }

                    v114 = v200;
                    if (v50)
                    {
                      *&v207 = 0;
                      BYTE8(v207) = 1;
                      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
                      AttributeContainer.subscript.setter();
                    }

LABEL_153:
                    specialized Dictionary.subscript.getter(a1, &v207);
                    if (*(&v208 + 1))
                    {
                      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
                      if (swift_dynamicCast())
                      {
                        v201 = *&v206[0];
                        lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
                        if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
                        {
                          v125 = v192;
                          (*(v197 + 56))(v192, 1, 1, v199);
                          outlined init with copy of AttributedString.AdaptiveImageGlyph?(v125, v191, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                          AttributeContainer.subscript.setter();
                          v126 = v125;
LABEL_178:
                          _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v126, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                          lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
                          if (static AttributeScope.contains<A>(_:)())
                          {
                            if ([v201 alignment] == 3)
                            {
                              static TextJustification.full.getter();
                            }

                            else
                            {
                              LOWORD(v207) = 3;
                            }

                            AttributeContainer.subscript.setter();
                          }

                          lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
                          if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
                          {
                            LOBYTE(v207) = 2;
                            AttributeContainer.subscript.setter();
                            goto LABEL_193;
                          }

                          v140 = [v201 baseWritingDirection];
                          if (v140 == 1)
                          {
                            v141 = 1;
LABEL_191:
                            LOBYTE(v207) = v141;
                            goto LABEL_192;
                          }

                          if (!v140)
                          {
                            LOBYTE(v207) = 0;
LABEL_192:
                            AttributeContainer.subscript.setter();
                            v114 = v200;
LABEL_193:
                            lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
                            v142 = static AttributeScope.contains<A>(_:)();
                            v143 = v194;
                            if (v142)
                            {
                              v144 = v201;
                              v145 = v187;
                              v203 = v144;
                              AttributedString.LineHeight.init(_:)();
                              v207 = v202;
                              EnvironmentValues.lineHeight.getter();
                              v146 = v193;
                              v147 = *(v193 + 48);
                              if (v147(v114, 1, v143) == 1)
                              {
                                v148 = v186;
                                static AttributedString.LineHeight.variable.getter();
                                if (v147(v114, 1, v143) != 1)
                                {
                                  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v114, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
                                }
                              }

                              else
                              {
                                v148 = v186;
                                (*(v146 + 32))(v186, v114, v143);
                              }

                              lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590], MEMORY[0x1E6965598]);
                              v151 = dispatch thunk of static Equatable.== infix(_:_:)();
                              v152 = *(v146 + 8);
                              v152(v148, v143);
                              v153 = v196;
                              if (v151)
                              {
                                (*(v146 + 56))(v196, 1, 1, v143);
                                v154 = v143;
                                v155 = v145;
                                v156 = MEMORY[0x1E6965590];
                                outlined init with copy of AttributedString.AdaptiveImageGlyph?(v153, v195, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
                                AttributeContainer.subscript.setter();

                                _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v153, &lazy cache variable for type metadata for AttributedString.LineHeight?, v156);
                                v157 = v155;
                                v158 = v154;
                              }

                              else
                              {
                                (*(v146 + 16))(v196, v145, v143);
                                (*(v146 + 56))(v153, 0, 1, v143);
                                v159 = v145;
                                v160 = MEMORY[0x1E6965590];
                                outlined init with copy of AttributedString.AdaptiveImageGlyph?(v153, v195, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
                                AttributeContainer.subscript.setter();

                                _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v153, &lazy cache variable for type metadata for AttributedString.LineHeight?, v160);
                                v157 = v159;
                                v158 = v143;
                              }

                              v152(v157, v158);
                            }

                            else
                            {
                              v149 = v196;
                              (*(v193 + 56))(v196, 1, 1, v194);
                              v150 = MEMORY[0x1E6965590];
                              outlined init with copy of AttributedString.AdaptiveImageGlyph?(v149, v195, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
                              AttributeContainer.subscript.setter();

                              _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v149, &lazy cache variable for type metadata for AttributedString.LineHeight?, v150);
                            }

LABEL_203:
                            specialized Dictionary.subscript.getter(a1, &v207);
                            if (*(&v208 + 1))
                            {
                              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
                              if (swift_dynamicCast())
                              {
                                v161 = *&v206[0];
                                lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
                                if (static AttributeScope.contains<A>(_:)())
                                {
                                  v162 = v161;
                                  v163 = v189;
                                  AttributedString.AdaptiveImageGlyph.init(_:)();
                                  v164 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
                                  (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
                                  v165 = MEMORY[0x1E69655A0];
                                  outlined init with copy of AttributedString.AdaptiveImageGlyph?(v163, v188, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
                                  AttributeContainer.subscript.setter();

                                  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v163, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, v165);
                                }

                                else
                                {
                                }
                              }

                              v166 = *(&v202 + 1);
                              v167 = v202;
                            }

                            else
                            {
                              outlined destroy of Any?(&v207);
                              v166 = *(&v202 + 1);
                              v167 = v202;
                            }

                            return $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)(v167, v166, v198, v49);
                          }

                          if (v140 == -1)
                          {
                            v141 = 2;
                            goto LABEL_191;
                          }

                          *&v207 = 0;
                          *(&v207 + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(34);
                          MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD572E0);
                          *&v206[0] = [v201 baseWritingDirection];
                          type metadata accessor for NSWritingDirection(0);
                          _print_unlocked<A, B>(_:_:)();
LABEL_217:
                          result = _assertionFailure(_:_:file:line:flags:)();
                          __break(1u);
                          return result;
                        }

                        v115 = [v201 alignment];
                        if (v115 > 2)
                        {
                          v116 = *(&v202 + 1);
                          v117 = v199;
                          v118 = v197;
                          v119 = v185;
                          if ((v115 - 3) >= 2)
                          {
                            goto LABEL_217;
                          }

                          v127 = 1;
                          v128 = v190;
                        }

                        else
                        {
                          v116 = *(&v202 + 1);
                          v117 = v199;
                          v118 = v197;
                          v119 = v185;
                          if (v115)
                          {
                            if (v115 == 1)
                            {
                              v120 = MEMORY[0x1E6965578];
                            }

                            else
                            {
                              if (v115 != 2)
                              {
                                goto LABEL_217;
                              }

                              v120 = MEMORY[0x1E6965570];
                            }
                          }

                          else
                          {
                            v120 = MEMORY[0x1E6965568];
                          }

                          v128 = v190;
                          (*(v197 + 104))(v190, *v120, v199);
                          v127 = 0;
                        }

                        v129 = *(v118 + 56);
                        v129(v128, v127, 1, v117);
                        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v128, v119, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                        if ((*(v118 + 48))(v119, 1, v117) == 1)
                        {
                          v130 = v117;
                          v131 = MEMORY[0x1E6965580];
                          _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v119, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                          v132 = v192;
                          v129(v192, 1, 1, v130);
                          outlined init with copy of AttributedString.AdaptiveImageGlyph?(v132, v191, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v131);
                          AttributeContainer.subscript.setter();
                          _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v132, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v131);
LABEL_172:
                          v114 = v200;
LABEL_177:
                          v126 = v190;
                          goto LABEL_178;
                        }

                        v185 = v129;
                        v133 = v183;
                        (*(v118 + 32))(v183, v119, v117);
                        *&v207 = v202;
                        *(&v207 + 1) = v116;
                        EnvironmentValues.textAlignment.getter();
                        if (LOBYTE(v206[0]) == 2)
                        {
                          v114 = v200;
                          v134 = v185;
                        }

                        else
                        {
                          v114 = v200;
                          v134 = v185;
                          if ((v206[0] & 1) == 0)
                          {
                            v168 = v202;
                            v207 = v202;
                            EnvironmentValues.multilineTextAlignment.getter();
                            v206[0] = v168;
                            EnvironmentValues.layoutDirection.getter();
                            v214 = v210;
                            v213 = v168;
                            v169 = v199;
                            EnvironmentValues.writingMode.getter();
                            v211 = v212;
                            v170 = v182;
                            AttributedString.TextAlignment.init(_:layoutDirection:writingMode:)();
                            v171 = static AttributedString.TextAlignment.== infix(_:_:)();
                            v172 = v197;
                            v173 = *(v197 + 8);
                            v173(v170, v169);
                            v174 = v133;
                            v175 = v192;
                            if (v171)
                            {
                              v176 = v192;
                              v177 = 1;
                            }

                            else
                            {
                              (*(v172 + 16))(v192, v174, v169);
                              v176 = v175;
                              v177 = 0;
                            }

                            v185(v176, v177, 1, v169);
                            v178 = v169;
                            v179 = MEMORY[0x1E6965580];
                            outlined init with copy of AttributedString.AdaptiveImageGlyph?(v175, v191, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                            v180 = v203;
                            AttributeContainer.subscript.setter();
                            _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v175, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v179);
                            v173(v174, v178);
                            v49 = v180;
                            goto LABEL_172;
                          }
                        }

                        v135 = v197;
                        v136 = v133;
                        v137 = v192;
                        (*(v197 + 16))(v192, v136, v117);
                        v134(v137, 0, 1, v117);
                        v138 = v117;
                        v139 = MEMORY[0x1E6965580];
                        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v137, v191, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                        AttributeContainer.subscript.setter();
                        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v137, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v139);
                        (*(v135 + 8))(v136, v138);
                        goto LABEL_177;
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&v207);
                    }

                    if (v50)
                    {
                      v121 = v192;
                      (*(v197 + 56))(v192, 1, 1, v199);
                      v122 = MEMORY[0x1E6965580];
                      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v121, v191, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
                      lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
                      AttributeContainer.subscript.setter();
                      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v121, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v122);
                      LOBYTE(v207) = 2;
                      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
                      AttributeContainer.subscript.setter();
                      v123 = v196;
                      (*(v193 + 56))(v196, 1, 1, v194);
                      v124 = MEMORY[0x1E6965590];
                      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v123, v195, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
                      lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
                      AttributeContainer.subscript.setter();
                      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v123, &lazy cache variable for type metadata for AttributedString.LineHeight?, v124);
                      LOWORD(v207) = 3;
                      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
                      AttributeContainer.subscript.setter();
                    }

                    goto LABEL_203;
                  }

LABEL_121:
                  *&v207 = 0;
                  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
                  AttributeContainer.subscript.setter();
                  goto LABEL_130;
                }
              }

              else
              {
                outlined destroy of Any?(&v207);
              }

              if ((v50 & 1) == 0)
              {
                goto LABEL_130;
              }

              goto LABEL_121;
            }

            if ((v50 & 1) == 0)
            {
              goto LABEL_112;
            }

LABEL_111:
            *&v207 = 0;
            lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
            AttributeContainer.subscript.setter();
            goto LABEL_112;
          }
        }

        else
        {
          outlined destroy of Any?(&v207);
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }
    }

    else
    {
      outlined destroy of Any?(&v207);
    }

    if (v50)
    {
      v207 = xmmword_18CD633F0;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
      AttributeContainer.subscript.setter();
      v71 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v71);
      swift_getKeyPath();
      v73 = specialized AttributeContainer.subscript.modify(&v207);
      if ((*(v72 + 8) & 1) == 0)
      {
        *v72 &= ~0x20uLL;
      }

      (v73)(&v207, 0);
    }

    goto LABEL_70;
  }

  v54 = v202;
  v55 = v203;

  return $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)(v54, *(&v54 + 1), v46, v55);
}