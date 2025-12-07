char *assignWithTake for UIKitDatePickerRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v26 = *(v8 + 40);
  v26(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for DatePickerStyleConfiguration(0);
  v10 = v9[6];
  v11 = *(v8 + 48);
  v12 = v11(&a1[v10], 1, v7);
  v13 = v11(&a2[v10], 1, v7);
  if (v12)
  {
    if (!v13)
    {
      (*(v8 + 32))(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v8 + 8))(&a1[v10], v7);
LABEL_6:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v26(&a1[v10], &a2[v10], v7);
LABEL_7:
  v15 = v9[7];
  v16 = v11(&a1[v15], 1, v7);
  v17 = v11(&a2[v15], 1, v7);
  if (!v16)
  {
    if (!v17)
    {
      v26(&a1[v15], &a2[v15], v7);
      goto LABEL_13;
    }

    (*(v8 + 8))(&a1[v15], v7);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    goto LABEL_13;
  }

  (*(v8 + 32))(&a1[v15], &a2[v15], v7);
  (*(v8 + 56))(&a1[v15], 0, 1, v7);
LABEL_13:
  *&a1[v9[8]] = *&a2[v9[8]];
  v19 = a3[5];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  v21 = a3[6];
  v22 = type metadata accessor for Calendar();
  (*(*(v22 - 8) + 40))(&a1[v21], &a2[v21], v22);
  v23 = a3[7];
  v24 = type metadata accessor for TimeZone();
  (*(*(v24 - 8) + 40))(&a1[v23], &a2[v23], v24);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

uint64_t type metadata completion function for UIKitDatePickerRepresentable(uint64_t a1)
{
  result = type metadata accessor for DatePickerStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v5 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, MEMORY[0x1E697F960]);
    v4 = v3;
    v6[0] = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v6[1] = lazy protocol witness table accessor for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>(v5);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>, LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier>, StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>)
  {
    v5[2] = v1;
    v5[3] = v2;
    type metadata accessor for LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable>(255, a1);
    v5[0] = &protocol witness table for DatePickerStyleConfiguration.Label;
    v5[1] = &protocol witness table for UIKitDatePickerRepresentable;
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<DatePickerStyleConfiguration.Label, UIKitDatePickerRepresentable> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth();
    v5[1] = MEMORY[0x1E697EBF8];
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<GraphicalDatePickersFillWidth, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth()
{
  result = lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth;
  if (!lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GraphicalDatePickersFillWidth, &unk_1F0010D70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicalDatePickersFillWidth and conformance GraphicalDatePickersFillWidth);
  }

  return result;
}

uint64_t outlined assign with take of DatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ButtonDefaultRenderingModeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ButtonDefaultRenderingModeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ButtonDefaultRenderingModeModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ButtonDefaultRenderingModeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier()
{
  result = lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier;
  if (!lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonDefaultRenderingModeModifier, &type metadata for ButtonDefaultRenderingModeModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonDefaultRenderingModeModifier and conformance ButtonDefaultRenderingModeModifier);
  }

  return result;
}

__n128 DocumentGroup.body.getter@<Q0>(uint64_t a1@<X8>)
{
  outlined init with copy of DocumentGroupConfiguration(v1, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t static DocumentGroup.DocumentContentScene._makeScene(scene:inputs:)(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[2];
  v11 = a2[6];
  v19 = *(a2 + 14);
  v31 = a3;
  v32 = a4;
  v33 = a5;
  LODWORD(v34) = v9;
  type metadata accessor for DocumentGroup.DocumentContentScene(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  PreferencesOutputs.init()();
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v12 = v34;
  v13 = v35;
  v14 = v36;
  swift_beginAccess();
  HIDWORD(v20) = *(v10 + 16);
  List = type metadata accessor for DocumentGroup.MakeList(0, a3, a4, a5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DocumentGroup<A, B>.MakeList, List);
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<SceneList>, &type metadata for SceneList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_30, v28, List, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v17 = *(v10 + 16);
  v20 = v11;
  v21 = v19;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v22;
  v27 = v17;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  outlined consume of SceneList.Namespace(v12, v13, v14);
}

uint64_t closure #1 in static DocumentGroup.DocumentContentScene._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for DocumentGroup.DocumentContentScene(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_29, v8, &type metadata for DocumentGroupConfiguration, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t DocumentGroup.MakeList.value.getter@<X0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DocumentGroupConfiguration(Value, __src);
  IdentifiedDocumentGroupConfiguration.init(_:)(__src, v16);
  outlined init with copy of IdentifiedDocumentGroupConfiguration(v16, __src);
  __src[128] = 2;
  v4 = v17;
  v5 = v18;
  v6 = v19;
  outlined copy of SceneID(v17, v18, v19);
  DisplayList.Version.init(forUpdate:)();
  v7 = v14[2];
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(v14);
  v8 = v14[0];
  v9 = v14[1];
  memset(&__src[192], 0, 288);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&__src[136] = v4;
  *&__src[144] = v5;
  __src[152] = v6;
  *&__src[160] = v7;
  *&__src[168] = v8;
  *&__src[176] = v9;
  __src[184] = 0;
  *&__src[480] = 0;
  __src[488] = 0;
  *&__src[496] = 0u;
  __src[512] = 1;
  *&__src[520] = 0u;
  __src[536] = 1;
  *&__src[537] = 0;
  *&__src[544] = v10;
  *&__src[552] = v11;
  __src[560] = 0;
  EnvironmentValues.init()();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  memcpy((v12 + 32), __src, 0x231uLL);
  result = outlined destroy of IdentifiedDocumentGroupConfiguration(v16);
  *a2 = v12;
  return result;
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance CustomButtonMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  outlined copy of AppIntentExecutor?(v3, v2);

  return outlined copy of AppIntentExecutor?(v4, v5);
}

uint64_t CustomButtonMenuStyleWriter.styleBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v21[0] = *(a2 + 16);
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v22 = v12;
  v23 = v13;
  v24 = v15;
  v25 = v14;
  v16 = *(v4 + 24);
  outlined copy of AppIntentExecutor?(v12, v13);
  outlined copy of AppIntentExecutor?(v15, v14);
  v16(&v22, v21[0], v4);
  v17 = v24;
  v18 = v25;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v22, v23);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17, v18);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v6 + 8);
  v19(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedCustomButtonMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedCustomButtonMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t ButtonStyleAdaptorMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a3;
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v26 = v9;
  v27 = v7;
  v28 = v8;
  type metadata accessor for UIKitButtonStyleModifier(255, v7, v8, v10);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = specialized Environment.wrappedValue.getter(*(v4 + *(a2 + 36)), *(v4 + *(a2 + 36) + 8));
  *&v31 = v18;
  *(&v31 + 1) = v19;
  LOWORD(v32) = 0;
  BYTE2(v32) = v22;
  BYTE3(v32) = 2;
  *(&v32 + 1) = v20;
  v33 = v21;
  outlined copy of AppIntentExecutor?(v18, v19);
  outlined copy of AppIntentExecutor?(v20, v21);
  View.uikitButtonStyle<A>(_:)(v4, v26, v27, &protocol witness table for UIKitMenuButton<A, B>);
  v34[0] = v31;
  v34[1] = v32;
  v35 = v33;
  outlined destroy of UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>(v34);
  v30[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v30[1] = &protocol witness table for UIKitButtonStyleModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v30);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v12 + 8);
  v23(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v17, v11);
}

uint64_t outlined destroy of UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>(uint64_t a1)
{
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu()
{
  result = lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu;
  if (!lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedCustomButtonMenu, &type metadata for ResolvedCustomButtonMenu, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu;
  if (!lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedCustomButtonMenu, &type metadata for ResolvedCustomButtonMenu, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedCustomButtonMenu and conformance ResolvedCustomButtonMenu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>()
{
  result = lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>;
  if (!lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>)
  {
    type metadata accessor for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CustomButtonMenuStyleWriter<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic> and conformance CustomButtonMenuStyleWriter<A>);
  }

  return result;
}

void type metadata accessor for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>)
  {
    v2 = lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic();
    v4 = type metadata accessor for CustomButtonMenuStyleWriter(a1, &type metadata for ButtonMenuStyle.Automatic, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>);
    }
  }
}

double UIViewRepresentable._identifiedViewTree(in:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 2;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitSearchBarAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA21UIKitSearchBarAdaptorV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA21UIKitSearchBarAdaptorV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitSearchBarAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor, &protocol witness table for UIKitSearchBarAdaptor);
    type metadata accessor for UIKitSearchBarAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12UIKitStepper33_F1E9485F33A623EEFA647AA5EC4AE094LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitStepper>, &type metadata for UIKitStepper, &protocol witness table for UIKitStepper);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12SystemSlider33_8AA246B2E0E916EFA5AD706DCC8A0FE8LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<SystemSlider>, &type metadata for SystemSlider, &protocol witness table for SystemSlider);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA011UIKitPagingF033_8825076C2763A50452A210CBE1FA4AF0LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitPagingView>, &type metadata for UIKitPagingView, &protocol witness table for UIKitPagingView);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA22SystemSegmentedControl33_D74FE142C3C5A6C2CEA4987A69AEBD75LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<SystemSegmentedControl>, &type metadata for SystemSegmentedControl, &protocol witness table for SystemSegmentedControl);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA17UIKitPasteControlV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitPasteControl>, &type metadata for UIKitPasteControl, &protocol witness table for UIKitPasteControl);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA24PlatformTextFieldAdaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for PlatformTextFieldAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<PlatformTextFieldAdaptor>, type metadata accessor for PlatformTextFieldAdaptor, &protocol witness table for PlatformTextFieldAdaptor);
    type metadata accessor for PlatformTextFieldAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA04TextF7Adaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for TextViewAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<TextViewAdaptor>, type metadata accessor for TextViewAdaptor, &protocol witness table for TextViewAdaptor);
    type metadata accessor for TextViewAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA013UIKitCalendarfD033_1CD2D554D5FF79B0EC2610FA354BC034LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitCalendarViewRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitCalendarViewRepresentable>, type metadata accessor for UIKitCalendarViewRepresentable, &protocol witness table for UIKitCalendarViewRepresentable);
    type metadata accessor for UIKitCalendarViewRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA28UIKitSegmentedControlAdaptor33_62A8DBD3A37E684D521D6BC97A6F345ALLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitSegmentedControlAdaptor>, &type metadata for UIKitSegmentedControlAdaptor, &protocol witness table for UIKitSegmentedControlAdaptor);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA019LinearUIKitProgressF0V4BaseV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<LinearUIKitProgressView.Base>, &type metadata for LinearUIKitProgressView.Base, &protocol witness table for LinearUIKitProgressView.Base);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA26UIKitRichTextEditorAdaptorV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitRichTextEditorAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitRichTextEditorAdaptor>, type metadata accessor for UIKitRichTextEditorAdaptor, &protocol witness table for UIKitRichTextEditorAdaptor);
    type metadata accessor for UIKitRichTextEditorAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA23BackButtonActionableBar33_94927F8A97ECE008E6A618C158753C28LLV016KeyboardBackdropF0V_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<BackButtonActionableBar.KeyboardBackdropView>, &type metadata for BackButtonActionableBar.KeyboardBackdropView, &protocol witness table for BackButtonActionableBar.KeyboardBackdropView);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA19UIKitToolbarAdaptor33_5C36F4A49E2E2562B910FE6399D2C51ELLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitToolbarAdaptor>, &type metadata for UIKitToolbarAdaptor, &protocol witness table for UIKitToolbarAdaptor);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA09UIKitTextF7Adaptor33_A90AD0DD13E6C72FFE734B65FAFF6EFFLLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitTextViewAdaptor(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>, type metadata accessor for UIKitTextViewAdaptor, &protocol witness table for UIKitTextViewAdaptor);
    type metadata accessor for UIKitTextViewAdaptor(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA03KitD033_87E15EBB5C00F49DEF8C638A73559D92LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for KitRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<KitRepresentable>, type metadata accessor for KitRepresentable, &protocol witness table for KitRepresentable);
    type metadata accessor for KitRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA015UIKitDatePickerD033_796E60B90620AEB0B6972B2798FF4F42LLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (type metadata accessor for UIKitDatePickerRepresentable(0), (AGTypeID.isValueType.getter() & 1) == 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<UIKitDatePickerRepresentable>, type metadata accessor for UIKitDatePickerRepresentable, &protocol witness table for UIKitDatePickerRepresentable);
    type metadata accessor for UIKitDatePickerRepresentable(0);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA18BridgedColorPicker33_0B012DB3D42FBF9295A4AA29478C936CLLV_Tt2B5(uint64_t a1, uint64_t a2)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<BridgedColorPicker>, &type metadata for BridgedColorPicker, &protocol witness table for BridgedColorPicker);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

