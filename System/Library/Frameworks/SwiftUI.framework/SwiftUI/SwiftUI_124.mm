void ResolvedBorderedButton.padding.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  specialized Environment.wrappedValue.getter(v3, v4 | (v5 << 8), &v14);
  if (v15 == 1 && v14 >= 3)
  {
    specialized Environment.wrappedValue.getter(v8, v9, &v13);
    specialized Environment.wrappedValue.getter(v1, v2, &v12);
    EdgeInsets.init(_all:)();
  }

  else
  {
    specialized Environment.wrappedValue.getter(v6, v7, &v11);
    specialized Environment.wrappedValue.getter(v8, v9, &v10);
  }
}

void ResolvedBorderedButton.background.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 73);
  v9 = v7 | ((v8 & 1) << 8);
  specialized Environment.wrappedValue.getter(v6, v9, &v26);
  if (v27 == 1 && v26 == 0)
  {
    v25 = 1;
    v11 = 1;
  }

  else
  {
    specialized Environment.wrappedValue.getter(v6, v9, &v26);
    v25 = v26;
    v11 = v27;
  }

  specialized Environment.wrappedValue.getter(v4, v5 & 1, &v26);
  v24 = v26;
  static EdgeInsets.zero.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v26 = v4;
  v27 = v5;
  v28 = *(v2 + 9);
  v29 = *(v2 + 25);
  *v30 = *(v2 + 41);
  *&v30[15] = *(v2 + 56);
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v36 = *(v2 + 106);
  v37 = *(v2 + 122);
  *v38 = *(v2 + 138);
  *&v38[14] = *(v2 + 152);
  v34 = *(v2 + 74);
  v35 = *(v2 + 90);
  ResolvedBorderedButton.specs.getter(&v40);
  v20 = Color.opacity(_:)();
  outlined destroy of BorderedButtonColorSpec(&v40);
  v39 = v11;
  v26 = v4;
  v27 = v5;
  v28 = *(v2 + 9);
  v29 = *(v2 + 25);
  *v30 = *(v2 + 41);
  *&v30[15] = *(v2 + 56);
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v36 = *(v2 + 106);
  v37 = *(v2 + 122);
  *v38 = *(v2 + 138);
  *&v38[14] = *(v2 + 152);
  v34 = *(v2 + 74);
  v35 = *(v2 + 90);
  ResolvedBorderedButton.specs.getter(v41);
  outlined destroy of BorderedButtonColorSpec(v41);
  v21 = v42;
  static UnitPoint.center.getter();
  *a1 = v24;
  *(a1 + 8) = v25;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = 256;
  *(a1 + 72) = v21;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
}

double destroy for ResolvedBorderedButton(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  outlined consume of Environment<Color?>.Content(*(a1 + 48));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 73));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  outlined consume of Environment<Selector?>.Content(*(a1 + 96), *(a1 + 104));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 137));
  outlined consume of Environment<Selector?>.Content(*(a1 + 144), *(a1 + 152));

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedBorderedButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedBorderedButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>, type metadata accessor for _ShapeView<ResolvedBorderShape, Color>);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>, type metadata accessor for _ShapeView<ResolvedBorderShape, Color>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<ResolvedBorderShape, Color>, MEMORY[0x1E697DB78]);
    v5[1] = MEMORY[0x1E697E070];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(uint64_t a1)
{
  type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, type metadata accessor for ViewInputFlagModifier<ButtonContainerIsBorderedInput>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, MEMORY[0x1E697FD30]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>)
  {
    _s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    type metadata accessor for _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>);
    }
  }
}

void type metadata accessor for _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>)
  {
    _s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle> and conformance _OpacityShapeStyle<A>();
    v1 = type metadata accessor for _DefaultForegroundStyleModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle> and conformance _OpacityShapeStyle<A>)
  {
    _s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable(MEMORY[0x1E697F5B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<ButtonContainerIsBorderedInput>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>)
  {
    lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E5D8]);
    v5[1] = lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _ScaleEffect>>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E070]);
    v5[1] = lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>, _ScaleEffect>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>();
    v5[1] = lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>> and conformance _DefaultForegroundStyleModifier<A>, type metadata accessor for _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>, MEMORY[0x1E6980AC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _DefaultForegroundStyleModifier<_OpacityShapeStyle<BorderedButtonColorSpec.LabelStyle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

Swift::Int TabRole.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabRole and conformance TabRole()
{
  result = lazy protocol witness table cache variable for type TabRole and conformance TabRole;
  if (!lazy protocol witness table cache variable for type TabRole and conformance TabRole)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabRole, &type metadata for TabRole, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabRole and conformance TabRole);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabRole.Role and conformance TabRole.Role()
{
  result = lazy protocol witness table cache variable for type TabRole.Role and conformance TabRole.Role;
  if (!lazy protocol witness table cache variable for type TabRole.Role and conformance TabRole.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabRole.Role, &type metadata for TabRole.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabRole.Role and conformance TabRole.Role);
  }

  return result;
}

