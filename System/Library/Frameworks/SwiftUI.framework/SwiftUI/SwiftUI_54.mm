uint64_t static WheelPickerStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v17 = a2[2];
  v18 = v7;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v8 = a2[1];
  v15 = *a2;
  v16 = v8;
  v9 = type metadata accessor for WheelPicker(0, a3, a4, a4);
  v14 = v6;
  v13[0] = &type metadata for WheelPickerStyle;
  v13[1] = a3;
  v13[2] = &protocol witness table for WheelPickerStyle;
  v13[3] = a4;
  type metadata accessor for _PickerValue(255, v13);
  type metadata accessor for _GraphValue();
  LODWORD(v13[0]) = _GraphValue.value.getter();
  v11 = type metadata accessor for WheelPickerStyle.Body(0, a3, a4, v10);
  swift_getWitnessTable(protocol conformance descriptor for WheelPickerStyle.Body<A>, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for WheelPicker<A>, v9);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static WheelPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for WheelPicker(0, a3, a4, a4);
  v12 = v6;
  v11[0] = &type metadata for WheelPickerStyle;
  v11[1] = a3;
  v11[2] = &protocol witness table for WheelPickerStyle;
  v11[3] = a4;
  type metadata accessor for _PickerValue(255, v11);
  type metadata accessor for _GraphValue();
  LODWORD(v11[0]) = _GraphValue.value.getter();
  v9 = type metadata accessor for WheelPickerStyle.Body(0, a3, a4, v8);
  swift_getWitnessTable(protocol conformance descriptor for WheelPickerStyle.Body<A>, v9);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for WheelPicker<A>, v7);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t WheelPickerStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for WheelPickerStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for WheelPickerStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _PickerValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t WheelPickerStyle.Body.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  v17[0] = &type metadata for WheelPickerStyle;
  v17[1] = a2;
  v17[2] = &protocol witness table for WheelPickerStyle;
  v17[3] = a3;
  v12 = type metadata accessor for _PickerValue(0, v17);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v17 - v13;
  WheelPickerStyle.Body.base.getter(a2, a3, v17 - v13);
  v15 = *(v9 + 32);
  v15(v11, v14, v8);
  return (v15)(a5, v11, v8);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance WheelPickerStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for WheelPicker(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for WheelPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
    v16 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  return a1;
}

void *initializeWithTake for WheelPicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  return a1;
}

uint64_t *assignWithTake for WheelPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelPicker(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

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

void storeEnumTagSinglePayload for WheelPicker(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
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

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

uint64_t WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v39 = a3;
  v3 = *(a1 + 16);
  v37 = *(a1 + 24);
  v36 = type metadata accessor for PickerStyleConfiguration.Content(255, v3, v37, a2);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = v3;
  v7 = type metadata accessor for PickerStyleConfiguration.Label(255, v3, v37, v6);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  v10 = type metadata accessor for LabeledContent(255, v7, v8, v9);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v47[1] = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  v46[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v10, v47);
  v46[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v14 = MEMORY[0x1E697E858];
  v45[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v11, v46);
  v45[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable(v14, v12, v45);
  v16 = OpaqueTypeMetadata2;
  v35 = OpaqueTypeMetadata2;
  v44[1] = OpaqueTypeMetadata2;
  v44[2] = v12;
  v44[3] = OpaqueTypeConformance2;
  v44[4] = WitnessTable;
  v17 = type metadata accessor for GroupElementsOfContent();
  v18 = type metadata accessor for Group();
  v44[0] = swift_getWitnessTable(MEMORY[0x1E697FE48], v17);
  swift_getWitnessTable(MEMORY[0x1E6981600], v18, v44);
  v19 = type metadata accessor for _UnaryViewAdaptor();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  v26 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v34 - v28;
  v30 = v5;
  v31 = v37;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  swift_checkMetadataState();
  View.verticalStackOrientation()();
  v40 = v30;
  v41 = v31;
  v42 = v29;
  v43 = v38;
  _UnaryViewAdaptor.init(content:)();
  swift_getWitnessTable(MEMORY[0x1E697F380], v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v20 + 8);
  v32(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v32(v25, v19);
  return (*(v26 + 8))(v29, v35);
}

uint64_t closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a1;
  v56 = a2;
  v57 = a5;
  v54 = type metadata accessor for WheelPicker(0, a3, a4, a4);
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v8 = v45 - v7;
  v50 = a3;
  v51 = a4;
  v10 = type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, v9);
  v59 = v10;
  v60 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = v45 - v13;
  v16 = type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, v15);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  v19 = type metadata accessor for LabeledContent(255, v16, v17, v18);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v20 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(255);
  v21 = type metadata accessor for ModifiedContent();
  v59 = v10;
  v60 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeConformance2;
  v23 = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  v65[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v65[1] = v23;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v19, v65);
  v25 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v64[0] = WitnessTable;
  v64[1] = v25;
  v26 = MEMORY[0x1E697E858];
  v27 = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v64);
  v28 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v63[0] = v27;
  v63[1] = v28;
  v49 = v21;
  v47 = swift_getWitnessTable(v26, v21, v63);
  v45[1] = OpaqueTypeMetadata2;
  v59 = OpaqueTypeMetadata2;
  v60 = v21;
  v61 = OpaqueTypeConformance2;
  v62 = v47;
  v46 = type metadata accessor for GroupElementsOfContent();
  v29 = type metadata accessor for Group();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v45 - v35;
  (*(v12 + 16))(v14, v55, OpaqueTypeMetadata2, v34);
  v37 = v52;
  v38 = v8;
  v39 = v54;
  (*(v52 + 16))(v8, v56, v54);
  v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = v50;
  *(v41 + 24) = v42;
  (*(v37 + 32))(v41 + v40, v38, v39);
  Group.init<A, B>(subviews:transform:)();
  v58 = swift_getWitnessTable(MEMORY[0x1E697FE48], v46);
  swift_getWitnessTable(MEMORY[0x1E6981600], v29, &v58);
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = *(v30 + 8);
  v43(v32, v29);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v36, v29);
}

uint64_t closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v40 = a5;
  v39 = type metadata accessor for Binding();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v37 - v9;
  v12 = type metadata accessor for PickerStyleConfiguration(0, a3, a4, v11);
  PickerStyleConfiguration.$selection.getter(v12);
  v13 = _VariadicView_Children.tagIndex<A>(_:)(v10, a3, a4);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v8 + 8))(v10, v39);
  v41[8] = a1;
  v41[9] = v13;
  v41[10] = v15;
  v41[11] = v17;
  v42 = v19 & 1;
  v41[2] = a3;
  v41[3] = a4;
  v41[4] = v38;
  v21 = type metadata accessor for PickerStyleConfiguration.Label(0, a3, a4, v20);
  type metadata accessor for WheelPicker_Phone<DataSource>(0, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  v23 = v22;
  v24 = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in closure #1 in closure #1 in WheelPicker.body.getter, partial apply for closure #2 in closure #1 in closure #1 in WheelPicker.body.getter, v41, v21, v23, v46);
  v26 = type metadata accessor for LabeledContent(0, v21, v23, v25);
  v45[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v45[1] = v24;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v26, v45);
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  View.input<A>(_:)();
  (*(*(v26 - 8) + 8))(v46, v26);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v28 = type metadata accessor for ModifiedContent();
  v29 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v44[0] = WitnessTable;
  v44[1] = v29;
  v30 = MEMORY[0x1E697E858];
  v31 = swift_getWitnessTable(MEMORY[0x1E697E858], v28, v44);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(0);
  MEMORY[0x18D00A570](v46, v32, v28, v32, v31);

  (*(*(v28 - 8) + 8))(v47, v28);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(255);
  v33 = type metadata accessor for ModifiedContent();
  v34 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v43[0] = v31;
  v43[1] = v34;
  swift_getWitnessTable(v30, v33, v43);
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(*(v33 - 8) + 8);
  v35(v46, v33);
  static ViewBuilder.buildExpression<A>(_:)();
  return v35(v47, v33);
}

double closure #1 in closure #1 in closure #1 in WheelPicker.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  outlined init with copy of SubviewsCollection(a1, a6);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5 & 1;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5 & 1;
  type metadata accessor for [Int](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E62F8]);
  Binding.init(get:set:)();
  *(a6 + 64) = v17;
  result = *&v18;
  *(a6 + 72) = v18;
  return result;
}

void *closure #1 in closure #1 in closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t *a5@<X8>)
{
  type metadata accessor for [Int](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18CD63400;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4 & 1;
  type metadata accessor for Binding<Int?>(0);
  result = MEMORY[0x18D00ACC0](&v13);
  if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = v13;
  }

  *(v10 + 32) = v12;
  *a5 = v10;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in WheelPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for PickerStyleConfiguration.Label(0, a2, a3, v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type DataSource and conformance DataSource()
{
  result = lazy protocol witness table cache variable for type DataSource and conformance DataSource;
  if (!lazy protocol witness table cache variable for type DataSource and conformance DataSource)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataSource, &unk_1EFF94338, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DataSource and conformance DataSource);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v2>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>()
{
  result = lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>;
  if (!lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
    result = swift_getWitnessTable(protocol conformance descriptor for WheelPicker_Phone<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type WheelPickerRow<AnyHashable, Subview> and conformance WheelPickerRow<A, B>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697EC40]);
    v5[1] = lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WheelPickerRow<AnyHashable, Subview> and conformance WheelPickerRow<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier()
{
  result = lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier;
  if (!lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WheelPickerLabelsHiddenModifier, &unk_1EFF942C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier);
  }

  return result;
}

uint64_t protocol witness for CustomWheelPickerDataSource.rows(in:) in conformance DataSource@<X0>(uint64_t *a1@<X8>)
{
  result = specialized DataSource.rows(in:)();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for WheelPicker(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in closure #1 in WheelPicker.body.getter(a1, v9, v6, v7, a3);
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void type metadata accessor for Binding<Int?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Int?>)
  {
    type metadata accessor for [Int](255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Int?>);
    }
  }
}

void type metadata accessor for [Int](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t destroy for DataSource(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for DataSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v5;

  return a1;
}

uint64_t *assignWithCopy for DataSource(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;
  v6 = v4;

  a1[6] = a2[6];

  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for DataSource(uint64_t a1, uint64_t a2)
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

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for DataSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DataSource(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void type metadata accessor for WheelPickerRow<AnyHashable, Subview>()
{
  if (!lazy cache variable for type metadata for WheelPickerRow<AnyHashable, Subview>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E69B8];
    v4[1] = MEMORY[0x1E6981A60];
    v4[2] = MEMORY[0x1E69E69C0];
    v4[3] = MEMORY[0x1E6981A58];
    v2 = type metadata accessor for WheelPickerRow(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for WheelPickerRow<AnyHashable, Subview>);
    }
  }
}

uint64_t specialized DataSource.rows(in:)()
{
  outlined init with copy of SubviewsCollection(v0, v23);
  v1 = SubviewsCollection.endIndex.getter();
  result = SubviewsCollection.endIndex.getter();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = SubviewsCollection.endIndex.getter();
  if (v1 < 0 || result < v1)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = v22;
    while (1)
    {
      result = _VariadicView_Children.subscript.getter();
      if (v17 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v17 > 0x7FFFFFFF)
      {
        goto LABEL_15;
      }

      lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();

      AnyHashable.init<A>(_:)();
      outlined init with copy of Subview(v16, v20 + 8);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of Subview(v16);
      v21 = (v15 & 1) == 0;
      v22 = v4;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v6 + 1;
      v7 = v4 + 152 * v6;
      v8 = v19;
      *(v7 + 32) = v18;
      *(v7 + 48) = v8;
      v9 = v20[0];
      v10 = v20[1];
      v11 = v20[3];
      *(v7 + 96) = v20[2];
      *(v7 + 112) = v11;
      *(v7 + 64) = v9;
      *(v7 + 80) = v10;
      v12 = v20[4];
      v13 = v20[5];
      v14 = v20[6];
      *(v7 + 176) = v21;
      *(v7 + 144) = v13;
      *(v7 + 160) = v14;
      *(v7 + 128) = v12;
      v3 = SubviewsCollection.index(after:)(v3);
      if (!--v1)
      {
        outlined destroy of LazySequence<SubviewsCollection>(v23);
        return v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  outlined destroy of LazySequence<SubviewsCollection>(v23);
  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of LazySequence<SubviewsCollection>(uint64_t a1)
{
  type metadata accessor for WheelPicker_Phone<DataSource>(0, &lazy cache variable for type metadata for LazySequence<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, MEMORY[0x1E697F4E8], MEMORY[0x1E69E6A48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WheelPickerLabelsHiddenModifier>, lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier, &unk_1EFF942C0, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WheelPickerLabelsHiddenModifier>, lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier, &unk_1EFF942C0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-2 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))(&a1[v5 + 1] & v6, &a2[v5 + 1] & v6);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  return v3;
}

_BYTE *initializeWithTake for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TextInputSuggestionsModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
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

void storeEnumTagSinglePayload for TextInputSuggestionsModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *assignWithCopy for OnChangeOfSuggestionsModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnChangeOfSuggestionsModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnChangeOfSuggestionsModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *assignWithTake for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t TextInputSuggestionsModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  swift_getWitnessTable(protocol conformance descriptor for TextInputSuggestionsModifier<A>);
  v3 = type metadata accessor for _ViewModifier_Content();
  v27 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v28 = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  v38 = *(a1 + 24);
  v5 = v38;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v4, &v38);
  v37[0] = &type metadata for EnvironmentValues.TextInputSuggestions;
  v37[1] = v4;
  v37[2] = v28;
  v37[3] = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, v37);
  v6 = v3;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>(255);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v32 = v27;
  v33 = v5;
  v34 = v29;
  v19 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6, v16);
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.TextInputSuggestions, partial apply for closure #1 in TextInputSuggestionsModifier.body(content:), v31, v6, &type metadata for EnvironmentValues.TextInputSuggestions, v4, v19);
  v36[0] = v19;
  v36[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v36);
  lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
  View.input<A>(_:)();
  (*(v8 + 8))(v10, v7);
  HasTextInput = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>, MEMORY[0x1E697FD30]);
  v35[0] = v21;
  v35[1] = HasTextInput;
  swift_getWitnessTable(v20, v11, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v12 + 8);
  v23(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v18, v11);
}