double UIViewRepresentableContext.transaction.getter()
{
  specialized ReferenceFileDocumentConfiguration.document.getter();

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitStepper(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12UIKitStepper33_F1E9485F33A623EEFA647AA5EC4AE094LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SystemSlider(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA12SystemSlider33_8AA246B2E0E916EFA5AD706DCC8A0FE8LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitPagingView(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA011UIKitPagingF033_8825076C2763A50452A210CBE1FA4AF0LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SystemSegmentedControl(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA22SystemSegmentedControl33_D74FE142C3C5A6C2CEA4987A69AEBD75LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitPasteControl(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA17UIKitPasteControlV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatformTextFieldAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA24PlatformTextFieldAdaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TextViewAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA04TextF7Adaptor33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitCalendarViewRepresentable(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA013UIKitCalendarfD033_1CD2D554D5FF79B0EC2610FA354BC034LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitSegmentedControlAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA28UIKitSegmentedControlAdaptor33_62A8DBD3A37E684D521D6BC97A6F345ALLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LinearUIKitProgressView.Base(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA019LinearUIKitProgressF0V4BaseV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitRichTextEditorAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA26UIKitRichTextEditorAdaptorV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BackButtonActionableBar.KeyboardBackdropView(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA23BackButtonActionableBar33_94927F8A97ECE008E6A618C158753C28LLV016KeyboardBackdropF0V_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitToolbarAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA19UIKitToolbarAdaptor33_5C36F4A49E2E2562B910FE6399D2C51ELLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitTextViewAdaptor(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA09UIKitTextF7Adaptor33_A90AD0DD13E6C72FFE734B65FAFF6EFFLLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance KitRepresentable(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA03KitD033_87E15EBB5C00F49DEF8C638A73559D92LLV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitDatePickerRepresentable(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA015UIKitDatePickerD033_796E60B90620AEB0B6972B2798FF4F42LLV_Tt2B5(v2, v6);
}

double key path getter for UIViewRepresentableContext.transaction : <A>UIViewRepresentableContext<A>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for UIViewRepresentableContext(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = specialized ReferenceFileDocumentConfiguration.document.getter();

  return result;
}

void UIViewRepresentableContext.animate(changes:completion:)(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{

  v8 = Transaction.animation.getter();

  if (!v8)
  {
    goto LABEL_4;
  }

  v10 = Transaction.disablesAnimations.getter();

  if ((v10 & 1) == 0)
  {
    v22[1] = v22;
    MEMORY[0x1EEE9AC00](v11);
    v21[2] = a1;
    v21[3] = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = -1;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for thunk for @callee_guaranteed () -> (@error @owned Error);
    *(v15 + 24) = v21;
    type metadata accessor for UIView();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = _sxs5Error_pIgrzo_xsAA_pIegrzo_lTRyt_Tg5TA_0;
    v16[4] = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = _sSo6UIViewC7SwiftUIE7animate_7changes10completionyAC9AnimationV_yyXEyycSgtFZySb_SbtcfU_TA_0;
    *(v17 + 24) = v13;

    outlined copy of AppIntentExecutor?(a3, a4);
    static UIView.animate(bridgedAnimation:animations:completion:)();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v19 = *(v14 + 24);
      if (v19 != 255)
      {
        if ((v19 & 1) == 0)
        {

          return;
        }

LABEL_13:
        v23 = *(v14 + 16);
        v20 = v23;
        type metadata accessor for Error();
        swift_willThrowTypedImpl();
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  v12 = a1(v9);
  if (a3)
  {
    a3(v12);
  }
}

uint64_t PlatformViewRepresentableAdaptor._identifiedViewTree(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + 72);
  a3[3] = &type metadata for _IdentifiedViewTree;
  *a3 = swift_allocObject();
  return v6(a1, *(a2 + 16), v5);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BridgedColorPicker(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA18BridgedColorPicker33_0B012DB3D42FBF9295A4AA29478C936CLLV_Tt2B5(v2, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for UIViewRepresentableContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-34 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = AssociatedTypeWitness;
    v12 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v12;
    v13 = a2[2];
    v14 = a2[3];
    v15 = *(a2 + 32);

    outlined copy of RepresentableContextValues.EnvironmentStorage(v13, v14, v15);
    *(a1 + 16) = v13;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    (*(v6 + 16))((a1 + v7 + 33) & ~v7, (a2 + v7 + 33) & ~v7, v11);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16));
  }

  return a1;
}

uint64_t assignWithCopy for UIViewRepresentableContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v8, v9, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 24))((*(v12 + 80) + 33 + a1) & ~*(v12 + 80), (a2 + *(v12 + 80) + 33) & ~*(v12 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for UIViewRepresentableContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 32))((*(v7 + 80) + 33 + a1) & ~*(v7 + 80), (*(v7 + 80) + 33 + a2) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for UIViewRepresentableContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 40))((*(v10 + 80) + 33 + a1) & ~*(v10 + 80), (*(v10 + 80) + 33 + a2) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIViewRepresentableContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v11 = ((v9 + 33) & ~v9) + v10;
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_7;
    }

    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 >= 2)
    {
LABEL_7:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

LABEL_15:
      v16 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v16 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      v18 = v8 + (v11 | v16);
      return (v18 + 1);
    }
  }

LABEL_26:
  if (v7 <= 0x7FFFFFFE)
  {
    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v19 = *(v6 + 48);

  return v19((a1 + v9 + 33) & ~v9);
}

void storeEnumTagSinglePayload for UIViewRepresentableContext(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 33) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
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

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_46:
              if (v12 == 2)
              {
                *(a1 + v11) = v14;
              }

              else
              {
                *(a1 + v11) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v12)
    {
      *(a1 + v11) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v11) = 0;
  }

  else if (v12)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 > 0x7FFFFFFE)
  {
    v18 = *(v7 + 56);

    v18((a1 + v9 + 33) & ~v9, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 32) = 0;
    *a1 = (a2 - 0x7FFFFFFF);
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2;
  }
}

void type metadata accessor for PlatformViewRepresentableAdaptor<UIKitTextViewAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for PlatformViewRepresentableAdaptor(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL SectionBody.value.getter(uint64_t a1)
{
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  result = 0;
  if (v2)
  {
    v3 = *(Value + 16);
    v6 = *Value;
    v7 = v2;
    v8 = v3 & 1;
    type metadata accessor for _GraphValue<SectionContainer>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v5);
    if (v5 != 1)
    {
      return 1;
    }
  }

  return result;
}

BOOL protocol witness for Rule.value.getter in conformance SectionBody@<W0>(_BYTE *a1@<X8>)
{
  result = SectionBody.value.getter(*v1);
  *a1 = result;
  return result;
}

double Drag.Payload.resolvedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12 != a3)
  {
    static Log.dragAndDrop.getter();
    v13 = type metadata accessor for Logger();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      outlined destroy of Logger?(v11);
    }

    else
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = v40;
        *v27 = 136315650;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000018CD5CB20, &v41);
        *(v27 + 12) = 2080;
        v28 = _typeName(_:qualified:)();
        v30 = a4;
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v41);

        *(v27 + 14) = v31;
        *(v27 + 22) = 2080;
        v32 = _typeName(_:qualified:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

        *(v27 + 24) = v34;
        a4 = v30;
        _os_log_impl(&dword_18BD4A000, v25, v26, "%s: type mismatch: expected %s, got %s. Returning empty payload for drag.", v27, 0x20u);
        v35 = v40;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v35, -1, -1);
        MEMORY[0x18D0110E0](v27, -1, -1);
      }

      (*(v14 + 8))(v11, v13);
    }

    goto LABEL_14;
  }

  if (!*(v4 + 24) || (type metadata accessor for DraggingItem(0, *(a2 + 16), *(a2 + 24), v9), type metadata accessor for DraggingItem(0, a3, a4, v16), !_arrayConditionalCast<A, B>(_:)()))
  {
    v19 = *v4;
    v18 = *(v4 + 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 16) == 1)
      {

        if (!v19(v20))
        {
          outlined consume of Drag.Payload<A>.Storage<A>(v19, v18, 1);
LABEL_22:

          *(v4 + 24) = 0;
LABEL_14:
          type metadata accessor for DraggingItem(0, a3, a4, v15);
          static Array._allocateUninitialized(_:)();
          return result;
        }

        type metadata accessor for DraggingItem(0, v12, *(a2 + 24), v21);
        type metadata accessor for DraggingItem(0, a3, a4, v22);
        v23 = _arrayConditionalCast<A, B>(_:)();
        outlined consume of Drag.Payload<A>.Storage<A>(v19, v18, 1);

        if (!v23)
        {
          goto LABEL_22;
        }
      }

      else
      {
        type metadata accessor for DraggingItem(0, a3, a4, v9);
        static Array._allocateUninitialized(_:)();
      }
    }

    else
    {
      type metadata accessor for DraggingItem(0, v12, *(a2 + 24), v9);
      type metadata accessor for DraggingItem(0, a3, a4, v36);

      v37 = _arrayConditionalCast<A, B>(_:)();
      outlined consume of Drag.Payload<A>.Storage<A>(v19, v18, 0);
      if (!v37)
      {
        goto LABEL_22;
      }
    }

    type metadata accessor for DraggingItem(0, a3, a4, v24);
    type metadata accessor for DraggingItem(0, v12, *(a2 + 24), v38);
    v39 = _arrayConditionalCast<A, B>(_:)();

    *(v4 + 24) = v39;
    if (v39)
    {

      return result;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t DragPayloadBox.resolvedItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  swift_beginAccess();
  v7 = (*(*(v6 + 104) + 48))(a2, a2, a3, *(v6 + 96));
  swift_endAccess();
  return v7;
}

double outlined copy of Drag.Payload<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

uint64_t destroy for Drag.Payload(uint64_t a1)
{
  outlined consume of Drag.Payload<A>.Storage<A>(*a1, *(a1 + 8), *(a1 + 16));
}

double outlined consume of Drag.Payload<A>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of Drag.Payload<A>.Storage<A>(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for Drag.Payload(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of Drag.Payload<A>.Storage<A>(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Drag.Payload<A>.Storage<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of Drag.Payload<A>.Storage<A>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for Drag.Payload.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of Drag.Payload<A>.Storage<A>(v4, v5, v6);
  return a1;
}

uint64_t static TupleTableRowContent._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a4;
  v42 = a6;
  v59 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[7];
  v55 = a2[6];
  v56 = v10;
  v57 = a2[8];
  v58 = *(a2 + 18);
  v11 = a2[3];
  v51 = a2[2];
  v52 = v11;
  v12 = a2[5];
  v53 = a2[4];
  v54 = v12;
  v13 = a2[1];
  v49 = *a2;
  v50 = v13;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a4, v47);
  *&v47[104] = v55;
  *&v47[120] = v56;
  *&v47[136] = v57;
  *&v47[40] = v51;
  *&v47[56] = v52;
  *&v47[72] = v53;
  *&v47[88] = v54;
  *&v47[8] = v49;
  v14 = *v47;
  *&v47[24] = v50;
  *v47 = v9;
  *&v47[152] = v58;
  *&v48 = 0;
  *(&v48 + 1) = MEMORY[0x1E69E7CC0];
  v15 = *(v14 + 16);
  v43 = a3;
  if (v15)
  {
    outlined init with copy of _TableRowInputs(&v49, v46);
    v16 = (v14 + 40);
    do
    {
      v17 = *v16;
      v16 = (v16 + 24);
      v44 = v17;
      *&v48 = AGTupleElementOffset();
      v46[0] = v17;
      List = type metadata accessor for TupleTableRowContent.MakeList(0, a3, v7, a5);
      TypeConformance<>.visitType<A>(visitor:)(v47, List, &protocol witness table for TupleTableRowContent<A, B>.MakeList);
      --v15;
    }

    while (v15);

    v19 = *(&v48 + 1);
  }

  else
  {
    outlined init with copy of _TableRowInputs(&v49, v46);

    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v41 = v7;
    *&v44 = a5;
    v45 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v22 = 0;
    v21 = v45;
    v23 = (v19 + 40);
    do
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v24 = v20;
      v25 = *v23;
      *&v46[0] = *(v23 - 1);
      DWORD2(v46[0]) = v25;
      v26 = PreferencesOutputs.subscript.getter();
      if ((v26 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

      v27 = v26;
      v45 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v21 = v45;
      }

      ++v22;
      *(v21 + 16) = v29 + 1;
      *(v21 + 4 * v29 + 32) = v27;
      v23 += 4;
      v20 = v24;
    }

    while (v24 != v22);

    a5 = v44;
    v7 = v41;
  }

  v30 = PreferencesOutputs.init()();
  *&v46[0] = v21;
  MEMORY[0x1EEE9AC00](v30);
  v31 = v43;
  v39 = type metadata accessor for TupleTableRowContent.MergeLists(0, v43, v7, a5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TupleTableRowContent<A, B>.MergeLists, v39);
  type metadata accessor for Attribute<TableRowList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v46, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, &v38, v39, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);

  *&v46[0] = *(&v57 + 1);
  DWORD2(v46[0]) = v58;
  MEMORY[0x1EEE9AC00](v34);
  LODWORD(v39) = v35;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  v46[8] = *&v47[128];
  v46[9] = *&v47[144];
  v46[10] = v48;
  v46[4] = *&v47[64];
  v46[5] = *&v47[80];
  v46[6] = *&v47[96];
  v46[7] = *&v47[112];
  v46[0] = *v47;
  v46[1] = *&v47[16];
  v46[2] = *&v47[32];
  v46[3] = *&v47[48];
  v36 = type metadata accessor for TupleTableRowContent.MakeList(0, v31, v7, a5);
  return (*(*(v36 - 8) + 8))(v46, v36);
}

uint64_t static TupleTableRowContent._tableRowCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1[7];
  v37 = a1[6];
  v38 = v7;
  v39 = a1[8];
  v40 = *(a1 + 18);
  v8 = a1[3];
  v33 = a1[2];
  v34 = v8;
  v9 = a1[5];
  v35 = a1[4];
  v36 = v9;
  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a3, &v20);
  v11 = v20;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v20 = v31;
  v21 = v32;
  v29 = v40;
  v30 = 0;
  v12 = *(v11 + 16);
  if (v12)
  {
    outlined init with copy of _TableRowInputs(&v31, v18);
    v13 = type metadata accessor for TupleTableRowContent.CountRows(0, a2, a3, a4);
    v14 = 40;
    do
    {
      v18[0] = *(v11 + v14);
      TypeConformance<>.visitType<A>(visitor:)(&v20, v13, &protocol witness table for TupleTableRowContent<A, B>.CountRows);
      v14 += 24;
      --v12;
    }

    while (v12);

    v15 = *(&v29 + 1);
  }

  else
  {
    outlined init with copy of _TableRowInputs(&v31, v18);

    v15 = 0;
  }

  v18[8] = v28;
  v18[9] = v29;
  v19 = v30;
  v18[4] = v24;
  v18[5] = v25;
  v18[6] = v26;
  v18[7] = v27;
  v18[0] = v20;
  v18[1] = v21;
  v18[2] = v22;
  v18[3] = v23;
  v16 = type metadata accessor for TupleTableRowContent.CountRows(0, a2, a3, a4);
  (*(*(v16 - 8) + 8))(v18, v16);
  return v15;
}

uint64_t static TupleTableRowContent._containsOutlineSymbol(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1[7];
  v37 = a1[6];
  v38 = v7;
  v39 = a1[8];
  v40 = *(a1 + 18);
  v8 = a1[3];
  v33 = a1[2];
  v34 = v8;
  v9 = a1[5];
  v35 = a1[4];
  v36 = v9;
  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(a3, &v22);
  v11 = v22;
  v28 = v37;
  v29 = v38;
  *v30 = v39;
  *&v30[16] = v40;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v22 = v31;
  v23 = v32;
  v30[24] = 0;
  outlined init with copy of _TableRowInputs(&v31, v20);
  v12 = 0;
  v13 = 40;
  do
  {
    v14 = *(v11 + 16);
    if (v12 == v14)
    {
      break;
    }

    if (v12 >= v14)
    {
      __break(1u);
    }

    ++v12;
    v15 = v13 + 24;
    v20[0] = *(v11 + v13);
    v16 = type metadata accessor for TupleTableRowContent.CheckOutline(0, a2, a3, a4);
    TypeConformance<>.visitType<A>(visitor:)(&v22, v16, &protocol witness table for TupleTableRowContent<A, B>.CheckOutline);
    v13 = v15;
  }

  while (v30[24] != 1);

  v17 = v30[24];
  v20[6] = v28;
  v20[7] = v29;
  v21[0] = *v30;
  *(v21 + 9) = *&v30[9];
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v20[5] = v27;
  v20[0] = v22;
  v20[1] = v23;
  v18 = type metadata accessor for TupleTableRowContent.CheckOutline(0, a2, a3, a4);
  (*(*(v18 - 8) + 8))(v20, v18);
  return v17;
}

char *TupleTableRowContent.MakeList.visit<A>(type:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleTableRowContent(255, a2[2], a2[3], a2[4]);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 120);
  v37[6] = *(v4 + 104);
  v37[7] = v8;
  v37[8] = *(v4 + 136);
  v38 = *(v4 + 152);
  v9 = *(v4 + 56);
  v37[2] = *(v4 + 40);
  v37[3] = v9;
  v10 = *(v4 + 88);
  v37[4] = *(v4 + 72);
  v37[5] = v10;
  v11 = *(v4 + 24);
  v37[0] = *(v4 + 8);
  v37[1] = v11;
  v12 = *(v4 + 120);
  v30 = *(v4 + 104);
  v31 = v12;
  v32 = *(v4 + 136);
  v33 = *(v4 + 152);
  v13 = *(v4 + 56);
  v26 = *(v4 + 40);
  v27 = v13;
  v14 = *(v4 + 88);
  v28 = *(v4 + 72);
  v29 = v14;
  v15 = *(v4 + 24);
  v24 = *(v4 + 8);
  v25 = v15;
  v16 = *(a4 + 48);
  outlined init with copy of _TableRowInputs(v37, v39);
  v16(&v35, v34, &v24, a3, a4);
  v39[6] = v30;
  v39[7] = v31;
  v39[8] = v32;
  v40 = v33;
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v39[5] = v29;
  v39[0] = v24;
  v39[1] = v25;
  outlined destroy of _TableRowInputs(v39);
  v17 = v35;
  v18 = v36;
  v19 = *(v4 + 168);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v22 + 1;
  v23 = &v19[16 * v22];
  *(v23 + 4) = v17;
  *(v23 + 10) = v18;
  *(v5 + 168) = v19;
  return result;
}

void TupleTableRowContent.CountRows.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 160) & 1) != 0 || (v7 = *(v5 + 112), v8 = *(v5 + 80), v36 = *(v5 + 96), v37 = v7, v9 = *(v5 + 112), v38 = *(v5 + 128), v10 = *(v5 + 48), v11 = *(v5 + 16), v32 = *(v5 + 32), v33 = v10, v12 = *(v5 + 48), v13 = *(v5 + 80), v34 = *(v5 + 64), v35 = v13, v14 = *(v5 + 16), v31[0] = *v5, v31[1] = v14, v27 = v36, v28 = v9, v29 = *(v5 + 128), v23 = v32, v24 = v12, v25 = v34, v26 = v8, v15 = *(v5 + 152), v39 = *(v5 + 144), v30 = *(v5 + 144), v21 = v31[0], v22 = v11, v16 = *(a4 + 56), v17 = a4, outlined init with copy of _TableRowInputs(v31, v20), v18 = v16(&v21, a3, v17), LOBYTE(v17) = v19, v40[6] = v27, v40[7] = v28, v40[8] = v29, v41 = v30, v40[2] = v23, v40[3] = v24, v40[4] = v25, v40[5] = v26, v40[0] = v21, v40[1] = v22, outlined destroy of _TableRowInputs(v40), (v17))
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 1;
  }

  else if (__OFADD__(v15, v18))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 152) = v15 + v18;
    *(v5 + 160) = 0;
  }
}