Swift::Int DisplayListTestComparator.Option.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 1:
      MEMORY[0x18D00F6F0](1);
      break;
    case 2:
      MEMORY[0x18D00F6F0](2);
      break;
    case 3:
      MEMORY[0x18D00F6F0](3);
      break;
    default:
      MEMORY[0x18D00F6F0](0);
      if (a1)
      {
        Hasher._combine(_:)(1u);
        specialized Set.hash(into:)(v3, a1);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DisplayListTestComparator.Option(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 1)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 3)
  {
    v5 = 3;
LABEL_7:
    MEMORY[0x18D00F6F0](v5);
    return;
  }

  MEMORY[0x18D00F6F0](0);
  if (v4)
  {
    Hasher._combine(_:)(1u);

    specialized Set.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayListTestComparator.Option(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  switch(v2)
  {
    case 1:
      MEMORY[0x18D00F6F0](1);
      break;
    case 2:
      MEMORY[0x18D00F6F0](2);
      break;
    case 3:
      MEMORY[0x18D00F6F0](3);
      break;
    default:
      MEMORY[0x18D00F6F0](0);
      if (v2)
      {
        Hasher._combine(_:)(1u);
        specialized Set.hash(into:)(v4, v2);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }

  return Hasher._finalize()();
}

unint64_t destroy for DisplayListTestComparator.Option(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  v3 = v2 + 1;
  if (result)
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

uint64_t *initializeBufferWithCopyOfBuffer for DisplayListTestComparator.Option(uint64_t *a1, uint64_t *a2)
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

unint64_t *assignWithCopy for DisplayListTestComparator.Option(unint64_t *a1, unint64_t *a2)
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

unint64_t *assignWithTake for DisplayListTestComparator.Option(unint64_t *result, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for DisplayListTestComparator.Option(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
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

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayListTestComparator.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTag for DisplayListTestComparator.Option(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  if ((v1 + 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for DisplayListTestComparator.Option(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

double outlined copy of DisplayListTestComparator.Key(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t outlined consume of DisplayListTestComparator.Key(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayListTestComparator.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of DisplayListTestComparator.Key(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for DisplayListTestComparator.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of DisplayListTestComparator.Key(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of DisplayListTestComparator.Key(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for DisplayListTestComparator.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of DisplayListTestComparator.Key(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayListTestComparator.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayListTestComparator.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for DisplayListTestComparator.Key(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for DisplayListTestComparator.Key(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key()
{
  result = lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key;
  if (!lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayListTestComparator.Key, &type metadata for DisplayListTestComparator.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key;
  if (!lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayListTestComparator.Key, &type metadata for DisplayListTestComparator.Key, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayListTestComparator.Key and conformance DisplayListTestComparator.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayListTestComparator.Option and conformance DisplayListTestComparator.Option()
{
  result = lazy protocol witness table cache variable for type DisplayListTestComparator.Option and conformance DisplayListTestComparator.Option;
  if (!lazy protocol witness table cache variable for type DisplayListTestComparator.Option and conformance DisplayListTestComparator.Option)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayListTestComparator.Option, &type metadata for DisplayListTestComparator.Option, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayListTestComparator.Option and conformance DisplayListTestComparator.Option);
  }

  return result;
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v12 = v11;
    String.hash(into:)();
    v13 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x18D00F6F0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized static DisplayListTestComparator.Option.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      if (a2 == 1)
      {
        return 1;
      }

      break;
    case 2:
      if (a2 == 2)
      {
        return 1;
      }

      break;
    case 3:
      if (a2 == 3)
      {
        return 1;
      }

      break;
    default:
      if ((a2 - 1) >= 3)
      {
        if (a1)
        {
          if (a2)
          {
            v3 = a1;

            LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZSo21NSAttributedStringKeya_Tt1g5(v3, a2);
            outlined consume of DisplayListTestComparator.Option(a2);
            if (v3)
            {
              return 1;
            }
          }
        }

        else if (!a2)
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

uint64_t outlined consume of DisplayListTestComparator.Option(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

double View.tabViewBottomAccessory<A>(isEnabled:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  if (v11)
  {
    v9(v10);
    v12 = AnyView.init<A>(_:)();
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
  MEMORY[0x18D00A570](&v14, a4, &type metadata for TabViewBottomAccessoryModifier, a6);

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewBottomAccessoryModifier()
{
  type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(0, &lazy cache variable for type metadata for _GraphValue<TabViewBottomAccessoryModifier>, &type metadata for TabViewBottomAccessoryModifier, MEMORY[0x1E697DDB8]);
  type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  AGCreateWeakAttribute();
  lazy protocol witness table accessor for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey();
  return PropertyList.subscript.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TabViewBottomAccessoryModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TabViewBottomAccessoryModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewBottomAccessoryModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

void type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.TabViewBottomAccessoryKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _GraphValue<TabViewBottomAccessoryModifier>(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t static CustomizationOptionsModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type CustomizationOptionsModifier.ChildEnvironment and conformance CustomizationOptionsModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

double CustomizationOptionsModifier.ChildEnvironment.value.getter@<D0>(_OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *&v6 = *Value;
  *(&v6 + 1) = v4;

  if (*AGGraphGetValue() != 3)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  if ((*(AGGraphGetValue() + 16) & 1) == 0)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  result = *&v6;
  *a2 = v6;
  return result;
}

void specialized implicit closure #1 in _GraphInputs.toolbarCustomizationVisibility.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationVisibilityKey>, &type metadata for ToolbarCustomizationVisibilityKey, &protocol witness table for ToolbarCustomizationVisibilityKey);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

void specialized implicit closure #1 in _GraphInputs.toolbarCustomizationOptions.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationOptionsKey>, &type metadata for ToolbarCustomizationOptionsKey, &protocol witness table for ToolbarCustomizationOptionsKey);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

uint64_t CustomizableToolbarContent.defaultCustomization(_:options:)@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = *a2;
  v7[0] = a1;
  v8 = v5;
  v9 = 0;
  return ToolbarContent.modifier<A>(_:)(v7, a3, &type metadata for CustomizationOptionsModifier, x8_0);
}

unint64_t lazy protocol witness table accessor for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions()
{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCustomizationOptions, &type metadata for ToolbarCustomizationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCustomizationOptions, &type metadata for ToolbarCustomizationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCustomizationOptions, &type metadata for ToolbarCustomizationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarCustomizationOptions, &type metadata for ToolbarCustomizationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationOptions and conformance ToolbarCustomizationOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomizationOptionsModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

unint64_t lazy protocol witness table accessor for type CustomizationOptionsModifier.ChildEnvironment and conformance CustomizationOptionsModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type CustomizationOptionsModifier.ChildEnvironment and conformance CustomizationOptionsModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type CustomizationOptionsModifier.ChildEnvironment and conformance CustomizationOptionsModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomizationOptionsModifier.ChildEnvironment, &unk_1EFFDEDB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationOptionsModifier.ChildEnvironment and conformance CustomizationOptionsModifier.ChildEnvironment);
  }

  return result;
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v7);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void SystemScrollLayoutState.adjustContentOffset(by:state:updateSeed:reason:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, double a4, double a5)
{
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[2];
  v76[3] = v5[3];
  v76[4] = v6;
  *v77 = v7;
  *&v77[12] = *(v5 + 92);
  v9 = v5[1];
  v76[0] = *v5;
  v76[1] = v9;
  v10 = *a3;
  v76[2] = v8;
  if (a4 == 0.0 && a5 == 0.0)
  {
    return;
  }

  v12 = *&v77[24];
  v13 = v5[4];
  v73 = v5[3];
  v74 = v13;
  v75 = v5[5];
  v14 = v5[2];
  v71 = v5[1];
  v72 = v14;
  v15 = *v76 + a4;
  v16 = *(v76 + 1) + a5;
  v17 = *&v77[16];
  outlined init with copy of SystemScrollLayoutState(v76, &v43);
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v17);
  if (v12 != -1)
  {
    if (v12)
    {
      v18 = merge32(_:_:)(v12, a2);
      if (v18 != -1)
      {
LABEL_6:
        LODWORD(v12) = v10 + 1;
        if (v18)
        {
          LODWORD(v12) = merge32(_:_:)(v18, v10 + 1);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v18 = a2;
      if (a2 != -1)
      {
        goto LABEL_6;
      }
    }

    LODWORD(v12) = -1;
  }

LABEL_10:
  *&v55 = v15;
  *(&v55 + 1) = v16;
  v19 = v5[4];
  v58 = v5[3];
  v59 = v19;
  *v60 = v5[5];
  v20 = v5[2];
  v56 = v5[1];
  v57 = v20;
  *&v60[16] = v10;
  *&v60[24] = v12;
  outlined init with copy of SystemScrollLayoutState(&v55, &v43);
  v21 = AGCreateWeakAttribute();
  *&v62[12] = *&v60[12];
  v61[0] = v55;
  v61[1] = v56;
  v61[4] = v59;
  *v62 = *v60;
  v61[2] = v57;
  v61[3] = v58;
  *&v62[28] = v21;
  v70 = HIDWORD(v21);
  v68 = *v60;
  v69 = *&v62[16];
  v66 = v58;
  v67 = v59;
  v64 = v56;
  v65 = v57;
  v63 = v55;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    outlined destroy of SystemScrollLayoutState(&v55);
    *&v43 = v15;
    *(&v43 + 1) = v16;
    v22 = v5[4];
    v46 = v5[3];
    v47 = v22;
    v48 = v5[5];
    v23 = v5[2];
    v44 = v5[1];
    v45 = v23;
    *&v49 = v10;
    DWORD2(v49) = v12;
    outlined destroy of SystemScrollLayoutState(&v43);
  }

  else
  {
    v24 = AGGraphGetAttributeGraph();
    v25 = AGGraphRef.viewGraph()();

    v42 = 0;

    Transaction.fromScrollView.setter();
    v47 = v67;
    v48 = v68;
    v49 = v69;
    LODWORD(v50) = v70;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    v46 = v66;
    *(&v50 + 1) = 5;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v68;
    v36 = v69;
    v37 = v50;
    v38 = 0u;
    v30 = v63;
    v31 = v64;
    v32 = v65;
    v54 = 257;
    v41 = 257;
    v33 = v66;
    v34 = v67;
    v29 = 1;
    outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(v61, v28, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
    lazy protocol witness table accessor for type ScrollViewCommitMutation and conformance ScrollViewCommitMutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    if (*&v60[16] == 0x8000000000000000)
    {
      outlined init with copy of SystemScrollLayoutState(&v55, &v30);
      outlined init with copy of SystemScrollLayoutState(&v55, &v30);
      static Semantics.v6.getter();
      v26 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      outlined init with copy of SystemScrollLayoutState(&v55, &v30);
      v26 = 0;
    }

    v28[0] = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = v26 & 1;
    *(v27 + 24) = v25;

    static Update.enqueueAction(reason:_:)();
    outlined destroy of ScrollViewCommitMutation(&v43);

    outlined destroy of SystemScrollLayoutState(&v55);

    outlined destroy of SystemScrollLayoutState(&v55);

    *&v30 = v15;
    *(&v30 + 1) = v16;
    v33 = v73;
    v34 = v74;
    v35 = v75;
    v31 = v71;
    v32 = v72;
    *&v36 = v10;
    DWORD2(v36) = v12;
    outlined destroy of SystemScrollLayoutState(&v30);
  }
}

uint64_t SystemScrollLayoutState.description.getter()
{
  v1 = *(v0 + 104);
  _StringGuts.grow(_:)(102);
  MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD50DD0);
  type metadata accessor for CGPoint(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0x74657366666F202CLL, 0xEE00203A65646F4DLL);
  v2 = SystemScrollLayoutState.ContentOffsetMode.description.getter();
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0x74657366666F202CLL, 0xEE00203A64656553);
  if (v1 == -1)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64696C61766E69;
  }

  else if (v1)
  {
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v5;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7974706D65;
  }

  MEMORY[0x18D00C9B0](v4, v3);

  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD50DF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD50E10);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0;
}

unint64_t SystemScrollLayoutState.ContentOffsetMode.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    v8 = *v0;
    v9 = 0xEB000000006E6F69;
    v16 = 0x656D7473756A6461;
    v10 = 0x74616C736E617274;
    v11 = 0xE900000000000074;
    v12 = 0x6E656D6E67696C61;
    v13 = 0xE500000000000000;
    v14 = 0x7465736572;
    if (v8 != 3)
    {
      v14 = 0x736F507465736572;
      v13 = 0xED00006E6F697469;
    }

    if (v8 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (*v0)
    {
      v10 = 0xD000000000000013;
      v9 = 0x800000018CD50E70;
    }

    if (*v0 <= 1u)
    {
      v6 = v10;
    }

    else
    {
      v6 = v12;
    }

    if (*v0 <= 1u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v11;
    }

    goto LABEL_27;
  }

  if (v1 == 1)
  {
    v2 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v3 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    _StringGuts.grow(_:)(44);

    v16 = 0xD000000000000011;
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v4, v5);

    MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD50E50);
    if (v3)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

LABEL_27:
    MEMORY[0x18D00C9B0](v6, v7);

    MEMORY[0x18D00C9B0](62, 0xE100000000000000);
    return v16;
  }

  return 0x6D6574737973;
}

uint64_t assignWithCopy for ScrollViewCommitMutation(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) >> 60 == 15)
  {
    if (*(a2 + 12) >> 60 == 15)
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[3];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v6;
      *a1 = v4;
      *(a1 + 16) = v5;
      v7 = a2[4];
      v8 = a2[5];
      v9 = a2[6];
      *(a1 + 112) = *(a2 + 28);
      *(a1 + 80) = v8;
      *(a1 + 96) = v9;
      *(a1 + 64) = v7;
    }

    else
    {
      *a1 = *a2;
      v16 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v16;
      v17 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v17;
      *(a1 + 80) = a2[5];
      v18 = *(a2 + 12);
      outlined copy of SystemScrollLayoutState.ContentOffsetMode(v18);
      *(a1 + 96) = v18;
      *(a1 + 104) = *(a2 + 26);
      *(a1 + 108) = *(a2 + 108);
    }
  }

  else if (*(a2 + 12) >> 60 == 15)
  {
    outlined destroy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(a1, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
    v10 = a2[3];
    v12 = *a2;
    v11 = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v10;
    *a1 = v12;
    *(a1 + 16) = v11;
    v14 = a2[5];
    v13 = a2[6];
    v15 = a2[4];
    *(a1 + 112) = *(a2 + 28);
    *(a1 + 80) = v14;
    *(a1 + 96) = v13;
    *(a1 + 64) = v15;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = a2[1];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = a2[4];
    *(a1 + 80) = a2[5];
    v19 = *(a2 + 12);
    outlined copy of SystemScrollLayoutState.ContentOffsetMode(v19);
    v20 = *(a1 + 96);
    *(a1 + 96) = v19;
    outlined consume of SystemScrollLayoutState.ContentOffsetMode(v20);
    *(a1 + 104) = *(a2 + 26);
    *(a1 + 108) = *(a2 + 27);
    *(a1 + 112) = *(a2 + 28);
  }

  v21 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v21;
  v22 = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = v22;
  *(a1 + 177) = *(a2 + 177);
  return a1;
}

__n128 assignWithTake for ScrollViewCommitMutation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3 >> 60 == 15)
  {
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  else
  {
    v7 = *(a2 + 96);
    if (v7 >> 60 == 15)
    {
      v8 = a1;
      outlined destroy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(a1, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
      a1 = v8;
      v9 = *(a2 + 80);
      *(v8 + 64) = *(a2 + 64);
      *(v8 + 80) = v9;
      *(v8 + 96) = *(a2 + 96);
      *(v8 + 112) = *(a2 + 112);
      v10 = *(a2 + 16);
      *v8 = *a2;
      *(v8 + 16) = v10;
      v11 = *(a2 + 48);
      *(v8 + 32) = *(a2 + 32);
      *(v8 + 48) = v11;
    }

    else
    {
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      v14 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v14;
      *(a1 + 96) = v7;
      v15 = a1;
      outlined consume of SystemScrollLayoutState.ContentOffsetMode(v3);
      a1 = v15;
      *(v15 + 104) = *(a2 + 104);
      *(v15 + 112) = *(a2 + 112);
    }
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 161);
  *(a1 + 161) = result;
  *(a1 + 177) = *(a2 + 177);
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollViewCommitMutation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 178))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 177);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewCommitMutation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 177) = a2 + 1;
    }
  }

  return result;
}

unint64_t *assignWithCopy for SystemScrollLayoutState.ContentOffsetMode(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v4);
  return a1;
}

unint64_t *assignWithTake for SystemScrollLayoutState.ContentOffsetMode(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of SystemScrollLayoutState.ContentOffsetMode(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemScrollLayoutState.ContentOffsetMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemScrollLayoutState.ContentOffsetMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

double static MultimodalNavigationTitle.title(from:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  lazy protocol witness table accessor for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitle, &type metadata for MultimodalNavigationTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitle, &type metadata for MultimodalNavigationTitle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitle and conformance MultimodalNavigationTitle);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MultimodalNavigationTitle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MultimodalNavigationTitle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MultimodalNavigationTitle.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<MultimodalNavigationTitle.CodingKeys>(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

void type metadata accessor for KeyedEncodingContainer<MultimodalNavigationTitle.CodingKeys>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<MultimodalNavigationTitle.CodingKeys>)
  {
    lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys();
    v1 = type metadata accessor for KeyedEncodingContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for KeyedEncodingContainer<MultimodalNavigationTitle.CodingKeys>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitle.CodingKeys, &unk_1EFFDEF38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitle.CodingKeys, &unk_1EFFDEF38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitle.CodingKeys, &unk_1EFFDEF38, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MultimodalNavigationTitle(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<MultimodalNavigationTitle.CodingKeys>(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultimodalNavigationTitle.CodingKeys and conformance MultimodalNavigationTitle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

void EnvironmentValues.menuActionDismissBehavior.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

double View.menuActionDismissBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

double View.actionKeepsMenuPresented(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<MenuActionDismissBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuActionDismissBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MenuActionDismissBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuActionDismissBehavior.Guts and conformance MenuActionDismissBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type MenuActionDismissBehavior.Guts and conformance MenuActionDismissBehavior.Guts;
  if (!lazy protocol witness table cache variable for type MenuActionDismissBehavior.Guts and conformance MenuActionDismissBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuActionDismissBehavior.Guts, &type metadata for MenuActionDismissBehavior.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuActionDismissBehavior.Guts and conformance MenuActionDismissBehavior.Guts);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t static _DraggingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
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
  v10 = v4;
  return static _DraggingModifier.makeView(modifier:inputs:body:)(&v10, v8, a3, a4);
}

uint64_t _DraggingModifier.resolve()()
{
  type metadata accessor for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  type metadata accessor for DragGesture.Value?(0, &lazy cache variable for type metadata for DragGesture.Value?, type metadata accessor for DragGesture.Value);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v63[0] = 17;
  v61 = v0;
  type metadata accessor for DragGesture.Value?(0, &lazy cache variable for type metadata for [DraggingItem<ObjectIdentifier>]?, type metadata accessor for [DraggingItem<ObjectIdentifier>]);
  static Update.dispatchImmediately<A>(reason:_:)();
  v10 = *&v62[0];
  v58 = *v0;
  v11 = type metadata accessor for DragGesture.Value(0);
  v12 = *(*(v11 - 8) + 56);
  v59 = v9;
  v12(v9, 1, 1, v11);
  if (v10)
  {
    if (*(v10 + 16))
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {

      v10 = 0;
      v51 = 2;
      v52 = 0;
    }
  }

  else
  {
    v51 = 0;
    v52 = 1;
  }

  v14 = v0[1];
  v13 = v0[2];
  v53 = v14;
  v46 = v13;
  v16 = v0[3];
  v15 = v0[4];
  v54 = v16;
  v48 = v15;
  v18 = v0[5];
  v17 = v0[6];
  v55 = v18;
  v19 = v0[7];
  v20 = v0[8];
  v49 = v17;
  v50 = v19;
  outlined init with copy of Any?((v0 + 9), v62);
  v47 = v0[13];
  v21 = v0[14];
  v22 = v0[15];
  v23 = v0[16];
  v56 = v23;
  v57 = v21;
  v45 = (v22 == 1) | v21;
  if (v22 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v22 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v44 = v25;
  outlined init with take of DragGesture.Value?(v59, &v6[v2[12]]);
  v26 = &v6[v2[17]];
  v27 = v62[1];
  *v26 = v62[0];
  *(v26 + 1) = v27;
  *(v6 + 1) = v10;
  *(v6 + 2) = 0;
  v28 = v52;
  *(v6 + 3) = v51;
  *(v6 + 4) = v28;
  *v6 = v58;
  v29 = &v6[v2[13]];
  *v29 = v14;
  v30 = v46;
  v29[1] = v46;
  v31 = &v6[v2[14]];
  *v31 = v16;
  v32 = v48;
  v31[1] = v48;
  v33 = &v6[v2[15]];
  *v33 = v18;
  v35 = v49;
  v34 = v50;
  v33[1] = v49;
  v36 = &v6[v2[16]];
  *v36 = v34;
  v36[1] = v20;
  *&v6[v2[18]] = v47;
  v37 = &v6[v2[19]];
  *v37 = v45 & 1;
  v38 = v44;
  *(v37 + 1) = v24;
  *(v37 + 2) = v38;
  v39 = v6;
  v40 = v60;
  outlined init with take of DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(v39, v60);
  type metadata accessor for DragActionContextBox<DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>>(0);
  v41 = swift_allocObject();
  outlined init with take of DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(v40, v41 + *(*v41 + 192));
  outlined copy of Drag.SupplementaryConfiguration?(v57, v22, v56);
  outlined copy of AppIntentExecutor?(v53, v30);
  outlined copy of AppIntentExecutor?(v54, v32);
  outlined copy of AppIntentExecutor?(v55, v35);
  outlined copy of AppIntentExecutor?(v34, v20);
  outlined destroy of _DraggingModifier(v0);
  return v41;
}

void closure #1 in _DraggingModifier.resolve()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DragGesture.Value?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  static Log.dragAndDrop.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Logger?(v7);
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_18BD4A000, v10, v11, "_DraggingModifier: Will attempt to resolve the context for ObjectIdentifier ID type", v12, 2u);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
  }

  v13 = *(**(a1 + 136) + 80);

  v14 = v13(MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);

  *a2 = v14;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _DraggingModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
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
  v10 = v4;
  return static _DraggingModifier.makeView(modifier:inputs:body:)(&v10, v8, a3, a4);
}

double destroy for _DraggingModifier(void *a1)
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

  if (a1[7])
  {
  }

  if (a1[12])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 9);
  }

  if (a1[15] >= 2uLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for _DraggingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
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

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    *(a1 + 56) = v10;
    *(a1 + 64) = v11;

    v12 = *(a2 + 96);
    if (v12)
    {
LABEL_12:
      *(a1 + 96) = v12;
      (**(v12 - 8))(a1 + 72, a2 + 72);
      goto LABEL_15;
    }
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    v12 = *(a2 + 96);
    if (v12)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
LABEL_15:
  v13 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  v14 = (a2 + 112);
  if (v13 == 1)
  {
    *(a1 + 112) = *v14;
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    *(a1 + 112) = *v14;
    if (v13)
    {
      v15 = *(a2 + 128);
      *(a1 + 120) = v13;
      *(a1 + 128) = v15;
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
    }
  }

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for _DraggingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;

    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v12)
    {
      v13 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;

      goto LABEL_22;
    }
  }

  else if (v12)
  {
    v14 = *(a2 + 48);
    *(a1 + 40) = v12;
    *(a1 + 48) = v14;

    goto LABEL_22;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_22:
  v16 = (a2 + 56);
  v15 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v15)
    {
      v17 = *(a2 + 64);
      *(a1 + 56) = v15;
      *(a1 + 64) = v17;

      goto LABEL_29;
    }
  }

  else if (v15)
  {
    v19 = *(a2 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v19;

    goto LABEL_29;
  }

  v18 = *v16;
  *(a1 + 56) = *v16;
LABEL_29:
  v20 = *(a2 + 96);
  if (*(a1 + 96))
  {
    v21 = (a1 + 72);
    if (v20)
    {
      __swift_assign_boxed_opaque_existential_0(v21, (a2 + 72), v18);
      goto LABEL_36;
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else if (v20)
  {
    *(a1 + 96) = v20;
    (**(v20 - 8))(a1 + 72, a2 + 72);
    goto LABEL_36;
  }

  v22 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v22;
LABEL_36:
  v23 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  v24 = (a1 + 112);
  v26 = (a2 + 120);
  v25 = *(a2 + 120);
  v27 = (a2 + 112);
  if (v23 != 1)
  {
    if (v25 == 1)
    {
      outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
      v29 = *(a2 + 128);
      *v24 = *v27;
      *(a1 + 128) = v29;
      goto LABEL_51;
    }

    *v24 = *v27;
    v31 = *v26;
    if (v23)
    {
      if (v31)
      {
        v32 = *(a2 + 128);
        *(a1 + 120) = v31;
        *(a1 + 128) = v32;

        goto LABEL_51;
      }
    }

    else if (v31)
    {
      v30 = *(a2 + 128);
      *(a1 + 120) = v31;
      goto LABEL_48;
    }

LABEL_50:
    *(a1 + 120) = *v26;
    goto LABEL_51;
  }

  if (v25 != 1)
  {
    *v24 = *v27;
    if (*v26)
    {
      v30 = *(a2 + 128);
      *(a1 + 120) = *v26;
LABEL_48:
      *(a1 + 128) = v30;

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v28 = *v27;
  *(a1 + 128) = *(a2 + 128);
  *v24 = v28;
LABEL_51:
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithTake for _DraggingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v12)
    {
      v13 = *(a2 + 48);
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;

      goto LABEL_22;
    }
  }

  else if (v12)
  {
    v14 = *(a2 + 48);
    *(a1 + 40) = v12;
    *(a1 + 48) = v14;
    goto LABEL_22;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_22:
  v15 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v15)
    {
      v16 = *(a2 + 64);
      *(a1 + 56) = v15;
      *(a1 + 64) = v16;

      goto LABEL_29;
    }
  }

  else if (v15)
  {
    v17 = *(a2 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v17;
    goto LABEL_29;
  }

  *(a1 + 56) = *(a2 + 56);
LABEL_29:
  if (*(a1 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 72));
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v18 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  v19 = (a1 + 112);
  if (v18 != 1)
  {
    v20 = *(a2 + 120);
    if (v20 != 1)
    {
      *v19 = *(a2 + 112);
      if (v18)
      {
        if (v20)
        {
          v22 = *(a2 + 128);
          *(a1 + 120) = v20;
          *(a1 + 128) = v22;

          goto LABEL_35;
        }
      }

      else if (v20)
      {
        v23 = *(a2 + 128);
        *(a1 + 120) = v20;
        *(a1 + 128) = v23;
        goto LABEL_35;
      }

      *(a1 + 120) = *(a2 + 120);
      goto LABEL_35;
    }

    outlined destroy of Drag.SupplementaryConfiguration(a1 + 112);
  }

  *v19 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
LABEL_35:
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for _DraggingModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _DraggingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>)
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for Drag.Payload<ObjectIdentifier>, type metadata accessor for Drag.Payload);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type Drag.Payload<ObjectIdentifier> and conformance Drag.Payload<A>();
    v5 = type metadata accessor for DragActionContext(a1, MEMORY[0x1E69E5FE0], v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>);
    }
  }
}

void type metadata accessor for DragGesture.Value?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for [DraggingItem<ObjectIdentifier>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [DraggingItem<ObjectIdentifier>])
  {
    type metadata accessor for Drag.Payload<ObjectIdentifier>(255, &lazy cache variable for type metadata for DraggingItem<ObjectIdentifier>, type metadata accessor for DraggingItem);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [DraggingItem<ObjectIdentifier>]);
    }
  }
}

uint64_t outlined init with take of DragGesture.Value?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DragGesture.Value?(0, &lazy cache variable for type metadata for DragGesture.Value?, type metadata accessor for DragGesture.Value);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DragActionContextBox<DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DragActionContextBox<DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>>)
  {
    type metadata accessor for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>> and conformance DragActionContext<A, B>();
    v6 = type metadata accessor for DragActionContextBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DragActionContextBox<DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>> and conformance DragActionContext<A, B>()
{
  result = lazy protocol witness table cache variable for type DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>> and conformance DragActionContext<A, B>;
  if (!lazy protocol witness table cache variable for type DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>> and conformance DragActionContext<A, B>)
  {
    type metadata accessor for DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>>(255);
    result = swift_getWitnessTable("܏\b", v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragActionContext<ObjectIdentifier, Drag.Payload<ObjectIdentifier>> and conformance DragActionContext<A, B>);
  }

  return result;
}

uint64_t outlined copy of Drag.SupplementaryConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return outlined copy of AppIntentExecutor?(a2, a3);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for HSplitView<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for HSplitView<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for VSplitView<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for VSplitView<A>);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _SplitViewContainer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _SplitViewContainer and conformance _SplitViewContainer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _SplitViewContainer and conformance _SplitViewContainer()
{
  result = lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer;
  if (!lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SplitViewContainer, &type metadata for _SplitViewContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer;
  if (!lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SplitViewContainer, &type metadata for _SplitViewContainer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SplitViewContainer and conformance _SplitViewContainer);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _SplitViewContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type _SplitViewContainer and conformance _SplitViewContainer();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t type metadata completion function for HSplitView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for HSplitView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 57 > 0x18)
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
    if ((*(v11 + 32) >> 1) + 1 > 0x80000001)
    {
      v18 = *v11;
      v19 = *(v11 + 16);
      v20 = *(v11 + 32);
      *(v10 + 41) = *(v11 + 41);
      *(v10 + 16) = v19;
      *(v10 + 32) = v20;
      *v10 = v18;
    }

    else
    {
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 17);
      v15 = *(v11 + 16);
      outlined copy of StateOrBinding<Bool>(*v11, v13, v15, v14);
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v15;
      *(v10 + 17) = v14;
      *(v10 + 18) = *(v11 + 18);
      v16 = *(v11 + 24);
      v17 = *(v11 + 40);
      *(v10 + 56) = *(v11 + 56);
      *(v10 + 40) = v17;
      *(v10 + 24) = v16;
    }
  }

  return v3;
}