uint64_t closure #1 in TextInputSuggestionsModifier.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  if (*a1 == 1)
  {
    type metadata accessor for TextInputSuggestionsModifier(0, a2, a3, v18);
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    (*(v7 + 8))(v12, a2);
    (*(v7 + 32))(v16, v9, a2);
    (*(v7 + 56))(v16, 0, 1, a2);
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, a2);
  }

  static ToolbarContentBuilder.buildIf<A>(_:)(v16, v20);
  v21 = *(v14 + 8);
  v21(v16, v13);
  v24 = a3;
  swift_getWitnessTable(MEMORY[0x1E6982090], v13, &v24, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v20, v13);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasTextInputSuggestions(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t TextInputSuggestions.platformItemContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v17[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>(255, a3);
  v5 = *(a1 + 24);
  v18 = v4;
  v19 = v6;
  v20 = v5;
  v21 = &protocol witness table for MergePlatformItemsView<A>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v14 = swift_checkMetadataState();
  View.map<A>(_:)();
  v18 = v4;
  v19 = v14;
  v20 = v5;
  v21 = &protocol witness table for MergePlatformItemsView<A>;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, OpaqueTypeMetadata2);
}

void closure #1 in TextInputSuggestions.platformItemContent.getter(uint64_t a1@<X8>)
{
  MappedViewElement.view.getter();
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>(0, v2);
  v4 = (a1 + *(v3 + 36));
  *v4 = closure #1 in View.forcePlatformItem();
  v4[1] = 0;
}

uint64_t static OnChangeOfSuggestionsModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = _GraphInputs.pushStyleContext<A>(_:)();
  a3(v4, v6);
  _ViewListOutputs.makeAttribute(inputs:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_beginAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  return outlined destroy of _ViewListInputs(v6);
}

void OnChangeOfSuggestionsModifier.UpdateBinding.updateValue()()
{
  v1 = v0;
  if (*(v0 + 16) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 16) = *AGGraphGetValue() >> 1;
    *(v0 + 24) = 0xFFFFFFFFLL;
    *(v0 + 32) = 0;
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = 2;
  v5 = (*(v4 + 16))(&v15, v3, v4) == 0;
  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = *(v0 + 12);
  if (!AGGraphGetOutputValue() || v6 == 2 || ((v5 ^ v6)) && (UpdateCycleDetector.dispatch(label:isDebug:)())
  {
    AGGraphClearUpdate();
    v7 = AGGraphGetValue();
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);

    AGGraphSetUpdate();
    LOBYTE(v12[0]) = 17;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10;
    *(v11 + 33) = v5;

    static Update.enqueueAction(reason:_:)();
  }

  *(v1 + 12) = v5;
}

void *closure #2 in OnChangeOfSuggestionsModifier.UpdateBinding.updateValue()(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  type metadata accessor for Binding<Bool?>(0);
  result = MEMORY[0x18D00ACC0](&v6);
  if (v6 == 2 || ((v6 ^ a4) & 1) == 0)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding()
{
  result = lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding;
  if (!lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnChangeOfSuggestionsModifier.UpdateBinding, &unk_1EFF94510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding);
  }

  return result;
}