void TupleTableRowContent.CheckOutline.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 152))
  {
    v6 = 1;
  }

  else
  {
    v8 = *(v5 + 112);
    v9 = *(v5 + 80);
    v33 = *(v5 + 96);
    v34 = v8;
    v10 = *(v5 + 112);
    v35 = *(v5 + 128);
    v11 = *(v5 + 48);
    v12 = *(v5 + 16);
    v29 = *(v5 + 32);
    v30 = v11;
    v13 = *(v5 + 48);
    v14 = *(v5 + 80);
    v31 = *(v5 + 64);
    v32 = v14;
    v15 = *(v5 + 16);
    v28[0] = *v5;
    v28[1] = v15;
    v24 = v33;
    v25 = v10;
    v26 = *(v5 + 128);
    v20 = v29;
    v21 = v13;
    v22 = v31;
    v23 = v9;
    v36 = *(v5 + 144);
    v27 = *(v5 + 144);
    v18 = v28[0];
    v19 = v12;
    v16 = *(a4 + 64);
    outlined init with copy of _TableRowInputs(v28, v37);
    v6 = v16(&v18, a3, a4);
    v37[6] = v24;
    v37[7] = v25;
    v37[8] = v26;
    v38 = v27;
    v37[2] = v20;
    v37[3] = v21;
    v37[4] = v22;
    v37[5] = v23;
    v37[0] = v18;
    v37[1] = v19;
    outlined destroy of _TableRowInputs(v37);
  }

  *(v5 + 152) = v6 & 1;
}

uint64_t TupleTableRowContent.MergeLists.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = a1 + 32;
    do
    {
      v6 += 4;
      Value = AGGraphGetValue();
      outlined init with copy of TableRowList(Value, &v15);
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 40 * v9;
      v11 = v15;
      v12 = v16;
      *(v10 + 64) = v17;
      *(v10 + 32) = v11;
      *(v10 + 48) = v12;
      --v3;
    }

    while (v3);
  }

  *(&v16 + 1) = &type metadata for MergedTableRowGenerator;
  v17 = &protocol witness table for MergedTableRowGenerator;
  *&v15 = v4;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, a2);
}

uint64_t static Group<A>._makeRows(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v7;
  v14[8] = *(a2 + 128);
  v15 = *(a2 + 144);
  v8 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v8;
  v9 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v9;
  v10 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v10;
  v13 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 48))(v12, v14, a3, a4);
}

uint64_t static Group<A>._tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 56))(v8);
}

uint64_t static Group<A>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 64))(v8) & 1;
}

void type metadata accessor for Attribute<TableRowList>()
{
  if (!lazy cache variable for type metadata for Attribute<TableRowList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<TableRowList>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for TupleTableRowContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TupleTableRowContent<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t *a2)
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
  *(a1 + 72) = *(a2 + 9);
  v4 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = a2[15];
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 136) = a2[17];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t *a2)
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
  *(a1 + 76) = *(a2 + 19);
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 84) = *(a2 + 21);
  *(a1 + 88) = a2[11];

  *(a1 + 96) = a2[12];

  *(a1 + 104) = *(a2 + 26);
  *(a1 + 108) = *(a2 + 27);
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 116) = *(a2 + 29);
  *(a1 + 120) = *(a2 + 30);
  *(a1 + 124) = *(a2 + 31);
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 136) = a2[17];

  *(a1 + 144) = *(a2 + 36);
  *(a1 + 148) = *(a2 + 37);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for TupleTableRowContent.CheckOutline(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t storeEnumTagSinglePayload for TupleTableRowContent.CheckOutline(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TupleTableRowContent.CountRows(uint64_t a1, uint64_t *a2)
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
  *(a1 + 72) = *(a2 + 9);
  v4 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = a2[15];
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 136) = a2[17];
  *(a1 + 144) = a2[18];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = a2[19];

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.CountRows(uint64_t a1, uint64_t *a2)
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
  *(a1 + 76) = *(a2 + 19);
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 84) = *(a2 + 21);
  *(a1 + 88) = a2[11];

  *(a1 + 96) = a2[12];

  *(a1 + 104) = *(a2 + 26);
  *(a1 + 108) = *(a2 + 27);
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 116) = *(a2 + 29);
  *(a1 + 120) = *(a2 + 30);
  *(a1 + 124) = *(a2 + 31);
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 136) = a2[17];

  *(a1 + 144) = *(a2 + 36);
  *(a1 + 148) = *(a2 + 37);
  v4 = a2[19];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v4;
  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.CountRows(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for TupleTableRowContent.CountRows(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t storeEnumTagSinglePayload for TupleTableRowContent.CountRows(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TupleTableRowContent.MakeList()
{
}

uint64_t initializeWithCopy for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v5 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v5;

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v4 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v4;

  return a1;
}

uint64_t type metadata completion function for ItemNavigationLinkModifier(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemNavigationLinkModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 16) & ~v8;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  v12 = v10 + v11;
  v13 = ((v10 + v11 + (v9 & (v7 + 8)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v7 & 0x100000;
  if (v8 > 7 || v14 != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = (v17 + (v9 & (v8 + 16)));
  }

  else
  {
    v29 = a2 + 15;
    *a1 = *a2;
    v19 = a1 + 15;
    v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = *((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    v22 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v21 & 0xFFFFFFFFFFFFFFF8) = *(v20 & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 8);
    v24 = *(v5 + 48);

    if (v24(v22, 1, v4))
    {
      memcpy(v23, v22, v11);
    }

    else
    {
      (*(v6 + 16))(v23, v22, v4);
      (*(v6 + 56))(v23, 0, 1, v4);
    }

    v18 = a1;
    v25 = (((v29 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25[1];
    v27 = (((v19 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v27[1] = v26;
  }

  return v18;
}

double destroy for ItemNavigationLinkModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (a1 + (v4 | 7) + 8) & ~(v4 | 7);

  v6 = v4 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v3 + 48))(v6 & ~v4, 1, v2))
  {
    (*(v3 + 8))(v6 & ~v4, v2);
  }

  return result;
}

void *initializeWithCopy for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v27 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v27;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = v10 + v7 + 8;
  v13 = v11 + v7 + 8;
  v14 = *(v5 + 48);

  if (v14(v13 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = *(v6 + 64);
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v12 & ~v7), (v13 & ~v7), v17);
  }

  else
  {
    (*(v6 + 16))(v12 & ~v7, v13 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v12 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  v21 = v9 + v20 + 7;
  v22 = ((v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v22;
  v23 = v22[1];
  v25 = (v21 & 0xFFFFFFFFFFFFFFF8);
  *v25 = v24;
  v25[1] = v23;

  return a1;
}

void *assignWithCopy for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v23 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v23;

  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);

  v10 = v9 + v6 + 8;
  v11 = v6 + 8 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v5 + 48);
  v13 = v12(v10 & ~v6, 1, v4);
  v14 = v12(v11 & ~v6, 1, v4);
  if (v13)
  {
    if (v14)
    {
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
LABEL_6:
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 + 1;
      }

      memcpy((v10 & ~v6), (v11 & ~v6), v17);
      goto LABEL_12;
    }

    (*(v5 + 16))(v10 & ~v6, v11 & ~v6, v4);
    (*(v5 + 56))(v10 & ~v6, 0, 1, v4);
  }

  else
  {
    if (v14)
    {
      (*(v5 + 8))(v10 & ~v6, v4);
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
      goto LABEL_6;
    }

    (*(v5 + 24))(v10 & ~v6, v11 & ~v6, v4);
  }

LABEL_12:
  v18 = *(v5 + 64) + ((v6 + 16) & ~v6);
  if (!*(v5 + 84))
  {
    ++v18;
  }

  v19 = ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

void *initializeWithTake for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;
  if ((*(v5 + 48))(v14 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v13 & ~v7), (v14 & ~v7), v17);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v7, v14 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v13 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  *((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v20 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v20;

  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = v9 + v6 + 8;
  v12 = v10 + v6 + 8;
  v13 = *(v5 + 48);
  LODWORD(v10) = v13(v11 & ~v6, 1, v4);
  v14 = v13(v12 & ~v6, 1, v4);
  if (v10)
  {
    if (v14)
    {
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
LABEL_6:
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 + 1;
      }

      memcpy((v11 & ~v6), (v12 & ~v6), v17);
      goto LABEL_12;
    }

    (*(v5 + 32))(v11 & ~v6, v12 & ~v6, v4);
    (*(v5 + 56))(v11 & ~v6, 0, 1, v4);
  }

  else
  {
    if (v14)
    {
      (*(v5 + 8))(v11 & ~v6, v4);
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
      goto LABEL_6;
    }

    (*(v5 + 40))(v11 & ~v6, v12 & ~v6, v4);
  }

LABEL_12:
  v18 = *(v5 + 64) + ((v6 + 16) & ~v6);
  if (!*(v5 + 84))
  {
    ++v18;
  }

  *((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ItemNavigationLinkModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_34;
  }

  v12 = ((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_34:
    v21 = ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v23 = (*(v5 + 48))((v21 + v9 + 8) & ~v9);
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for ItemNavigationLinkModifier(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  if (!v7)
  {
    ++v10;
  }

  v12 = ((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v13 = a3 - v11;
    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
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
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v11 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v12) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v5)
  {
    goto LABEL_38;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v19 = ((((a1 + (v9 | 7) + 8) & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v9 + 8) & ~v9);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v9 + 8) & ~v9, v26);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v8 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t ItemNavigationLinkModifier.item.getter()
{
  type metadata accessor for Optional();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v0);
}

double ItemNavigationLinkModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  ItemNavigationLinkModifier.base(_:)(a1, a2);
  strcpy(v18, "navigationLink");
  v18[15] = -18;
  v3 = Namespace.wrappedValue.getter();
  swift_getWitnessTable(protocol conformance descriptor for ItemNavigationLinkModifier<A, B>, a2);
  v4 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>, &type metadata for NavigationDestinationsKey, &protocol witness table for NavigationDestinationsKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v5 = type metadata accessor for ModifiedContent();
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4);
  v17[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v6 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v17);
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69E6168];
  View.accessibilityLinkedGroup<A>(id:in:)(v18, v3, v5, MEMORY[0x1E69E6158], WitnessTable);

  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, v8, v9, type metadata accessor for RelationshipModifier);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = WitnessTable;
  v12[1] = &protocol witness table for RelationshipModifier<A>;
  swift_getWitnessTable(v6, v10, v12);
  static ViewBuilder.buildExpression<A>(_:)();

  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

double ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a2, v5);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v10;
  (*(v3 + 32))(v9 + v8, v6, a2);
  swift_getWitnessTable(protocol conformance descriptor for ItemNavigationLinkModifier<A, B>, a2);
  v11 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v11);
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationDestinationsKey, partial apply for closure #1 in ItemNavigationLinkModifier.base(_:), v9, v11, &type metadata for NavigationDestinationsKey, WitnessTable, &protocol witness table for NavigationDestinationsKey);

  return result;
}

unint64_t closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a2;
  v41 = a1;
  *&v43 = a4;
  *(&v43 + 1) = a5;
  v36 = a6;
  v44 = a6;
  v45 = a7;
  v38 = a7;
  v10 = type metadata accessor for ItemNavigationLinkModifier(0, &v43);
  v35 = *(v10 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v37 = a5;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemNavigationLinkModifier.item.getter();
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v23 = Namespace.wrappedValue.getter();
    *&v43 = Namespace.wrappedValue.getter();
    *(&v43 + 1) = v40;
    v46 = 1;

    return specialized Dictionary.subscript.setter(&v43, v23);
  }

  else
  {
    (*(v19 + 32))(v22, v18, a4);
    v33 = Namespace.wrappedValue.getter();
    v32 = Namespace.wrappedValue.getter();
    (*(a3 + *(v10 + 56)))(v22);
    v42 = xmmword_18CD6A6D0;
    v25 = v35;
    (*(v35 + 16))(v12, a3, v10);
    v26 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v27 = swift_allocObject();
    v28 = v36;
    v29 = v37;
    *(v27 + 2) = a4;
    *(v27 + 3) = v29;
    v30 = v38;
    *(v27 + 4) = v28;
    *(v27 + 5) = v30;
    (*(v25 + 32))(&v27[v26], v12, v10);
    v31 = v40;

    LOBYTE(v43) = 1;
    NavigationDestinationContent.init<A>(id:content:isDetail:transaction:environment:updateSeed:onDismiss:)(v32, v39, 1, v31, &v42, partial apply for closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:), v27, &v43, v29, v30);
    v46 = 0;
    specialized Dictionary.subscript.setter(&v43, v33);
    return (*(v19 + 8))(v22, a4);
  }
}

uint64_t closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(*(a2 - 8) + 56))(v15 - v12, 1, 1, a2, v11);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for ItemNavigationLinkModifier(0, v15);
  specialized ItemNavigationLinkModifier.item.setter(v13);
  return (*(v10 + 8))(v13, v9);
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t partial apply for closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ItemNavigationLinkModifier(0, v12) - 8);
  v10 = (v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)));

  return closure #1 in ItemNavigationLinkModifier.base(_:)(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for ItemNavigationLinkModifier(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)(v6, v1, v2, v3, v4);
}

uint64_t specialized ItemNavigationLinkModifier.item.setter(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return specialized Binding.wrappedValue.setter(a1);
}

uint64_t TitleOnlyLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t protocol witness for LabelStyle.makeBody(configuration:) in conformance TitleOnlyLabelStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for LabelStyleConfiguration.Title;
    v5[1] = lazy protocol witness table accessor for type _ContainerValueWritingModifier<LabelItemRole?> and conformance _ContainerValueWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)
  {
    type metadata accessor for _ContainerValueWritingModifier<LabelItemRole?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>);
    }
  }
}

uint64_t initializeWithCopy for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  v6 = v4;
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void PlatformItemList.Item.ConfigurationIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1 & 1);
  Hasher._combine(_:)(*(v1 + 1) & 1);
  Hasher._combine(_:)(*(v1 + 2) & 1);
  if (*(v1 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v3 = *(v1 + 24);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    v5 = *(v1 + 32);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v3 = *(v1 + 24);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v4 = v3;
  NSObject.hash(into:)();

  v5 = *(v2 + 32);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  v6 = v5;
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlatformItemList.Item.ConfigurationIdentifier()
{
  Hasher.init(_seed:)();
  PlatformItemList.Item.ConfigurationIdentifier.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  PlatformItemList.Item.ConfigurationIdentifier.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static PlatformItemList.Item.ConfigurationIdentifier.== infix(_:_:)(v5, v7);
}

unint64_t lazy protocol witness table accessor for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier;
  if (!lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemList.Item.ConfigurationIdentifier, &type metadata for PlatformItemList.Item.ConfigurationIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier);
  }

  return result;
}

BOOL specialized static PlatformItemList.Item.ConfigurationIdentifier.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = *(a2 + 2);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 3);
  v10 = *(a2 + 3);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a1;
    v12 = a2;
    type metadata accessor for NSAttributedString();
    v13 = v10;
    v14 = v9;
    v15 = static NSObject.== infix(_:_:)();

    a1 = v11;
    a2 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = *(a2 + 4);
  if (v16)
  {
    if (v17)
    {
      type metadata accessor for NSAttributedString();
      v18 = v17;
      v19 = v16;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v17;
}

uint64_t View.scrollPosition(_:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of Binding<ScrollPosition>(a1, v12);
  v12[13] = a2;
  v12[14] = a3;
  v13 = a4 & 1;
  MEMORY[0x18D00A570](v12, a5, MEMORY[0x1E6980958], a6);
  return outlined destroy of ScrollPositionBindingModifier(v12);
}

uint64_t View.scrollPosition<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  (*(v9 + 16))(v21 - v11, a1, v8, v10);
  static UnitPoint.topLeading.getter();
  v14 = v13;
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v21[0] = v14;
  v21[1] = v16;
  v22 = 0;
  v17 = type metadata accessor for ValueToScrollPosition();
  swift_getWitnessTable(MEMORY[0x1E697FD20], v17);
  Binding.projecting<A>(_:)();
  outlined init with copy of Binding<ScrollPosition>(v26, v21);
  static UnitPoint.topLeading.getter();
  v23 = v18;
  v24 = v19;
  v25 = 0;
  MEMORY[0x18D00A570](v21, a2, MEMORY[0x1E6980958], a4);
  outlined destroy of ScrollPositionBindingModifier(v21);
  return outlined destroy of Binding<ScrollPosition>(v26);
}

uint64_t View.scrollPosition<A>(initialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15[-1] - v11, a1, v9, v10);
  v14 = a5;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v9, &v14);
  ScrollPosition.init<A>(id:anchor:)();
  MEMORY[0x18D00A570](v15, a2, MEMORY[0x1E697F7F8], a4);
  return outlined destroy of ScrollValueModifier(v15);
}