double destroy for HSplitView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v5 + 32) >> 1) + 1 <= 0x80000001)
  {
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 17);
    v9 = *(v5 + 16);

    return outlined consume of StateOrBinding<Bool>(v6, v7, v9, v8);
  }

  return result;
}

uint64_t initializeWithCopy for HSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v8 + 32) >> 1) + 1 > 0x80000001)
  {
    v15 = *v8;
    v16 = *(v8 + 16);
    v17 = *(v8 + 32);
    *(v7 + 41) = *(v8 + 41);
    *(v7 + 16) = v16;
    *(v7 + 32) = v17;
    *v7 = v15;
  }

  else
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 17);
    v12 = *(v8 + 16);
    outlined copy of StateOrBinding<Bool>(*v8, v10, v12, v11);
    *v7 = v9;
    *(v7 + 8) = v10;
    *(v7 + 16) = v12;
    *(v7 + 17) = v11;
    *(v7 + 18) = *(v8 + 18);
    v13 = *(v8 + 24);
    v14 = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 40) = v14;
    *(v7 + 24) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for HSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(v8 + 32) >> 1) + 1;
  if ((*(v7 + 32) >> 1) + 1 >= 0x80000002)
  {
    if (v9 < 0x80000002)
    {
      v18 = *v8;
      v19 = *(v8 + 8);
      v20 = *(v8 + 17);
      v21 = *(v8 + 16);
      outlined copy of StateOrBinding<Bool>(*v8, v19, v21, v20);
      *v7 = v18;
      *(v7 + 8) = v19;
      *(v7 + 16) = v21;
      *(v7 + 17) = v20;
      goto LABEL_6;
    }

LABEL_8:
    v24 = *v8;
    v25 = *(v8 + 16);
    v26 = *(v8 + 32);
    *(v7 + 41) = *(v8 + 41);
    *(v7 + 16) = v25;
    *(v7 + 32) = v26;
    *v7 = v24;
    return a1;
  }

  if (v9 >= 0x80000002)
  {
    outlined consume of StateOrBinding<Bool>(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 17));
    goto LABEL_8;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v8 + 17);
  v13 = *(v8 + 16);
  outlined copy of StateOrBinding<Bool>(*v8, v11, v13, v12);
  v14 = *v7;
  v15 = *(v7 + 8);
  v16 = *(v7 + 17);
  *v7 = v10;
  *(v7 + 8) = v11;
  v17 = *(v7 + 16);
  *(v7 + 16) = v13;
  *(v7 + 17) = v12;
  outlined consume of StateOrBinding<Bool>(v14, v15, v17, v16);
LABEL_6:
  *(v7 + 18) = *(v8 + 18);
  v22 = *(v8 + 24);
  v23 = *(v8 + 40);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 40) = v23;
  *(v7 + 24) = v22;
  return a1;
}

uint64_t initializeWithTake for HSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  v11 = *v8;
  *(v7 + 41) = *(v8 + 41);
  v7[1] = v10;
  v7[2] = v9;
  *v7 = v11;
  return a1;
}

uint64_t assignWithTake for HSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v7 + 32) >> 1) + 1 >= 0x80000002)
  {
    goto LABEL_5;
  }

  if ((*(v8 + 32) >> 1) + 1 >= 0x80000002)
  {
    outlined consume of StateOrBinding<Bool>(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 17));
LABEL_5:
    v17 = *v8;
    v18 = *(v8 + 16);
    v19 = *(v8 + 32);
    *(v7 + 41) = *(v8 + 41);
    *(v7 + 16) = v18;
    *(v7 + 32) = v19;
    *v7 = v17;
    return a1;
  }

  v9 = *(v8 + 16);
  v10 = *(v8 + 17);
  v11 = *v7;
  v12 = *(v7 + 8);
  v13 = *(v7 + 17);
  *v7 = *v8;
  v14 = *(v7 + 16);
  *(v7 + 16) = v9;
  *(v7 + 17) = v10;
  outlined consume of StateOrBinding<Bool>(v11, v12, v14, v13);
  *(v7 + 18) = *(v8 + 18);
  v15 = *(v8 + 24);
  v16 = *(v8 + 40);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 40) = v16;
  *(v7 + 24) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for HSplitView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
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

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFD)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 32) >> 1;
  v18 = -2 - v17;
  if (-2 - v17 < 0)
  {
    v18 = -1;
  }

  if (v17 <= 0x80000000)
  {
    v19 = -1;
  }

  else
  {
    v19 = v18;
  }

  if (v19 + 1 >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for HSplitView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFD)
  {
    v8 = 2147483645;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
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
            return result;
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
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFD)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFD)
        {
          result = 0.0;
          *(v19 + 41) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *v19 = 0u;
          *v19 = a2 - 2147483646;
        }

        else
        {
          *(v19 + 24) = 0;
          *(v19 + 32) = 2 * (-2 - a2);
          *(v19 + 40) = 0;
          *(v19 + 48) = 0;
          *(v19 + 56) = 0;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 57);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
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
    a1[v10] = v17;
  }

  return result;
}

double destroy for _SplitViewContainer(uint64_t a1)
{
  if (*(a1 + 40) >> 1 != 4294967294 || *(a1 + 64) >= 2u)
  {
    return outlined consume of StateOrBinding<Bool>(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 25));
  }

  return result;
}

__n128 initializeWithCopy for _SplitViewContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 40) >> 1 != 4294967294 || *(a2 + 64) >= 2u)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 25);
    v6 = *(a2 + 24);
    outlined copy of StateOrBinding<Bool>(v3, v4, v6, v5);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
    *(a1 + 25) = v5;
    *(a1 + 26) = *(a2 + 26);
    result = *(a2 + 32);
    v9 = *(a2 + 48);
    *(a1 + 32) = result;
    *(a1 + 48) = v9;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v10 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v10;
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 49);
    *(a1 + 49) = result;
  }

  return result;
}

uint64_t assignWithCopy for _SplitViewContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 40) >> 1 == 4294967294 && *(a2 + 64) < 2u;
  if (*(a1 + 40) >> 1 == 4294967294 && *(a1 + 64) < 2u)
  {
    if (v5)
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 24);
      v12 = *(a2 + 40);
      *(a1 + 49) = *(a2 + 49);
      *(a1 + 40) = v12;
      *(a1 + 24) = v11;
      *(a1 + 8) = v10;
      return a1;
    }

    v21 = *(a2 + 8);
    v22 = *(a2 + 16);
    v23 = *(a2 + 25);
    v24 = *(a2 + 24);
    outlined copy of StateOrBinding<Bool>(v21, v22, v24, v23);
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v24;
    *(a1 + 25) = v23;
LABEL_18:
    *(a1 + 26) = *(a2 + 26);
    v25 = *(a2 + 32);
    v26 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v25;
    *(a1 + 48) = v26;
    return a1;
  }

  if (!v5)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 16);
    v15 = *(a2 + 25);
    v16 = *(a2 + 24);
    outlined copy of StateOrBinding<Bool>(v13, v14, v16, v15);
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 25);
    *(a1 + 8) = v13;
    *(a1 + 16) = v14;
    v20 = *(a1 + 24);
    *(a1 + 24) = v16;
    *(a1 + 25) = v15;
    outlined consume of StateOrBinding<Bool>(v17, v18, v20, v19);
    goto LABEL_18;
  }

  outlined destroy of InspectorState(a1 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 49);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 49) = v9;
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  return a1;
}

__n128 assignWithTake for _SplitViewContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 40) >> 1 != 4294967294 || *(a1 + 64) >= 2u)
  {
    if (*(a2 + 40) >> 1 != 4294967294 || *(a2 + 64) >= 2u)
    {
      v5 = *(a2 + 24);
      v6 = *(a2 + 25);
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v9 = *(a1 + 25);
      *(a1 + 8) = *(a2 + 8);
      v10 = *(a1 + 24);
      *(a1 + 24) = v5;
      *(a1 + 25) = v6;
      outlined consume of StateOrBinding<Bool>(v8, v7, v10, v9);
      *(a1 + 26) = *(a2 + 26);
      result = *(a2 + 32);
      v12 = *(a2 + 48);
      *(a1 + 32) = result;
      *(a1 + 48) = v12;
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of InspectorState(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      result = *(a2 + 49);
      *(a1 + 49) = result;
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 49);
    *(a1 + 49) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SplitViewContainer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 65))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40) >> 1;
  if (v3 <= 0x80000000)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((-2 - v3) & ~((-2 - v3) >> 31)) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _SplitViewContainer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = 2 * (-2 - a2);
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
    }
  }

  return result;
}

void type metadata accessor for StyleContextWriter<ContainerStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>, &lazy cache variable for type metadata for MenuStyleModifier<BorderedButtonMenuStyle>, lazy protocol witness table accessor for type BorderedButtonMenuStyle and conformance BorderedButtonMenuStyle, &type metadata for BorderedButtonMenuStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for _MenuButtonStyleConfiguration.Label;
    v4[1] = &type metadata for _MenuButtonStyleConfiguration.Content;
    v4[2] = &protocol witness table for _MenuButtonStyleConfiguration.Label;
    v4[3] = &protocol witness table for _MenuButtonStyleConfiguration.Content;
    v2 = type metadata accessor for Menu(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderedButtonMenuStyle and conformance BorderedButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type BorderedButtonMenuStyle and conformance BorderedButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type BorderedButtonMenuStyle and conformance BorderedButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedButtonMenuStyle, &type metadata for BorderedButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonMenuStyle and conformance BorderedButtonMenuStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>();
    type metadata accessor for MenuStyleModifier<BorderedButtonMenuStyle>(255, a3, a4, a5);
    v9 = type metadata accessor for ModifiedContent();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)
  {
    type metadata accessor for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle);
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderlessButtonMenuStyle>>, _EnvironmentKeyWritingModifier<Visibility>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<TexturedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<TexturedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<TexturedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<BorderedButtonMenuStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<TexturedButtonMenuStyle>>, &lazy cache variable for type metadata for MenuStyleModifier<TexturedButtonMenuStyle>, lazy protocol witness table accessor for type TexturedButtonMenuStyle and conformance TexturedButtonMenuStyle, &type metadata for TexturedButtonMenuStyle);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, protocol conformance descriptor for Menu<A, B>);
    v5[1] = &protocol witness table for MenuStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<_MenuButtonStyleConfiguration.Label, _MenuButtonStyleConfiguration.Content>, MenuStyleModifier<TexturedButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for MenuStyleModifier<BorderedButtonMenuStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for MenuStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TexturedButtonMenuStyle and conformance TexturedButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type TexturedButtonMenuStyle and conformance TexturedButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type TexturedButtonMenuStyle and conformance TexturedButtonMenuStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TexturedButtonMenuStyle, &type metadata for TexturedButtonMenuStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TexturedButtonMenuStyle and conformance TexturedButtonMenuStyle);
  }

  return result;
}

uint64_t type metadata completion function for InspectorModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InspectorModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
  }

  return v3;
}

uint64_t initializeWithCopy for InspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  return a1;
}

uint64_t assignWithCopy for InspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  return a1;
}

uint64_t initializeWithTake for InspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t assignWithTake for InspectorModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
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

void storeEnumTagSinglePayload for InspectorModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
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
      if (v7 < 0x7FFFFFFF)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v18 + 16) = 0;
          *v18 = a2 & 0x7FFFFFFF;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 8) = a2 - 1;
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
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
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

uint64_t InspectorModifier.init(inspectorContent:isPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for InspectorModifier(0, a5, a6, v13);
  v15 = a7 + *(result + 36);
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  return result;
}

uint64_t InspectorModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  swift_getWitnessTable(protocol conformance descriptor for InspectorModifier<A>);
  v4 = type metadata accessor for _ViewModifier_Content();
  v27 = lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4);
  v43 = &type metadata for InspectorStyleConfiguration.MainContent;
  v44 = v4;
  v45 = v27;
  v46 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v43);
  v26 = type metadata accessor for ModifiedContent();
  v5 = *(a1 + 16);
  v28 = lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent();
  v6 = *(a1 + 24);
  v43 = &type metadata for InspectorStyleConfiguration.InspectorContent;
  v44 = v5;
  v45 = v28;
  v46 = v6;
  type metadata accessor for StaticSourceWriter(255, &v43);
  v7 = type metadata accessor for ModifiedContent();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = v2 + *(a1 + 36);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);

  v40 = v14;
  v41 = v15;
  v42 = v16;
  v36 = v5;
  v37 = v6;
  v17 = lazy protocol witness table accessor for type ResolvedInspector and conformance ResolvedInspector();
  View.viewAlias<A, B>(_:_:)(&type metadata for InspectorStyleConfiguration.MainContent, partial apply for closure #1 in InspectorModifier.body(content:), v35, &type metadata for ResolvedInspector, &type metadata for InspectorStyleConfiguration.MainContent, v4, v17);

  v40 = v43;
  v41 = v44;
  v42 = v45;
  v18 = v5;
  v32 = v5;
  v33 = v6;
  v34 = v24[1];
  v39[0] = v17;
  v39[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v19 = MEMORY[0x1E697E858];
  v20 = v26;
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v26, v39);
  View.viewAlias<A, B>(_:_:)(&type metadata for InspectorStyleConfiguration.InspectorContent, partial apply for closure #2 in InspectorModifier.body(content:), v31, v20, &type metadata for InspectorStyleConfiguration.InspectorContent, v18, v21);

  v38[0] = v21;
  v38[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v19, v7, v38);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v29 + 8);
  v22(v9, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v12, v7);
}