void type metadata accessor for Binding<Bool?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<Bool?>)
  {
    type metadata accessor for Bool?(255, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<Bool?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.TextInputSuggestions, &type metadata for EnvironmentValues.TextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.TextInputSuggestions, &type metadata for EnvironmentValues.TextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HasTextInputSuggestions>)
  {
    lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<HasTextInputSuggestions>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions()
{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasTextInputSuggestions, &type metadata for HasTextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasTextInputSuggestions, &type metadata for HasTextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasTextInputSuggestions, &type metadata for HasTextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasTextInputSuggestions, &type metadata for HasTextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HasTextInputSuggestions, &type metadata for HasTextInputSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OnChangeOfSuggestionsModifier.UpdateBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OnChangeOfSuggestionsModifier.UpdateBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.TextInputSuggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  *(a1 + 8) = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSbTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = a3;
  result = a1(&var1, &v6);
  if (!v4)
  {
    return var1;
  }

  __break(1u);
  return result;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    result = 0;
    v7 = 256;
  }

  else
  {
    v8 = a3;
    result = a1(&v6, &v8);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      HIBYTE(v7) = 0;
      return v6;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (!*(v1 + 3))
  {
    return 0;
  }

  v4 = v1[5];
  v13 = v1[4];
  v14 = v4;
  v15 = v1[6];
  v5 = v1[1];
  v9 = *v1;
  v10 = v5;
  v6 = v1[3];
  v11 = v1[2];
  v12 = v6;
  v16[0] = v9;
  v16[1] = v5;
  v16[2] = v11;
  v16[3] = v6;
  v16[4] = v13;
  v16[5] = v4;
  v16[6] = v15;
  outlined init with copy of SwipeActions.Configuration(v16, v8);
  a1(&v17, &v9);
  v8[4] = v13;
  v8[5] = v14;
  v8[6] = v15;
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  if (v2)
  {
    result = outlined destroy of SwipeActions.Configuration(v8);
    __break(1u);
  }

  else
  {
    outlined destroy of SwipeActions.Configuration(v8);
    return v17;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF5UIKit24UICellConfigurationStateV_s5NeverOAD012UIBackgroundE0VTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69DC0B8];
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  outlined init with copy of TextSelection??(v5, v19 - v13, &lazy cache variable for type metadata for UICellConfigurationState?, v11);
  v15 = 1;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v16 = a3;
LABEL_5:
    v17 = type metadata accessor for UIBackgroundConfiguration();
    return (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = a3;
  v20(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v15 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7BindingVySbG_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4)
  {
    v7[0] = a3;
    v7[1] = a4;
    v8 = a5 & 1;

    (a1)(&v9, v7);
    if (v5)
    {

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23RootEnvironmentModifier33_4475FD12FD59DEBA453321BD91F6EA04LLV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6, &lazy cache variable for type metadata for RootEnvironmentModifier?, &type metadata for RootEnvironmentModifier);
  if (v7 == 1)
  {
    return 2;
  }

  outlined init with take of RootEnvironmentModifier(v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = outlined destroy of RootEnvironmentModifier(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of RootEnvironmentModifier(v5);
    return v8;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI21DropOntoConfigurationV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6, &lazy cache variable for type metadata for DropOntoConfiguration?, &type metadata for DropOntoConfiguration);
  if (!*&v6[0])
  {
    return 2;
  }

  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  a1(&v7, v5);
  if (v2)
  {
    result = outlined destroy of DropOntoConfiguration(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of DropOntoConfiguration(v5);
    return v7;
  }

  return result;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI24AccessibilitySliderValueV_s5NeverOytTB5(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a3)
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v11 = a6;
    v12 = a3;
    v13 = a4;
    v14 = a5;
    a1(&v25, &v21);
    if (v6)
    {
      v18 = v22;
      v19 = v23;
      v20 = v24;

      __break(1u);
    }

    else
    {
      v15 = v22;
      v16 = v23;
      v17 = v24;
    }
  }
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI16BridgedListStateVG_s5NeverOytTg5Tm(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    return ((a3 & 0x100000000uLL) >> 32);
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v3)
  {
    return ((a3 & 0x100000000uLL) >> 32);
  }

  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI13TextSelectionVSg_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  type metadata accessor for TextSelection?(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  outlined init with copy of TextSelection??(v1, &v12 - v9, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  outlined init with take of Binding<SearchFieldState>(v10, v7, type metadata accessor for TextSelection?);
  v13(&v14, v7);
  if (v2)
  {
    result = outlined destroy of SearchFieldState(v7, type metadata accessor for TextSelection?);
    __break(1u);
  }

  else
  {
    outlined destroy of SearchFieldState(v7, type metadata accessor for TextSelection?);
    return v14;
  }

  return result;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI16PreferenceValuesVG_s5NeverOytSgTg5(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = BYTE4(a3);
  if ((a3 & 0x100000000) != 0)
  {
    v5 = 0;
LABEL_5:
    v8 = v4 & 1;
    return (v5 | ((v4 & 1) << 8));
  }

  v7 = a3;
  result = a1(&v9, &v7);
  if (!v3)
  {
    v5 = v9;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static FocusStore.Key.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for FocusStore.Entry(0, a1, a2, a3);
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

uint64_t (*FocusStoreLocation.wasRead.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(*v1 + class metadata base offset for FocusStoreLocation + 72));
  return FocusStoreLocation.wasRead.modify;
}

uint64_t FocusStoreLocation.__ivar_destroyer()
{
  v1 = *v0;

  swift_weakDestroy();
  v2 = *(v1 + class metadata base offset for FocusStoreLocation);
  (*(*(v2 - 8) + 8))(&v0[*(*v0 + class metadata base offset for FocusStoreLocation + 32)], v2);
  v3 = *(*v0 + class metadata base offset for FocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + class metadata base offset for FocusStoreLocation + 56);
  type metadata accessor for FocusStore.Entry(255, v2, *(v1 + class metadata base offset for FocusStoreLocation + 8), v6);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(&v0[v5], v7);
}

double sub_18C191738(uint64_t a1)
{

  return result;
}

uint64_t assignWithTake for FocusStore(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusStore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FocusStore.Entry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(*(type metadata accessor for AttributedString() - 8) + 80);
  v7 = *(v5 + 80);
  *a1 = *a2;
  v8 = (v7 | v6) & 0xF8 | 7u;
  return  + ((v8 + 16) & ~v8);
}

uint64_t assignWithCopy for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8;
  v13 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v11 + 8) & v13);
  v15 = ((v8 + v11 + 8) & v13);
  if (v14 == v15)
  {
    return a1;
  }

  v16 = v9;
  v17 = *(v9 - 8);
  v18 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v10 + 64);
  v51 = v19;
  if (((v11 + 16) & v18) + ((v19 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = ((v11 + 16) & v18) + ((v19 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v21 = v14[v20];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_19;
      }

      v24 = *v14;
    }

    else if (v23 == 2)
    {
      v24 = *v14;
    }

    else if (v23 == 3)
    {
      v24 = *v14 | (v14[2] << 16);
    }

    else
    {
      v24 = *v14;
    }

    v25 = (v24 | (v22 << (8 * v20))) + 2;
    v21 = v24 + 2;
    if (v20 < 4)
    {
      v21 = v25;
    }
  }

LABEL_19:
  v26 = ~v11;
  if (v21 == 1)
  {
    v50 = *(v9 - 8);
    v27 = a1;
    v28 = v9;

    v26 = ~v11;
    v18 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
    v16 = v28;
    a1 = v27;
    v17 = v50;
    (*(v50 + 8))((v11 + ((((v12 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11, v16);
  }

  else
  {
    swift_weakDestroy();
    swift_weakDestroy();
  }

  v29 = v15[v20];
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v20 <= 3)
    {
      v31 = v20;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *v15;
      }

      else if (v31 == 3)
      {
        v32 = *v15 | (v15[2] << 16);
      }

      else
      {
        v32 = *v15;
      }

LABEL_34:
      v33 = (v32 | (v30 << (8 * v20))) + 2;
      v29 = v32 + 2;
      if (v20 < 4)
      {
        v29 = v33;
      }

      goto LABEL_36;
    }

    if (v31)
    {
      v32 = *v15;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v29 == 1)
  {
    *v14 = *v15;
    v34 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = ((v34 + v12) & v18);
    v37 = ((v35 + v12) & v18);
    *v36 = *v37;
    v36[1] = v37[1];
    v36[2] = v37[2];
    v36[3] = v37[3];
    v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (v37 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = v11 + 5;
    v42 = (v11 + 5 + v38) & v26;
    v43 = (v41 + v39) & v26;
    v44 = *(v17 + 16);

    v44(v42, v43, v16);
    *(v51 + v42) = *(v51 + v43);
    v45 = (v51 + v42) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = (v51 + v43) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *(v46 + 4);
    *(v45 + 8) = *(v46 + 8);
    *(v45 + 4) = v47;
    v48 = 1;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    v48 = 0;
  }

  v14[v20] = v48;
  return a1;
}

void *initializeBufferWithCopyOfBuffer for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      type metadata accessor for Binding<SearchFieldState>(0);
      v8 = *(v7 + 32);
      v9 = a1 + v8;
      v10 = a2 + v8;
      *v9 = *(a2 + v8);
      v9[1] = *(a2 + v8 + 1);
      *(v9 + 1) = *(a2 + v8 + 2);
      v9[8] = *(a2 + v8 + 8);
      *(v9 + 1) = *(a2 + v8 + 4);
      v11 = type metadata accessor for SearchFieldState(0);
      v12 = v11[9];
      v13 = type metadata accessor for AttributedString();
      v14 = *(*(v13 - 8) + 16);

      v14(&v9[v12], &v10[v12], v13);
      v9[v11[10]] = v10[v11[10]];
      v15 = v11[11];
      v16 = &v9[v15];
      v17 = &v10[v15];
      v16[4] = v17[4];
      *v16 = *v17;
    }

    else
    {
      swift_weakCopyInit();
      swift_weakCopyInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithCopy for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      type metadata accessor for Binding<SearchFieldState>(0);
      v6 = *(v5 + 32);
      v7 = a1 + v6;
      v8 = a2 + v6;
      *v7 = *(a2 + v6);
      v7[1] = *(a2 + v6 + 1);
      v7[2] = *(a2 + v6 + 2);
      v7[3] = *(a2 + v6 + 3);
      LODWORD(v6) = *(a2 + v6 + 4);
      v7[8] = v8[8];
      *(v7 + 1) = v6;
      v9 = type metadata accessor for SearchFieldState(0);
      v10 = v9[9];
      v11 = type metadata accessor for AttributedString();
      v12 = *(*(v11 - 8) + 16);

      v12(&v7[v10], &v8[v10], v11);
      v7[v9[10]] = v8[v9[10]];
      v13 = v9[11];
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = v15[4];
      *v14 = *v15;
      v14[4] = v16;
    }

    else
    {
      swift_weakCopyInit();
      swift_weakCopyInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithTake for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    if (swift_getEnumCaseMultiPayload() == 1)
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
      (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
      v8[v10[10]] = v9[v10[10]];
      v13 = v10[11];
      v14 = &v8[v13];
      v15 = &v9[v13];
      v14[4] = v15[4];
      *v14 = *v15;
    }

    else
    {
      swift_weakTakeInit();
      swift_weakTakeInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance FocusStoreLocation<A>(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = FocusStoreLocation.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance FocusStoreLocation<A>;
}

uint64_t outlined init with copy of TextSelection??(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Binding<SearchFieldState>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double NavigationSelectionHost.selectionSeedByStackKey.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

uint64_t NavigationSelectionHost.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7SwiftUI23NavigationSelectionHost___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t NavigationSeedHost.seeds.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost, protocol conformance descriptor for NavigationSeedHost);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void NavigationSeedHost.seeds.setter(unint64_t a1)
{
  if (*(v1 + 16) == a1 && *(v1 + 20) == HIDWORD(a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost, protocol conformance descriptor for NavigationSeedHost);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t NavigationSeedHost.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18NavigationSeedHost___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UIHostingController.runTest(_:options:)(Swift::String _, Swift::OpaquePointer options)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (specialized UIHostingController.testBridge.getter())
  {
    v5 = ++static PPTTestCase.lastTestSeed;
    swift_weakInit();
    v7 = countAndFlagsBits;
    v8 = object;
    rawValue = options._rawValue;
    v10 = v5;

    PPTTestBridge.testCase.setter(v6);
  }
}

double static ListRowInsetsTraitKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t View.listRowInsets(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3 & 1;
  return MEMORY[0x18D00A570](v6, a4, &type metadata for ListRowInsetTransformerModifier, a5);
}

uint64_t static ListRowInsetTransformerModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  _ViewListInputs.traits.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _ViewListInputs.traits.setter();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t ListRowInsetTransformerModifier.TransformTraits.value.getter@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v4 = *AGGraphGetValue();
  }

  ViewTraitCollection.listRowInsets.getter();
  if (*AGGraphGetValue())
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 2) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 4) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 8) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  ViewTraitCollection.subscript.setter();
  result = ViewTraitCollection.subscript.setter();
  *a2 = v4;
  return result;
}

double EnvironmentValues.listRowInsets.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits()
{
  result = lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits;
  if (!lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListRowInsetTransformerModifier.TransformTraits, &unk_1EFF94990, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits);
  }

  return result;
}

double protocol witness for BadgedViewStyle.makeBody(configuration:) in conformance MultimodalBadgedViewStyle@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;

  return outlined copy of BadgeLabel?(v3, v4, v5);
}

__n128 BadgedViewStyleView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v32 = *v1;
  v33 = *(v1 + 8);
  outlined copy of BadgeLabel?(*v1, v33, v3);
  v8 = static Alignment.center.getter();
  v10 = v9;
  v34 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAGyAA5Badge33_582D9E508E536DEAC67BC3C87B3CFE52LLV_AItGGtGGAA31AccessibilityAttachmentModifierVGSgWOi0_(&v87);
  }

  else
  {
    v11 = static VerticalAlignment.center.getter();
    closure #1 in closure #1 in BadgedViewStyleView.body.getter(__src);
    v40 = __src[4];
    v41[0] = __src[5];
    *(v41 + 9) = *(&__src[5] + 9);
    v36 = __src[0];
    v37 = __src[1];
    v38 = __src[2];
    v39 = __src[3];
    v42[0] = __src[0];
    v42[1] = __src[1];
    v42[2] = __src[2];
    v42[3] = __src[3];
    v42[4] = __src[4];
    v43[0] = __src[5];
    *(v43 + 9) = *(&__src[5] + 9);
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v36, v47, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>);
    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(v42, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>);
    *&v35[55] = v39;
    *&v35[71] = v40;
    *&v35[87] = v41[0];
    *&v35[7] = v36;
    *&v35[23] = v37;
    *&v35[39] = v38;
    *&v45[97] = *(v41 + 9);
    *&v45[49] = *&v35[48];
    *&v45[65] = *&v35[64];
    *&v45[33] = *&v35[32];
    *&v45[17] = *&v35[16];
    *&v45[1] = *v35;
    v44 = v11;
    v45[0] = 0;
    *&v45[81] = *&v35[80];
    AccessibilityProperties.init()();
    *&v49 = 0x400000004;
    BYTE8(v49) = 0;
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(v47);
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    memcpy((v12 + 16), __src, 0x128uLL);
    v59 = *&v45[80];
    v60 = *&v45[96];
    v55 = *&v45[16];
    v56 = *&v45[32];
    v58 = *&v45[64];
    v57 = *&v45[48];
    v54 = *v45;
    v53 = v44;
    v70 = *&v45[80];
    v71 = *&v45[96];
    v66 = *&v45[16];
    v67 = *&v45[32];
    LOBYTE(v61) = v45[112];
    v69 = *&v45[64];
    v68 = *&v45[48];
    v65 = *v45;
    v64 = v44;
    *&v72 = v61;
    *(&v72 + 1) = v12;
    v73 = 0;
    swift_beginAccess();
    closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v12 + 16, 0x80000, 0x80000);
    v48[2] = v59;
    v49 = v60;
    v47[2] = v55;
    v47[3] = v56;
    v48[0] = v57;
    v48[1] = v58;
    v47[0] = v53;
    v47[1] = v54;
    v50 = v61;
    v51 = v12;
    v52 = 0;
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v44, __src, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v64, __src, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>);
    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(v47, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>);
    swift_beginAccess();

    closure #1 in ModifiedContent<>.accessibilityIdentifier(_:placement:)(v12 + 16, 0x6567646162, 0xE500000000000000, 2);
    swift_endAccess();

    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v44, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    __src[6] = v70;
    __src[7] = v71;
    __src[8] = v72;
    *&__src[9] = v73;
    __src[2] = v66;
    __src[3] = v67;
    __src[4] = v68;
    __src[5] = v69;
    __src[0] = v64;
    __src[1] = v65;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v93 = __src[6];
    v94 = __src[7];
    v95 = __src[8];
    v96 = *&__src[9];
    v89 = __src[2];
    v90 = __src[3];
    v91 = __src[4];
    v92 = __src[5];
    v87 = __src[0];
    v88 = __src[1];
  }

  v59 = v93;
  v60 = v94;
  v61 = v95;
  v55 = v89;
  v56 = v90;
  v57 = v91;
  v58 = v92;
  v53 = v87;
  v54 = v88;
  v82 = v93;
  v83 = v94;
  v78 = v89;
  v79 = v90;
  *&v62 = v96;
  *(&v62 + 1) = v8;
  v80 = v91;
  v81 = v92;
  v76 = v87;
  v77 = v88;
  v84 = v95;
  v85 = v62;
  v70 = v93;
  v71 = v94;
  v72 = v95;
  v66 = v89;
  v67 = v90;
  v63 = v10;
  v86 = v10;
  v68 = v91;
  v69 = v92;
  v64 = v87;
  v65 = v88;
  v73 = v96;
  v74 = v8;
  v75 = v10;
  outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v53, __src, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
  outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v64, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
  v13 = v6;
  LOBYTE(v47[0]) = v6;
  *(&v47[0] + 1) = v7;
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v30 = *(&__src[0] + 1);
  v31 = *&__src[0];
  v14 = __src[1];
  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || v34 == 0x1FFFFFFFELL)
  {
    LOBYTE(__src[0]) = v13;
    *(&__src[0] + 1) = v7;
    State.wrappedValue.getter();
    outlined consume of BadgeLabel?(v32, v33, v3);
    v15 = v47[0];
  }

  else
  {
    outlined consume of BadgeLabel?(v32, v33, v3);
    v15 = 1;
  }

  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || v34 == 0x1FFFFFFFELL)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
  }

  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21 & 1;
  outlined copy of Text.Storage(v18, v19, v21 & 1);

  AccessibilityValueStorage.init(description:)();
  AccessibilityProperties.init()();
  outlined destroy of AccessibilityValueStorage?(v48);
  outlined init with copy of AccessibilityValueStorage(&v44, v48);
  static AccessibilityAttachment.properties(_:)();
  outlined consume of Text.Storage(v18, v20, v22);

  outlined destroy of AccessibilityValueStorage(&v44);
  outlined destroy of AccessibilityProperties(v47);
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x128uLL);
  v24 = v85;
  *(a1 + 128) = v84;
  *(a1 + 144) = v24;
  v25 = v86;
  v26 = v81;
  *(a1 + 64) = v80;
  *(a1 + 80) = v26;
  v27 = v83;
  *(a1 + 96) = v82;
  *(a1 + 112) = v27;
  v28 = v77;
  *a1 = v76;
  *(a1 + 16) = v28;
  result = v79;
  *(a1 + 32) = v78;
  *(a1 + 48) = result;
  *(a1 + 160) = v25;
  *(a1 + 168) = v31;
  *(a1 + 176) = v30;
  *(a1 + 184) = v14;
  *(a1 + 192) = v15;
  *(a1 + 200) = 0x403B000000000000;
  *(a1 + 208) = v23;
  *(a1 + 216) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in BadgedViewStyleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v11[0] = 0;
  closure #1 in closure #1 in closure #1 in BadgedViewStyleView.body.getter(&v24);
  v17 = *&v25[16];
  v18 = *&v25[32];
  v19 = v25[48];
  v15 = v24;
  v16 = *v25;
  v20[2] = *&v25[16];
  v20[3] = *&v25[32];
  v21 = v25[48];
  v20[0] = v24;
  v20[1] = *v25;
  outlined init with copy of TupleView<(Badge, Spacer)>(&v15, &v22);
  outlined destroy of TupleView<(Badge, Spacer)>(v20);
  v14[71] = v19;
  *&v14[55] = v18;
  *&v14[39] = v17;
  *&v14[23] = v16;
  *&v14[7] = v15;
  v13 = 0;
  v4 = *&v14[64];
  *&v23[65] = *&v14[64];
  *(a1 + 8) = 0;
  v5 = v11[0];
  v22 = v3;
  v23[0] = v11[0];
  *&v23[1] = *v14;
  *&v23[49] = *&v14[48];
  *&v23[33] = *&v14[32];
  *&v23[17] = *&v14[16];
  *&v12[23] = *v23;
  *&v12[7] = v3;
  *&v12[80] = *&v23[57];
  *&v12[71] = *&v23[48];
  *&v12[55] = *&v23[32];
  *&v12[39] = *&v23[16];
  *a1 = 0;
  v6 = *v12;
  *(a1 + 25) = *&v12[16];
  *(a1 + 9) = v6;
  v7 = *&v12[32];
  v8 = *&v12[48];
  v9 = *&v12[64];
  *(a1 + 89) = *&v12[80];
  *(a1 + 73) = v9;
  *(a1 + 57) = v8;
  *(a1 + 41) = v7;
  v24 = v3;
  v25[0] = v5;
  *&v25[1] = *v14;
  v27 = v4;
  v26 = *&v14[48];
  *&v25[33] = *&v14[32];
  *&v25[17] = *&v14[16];
  outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v22, v11, type metadata accessor for VStack<TupleView<(Badge, Spacer)>>);
  return outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v24, type metadata accessor for VStack<TupleView<(Badge, Spacer)>>);
}

uint64_t closure #1 in closure #1 in closure #1 in BadgedViewStyleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for standardSpacing != -1)
  {
    v6 = KeyPath;
    swift_once();
    KeyPath = v6;
  }

  v3 = *&static ClarityUIMetrics.standardSpacing + -3.0;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = xmmword_18CD6AC60;
  *(a1 + 40) = 0x401C000000000000;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = KeyPath;
  outlined copy of Environment<Selector?>.Content(KeyPath, 0);

  return outlined consume of Environment<Selector?>.Content(v4, 0);
}