uint64_t View.tabViewCustomization(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TabViewCustomizationModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<TabViewCustomization>?(a1, v8);
  MEMORY[0x18D00A570](v8, a2, v6, a3);
  return outlined destroy of TabViewCustomizationModifier(v8, type metadata accessor for TabViewCustomizationModifier);
}

uint64_t type metadata accessor for TabViewCustomizationModifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for TabViewCustomizationModifier;
  if (!type metadata singleton initialization cache for TabViewCustomizationModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabViewCustomizationModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 1, v7))
  {
    v13 = a2[1];
    *a1 = *a2;
    a1[1] = v13;
    v14 = *(v8 + 32);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 16);

    v18(v15, v16, v17);
    v19 = type metadata accessor for TabViewCustomization(0);
    *&v15[*(v19 + 20)] = *&v16[*(v19 + 20)];
    *&v15[*(v19 + 24)] = *&v16[*(v19 + 24)];
    v20 = *(v9 + 56);

    v20(a1, 0, 1, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TabViewCustomizationModifier(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v3 = v2;
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {

    v5 = a1 + *(v3 + 32);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v5, v6);
    type metadata accessor for TabViewCustomization(0);
  }

  return result;
}

uint64_t *initializeWithCopy for TabViewCustomizationModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(v5 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(v12, v13, v14);
    v16 = type metadata accessor for TabViewCustomization(0);
    *&v12[*(v16 + 20)] = *&v13[*(v16 + 20)];
    *&v12[*(v16 + 24)] = *&v13[*(v16 + 24)];
    v17 = *(v6 + 56);

    v17(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t *assignWithCopy for TabViewCustomizationModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      v10 = *(v5 + 32);
      v11 = a1 + v10;
      v12 = a2 + v10;
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 16);

      v14(v11, v12, v13);
      v15 = type metadata accessor for TabViewCustomization(0);
      *&v11[*(v15 + 20)] = *&v12[*(v15 + 20)];
      *&v11[*(v15 + 24)] = *&v12[*(v15 + 24)];
      v16 = *(v6 + 56);

      v16(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v20 = *(v5 + 32);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 24))(v21, v22, v23);
      v24 = type metadata accessor for TabViewCustomization(0);
      *&v21[*(v24 + 20)] = *&v22[*(v24 + 20)];

      *&v21[*(v24 + 24)] = *&v22[*(v24 + 24)];

      return a1;
    }

    outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>);
  }

  type metadata accessor for Binding<TabViewCustomization>?(0);
  v18 = *(*(v17 - 8) + 64);

  return memcpy(a1, a2, v18);
}

uint64_t outlined destroy of TabViewCustomizationModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(v5 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for TabViewCustomization(0);
    *&v12[*(v15 + 20)] = *&v13[*(v15 + 20)];
    *&v12[*(v15 + 24)] = *&v13[*(v15 + 24)];
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(v5 + 32);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 32))(v12, v13, v14);
      v15 = type metadata accessor for TabViewCustomization(0);
      *&v12[*(v15 + 20)] = *&v13[*(v15 + 20)];
      *&v12[*(v15 + 24)] = *&v13[*(v15 + 24)];
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v19 = *(v5 + 32);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 40))(v20, v21, v22);
      v23 = type metadata accessor for TabViewCustomization(0);
      *&v20[*(v23 + 20)] = *&v21[*(v23 + 20)];

      *&v20[*(v23 + 24)] = *&v21[*(v23 + 24)];

      return a1;
    }

    outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>);
  }

  type metadata accessor for Binding<TabViewCustomization>?(0);
  v17 = *(*(v16 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void type metadata completion function for TabViewCustomizationModifier(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t EnvironmentValues.tabViewCustomization.setter(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of Binding<TabViewCustomization>?(a1, &v10 - v7);
  outlined init with copy of Binding<TabViewCustomization>?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>?);
  return outlined destroy of TabViewCustomizationModifier(v8, type metadata accessor for Binding<TabViewCustomization>?);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TabViewCustomizationModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TabViewCustomizationModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewCustomizationModifier(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance TabViewCustomizationModifier(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<TabViewCustomization>?(Value, v3);
  return EnvironmentValues.tabViewCustomization.setter(v3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewCustomizationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type TabViewCustomizationModifier and conformance TabViewCustomizationModifier, type metadata accessor for TabViewCustomizationModifier, "y\t\bbĽ\a");

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void EnvironmentValues.tabViewCustomization.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void specialized MultiViewResponder.visit(applying:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for FocusEventProxyResponder(0);
  if (swift_dynamicCastClass())
  {
    *a2 = a1;

LABEL_16:
    v11 = 2;
  }

  else
  {
    v6 = dispatch thunk of ViewResponder.children.getter();
    v7 = v6;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_19:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    while (v9 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x18D00E9C0](v10, v7);
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      dispatch thunk of ResponderNode.visit(applying:)();

      ++v10;
      if (v12 == 2)
      {

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

  *a3 = v11;
}

uint64_t View.focusable(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = &type metadata for FocusInteractions;
  v8 = &protocol witness table for FocusInteractions;
  *&v6 = 3;
  v9[0] = a1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v6, v10);
  v10[5] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v10[6] = 0;
  MEMORY[0x18D00A570](v9, a2, &type metadata for _FocusableModifier, a3);
  return outlined destroy of OnCommandModifier(v9);
}

double View.focusEffect(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.focusEffect.getter(BOOL *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a1 = (v3 & 1) == 0;
}

void key path getter for EnvironmentValues.focusEffect : EnvironmentValues(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.focusEffect.getter(&v3);
  *a2 = v3;
}

double EnvironmentValues.focusEffect.setter(_BYTE *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.focusEffectDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v10[0] = KeyPath;
  v10[1] = partial apply for closure #1 in View.hoverEffectDisabled(_:);
  v10[2] = v7;
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  MEMORY[0x18D00A570](v10, a2, v8, a3);

  return result;
}

uint64_t EnvironmentValues.isFocused.getter(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    a4();
    PropertyList.subscript.getter();
  }

  return v7;
}

void key path getter for EnvironmentValues.isFocusEffectEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isFocusEffectEnabled : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.isFocusEffectEnabled.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.isFocusEffectEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.isFocusEffectEnabled.modify;
}

double EnvironmentValues.isFocusEffectEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t implicit closure #1 in makeViewResponderFilter #1 (inputs:outputs:) in static _FocusableModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type FocusDelegation.Provider and conformance FocusDelegation.Provider();

  v2 = Attribute.init<A>(body:value:flags:update:)();

  return v2;
}

uint64_t implicit closure #2 in makeViewResponderFilter #1 (inputs:outputs:) in static _FocusableModifier._makeView(modifier:inputs:body:)(__int128 *a1)
{
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance IOSFocusEnabledFlag(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static IOSFocusEnabledFlag.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

void FocusableOptions.resolve(in:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>, &unk_1F0012178, &protocol witness table for EnvironmentValues.AllControlsNavigableKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v5 = v8;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>, &unk_1F0012178, &protocol witness table for EnvironmentValues.AllControlsNavigableKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v5 = v8;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>, &unk_1F0011EF0, &protocol witness table for EnvironmentValues.IsFocusEffectEnabledKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v6 = v4 | 2;
  if (!v5)
  {
    v6 = v4;
  }

  if (!v7)
  {
    v6 |= 4uLL;
  }

  if ((v6 & 3) != 0)
  {
    v6 |= 0x20uLL;
  }

  *a2 = v6;
}

uint64_t protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance UpdateFocusableViewResponder(uint64_t a1)
{
  AGGraphGetAttributeInfo();
  swift_retain_n();
  static Update.enqueueAction(reason:_:)();
}

uint64_t ResolvedOptions.value.getter(unint64_t a1)
{
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value + 8, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = AGGraphGetValue();
  v6 = *v4;
  v5 = v4[1];
  v9[0] = v6;
  v9[1] = v5;
  v7 = *(v3 + 8);

  v7(v9, v2, v3);

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void FocusableViewResponder.baseItem.didset(int *a1)
{
  v2 = *(a1 + 2);
  if (!*(v1 + 248))
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_12;
  }

  v3 = v2 == 0;
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 || *(v1 + 232) != v4)
  {
LABEL_12:
    v6 = *(v1 + 360);
    if (v6)
    {
      *(v1 + 360) = 0;
    }
  }
}

void *FocusableViewResponder.hostedItem.getter()
{
  if (!*(v0 + 248))
  {
    return 0;
  }

  if ((*(v0 + 240) & 8) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 360);
  if (!v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitFocusableViewResponderItem());

    v4 = specialized UIKitFocusableViewResponderItem.init(_:)(v3);

    v5 = *(v0 + 360);
    *(v0 + 360) = v4;

    v1 = *(v0 + 360);
    if (!v1)
    {
      return 0;
    }
  }

  v6 = v1;
  v7 = v1;
  return v6;
}

void FocusableViewResponder.focusItem.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 248);
  if (v3)
  {
    if (*(v1 + 305) != 1)
    {
      goto LABEL_7;
    }

    if (FocusableViewResponder.hostedItem.getter())
    {
      *(a1 + 48) = 0;
      swift_weakInit();
      *(a1 + 56) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(a1 + 32) = 1;
      *(a1 + 48) = &protocol witness table for FocusableViewResponder;
      swift_weakAssign();
      *(a1 + 33) = 0;
      return;
    }

    v3 = *(v1 + 248);
    if (!v3)
    {
      __break(1u);
    }

    else
    {
LABEL_7:
      v4 = *(v1 + 256);
      v6 = *(v1 + 232);
      v5 = *(v1 + 240);
      *(a1 + 48) = 0;
      swift_weakInit();
      *a1 = v6;
      *(a1 + 4) = BYTE4(v6) & 1;
      *(a1 + 8) = v5;
      *(a1 + 16) = v3;
      *(a1 + 24) = v4;
      *(a1 + 32) = 0;
      *(a1 + 48) = &protocol witness table for FocusableViewResponder;
      *(a1 + 56) = 0;
      swift_weakAssign();
      *(a1 + 33) = 0;
    }
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_18CD6A6D0;
  }
}

uint64_t FocusableViewResponder.bindEvent(_:)(void *a1)
{
  type metadata accessor for DefaultLayoutViewResponder();
  v3 = method lookup function for ResponderNode();
  result = v3(a1);
  if (!result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (EventType.isFocusEvent.getter())
    {
      v6 = 0;
      specialized MultiViewResponder.visit(applying:)(v1, &v6, &v5);
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void closure #1 in FocusableViewResponder.focusProxyResponder.getter(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for FocusEventProxyResponder(0);
  if (swift_dynamicCastClass())
  {
    *a2 = a1;

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

uint64_t FocusableViewResponder.init(inputs:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 224) = MEMORY[0x1E69E7CC0];
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = *MEMORY[0x1E698D3F8];
  *(v1 + 268) = 1;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  *(v1 + 285) = 0;
  *(v1 + 293) = 1;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 344) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t FocusableViewResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 224) = MEMORY[0x1E69E7CC0];
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = *MEMORY[0x1E698D3F8];
  *(v2 + 268) = 1;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 285) = 0;
  *(v2 + 293) = 1;
  *(v2 + 296) = 0;
  *(v2 + 304) = 1;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = 1;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  *(v2 + 344) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

void FocusableViewResponder.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 27);

  outlined consume of FocusItem.ViewItem?(v0[29], v0[30], v0[31], v0[32]);
  _s7SwiftUI9FocusItemVSgWOhTm_1((v0 + 39), &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  v1 = v0[45];
}

double FocusableViewResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  MEMORY[0x18D011290](v1 + 216);

  outlined consume of FocusItem.ViewItem?(v0[29], v0[30], v0[31], v0[32]);
  _s7SwiftUI9FocusItemVSgWOhTm_1((v0 + 39), &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  v2 = v0[45];

  swift_deallocClassInstance();
  return result;
}

uint64_t UIKitFocusableViewResponderItem.next.getter()
{
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = 0;
    specialized MultiViewResponder.visit(applying:)(result, &v4, &v3);
    if (v4)
    {
      v1 = ViewResponder.parentGestureContainer.getter();

      return v1;
    }

    else
    {

      v2 = ViewResponder.parentGestureContainer.getter();

      return v2;
    }
  }

  return result;
}

double UIKitFocusableViewResponderItem.defaultFocusGroupIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem____lazy_storage___defaultFocusGroupIdentifier;
  swift_beginAccess();
  _s7SwiftUI9FocusItemVSgWOcTm_0(v1 + v3, &v6, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
  if (*(&v7 + 1) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_1(&v6, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
    UniqueID.init()();
    lazy protocol witness table accessor for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID();
    AnyHashable.init<A>(_:)();
    outlined init with copy of _PresentationTransitionOutputs.Content(a1, &v6);
    swift_beginAccess();
    outlined assign with take of FocusGroupIdentifier?(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t UIKitFocusableViewResponderItem.swiftui_focusGroupIdentifier.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    _s7SwiftUI9FocusItemVSgWOcTm_0(v1 + 312, &v7, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);

    if (*&v8[8] != 1)
    {
      v9[0] = v7;
      v9[1] = *v8;
      v10 = *&v8[16];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0uLL;
    *v8 = 0;
    *&v8[8] = xmmword_18CD6A6D0;
  }

  _s7SwiftUI9FocusItemVSgWOhTm_1(&v7, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  UIKitFocusableViewResponderItem.defaultFocusGroupIdentifier.getter(v9);
LABEL_6:
  outlined init with copy of _PresentationTransitionOutputs.Content(v9, &v4);
  if (*(&v5 + 1))
  {
    v7 = v4;
    *v8 = v5;
    *&v8[16] = v6;
    v2 = AnyHashable.description.getter();
    outlined destroy of AnyHashable(&v7);
  }

  else
  {
    outlined destroy of FocusGroupIdentifier(&v4);
    v2 = 0;
  }

  outlined destroy of FocusGroupIdentifier(v9);
  return v2;
}

uint64_t UIKitFocusableViewResponderItem.shouldUpdateFocus(in:)(void *a1)
{
  v3 = [a1 nextFocusedItem];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  swift_unknownObjectRelease();
  if (v4 != v1)
  {
    return 1;
  }

  if (![a1 previouslyFocusedItem])
  {
    return 1;
  }

  swift_unknownObjectRelease();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v8 = Strong[29];
  v7 = Strong[30];
  v9 = Strong[31];
  v10 = Strong[32];
  outlined copy of FocusItem.ViewItem?(v8, v7, v9, v10);

  if (!v9)
  {
    return 1;
  }

  outlined consume of FocusItem.ViewItem?(v8, v7, v9, v10);
  return BYTE4(v8) & ((v7 & 2) != 0);
}

void *UIKitFocusableViewResponderItem.focusEffect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = *(v1 + 32);
  v32 = v5;
  v33 = v4;
  v9 = *(v1 + 32);
  if (v8 != 255)
  {
    goto LABEL_12;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v38 = 0u;
  v39 = 0u;
  v40 = 6;
  v12 = swift_unknownObjectWeakLoadStrong();
  v25 = v2;
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  type metadata accessor for HostingScrollView.PlatformGroupContainer();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    *&v34[0] = 16;
    static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
    v37 = 1;
    MultiViewResponder.addContentPath(to:kind:in:observer:)();
    goto LABEL_8;
  }

  *&v34[0] = 16;
  static CoordinateSpace.scrollViewSafeArea.getter();
  MultiViewResponder.addContentPath(to:kind:in:observer:)();

LABEL_8:
  outlined destroy of CoordinateSpace(v35);
  v26 = v38;
  v29 = v39;
  v35[0] = v38;
  v35[1] = v39;
  v9 = v40;
  v36 = v40;
  if (Path.isEmpty.getter())
  {
    MEMORY[0x18D00ABE0]();
    AGGraphClearUpdate();
    closure #1 in UIKitFocusableViewResponderItem.focusEffect.getter(v11, v34);
    AGGraphSetUpdate();
    v27 = v34[0];
    v30 = v34[1];
    static Update.end()();

    outlined destroy of Path(v35);
    v15 = v27;
    v14 = v30;
    v9 = 0;
  }

  else
  {

    v15 = v26;
    v14 = v29;
  }

  v31 = *v1;
  v28 = *(v1 + 8);
  v23 = *(v1 + 24);
  v24 = *(v1 + 16);
  *v1 = v15;
  *(v1 + 16) = v14;
  v16 = *(v1 + 32);
  *(v1 + 32) = v9;
  v7 = *(&v15 + 1);
  v6 = v15;
  v5 = *(&v14 + 1);
  v4 = v14;
  outlined copy of Path.Storage(v15, *(&v15 + 1), v14, *(&v14 + 1), v9);
  outlined copy of Path.Storage(v6, v7, v4, v5, v9);
  outlined consume of Path?(v31, v28, v24, v23, v16);
  outlined consume of Path.Storage(v6, v7, v4, v5, v9);
  v2 = v25;
LABEL_12:
  *&v38 = v6;
  *(&v38 + 1) = v7;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v40 = v9;
  result = swift_weakLoadStrong();
  if (!result)
  {
    outlined copy of Path?(v2, v3, v33, v32, v8);
    goto LABEL_18;
  }

  if (result[31])
  {
    v18 = result[30];
    outlined copy of Path?(v2, v3, v33, v32, v8);

    if ((v18 & 4) != 0)
    {
      outlined consume of Path.Storage(v6, v7, v4, v5, v9);
      return 0;
    }

LABEL_18:
    if (Path.isEmpty.getter())
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCA28]) init];
    }

    else
    {
      v20 = Path.cgPath.getter();
      v21 = [objc_opt_self() bezierPathWithCGPath_];

      v19 = [objc_opt_self() effectWithPath_];
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    [v19 setContainerView_];

    outlined consume of Path.Storage(v6, v7, v4, v5, v9);
    return v19;
  }

  __break(1u);
  return result;
}

double closure #1 in UIKitFocusableViewResponderItem.focusEffect.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  *&v24 = *Value;
  *(&v24 + 1) = v5;
  v6 = *(Value + 32);
  v25 = *(Value + 16);
  v26 = v6;
  v7 = *(a1 + 104);
  v8 = *(a1 + 136);
  v19 = *(a1 + 120);
  v20 = v8;
  v21 = *(a1 + 152);
  v17 = *(a1 + 88);
  v18 = v7;
  v9 = *(a1 + 164);
  v22 = *(a1 + 160);
  v23 = v9;

  _ViewInputs.position.getter();
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v10);
  AGGraphGetValue();
  v15 = 0uLL;
  *&v16 = MEMORY[0x18D00B390]();
  *(&v16 + 1) = v11;
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  v14[40] = 1;
  v17 = v24;
  v18 = v25;
  v19 = v26;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v14);

  result = *&v15;
  v13 = v16;
  *a2 = v15;
  a2[1] = v13;
  return result;
}

id UIKitFocusableViewResponderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitFocusableViewResponderItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for TrivialContentPathObserver.contentPathDidChange(for:) in conformance UIKitFocusableViewResponderItem()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 16);
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 24);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v6 = *(v1 + 32);
  *(v1 + 32) = -1;
  return outlined consume of Path?(v2, v3, v4, v5, v6);
}

uint64_t protocol witness for ContentPathObserver.respondersDidChange(for:) in conformance UIKitFocusableViewResponderItem(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitFocusableViewResponderItem);

  return MEMORY[0x1EEDE2298](a1, a2, WitnessTable);
}

uint64_t protocol witness for ContentPathObserver.contentPathDidChange(for:changes:transform:finished:) in conformance UIKitFocusableViewResponderItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitFocusableViewResponderItem, a6);

  return MEMORY[0x1EEDE2290](a1, a2, a3, a4, a5, a6, WitnessTable);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance FocusDelegation.Key@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return _s7SwiftUI9FocusItemVSgWOcTm_0(&static FocusDelegation.Key.defaultValue, v1, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusDelegation.Key(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of FocusItem?(a1, v8);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = v10 == 1;
  }

  if (v5)
  {
    a2(v11, v4);
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v10 == 1;
    }

    if (!v6)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_1(v8, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
    }
  }

  else
  {
    outlined init with take of FocusItem(v8, v11);
  }

  return outlined init with take of FocusItem?(v11, a1);
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance FocusDelegation.Feature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  *(v0 + 8) = 0;
  return result;
}

int64x2_t protocol witness for static Rule.initialValue.getter in conformance FocusDelegation.Provider@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = vdupq_n_s64(1uLL);
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

double protocol witness for Rule.value.getter in conformance FocusDelegation.Provider@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  *(a1 + 48) = 0;
  swift_weakInit();
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 48) = &protocol witness table for FocusableViewResponder;
  *(a1 + 56) = 0;
  swift_weakAssign();
  *(a1 + 33) = 0;

  return result;
}

double closure #1 in ViewGraph.delegatedFocusItem()@<D0>(_OWORD *a2@<X8>)
{
  AGGraphClearUpdate();
  lazy protocol witness table accessor for type FocusDelegation.Feature and conformance FocusDelegation.Feature();
  v3 = ViewGraph.subscript.getter();
  if (v3 && (*(v3 + 8) & 1) == 0 && (_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]), (WeakValue = AGGraphGetWeakValue()) != 0))
  {
    _s7SwiftUI9FocusItemVSgWOcTm_0(WeakValue, v6, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
    outlined init with take of FocusItem?(v6, a2);
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_18CD6A6D0;
  }

  AGGraphSetUpdate();
  return result;
}

void protocol witness for ObservedAttribute.destroy() in conformance UpdateFocusRingFrame()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
    *v1 = 0;
    v1[4] = 1;
  }
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusableOptionsKey(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

uint64_t EnvironmentValues.focusDebugDescription.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.focusDebugDescription : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.focusDebugDescription : EnvironmentValues(void *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.focusDebugDescription.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t (*EnvironmentValues.focusDebugDescription.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.focusDebugDescription.modify;
}

void EnvironmentValues.focusDebugDescription.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  v3[2] = **a1;
  v5 = v3[6];
  v3[3] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
  if (a2)
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

uint64_t View.focusable(_:interactions:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v10 = a5;
  v11 = a6;
  v9 = v6;
  v8[0] = a1;
  v12 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v13 = 0;
  MEMORY[0x18D00A570](v8, a3, &type metadata for _FocusableModifier, a4);
  return outlined destroy of OnCommandModifier(v8);
}

uint64_t type metadata accessor for FocusableViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for FocusableViewResponder;
  if (!type metadata singleton initialization cache for FocusableViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>, &unk_1F0011C40, &protocol witness table for EnvironmentValues.__Key_focusDebugDescription);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusInteractions and conformance FocusInteractions()
{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusInteractions, &type metadata for FocusInteractions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusInteractions, &type metadata for FocusInteractions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusInteractions, &type metadata for FocusInteractions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable("٦\tb̻\a", &type metadata for FocusInteractions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusableOptions and conformance FocusableOptions()
{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableOptions, &type metadata for FocusableOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableOptions, &type metadata for FocusableOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableOptions, &type metadata for FocusableOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusableOptions, &type metadata for FocusableOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

uint64_t assignWithCopy for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t assignWithTake for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for _FocusableModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for _FocusableModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<FocusEffect>, &type metadata for FocusEffect, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA11FocusEffectVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(void))
{
  v6 = *(a1 + 8);
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(255, a2, a3, a4);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v6;
  v9[1] = a5();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

uint64_t getEnumTagSinglePayload for FocusableGeometryHelper(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusableGeometryHelper(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t assignWithCopy for UpdateFocusableViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  swift_weakCopyAssign();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t initializeWithTake for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t lazy protocol witness table accessor for type FocusEffect.Kind and conformance FocusEffect.Kind()
{
  result = lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind;
  if (!lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusEffect.Kind, &type metadata for FocusEffect.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind);
  }

  return result;
}

id specialized UIKitFocusableViewResponderItem.init(_:)(uint64_t a1)
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameAttr] = 0;
  v2 = &v1[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = -1;
  v3 = &v1[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem____lazy_storage___defaultFocusGroupIdentifier];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  *(v3 + 24) = xmmword_18CD6A6D0;
  v4 = &v1[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
  *v4 = 0;
  v4[4] = 1;
  swift_weakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for UIKitFocusableViewResponderItem();
  return objc_msgSendSuper2(&v6, sel_init);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>, &type metadata for EnvironmentValues.IsPlatformFocusSystemEnabled, &protocol witness table for EnvironmentValues.IsPlatformFocusSystemEnabled);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined assign with take of FocusGroupIdentifier?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>, &unk_1F0012178, &protocol witness table for EnvironmentValues.AllControlsNavigableKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusDelegation.Provider and conformance FocusDelegation.Provider()
{
  result = lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider;
  if (!lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusDelegation.Provider, &unk_1F0012150, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusDelegation.Feature and conformance FocusDelegation.Feature()
{
  result = lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature;
  if (!lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusDelegation.Feature, &type metadata for FocusDelegation.Feature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature);
  }

  return result;
}

uint64_t assignWithCopy for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for UIKitFocusableViewResponderItem.FocusedStateCommitMutation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
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

uint64_t storeEnumTagSinglePayload for UIKitFocusableViewResponderItem.FocusedStateCommitMutation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentValues.labelsVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

double EnvironmentValues.labelsVisibility.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.labels(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - v7;
  swift_getKeyPath();
  v13 = a1;
  View.environment<A>(_:_:)();

  v9 = lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E6980A18]);
  v12[0] = a3;
  v12[1] = v9;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v12);
  lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

double (*EnvironmentValues.labelsVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.labelsVisibility.modify;
}

double EnvironmentValues.labelsVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<LabelVisibilityConfigured>)
  {
    lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<LabelVisibilityConfigured>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void specialized implicit closure #1 in _GraphInputs.labelsVisibility.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

unint64_t lazy protocol witness table accessor for type _CircleLayout and conformance _CircleLayout()
{
  result = lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout;
  if (!lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CircleLayout, &type metadata for _CircleLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout;
  if (!lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CircleLayout, &type metadata for _CircleLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout);
  }

  return result;
}

uint64_t specialized _CircleLayout.placeSubviews(in:proposal:subviews:cache:)(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = *v5;
  CGRectGetMidX(*&a2);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidY(v21);
  LODWORD(v19.a) = v10;
  v19.b = v11;
  LOBYTE(v19.c) = v12;
  BYTE1(v19.c) = v13;
  v15 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v15 < 0 || result < v15)
  {
    goto LABEL_9;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      CGAffineTransform.init(rotation:)();
      v18 = v19;
      v20.x = 0.0;
      v20.y = -v14;
      CGPointApplyAffineTransform(v20, &v18);
      LODWORD(v18.a) = v10;
      v18.b = v11;
      LOBYTE(v18.c) = v12;
      BYTE1(v18.c) = v13;
      LayoutSubviews.subscript.getter();
      static UnitPoint.center.getter();
      result = LayoutSubview.place(at:anchor:proposal:)();
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _CircleLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _CircleLayout and conformance _CircleLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InitialSceneSizeState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InitialSceneSizeState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t getEnumTag for InitialSceneSizeState(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for InitialSceneSizeState(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 25) = 1;
  }

  else
  {
    *(result + 25) = 0;
  }

  return result;
}

void closure #1 in SceneBridge.updateMinimumSizeObserver(added:viewGraph:)(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
    if (*(Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25) == 1 && ((v7 = *(v6 + 24), v8 = *v6, v9 = *(v6 + 8) | *(v6 + 16), !v7) ? (v10 = (v9 | v8) == 0) : (v10 = 0), !v10 ? (v11 = v7 == 0) : (v11 = 0), v11 ? (v12 = v8 == 1) : (v12 = 0), v12 ? (v13 = v9 == 0) : (v13 = 0), v13) || (v14 = swift_unknownObjectWeakLoadStrong()) == 0 || (v15 = v14, v16 = [v14 sizeRestrictions], v15, !v16))
    {
    }

    else
    {
      [v16 minimumSize];
      if (v18 != v3 || v17 != v4)
      {
        [v16 setMinimumSize_];
      }
    }
  }
}

void closure #1 in SceneBridge.updateMaximumSizeObserver(added:viewGraph:)(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
    if (*(Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25) == 1 && ((v7 = *(v6 + 24), v8 = *v6, v9 = *(v6 + 8) | *(v6 + 16), !v7) ? (v10 = (v9 | v8) == 0) : (v10 = 0), !v10 ? (v11 = v7 == 0) : (v11 = 0), v11 ? (v12 = v8 == 1) : (v12 = 0), v12 ? (v13 = v9 == 0) : (v13 = 0), v13) || (v14 = swift_unknownObjectWeakLoadStrong()) == 0 || (v15 = v14, v16 = [v14 sizeRestrictions], v15, !v16))
    {
    }

    else
    {
      [v16 maximumSize];
      if (v18 != INFINITY || v17 != INFINITY)
      {
        v20 = 2777777.0;
        if (v4 <= 2777777.0)
        {
          v21 = v4;
        }

        else
        {
          v21 = 2777777.0;
        }

        if (v3 <= 2777777.0)
        {
          v20 = v3;
        }

        [v16 setMaximumSize_];
      }
    }
  }
}

BOOL specialized static InitialSceneSizeState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  if (*(a1 + 25) == 1)
  {
    v12 = v6 | v5;
    if (v12 | v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 == 0;
    }

    if (v13)
    {
      if (v10 | v9 | v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == 0;
      }

      v18 = v17;
      if (*(a2 + 25))
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      return v19 & 1;
    }

    else if (!*(a1 + 24) && (v4 == 1 ? (v14 = v12 == 0) : (v14 = 0), v14))
    {
      if (*(a2 + 25) && ((v15 = v10 | v9, v15 | v8) || *(a2 + 24)))
      {
        return v8 == 1 && v15 == 0 && v11 == 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = v10 | v9;
      v21 = v20 | v8;
      v24 = v8 != 1 || v20 != 0 || v11 != 0;
      if (v21)
      {
        v25 = 0;
      }

      else
      {
        v25 = v11 == 0;
      }

      v26 = !v25 && v24;
      return (*(a2 + 25) & 1) != 0 && v26;
    }
  }

  else if (*(a2 + 25))
  {
    return 0;
  }

  else
  {
    v39 = v2;
    v40 = v3;
    v35 = v4;
    v36 = v5 & 1;
    v37 = v6;
    v38 = v7 & 1;
    v31 = v8;
    v32 = v9 & 1;
    v33 = v10;
    v34 = v11 & 1;
    return MEMORY[0x18D004850](&v35, &v31) & 1;
  }
}

Swift::Int TimelineView.Context.Cadence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimelineView<A, B>.Context.Cadence(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimelineView.Context.Cadence.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v26 = a7;
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  v20 = type metadata accessor for TimelineView.Context(0, a4, a5, a6);
  v22 = *(v20 - 8);
  result = v20 - 8;
  if (*(v22 + 64) == v12)
  {
    outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(a1, v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    v25(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    static ViewBuilder.buildExpression<A>(_:)();
    v23 = *(v13 + 8);
    v23(v16, a5);
    static ViewBuilder.buildExpression<A>(_:)();
    return (v23)(v19, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL TimelineView<>.UpdateFilter.updateFromBacklightServices(frameSpecifier:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = [a1 entrySpecifierForTimelineIdentifier_];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 timelineEntry];
    v17 = [v16 presentationTime];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v13, v9, v6);
    Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;

    (*(v7 + 8))(v13, v6);
    *(v3 + *(a2 + 96)) = v19;
    *(v3 + *(a2 + 100)) = 0x7FF0000000000000;
  }

  return v15 != 0;
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance <> TimelineView<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>);
  return static UnaryView._viewListCount(inputs:)();
}

void protocol witness for View.body.getter in conformance <> TimelineView<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>, a1, &v4);
  specialized PrimitiveView.body.getter(a1, WitnessTable);
}

void *initializeBufferWithCopyOfBuffer for TimelineView.Context(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
    swift_weakCopyInit();
  }

  return a1;
}