uint64_t closure #1 in InspectorModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for InspectorModifier(255, a1, a2, a4);
  swift_getWitnessTable(protocol conformance descriptor for InspectorModifier<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t closure #2 in InspectorModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedInspector and conformance ResolvedInspector();
    v5[1] = &protocol witness table for InspectorStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>>)
  {
    type metadata accessor for InspectorStyleModifier<SystemInspectorStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ResolvedInspector, InspectorStyleModifier<SystemInspectorStyle>>);
    }
  }
}

void type metadata accessor for InspectorStyleModifier<SystemInspectorStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InspectorStyleModifier<SystemInspectorStyle>)
  {
    v2 = lazy protocol witness table accessor for type SystemInspectorStyle and conformance SystemInspectorStyle();
    v4 = type metadata accessor for InspectorStyleModifier(a1, &unk_1EFFDF550, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InspectorStyleModifier<SystemInspectorStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemInspectorStyle and conformance SystemInspectorStyle()
{
  result = lazy protocol witness table cache variable for type SystemInspectorStyle and conformance SystemInspectorStyle;
  if (!lazy protocol witness table cache variable for type SystemInspectorStyle and conformance SystemInspectorStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemInspectorStyle, &unk_1EFFDF550, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemInspectorStyle and conformance SystemInspectorStyle);
  }

  return result;
}

double protocol witness for InspectorStyle.makeBody(configuration:) in conformance AutomaticInspectorStyle@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent> and conformance SystemInspector<A, B>()
{
  result = lazy protocol witness table cache variable for type SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent> and conformance SystemInspector<A, B>;
  if (!lazy protocol witness table cache variable for type SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent> and conformance SystemInspector<A, B>)
  {
    type metadata accessor for SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent>();
    result = swift_getWitnessTable(protocol conformance descriptor for SystemInspector<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent> and conformance SystemInspector<A, B>);
  }

  return result;
}

void type metadata accessor for SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent>()
{
  if (!lazy cache variable for type metadata for SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for InspectorStyleConfiguration.MainContent;
    v4[1] = &type metadata for InspectorStyleConfiguration.InspectorContent;
    v4[2] = &protocol witness table for InspectorStyleConfiguration.MainContent;
    v4[3] = &protocol witness table for InspectorStyleConfiguration.InspectorContent;
    v2 = type metadata accessor for SystemInspector(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for SystemInspector<InspectorStyleConfiguration.MainContent, InspectorStyleConfiguration.InspectorContent>);
    }
  }
}

void ContainerBackgroundBridge.lastContainerBackgroundLuminance.didset(uint64_t a1)
{
  if (*(a1 + 21))
  {
    if (*(v1 + 133))
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(v1 + 133) & 1) == 0)
  {
    v4 = *(v1 + 112);
    v3 = *(v1 + 120);
    if (*(a1 + 4))
    {
      if ((v4 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v4 & 0x100000000) != 0 || *a1 != *&v4)
    {
      goto LABEL_5;
    }

    if (*(a1 + 12))
    {
      if ((v3 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v3 & 0x100000000) != 0 || *(a1 + 8) != *&v3)
    {
      goto LABEL_5;
    }

    v5 = *(v1 + 128) | (*(v1 + 132) << 32);
    if (*(a1 + 20))
    {
      if ((v5 & 0x100000000) != 0)
      {
        return;
      }
    }

    else if ((v5 & 0x100000000) == 0 && *(a1 + 16) == *(v1 + 128))
    {
      return;
    }
  }

LABEL_5:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

double ContainerBackgroundBridge.background.didset(void *a1, char a2)
{
  v3 = v2;
  v4 = *(v2 + 136);
  if (v4)
  {
    v6 = v4;
    if (a1)
    {
      type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) != 0 && *(v3 + 136) && *(v3 + 144) == (a2 & 1))
      {
        return result;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_12;
  }

  if (a1)
  {
LABEL_12:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);

      swift_unknownObjectRelease();
    }

    return result;
  }

  v10 = 0;
  return result;
}

void NavigationStackHostingController<>.updateSidebarGlass(containerBackgroundIsSolid:)(char a1)
{
  v2 = v1;
  v4 = [v2 splitViewController];
  if (v4)
  {
    v5 = v4;
    v6 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F8);
    swift_beginAccess();
    if (!v6[1])
    {
      v7 = (a1 & 1) == 0;
      if ([v5 primaryBackgroundStyle] != v7)
      {
        [v5 setPrimaryBackgroundStyle_];
      }
    }
  }
}

void specialized PresentationHostingController.setPresentationBackgroundEffect(_:)(void *a1)
{
  v2 = v1;
  v4 = [v2 presentationController];
  if (!v4)
  {
LABEL_5:
    v8 = [v2 popoverPresentationController];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v7 = [v8 adaptiveSheetPresentationController];

    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_5;
  }

  v7 = v6;
LABEL_7:
  if (!a1)
  {
    goto LABEL_13;
  }

  v10 = a1;
  [v10 alphaComponent];
  if (v11 != 1.0)
  {

    goto LABEL_13;
  }

  v12 = [objc_opt_self() effectWithColor_];

  if (!v12)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = v12;
LABEL_14:
  v14 = v13;
  [v7 set_swiftui_backgroundEffect_];
}

double outlined copy of ContainerBackgroundValue?(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
    outlined copy of ContainerBackgroundValue.Content(a1, a2);
  }

  return result;
}

void *TextEditingCommands.body.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t protocol witness for Commands.body.getter in conformance TextEditingCommands@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t static TableColumnAlignment.automatic.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, a1, 5, v4);
}

uint64_t static TableColumnAlignment.numeric(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 5, v4);
}