void key path getter for EnvironmentValues.areMultimodalBadgesEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.areMultimodalBadgesEnabled : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double Badge.body.getter@<D0>(uint64_t a2@<X8>)
{
  v44 = *(v2 + 24);
  v45 = *(v2 + 16);
  v43 = *(v2 + 48);
  v42 = static VerticalAlignment.center.getter();
  closure #1 in Badge.body.getter(&v46);
  v40 = v47;
  v41 = v46;
  v4 = v49;
  v38 = v50;
  v39 = v48;
  v53 = 1;
  v52 = v49;
  v37 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v51 = 0;
  v36 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v46) = 0;
  v35 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v33 = static Color.white.getter();
  v32 = swift_getKeyPath();
  static Color.blue.getter();
  v21 = Color.opacity(_:)();

  v22 = static Edge.Set.all.getter();
  static Material.thin.getter();
  v23 = v46;
  v24 = v47;
  v25 = HIDWORD(v47);
  v26 = static Edge.Set.all.getter();
  outlined copy of Material.ID(v23, v24);
  outlined consume of Material.ID(v23, v24);
  v27 = static Alignment.center.getter();
  v29 = v28;
  if (one-time initialization token for clarityUIButtonShadowColor != -1)
  {
    swift_once();
  }

  v30 = static Color.clarityUIButtonShadowColor;
  *a2 = v42;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v41;
  *(a2 + 32) = v40;
  *(a2 + 40) = v39;
  *(a2 + 48) = v4;
  *(a2 + 56) = v38;
  *(a2 + 64) = v37;
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  *(a2 + 88) = v10;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = v36;
  *(a2 + 120) = v14;
  *(a2 + 128) = v16;
  *(a2 + 136) = v18;
  *(a2 + 144) = v20;
  *(a2 + 152) = 0;
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = v35;
  *(a2 + 176) = v32;
  *(a2 + 184) = v33;
  *(a2 + 192) = v21;
  *(a2 + 200) = v22;
  *(a2 + 208) = v23;
  *(a2 + 216) = v24;
  *(a2 + 220) = v25;
  *(a2 + 224) = v26;
  *(a2 + 225) = v43;
  *(a2 + 226) = 256;
  *(a2 + 232) = v43 | 0x3FF0000000000000;
  *(a2 + 240) = v30;
  *(a2 + 248) = xmmword_18CD6AC70;
  *(a2 + 264) = 0x4008000000000000;
  *(a2 + 272) = v27;
  *(a2 + 280) = v29;
  *(a2 + 288) = v45;
  *(a2 + 296) = v44;

  return result;
}

uint64_t closure #1 in Badge.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Image.init(systemName:)(0x6461622E6C6C6562, 0xEF6C6C69662E6567);
  v3 = v2;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v10 = v9 & 1;
  *(a1 + 24) = v9 & 1;
  *(a1 + 32) = v11;

  outlined copy of Text.Storage(v6, v8, v10);

  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t static BadgeInfoWriterModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v3 = a2[1];
  v4 = *(a2 + 6);
  v5 = *(a2 + 14);
  v6 = *(a2 + 15);
  v7 = *(a2 + 8);
  v8 = *(a2 + 18);
  v9 = *(a2 + 76);
  v12 = *a2;
  v13 = v3;
  v14 = a2[2];
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  a3(a1, &v12);
  v10 = _ViewInputs.position.getter();
  v21 = 1;
  *&v12 = __PAIR64__(v10, v8);
  DWORD2(v12) = v6;
  v13 = 0u;
  v14 = 0u;
  LOBYTE(v15) = 1;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static BadgeInfoWriterModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t MultimodalBadgeInfoProvider.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  AGGraphGetValue();
  v7 = MEMORY[0x18D00B390]();
  v8 = v4;
  lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
  AnyHashable.init<A>(_:)();
  v10 = 0;
  AGGraphGetValue();

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v9);
  if ((*(v0 + 48) & 1) != 0 || (v12.origin.x = v2, v12.origin.y = v3, v12.size.width = v7, v12.size.height = v8, result = CGRectEqualToRect(*(v0 + 16), v12), (result & 1) == 0))
  {
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MultimodalBadgeInfo>, &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    *(v6 + 32) = v2;
    *(v6 + 40) = v3;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
    AGGraphSetOutputValue();
  }

  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = 0;
  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance MultimodalBadgeInfoKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static MultimodalBadgeInfoKey.defaultValue;

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalBadgeInfoKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  v3 = *a1;
  a2(&v6);
  v4 = v6;
  v6 = v3;
  result = specialized Array.append<A>(contentsOf:)(v4);
  *a1 = v6;
  return result;
}

double outlined copy of BadgeLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of BadgeLabel(a1, a2, a3);
  }

  return result;
}

double outlined copy of BadgeLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double destroy for BadgedViewStyleView(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of BadgeLabel(*a1, *(a1 + 8), v2);
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));

  return result;
}

uint64_t outlined consume of BadgeLabel(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for BadgedViewStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    outlined copy of BadgeLabel(*a2, v7, v4);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v8;
  }

  v9 = a2[4];
  v10 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithCopy for BadgedViewStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 16) >> 1 == 0xFFFFFFFFLL)
  {
    if (v5 == 0x1FFFFFFFELL)
    {
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v6;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      outlined copy of BadgeLabel(*a2, v9, v4);
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v4;
      *(a1 + 24) = v10;
    }
  }

  else if (v5 == 0x1FFFFFFFELL)
  {
    outlined destroy of BadgeLabel(a1);
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    outlined copy of BadgeLabel(*a2, v12, v4);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v4;
    *(a1 + 24) = v13;
    outlined consume of BadgeLabel(v14, v15, v16);
  }

  v17 = a2[4];
  v18 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithTake for BadgedViewStyleView(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    if (v5 >> 1 != 0xFFFFFFFF)
    {
      v7 = *(a2 + 24);
      v8 = *a1;
      v9 = *(a1 + 8);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      outlined consume of BadgeLabel(v8, v9, v4);
      goto LABEL_6;
    }

    outlined destroy of BadgeLabel(a1);
  }

  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
LABEL_6:
  v10 = *(a2 + 40);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for BadgedViewStyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16) >> 1;
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

uint64_t storeEnumTagSinglePayload for BadgedViewStyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ~a2;
      *(result + 24) = 0;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>, lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgedViewStyleView and conformance BadgedViewStyleView()
{
  result = lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView;
  if (!lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BadgedViewStyleView, &unk_1EFF94AF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>, lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static NeedsTopPaddingForGridBadgesModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, unint64_t *)@<X2>, void *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v23 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 6);
  v27 = *(a2 + 28);
  v28 = *(a2 + 9);
  v8 = a2[5];
  v25 = a2[6];
  v9 = *(a2 + 15);
  v26 = *(a2 + 14);
  v10 = a2[8];
  v11 = *(a2 + 18);
  v20 = *(a2 + 76);
  v12 = one-time initialization token for multimodalListGridBadgeInfos;

  if (v12 != -1)
  {
    swift_once();
  }

  v29[0] = static CachedEnvironment.ID.multimodalListGridBadgeInfos;
  swift_beginAccess();
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  v30 = v5;
  v31 = v4;
  v32 = v6;
  v33 = v7;
  v34 = v27;
  v35 = v28;
  v36 = v8;
  v37 = v25;
  v38 = v26;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v20;
  a3(v29, v13, &v30);
  v22 = v29[0];
  v14 = v29[1];
  v30 = v5;
  v31 = v4;
  v32 = v6;
  v33 = v7;
  v34 = v27;
  v35 = v28;
  v36 = v8;
  v37 = v25;
  v38 = v26;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v20;
  v15 = _ViewInputs.position.getter();
  type metadata accessor for GraphHost();
  v16 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v17 = *(v16 + 64);

  v30 = __PAIR64__(v19, v23);
  v31 = __PAIR64__(v11, v15);
  v32 = __PAIR64__(v7, v9);
  v33 = v17;
  v34 = 0xFFFFFFFFLL;
  LOBYTE(v35) = 0;
  LODWORD(v36) = 0;
  BYTE4(v36) = 2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding();
  Attribute.init<A>(body:value:flags:update:)();
  result = AGGraphSetFlags();
  *a4 = v22;
  a4[1] = v14;
  return result;
}

void GridBadgeInfosActionBinding.updateValue()()
{
  if (*(v0 + 40) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 40) = *AGGraphGetValue() >> 1;
    *(v0 + 28) = 0xFFFFFFFFLL;
    *(v0 + 36) = 0;
    *(v0 + 44) = 2;
  }

  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  v1 = *AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  Value = AGGraphGetValue();
  v31 = *(Value + 8);
  v32 = *Value;
  v3 = AGGraphGetValue();
  v4 = v3[1];
  v37 = *v3;
  v38 = v4;
  v5 = MEMORY[0x18D00B390]();
  v29 = v6;
  v30 = v5;
  AGGraphGetValue();
  v7 = *(v1 + 16);
  if (v7)
  {

    v8 = 0;
    v9 = (v1 + 56);
    while (v8 < *(v1 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      v36.origin.x = v32;
      v36.origin.y = v31;
      v36.size.width = v30;
      v36.size.height = v29;
      lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
      AnyHashable.init<A>(_:)();
      v35 = 0;
      CGRect.convert(to:transform:)();
      outlined destroy of CoordinateSpace(v34);
      v39.origin.x = v13;
      rect = v12;
      v39.origin.y = v12;
      v14 = v11;
      v39.size.width = v11;
      v15 = v10;
      v39.size.height = v10;
      MaxY = CGRectGetMaxY(v39);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      if (CGRectGetMinY(v36) < MaxY)
      {
        v40.origin.x = v13;
        v40.origin.y = rect;
        v40.size.width = v14;
        v40.size.height = v15;
        v21 = CGRectGetMaxY(v40);
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        if (v21 <= CGRectGetMaxY(v41))
        {

          v22 = 1;
          goto LABEL_12;
        }
      }

      ++v8;
      v9 += 4;
      if (v7 == v8)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v22 = 0;
LABEL_12:
    v23 = *(v0 + 44);
    if (v23 == 2 || ((v22 ^ v23)) && (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      *(v0 + 44) = v22;
      AGGraphClearUpdate();
      v24 = AGGraphGetValue();
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);

      AGGraphSetUpdate();
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      *(v28 + 33) = v22;

      static Update.enqueueAction(reason:_:)();
    }
  }
}

void protocol witness for ViewModifier.body(content:) in conformance TopPaddingForBadgeModifier(uint64_t a2@<X8>)
{
  EdgeInsets.init(_all:)();
  *a2 = 1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
}

double _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAGyAA5Badge33_582D9E508E536DEAC67BC3C87B3CFE52LLV_AItGGtGGAA31AccessibilityAttachmentModifierVGSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

void type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(255, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?();
    v1 = type metadata accessor for _OverlayModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>)
  {
    type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Spacer, VStack<TupleView<(Badge, Spacer)>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Spacer, VStack<TupleView<(Badge, Spacer)>>))
  {
    type metadata accessor for VStack<TupleView<(Badge, Spacer)>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, VStack<TupleView<(Badge, Spacer)>>));
    }
  }
}

void type metadata accessor for VStack<TupleView<(Badge, Spacer)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(Badge, Spacer)>>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer), &unk_1EFF94C78, MEMORY[0x1E6981840]);
    lazy protocol witness table accessor for type TupleView<(Badge, Spacer)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(Badge, Spacer)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(Badge, Spacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer), &unk_1EFF94C78, MEMORY[0x1E6981840]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(255, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, MEMORY[0x1E69817F8]);
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of BadgeLabel?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of BadgeLabel(result, a2, a3);
  }

  return result;
}

uint64_t outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TupleView<(Badge, Spacer)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(Badge, Spacer)>(0, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer), &unk_1EFF94C78, MEMORY[0x1E6981840]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(Badge, Spacer)>(uint64_t a1)
{
  type metadata accessor for TupleView<(Badge, Spacer)>(0, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer), &unk_1EFF94C78, MEMORY[0x1E6981840]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for Badge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithCopy for Badge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for Badge(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for Badge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Badge(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>)
  {
    type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>)
  {
    type metadata accessor for State<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E69808E8]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>, &protocol witness table for NeedsTopPaddingForGridBadgesModifier);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for BadgeViewStyleConfiguration.Content;
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for State<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier()
{
  result = lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier;
  if (!lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TopPaddingForBadgeModifier, &unk_1EFF94B78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding()
{
  result = lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding;
  if (!lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridBadgeInfosActionBinding, &unk_1EFF94D30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyleGridContentCoordinateSpace, &type metadata for MultimodalListStyleGridContentCoordinateSpace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyleGridContentCoordinateSpace, &type metadata for MultimodalListStyleGridContentCoordinateSpace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace);
  }

  return result;
}

__n128 __swift_memcpy45_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GridBadgeInfosActionBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 45))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridBadgeInfosActionBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TopPaddingForBadgeModifier>, lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier, &unk_1EFF94B78, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TopPaddingForBadgeModifier>, lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier, &unk_1EFF94B78, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>(255);
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ClipEffect<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DDA0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>(255);
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(255);
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(Image, Text)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Image, Text)>>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Image, Text)>, &lazy cache variable for type metadata for (Image, Text), MEMORY[0x1E6981748], MEMORY[0x1E6981148]);
    lazy protocol witness table accessor for type TupleView<(Image, Text)> and conformance TupleView<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(Image, Text)>>);
    }
  }
}