uint64_t assignWithCopy for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakTakeAssign();
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimelineView<>.UpdateFilter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || ((((v9 + 7 + ((v8 + 52) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = *v25;
    *v24 = *v25;
    v27 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28 + 19;
    *v27 = *v28;
    v30 = v27 + 19;
    v27[1] = v28[1];
    v31 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v28 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v31 = *v32;
    *(v31 + 4) = *(v32 + 4);
    *(v30 & 0xFFFFFFFFFFFFFFF8) = *(v29 & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v8 + (v30 & 0xFFFFFFFFFFFFFFF8) + 4) & ~v8);
    v34 = ((v8 + (v29 & 0xFFFFFFFFFFFFFFF8) + 4) & ~v8);
    v35 = *(v6 + 48);
    v36 = v26;
    if (v35(v34, 1, v15))
    {
      memcpy(v33, v34, v9);
    }

    else
    {
      (*(v6 + 16))(v33, v34, v15);
      (*(v6 + 56))(v33, 0, 1, v15);
    }

    v37 = ((v33 + v10) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v34 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v39 = *v40;
    *(v39 + 8) = *(v40 + 8);
  }

  return a1;
}

_DWORD *assignWithCopy for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v4;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v8;
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v13 += 11;
  v15 = *v12;
  *v12 = v14;
  v12 += 11;
  v16 = v14;

  *(v12 & 0xFFFFFFFFFFFFFFF8) = *(v13 & 0xFFFFFFFFFFFFFFF8);
  *((v12 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v13 & 0xFFFFFFFFFFFFFFF8) + 4);
  v17 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v18 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  v19 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v13 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 80);
  v24 = ((v19 + v23 + 4) & ~v23);
  v25 = ((v20 + v23 + 4) & ~v23);
  v26 = *(v22 + 48);
  LODWORD(v19) = v26(v24, 1, AssociatedTypeWitness);
  v27 = v26(v25, 1, AssociatedTypeWitness);
  if (v19)
  {
    if (!v27)
    {
      (*(v22 + 16))(v24, v25, AssociatedTypeWitness);
      (*(v22 + 56))(v24, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v28 = *(v22 + 84);
    v29 = *(v22 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v22 + 24))(v24, v25, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v22 + 8))(v24, AssociatedTypeWitness);
    v28 = *(v22 + 84);
    v29 = *(v22 + 64);
  }

  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 + 1;
  }

  memcpy(v24, v25, v30);
LABEL_12:
  if (*(v22 + 84))
  {
    v31 = *(v22 + 64);
  }

  else
  {
    v31 = *(v22 + 64) + 1;
  }

  v32 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;
  *(v34 + 8) = *(v35 + 8);
  return a1;
}

_DWORD *initializeWithTake for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 11) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15 + 19;
  *v14 = *v15;
  v17 = v14 + 19;
  v14[1] = v15[1];
  v18 = (v14 + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = v17 & 0xFFFFFFFFFFFFFFF8;
  v21 = v16 & 0xFFFFFFFFFFFFFFF8;
  *(v17 & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 80);
  v25 = ((v24 + v20 + 4) & ~v24);
  v26 = ((v24 + v21 + 4) & ~v24);
  if ((*(v23 + 48))(v26, 1, AssociatedTypeWitness))
  {
    v27 = *(v23 + 84);
    v28 = *(v23 + 64);
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 + 1;
    }

    memcpy(v25, v26, v29);
  }

  else
  {
    (*(v23 + 32))(v25, v26, AssociatedTypeWitness);
    v31 = *(v23 + 56);
    v30 = v23 + 56;
    v31(v25, 0, 1, AssociatedTypeWitness);
    v27 = *(v30 + 28);
    v28 = *(v30 + 8);
  }

  if (v27)
  {
    v32 = v28;
  }

  else
  {
    v32 = v28 + 1;
  }

  v33 = ((v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v35 = *v36;
  *(v35 + 8) = *(v36 + 8);
  return a1;
}

_DWORD *assignWithTake for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v4;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v6;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v8;
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v13 += 11;
  v15 = *v12;
  *v12 = v14;
  v12 += 11;

  *(v12 & 0xFFFFFFFFFFFFFFF8) = *(v13 & 0xFFFFFFFFFFFFFFF8);
  *((v12 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v13 & 0xFFFFFFFFFFFFFFF8) + 4);
  v16 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  v18 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v13 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v18 + v22 + 4) & ~v22);
  v24 = ((v19 + v22 + 4) & ~v22);
  v25 = *(v21 + 48);
  LODWORD(v18) = v25(v23, 1, AssociatedTypeWitness);
  v26 = v25(v24, 1, AssociatedTypeWitness);
  if (v18)
  {
    if (!v26)
    {
      (*(v21 + 32))(v23, v24, AssociatedTypeWitness);
      (*(v21 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v27 = *(v21 + 84);
    v28 = *(v21 + 64);
  }

  else
  {
    if (!v26)
    {
      (*(v21 + 40))(v23, v24, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v21 + 8))(v23, AssociatedTypeWitness);
    v27 = *(v21 + 84);
    v28 = *(v21 + 64);
  }

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + 1;
  }

  memcpy(v23, v24, v29);
LABEL_12:
  if (*(v21 + 84))
  {
    v30 = *(v21 + 64);
  }

  else
  {
    v30 = *(v21 + 64) + 1;
  }

  v31 = ((v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v33 = *v34;
  *(v33 + 8) = *(v34 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineView<>.UpdateFilter(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  v12 = 7;
  if (!v7)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_36;
  }

  v13 = ((((v12 + v11 + ((v10 + 52) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v9 + 255) >> 8) + 1;
  }

  else
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
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v16 || (v17 = a1[v13]) == 0)
  {
LABEL_36:
    v21 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v23 = (*(v6 + 48))((((((v21 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v10 + 12) & ~v10);
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v19 = v13 > 3;
  if (v13 <= 3)
  {
    v20 = (v17 - 1) << (8 * v13);
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v24 = *a1;
  }

  else
  {
    v24 = *a1;
  }

  return v9 + (v24 | v20) + 1;
}

void storeEnumTagSinglePayload for TimelineView<>.UpdateFilter(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((((v13 + ((v11 + 52) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 < a3)
  {
    if (v14 <= 3)
    {
      v15 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v12 >= a2)
  {
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v14] = 0;
    }

    else if (v7)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      v19 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v21 = ((((((v19 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v11 + 12) & ~v11);
        if (v10 >= a2)
        {
          v25 = *(v8 + 56);

          v25((((((v19 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v11 + 12) & ~v11, a2 + 1);
        }

        else
        {
          if (v13 <= 3)
          {
            v22 = ~(-1 << (8 * v13));
          }

          else
          {
            v22 = -1;
          }

          if (v13)
          {
            v23 = v22 & (~v10 + a2);
            if (v13 <= 3)
            {
              v24 = v13;
            }

            else
            {
              v24 = 4;
            }

            bzero(v21, v13);
            if (v24 > 2)
            {
              if (v24 == 3)
              {
                *v21 = v23;
                v21[2] = BYTE2(v23);
              }

              else
              {
                *v21 = v23;
              }
            }

            else if (v24 == 1)
            {
              *v21 = v23;
            }

            else
            {
              *v21 = v23;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  v17 = ~v12 + a2;
  bzero(a1, ((((v13 + ((v11 + 52) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v14 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v17;
    if (v7 > 1)
    {
LABEL_27:
      if (v7 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v7 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v7)
  {
    a1[v14] = v18;
  }
}

uint64_t outlined init with take of (value: Date?, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: Date?, changed: Bool)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarSpacer.init(_:placement:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a3 + 8));
  *a3 = v5;

  return outlined assign with take of ToolbarItemPlacement(a2, (a3 + 8));
}

uint64_t static ToolbarSpacer.fixed.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, v5);
  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a2 + 8));
  *a2 = a1;
  return outlined assign with take of ToolbarItemPlacement(v5, (a2 + 8));
}

uint64_t static ToolbarSpacer.fixed(placement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, v6);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a3 + 8));
  *a3 = a2;
  return outlined assign with take of ToolbarItemPlacement(v6, (a3 + 8));
}

uint64_t static ToolbarSpacer._makeToolbar(content:inputs:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = a2[3];
  v16 = a2[2];
  *v17 = v5;
  *&v17[12] = *(a2 + 60);
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v13[2] = v16;
  v14[0] = v7;
  *(v14 + 12) = *(a2 + 60);
  v8 = *a1;
  v13[0] = v15[0];
  v13[1] = v4;
  outlined init with copy of _ToolbarInputs(v15, v12);
  specialized ToolbarSpacer.PreferenceTransform.init(spacer:inputs:)(v8, v13);
  v9 = *&v17[16] + 1;
  PreferencesOutputs.init()();
  v10 = DWORD2(v13[0]);
  *a3 = *&v13[0];
  *(a3 + 8) = v10;
  *(a3 + 16) = v9;
  *&v13[0] = *v17;
  DWORD2(v13[0]) = *&v17[8];

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static ToolbarSpacer._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, int a3)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t closure #1 in ToolbarSpacer.PreferenceTransform.value.getter(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v26 = a1;
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  v10 = type metadata accessor for ToolbarStorage.Entry(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  outlined init with copy of ToolbarItemPlacement((a2 + 8), &v29);
  v27 = v29;
  v28[0] = v30[0];
  *(v28 + 9) = *(v30 + 9);
  v15 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == v8)
  {
    if (v8 == v6)
    {
      v16 = 0;
      goto LABEL_5;
    }

    v16 = 0;
    v17 = *AGGraphGetValue();
    if (v15 != v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *AGGraphGetValue();
    if (v15 == v6)
    {
LABEL_5:
      v17 = 1;
      if (v15 == v9)
      {
        goto LABEL_6;
      }

LABEL_13:
      v18 = *AGGraphGetValue();
      if (v15 == v5)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    v17 = *AGGraphGetValue();
    if (*AGGraphGetValue())
    {
      v17 = 1;
    }

    if (v15 != v9)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  v18 = 0;
  if (v15 == v5)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v19 = *AGGraphGetValue();
  if (v15 != v8 && *AGGraphGetValue())
  {
    v19 = 0;
  }

LABEL_17:
  v31[0] = v14 ^ 1;
  v32 = v27;
  *v33 = v28[0];
  *&v33[9] = *(v28 + 9);
  v34 = v16;
  v35 = 0;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  outlined init with copy of ToolbarStorage.SpacerItem(v31, v13);
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  swift_storeEnumTagMultiPayload();
  v13[*(v10 + 20)] = 2;
  v20 = v26;
  v21 = *(v26 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  outlined destroy of ToolbarStorage.SpacerItem(v31);
  v21[2] = v23 + 1;
  result = outlined init with take of ToolbarStorage.Entry(v13, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23);
  *(v20 + 48) = v21;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarSpacer.PreferenceTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 4);
  v8 = *v1;
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarSpacer(Value, v9);
  v5 = swift_allocObject();
  v6 = v9[1];
  *(v5 + 16) = v9[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v9[2];
  *(v5 + 64) = v10;
  *(v5 + 68) = v8;
  *(v5 + 76) = v1[1];
  *(v5 + 84) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ToolbarSpacer.PreferenceTransform.value.getter;
  *(result + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

unint64_t specialized ToolbarSpacer.PreferenceTransform.init(spacer:inputs:)(unsigned int a1, _OWORD *a2)
{
  v3 = a2[3];
  v7[2] = a2[2];
  v8[0] = v3;
  *(v8 + 12) = *(a2 + 60);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _ToolbarInputs(v7);
  return a1 | (v5 << 32);
}

uint64_t assignWithCopy for ToolbarSpacer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(v3, a2 + 8);
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(v3 + 25) = *(a2 + 33);
      *v3 = v6;
      v3[1] = v7;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarSpacer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarSpacer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform()
{
  result = lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform;
  if (!lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarSpacer.PreferenceTransform, &unk_1F00126C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform);
  }

  return result;
}

uint64_t ListBadgedViewStyle.makeBody(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = static VerticalAlignment.center.getter();
  v11 = 0;
  closure #1 in ListBadgedViewStyle.makeBody(configuration:)(v1, v2, v3, v4, &v23);
  v18 = v29;
  v19 = v30;
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v12 = v23;
  v13 = v24;
  v21[6] = v29;
  v21[7] = v30;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v20 = v31;
  v22 = v31;
  v21[0] = v23;
  v21[1] = v24;
  v6 = MEMORY[0x1E6981F40];
  outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(&v12, &v8, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
  outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(v21, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), v6);
  *(&v10[6] + 7) = v18;
  *(&v10[5] + 7) = v17;
  *(&v10[2] + 7) = v14;
  *(&v10[1] + 7) = v13;
  *(&v10[7] + 7) = v19;
  *(&v10[8] + 7) = v20;
  *(&v10[3] + 7) = v15;
  *(&v10[4] + 7) = v16;
  *(v10 + 7) = v12;
  *&v9[81] = v10[5];
  *&v9[97] = v10[6];
  *&v9[113] = v10[7];
  *&v9[128] = *(&v10[7] + 15);
  *&v9[17] = v10[1];
  *&v9[33] = v10[2];
  *&v9[49] = v10[3];
  *&v9[65] = v10[4];
  v8 = v5;
  v9[0] = v11;
  *&v9[1] = v10[0];
  Spacing.init()();
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(0);
  lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, MEMORY[0x1E69817F8]);
  View.spacing(_:)();

  v29 = *&v9[80];
  v30 = *&v9[96];
  v31 = *&v9[112];
  v32 = *&v9[128];
  v25 = *&v9[16];
  v26 = *&v9[32];
  v27 = *&v9[48];
  v28 = *&v9[64];
  v23 = v8;
  v24 = *v9;
  return outlined destroy of HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(&v23);
}

uint64_t closure #1 in ListBadgedViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >> 1 == 0xFFFFFFFF)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    KeyPath = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0x1FFFFFFFELL;
  }

  else
  {
    v17 = a1;
    v19 = a3;
    v20 = a2;
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = swift_getKeyPath();
    v30[0] = 0;
    v12 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    a2 = v20;
    a3 = v19;
    v13 = v21;
    a1 = v17;
    v15 = 0x4024000000000000;
    v14 = 0x3FF0000000000000;
    v6 = v17;
    v7 = v20;
    v16 = v19;
    v8 = a4;
  }

  v32 = 0;
  *&v33 = v6;
  *(&v33 + 1) = v7;
  *&v34 = v16;
  *(&v34 + 1) = v8;
  v35 = KeyPath;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = 0;
  v41 = v14;
  *&v31[55] = v10;
  *&v31[39] = KeyPath;
  *&v31[23] = v34;
  *&v31[7] = v33;
  *&v31[119] = v14;
  *&v31[103] = v13;
  *&v31[87] = v12;
  *&v31[71] = v11;
  *a5 = v15;
  *(a5 + 8) = 0;
  v22 = *v31;
  v23 = *&v31[16];
  v24 = *&v31[32];
  *(a5 + 57) = *&v31[48];
  *(a5 + 41) = v24;
  *(a5 + 25) = v23;
  *(a5 + 9) = v22;
  v25 = *&v31[64];
  v26 = *&v31[80];
  v27 = *&v31[96];
  *(a5 + 120) = *&v31[111];
  *(a5 + 105) = v27;
  *(a5 + 89) = v26;
  *(a5 + 73) = v25;
  v42[0] = v6;
  v42[1] = v7;
  v42[2] = v16;
  v42[3] = v8;
  v42[4] = KeyPath;
  v42[5] = 0;
  v42[6] = v10;
  v42[7] = 0;
  v42[8] = v11;
  v42[9] = 0;
  v42[10] = v12;
  v42[11] = 0;
  v42[12] = v13;
  v42[13] = 0;
  v42[14] = v14;
  outlined copy of BadgeLabel?(a1, a2, a3);
  v28 = MEMORY[0x1E69E6720];
  outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(&v33, v30, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, MEMORY[0x1E69E6720]);
  return outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(v42, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, v28);
}

void type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?))
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>)
  {
    type metadata accessor for Badge<BadgeLabel>(255);
    type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>, MEMORY[0x1E697FEB0], MEMORY[0x1E697FEA0], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>);
    }
  }
}

void type metadata accessor for Badge<BadgeLabel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Badge<BadgeLabel>)
  {
    v2 = lazy protocol witness table accessor for type BadgeLabel and conformance BadgeLabel();
    v4 = type metadata accessor for Badge(a1, &type metadata for BadgeLabel, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Badge<BadgeLabel>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined destroy of HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t Badge.style.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *v2;
  v4 = *(v2 + 8);
  specialized Environment.wrappedValue.getter(*v2, v4, &v7);
  if (v7 == 2)
  {
    specialized Environment.wrappedValue.getter(v3, v4, &v7);
    if (v7 == 2)
    {
      v7 = static Color.white.getter();
      AnyShapeStyle.init<A>(_:)();

      v7 = static Color.red.getter();
    }

    else
    {
      LODWORD(v7) = 1;
      AnyShapeStyle.init<A>(_:)();
      LODWORD(v7) = 4;
    }

    AnyShapeStyle.init<A>(_:)();
    v5 = static Font.body.getter();
  }

  else
  {
    v5 = static Font.body.getter();
    LODWORD(v7) = 1;
    AnyShapeStyle.init<A>(_:)();
  }

  return v5;
}

uint64_t Badge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = *(a1 + 16);
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  v8 = type metadata accessor for ModifiedContent();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v59 - v12;
  v59 = v13;
  v14 = type metadata accessor for ModifiedContent();
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v59 - v15;
  v61 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v59 - v18;
  type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>(255);
  v71 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v59 - v20;
  v65 = v21;
  v77 = type metadata accessor for ModifiedContent();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v59 - v24;
  v25 = Badge.style.getter(a1);
  v79 = v26;
  v80 = v25;
  v28 = v27;
  v29 = *(a1 + 24);
  v60 = v27 == 0;
  if (v27)
  {
    v89 = 0x4038000000000000;
    closure #1 in Badge.body.getter(&v89, v2, v4, v29, &v81);
  }

  View.font(_:)();
  v89 = v79;
  v30 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  v88[0] = v29;
  v88[1] = v30;
  v31 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v88);
  View.foregroundStyle<A>(_:)();
  (*(v64 + 8))(v7, v5);
  static Edge.Set.horizontal.getter();
  v33 = lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>();
  v87[0] = WitnessTable;
  v87[1] = v33;
  v34 = swift_getWitnessTable(v31, v8, v87);
  v35 = v62;
  View.padding(_:_:)();
  (*(v63 + 8))(v10, v8);
  static Alignment.center.getter();
  v86[0] = v34;
  v86[1] = MEMORY[0x1E697E5D8];
  v57 = v59;
  v58 = swift_getWitnessTable(v31, v59, v86);
  v36 = v66;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v67 + 8))(v35, v57);
  static Alignment.center.getter();
  v85[0] = v58;
  v85[1] = MEMORY[0x1E697EBF8];
  v37 = v61;
  v38 = swift_getWitnessTable(v31, v61, v85);
  v39 = v69;
  View.frame(width:height:alignment:)();
  (*(v68 + 8))(v36, v37);
  if (v28)
  {
    v40 = v28;
  }

  else
  {
    v89 = static Color.clear.getter();
    v40 = AnyShapeStyle.init<A>(_:)();
  }

  v89 = v40;
  LOBYTE(v81) = 1;
  v84[0] = v38;
  v84[1] = MEMORY[0x1E697E040];

  v41 = MEMORY[0x1E697E858];
  v42 = v71;
  v43 = swift_getWitnessTable(MEMORY[0x1E697E858], v71, v84);
  lazy protocol witness table accessor for type Capsule and conformance Capsule();
  v44 = v74;
  View.background<A, B>(_:in:fillStyle:)();

  (*(v70 + 8))(v39, v42);
  v45 = lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>, MEMORY[0x1E6980BA8]);
  v83[0] = v43;
  v83[1] = v45;
  v46 = v65;
  v47 = swift_getWitnessTable(v41, v65, v83);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v49 = type metadata accessor for AccessibilityBadgedViewModifier.Badge(0, v46, v47, v48);
  v50 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewModifier<A>.Badge, v49);
  v82[0] = v47;
  v82[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v51 = v77;
  v52 = swift_getWitnessTable(v41, v77, v82);
  v53 = v72;
  View.accessibilityConfiguration<A>(_:)(v52, v46, v49, v47, v50);

  (*(v76 + 8))(v44, v46);
  v54 = v73;
  static ViewBuilder.buildExpression<A>(_:)();
  v55 = *(v75 + 8);
  v55(v53, v51);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v55)(v54, v51);
}

void closure #1 in Badge.body.getter(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v7 = *a1;
  BYTE1(v15) = 6;
  v8 = type metadata accessor for Badge(0, a3, a4, a4);
  v9 = specialized Environment.wrappedValue.getter(*(a2 + *(v8 + 48)), *(a2 + *(v8 + 48) + 8), &v15);
  v10 = v7 * MEMORY[0x18D0099E0](&v15 + 1, &v15, v9);
  v11 = specialized Environment.wrappedValue.getter(*(a2 + *(v8 + 52)), *(a2 + *(v8 + 52) + 8));
  v12 = v11 == 1.0;
  v13 = v11 * round(v10 / v11);
  v14 = round(v10);
  if (v12)
  {
    v13 = v14;
  }

  *a5 = v13;
}

uint64_t type metadata completion function for Badge(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Badge(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    outlined copy of Environment<Selector?>.Content(*v13, v15);
    *v12 = v14;
    *(v12 + 8) = v15;
    v16 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    outlined copy of Environment<Selector?>.Content(*v17, v19);
    *v16 = v18;
    *(v16 + 8) = v19;
    v20 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Environment<Selector?>.Content(*v21, v23);
    *v20 = v22;
    *(v20 + 8) = v23;
    v24 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *(v25 + 8);
    outlined copy of Environment<Selector?>.Content(*v25, v27);
    *v24 = v26;
    *(v24 + 8) = v27;
    v28 = (v10 + 71) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v11 + 71) & 0xFFFFFFFFFFFFFFF8;
    v30 = *v29;
    v31 = *(v29 + 8);
    outlined copy of Environment<Selector?>.Content(*v29, v31);
    *v28 = v30;
    *(v28 + 8) = v31;
  }

  return v3;
}

uint64_t destroy for Badge(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  outlined consume of Environment<Selector?>.Content(*((v4 + 7) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 23) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 39) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 55) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
  v5 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);

  return outlined consume of Environment<Selector?>.Content(v6, v7);
}

uint64_t initializeWithCopy for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  *v9 = v11;
  *(v9 + 8) = v5;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v5) = *(v13 + 8);
  outlined copy of Environment<Selector?>.Content(*v13, v5);
  *v12 = v14;
  *(v12 + 8) = v5;
  v15 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v5) = *(v16 + 8);
  outlined copy of Environment<Selector?>.Content(*v16, v5);
  *v15 = v17;
  *(v15 + 8) = v5;
  v18 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  LOBYTE(v5) = *(v19 + 8);
  outlined copy of Environment<Selector?>.Content(*v19, v5);
  *v18 = v20;
  *(v18 + 8) = v5;
  v21 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  LOBYTE(v5) = *(v22 + 8);
  outlined copy of Environment<Selector?>.Content(*v22, v5);
  *v21 = v23;
  *(v21 + 8) = v5;
  return a1;
}

uint64_t assignWithCopy for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v5) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v5);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v5) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v5);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v5) = *(v25 + 8);
  outlined copy of Environment<Selector?>.Content(*v25, v5);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v5) = *(v30 + 8);
  outlined copy of Environment<Selector?>.Content(*v30, v5);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  return a1;
}