uint64_t TableColumnAlignment.resolve(in:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for Locale.NumberingSystem?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale.Components();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Locale.NumberingSystem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TableColumnAlignment.Guts(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  outlined init with copy of TableColumnAlignment.Guts(v2, v20, type metadata accessor for TableColumnAlignment.Guts);
  v23 = (*(v12 + 48))(v20, 5, v11);
  if (v23 <= 2)
  {
    if ((v23 - 1) < 2)
    {
      v37 = v21;
      v38 = v22;
      EnvironmentValues.layoutDirection.getter();
      if (v36)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    (*(v12 + 32))(v14, v20, v11);
    v37 = v21;
    v38 = v22;
    EnvironmentValues.locale.getter();
    Locale.Components.init(locale:)();
    v25 = v31;
    (*(v12 + 16))(v31, v14, v11);
    (*(v12 + 56))(v25, 0, 1, v11);
    Locale.Components.numberingSystem.setter();
    v27 = v32;
    v26 = v33;
    (*(v32 + 16))(v30, v10, v33);
    Locale.init(components:)();
    v28 = TableColumnAlignment.resolveNumeric(locale:)(v17);
    (*(v34 + 8))(v17, v35);
    (*(v27 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    return v28;
  }

  if (v23 == 3)
  {
    return 1;
  }

  if (v23 != 4)
  {
    v37 = v21;
    v38 = v22;
    EnvironmentValues.locale.getter();
    v28 = TableColumnAlignment.resolveNumeric(locale:)(v17);
    (*(v34 + 8))(v17, v35);
    return v28;
  }

  v37 = v21;
  v38 = v22;
  EnvironmentValues.layoutDirection.getter();
  if (v36)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t TableColumnAlignment.resolveNumeric(locale:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatStyle<Int>(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = 0;
  (*(v3 + 16))(v5, a1, v2, v9);
  lazy protocol witness table accessor for type Int and conformance Int();
  IntegerFormatStyle.init(locale:)();
  lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, type metadata accessor for IntegerFormatStyle<Int>, MEMORY[0x1E6968908]);
  BinaryInteger.formatted<A>(_:)();
  (*(v8 + 8))(v11, v7);
  v12 = specialized Collection.first.getter(v14[2], v14[3]);

  if ((v12 & 0x100000000) != 0)
  {
    return 2;
  }

  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (_DirectionForCharIsRTL())
  {
    return 0;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t TableColumnAlignment.resolveTextAlignment(in:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for Locale.NumberingSystem?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale.Components();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for TableColumnAlignment.Guts(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v24 = *a1;
  v25 = a1[1];
  v44 = v24;
  v26 = v2;
  outlined init with copy of TableColumnAlignment.Guts(v2, &v36 - v22, type metadata accessor for TableColumnAlignment.Guts);
  v38 = v7;
  v27 = *(v7 + 48);
  v28 = v27(v23, 5, v6);
  if (v28 <= 2)
  {
    if ((v28 - 1) < 2)
    {
      return 0;
    }

    outlined destroy of (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(v23, type metadata accessor for TableColumnAlignment.Guts);
LABEL_8:
    v46 = v44;
    v47 = v25;
    v36 = v25;
    EnvironmentValues.locale.getter();
    Locale.Components.init(locale:)();
    outlined init with copy of TableColumnAlignment.Guts(v26, v20, type metadata accessor for TableColumnAlignment.Guts);
    if (v27(v20, 5, v6))
    {
      outlined destroy of (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(v20, type metadata accessor for TableColumnAlignment.Guts);
    }

    else
    {
      v31 = v37;
      v30 = v38;
      (*(v38 + 32))(v37, v20, v6);
      v32 = v39;
      (*(v30 + 16))(v39, v31, v6);
      (*(v30 + 56))(v32, 0, 1, v6);
      Locale.Components.numberingSystem.setter();
      (*(v30 + 8))(v31, v6);
    }

    v34 = v40;
    v33 = v41;
    (*(v40 + 16))(v14, v17, v41);
    Locale.init(components:)();
    v35 = TableColumnAlignment.resolveNumeric(locale:)(v11);
    (*(v42 + 8))(v11, v43);
    v46 = v44;
    v47 = v36;
    EnvironmentValues.layoutDirection.getter();
    (*(v34 + 8))(v17, v33);
    if (v35)
    {
      if (v35 == 1)
      {
        return 1;
      }

      if (v45)
      {
        return 0;
      }
    }

    else if ((v45 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }

  if (v28 == 3)
  {
    return 1;
  }

  if (v28 != 4)
  {
    goto LABEL_8;
  }

  return 2;
}

uint64_t TableColumnAlignment.Guts.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TableColumnAlignment.Guts(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TableColumnAlignment.Guts(v1, v8, type metadata accessor for TableColumnAlignment.Guts);
  v9 = (*(v3 + 48))(v8, 5, v2);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 2;
    }

    else if (v9 == 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x18D00F6F0](5);
      lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem(&lazy protocol witness table cache variable for type Locale.NumberingSystem and conformance Locale.NumberingSystem, MEMORY[0x1E6969648], MEMORY[0x1E6969650]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v3 + 8))(v5, v2);
    }

    v10 = v9 != 1;
  }

  return MEMORY[0x18D00F6F0](v10);
}

Swift::Int TableColumnAlignment.hashValue.getter()
{
  Hasher.init(_seed:)();
  TableColumnAlignment.Guts.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnAlignment.Guts()
{
  Hasher.init(_seed:)();
  TableColumnAlignment.Guts.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnAlignment.Guts(uint64_t a1)
{
  Hasher.init(_seed:)();
  TableColumnAlignment.Guts.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance TableColumnAlignment.Key@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TableColumnAlignment(0);
  v3 = __swift_project_value_buffer(v2, static TableColumnAlignment.Key.defaultValue);
  return outlined init with copy of TableColumnAlignment.Guts(v3, a1, type metadata accessor for TableColumnAlignment);
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance TableColumnAlignment.Resolved.Key@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, __n128)@<X3>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for TableColumnAlignment(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<TableColumnAlignment.Key>();
  lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnAlignment.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnAlignment.Key>, MEMORY[0x1E697FE40]);
  if (v9)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = (a2)(v13);
  result = outlined destroy of (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(v8, type metadata accessor for TableColumnAlignment);
  *a3 = v11;
  return result;
}

uint64_t specialized static TableColumnAlignment.Guts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TableColumnAlignment.Guts(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  outlined init with copy of TableColumnAlignment.Guts(a1, v13, type metadata accessor for TableColumnAlignment.Guts);
  outlined init with copy of TableColumnAlignment.Guts(a2, &v13[v15], type metadata accessor for TableColumnAlignment.Guts);
  v16 = *(v5 + 48);
  v17 = v16(v13, 5, v4);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v21 = v16(&v13[v15], 5, v4);
      v19 = type metadata accessor for TableColumnAlignment.Guts;
      if (v21 != 3)
      {
        goto LABEL_17;
      }
    }

    else if (v17 == 4)
    {
      v20 = v16(&v13[v15], 5, v4);
      v19 = type metadata accessor for TableColumnAlignment.Guts;
      if (v20 != 4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = v16(&v13[v15], 5, v4);
      v19 = type metadata accessor for TableColumnAlignment.Guts;
      if (v24 != 5)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v17)
    {
      outlined init with copy of TableColumnAlignment.Guts(v13, v10, type metadata accessor for TableColumnAlignment.Guts);
      if (!v16(&v13[v15], 5, v4))
      {
        (*(v5 + 32))(v7, &v13[v15], v4);
        v22 = MEMORY[0x18D000440](v10, v7);
        v26 = *(v5 + 8);
        v26(v7, v4);
        v26(v10, v4);
        v19 = type metadata accessor for TableColumnAlignment.Guts;
        goto LABEL_18;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_17;
    }

    if (v17 == 1)
    {
      v18 = v16(&v13[v15], 5, v4);
      v19 = type metadata accessor for TableColumnAlignment.Guts;
      if (v18 == 1)
      {
        goto LABEL_13;
      }

LABEL_17:
      v22 = 0;
      v19 = type metadata accessor for (TableColumnAlignment.Guts, TableColumnAlignment.Guts);
      goto LABEL_18;
    }

    v23 = v16(&v13[v15], 5, v4);
    v19 = type metadata accessor for TableColumnAlignment.Guts;
    if (v23 != 2)
    {
      goto LABEL_17;
    }
  }

LABEL_13:
  v22 = 1;
LABEL_18:
  outlined destroy of (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(v13, v19);
  return v22 & 1;
}

uint64_t lazy protocol witness table accessor for type Locale.NumberingSystem and conformance Locale.NumberingSystem(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for TableColumnAlignment(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for TableColumnAlignment.Guts(0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for Locale.NumberingSystem();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 5, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 5, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithCopy for TableColumnAlignment(void *a1, const void *a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 5, v4))
  {
    v6 = *(*(type metadata accessor for TableColumnAlignment.Guts(0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 5, v4);
    return a1;
  }
}

void *assignWithCopy for TableColumnAlignment(void *a1, void *a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 5, v4);
  v8 = v6(a2, 5, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 5, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(type metadata accessor for TableColumnAlignment.Guts(0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TableColumnAlignment(void *a1, const void *a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 5, v4))
  {
    v6 = *(*(type metadata accessor for TableColumnAlignment.Guts(0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 5, v4);
    return a1;
  }
}

void *assignWithTake for TableColumnAlignment(void *a1, void *a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 5, v4);
  v8 = v6(a2, 5, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 5, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(type metadata accessor for TableColumnAlignment.Guts(0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t type metadata completion function for TableColumnAlignment(uint64_t a1)
{
  result = type metadata accessor for TableColumnAlignment.Guts(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumnAlignment.Guts(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for Locale.NumberingSystem();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 5, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 5, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TableColumnAlignment(uint64_t a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 5, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for TableColumnAlignment.Guts(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 5, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 5, v6);
    return a1;
  }
}

void *assignWithCopy for TableColumnAlignment.Guts(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 5, v6);
  v10 = v8(a2, 5, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 5, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for TableColumnAlignment.Guts(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 5, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 5, v6);
    return a1;
  }
}

void *assignWithTake for TableColumnAlignment.Guts(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.NumberingSystem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 5, v6);
  v10 = v8(a2, 5, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 5, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t getEnumTag for TableColumnAlignment.Guts(uint64_t a1)
{
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 5, v2);
}

uint64_t destructiveInjectEnumTag for TableColumnAlignment.Guts(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.NumberingSystem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 5, v4);
}

uint64_t type metadata completion function for TableColumnAlignment.Guts(uint64_t a1)
{
  result = type metadata accessor for Locale.NumberingSystem();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of TableColumnAlignment.Guts(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (TableColumnAlignment.Guts, TableColumnAlignment.Guts))
  {
    type metadata accessor for TableColumnAlignment.Guts(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TableColumnAlignment.Guts, TableColumnAlignment.Guts));
    }
  }
}

uint64_t outlined destroy of (TableColumnAlignment.Guts, TableColumnAlignment.Guts)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TableColumnAlignment.Resolved and conformance TableColumnAlignment.Resolved()
{
  result = lazy protocol witness table cache variable for type TableColumnAlignment.Resolved and conformance TableColumnAlignment.Resolved;
  if (!lazy protocol witness table cache variable for type TableColumnAlignment.Resolved and conformance TableColumnAlignment.Resolved)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnAlignment.Resolved, &type metadata for TableColumnAlignment.Resolved, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnAlignment.Resolved and conformance TableColumnAlignment.Resolved);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAlignment and conformance TextAlignment()
{
  result = lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment;
  if (!lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E1E8], MEMORY[0x1E697E1E0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<TableColumnAlignment.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnAlignment.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnAlignment.Key>);
    }
  }
}

void type metadata accessor for Locale.NumberingSystem?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Locale.NumberingSystem?)
  {
    type metadata accessor for Locale.NumberingSystem();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Locale.NumberingSystem?);
    }
  }
}

void type metadata accessor for IntegerFormatStyle<Int>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IntegerFormatStyle<Int>)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v1 = type metadata accessor for IntegerFormatStyle();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IntegerFormatStyle<Int>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for HalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for HalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for HalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *key path getter for EnvironmentValues.layoutDirection : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.layoutDirection.getter();
  *a2 = v4;
  return result;
}

double closure #1 in HalfOpenCircularGauge.body.getter@<D0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *a4 = a5;
  *(a4 + 8) = a1 & 1;
  *(a4 + 9) = BYTE1(a1) & 1;
  *(a4 + 10) = BYTE2(a1) & 1;
  *(a4 + 11) = HIBYTE(a1) & 1;
  *(a4 + 16) = a2;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
  *(a4 + 40) = v11;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = v12;
  *(a4 + 72) = 0;
  *(a4 + 80) = v13;
  *(a4 + 88) = 0;
  *(a4 + 96) = v14;
  *(a4 + 104) = 0;
  *(a4 + 112) = v15;
  *(a4 + 120) = 0;
  *(a4 + 121) = a3;
  *(a4 + 128) = xmmword_18CDC0600;
  *(a4 + 144) = xmmword_18CDC0610;

  return result;
}

void *protocol witness for View.body.getter in conformance HalfOpenCircularGauge@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 11);
  v8 = *(v1 + 16);
  if (v7)
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  closure #1 in HalfOpenCircularGauge.body.getter(v4 | (v5 << 8) | (v6 << 16) | v9, v8, 1, __src, v3);
  closure #1 in HalfOpenCircularGauge.body.getter(v4 | (v5 << 8) | (v6 << 16) | v9, v8, 0, &__src[160], v3);
  return memcpy(a1, __src, 0x140uLL);
}

uint64_t SizedHalfOpenCircularGauge.effectivePrimaryTint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (specialized Environment.wrappedValue.getter(*(v0 + 40), *(v0 + 48), *(v0 + 56)))
  {

    return AnyShapeStyle.init<A>(_:)();
  }

  if (v1)
  {

    return AnyShapeStyle.init<A>(_:)();
  }

  result = specialized Environment.wrappedValue.getter(v2, v3);
  if (!result)
  {
    static Color.primary.getter();
    return AnyShapeStyle.init<A>(_:)();
  }

  return result;
}

uint64_t SizedHalfOpenCircularGauge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v34 = v1[6];
  v35 = v3;
  v4 = v1[9];
  v36 = v1[8];
  v37 = v4;
  v5 = v1[3];
  v32[2] = v1[2];
  v32[3] = v5;
  v6 = v1[5];
  v32[4] = v1[4];
  v33 = v6;
  v7 = v1[1];
  v32[0] = *v1;
  v32[1] = v7;
  specialized Environment.wrappedValue.getter(v33, SBYTE8(v33));
  v8 = swift_allocObject();
  v9 = v1[7];
  v8[7] = v1[6];
  v8[8] = v9;
  v10 = v1[9];
  v8[9] = v1[8];
  v8[10] = v10;
  v11 = v1[3];
  v8[3] = v1[2];
  v8[4] = v11;
  v12 = v1[5];
  v8[5] = v1[4];
  v8[6] = v12;
  v13 = v1[1];
  v8[1] = *v1;
  v8[2] = v13;
  outlined init with copy of SizedHalfOpenCircularGauge(v32, &v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v31 = v24;
  v30 = v26;
  v29 = 0;
  KeyPath = swift_getKeyPath();
  result = static VerticalAlignment.center.getter();
  v22 = BYTE8(v32[0]) & 1;
  *a1 = partial apply for closure #1 in SizedHalfOpenCircularGauge.body.getter;
  *(a1 + 8) = v8;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = 0x3F847AE147AE147BLL;
  *(a1 + 96) = result;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 113) = v22;
  return result;
}

void *closure #1 in SizedHalfOpenCircularGauge.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in SizedHalfOpenCircularGauge.body.getter(a2, v12, __src);
  memcpy(__dst, __src, 0x271uLL);
  memcpy(v15, __src, 0x271uLL);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(__dst, &v10, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v15, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<);
  *a3 = v6;
  a3[1] = v8;
  return memcpy(a3 + 2, __dst, 0x271uLL);
}

uint64_t closure #1 in closure #1 in SizedHalfOpenCircularGauge.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  SizedHalfOpenCircularGauge.centerContent(proxy:)(a2, v35);
  v5 = *(a2 + 16);
  __src[0] = *a2;
  __src[1] = v5;
  __src[2] = *(a2 + 32);
  LODWORD(__src[3]) = *(a2 + 48);
  GeometryProxy.size.getter();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>(0);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  View.baselineOffset(_:)();
  v88[0] = *v35;
  v88[1] = *&v35[16];
  v88[2] = *&v35[32];
  v89 = *&v35[48];
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v88, type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>);
  v92 = v74[2];
  v93 = v74[3];
  v94 = v75;
  v90 = v74[0];
  v91 = v74[1];
  v6 = *(a2 + 16);
  __src[0] = *a2;
  __src[1] = v6;
  __src[2] = *(a2 + 32);
  LODWORD(__src[3]) = *(a2 + 48);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v78 = v92;
  v79 = v93;
  *&v80 = v94;
  v77 = v91;
  v76 = v90;
  v31 = static HorizontalAlignment.center.getter();
  LOBYTE(v54[0]) = 1;
  closure #1 in closure #1 in closure #1 in SizedHalfOpenCircularGauge.body.getter(a2, __src);
  memcpy(__dst, __src, 0x139uLL);
  memcpy(v73, __src, 0x139uLL);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(__dst, v35, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v73, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>);
  memcpy(&v71[7], __dst, 0x139uLL);
  v29 = v54[0];
  v7 = *a1;
  v8 = *(a1 + 10);
  v9 = *(a1 + 9);
  specialized Environment.wrappedValue.getter(*(a1 + 12), *(a1 + 104), __src);
  if (__src[0] & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 14), *(a1 + 120)))
  {
    v7 = 0.0;
  }

  v10 = a1[7];
  v62 = a1[6];
  v63 = v10;
  v11 = a1[9];
  v64 = a1[8];
  v65 = v11;
  v12 = a1[3];
  v58 = a1[2];
  v59 = v12;
  v13 = a1[5];
  v60 = a1[4];
  v61 = v13;
  v14 = a1[1];
  v56 = *a1;
  v57 = v14;
  v28 = SizedHalfOpenCircularGauge.effectivePrimaryTint.getter();
  if (specialized Environment.wrappedValue.getter(*(a1 + 5), *(a1 + 6), *(a1 + 56)))
  {
    v16 = v15;

    *&__src[0] = v16;
    v27 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    v27 = 0;
  }

  if ((v8 | v9))
  {
    v17 = 1.57079633;
  }

  else
  {
    v17 = 2.0943951;
  }

  v18 = *(a1 + 11);
  KeyPath = swift_getKeyPath();
  v70 = v18;
  v19 = swift_getKeyPath();
  v69 = 0;
  v20 = swift_getKeyPath();
  v68 = 0;
  v21 = swift_getKeyPath();
  v33[8] = v84;
  v33[9] = v85;
  v33[10] = v86;
  v33[4] = v80;
  v33[5] = v81;
  v33[6] = v82;
  v33[7] = v83;
  v33[0] = v76;
  v33[1] = v77;
  v33[2] = v78;
  v33[3] = v79;
  v32[8] = v84;
  v32[9] = v85;
  v32[10] = v86;
  v32[4] = v80;
  v32[5] = v81;
  v32[6] = v82;
  v32[7] = v83;
  v32[0] = v76;
  v32[1] = v77;
  v67 = 0;
  v66 = 0;
  v22 = v70;
  v23 = v69;
  v24 = v68;
  v34 = v87;
  *&v32[11] = v87;
  v32[2] = v78;
  v32[3] = v79;
  *v35 = v31;
  *&v35[8] = 0;
  v35[16] = v29;
  memcpy(&v35[17], v71, 0x140uLL);
  memcpy(&v32[11] + 8, v35, 0x151uLL);
  *&v36 = v17;
  *(&v36 + 1) = v7;
  *&v37 = v28;
  *(&v37 + 1) = v27;
  LOBYTE(v38) = v70;
  *(&v38 + 1) = v19;
  LOBYTE(v39) = v69;
  *(&v39 + 1) = v20;
  LOBYTE(v40) = v68;
  *(&v40 + 1) = v21;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = KeyPath;
  v42 = 0;
  LOBYTE(v32[39]) = 0;
  v32[37] = v40;
  v32[38] = v41;
  v32[33] = v36;
  v32[34] = v37;
  v32[35] = v38;
  v32[36] = v39;
  memcpy(a3, v32, 0x271uLL);
  *v43 = v17;
  *&v43[1] = v7;
  v43[2] = v28;
  v43[3] = v27;
  v44 = v22;
  v45 = v19;
  v46 = v23;
  v47 = v20;
  v48 = v24;
  v49 = v21;
  v50 = 0;
  v51 = KeyPath;
  v52 = 0;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(v33, __src, type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(v35, __src, type metadata accessor for VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>>);
  outlined init with copy of RingOverlay(&v36, __src);
  outlined destroy of RingOverlay(v43);
  __src[0] = v31;
  LOBYTE(__src[1]) = v29;
  memcpy(&__src[1] + 1, v71, 0x140uLL);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(__src, type metadata accessor for VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>>);
  v54[8] = v84;
  v54[9] = v85;
  v54[10] = v86;
  v55 = v87;
  v54[4] = v80;
  v54[5] = v81;
  v54[6] = v82;
  v54[7] = v83;
  v54[0] = v76;
  v54[1] = v77;
  v54[2] = v78;
  v54[3] = v79;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v54, type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>);
}

uint64_t SizedHalfOpenCircularGauge.centerContent(proxy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v3 + 8))
  {
    v8 = 1;
  }

  else
  {
    v9 = *(v3 + 56);
    v11 = *(v3 + 40);
    v10 = *(v3 + 48);
    GeometryProxy.size.getter();
    static Font.Weight.medium.getter();
    static Font.system(size:weight:design:)();
    v3 = Font.leading(_:)();

    KeyPath = swift_getKeyPath();
    v5 = specialized Environment.wrappedValue.getter(v11, v10, v9);
    if (v5)
    {
    }

    v6 = swift_getKeyPath();
    result = swift_getKeyPath();
    v2 = 0;
    v8 = 0;
  }

  *a2 = KeyPath;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  *(a2 + 48) = v2;
  *(a2 + 49) = v8;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in SizedHalfOpenCircularGauge.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SizedHalfOpenCircularGauge.bottomContent(proxy:)(a2, v20);
  v5 = *(a2 + 16);
  __dst[0] = *a2;
  __dst[1] = v5;
  __dst[2] = *(a2 + 32);
  LODWORD(__dst[3]) = *(a2 + 48);
  GeometryProxy.size.getter();
  v6 = *(a2 + 16);
  __dst[0] = *a2;
  __dst[1] = v6;
  __dst[2] = *(a2 + 32);
  LODWORD(__dst[3]) = *(a2 + 48);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  __src[6] = v20[6];
  __src[7] = v20[7];
  __src[8] = v21[0];
  *(&__src[8] + 9) = *(v21 + 9);
  __src[2] = v20[2];
  __src[3] = v20[3];
  __src[4] = v20[4];
  __src[5] = v20[5];
  __src[0] = v20[0];
  __src[1] = v20[1];
  memcpy(__dst, __src, 0x110uLL);
  v7 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v7;
  v14[2] = *(a2 + 32);
  LODWORD(v14[3]) = *(a2 + 48);
  GeometryProxy.size.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.baselineOffset(_:)();
  memcpy(v13, __dst, sizeof(v13));
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v13, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>);
  memcpy(v12, v19, sizeof(v12));
  KeyPath = swift_getKeyPath();
  v11[304] = 1;
  memcpy(v14, v12, 0x120uLL);
  *&v14[18] = KeyPath;
  BYTE8(v14[18]) = 1;
  memcpy(&v11[7], v14, 0x129uLL);
  *a3 = 0;
  *(a3 + 8) = 1;
  memcpy((a3 + 9), v11, 0x130uLL);
  memcpy(__dst, v12, sizeof(__dst));
  v16 = KeyPath;
  v17 = 1;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(v14, v10, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(__dst, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>);
}

double SizedHalfOpenCircularGauge.bottomContent(proxy:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v36 = *a1;
  v37 = v4;
  v38 = a1[2];
  v39 = *(a1 + 12);
  v5 = v2[7];
  v32 = v2[6];
  v33 = v5;
  v6 = v2[9];
  v34 = v2[8];
  v35 = v6;
  v7 = v2[3];
  v28 = v2[2];
  v29 = v7;
  v8 = v2[5];
  v30 = v2[4];
  v31 = v8;
  v9 = v2[1];
  v27[0] = *v2;
  v27[1] = v9;
  v10 = static VerticalAlignment.center.getter();
  v26 = 1;
  closure #1 in SizedHalfOpenCircularGauge.bottomContent(proxy:)(v27, &v22);
  v40 = v22;
  v41 = v23;
  v42[0] = v24[0];
  *(v42 + 10) = *(v24 + 10);
  v43[0] = v22;
  v43[1] = v23;
  v44[0] = v24[0];
  *(v44 + 10) = *(v24 + 10);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(&v40, &v21, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v43, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>);
  *&v25[7] = v40;
  *&v25[23] = v41;
  *&v25[39] = v42[0];
  *&v25[49] = *(v42 + 10);
  v11 = v26;
  GeometryProxy.size.getter();
  static Font.Weight.medium.getter();
  LOBYTE(v22) = 4;
  static Font.system(size:weight:design:)();
  LOBYTE(v22) = 1;
  v12 = Font.leading(_:)();

  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = specialized Environment.wrappedValue.getter(*(&v28 + 1), v29, SBYTE8(v29));
  if (v15)
  {
  }

  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = *v25;
  *(a2 + 33) = *&v25[16];
  result = *&v25[32];
  v20 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  *(a2 + 65) = v20;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 81) = v25[64];
  *(a2 + 17) = v18;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v12;
  *(a2 + 104) = v14;
  *(a2 + 112) = 0x3FF0000000000000;
  *(a2 + 120) = v16;
  *(a2 + 128) = v15;
  *(a2 + 136) = v17;
  *(a2 + 144) = 1;
  *(a2 + 152) = 0;
  return result;
}