void type metadata accessor for TupleView<(Badge, Spacer)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for (Badge, Spacer)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(Image, Text)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Image, Text)>, &lazy cache variable for type metadata for (Image, Text), MEMORY[0x1E6981748], MEMORY[0x1E6981148]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>);
  }

  return result;
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for State<Bool>(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<_ShadowView<Capsule._Inset>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ShadowView<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, MEMORY[0x1E6981968], type metadata accessor for _ShadowView);
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset()
{
  result = lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset;
  if (!lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981960], MEMORY[0x1E6981968], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ClipEffect<Capsule> and conformance _ClipEffect<A>);
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E5D8]);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Image, Text)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(Image, Text)>>, MEMORY[0x1E69817F8]);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Capsule> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ClipEffect<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider()
{
  result = lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider;
  if (!lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalBadgeInfoProvider, &unk_1EFF94DF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalBadgeInfoProvider(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultimodalBadgeInfoProvider(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

double View.dialogColorScheme(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.dialogColorScheme.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.dialogColorScheme : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.dialogColorScheme : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>, &type metadata for DialogColorSchemeKey, &protocol witness table for DialogColorSchemeKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance DialogIconKey(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (v3 | v4) == 0;
  }

  else
  {
    return static Image.== infix(_:_:)();
  }
}

double View.dialogIcon(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.dialogIcon.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);
    PropertyList.subscript.getter();
  }

  return v10;
}

void key path getter for EnvironmentValues.dialogIcon : EnvironmentValues(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, void *a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    PropertyList.subscript.getter();
  }

  *a6 = v11;
}

double key path setter for EnvironmentValues.dialogIcon : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5, a6, a7);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance DialogTintColorKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return dispatch thunk of AnyShapeStyleBox.isEqual(to:)() & 1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOSgGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, a2, a3, a4);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v9;
  v12[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(a5, a2, a3, a4);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static Alert.Button.cancel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = static Text.System.cancel.getter();
  *(a3 + 16) = v6;
  *(a3 + 24) = v7 & 1;
  *a3 = 1;
  *(a3 + 32) = v8;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return outlined copy of AppIntentExecutor?(a1, a2);
}

double Alert.init(title:message:dismissButton:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a10;
  v16 = a10[1];
  v18 = a10[2];
  v17 = a10[3];
  v19 = a10[4];
  v20 = a10[5];
  v21 = a10[6];
  v30 = a3 & 1;
  if (!v19)
  {
    v16 = static Text.System.ok.getter();
    v18 = v22;
    v19 = v23;
    v21 = 0;
    LOBYTE(v15) = 0;
    v20 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  v29 = v17 & 1;
  outlined consume of Alert.Button?(0, 0, 0, 0, 0, 0, 0);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v30;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v15;
  *(a9 + 72) = v16;
  *(a9 + 80) = v18;
  *(a9 + 88) = v29;
  *(a9 + 96) = v19;
  *(a9 + 104) = v20;
  *(a9 + 112) = v21;
  result = 0.0;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 161) = 0u;
  return result;
}

__n128 Alert.init(title:message:primaryButton:secondaryButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __n128 *a11)
{
  v12 = *a10;
  v13 = a10[24];
  v14 = *(a10 + 4);
  v15 = a11->n128_u8[0];
  v16 = a11->n128_u64[1];
  v17 = a11[1].n128_u64[0];
  v18 = a11[1].n128_u8[8];
  v21 = a11[2];
  v19 = a11[3].n128_u64[0];
  *(a9 + 176) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  *(a9 + 72) = *(a10 + 8);
  *(a9 + 88) = v13;
  *(a9 + 96) = v14;
  *(a9 + 104) = *(a10 + 40);
  outlined consume of Alert.Button?(0, 0, 0, 0, 0, 0, 0);
  *(a9 + 120) = v15;
  *(a9 + 128) = v16;
  *(a9 + 136) = v17;
  *(a9 + 144) = v18;
  result = v21;
  *(a9 + 152) = v21;
  *(a9 + 168) = v19;
  return result;
}

void outlined consume of Alert.Button?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    outlined consume of Text.Storage(a2, a3, a4 & 1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6, a7);
  }
}

uint64_t static Alert.Button.default(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  v10 = a3 & 1;
  *(a8 + 24) = v10;
  *a8 = a7;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  outlined copy of Text.Storage(a1, a2, v10);

  return outlined copy of AppIntentExecutor?(a5, a6);
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance Alert.Presentation.Key(void *__src, void (*a2)(void *__return_ptr))
{
  if (*(__src + 3))
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    a2(__dst);
  }

  return memcpy(__src, __dst, 0x118uLL);
}

uint64_t View.alert<A>(item:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v40 = a4;
  v41 = a6;
  v42 = a2;
  v43 = a3;
  v13 = type metadata accessor for Optional();
  v38 = type metadata accessor for Binding();
  v44 = *(v38 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v47 = &v36 - v14;
  v48 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v37 = &v36 - v17;
  MEMORY[0x18D00ACC0](v16);
  v50[2] = a4;
  v50[3] = a5;
  v50[4] = a6;
  v50[5] = a7;
  v19 = a7;
  v50[6] = v42;
  v50[7] = v43;
  v39 = v13;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v50, MEMORY[0x1E69E73E0], &type metadata for Alert, v20, v64);
  v21 = *(v48 + 8);
  v48 += 8;
  v42 = v21;
  v43 = 0;
  v21(v18, v13);
  v60 = v64[8];
  v61 = v64[9];
  v62 = v64[10];
  v63 = v65;
  v56 = v64[4];
  v57 = v64[5];
  v58 = v64[6];
  v59 = v64[7];
  v52 = v64[0];
  v53 = v64[1];
  v54 = v64[2];
  v55 = v64[3];
  v22 = v44;
  v23 = v38;
  (*(v44 + 16))(v47, a1, v38);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v27 = v40;
  v26 = v41;
  v25[2] = v40;
  v25[3] = a5;
  v25[4] = v26;
  v25[5] = v19;
  v28 = v25 + v24;
  v29 = v23;
  (*(v22 + 32))(v28, v47, v23);
  v30 = v37;
  MEMORY[0x18D00ACC0](v29);
  v49[2] = v27;
  v49[3] = a5;
  v49[4] = v26;
  v49[5] = v19;
  v31 = v26;
  v32 = MEMORY[0x1E69E69B8];
  v33 = v39;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in View.alert<A>(item:content:), v49, MEMORY[0x1E69E73E0], MEMORY[0x1E69E69B8], v34, v51);
  v42(v30, v33);
  View.presentationCommon(_:onDismiss:id:)(&v52, partial apply for closure #2 in View.alert<A>(item:content:), v25, v51, v27, v31);

  _ss11AnyHashableVSgWOhTm_0(v51, &lazy cache variable for type metadata for AnyHashable?, v32);
  v66[8] = v60;
  v66[9] = v61;
  v66[10] = v62;
  v67 = v63;
  v66[4] = v56;
  v66[5] = v57;
  v66[6] = v58;
  v66[7] = v59;
  v66[0] = v52;
  v66[1] = v53;
  v66[2] = v54;
  v66[3] = v55;
  return _ss11AnyHashableVSgWOhTm_0(v66, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

uint64_t closure #2 in View.alert<A>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(a3 - 8) + 56))(&v10 - v7, 1, 1, a3, v6);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t partial apply for closure #2 in View.alert<A>(item:content:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in View.alert<A>(item:content:)(v4, v1, v2);
}

uint64_t closure #3 in View.alert<A>(item:content:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

double destroy for Alert(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));

  if (*(a1 + 104))
  {
  }

  if (*(a1 + 152))
  {
    outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));

    if (*(a1 + 160))
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  outlined copy of Text.Storage(v12, v13, v14);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  v15 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);

  if (v15)
  {
    v16 = *(a2 + 112);
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;

    v17 = *(a2 + 152);
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_11;
  }

  *(a1 + 104) = *(a2 + 104);
  v17 = *(a2 + 152);
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(a1 + 120) = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  outlined copy of Text.Storage(v18, v19, v20);
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = v20;
  *(a1 + 152) = v17;
  v21 = *(a2 + 160);

  if (v21)
  {
    v22 = *(a2 + 168);
    *(a1 + 160) = v21;
    *(a1 + 168) = v22;
  }

  else
  {
    *(a1 + 160) = *(a2 + 160);
  }

LABEL_11:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  outlined copy of Text.Storage(v22, v23, v24);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  *(a1 + 72) = v22;
  *(a1 + 80) = v23;
  *(a1 + 88) = v24;
  outlined consume of Text.Storage(v25, v26, v27);
  *(a1 + 96) = *(a2 + 96);

  v28 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v28)
    {
      v29 = *(a2 + 112);
      *(a1 + 104) = v28;
      *(a1 + 112) = v29;

      goto LABEL_15;
    }
  }

  else if (v28)
  {
    v30 = *(a2 + 112);
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
LABEL_15:
  v31 = *(a2 + 152);
  if (!*(a1 + 152))
  {
    if (!v31)
    {
      v48 = *(a2 + 120);
      v49 = *(a2 + 136);
      v50 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v50;
      *(a1 + 136) = v49;
      *(a1 + 120) = v48;
      goto LABEL_31;
    }

    *(a1 + 120) = *(a2 + 120);
    v40 = *(a2 + 128);
    v41 = *(a2 + 136);
    v42 = *(a2 + 144);
    outlined copy of Text.Storage(v40, v41, v42);
    *(a1 + 128) = v40;
    *(a1 + 136) = v41;
    *(a1 + 144) = v42;
    *(a1 + 152) = *(a2 + 152);
    v43 = *(a2 + 160);

    if (!v43)
    {
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v43;
    goto LABEL_26;
  }

  if (!v31)
  {
    outlined destroy of Alert.Button(a1 + 120);
    v45 = *(a2 + 136);
    v46 = *(a2 + 152);
    v47 = *(a2 + 168);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 168) = v47;
    *(a1 + 152) = v46;
    *(a1 + 136) = v45;
    goto LABEL_31;
  }

  *(a1 + 120) = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 136);
  v34 = *(a2 + 144);
  outlined copy of Text.Storage(v32, v33, v34);
  v35 = *(a1 + 128);
  v36 = *(a1 + 136);
  v37 = *(a1 + 144);
  *(a1 + 128) = v32;
  *(a1 + 136) = v33;
  *(a1 + 144) = v34;
  outlined consume of Text.Storage(v35, v36, v37);
  *(a1 + 152) = *(a2 + 152);

  v38 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (!v38)
    {
LABEL_29:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v38;
LABEL_26:
    *(a1 + 168) = v44;

    goto LABEL_31;
  }

  if (!v38)
  {

    goto LABEL_29;
  }

  v39 = *(a2 + 168);
  *(a1 + 160) = v38;
  *(a1 + 168) = v39;

LABEL_31:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithTake for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      v9 = *(a2 + 48);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 56) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v13 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v13;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  v14 = *(a2 + 88);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(a1 + 96) = *(a2 + 96);

  v18 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v18)
    {
      v19 = *(a2 + 112);
      *(a1 + 104) = v18;
      *(a1 + 112) = v19;

      if (!*(a1 + 152))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(a2 + 112);
    *(a1 + 104) = v18;
    *(a1 + 112) = v20;
    if (!*(a1 + 152))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
  if (!*(a1 + 152))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_21;
  }

LABEL_15:
  v21 = *(a2 + 152);
  if (!v21)
  {
    outlined destroy of Alert.Button(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  v22 = *(a2 + 144);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v22;
  outlined consume of Text.Storage(v23, v24, v25);
  *(a1 + 152) = v21;

  v26 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (v26)
    {
      v29 = *(a2 + 168);
      *(a1 + 160) = v26;
      *(a1 + 168) = v29;
      goto LABEL_21;
    }

LABEL_25:
    *(a1 + 160) = *(a2 + 160);
    goto LABEL_21;
  }

  if (!v26)
  {

    goto LABEL_25;
  }

  v27 = *(a2 + 168);
  *(a1 + 160) = v26;
  *(a1 + 168) = v27;

LABEL_21:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t storeEnumTagSinglePayload for Alert(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for Alert.Button(uint64_t a1)
{
  outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));

  if (*(a1 + 40))
  {
  }

  return result;
}

uint64_t initializeWithCopy for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);

  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);

  v10 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v10)
    {
      v12 = *(a2 + 48);
      *(a1 + 40) = v10;
      *(a1 + 48) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 48);
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;

  return a1;
}

uint64_t assignWithTake for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 32) = *(a2 + 32);

  v8 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v8)
    {
      v10 = *(a2 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v10;
      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for Alert.Button(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Alert.Button(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for Alert.Presentation(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));

  if (*(a1 + 104))
  {
  }

  if (*(a1 + 152))
  {
    outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));

    if (*(a1 + 160))
    {
    }
  }

  if (*(a1 + 184))
  {
  }

  if (*(a1 + 232))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 208));
  }
}