uint64_t initializeWithTake for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  v15 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v14;
  v17 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v14;
  v19 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v17) = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v17;
  return a1;
}

uint64_t assignWithTake for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v20;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v30;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  return a1;
}

uint64_t getEnumTagSinglePayload for Badge(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    goto LABEL_28;
  }

  v8 = ((v6 + 71) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for Badge(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 71) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
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
  bzero(a1, ((v9 + 71) & 0xFFFFFFFFFFFFFFF8) + 9);
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

void type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v1 = type metadata accessor for _InsettableBackgroundShapeModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable(MEMORY[0x1E6980490], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

Swift::Bool __swiftcall AccessibilityNode.scrollToVisible()()
{
  AccessibilityNode.enclosingScrollableContext.getter(&v30);
  if (v33[22] == 255)
  {
    outlined destroy of AccessibilityScrollableContext?(&v30, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    return 0;
  }

  else
  {
    v34[1] = v31;
    v34[2] = v32;
    v35[0] = *v33;
    *(v35 + 15) = *&v33[15];
    v34[0] = v30;
    AccessibilityScrollableContext.scrollableCollection.getter();
    if (*(&v31 + 1))
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, v29);
      AccessibilityNode.enclosingHostingScrollView.getter();
      if (v2)
      {
        v3 = v2;
        MEMORY[0x18D00ABE0]();
        v4 = v3;
        [v4 accessibilityFrame];
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        if (CGRectIsEmpty(v36) && (v9 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v10 = NSClassFromString(v9), v9, !v10))
        {
          v17 = v4;
          [v17 frame];
          x = v18;
          y = v19;
          width = v20;
          height = v21;
          v22 = [v17 window];
          if (v22)
          {
            v23 = v22;
            [v17 bounds];
            [v23 convertRect:v17 fromCoordinateSpace:?];
            x = v24;
            y = v25;
            width = v26;
            height = v27;
          }

          else
          {
          }
        }

        else
        {
        }

        [v0 accessibilityFrame];
        v11 = v37.origin.x;
        v12 = v37.origin.y;
        v13 = v37.size.width;
        v14 = v37.size.height;
        if (CGRectIsEmpty(v37))
        {
          v15 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
          NSClassFromString(v15);
        }

        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v40.origin.x = v11;
        v40.origin.y = v12;
        v40.size.width = v13;
        v40.size.height = v14;
        v39 = CGRectIntersection(v38, v40);
        v41.origin.x = v11;
        v41.origin.y = v12;
        v41.size.width = v13;
        v41.size.height = v14;
        if (CGRectEqualToRect(v39, v41))
        {
          static Update.end()();

          outlined destroy of AccessibilityScrollableContext(v34);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return 1;
        }

        else
        {
          v16 = outlined init with copy of AccessibilityScrollableContext(v34, &v30);
          if (!v33[22] || v33[22] != 1)
          {
            v16 = __swift_destroy_boxed_opaque_existential_1(&v30);
          }

          MEMORY[0x1EEE9AC00](v16);
          static Update.ensure<A>(_:)();
          v28 = v30;
          if (v30 == 1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_getObjectType();
              *&v30 = 0;
              BYTE8(v30) = 1;
              ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
              swift_unknownObjectRelease();
            }
          }

          static Update.end()();

          outlined destroy of AccessibilityScrollableContext(v34);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return v28;
        }
      }

      else
      {
        outlined destroy of AccessibilityScrollableContext(v34);
        __swift_destroy_boxed_opaque_existential_1(v29);
        return 0;
      }
    }

    else
    {
      outlined destroy of AccessibilityScrollableContext(v34);
      outlined destroy of ScrollableCollection?(&v30);
      return 0;
    }
  }
}

double AccessibilityScrollableModifier.scrollableCollection.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if (*(*Value + 16))
  {
    outlined init with copy of _Benchmark(*Value + 32, v6);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0]);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60]);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v4, a1);
      return result;
    }

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of ScrollableCollection?(v4);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id AccessibilityScrollableModifier.createOrUpdateNode(viewRendererHost:existingNode:)(uint64_t a1, uint64_t a2, void *a3)
{
  AccessibilityScrollableModifier.scrollableCollection.getter(v15);
  if (v16)
  {
    v6 = *v3;
    if (!a3)
    {
      if (*v3)
      {
        v7 = type metadata accessor for AccessibilityLazyLayoutNode();
LABEL_13:
        v12 = objc_allocWithZone(v7);
        v13 = swift_unknownObjectRetain();
        v10 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v13, a2, 0);
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_10:
      v7 = type metadata accessor for AccessibilityNode();
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v6 = 0;
  }

  v8 = type metadata accessor for AccessibilityLazyLayoutNode();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    if (!v6)
    {
      v10 = a3;
      goto LABEL_14;
    }

    v7 = v8;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = a3;
LABEL_14:
  outlined destroy of ScrollableCollection?(v15);
  return v10;
}

void *AccessibilityScrollableModifier.initialAttachment(for:)()
{
  AccessibilityScrollableModifier.scrollableCollection.getter(&v5);
  if (v6)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v5, v9);
    outlined init with copy of AccessibilityProperties(v1 + 8, &v5);
    outlined init with copy of _Benchmark(v9, v4);
    outlined init with copy of ScrollableCollection?(v4, v3);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey();
    AccessibilityProperties.subscript.setter();
    outlined destroy of ScrollableCollection?(v4);
    v7 = 0x300000003;
    v8 = 0;
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    outlined destroy of ScrollableCollection?(&v5);
    return static AccessibilityAttachment.properties(_:)();
  }
}

uint64_t protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityScrollableModifier()
{
  AccessibilityScrollableModifier.scrollableCollection.getter(v3);
  if (v4)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  outlined destroy of ScrollableCollection?(v3);
  return v1;
}

Swift::Bool __swiftcall AccessibilityScrollableContextModifier.willCreateNode(for:)(Swift::OpaquePointer a1)
{
  outlined init with copy of AccessibilityScrollableContext?(v1 + 72, v5, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (v5[35])
  {
    memcpy(__dst, v5, sizeof(__dst));
    if (a1._rawValue >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = 0;
LABEL_8:
      outlined destroy of AccessibilityAttachment(__dst);
      return v3 & 1;
    }

    v3 = AccessibilityAttachment.isEmpty.getter() ^ 1;
    goto LABEL_8;
  }

  outlined destroy of AccessibilityScrollableContext?(v5, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  v3 = 0;
  return v3 & 1;
}

void *AccessibilityScrollableContextModifier.initialAttachment(for:)@<X0>(void *a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext?(v1 + 72, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (__src[35])
  {
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of AccessibilityScrollableContext(v1, __src);
    v3 = MEMORY[0x1E6980998];
    outlined init with copy of AccessibilityScrollableContext?(__src, v5, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.setter();
    outlined destroy of AccessibilityScrollableContext?(__src, &lazy cache variable for type metadata for AccessibilityScrollableContext?, v3);
    return memcpy(a1, __dst, 0x128uLL);
  }

  else
  {
    outlined destroy of AccessibilityScrollableContext?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    outlined init with copy of AccessibilityScrollableContext(v1, __src);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.init<A>(_:_:)();
    static AccessibilityAttachment.properties(_:)();
    return outlined destroy of AccessibilityProperties(__dst);
  }
}

uint64_t LayoutScrollableTransform.updateValue()()
{
  v1 = v0;
  v183 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v11 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_140;
  }

  v133 = v7;
  v134 = v3;
  AccessibilityAttachmentToken.init<A>(_:)();
  v3 = v171;
  LODWORD(v7) = BYTE8(v171);
  if (*AGGraphGetValue() != 1 || *(v0 + 8) == v11)
  {
    v2 = *(v0 + 24);
    if (v2 >> 62)
    {
      goto LABEL_142;
    }

    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_143:

    v109 = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = MEMORY[0x1E69E7CC0];
    v171 = v109;
LABEL_144:
    AGGraphSetOutputValue();
  }

  v122 = v2;
  v123 = v9;
  v139 = 0;
  Value = AGGraphGetValue();
  v17 = *Value;
  v124 = Value[1];
  v18 = *(v0 + 12);
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  v20 = v19;
  v141 = v17;

  LODWORD(v140) = v18;
  v138 = v20;
  v21 = *AGGraphGetValue();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v143 = v7;
  v120 = v6;
  v121 = v5;
  v125 = v1;
  v142 = v3;
  if (!v22)
  {
    goto LABEL_25;
  }

  LODWORD(v137) = v11;
  v24 = v21 + 32;
  v136 = v21;

  v25 = MEMORY[0x1E697DAE0];
  v26 = MEMORY[0x1E697FA60];
  do
  {
    outlined init with copy of _Benchmark(v24, &v171);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v171, v145);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable, v25);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ScrollableCollection, v26);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v151 = 0;
      v149 = 0u;
      v150 = 0u;
LABEL_15:
      outlined destroy of ScrollableCollection?(&v149);
      goto LABEL_16;
    }

    if (!*(&v150 + 1))
    {
      goto LABEL_15;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v149, v145);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    }

    v28 = v23[2];
    v27 = v23[3];
    if (v28 >= v27 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v23);
    }

    v23[2] = v28 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v145, &v23[5 * v28 + 4]);
LABEL_16:
    v24 += 40;
    --v22;
  }

  while (v22);

  v1 = v125;
  LOBYTE(v7) = v143;
  v11 = v137;