uint64_t closure #1 in SizedHalfOpenCircularGauge.bottomContent(proxy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 9))
  {
    v8 = 1;
  }

  else
  {
    v9 = *(result + 10);
    v10 = result;
    GeometryProxy.size.getter();
    v6 = v11 * 1.5 / *(v10 + 128);
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    v2 = 0;
    v8 = 0;
    v3 = 0;
    v4 = v9 & 1;
  }

  *a2 = v2;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = result;
  *(a2 + 56) = 2;
  *(a2 + 57) = v8;
  return result;
}

double RingOverlay.content(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v81 = *a1;
  v4 = *a1;
  v5 = a1[1];
  v82 = v3;
  *v83 = a1[2];
  *&v83[16] = *(a1 + 12);
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v108 = v12;
  v70 = *(v2 + 56);
  v13 = *(v2 + 64);
  v107 = v13;
  v77 = *(v2 + 88);
  v68 = *(v2 + 96);
  v106 = v68;
  v84 = v4;
  v85 = v5;
  *v86 = a1[2];
  *&v86[16] = *(a1 + 12);
  GeometryProxy.size.getter();
  v15 = v14;
  GeometryProxy.size.getter();
  v17 = *(v2 + 49);
  v18 = *(v2 + 33);
  if (v16 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  v79 = v19 / 10.5;
  v20 = v7 * 0.5 + 1.57079633;
  *&v84 = v7;
  *(&v84 + 1) = v6;
  *&v85 = v8;
  *(&v85 + 1) = v9;
  v86[0] = v10;
  *&v86[1] = v18;
  *&v86[4] = *(v2 + 36);
  v74 = v11;
  *&v86[8] = v11;
  v21 = v70;
  v86[16] = v12;
  *&v86[17] = v17;
  v22 = v20 + 6.28318531 - v7;
  *&v86[20] = *(v2 + 52);
  *&v86[24] = v70;
  v86[32] = v13;
  v23 = *(v2 + 65);
  *&v86[48] = *(v2 + 80);
  *&v86[33] = v23;
  *&v86[56] = v77;
  v86[64] = v68;
  v23.n128_f64[0] = v20;
  v24 = RingOverlay.resolveTint(_:startAngle:endAngle:)(v8, v23, v22);
  v76 = v24;
  v72 = v10;
  if (v9)
  {
    *&v84 = v7;
    *(&v84 + 1) = v6;
    *&v85 = v8;
    *(&v85 + 1) = v9;
    v86[0] = v10;
    *&v86[1] = *(v2 + 33);
    *&v86[4] = *(v2 + 36);
    *&v86[8] = v74;
    v86[16] = v12;
    *&v86[17] = *(v2 + 49);
    *&v86[20] = *(v2 + 52);
    *&v86[24] = v70;
    v86[32] = v13;
    v25 = *(v2 + 65);
    *&v86[48] = *(v2 + 80);
    *&v86[33] = v25;
    *&v86[56] = v77;
    v86[64] = v68;

    v27.n128_f64[0] = v7 * 0.5 + 1.57079633;
    v28 = RingOverlay.resolveTint(_:startAngle:endAngle:)(v26, v27, v20 + 6.28318531 - v7);

    v29 = v77;
    v30 = v68;
  }

  else
  {
    if (v10)
    {
      *&v84 = v24;
      DWORD2(v84) = 1051931443;
      type metadata accessor for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
      lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();

      v28 = AnyShapeStyle.init<A>(_:)();
      v30 = v106;
    }

    else
    {
      v30 = v68;
      v28 = v24;
    }

    v21 = v70;
    v29 = v77;
  }

  v32 = specialized Environment.wrappedValue.getter(v29, v30 & 1);
  if (!v32)
  {
  }

  v66 = v32;
  v31 = v19 - v79;
  v78 = (v19 - v79) * 0.5;
  v67 = v20 + v6 * (v22 - v20);
  v33 = static Alignment.center.getter();
  v64 = v34;
  v65 = v33;
  v69 = v28;
  if (v10)
  {
    v35 = 0.0;
    v36 = 1.0;
    if (v6 <= 0.0)
    {
      v36 = 0.0;
    }

    v37 = v36;
    v38 = v76;

    v39 = static Alignment.center.getter();
    v41 = v40;
    v42 = 0;
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0;
    v50 = 0;
    v63 = 256;
    v51 = v19 / 10.5;
    v52 = v31 * 0.5;
    v53 = v20;
    v54 = v22;
    v55 = 0.0;
  }

  else
  {
    v56 = v108;
    specialized Environment.wrappedValue.getter(v74, v108, &v84);
    if (v84 & 2) != 0 && (specialized Environment.wrappedValue.getter(v21, v107))
    {
      v37 = 0.3;
    }

    else
    {
      v37 = 1.0;
    }

    v39 = static Alignment.center.getter();
    v41 = v57;
    static Color.black.getter();
    specialized Environment.wrappedValue.getter(v74, v56, &v84);
    if ((v84 & 2) != 0)
    {
      specialized Environment.wrappedValue.getter(v70, v107);
    }

    v42 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = 0;
    v63 = 0;
    v43 = *v105;
    v44 = *&v105[1];
    v45 = *&v105[2];
    v49 = 18;
    v46 = *&v105[3];
    v51 = 0.0;
    v50 = 256;
    v38 = v69;
    v52 = 0.0;
    v47 = *&v105[4];
    v53 = 0.0;
    v54 = 0.0;
    v35 = v67;
    v55 = v78;
    v48 = *&v105[5];
  }

  *&v91 = v42;
  *(&v91 + 1) = v50;
  *&v92 = v43;
  *(&v92 + 1) = v44;
  *&v93 = v45;
  *(&v93 + 1) = v46;
  *&v94 = v47;
  *(&v94 + 1) = v48;
  *&v95 = v35;
  *(&v95 + 1) = v55;
  *&v96 = 0;
  BYTE8(v96) = v49;
  HIDWORD(v96) = *&v103[3];
  *(&v96 + 9) = *v103;
  *&v97 = v39;
  *(&v97 + 1) = v41;
  *&v104[18] = v92;
  *&v104[2] = v91;
  *&v104[34] = v93;
  *&v104[98] = v97;
  *&v104[82] = v96;
  *&v104[66] = v95;
  *&v104[50] = v94;
  *&v98[0] = v42;
  *&v98[1] = v50;
  v98[2] = v43;
  v98[3] = v44;
  v98[4] = v45;
  v98[5] = v46;
  v98[6] = v47;
  v98[7] = v48;
  v98[8] = v35;
  v98[9] = v55;
  v98[10] = 0.0;
  v99 = v49;
  *&v100[3] = *&v103[3];
  *v100 = *v103;
  v101 = v39;
  v102 = v41;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(&v91, &v84, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(v98, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>);
  if (v72)
  {
    v73 = 0;
    v58 = 0;
    v75 = 0u;
    v22 = v67;
    v71 = 0u;
  }

  else
  {
    specialized Environment.wrappedValue.getter(v74, v108, &v84);
    if (v84 & 2) != 0 && (specialized Environment.wrappedValue.getter(v70, v107))
    {
      v59 = 0;
    }

    else
    {
      v59 = 1065353216;
    }

    *&v60 = v79;
    *(&v60 + 1) = v78;
    v75 = v60;
    v71 = vdupq_lane_s64(*&v67, 0);
    v58 = v59 | 0x10000000000;

    v73 = v66;
  }

  *&v81 = v79;
  *(&v81 + 1) = v78;
  *&v82 = v20;
  *(&v82 + 1) = v22;
  *v83 = v38;
  *&v83[8] = v37;
  *&v83[12] = 256;
  *&v83[94] = *&v104[80];
  *&v83[78] = *&v104[64];
  *&v83[110] = *&v104[96];
  *&v83[126] = *&v104[112];
  *&v83[14] = *v104;
  *&v83[30] = *&v104[16];
  *&v83[46] = *&v104[32];
  *&v83[62] = *&v104[48];
  *&v80[102] = *&v83[64];
  *&v80[118] = *&v83[80];
  *&v80[134] = *&v83[96];
  *&v80[150] = *&v83[112];
  *&v80[38] = *v83;
  *&v80[54] = *&v83[16];
  *&v80[70] = *&v83[32];
  *&v80[86] = *&v83[48];
  *&v80[6] = v81;
  *&v80[22] = v82;

  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(&v81, &v84, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>);
  *&v84 = v79;
  *(&v84 + 1) = v78;
  *&v85 = v20;
  *(&v85 + 1) = v22;
  *v86 = v38;
  *&v86[8] = v37;
  *&v86[12] = 256;
  v87 = *&v104[64];
  v88 = *&v104[80];
  v89 = *&v104[96];
  v90 = *&v104[112];
  *&v86[14] = *v104;
  *&v86[30] = *&v104[16];
  *&v86[46] = *&v104[32];
  *&v86[62] = *&v104[48];
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat(&v84, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>);

  *a2 = v65;
  *(a2 + 8) = v64;
  *(a2 + 16) = v51;
  *(a2 + 24) = v52;
  *(a2 + 32) = v53;
  *(a2 + 40) = v54;
  *(a2 + 48) = v28;
  *(a2 + 56) = v63;
  *(a2 + 170) = *&v80[112];
  *(a2 + 186) = *&v80[128];
  *(a2 + 202) = *&v80[144];
  *(a2 + 216) = *&v80[158];
  *(a2 + 106) = *&v80[48];
  *(a2 + 122) = *&v80[64];
  *(a2 + 138) = *&v80[80];
  *(a2 + 154) = *&v80[96];
  *(a2 + 58) = *v80;
  *(a2 + 74) = *&v80[16];
  *(a2 + 90) = *&v80[32];
  result = *&v75;
  *(a2 + 224) = v75;
  *(a2 + 240) = v71;
  *(a2 + 256) = v73;
  *(a2 + 268) = WORD2(v58);
  *(a2 + 264) = v58;
  return result;
}

uint64_t RingOverlay.resolveTint(_:startAngle:endAngle:)(uint64_t a1, __n128 a2, double a3)
{
  v5 = a2.n128_u64[0];
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  AnyShapeStyle.as<A>(type:)();
  v9 = v14[0];
  if (v14[0])
  {
    specialized Environment.wrappedValue.getter(v7, v8, v14);
    if (LOBYTE(v14[0]) == 1)
    {
      v10 = Gradient.reversed.getter();

      v9 = v10;
    }

    static UnitPoint.center.getter();
    v14[0] = v9;
    v14[1] = v11;
    v14[2] = v12;
    v14[3] = v5;
    *&v14[4] = a3;
    return AnyShapeStyle.init<A>(_:)();
  }

  else
  {
  }

  return a1;
}

uint64_t protocol witness for View.body.getter in conformance RingOverlay@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v3;
  v13 = *(v1 + 96);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  *a1 = partial apply for implicit closure #2 in implicit closure #1 in RingOverlay.body.getter;
  a1[1] = v6;
  return outlined init with copy of RingOverlay(v12, v11);
}

uint64_t OpenRing.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a8@<D6>, double a9@<D7>)
{
  CGRectGetMidX(*&a2);
  if (a8 == a9)
  {
    __sincos_stret(a8);
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    CGRectGetMidY(v34);
    v28 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0;
    v31 = 0x3FF0000000000000;
    v32 = 0;
    v33 = 0;
    result = Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    v17 = 0u;
    v18 = 0u;
    v19 = 6;
  }

  else
  {
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    CGRectGetMidY(v35);
    v28 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0;
    v31 = 0x3FF0000000000000;
    v32 = 0;
    v33 = 0;
    Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
    memset(v26, 0, sizeof(v26));
    v27 = 6;
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    Path.strokedPath(_:)();
    v20 = v24;
    v21 = v23;
    v19 = v25;
    outlined destroy of StrokeStyle(v22);
    result = outlined destroy of Path(v26);
    v18 = v20;
    v17 = v21;
  }

  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

double protocol witness for Shape.path(in:) in conformance OpenRing@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  OpenRing.path(in:)(v9, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

__n128 protocol witness for View.body.getter in conformance OpenRing@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 256;
  return result;
}

CGFloat RotationOffsetEffect.effectValue(size:)@<D0>(uint64_t a2@<X8>, unint64_t a3@<D0>, unint64_t a4@<D1>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  static UnitPoint.center.getter();
  v12 = UnitPoint.in(_:)(__PAIR128__(a4, a3));
  CGAffineTransformMakeTranslation(&t1, a6, a7);
  tx = t1.tx;
  ty = t1.ty;
  v28 = *&t1.c;
  v31 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -v12.x, -v12.y);
  v15 = *&t1.a;
  v16 = *&t1.c;
  v17 = *&t1.tx;
  *&t1.a = v31;
  *&t1.c = v28;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v15;
  *&t2.c = v16;
  *&t2.tx = v17;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v18 = v34.tx;
  v19 = v34.ty;
  v29 = *&v34.c;
  v32 = *&v34.a;
  CGAffineTransform.init(rotation:)();
  *&t1.a = v32;
  *&t1.c = v29;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v20 = v34.tx;
  v21 = v34.ty;
  v30 = *&v34.c;
  v33 = *&v34.a;
  CGAffineTransformMakeTranslation(&t1, v12.x, v12.y);
  v22 = *&t1.a;
  v23 = *&t1.c;
  v24 = *&t1.tx;
  *&t1.a = v33;
  *&t1.c = v30;
  t1.tx = v20;
  t1.ty = v21;
  *&t2.a = v22;
  *&t2.c = v23;
  *&t2.tx = v24;
  CGAffineTransformConcat(&v34, &t1, &t2);
  result = v34.a;
  v26 = *&v34.c;
  v27 = *&v34.tx;
  *a2 = *&v34.a;
  *(a2 + 16) = 0;
  *(a2 + 24) = v26;
  *(a2 + 40) = 0;
  *(a2 + 48) = v27;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance RotationOffsetEffect@<Q0>(uint64_t a2@<X8>, unint64_t a3@<D0>, unint64_t a4@<D1>)
{
  RotationOffsetEffect.effectValue(size:)(v8, a3, a4, *(v4 + 8), *(v4 + 16));
  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance RotationOffsetEffect@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1 * 128.0;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance RotationOffsetEffect(uint64_t a1)
{
  *v1 = *a1 * 0.0078125;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance RotationOffsetEffect(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = *v1 * 128.0;
  *(a1 + 8) = *(v1 + 8);
  return protocol witness for Animatable.animatableData.modify in conformance RotationOffsetEffect;
}

double protocol witness for Animatable.animatableData.modify in conformance RotationOffsetEffect(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *a1 * 0.0078125;
  v3 = *(a1 + 8);
  *v1 = result;
  *(v1 + 8) = v3;
  return result;
}

uint64_t destroy for SizedHalfOpenCircularGauge(uint64_t a1)
{

  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<(Color, Color)?>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  outlined consume of Environment<Selector?>.Content(*(a1 + 96), *(a1 + 104));
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for SizedHalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 11) = *(a2 + 11);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);

  outlined copy of Environment<Color?>.Content(v4);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of Environment<(Color, Color)?>.Content(v6, v7, v8);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  v9 = *(a2 + 64);
  LOBYTE(v7) = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v9, v7);
  *(a1 + 64) = v9;
  *(a1 + 72) = v7;
  v10 = *(a2 + 80);
  LOBYTE(v7) = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v10, v7);
  *(a1 + 80) = v10;
  *(a1 + 88) = v7;
  v11 = *(a2 + 96);
  LOBYTE(v7) = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v11, v7);
  *(a1 + 96) = v11;
  *(a1 + 104) = v7;
  v12 = *(a2 + 112);
  LOBYTE(v7) = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v12, v7);
  *(a1 + 112) = v12;
  *(a1 + 120) = v7;
  *(a1 + 121) = *(a2 + 121);
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  return a1;
}