uint64_t initializeWithCopy for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  outlined copy of Text.Storage(v12, v13, v14);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  v15 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);

  if (v15)
  {
    v16 = *(a2 + 112);
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;

    v17 = *(a2 + 152);
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    v17 = *(a2 + 152);
    if (v17)
    {
LABEL_6:
      *(a1 + 120) = *(a2 + 120);
      v18 = *(a2 + 128);
      v19 = *(a2 + 136);
      v20 = *(a2 + 144);
      outlined copy of Text.Storage(v18, v19, v20);
      *(a1 + 128) = v18;
      *(a1 + 136) = v19;
      *(a1 + 144) = v20;
      *(a1 + 152) = v17;
      v21 = *(a2 + 160);

      if (v21)
      {
        v22 = *(a2 + 168);
        *(a1 + 160) = v21;
        *(a1 + 168) = v22;
      }

      else
      {
        *(a1 + 160) = *(a2 + 160);
      }

      goto LABEL_11;
    }
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_11:
  v23 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  if (v23)
  {
    v24 = *(a2 + 192);
    *(a1 + 184) = v23;
    *(a1 + 192) = v24;
  }

  else
  {
    *(a1 + 184) = *(a2 + 184);
  }

  *(a1 + 200) = *(a2 + 200);
  v25 = *(a2 + 232);
  if (v25)
  {
    v26 = *(a2 + 240);
    *(a1 + 232) = v25;
    *(a1 + 240) = v26;
    (**(v25 - 8))(a1 + 208, a2 + 208);
  }

  else
  {
    v27 = *(a2 + 224);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = v27;
    *(a1 + 240) = *(a2 + 240);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithCopy for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  outlined copy of Text.Storage(v22, v23, v24);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  *(a1 + 72) = v22;
  *(a1 + 80) = v23;
  *(a1 + 88) = v24;
  outlined consume of Text.Storage(v25, v26, v27);
  *(a1 + 96) = *(a2 + 96);

  v28 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v28)
    {
      v29 = *(a2 + 112);
      *(a1 + 104) = v28;
      *(a1 + 112) = v29;

      goto LABEL_15;
    }
  }

  else if (v28)
  {
    v30 = *(a2 + 112);
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
LABEL_15:
  v31 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!v31)
    {
      outlined destroy of Alert.Button(a1 + 120);
      v45 = *(a2 + 136);
      v46 = *(a2 + 152);
      v47 = *(a2 + 168);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 168) = v47;
      *(a1 + 152) = v46;
      *(a1 + 136) = v45;
      goto LABEL_31;
    }

    *(a1 + 120) = *(a2 + 120);
    v32 = *(a2 + 128);
    v33 = *(a2 + 136);
    v34 = *(a2 + 144);
    outlined copy of Text.Storage(v32, v33, v34);
    v35 = *(a1 + 128);
    v36 = *(a1 + 136);
    v37 = *(a1 + 144);
    *(a1 + 128) = v32;
    *(a1 + 136) = v33;
    *(a1 + 144) = v34;
    outlined consume of Text.Storage(v35, v36, v37);
    *(a1 + 152) = *(a2 + 152);

    v38 = *(a2 + 160);
    if (*(a1 + 160))
    {
      if (v38)
      {
        v39 = *(a2 + 168);
        *(a1 + 160) = v38;
        *(a1 + 168) = v39;

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (!v38)
    {
LABEL_29:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v38;
LABEL_26:
    *(a1 + 168) = v44;

    goto LABEL_31;
  }

  if (!v31)
  {
    v48 = *(a2 + 120);
    v49 = *(a2 + 136);
    v50 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v50;
    *(a1 + 136) = v49;
    *(a1 + 120) = v48;
    goto LABEL_31;
  }

  *(a1 + 120) = *(a2 + 120);
  v40 = *(a2 + 128);
  v41 = *(a2 + 136);
  v42 = *(a2 + 144);
  outlined copy of Text.Storage(v40, v41, v42);
  *(a1 + 128) = v40;
  *(a1 + 136) = v41;
  *(a1 + 144) = v42;
  *(a1 + 152) = *(a2 + 152);
  v43 = *(a2 + 160);

  if (v43)
  {
    v44 = *(a2 + 168);
    *(a1 + 160) = v43;
    goto LABEL_26;
  }

  *(a1 + 160) = *(a2 + 160);
LABEL_31:
  v51 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  v52 = *(a2 + 184);
  if (v51)
  {
    if (v52)
    {
      v53 = *(a2 + 192);
      *(a1 + 184) = v52;
      *(a1 + 192) = v53;

      goto LABEL_38;
    }
  }

  else if (v52)
  {
    v54 = *(a2 + 192);
    *(a1 + 184) = v52;
    *(a1 + 192) = v54;

    goto LABEL_38;
  }

  *(a1 + 184) = *(a2 + 184);
LABEL_38:
  *(a1 + 200) = *(a2 + 200);
  v55 = *(a2 + 232);
  if (*(a1 + 232))
  {
    v56 = (a1 + 208);
    if (v55)
    {
      __swift_assign_boxed_opaque_existential_1(v56, (a2 + 208));
    }

    else
    {
      outlined destroy of AnyHashable(v56);
      v57 = *(a2 + 240);
      v58 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v58;
      *(a1 + 240) = v57;
    }
  }

  else if (v55)
  {
    *(a1 + 232) = v55;
    *(a1 + 240) = *(a2 + 240);
    (**(v55 - 8))(a1 + 208, a2 + 208);
  }

  else
  {
    v59 = *(a2 + 208);
    v60 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 208) = v59;
    *(a1 + 224) = v60;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      v8 = *(a2 + 48);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 56) = *(a2 + 56);

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  v13 = *(a2 + 88);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v13;
  outlined consume of Text.Storage(v14, v15, v16);
  *(a1 + 96) = *(a2 + 96);

  v17 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v17)
    {
      v18 = *(a2 + 112);
      *(a1 + 104) = v17;
      *(a1 + 112) = v18;

      if (!*(a1 + 152))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else if (v17)
  {
    v19 = *(a2 + 112);
    *(a1 + 104) = v17;
    *(a1 + 112) = v19;
    if (!*(a1 + 152))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
  if (!*(a1 + 152))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_21;
  }

LABEL_15:
  if (!*(a2 + 152))
  {
    outlined destroy of Alert.Button(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  v20 = *(a2 + 144);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v23 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v20;
  outlined consume of Text.Storage(v21, v22, v23);
  *(a1 + 152) = *(a2 + 152);

  v24 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (v24)
    {
      v25 = *(a2 + 168);
      *(a1 + 160) = v24;
      *(a1 + 168) = v25;

      goto LABEL_21;
    }
  }

  else if (v24)
  {
    v32 = *(a2 + 168);
    *(a1 + 160) = v24;
    *(a1 + 168) = v32;
    goto LABEL_21;
  }

  *(a1 + 160) = *(a2 + 160);
LABEL_21:
  v26 = *(a2 + 184);
  v27 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  if (v27)
  {
    if (v26)
    {
      v28 = *(a2 + 192);
      *(a1 + 184) = v26;
      *(a1 + 192) = v28;

      goto LABEL_28;
    }
  }

  else if (v26)
  {
    v29 = *(a2 + 192);
    *(a1 + 184) = v26;
    *(a1 + 192) = v29;
    goto LABEL_28;
  }

  *(a1 + 184) = *(a2 + 184);
LABEL_28:
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 232))
  {
    if (*(a2 + 232))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 208));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 208);
    }
  }

  v30 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v30;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *&v30 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v30;
  return a1;
}

unint64_t lazy protocol witness table accessor for type Alert.Button.Style and conformance Alert.Button.Style()
{
  result = lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style;
  if (!lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Alert.Button.Style, &type metadata for Alert.Button.Style, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style);
  }

  return result;
}

void specialized implicit closure #1 in _GraphInputs.safeAreaTransitionState.getter(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v5[1];
  outlined destroy of weak FallbackResponderProvider?(v5);

  *a2 = Strong;
  a2[1] = v4;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SafeAreaTransitionStateKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of SafeAreaTransitionStateKey.Value(&static SafeAreaTransitionStateKey.defaultValue, v2);
}

uint64_t assignWithCopy for ContentScrollViewBox(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithTake for ContentScrollViewBox(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentScrollViewBox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 45))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentScrollViewBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafeAreaTransitionStateKey.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SafeAreaTransitionStateKey.Value(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemEnabledModifier.PlatformItemListTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in PlatformItemEnabledModifier.PlatformItemListTransform.value.getter;
  *(result + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t EnvironmentValues.isToggleOn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t ButtonToggleStyle.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

void ButtonToggleStyle.makeBody(configuration:)(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v5 = a1[5];
  v24 = a1[4];
  v25 = v5;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  v7 = swift_allocObject();
  v8 = v2[3];
  *(v7 + 3) = v2[2];
  *(v7 + 4) = v8;
  v9 = v2[5];
  *(v7 + 5) = v2[4];
  *(v7 + 6) = v9;
  v10 = v2[1];
  *(v7 + 1) = *v2;
  *(v7 + 2) = v10;
  *a2 = 4;
  type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>(0);
  v12 = &a2[*(v11 + 36)];
  *v12 = partial apply for toggleState #1 () in ButtonToggleStyle.makeBody(configuration:);
  v12[1] = v7;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v19 = 2;
  outlined init with copy of ToggleStyleConfiguration(&v20, &v16);
  type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();

  View.falseInput<A>(_:)();

  v13 = swift_getKeyPath();
  v16 = v20;
  v17 = v21;
  _sSbSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&KeyPath);
  LOBYTE(v2) = KeyPath;
  type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(0, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
  v15 = &a2[*(v14 + 36)];
  *v15 = v13;
  v15[8] = v2;
}

uint64_t toggleState #1 () in ButtonToggleStyle.makeBody(configuration:)(uint64_t *a1)
{
  _sSbSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v2);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsToggleButton(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
  PropertyList.subscript.getter();
  return v3;
}

void type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>)
  {
    type metadata accessor for <<opaque return type of View.falseInput<A>(_:)>>.0(255);
    v3 = v2;
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = type metadata accessor for Button(a1, v3, OpaqueTypeConformance2, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.falseInput<A>(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.falseInput<A>(_:)>>.0)
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.falseInput<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ToggleStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t assignWithTake for ButtonToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonToggleStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ButtonToggleStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>)
  {
    type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsToggleButton>, lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton, &type metadata for IsToggleButton, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for WrappedButtonStyle);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>();
    v6 = type metadata accessor for ButtonStyleModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>()
{
  result = lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>;
  if (!lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for WrappedButtonStyle);
    result = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, protocol conformance descriptor for Button<A>);
    v5[1] = lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsToggleButton>, lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton, &type metadata for IsToggleButton, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>();
    v5[1] = &protocol witness table for ButtonStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-25 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v9 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    (*(v4 + 16))(v9 + 1, v10 + 1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

unint64_t initializeWithTake for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

unint64_t assignWithTake for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 40))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyPlatformItemWriter(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

void storeEnumTagSinglePayload for LazyPlatformItemWriter(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
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

    *(v19 + 8) = v20;
  }
}

uint64_t View.presentationTransitionStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v13, a3, a5);
  outlined init with copy of _PresentationTransitionOutputs.Content(v13, &v10);
  if (*(&v11 + 1))
  {
    v7 = v10;
    v8 = v11;
    v9 = v12;
    if (one-time initialization token for _sharedNamespaceID != -1)
    {
      swift_once();
    }

    v5 = static _PresentationTransitionCompatibility._sharedNamespaceID;
    outlined destroy of _PresentationTransitionOutputs(v13);
    *&v14[0] = v5;
    *(v14 + 8) = v7;
    *(&v14[1] + 8) = v8;
    *(&v14[2] + 1) = v9;
  }

  else
  {
    outlined destroy of _PresentationTransitionOutputs(v13);
    memset(v14, 0, sizeof(v14));
  }

  View.preference<A>(key:value:)();
  return outlined destroy of _NavigationTransitionOutputs?(v14, type metadata accessor for _NavigationTransitionOutputs?);
}

uint64_t outlined init with copy of _PresentationTransitionOutputs.Content(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 32) = *(a1 + 4);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2);
  }

  return a2;
}

double AutomaticPresentationTransitionStyle._makePresentationTransition()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t one-time initialization function for _sharedNamespaceID()
{
  result = AGMakeUniqueID();
  static _PresentationTransitionCompatibility._sharedNamespaceID = result;
  return result;
}

__n128 assignWithCopy for _PresentationTransitionOutputs(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (a1[1].n128_u64[1])
  {
    if (v2)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of _NavigationTransitionOutputs?(a1, type metadata accessor for (sourceID: AnyHashable));
      v6 = a2[2].n128_u64[0];
      result = a2[1];
      *a1 = *a2;
      a1[1] = result;
      a1[2].n128_u64[0] = v6;
    }
  }

  else if (v2)
  {
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = a2[1];
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t type metadata accessor for (sourceID: AnyHashable)()
{
  result = lazy cache variable for type metadata for (sourceID: AnyHashable);
  if (!lazy cache variable for type metadata for (sourceID: AnyHashable))
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &lazy cache variable for type metadata for (sourceID: AnyHashable));
  }

  return result;
}

__n128 assignWithTake for _PresentationTransitionOutputs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of _NavigationTransitionOutputs?(a1, type metadata accessor for (sourceID: AnyHashable));
    }

    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t assignWithTake for ZoomPresentationTransitionStyle(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 assignWithCopy for _PresentationTransitionOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2);
  }

  return result;
}