LABEL_25:
  if (!v23[2])
  {

    *&v171 = v141;
    *(&v171 + 1) = v124;
    goto LABEL_144;
  }

  outlined init with copy of _Benchmark((v23 + 4), &v171);

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v171, v180);
  AGGraphGetValue();
  v30 = v29;
  v31 = *(v1 + 24);

  v136 = v31;
  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(v32, v31);

  if (v30 & 1) == 0 && (v33)
  {
    v34 = v141;
    v35 = v124;
    goto LABEL_173;
  }

  v144 = MEMORY[0x1E69E7CD0];
  if (*(v1 + 16) == v11)
  {
    v131 = 0;
    v36 = v141;
  }

  else
  {
    type metadata accessor for AccessibilityScrollableContext?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], MEMORY[0x1E6980610], MEMORY[0x1E69E62F8]);
    v36 = v141;

    v131 = *AGGraphGetValue();
  }

  if (v36 >> 62)
  {
    goto LABEL_149;
  }

  v138 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v138)
  {
LABEL_150:

    if (*v1)
    {
      v108 = 0;
      v135 = MEMORY[0x1E69E7CC8];
      v107 = v136;
      if ((v136 & 0x8000000000000000) != 0)
      {
        goto LABEL_177;
      }

      goto LABEL_158;
    }

    v107 = v136;
    if (*(v144 + 16) > 1uLL)
    {
      v108 = 0;
      v135 = MEMORY[0x1E69E7CC8];
      if ((v136 & 0x8000000000000000) != 0)
      {
        goto LABEL_177;
      }

      goto LABEL_158;
    }

    v135 = MEMORY[0x1E69E7CC8];
LABEL_157:
    v108 = 0;
    if ((v107 & 0x8000000000000000) != 0)
    {
      goto LABEL_177;
    }

LABEL_158:
    if ((v107 & 0x4000000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_177;
  }

LABEL_35:
  v3 = 0;
  v140 = v141 & 0xC000000000000001;
  v128 = v141 + 32;
  v129 = v141 & 0xFFFFFFFFFFFFFF8;
  v2 = &v178;
  v135 = MEMORY[0x1E69E7CC8];
  v1 = v138;
  do
  {
    if (v140)
    {
      v37 = MEMORY[0x18D00E9C0](v3, v141);
    }

    else
    {
      if (v3 >= *(v129 + 16))
      {
        goto LABEL_146;
      }

      v37 = *(v128 + 8 * v3);
    }

    v38 = v37;
    v39 = __OFADD__(v3++, 1);
    if (v39)
    {
      goto LABEL_139;
    }

    v40 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v41 = v38;
    v42 = *&v38[v40];
    v43 = *(v42 + 16);
    if (!v43)
    {

      continue;
    }

    v137 = v41;
    v44 = v42 + 32;

    v45 = 0;
    while (1)
    {
      if (v45 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_134;
      }

      outlined init with copy of AccessibilityAttachmentStorage(v44, &v171);
      v46 = v178;
      v47 = v179;
      outlined destroy of AccessibilityAttachmentStorage(&v171);
      if (v47 != 255)
      {
        *&v145[0] = v46;
        BYTE8(v145[0]) = v47 & 1;
        if ((AccessibilityAttachmentToken.attribute.getter() & 0x100000000) == 0)
        {
          break;
        }
      }

      ++v45;
      v44 += 320;
      if (v43 == v45)
      {

LABEL_53:
        v1 = v138;
        goto LABEL_37;
      }
    }

    v48 = AGGraphGetAttributeSubgraph();
    if (!v48)
    {

      goto LABEL_53;
    }

    v49 = v48;
    v50 = v181;
    v51 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v51 + 72))(&v159, v49, v50, v51);
    v132 = v160;
    v1 = v138;
    if (v160 == 1)
    {

      continue;
    }

    v130 = v159;
    v52 = v137;
    if (!v131)
    {
      goto LABEL_67;
    }

    v118 = v49;
    v53 = *(v131 + 16);

    v127 = v53;
    if (!v53)
    {
LABEL_66:

      v52 = v137;
      v1 = v138;
      v49 = v118;
LABEL_67:
      v127 = *&v52[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v65 = 0x200000000;
      goto LABEL_68;
    }

    v55 = 0;
    v126 = HIDWORD(v130);
    v56 = 32;
    while (1)
    {
      if (v55 >= *(v54 + 16))
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v145[0] = *(v54 + v56);
      v57 = *(v54 + v56 + 16);
      v58 = *(v54 + v56 + 32);
      v59 = *(v54 + v56 + 64);
      v145[3] = *(v54 + v56 + 48);
      v145[4] = v59;
      v145[1] = v57;
      v145[2] = v58;
      v150 = *(v54 + v56 + 16);
      v151 = *(v54 + v56 + 32);
      v152 = *(v54 + v56 + 48);
      v153 = *(v54 + v56 + 64);
      v149 = *(v54 + v56);
      outlined init with copy of _LazyLayout_PlacedSubview(v145, &v171);
      _LazyLayout_PlacedSubview.id.getter();
      v60 = v168;
      v1 = v169;
      v61 = v170;
      v62 = *(v170 + 16);

      if (v62)
      {
        v62 = *(v61 + 32);
        LODWORD(v7) = *(v61 + 52);

        swift_bridgeObjectRelease_n();
        v63 = v7 == 0;
        LOBYTE(v7) = v143;
        v1 = v63 ? v1 : 0xFFFFFFFFLL;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v156 = v145[2];
      v157 = v145[3];
      v158 = v145[4];
      v154 = v145[0];
      v155 = v145[1];
      *&v171 = __PAIR64__(v1, v60);
      *(&v171 + 1) = v62;
      v146 = v130;
      v147 = v126;
      v148 = v132;
      v64 = MEMORY[0x18D003E10](&v171, &v146);

      if (v64)
      {
        break;
      }

      v55 = (v55 + 1);
      outlined destroy of _LazyLayout_PlacedSubview(v145);
      v56 += 80;
      v54 = v131;
      if (v127 == v55)
      {
        goto LABEL_66;
      }
    }

    v127 = *&v137[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
    v172 = v145[1];
    v173 = v145[2];
    v174 = v145[3];
    v175 = v145[4];
    v171 = v145[0];
    _LazyLayout_PlacedSubview.accessibilityContext.getter();
    v172 = v155;
    v173 = v156;
    v174 = v157;
    v175 = v158;
    v70 = 0x100000000;
    if (!v147)
    {
      v70 = 0;
    }

    v71 = v70 | v146;
    v72 = 0x10000000000;
    if (!BYTE1(v147))
    {
      v72 = 0;
    }

    v65 = v71 | v72;
    v171 = v154;
    v1 = v138;
    v49 = v118;
LABEL_68:
    v66 = v130;
    v67 = v132;
    outlined copy of Text.LineStyle?(v130, v132);
    v68 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v145[0] = v68;
    v119 = v65 | v119 & 0xFFFF000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v67, v119, v127, isUniquelyReferenced_nonNull_native);
    v135 = *&v145[0];
    outlined copy of Text.LineStyle?(v66, v67);
    specialized Set._Variant.insert(_:)(v145, v66, v67);

    outlined consume of Text.LineStyle?(v66, v67);
    outlined destroy of AccessibilityScrollableContext?(&v171, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, MEMORY[0x1E6980610]);

LABEL_37:
    ;
  }

  while (v3 != v1);

  v1 = v125;
  v2 = v139;
  LODWORD(v131) = *v125;
  if ((v131 & 1) == 0 && *(v144 + 16) <= 1uLL)
  {
    v107 = v136;
    goto LABEL_157;
  }

  LODWORD(v132) = 0;
  v3 = 0;
  v130 = &v172;
  v127 = (v134 + 8);
  ++v133;
  v1 = v138;
  while (1)
  {
LABEL_80:
    if (v140)
    {
      v73 = MEMORY[0x18D00E9C0](v3, v141);
    }

    else
    {
      if (v3 >= *(v129 + 16))
      {
        goto LABEL_148;
      }

      v73 = *(v128 + 8 * v3);
    }

    v74 = v73;
    v39 = __OFADD__(v3++, 1);
    if (v39)
    {
      goto LABEL_141;
    }

    v139 = v2;
    v75 = v135;
    if (*(v135 + 16))
    {
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(*&v73[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id]);
      if (v77)
      {
        v78 = *(v75 + 56) + 24 * v76;
        v80 = *v78;
        v79 = *(v78 + 4);
        v2 = *(v78 + 8);
        v81 = *(v78 + 20);
        v82 = *(v78 + 16);
        outlined init with copy of _Benchmark(v180, &v159);
        if (v131)
        {
          v83 = 0;
          LOBYTE(v161) = v125[1];
          v163 = __PAIR64__(v79, v80);
          v164 = v2;
          v165 = v82;
          v166 = (v82 | (v81 << 32)) >> 32;
        }

        else
        {
          v161 = v80;
          v162 = v79;
          v83 = 2;
          v163 = v2;
        }

        v167 = v83;
        outlined init with copy of AccessibilityScrollableContext(&v159, &v171);
        lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
        v134 = v2;
        swift_retain_n();
        AccessibilityProperties.init<A>(_:_:)();
        static AccessibilityAttachment.properties(_:)();
        v88 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v137 = v88;
        v89 = *&v88[v74];
        v90 = *(v89 + 16);
        v1 = v138;
        if (v90)
        {
          v91 = v89 + 32;

          v7 = 0;
          while (v7 < *(v89 + 16))
          {
            outlined init with copy of AccessibilityAttachmentStorage(v91, &v171);
            v1 = v178;
            v2 = v179;
            outlined destroy of AccessibilityAttachmentStorage(&v171);
            if (v2 != 255)
            {
              if (v2)
              {
                if (v143 && v1 == v142)
                {
                  goto LABEL_115;
                }
              }

              else if ((v143 & 1) == 0 && v1 == v142)
              {
LABEL_115:

                *&v171 = v142;
                LOBYTE(v7) = v143;
                BYTE8(v171) = v143;
                v92 = specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(&v149, &v171, 0);

                outlined destroy of AccessibilityAttachment(&v149);
                outlined destroy of AccessibilityProperties(&v154);
                outlined destroy of AccessibilityScrollableContext(&v159);
                LODWORD(v132) = v92 | v132;
                v1 = v138;
                v2 = v139;
                goto LABEL_79;
              }
            }

            v7 = (v7 + 1);
            v91 += 320;
            if (v90 == v7)
            {

              LOBYTE(v7) = v143;
              v1 = v138;
              goto LABEL_117;
            }
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          v12 = __CocoaSet.count.getter();
          if (!v12)
          {
            goto LABEL_143;
          }

LABEL_6:
          if (v12 >= 1)
          {
            v13 = 0;
            do
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x18D00E9C0](v13, v2);
              }

              else
              {
                v14 = *(v2 + 8 * v13 + 32);
              }

              v15 = v14;
              ++v13;
              *&v171 = v3;
              BYTE8(v171) = v7;
              specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v171);
            }

            while (v12 != v13);
            goto LABEL_143;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          v138 = __CocoaSet.count.getter();
          if (!v138)
          {
            goto LABEL_150;
          }

          goto LABEL_35;
        }

LABEL_117:
        v2 = v139;
        if ((BYTE8(v152) & 1) == 0 && (BYTE9(v151) & 0x40) != 0)
        {
          LOBYTE(v145[0]) = 4;
          AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v145, &v171);
          if (v171 != 3)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v94 = Strong;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                type metadata accessor for OS_dispatch_queue();
                v126 = v94;
                v132 = static OS_dispatch_queue.main.getter();
                v95 = swift_allocObject();
                *(v95 + 16) = 0;
                *(v95 + 24) = 0;
                *&v173 = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForAttachmentAddition(of:);
                *(&v173 + 1) = v95;
                *&v171 = MEMORY[0x1E69E9820];
                *(&v171 + 1) = 1107296256;
                *&v172 = thunk for @escaping @callee_guaranteed () -> ();
                *(&v172 + 1) = &block_descriptor_86;
                v96 = _Block_copy(&v171);

                static DispatchQoS.unspecified.getter();
                *&v171 = MEMORY[0x1E69E7CC0];
                v119 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
                type metadata accessor for [DispatchWorkItemFlags](0);
                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
                v98 = v121;
                v97 = v122;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v99 = v132;
                MEMORY[0x18D00DA20](0, v123, v98, v96);
                swift_unknownObjectRelease();
                _Block_release(v96);

                v100 = v98;
                v1 = v138;
                (*v127)(v100, v97);
                (*v133)(v123, v120);
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        outlined init with copy of AccessibilityAttachment(&v149, &v171);
        v176 = 0;
        v178 = v142;
        v179 = v7;
        v177 = 0;
        outlined init with copy of AccessibilityAttachmentStorage(&v171, v145);
        v101 = v137;
        swift_beginAccess();
        v102 = *&v101[v74];
        v103 = swift_isUniquelyReferenced_nonNull_native();
        *&v101[v74] = v102;
        if ((v103 & 1) == 0)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
          *&v137[v74] = v102;
        }

        v105 = *(v102 + 2);
        v104 = *(v102 + 3);
        if (v105 >= v104 >> 1)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v102);
        }

        *(v102 + 2) = v105 + 1;
        memcpy(&v102[320 * v105 + 32], v145, 0x13DuLL);
        *&v137[v74] = v102;
        swift_endAccess();

        outlined destroy of AccessibilityAttachmentStorage(&v171);
        outlined destroy of AccessibilityAttachment(&v149);
        outlined destroy of AccessibilityProperties(&v154);
        outlined destroy of AccessibilityScrollableContext(&v159);
        memset(v145, 0, 296);
        v106 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        outlined assign with copy of AccessibilityAttachment?(v145, v74 + v106);
        swift_endAccess();
        outlined destroy of AccessibilityScrollableContext?(v145, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
        LODWORD(v132) = 1;
        *(v74 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;

        goto LABEL_79;
      }
    }

    v84 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v85 = *(v74 + v84);
    v2 = *(v85 + 16);
    if (v2)
    {
      break;
    }

LABEL_78:
    v2 = v139;
LABEL_79:
    if (v3 == v1)
    {
      v107 = v136;
      if ((v136 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      v1 = v125;
      v108 = v132;
      if ((v136 & 0x4000000000000000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_177;
    }
  }

  v86 = v85 + 32;

  v87 = 0;
  while (2)
  {
    if (v87 >= *(v85 + 16))
    {
      __break(1u);
      goto LABEL_138;
    }

    outlined init with copy of AccessibilityAttachmentStorage(v86, &v171);
    v1 = v178;
    LODWORD(v7) = v179;
    outlined destroy of AccessibilityAttachmentStorage(&v171);
    if (v7 == 255)
    {
      goto LABEL_91;
    }

    if (v7)
    {
      if (v143 && v1 == v142)
      {
        break;
      }

      goto LABEL_91;
    }

    if ((v143 & 1) != 0 || v1 != v142)
    {
LABEL_91:
      ++v87;
      v86 += 320;
      if (v2 == v87)
      {

        LOBYTE(v7) = v143;
        v1 = v138;
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  *&v171 = v142;
  LOBYTE(v7) = v143;
  BYTE8(v171) = v143;
  specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v171);

  LODWORD(v132) = 1;
  v1 = v138;
  v2 = v139;
  if (v3 != v138)
  {
    goto LABEL_80;
  }

LABEL_134:
  v108 = 1;
  v107 = v136;
  if ((v136 & 0x8000000000000000) != 0)
  {
    v1 = v125;
LABEL_177:
    while (1)
    {
      v111 = __CocoaSet.count.getter();
      if (!v111)
      {
        goto LABEL_171;
      }

LABEL_160:
      LODWORD(v132) = v108;
      v112 = 0;
      v113 = v107 & 0xC000000000000001;
      v114 = v107 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v113)
        {
          v115 = MEMORY[0x18D00E9C0](v112, v136);
        }

        else
        {
          if (v112 >= *(v114 + 16))
          {
            goto LABEL_175;
          }

          v115 = *(v136 + 8 * v112 + 32);
        }

        v107 = v115;
        v116 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          break;
        }

        *&v171 = v115;
        MEMORY[0x1EEE9AC00](v115);
        *(&v117 - 2) = &v171;
        if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say7SwiftUI17AccessibilityNodeCG_TG5TA_0, (&v117 - 4), v141))
        {

          ++v112;
          if (v116 == v111)
          {
            v1 = v125;
            LOBYTE(v108) = v132;
            goto LABEL_171;
          }
        }

        else
        {
          *&v171 = v142;
          BYTE8(v171) = v143;
          specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v171);

          LODWORD(v132) = 1;
          ++v112;
          if (v116 == v111)
          {
            v34 = v141;

            *(v125 + 3) = v34;

            goto LABEL_172;
          }
        }
      }

      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      v1 = v125;
      v108 = v132;
    }
  }

  v1 = v125;
  if ((v136 & 0x4000000000000000) != 0)
  {
    goto LABEL_177;
  }

LABEL_159:
  v111 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v111)
  {
    goto LABEL_160;
  }

LABEL_171:
  v34 = v141;

  *(v1 + 24) = v34;

  v35 = v124;
  if (v108)
  {
LABEL_172:
    DisplayList.Version.init(forUpdate:)();
    v35 = v171;
  }

LABEL_173:
  *&v171 = v34;
  *(&v171 + 1) = v35;
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v180);
}