uint64_t assignWithCopy for SizedHalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of Environment<Color?>.Content(v4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of Environment<(Color, Color)?>.Content(v8, v9, v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  outlined consume of Environment<(Color, Color)?>.Content(v11, v12, v13);
  v14 = *(a2 + 64);
  LOBYTE(v9) = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v14, v9);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v9;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 80);
  LOBYTE(v9) = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v17, v9);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  *(a1 + 80) = v17;
  *(a1 + 88) = v9;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 96);
  LOBYTE(v9) = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v20, v9);
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  *(a1 + 96) = v20;
  *(a1 + 104) = v9;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 112);
  LOBYTE(v9) = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v23, v9);
  v24 = *(a1 + 112);
  v25 = *(a1 + 120);
  *(a1 + 112) = v23;
  *(a1 + 120) = v9;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for SizedHalfOpenCircularGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  outlined consume of Environment<AnyShapeStyle?>.Content(v5, v6);
  v7 = *(a2 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v7;
  outlined consume of Environment<(Color, Color)?>.Content(v8, v9, v10);
  v11 = *(a2 + 72);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 88);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 104);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 120);
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  *(a1 + 121) = *(a2 + 121);
  v23 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for SizedHalfOpenCircularGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for SizedHalfOpenCircularGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge> and conformance <> StaticIf<A, B, C>)
  {
    v8 = v0;
    v9 = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v6 = lazy protocol witness table accessor for type SizedHalfOpenCircularGauge and conformance SizedHalfOpenCircularGauge();
    v7 = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, &v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge>)
  {
    type metadata accessor for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], MEMORY[0x1E69801E0]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedHalfOpenCircularGauge, SizedHalfOpenCircularGauge>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SizedHalfOpenCircularGauge and conformance SizedHalfOpenCircularGauge()
{
  result = lazy protocol witness table cache variable for type SizedHalfOpenCircularGauge and conformance SizedHalfOpenCircularGauge;
  if (!lazy protocol witness table cache variable for type SizedHalfOpenCircularGauge and conformance SizedHalfOpenCircularGauge)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SizedHalfOpenCircularGauge, &type metadata for SizedHalfOpenCircularGauge, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SizedHalfOpenCircularGauge and conformance SizedHalfOpenCircularGauge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HalfOpenCircularGauge.IndicatorStyle and conformance HalfOpenCircularGauge.IndicatorStyle()
{
  result = lazy protocol witness table cache variable for type HalfOpenCircularGauge.IndicatorStyle and conformance HalfOpenCircularGauge.IndicatorStyle;
  if (!lazy protocol witness table cache variable for type HalfOpenCircularGauge.IndicatorStyle and conformance HalfOpenCircularGauge.IndicatorStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HalfOpenCircularGauge.IndicatorStyle, &type metadata for HalfOpenCircularGauge.IndicatorStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HalfOpenCircularGauge.IndicatorStyle and conformance HalfOpenCircularGauge.IndicatorStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>(255);
    _s7SwiftUI4FontVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>>)
  {
    type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)>>);
    }
  }
}

void type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(255);
    _s7SwiftUI4FontVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>(255);
    _s7SwiftUI4FontVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    _s7SwiftUI4FontVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>))
  {
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>(255, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, &lazy cache variable for type metadata for GaugeStyleConfiguration.MinimumValueLabel?, &type metadata for GaugeStyleConfiguration.MinimumValueLabel);
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>(255, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, &lazy cache variable for type metadata for GaugeStyleConfiguration.MaximumValueLabel?, &type metadata for GaugeStyleConfiguration.MaximumValueLabel);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>));
    }
  }
}

void type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI4FontVSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    _s7SwiftUI4FontVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, MEMORY[0x1E6981F48]);
    v5[1] = &protocol witness table for GaugeStyleConfiguration.Label;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    v5[1] = MEMORY[0x1E6981E60];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E69808F8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for GaugeStyleConfiguration.CurrentValueLabel;
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    v5[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>(255, a2, a3, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    v8 = v7;
    v9[0] = a4();
    v9[1] = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>, protocol conformance descriptor for LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
    v5[1] = MEMORY[0x1E69808F8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundLayerViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>> and conformance HStack<A>, type metadata accessor for HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, MEMORY[0x1E69817F8]);
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for RingOverlay(uint64_t a1)
{

  outlined consume of Environment<Selector?>.Content(*(a1 + 40), *(a1 + 48));
  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);

  return outlined consume of Environment<AnyShapeStyle?>.Content(v2, v3);
}

uint64_t initializeWithCopy for RingOverlay(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);

  outlined copy of Environment<Selector?>.Content(v5, v6);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(v2 + 56);
  LOBYTE(v5) = *(v2 + 64);
  outlined copy of Environment<Selector?>.Content(v7, v5);
  *(a1 + 56) = v7;
  *(a1 + 64) = v5;
  v8 = *(v2 + 72);
  LOBYTE(v5) = *(v2 + 80);
  outlined copy of Environment<Selector?>.Content(v8, v5);
  *(a1 + 72) = v8;
  *(a1 + 80) = v5;
  v9 = *(v2 + 88);
  LOBYTE(v2) = *(v2 + 96);
  outlined copy of Environment<Color?>.Content(v9);
  *(a1 + 88) = v9;
  *(a1 + 96) = v2;
  return a1;
}

uint64_t assignWithCopy for RingOverlay(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];

  *(a1 + 24) = v2[3];

  *(a1 + 32) = *(v2 + 32);
  v4 = v2[5];
  v5 = *(v2 + 48);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = v2[7];
  v9 = *(v2 + 64);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = v2[9];
  v13 = *(v2 + 80);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = v2[11];
  LOBYTE(v2) = *(v2 + 96);
  outlined copy of Environment<Color?>.Content(v16);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  *(a1 + 88) = v16;
  *(a1 + 96) = v2;
  outlined consume of Environment<AnyShapeStyle?>.Content(v17, v18);
  return a1;
}

uint64_t assignWithTake for RingOverlay(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 64);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 80);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = *(a2 + 96);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v13;
  outlined consume of Environment<AnyShapeStyle?>.Content(v14, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for RingOverlay(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for RingOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for implicit closure #2 in implicit closure #1 in RingOverlay.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = *(v2 + 96);
  v14 = *(v2 + 80);
  v15 = v4;
  v16 = *(v2 + 112);
  v5 = *(v2 + 32);
  v10 = *(v2 + 16);
  v11 = v5;
  v6 = *(v2 + 64);
  v12 = *(v2 + 48);
  v13 = v6;
  return RingOverlay.content(_:)(v8, a2);
}

void type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>? and conformance <A> A?();
    v1 = type metadata accessor for _OverlayModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>);
    }
  }
}

void type metadata accessor for _ShapeView<Circle, Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle, Color>)
  {
    lazy protocol witness table accessor for type Circle and conformance Circle();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<Circle, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697EBB8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for RotationOffsetEffect;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Circle, Color>, MEMORY[0x1E697DB78]);
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, type metadata accessor for _ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>);
    }
  }
}

void type metadata accessor for _ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type OpenRing and conformance OpenRing();
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type OpenRing and conformance OpenRing()
{
  result = lazy protocol witness table cache variable for type OpenRing and conformance OpenRing;
  if (!lazy protocol witness table cache variable for type OpenRing and conformance OpenRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenRing, &unk_1EFFDFA18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRing and conformance OpenRing);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenRing and conformance OpenRing;
  if (!lazy protocol witness table cache variable for type OpenRing and conformance OpenRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenRing, &unk_1EFFDFA18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRing and conformance OpenRing);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenRing and conformance OpenRing;
  if (!lazy protocol witness table cache variable for type OpenRing and conformance OpenRing)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenRing, &unk_1EFFDFA18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenRing and conformance OpenRing);
  }

  return result;
}

void type metadata accessor for HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>)
  {
    type metadata accessor for TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for ZStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>);
    }
  }
}

void type metadata accessor for (_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?))
  {
    type metadata accessor for _ShapeView<OpenRing, AnyShapeStyle>?(255);
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>(255);
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Int?>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, EmptyView>, _EnvironmentKeyWritingModifier<CGFloat>>, _FlexFrameLayout>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _EnvironmentKeyWritingModifier<TextAlignment>>)>, GaugeStyleConfiguration.Label>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?, type metadata accessor for ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?));
    }
  }
}

void type metadata accessor for _ShapeView<OpenRing, AnyShapeStyle>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<OpenRing, AnyShapeStyle>?)
  {
    type metadata accessor for _ShapeView<OpenRing, ForegroundStyle>(255, &lazy cache variable for type metadata for _ShapeView<OpenRing, AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<OpenRing, AnyShapeStyle>?);
    }
  }
}

void type metadata accessor for _ShapeView<OpenRing, ForegroundStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type OpenRing and conformance OpenRing();
    v5 = type metadata accessor for _ShapeView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, _CompositingGroupEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, MEMORY[0x1E6981880]);
    v5[1] = MEMORY[0x1E69802C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<OpenRing, AnyShapeStyle>?, ModifiedContent<ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, RotationOffsetEffect>, _BlendModeEffect>?>>, _CompositingGroupEffect>, ModifiedContent<_ShapeView<OpenRing, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>?)>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<OpenRing, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<OpenRing, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<OpenRing, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    type metadata accessor for _ShapeView<OpenRing, ForegroundStyle>(255, &lazy cache variable for type metadata for _ShapeView<OpenRing, ForegroundStyle>, MEMORY[0x1E697E790], MEMORY[0x1E697E788]);
    result = swift_getWitnessTable(MEMORY[0x1E697DB78], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<OpenRing, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

void type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, MEMORY[0x1E697E338]);
    v1 = type metadata accessor for AnimatablePair();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for RotationOffsetEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RotationOffsetEffect and conformance RotationOffsetEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RotationOffsetEffect and conformance RotationOffsetEffect()
{
  result = lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect;
  if (!lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotationOffsetEffect, &unk_1EFFDF998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect;
  if (!lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotationOffsetEffect, &unk_1EFFDF998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotationOffsetEffect and conformance RotationOffsetEffect);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OpenRing(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type OpenRing and conformance OpenRing();
  result = lazy protocol witness table accessor for type OpenRing and conformance OpenRing();
  *(a1 + 16) = result;
  return result;
}

uint64_t HitTestingLeafPlatformView<>.responderForHitTesting.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a1, a3);
  if (result)
  {
    type metadata accessor for ViewResponder();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for HitTestingLeafPlatformView.responderForHitTesting.getter in conformance UIKitPlatformViewHost<A>()
{
  ObjectType = swift_getObjectType();

  return HitTestingLeafPlatformView<>.responderForHitTesting.getter(ObjectType, &protocol witness table for UIKitPlatformViewHost<A>);
}

uint64_t protocol witness for HitTestingLeafPlatformView.responderForHitTesting.getter in conformance _UIHostingView<A1>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, a1);

  return HitTestingLeafPlatformView<>.responderForHitTesting.getter(a1, v2, WitnessTable);
}

uint64_t initializeBufferWithCopyOfBuffer for FileExportOperation(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = v19 + ((v5 + 16) & ~v5);
  }

  else
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v20 = *a2;
        v21 = a2[1];
        v22 = a2[2];
        v23 = a2[3];
        v24 = a2[4];
        v25 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v21, v22, v23, v24, v25);
        *a1 = v20;
        *(a1 + 8) = v21;
        *(a1 + 16) = v22;
        *(a1 + 24) = v23;
        *(a1 + 32) = v24;
        *(a1 + 40) = v25;
        v26 = a2[7];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v26;
        v27 = a2[12];
        v71 = *(a2 + 5);
        *(a1 + 64) = *(a2 + 4);
        *(a1 + 80) = v71;
        *(a1 + 96) = v27;
      }

      else
      {
        v30 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v30;
        v31 = a2[6];
        v72 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v72;
        *(a1 + 48) = v31;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v28 = a2[4];
        v29 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v29;
        *(a1 + 32) = v28;
      }

      else
      {
        v8 = type metadata accessor for URL();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = type metadata accessor for FileExportOperation.Move(0);
        v10 = *(v9 + 20);
        v11 = (a1 + v10);
        v12 = (a2 + v10);
        v14 = *v12;
        v13 = v12[1];
        *v11 = v14;
        v11[1] = v13;
        v15 = *(v9 + 24);
        v16 = (a1 + v15);
        v17 = (a2 + v15);
        v18 = v17[1];
        *v16 = *v17;
        v16[1] = v18;
      }
    }

    swift_storeEnumTagMultiPayload();
    v32 = a3[5];
    v33 = a3[6];
    v34 = (a1 + v32);
    v35 = (a2 + v32);
    v36 = v35[1];
    *v34 = *v35;
    v34[1] = v36;
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);

    if (v39(a2 + v33, 1, v37))
    {
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy((a1 + v33), a2 + v33, *(*(v40 - 8) + 64));
    }

    else
    {
      (*(v38 + 16))(a1 + v33, a2 + v33, v37);
      (*(v38 + 56))(a1 + v33, 0, 1, v37);
    }

    v41 = a3[7];
    v42 = a1 + v41;
    v43 = a2 + v41;
    if (*(a2 + v41 + 24))
    {
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v43[16];
      outlined copy of Text.Storage(*v43, v45, v46);
      *v42 = v44;
      *(v42 + 8) = v45;
      *(v42 + 16) = v46;
      *(v42 + 24) = *(v43 + 3);
    }

    else
    {
      v47 = *(v43 + 1);
      *v42 = *v43;
      *(v42 + 16) = v47;
    }

    v48 = a3[8];
    v49 = a1 + v48;
    v50 = a2 + v48;
    if (*(a2 + v48 + 24))
    {
      v51 = *v50;
      v52 = *(v50 + 1);
      v53 = v50[16];
      outlined copy of Text.Storage(*v50, v52, v53);
      *v49 = v51;
      *(v49 + 8) = v52;
      *(v49 + 16) = v53;
      *(v49 + 24) = *(v50 + 3);
    }

    else
    {
      v54 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 16) = v54;
    }

    v55 = a3[9];
    v56 = a1 + v55;
    v57 = a2 + v55;
    if (*(a2 + v55 + 24))
    {
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = v57[16];
      outlined copy of Text.Storage(*v57, v59, v60);
      *v56 = v58;
      *(v56 + 8) = v59;
      *(v56 + 16) = v60;
      *(v56 + 24) = *(v57 + 3);
    }

    else
    {
      v61 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 16) = v61;
    }

    v62 = a3[10];
    type metadata accessor for Predicate<Pack{URL}>(0);
    v64 = v63;
    v65 = *(v63 - 8);
    if ((*(v65 + 48))(a2 + v62, 1, v63))
    {
      _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy((a1 + v62), a2 + v62, *(*(v66 - 8) + 64));
    }

    else
    {
      (*(v65 + 16))(a1 + v62, a2 + v62, v64);
      (*(v65 + 56))(a1 + v62, 0, 1, v64);
    }

    v67 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    v68 = a1 + v67;
    v69 = a2 + v67;
    *v68 = *v69;
    *(v68 + 8) = v69[8];
  }

  return a1;
}

double outlined copy of FileExportOperation.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return outlined copy of AnyTransferable?(a1, a2);
  }

  else
  {
  }

  return result;
}

double outlined copy of AnyTransferable?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t destroy for FileExportOperation(uint64_t a1, int *a2)
{
  type metadata accessor for FileExportOperation.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_11;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1, v5);
    type metadata accessor for FileExportOperation.Move(0);
  }

LABEL_11:

  v6 = a2[6];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = a1 + a2[7];
  if (*(v9 + 24))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = a1 + a2[8];
  if (*(v10 + 24))
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = a1 + a2[9];
  if (*(v11 + 24))
  {
    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = a2[10];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v14 = v13;
  v17 = *(v13 - 8);
  result = (*(v17 + 48))(a1 + v12, 1, v13);
  if (!result)
  {
    v16 = *(v17 + 8);

    return v16(a1 + v12, v14);
  }

  return result;
}

uint64_t outlined consume of FileExportOperation.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return outlined consume of AnyTransferable?(a1);
  }

  else
  {
  }
}