uint64_t WidgetLinkButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 96) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v7[4] = v1;
    v7[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(255, a1);
    v5 = v4;
    v7[0] = lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>(v6);
    v7[1] = lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>(a2);
    type metadata accessor for _ContentShapeModifier<Rectangle>(255);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>(double a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>)
  {
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v1;
    v6[5] = v2;
    type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>(a1);
    v5 = v4;
    v6[0] = &protocol witness table for ButtonStyleConfiguration.Label;
    v6[1] = lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ShadowListDataSource<>.section(forSectionLabelIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v9, v8);
  v10 = (*(a3 + 24))(a1, v5, a3);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t instantiation function for generic protocol witness table for <> ShadowListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>);
  *(a1 + 8) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for CollectionViewListDataSource(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = *(a2 + 3);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = a2[6];
    *(v4 + 5) = a2[5];
    *(v4 + 6) = v8;
    v9 = a2[8];
    *(v4 + 7) = a2[7];
    *(v4 + 8) = v9;
    v10 = a2[10];
    *(v4 + 9) = a2[9];
    *(v4 + 10) = v10;
    v11 = a3[9];
    v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v30 = *(*(v12 - 8) + 16);
    v13 = v8;

    v30(&v4[v11], a2 + v11, v12);
    v14 = a3[10];
    v15 = &v4[v14];
    v16 = a2 + v14;
    v17 = *(a2 + v14 + 8);
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *(v16 + 3);
        *(v15 + 2) = *(v16 + 2);
        *(v15 + 3) = v18;
        *(v15 + 63) = *(v16 + 63);
        v19 = *(v16 + 1);
        *v15 = *v16;
        *(v15 + 1) = v19;
LABEL_11:
        v23 = a3[11];
        v24 = a3[12];
        v25 = &v4[v23];
        v26 = (a2 + v23);
        v27 = v26[1];
        *v25 = *v26;
        *(v25 + 1) = v27;
        v4[v24] = *(a2 + v24);
        v28 = a3[14];
        *&v4[a3[13]] = *(a2 + a3[13]);
        *&v4[v28] = *(a2 + v28);

        goto LABEL_12;
      }

      *v15 = *v16;
      *(v15 + 1) = v17;
      *(v15 + 2) = *(v16 + 2);

      v21 = v16[64];
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v15 = *v16;
      *(v15 + 2) = *(v16 + 2);
      v21 = v16[64];
      if ((v21 & 1) == 0)
      {
LABEL_9:
        v22 = *(v16 + 3);
        *(v15 + 3) = v22;
        (**(v22 - 8))((v15 + 24), (v16 + 24));
        goto LABEL_10;
      }
    }

    *(v15 + 3) = *(v16 + 3);

LABEL_10:
    v15[64] = v21;
    *(v15 + 65) = *(v16 + 65);
    goto LABEL_11;
  }

  v20 = *a2;
  *a1 = *a2;
  v4 = (v20 + ((v5 + 16) & ~v5));
LABEL_12:

  return v4;
}

uint64_t outlined destroy of Binding<[SwiftUIAnySortComparator]>(uint64_t a1)
{
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithTake for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v8 = a3[9];
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[10];
  v11 = a3[11];
  v12 = a1 + v10;
  v13 = a2 + v10;
  v14 = *(v13 + 48);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 48) = v14;
  *(v12 + 63) = *(v13 + 63);
  v15 = *(v13 + 16);
  *v12 = *v13;
  *(v12 + 16) = v15;
  *(a1 + v11) = *(a2 + v11);
  v16 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v16) = *(a2 + v16);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

unint64_t CollectionViewListDataSource.cornerRadius(forSectionAt:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * result + 32, v5);
  if (v6)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  outlined destroy of SectionAccumulator.Item(v5);
  return v3;
}

void closure #1 in CollectionViewListDataSource.sectionIndexLabels.getter(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1[2] < 0)
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    type metadata accessor for CollectionViewListDataSource(0, a3, a4, a4);

    MEMORY[0x18D009CB0](&v10, v6);
    v7 = Text.resolveString(in:with:idiom:)();
    v9 = v8;
  }

  *a5 = v7;
  a5[1] = v9;
}

Swift::Int __swiftcall CollectionViewListDataSource.section(forSectionLabelIndex:)(Swift::Int forSectionLabelIndex)
{
  if (forSectionLabelIndex < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 80);
    if (*(v2 + 16) > forSectionLabelIndex)
    {
      return *(v2 + 8 * forSectionLabelIndex + 32);
    }
  }

  __break(1u);
  return forSectionLabelIndex;
}

uint64_t CollectionViewListDataSource.configureHeader(_:transaction:forSectionAt:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(v4 + *(a4 + 56));
  v11[0] = 1;
  v12 = a1;
  v13 = a2;
  v14 = v7;
  v8 = a1;
  outlined copy of Transaction?(a2);
  specialized ListSectionInfo.visitHeader<A>(index:visitor:)(a3, v11);
  v9 = v13;

  return outlined consume of ListItemTint?(v9);
}

unint64_t specialized ListSectionInfo.visitHeader<A>(index:visitor:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 64);
  if (*(v3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = outlined init with copy of SectionAccumulator.Item(v3 + 152 * result + 32, v10);
  v9[5] = 0;
  if (v11)
  {
    if (*(v11 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v11 + 32, v8);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v9);
      v4 = v12;
      v5 = v13;

      v7 = MEMORY[0x18D00ABE0](v6);
      *&v8[0] = v4;
      *(&v8[0] + 1) = v5;
      MEMORY[0x1EEE9AC00](v7);
      _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

      static Update.end()();
      __swift_destroy_boxed_opaque_existential_1(v9);
      return outlined destroy of SectionAccumulator.Item(v10);
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t CollectionViewListDataSource.configureFooter(_:transaction:forSectionAt:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 104);
  v11(v10, *MEMORY[0x1E69DC248], v6, v8);
  v12 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v10, v6);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    (v11)(v10, *MEMORY[0x1E69DC240], v6);
    v15 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
    v13(v10, v6);
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  v16 = *(v4 + *(a4 + 56));
  v25[0] = v14;
  v17 = v23;
  v26 = v22;
  v27 = v23;
  v28 = v16;
  v18 = v22;
  outlined copy of Transaction?(v17);
  specialized ListSectionInfo.visitFooter<A>(index:visitor:)(v24, v25);
  v19 = v27;

  return outlined consume of ListItemTint?(v19);
}

unint64_t specialized ListSectionInfo.visitFooter<A>(index:visitor:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 64);
  if (*(v3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = outlined init with copy of SectionAccumulator.Item(v3 + 152 * result + 32, v10);
  v9[5] = 0;
  if (v11)
  {
    if (*(v11 + 16) >= 3uLL)
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v11 + 128, v8);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v9);
      v4 = v12;
      v5 = v13;

      v7 = MEMORY[0x18D00ABE0](v6);
      *&v8[0] = v4;
      *(&v8[0] + 1) = v5;
      MEMORY[0x1EEE9AC00](v7);
      _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

      static Update.end()();
      __swift_destroy_boxed_opaque_existential_1(v9);
      return outlined destroy of SectionAccumulator.Item(v10);
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t CollectionViewListDataSource.firstIndexPath(viewListID:)@<X0>(uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = ViewList.firstOffset(of:)();
  if (v5)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }

  else
  {

    return ListSectionInfo.indexPath(offset:)(v4, a2);
  }
}

uint64_t CollectionViewListDataSource.firstCollectionViewIndex(of:)(uint64_t *a1, uint64_t a2)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  return v3;
}

uint64_t closure #1 in CollectionViewListDataSource.firstCollectionViewIndex(of:)@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = ViewList.firstOffset(of:style:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t CollectionViewListDataSource.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  AGWeakAttributeGetAttribute();
  return ViewList.applyIDs(from:listAttribute:to:)() & 1;
}

BOOL closure #1 in CollectionViewListDataSource.applyCollectionViewIDs(from:to:)(int *a1, void (*a2)(_DWORD *, _BYTE *), uint64_t a3, _BYTE *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 1);
  v9 = *(v8 + 16);

  if (v9)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 52);

    if (v10)
    {
      v7 = -1;
    }
  }

  else
  {
  }

  v12[0] = v6;
  v12[1] = v7;
  v13 = v9;
  a2(v12, a4);

  return (*a4 & 1) == 0;
}

uint64_t specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v6 = *(a2 + 48);
  while (1)
  {
    v7 = a1[3];
    v8 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v13);
    v12 = a1[9];

    v9 = v6;

    v10 = _ViewList_SublistSubgraphStorage.retain()();

    v14 = v10;
    v15 = v8;
    v16 = v7;
    v17 = v4;
    v18 = v3;
    v19 = v6;
    v12 = a1[10];

    LOBYTE(v10) = CollectionViewHeaderFooterVisitor.visit(view:traits:)(v13, &v12);

    outlined destroy of _ViewList_View(v13);
    if ((v10 & 1) == 0)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

void specialized CollectionViewListDataSource.configureGlobalHeader(_:transaction:)(void *a1, uint64_t a2)
{
  type metadata accessor for TableGlobalHeader();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setAutomaticallyUpdatesContentConfiguration_];
    v8 = *(a2 + 40);
    v9 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
    swift_beginAccess();
    outlined assign with copy of TableHeaderView?(v2 + v8, v6 + v9);
    swift_endAccess();
    [v6 setNeedsUpdateConfiguration];
  }
}

uint64_t outlined assign with copy of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableMutation.CodingKeys()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x4449656C62617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableMutation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C62617473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableMutation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableMutation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArchivableMutation.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableMutation.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(v3 + 4);
  v13 = *(v3 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = *(v3 + 2);
  v16 = 0;
  lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = v13;
    *(&v14 + 1) = v10;
    v16 = 1;
    outlined copy of Data._Representation(v13, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11.n128_f64[0] = outlined consume of Data._Representation(v14, *(&v14 + 1));
  }

  return (*(v7 + 8))(v9, v6, v11);
}

unint64_t lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableMutation.CodingKeys, &unk_1EFF95B30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableMutation.CodingKeys, &unk_1EFF95B30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableMutation.CodingKeys, &unk_1EFF95B30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableMutation.CodingKeys, &unk_1EFF95B30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980840], MEMORY[0x1E6980838], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980848], MEMORY[0x1E6980838], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }

  return result;
}

uint64_t ArchivableMutation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableMutation.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v15;
    v11 = v16;
    v14 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
    v7 = a3(a1, &unk_1EFF95B30, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance ArchivableMutationsKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ArchivableMutationsKey.defaultValue;

  return result;
}

void key path setter for ArchivableMutationHandler.action : ArchivableMutationHandler(uint64_t *a1, uint64_t (**a2)(uint64_t a1, uint64_t a2))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ());
  a2[1] = v5;
}

uint64_t ArchivableMutationHandler.action.getter()
{
  v1 = *v0;

  return v1;
}

void ArchivableMutationHandler.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ArchivableMutationHandler.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void EnvironmentValues.archivableMutationHandler.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ArchivableMutationHandler.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ArchivableMutationHandler.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double key path getter for EnvironmentValues.archivableMutationHandler : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.archivableMutationHandler : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();

  outlined copy of AppIntentExecutor?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.archivableMutationHandler.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();

  outlined copy of AppIntentExecutor?(v2, v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2, v3);

  return result;
}

void (*EnvironmentValues.archivableMutationHandler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.archivableMutationHandler.modify;
}

void EnvironmentValues.archivableMutationHandler.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v3[2] = v4;
  v6 = v3[6];
  v3[3] = v5;
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
  if (a2)
  {
    outlined copy of AppIntentExecutor?(v4, v5);

    outlined copy of AppIntentExecutor?(v4, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v3, v3[1]);
  }

  else
  {

    outlined copy of AppIntentExecutor?(v4, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
  }

  free(v3);
}

uint64_t initializeWithCopy for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  outlined copy of Data._Representation(v3, v4);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithCopy for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  outlined copy of Data._Representation(v3, v4);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  outlined consume of Data._Representation(v5, v6);
  return a1;
}

uint64_t assignWithTake for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  outlined consume of Data._Representation(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableMutation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ArchivableMutation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata accessor for ArchivableMutationHandler?()
{
  if (!lazy cache variable for type metadata for ArchivableMutationHandler?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableMutationHandler?);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t Table.init(of:selection:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9)
{
  v12 = a2[1];
  v29 = a5;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v13 = type metadata accessor for Table(0, &v29);
  v14 = a6 + v13[16];
  *(v14 + 48) = 0;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  v15 = a6 + v13[17];
  v16 = outlined assign with copy of Binding<AnySelectionManager>?(a1, v14);
  v17 = 0uLL;
  *v15 = 0;
  *(v15 + 8) = 0u;
  if (v12)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for TableColumnCustomization(255, a5, AssociatedConformanceWitness, v19);
    type metadata accessor for Binding();
    v21 = type metadata accessor for TableColumnCustomization.ToAnyCustomization(0, a5, AssociatedConformanceWitness, v20);
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.ToAnyCustomization, v21);
    Binding.projecting<A>(_:)();

    v22 = v29;
    v17 = v30;
    v23 = v31;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = a6 + v13[18];
  *v24 = v22;
  *(v24 + 8) = v17;
  *(v24 + 24) = v23;
  v25 = a4(v16);
  a3(v25);
  return outlined destroy of Binding<AnySelectionManager>?(a1);
}

uint64_t static Table._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v70 = a2;
  v71 = 0;
  v72 = a8;
  v98 = *MEMORY[0x1E69E9840];
  v74 = *a1;
  outlined init with copy of _ViewListInputs(a2, v93);
  _ViewListInputs.isInLazyContainer.setter();
  v77 = a7;
  v78 = a3;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v88 = a6;
  v89 = a7;
  LODWORD(v94[0]) = v74;
  *&v95 = a3;
  *(&v95 + 1) = a4;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  v13 = a6;
  *&v97 = a7;
  type metadata accessor for Table(255, &v95);
  v73 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v14 = _GraphValue.value.getter();
  *(&v76 + 1) = a6;
  v16 = AnyRowSource.init<A>(_:)(v14, a4, a6, v15);
  v18 = v17;
  v20 = v19;
  *&v76 = HIDWORD(v19);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v22 = v76;
  *(v21 + 32) = v20;
  *(v21 + 36) = v22;
  *(v21 + 40) = v95;
  *&v95 = v21;
  *&v94[0] = v21;
  PropertyList.subscript.setter();
  v80 = v78;
  v81 = a4;
  v82 = a5;
  v83 = v13;
  v84 = v77;
  LODWORD(v95) = v74;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v23 = _GraphValue.value.getter();
  *&v76 = a5;
  v25 = AnyColumnSource.init<A>(_:)(v23, a5, v77, v24);
  v27 = v26;
  LODWORD(a3) = v28;
  v29 = HIDWORD(v28);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  v30 = v78;
  PropertyList.subscript.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = a3;
  *(v31 + 36) = v29;
  *(v31 + 40) = v95;
  *&v95 = v31;
  *&v94[0] = v31;
  PropertyList.subscript.setter();
  v32 = *MEMORY[0x1E698D3F8];
  v33 = v70[1];
  v94[0] = *v70;
  v94[1] = v33;
  v35 = *v70;
  v34 = v70[1];
  v94[2] = v70[2];
  v90 = v35;
  v91 = v34;
  v92 = v70[2];
  v36 = *(&v76 + 1);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  outlined init with copy of _GraphInputs(v94, &v95);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = _GraphInputs.selectionStorage<A>(forType:)(AssociatedTypeWitness, AssociatedTypeWitness, AssociatedConformanceWitness, v39);
  v42 = v41;
  v95 = v90;
  v96 = v91;
  v97 = v92;
  outlined destroy of _GraphInputs(&v95);
  v43 = SelectionBasedStorage.$menu.getter(v40);
  v75 = a4;
  if ((v43 & 0x100000000) != 0)
  {
    LODWORD(v70) = v32;
    v46 = v32;
  }

  else
  {
    v70 = v68;
    v79[0] = v43;
    MEMORY[0x1EEE9AC00](v43);
    v69 = v32;
    *&v90 = v30;
    *(&v90 + 1) = a4;
    *&v91 = v76;
    *(&v91 + 1) = v36;
    *&v92 = v77;
    v66 = type metadata accessor for Table.ChildSelectionMenu(0, &v90);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Table<A, B, C>.ChildSelectionMenu, v66);
    type metadata accessor for ((_:))?(0, &lazy cache variable for type metadata for Attribute<(_:)>, &lazy cache variable for type metadata for (_:), &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v79, closure #1 in Attribute.init<A>(_:)partial apply, v65, v66, MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v45);
    LODWORD(v70) = v90;
    v46 = v69;
  }

  v47 = SelectionBasedStorage.$action.getter(v40, v42);
  if ((v47 & 0x100000000) != 0)
  {
    v51 = v46;
  }

  else
  {
    v71 = v68;
    v79[0] = v47;
    MEMORY[0x1EEE9AC00](v47);
    *&v90 = v78;
    *(&v90 + 1) = v75;
    v91 = v76;
    *&v92 = v77;
    v48 = type metadata accessor for Table.ChildSelectionAction(0, &v90);
    v66 = v48;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Table<A, B, C>.ChildSelectionAction, v48);
    type metadata accessor for Attribute<((_:))?>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v79, closure #1 in Attribute.init<A>(_:)partial apply, v65, v48, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v50);
    v51 = v90;
  }

  v52 = SelectionBasedStorage.$isSelectionEnabled.getter(v40, v42);
  v53 = v46;
  v55 = *(&v76 + 1);
  v54 = v77;
  if ((v52 & 0x100000000) == 0)
  {
    v79[0] = v52;
    MEMORY[0x1EEE9AC00](v52);
    *&v90 = v78;
    *(&v90 + 1) = v75;
    *&v91 = v76;
    *(&v91 + 1) = v55;
    *&v92 = v54;
    v56 = type metadata accessor for Table.ChildSelectionEnabled(0, &v90);
    v66 = v56;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Table<A, B, C>.ChildSelectionEnabled, v56);
    type metadata accessor for Attribute<(_:)>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v79, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1, v65, v56, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v58);
    v53 = v90;
  }

  v59 = v76;
  if (v70 != v46 || v51 != v46 || v53 != v46)
  {
    *&v90 = __PAIR64__(v46, v70);
    *(&v90 + 1) = __PAIR64__(v53, v51);
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
    lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>();
    PropertyList.subscript.setter();
  }

  LOBYTE(v90) = 1;
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  PropertyList.subscript.setter();
  type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0(0);
  LODWORD(v90) = v74;
  v79[0] = _GraphValue.value.getter();
  *&v90 = v78;
  *(&v90 + 1) = v75;
  *&v91 = v59;
  *(&v91 + 1) = v55;
  *&v92 = v54;
  v60 = type metadata accessor for Table.Child(0, &v90);
  swift_getWitnessTable(protocol conformance descriptor for Table<A, B, C>.Child, v60);
  _GraphValue.init<A>(_:)();
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v62 = v61;
  v63 = lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  *&v90 = v62;
  *(&v90 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v93);
}

uint64_t closure #1 in static Table._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v8 = type metadata accessor for Table(0, v14);
  v9 = *(v8 + 60);
  v13[2] = v8;
  v13[3] = a3;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

unint64_t lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput()
{
  result = lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput;
  if (!lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RowSourceInput, &type metadata for RowSourceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput);
  }

  return result;
}

uint64_t closure #2 in static Table._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v11[2] = type metadata accessor for Table(0, v12);
  v11[3] = a4;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v11, a4, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

unint64_t lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput()
{
  result = lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput;
  if (!lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ColumnSourceInput, &type metadata for ColumnSourceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.SelectionBasedStorageKey<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>);
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.configureForLazyContainer()>>.0)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.configureForLazyContainer()>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTableStyle, &type metadata for ResolvedTableStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle)
  {
    result = swift_getWitnessTable("Q\v\tbp+\b", &type metadata for ResolvedTableStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle);
  }

  return result;
}

uint64_t Table.Child.table.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v8 = type metadata accessor for Table(0, v11);
  Value = AGGraphGetValue();
  return (*(*(v8 - 8) + 16))(a7, Value, v8);
}

uint64_t Table.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v10 = a1;
  v50 = a7;
  v51[0] = a2;
  v41 = a3;
  v42 = a2;
  v51[1] = a3;
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  v12 = type metadata accessor for Table(0, v51);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v44 = v10;
  v21 = a3;
  v22 = v48;
  v43 = a6;
  Table.Child.table.getter(a2, v21, a4, v48, a6, &v40 - v19);
  outlined init with copy of Binding<AnySelectionManager>?(&v20[v12[16]], v54);
  v23 = *(v13 + 8);
  v23(v20, v12);
  v45 = v13 + 8;
  v24 = v41;
  v25 = v42;
  Table.Child.table.getter(v42, v41, a4, v22, a6, v17);
  v26 = &v17[v12[17]];
  v28 = *v26;
  v27 = v26[1];
  v46 = v26[2];
  v47 = v27;
  v29 = outlined copy of Binding<[SwiftUIAnySortComparator]>?(v28, v27);
  (v23)(v17, v12, v29);
  v30 = v49;
  Table.Child.table.getter(v25, v24, a4, v22, v43, v49);
  v31 = (v30 + v12[18]);
  v32 = v30;
  v33 = *v31;
  v34 = v31[1];
  v35 = v31[2];
  v36 = v31[3];
  v37 = outlined copy of Binding<AnyTableColumnCustomization>?(*v31, v34);
  (v23)(v32, v12, v37);
  *(&v55 + 1) = v28;
  *&v56 = v47;
  *(&v56 + 1) = v46;
  *&v57 = v33;
  *(&v57 + 1) = v34;
  *&v58 = v35;
  *(&v58 + 1) = v36;
  AccessibilityProperties.init()();
  v52[14] = 0x300000003;
  v53 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v52);
  type metadata accessor for Binding<AnySelectionManager>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v51, 0x128uLL);
  v59[4] = v56;
  v59[5] = v57;
  v59[6] = v58;
  v59[0] = v54[0];
  v59[1] = v54[1];
  v59[2] = v54[2];
  v59[3] = v55;
  v60 = v38;
  v61 = 0;
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  View.configureForLazyContainer()();
  return outlined destroy of ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>(v59);
}

uint64_t (*Table.ChildSelectionMenu.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v13 = *Value;
  v12 = Value[1];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = v12;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out PlatformItemList);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance Table<A, B, C>.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*Table.ChildSelectionMenu.value.getter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  return partial apply for closure #1 in Table.ChildSelectionMenu.value.getter;
}

void closure #1 in Table.ChildSelectionMenu.value.getter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v44 = a5;
  v41 = a2;
  v45 = a6;
  v43 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = type metadata accessor for Optional();
  v10 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v40[-v11];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v40[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v40[-v19];
  v42 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = Set.init()();
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = (v13 + 56);
  v26 = (v10 + 8);
  v27 = a1;
  v49 = (v13 + 32);
  v50 = v26;
  v48 = (v13 + 16);
  v47 = (v13 + 8);

  v28 = 0;
  v53 = v12;
  v51 = a1;
  if (v23)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v24)
    {

      Table.ChildSelectionMenu.base.getter(v41, v42, v43, v44, v45, v46);
      v39 = *(v38 + 56);
      *&v60[0] = v62;
      v39(v58, v60);

      return;
    }

    v23 = *(v20 + 8 * v29);
    ++v28;
    if (v23)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        outlined init with copy of AnyHashable(*(v27 + 48) + 40 * (v30 | (v29 << 6)), v60);
        v58[0] = v60[0];
        v58[1] = v60[1];
        v59 = v61;
        v31 = swift_dynamicCast();
        v32 = *v25;
        if (v31)
        {
          v32(v12, 0, 1, AssociatedTypeWitness);
          v33 = v54;
          (*v49)(v54, v12, AssociatedTypeWitness);
          (*v48)(v56, v33, AssociatedTypeWitness);
          type metadata accessor for Set();
          v34 = v25;
          v35 = v55;
          Set.insert(_:)();
          v36 = *v47;
          v37 = v35;
          v25 = v34;
          (*v47)(v37, AssociatedTypeWitness);
          v36(v33, AssociatedTypeWitness);
          v27 = v51;
          v12 = v53;
          v28 = v29;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v32(v12, 1, 1, AssociatedTypeWitness);
          (*v50)(v12, v57);
          v28 = v29;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v29 = v28;
      }
    }
  }

  __break(1u);
}

uint64_t (*Table.ChildSelectionAction.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  if (*Value)
  {
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = a6;
    v14[7] = v12;
    v14[8] = v13;
    v15 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out ());
  }

  else
  {
    v15 = 0;
  }

  outlined copy of AppIntentExecutor?(v12, v13);
  return v15;
}

void (*Table.ChildSelectionAction.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  result = Table.ChildSelectionAction.base.getter(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    v15[7] = v13;
    v15[8] = v14;
    return partial apply for closure #1 in Table.ChildSelectionAction.value.getter;
  }

  return result;
}

void closure #1 in Table.ChildSelectionAction.value.getter(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[1] = a3;
  v38 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = type metadata accessor for Optional();
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = v37 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = v37 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v46 = v37 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = Set.init()();
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v24 = (v12 + 56);
  v25 = (v9 + 8);
  v26 = a1;
  v41 = (v12 + 32);
  v42 = v25;
  v40 = (v12 + 16);
  v39 = (v12 + 8);

  v27 = 0;
  v45 = v11;
  v43 = a1;
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v23)
    {

      (v38)(v55);

      return;
    }

    v22 = *(v19 + 8 * v28);
    ++v27;
    if (v22)
    {
      while (1)
      {
        v29 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        outlined init with copy of AnyHashable(*(v26 + 48) + 40 * (v29 | (v28 << 6)), v53);
        v50 = v53[0];
        v51 = v53[1];
        v52 = v54;
        v30 = swift_dynamicCast();
        v31 = *v24;
        if (v30)
        {
          v31(v11, 0, 1, AssociatedTypeWitness);
          v32 = v46;
          (*v41)(v46, v11, AssociatedTypeWitness);
          (*v40)(v48, v32, AssociatedTypeWitness);
          type metadata accessor for Set();
          v33 = v24;
          v34 = v47;
          Set.insert(_:)();
          v35 = *v39;
          v36 = v34;
          v24 = v33;
          (*v39)(v36, AssociatedTypeWitness);
          v35(v32, AssociatedTypeWitness);
          v26 = v43;
          v11 = v45;
          v27 = v28;
          if (!v22)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v31(v11, 1, 1, AssociatedTypeWitness);
          (*v42)(v11, v49);
          v27 = v28;
          if (!v22)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v28 = v27;
      }
    }
  }

  __break(1u);
}