uint64_t outlined consume of AnyTransferable?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FileExportOperation(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for FileExportOperation.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *a2;
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      v21 = *(a2 + 24);
      v22 = *(a2 + 32);
      v23 = *(a2 + 40);
      outlined copy of FileExportOperation.Storage(*a2, v19, v20, v21, v22, v23);
      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 24) = v21;
      *(a1 + 32) = v22;
      *(a1 + 40) = v23;
      v24 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v24;
      v25 = *(a2 + 96);
      v69 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v69;
      *(a1 + 96) = v25;
    }

    else
    {
      v28 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v28;
      v29 = *(a2 + 48);
      v70 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v70;
      *(a1 + 48) = v29;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v26 = *(a2 + 32);
      v27 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v27;
      *(a1 + 32) = v26;
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = type metadata accessor for FileExportOperation.Move(0);
      v9 = *(v8 + 20);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v13 = *v11;
      v12 = v11[1];
      *v10 = v13;
      v10[1] = v12;
      v14 = *(v8 + 24);
      v15 = (a1 + v14);
      v16 = (a2 + v14);
      v17 = v16[1];
      *v15 = *v16;
      v15[1] = v17;
    }
  }

  swift_storeEnumTagMultiPayload();
  v30 = a3[5];
  v31 = a3[6];
  v32 = (a1 + v30);
  v33 = (a2 + v30);
  v34 = v33[1];
  *v32 = *v33;
  v32[1] = v34;
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);

  if (v37(a2 + v31, 1, v35))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v31), (a2 + v31), *(*(v38 - 8) + 64));
  }

  else
  {
    (*(v36 + 16))(a1 + v31, a2 + v31, v35);
    (*(v36 + 56))(a1 + v31, 0, 1, v35);
  }

  v39 = a3[7];
  v40 = a1 + v39;
  v41 = a2 + v39;
  if (*(a2 + v39 + 24))
  {
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    outlined copy of Text.Storage(*v41, v43, v44);
    *v40 = v42;
    *(v40 + 8) = v43;
    *(v40 + 16) = v44;
    *(v40 + 24) = *(v41 + 24);
  }

  else
  {
    v45 = *(v41 + 16);
    *v40 = *v41;
    *(v40 + 16) = v45;
  }

  v46 = a3[8];
  v47 = a1 + v46;
  v48 = a2 + v46;
  if (*(a2 + v46 + 24))
  {
    v49 = *v48;
    v50 = *(v48 + 8);
    v51 = *(v48 + 16);
    outlined copy of Text.Storage(*v48, v50, v51);
    *v47 = v49;
    *(v47 + 8) = v50;
    *(v47 + 16) = v51;
    *(v47 + 24) = *(v48 + 24);
  }

  else
  {
    v52 = *(v48 + 16);
    *v47 = *v48;
    *(v47 + 16) = v52;
  }

  v53 = a3[9];
  v54 = a1 + v53;
  v55 = a2 + v53;
  if (*(a2 + v53 + 24))
  {
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    outlined copy of Text.Storage(*v55, v57, v58);
    *v54 = v56;
    *(v54 + 8) = v57;
    *(v54 + 16) = v58;
    *(v54 + 24) = *(v55 + 24);
  }

  else
  {
    v59 = *(v55 + 16);
    *v54 = *v55;
    *(v54 + 16) = v59;
  }

  v60 = a3[10];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v62 = v61;
  v63 = *(v61 - 8);
  if ((*(v63 + 48))(a2 + v60, 1, v61))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v60), (a2 + v60), *(*(v64 - 8) + 64));
  }

  else
  {
    (*(v63 + 16))(a1 + v60, a2 + v60, v62);
    (*(v63 + 56))(a1 + v60, 0, 1, v62);
  }

  v65 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v66 = a1 + v65;
  v67 = a2 + v65;
  *v66 = *v67;
  *(v66 + 8) = *(v67 + 8);
  return a1;
}

uint64_t assignWithCopy for FileExportOperation(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v17 = *a2;
        v18 = *(a2 + 8);
        v19 = *(a2 + 16);
        v20 = *(a2 + 24);
        v21 = *(a2 + 32);
        v22 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v18, v19, v20, v21, v22);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 24) = v20;
        *(a1 + 32) = v21;
        *(a1 + 40) = v22;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v23 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v23;
        v24 = *(a2 + 96);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v24;
      }

      else
      {
        v27 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v28;
        v29 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v29;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v7 = type metadata accessor for URL();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for FileExportOperation.Move(0);
        v9 = *(v8 + 20);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        v13 = *(v8 + 24);
        v14 = (a1 + v13);
        v15 = (a2 + v13);
        v16 = v15[1];
        *v14 = *v15;
        v14[1] = v16;
LABEL_11:

        swift_storeEnumTagMultiPayload();
        goto LABEL_12;
      }

      *a1 = *a2;
      v25 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v25;
      v26 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v26;
    }

    goto LABEL_11;
  }

LABEL_12:
  v30 = a3[5];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  *v31 = *v32;
  v31[1] = v32[1];

  v33 = a3[6];
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 16))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_17:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_18;
  }

  (*(v35 + 24))(a1 + v33, a2 + v33, v34);
LABEL_18:
  v40 = a3[7];
  v41 = a1 + v40;
  v42 = a2 + v40;
  v43 = *(a1 + v40 + 24);
  v44 = *(a2 + v40 + 24);
  if (v43)
  {
    if (v44)
    {
      v45 = *v42;
      v46 = *(v42 + 8);
      v47 = *(v42 + 16);
      outlined copy of Text.Storage(*v42, v46, v47);
      v48 = *v41;
      v49 = *(v41 + 8);
      v50 = *(v41 + 16);
      *v41 = v45;
      *(v41 + 8) = v46;
      *(v41 + 16) = v47;
      outlined consume of Text.Storage(v48, v49, v50);
      *(v41 + 24) = *(v42 + 24);
    }

    else
    {
      outlined destroy of Text(v41);
      v54 = *(v42 + 16);
      *v41 = *v42;
      *(v41 + 16) = v54;
    }
  }

  else if (v44)
  {
    v51 = *v42;
    v52 = *(v42 + 8);
    v53 = *(v42 + 16);
    outlined copy of Text.Storage(*v42, v52, v53);
    *v41 = v51;
    *(v41 + 8) = v52;
    *(v41 + 16) = v53;
    *(v41 + 24) = *(v42 + 24);
  }

  else
  {
    v55 = *(v42 + 16);
    *v41 = *v42;
    *(v41 + 16) = v55;
  }

  v56 = a3[8];
  v57 = a1 + v56;
  v58 = a2 + v56;
  v59 = *(a1 + v56 + 24);
  v60 = *(a2 + v56 + 24);
  if (v59)
  {
    if (v60)
    {
      v61 = *v58;
      v62 = *(v58 + 8);
      v63 = *(v58 + 16);
      outlined copy of Text.Storage(*v58, v62, v63);
      v64 = *v57;
      v65 = *(v57 + 8);
      v66 = *(v57 + 16);
      *v57 = v61;
      *(v57 + 8) = v62;
      *(v57 + 16) = v63;
      outlined consume of Text.Storage(v64, v65, v66);
      *(v57 + 24) = *(v58 + 24);
    }

    else
    {
      outlined destroy of Text(v57);
      v70 = *(v58 + 16);
      *v57 = *v58;
      *(v57 + 16) = v70;
    }
  }

  else if (v60)
  {
    v67 = *v58;
    v68 = *(v58 + 8);
    v69 = *(v58 + 16);
    outlined copy of Text.Storage(*v58, v68, v69);
    *v57 = v67;
    *(v57 + 8) = v68;
    *(v57 + 16) = v69;
    *(v57 + 24) = *(v58 + 24);
  }

  else
  {
    v71 = *(v58 + 16);
    *v57 = *v58;
    *(v57 + 16) = v71;
  }

  v72 = a3[9];
  v73 = a1 + v72;
  v74 = a2 + v72;
  v75 = *(a1 + v72 + 24);
  v76 = *(a2 + v72 + 24);
  if (v75)
  {
    if (v76)
    {
      v77 = *v74;
      v78 = *(v74 + 8);
      v79 = *(v74 + 16);
      outlined copy of Text.Storage(*v74, v78, v79);
      v80 = *v73;
      v81 = *(v73 + 8);
      v82 = *(v73 + 16);
      *v73 = v77;
      *(v73 + 8) = v78;
      *(v73 + 16) = v79;
      outlined consume of Text.Storage(v80, v81, v82);
      *(v73 + 24) = *(v74 + 24);
    }

    else
    {
      outlined destroy of Text(v73);
      v86 = *(v74 + 16);
      *v73 = *v74;
      *(v73 + 16) = v86;
    }
  }

  else if (v76)
  {
    v83 = *v74;
    v84 = *(v74 + 8);
    v85 = *(v74 + 16);
    outlined copy of Text.Storage(*v74, v84, v85);
    *v73 = v83;
    *(v73 + 8) = v84;
    *(v73 + 16) = v85;
    *(v73 + 24) = *(v74 + 24);
  }

  else
  {
    v87 = *(v74 + 16);
    *v73 = *v74;
    *(v73 + 16) = v87;
  }

  v88 = a3[10];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v90 = v89;
  v91 = *(v89 - 8);
  v92 = *(v91 + 48);
  v93 = v92(a1 + v88, 1, v89);
  v94 = v92(a2 + v88, 1, v90);
  if (!v93)
  {
    if (!v94)
    {
      (*(v91 + 24))(a1 + v88, a2 + v88, v90);
      goto LABEL_46;
    }

    (*(v91 + 8))(a1 + v88, v90);
    goto LABEL_45;
  }

  if (v94)
  {
LABEL_45:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v88), (a2 + v88), *(*(v95 - 8) + 64));
    goto LABEL_46;
  }

  (*(v91 + 16))(a1 + v88, a2 + v88, v90);
  (*(v91 + 56))(a1 + v88, 0, 1, v90);
LABEL_46:
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v96 = a3[12];
  v97 = a1 + v96;
  v98 = (a2 + v96);
  v99 = *v98;
  *(v97 + 8) = *(v98 + 8);
  *v97 = v99;
  return a1;
}

char *initializeWithTake for FileExportOperation(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for FileExportOperation.Mode(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for FileExportOperation.Move(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
    *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = a3[7];
  v14 = a3[8];
  v15 = &a1[v13];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  v18 = &a1[v14];
  v19 = &a2[v14];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v21 = a3[9];
  v22 = a3[10];
  v23 = *&a2[v21];
  v24 = *&a2[v21 + 16];
  v25 = &a1[v21];
  *v25 = v23;
  *(v25 + 1) = v24;
  type metadata accessor for Predicate<Pack{URL}>(0);
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(&a2[v22], 1, v26))
  {
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v22], &a2[v22], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&a1[v22], &a2[v22], v27);
    (*(v28 + 56))(&a1[v22], 0, 1, v27);
  }

  v30 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v31 = &a1[v30];
  v32 = &a2[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  return a1;
}

char *assignWithTake for FileExportOperation(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of FileExportOperation.Mode(a1, type metadata accessor for FileExportOperation.Mode);
    v6 = type metadata accessor for FileExportOperation.Mode(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for FileExportOperation.Move(0);
      *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
      *&a1[*(v8 + 24)] = *&a2[*(v8 + 24)];
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v13 = *v11;
  v12 = *(v11 + 1);
  *v10 = v13;
  *(v10 + 1) = v12;

  v14 = a3[6];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (v18)
  {
    if (!v19)
    {
      (*(v16 + 32))(&a1[v14], &a2[v14], v15);
      (*(v16 + 56))(&a1[v14], 0, 1, v15);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v19)
  {
    (*(v16 + 8))(&a1[v14], v15);
LABEL_10:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_11;
  }

  (*(v16 + 40))(&a1[v14], &a2[v14], v15);
LABEL_11:
  v21 = a3[7];
  v22 = &a1[v21];
  v23 = &a2[v21];
  if (*&a1[v21 + 24])
  {
    if (*(v23 + 3))
    {
      v24 = v23[16];
      v25 = *v22;
      v26 = *(v22 + 1);
      v27 = v22[16];
      *v22 = *v23;
      v22[16] = v24;
      outlined consume of Text.Storage(v25, v26, v27);
      *(v22 + 3) = *(v23 + 3);

      goto LABEL_16;
    }

    outlined destroy of Text(v22);
  }

  v28 = *(v23 + 1);
  *v22 = *v23;
  *(v22 + 1) = v28;
LABEL_16:
  v29 = a3[8];
  v30 = &a1[v29];
  v31 = &a2[v29];
  if (*&a1[v29 + 24])
  {
    if (*(v31 + 3))
    {
      v32 = v31[16];
      v33 = *v30;
      v34 = *(v30 + 1);
      v35 = v30[16];
      *v30 = *v31;
      v30[16] = v32;
      outlined consume of Text.Storage(v33, v34, v35);
      *(v30 + 3) = *(v31 + 3);

      goto LABEL_21;
    }

    outlined destroy of Text(v30);
  }

  v36 = *(v31 + 1);
  *v30 = *v31;
  *(v30 + 1) = v36;
LABEL_21:
  v37 = a3[9];
  v38 = &a1[v37];
  v39 = &a2[v37];
  if (*&a1[v37 + 24])
  {
    if (*(v39 + 3))
    {
      v40 = v39[16];
      v41 = *v38;
      v42 = *(v38 + 1);
      v43 = v38[16];
      *v38 = *v39;
      v38[16] = v40;
      outlined consume of Text.Storage(v41, v42, v43);
      *(v38 + 3) = *(v39 + 3);

      goto LABEL_26;
    }

    outlined destroy of Text(v38);
  }

  v44 = *(v39 + 1);
  *v38 = *v39;
  *(v38 + 1) = v44;
LABEL_26:
  v45 = a3[10];
  type metadata accessor for Predicate<Pack{URL}>(0);
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = *(v48 + 48);
  v50 = v49(&a1[v45], 1, v46);
  v51 = v49(&a2[v45], 1, v47);
  if (!v50)
  {
    if (!v51)
    {
      (*(v48 + 40))(&a1[v45], &a2[v45], v47);
      goto LABEL_32;
    }

    (*(v48 + 8))(&a1[v45], v47);
    goto LABEL_31;
  }

  if (v51)
  {
LABEL_31:
    _s10Foundation3URLVSgMaTm_3(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v45], &a2[v45], *(*(v52 - 8) + 64));
    goto LABEL_32;
  }

  (*(v48 + 32))(&a1[v45], &a2[v45], v47);
  (*(v48 + 56))(&a1[v45], 0, 1, v47);
LABEL_32:
  v53 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v54 = &a1[v53];
  v55 = &a2[v53];
  *v54 = *v55;
  v54[8] = v55[8];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for FileExportOperation.Move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (v4 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v4 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return v4;
}

double destroy for FileExportOperation.Move(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t initializeWithCopy for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t assignWithCopy for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t initializeWithTake for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for FileExportOperation.Move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for FileExportOperation.Mode(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = v18 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = *a2;
        v20 = *(a2 + 8);
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v23 = *(a2 + 32);
        v24 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v20, v21, v22, v23, v24);
        *a1 = v19;
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        *(a1 + 24) = v22;
        *(a1 + 32) = v23;
        *(a1 + 40) = v24;
        v25 = *(a2 + 56);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v25;
        v26 = *(a2 + 96);
        v32 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v32;
        *(a1 + 96) = v26;
      }

      else
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
        v30 = *(a2 + 48);
        v33 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v33;
        *(a1 + 48) = v30;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v27 = *(a2 + 32);
        v28 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
      }

      else
      {
        v7 = type metadata accessor for URL();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for FileExportOperation.Move(0);
        v9 = *(v8 + 20);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v13 = *v11;
        v12 = v11[1];
        *v10 = v13;
        v10[1] = v12;
        v14 = *(v8 + 24);
        v15 = (a1 + v14);
        v16 = (a2 + v14);
        v17 = v16[1];
        *v15 = *v16;
        v15[1] = v17;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for FileExportOperation.Mode(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return result;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return result;
    }
  }

  else
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1, v5);
    type metadata accessor for FileExportOperation.Move(0);
  }

  return result;
}