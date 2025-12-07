uint64_t ConditionallyBorderedButton.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), &v23);
  v8 = v23;
  specialized Environment.wrappedValue.getter(v5, v6 | (v7 << 8), &v21);
  v9 = v21;
  v10 = v22;
  static EdgeInsets.zero.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = specialized Environment.wrappedValue.getter(v3, v4);
  if (result == 2 || (result & 1) == 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1043878380;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 60) = 256;
  return result;
}

double ConditionallyBorderedButton.body(content:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 24);
  v5 = *(v1 + 6);
  v6 = *(v1 + 56);
  v7 = *(v1 + 12);
  v8 = *(v1 + 104);
  specialized Environment.wrappedValue.getter(v5, v6 & 1, &v26);
  if (v26 < 2u)
  {
    v9 = 10.0;
    v10 = 5.0;
  }

  else if (v26 - 3 >= 2)
  {
    v9 = 12.0;
    v10 = 7.0;
  }

  else
  {
    v9 = 20.0;
    v10 = 15.0;
  }

  specialized Environment.wrappedValue.getter(v7, v8 & 1, &v26);
  v11 = 0.0;
  if (v26 - 7 <= 4)
  {
    v11 = dbl_18CD6E978[(v26 - 7)];
  }

  if (specialized Environment.wrappedValue.getter(v3, v4 & 1) == 2)
  {
    static EdgeInsets.zero.getter();
    v10 = v12;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v14 = v9 + v11;
    v16 = v10;
    v18 = v14;
  }

  v19 = static Edge.Set.all.getter();
  v26 = *v1;
  v27 = v3;
  v28 = v4;
  *v29 = *(v1 + 25);
  *&v29[15] = *(v1 + 5);
  v30 = v5;
  v31 = v6;
  v32 = *(v1 + 57);
  *v33 = *(v1 + 73);
  *&v33[15] = *(v1 + 11);
  v34 = v7;
  v35 = v8;
  ConditionallyBorderedButton.background.getter(v24);
  v36 = v24[0];
  v37 = v24[1];
  *v38 = v25[0];
  *&v38[14] = *(v25 + 14);
  v20 = static Alignment.center.getter();
  *&v39[7] = v36;
  *&v39[23] = v37;
  *&v39[39] = *v38;
  *&v39[55] = *&v38[16];
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
  *(a1 + 40) = 0;
  *(a1 + 57) = *&v39[16];
  *(a1 + 73) = *&v39[32];
  *(a1 + 89) = *&v39[48];
  v21 = *&v39[63];
  result = *v39;
  *(a1 + 41) = *v39;
  *(a1 + 104) = v21;
  *(a1 + 112) = v20;
  *(a1 + 120) = v23;
  return result;
}

__n128 key path getter for EnvironmentValues.accessibilityButtonBorderSpec : EnvironmentValues@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  result = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for EnvironmentValues.accessibilityButtonBorderSpec : EnvironmentValues(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v17 = *(a1 + 64);
  v13 = *(a1 + 64);
  v9 = v14[0];
  v10 = v3;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);

  outlined init with copy of BorderedButtonColorSpec?(v14, v8);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for BorderlessButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of BorderedButtonColorSpec?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(0, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithCopy for ConditionallyBorderedButton(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(v2 + 32);
  v13 = *(v2 + 41);
  v14 = *(v2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 32) = v12;
  v17 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 41) = v13;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = *(v2 + 48);
  v19 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = *(v2 + 64);
  v23 = *(v2 + 72);
  v24 = *(v2 + 80);
  v25 = *(v2 + 89);
  v26 = *(v2 + 88);
  outlined copy of Environment<KeyboardShortcut?>.Content(v22, v23, v24, v26, v25);
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  v30 = *(a1 + 89);
  *(a1 + 64) = v22;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  v31 = *(a1 + 88);
  *(a1 + 88) = v26;
  *(a1 + 89) = v25;
  outlined consume of Environment<KeyboardShortcut?>.Content(v27, v28, v29, v31, v30);
  v32 = *(v2 + 96);
  LOBYTE(v2) = *(v2 + 104);
  outlined copy of Environment<Selector?>.Content(v32, v2);
  v33 = *(a1 + 96);
  v34 = *(a1 + 104);
  *(a1 + 96) = v32;
  *(a1 + 104) = v2;
  outlined consume of Environment<Selector?>.Content(v33, v34);
  return a1;
}

uint64_t assignWithTake for ConditionallyBorderedButton(uint64_t a1, uint64_t *a2)
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
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = *(a2 + 56);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = a2[10];
  v20 = *(a2 + 88);
  v21 = *(a2 + 89);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = *(a1 + 89);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = v19;
  v26 = *(a1 + 88);
  *(a1 + 88) = v20;
  *(a1 + 89) = v21;
  outlined consume of Environment<KeyboardShortcut?>.Content(v22, v23, v24, v26, v25);
  v27 = *(a2 + 104);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = v27;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionallyBorderedButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ConditionallyBorderedButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double outlined consume of BorderedButtonColorSpec.LabelStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

uint64_t assignWithCopy for OpacityButtonHighlightModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  v27 = *(v2 + 88);
  LOBYTE(v2) = *(v2 + 96);
  outlined copy of Environment<BorderedButtonColorSpec?>.Content(v8, v9, v10, v11, v12, v13, v14, v15, v27, v2);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v27;
  *(a1 + 96) = v2;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return a1;
}

uint64_t assignWithTake for OpacityButtonHighlightModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpacityButtonHighlightModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[97])
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

uint64_t storeEnumTagSinglePayload for OpacityButtonHighlightModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(255);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>, &unk_1EFF97100, &unk_1EFF970D0);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>(255);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>, &type metadata for ShouldRenderAsTemplate, &type metadata for ButtonDefaultRenderingModeModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>, &unk_1EFF971A0, &type metadata for AccessibilityButtonBorderModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, MEMORY[0x1E6980680]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag()
{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag;
  if (!lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>, &protocol witness table for BorderlessButtonStyleEnvironment);
    v5[1] = lazy protocol witness table accessor for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag, &type metadata for UsesLabelInteractionContentShapeFlag, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint()
{
  result = lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint;
  if (!lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint)
  {
    result = swift_getWitnessTable("=|\tb$Z\b", &type metadata for BarItemBridgedTint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint;
  if (!lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarItemBridgedTint, &type metadata for BarItemBridgedTint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemBridgedTint and conformance BarItemBridgedTint);
  }

  return result;
}

uint64_t outlined destroy of BorderedButtonColorSpec?(uint64_t a1)
{
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(0, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_memcpy14_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

void *initializeBufferWithCopyOfBuffer for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-3 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    (*(v4 + 16))(&a1[v5 + 2] & v6, &a2[v5 + 2] & v6);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  return v3;
}

_BYTE *assignWithCopy for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

_BYTE *initializeWithTake for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

_BYTE *assignWithTake for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for BorderlessButtonLabelShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 2) & ~v6);
      }

      v15 = *(a1 + 1);
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

void storeEnumTagSinglePayload for BorderlessButtonLabelShapeStyle(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    a1[1] = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, lazy protocol witness table accessor for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>, MEMORY[0x1E697E5D8]);
    v5[1] = lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionallyBorderedButton>, lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton, &unk_1EFF970D0, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>)
  {
    type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>, MEMORY[0x1E697DB78]);
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>);
    }
  }
}

void type metadata accessor for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<TintShapeStyle>, MEMORY[0x1E697E570], MEMORY[0x1E697E558], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    lazy protocol witness table accessor for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<TintShapeStyle>, MEMORY[0x1E697E570], MEMORY[0x1E697E558], MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable(MEMORY[0x1E697F5B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ConditionallyBorderedButton>, lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton, &unk_1EFF970D0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ConditionallyBorderedButton> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>, StaticIf<InvertedViewInputPredicate<UsesLabelInteractionContentShapeFlag>, _ContentShapeModifier<Rectangle>, EmptyModifier>>, StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>>, BorderlessButtonStyleEnvironment> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

double ContainerRelativeFrameModifier.MakeLayout.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] != HIDWORD(a1))
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v6 = Value[1];
    v7 = Value[2];
    v8 = Value[3];
    v12 = MEMORY[0x18D00B390](Value, v9, v10, v11);
    ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(0, a1, v12, v13);
    *&v17 = v5;
    *(&v17 + 1) = v6;
    *&v18 = v7;
    *(&v18 + 1) = v8;
    v14 = MEMORY[0x18D00B390]();
    ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(1, a1, v14, v15);
  }

  AGGraphGetValue();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v17;
  a2[1] = v18;
  result = *&v19;
  a2[2] = v19;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ContainerRelativeFrameModifier.MakeLayout@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

void View.containerRelativeFrame(_:count:span:spacing:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a8;
  v17[0] = a1;
  v18 = a4;
  v19 = a5;
  v20 = partial apply for closure #1 in View.containerRelativeFrame(_:count:span:spacing:alignment:);
  v21 = v16;
  MEMORY[0x18D00A570](v17, a6, &type metadata for ContainerRelativeFrameModifier, a7);
}

double partial apply for closure #1 in View.containerRelativeFrame(_:count:span:spacing:alignment:)(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = a1 - (v3 + -1.0) * v2;
  if (v4 <= 0.0)
  {
    v4 = 0.0;
  }

  return v2 * (*(v1 + 24) + -1.0) + v4 / v3 * *(v1 + 24);
}

uint64_t View.containerRelativeFrame(_:alignment:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  return MEMORY[0x18D00A570](v8, a6, &type metadata for ContainerRelativeFrameModifier, a7);
}

__n128 assignWithTake for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v6;

      return result;
    }
  }

  else if (v4)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v7;
    return result;
  }

  result = *v5;
  *v3 = *v5;
  return result;
}

uint64_t partial apply for closure #1 in ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, __n128 a3@<Q0>)
{
  a3.n128_u64[0] = *(v3 + 16);
  result = *(v3 + 32);
  v7 = *(a1 + 24);
  if (v7)
  {
    if (*(v3 + 32))
    {
      a3.n128_u64[0] = *(v3 + 24);
    }

    result = v7(a3);
  }

  else if (*(v3 + 32))
  {
    a3.n128_u64[0] = *(v3 + 24);
  }

  *a2 = a3.n128_u64[0];
  return result;
}

uint64_t DynamicTableRowContent.onDelete(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  outlined copy of AppIntentExecutor?(a1, a2);
  lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier();
  TableRowContent.modifier<A>(_:)(&v6, a3, &type metadata for OnDeleteTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
}

unint64_t lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier()
{
  result = lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier;
  if (!lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDeleteTableRowModifier, &type metadata for OnDeleteTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier);
  }

  return result;
}

uint64_t OnDeleteTableRowModifier.body.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance OnDeleteTableRowModifier@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3, v4);
}

uint64_t TableRowContent.deleteDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier();
  return TableRowContent.modifier<A>(_:)(&v5, a2, &type metadata for DeleteDisabledTableRowModifier);
}

unint64_t lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier()
{
  result = lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier;
  if (!lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeleteDisabledTableRowModifier, &type metadata for DeleteDisabledTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier);
  }

  return result;
}

__n128 assignWithTake for OnDeleteTableRowModifier(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  if (a1->n128_u64[0])
  {
    if (v2)
    {
      v3 = a2->n128_u64[1];
      a1->n128_u64[0] = v2;
      a1->n128_u64[1] = v3;
    }

    else
    {

      result = *a2;
      *a1 = *a2;
    }
  }

  else if (v2)
  {
    v5 = a2->n128_u64[1];
    a1->n128_u64[0] = v2;
    a1->n128_u64[1] = v5;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeleteTableRowModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for OnDeleteTableRowModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t PlatformSliderStyle.ValueLabel.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t View.navigationDestinations<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationDestinationsModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  a1(v15);
  (*(v8 + 32))(v17, v10, a4);
  MEMORY[0x18D00A570](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t View.navigationDestination<A>(isPresented:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v27 = a7;
  v25 = a8;
  v26 = a5;
  v24 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ViewDestinationNavigationDestinationModifier(0, v16, a9, v15);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23[-v19];

  a4(v21);
  ViewDestinationNavigationDestinationModifier.init(isPresented:destination:)(a1, a2, v24, v14, a6, a9, v20);
  MEMORY[0x18D00A570](v20, v26, v17, v27);
  return (*(v18 + 8))(v20, v17);
}

uint64_t View.navigationDestination<A, B>(item:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v27 = a9;
  v28 = a4;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v30[0] = a5;
  v30[1] = a6;
  v30[2] = a8;
  v30[3] = a10;
  v17 = type metadata accessor for ItemBoundNavigationDestinationModifier(0, v30);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(v14 + 16))(v16, v24, v13, v19);
  ItemBoundNavigationDestinationModifier.init(item:destination:)(v16, v25, v26, a5, a6, a8, a10, v21);

  MEMORY[0x18D00A570](v21, v28, v17, v29);
  return (*(v18 + 8))(v21, v17);
}

uint64_t static NavigationDestinationsModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v50 = *(a2 + 32);
  v51 = v10;
  v12 = *(a2 + 48);
  v52 = *(a2 + 64);
  v13 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v13;
  v45 = v50;
  v46 = v12;
  v47 = *(a2 + 64);
  v14 = *a1;
  v53 = *(a2 + 80);
  v48 = *(a2 + 80);
  v43 = v49[0];
  v44 = v11;
  outlined init with copy of _ViewInputs(v49, &v60);
  PreferenceKeys.add(_:)();
  PreferencesOutputs.init()();
  v41 = v60;
  v42 = DWORD2(v60);
  LODWORD(v32) = v14;
  type metadata accessor for NavigationDestinationsModifier(255, a4, a5, v15);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v54[2] = v45;
  v54[3] = v46;
  v54[4] = v47;
  v55 = v48;
  v54[0] = v43;
  v54[1] = v44;
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v65 = v48;
  v60 = v43;
  v61 = v44;
  v16 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v54, v58);
  v16(&v29, &v60, &v41, a4, a5);
  v56[2] = v62;
  v56[3] = v63;
  v56[4] = v64;
  v57 = v65;
  v56[0] = v60;
  v56[1] = v61;
  outlined destroy of _ViewInputs(v56);
  v58[2] = v45;
  v58[3] = v46;
  v58[4] = v47;
  v59 = v48;
  v58[0] = v43;
  v58[1] = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v32 = v43;
  v33 = v44;
  v17 = outlined init with copy of _ViewInputs(v58, &v60);
  a3(&v38, v17, &v32);
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v65 = v37;
  v60 = v32;
  v61 = v33;
  outlined destroy of _ViewInputs(&v60);
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18CD63410;
  v19 = v39;
  *(v18 + 32) = v38;
  *(v18 + 40) = v19;
  v20 = v42;
  *(v18 + 48) = v41;
  *(v18 + 56) = v20;

  PreferencesOutputs.init()();
  v29 = v18;
  v30 = v32;
  v31 = DWORD2(v32);
  v21 = *(v46 + 16);
  if (v21)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v22 = -v21;
    v23 = 1;
    do
    {
      v24 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v24(&v32, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v23;
    }

    while (v22 + v23 != 1);
  }

  else
  {
  }

  v34 = v45;
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v32 = v43;
  v33 = v44;
  outlined destroy of _ViewInputs(&v32);

  v25 = v31;
  v26 = v30;

  v28 = v40;
  *a6 = v26;
  *(a6 + 8) = v25;
  *(a6 + 12) = v28;
  return result;
}

uint64_t closure #1 in static NavigationDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for NavigationDestinationsModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDestinationsModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationsModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v6>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v6>();
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationModifier.MakeSeededResolver(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for NavigationDestinationModifier.MakeSeededResolver(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double View.writingToolsBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void key path getter for EnvironmentValues._writingToolsBehavior : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues._writingToolsBehavior : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>);
    }
  }
}

double EnvironmentValues.writingToolsBehavior.setter(char *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Int WritingToolsBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

void EnvironmentValues._writingToolsBehavior.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void (*EnvironmentValues.writingToolsBehavior.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5(v2);
  return EnvironmentValues.writingToolsBehavior.modify;
}

double (*_s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5_resume_0;
}

double _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA0C3KeyRzluiMAC020WritingToolsBehaviorF033_BF2404ED2C43BC189E1140AEF46C9504LLV_Ttg5_resume_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WritingToolsBehavior and conformance WritingToolsBehavior()
{
  result = lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior;
  if (!lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WritingToolsBehavior, &type metadata for WritingToolsBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WritingToolsBehavior and conformance WritingToolsBehavior);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>)
  {
    type metadata accessor for WritingToolsBehavior?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<WritingToolsBehavior?>);
    }
  }
}

void type metadata accessor for WritingToolsBehavior?()
{
  if (!lazy cache variable for type metadata for WritingToolsBehavior?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WritingToolsBehavior?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value()
{
  result = lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value;
  if (!lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WritingToolsBehavior.Value, &type metadata for WritingToolsBehavior.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WritingToolsBehavior.Value and conformance WritingToolsBehavior.Value);
  }

  return result;
}

uint64_t static MulticolumnSplitView._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = a2[3];
  v40 = a2[2];
  v41 = v15;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v16 = a2[1];
  v38 = *a2;
  v39 = v16;
  LODWORD(v46[0]) = v14;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  type metadata accessor for MulticolumnSplitView(255, &v48);
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32 = v38;
  v33 = v39;
  swift_beginAccess();
  LODWORD(v46[0]) = *(v39 + 16);
  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  v24 = type metadata accessor for MulticolumnSplitView.EnvironmentTransform(0, &v48);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MulticolumnSplitView<A, B, C>.EnvironmentTransform, v24);
  outlined init with copy of _ViewInputs(&v38, &v48);
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v46, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphInputs.environment.setter();
  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  v20 = type metadata accessor for MulticolumnSplitView.Container(0, &v48);
  LODWORD(v46[0]) = v17;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  *&v49 = a5;
  *(&v49 + 1) = a6;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  v21 = type metadata accessor for MulticolumnSplitView.Child(0, &v48);
  swift_getWitnessTable(protocol conformance descriptor for MulticolumnSplitView<A, B, C>.Child, v21);
  _GraphValue.init<A>(_:)();
  v44[2] = v34;
  v44[3] = v35;
  v44[4] = v36;
  v45 = v37;
  v44[0] = v32;
  v44[1] = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v26 = v32;
  v27 = v33;
  outlined init with copy of _ViewInputs(v44, &v48);
  swift_getWitnessTable(protocol conformance descriptor for MulticolumnSplitView<A, B, C>.Container, v20);
  static View.makeDebuggableView(view:inputs:)();
  v46[2] = v28;
  v46[3] = v29;
  v46[4] = v30;
  v47 = v31;
  v46[0] = v26;
  v46[1] = v27;
  outlined destroy of _ViewInputs(v46);
  v50 = v34;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v48 = v32;
  v49 = v33;
  return outlined destroy of _ViewInputs(&v48);
}

uint64_t MulticolumnSplitView.Child.multicolumnSplitView.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v9 = type metadata accessor for MulticolumnSplitView(0, v12);
  Value = AGGraphGetValue();
  return (*(*(v9 - 8) + 16))(a8, Value, v9);
}

uint64_t MulticolumnSplitView.Child.value.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[1] = a1;
  v24 = a8;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v14 = type metadata accessor for MulticolumnSplitView.Configuration(0, &v25);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v18 = type metadata accessor for MulticolumnSplitView(0, &v25);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v23 - v19;
  MulticolumnSplitView.Child.multicolumnSplitView.getter(a2, a3, a4, a5, a6, a7, v23 - v19);
  (*(v15 + 32))(v17, v20, v14);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v21 = type metadata accessor for MulticolumnSplitView.Configuration(0, &v25);
  return (*(*(v21 - 8) + 32))(v24, v17, v21);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MulticolumnSplitView<A, B, C>.Child@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v6[2] = a1[3];
  v4 = type metadata accessor for MulticolumnSplitView.Container(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

void MulticolumnSplitView.EnvironmentTransform.value.getter(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];

  AGGraphGetValue();

  EnvironmentValues.horizontalSizeClass.getter();

  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    v4 = v6;
  }

  else
  {

    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
}

uint64_t MulticolumnSplitView.Container.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v38 = a1[2];
  v39 = v2;
  v7 = v38;
  v32 = v2;
  v33 = v38;
  v8 = v2;
  v40 = v3;
  v41 = v4;
  v9 = v3;
  v30 = v4;
  v31 = v3;
  v10 = v4;
  v42 = v5;
  v43 = v6;
  v11 = v5;
  v29 = v5;
  v34 = type metadata accessor for MulticolumnSplitView.Configuration(0, &v38);
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v29 - v13;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v6;
  v15 = type metadata accessor for MulticolumnSplitViewRepresentable(0, &v38);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v29 - v25;
  (*(v12 + 16))(v14, v35, v34, v24);
  MulticolumnSplitViewRepresentable.init(configuration:)(v14, v33, v32, v31, v30, v29, v6, v18);
  static Edge.Set.all.getter();
  View.ignoresSafeArea(_:edges:)();
  (*(v16 + 8))(v18, v15);
  v37[0] = &protocol witness table for MulticolumnSplitViewRepresentable<A, B, C>;
  v37[1] = MEMORY[0x1E6980A30];
  swift_getWitnessTable(MEMORY[0x1E697E858], v19, v37);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v20 + 8);
  v27(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v26, v19);
}

uint64_t MulticolumnSplitViewRepresentable.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v16 = type metadata accessor for MulticolumnSplitViewRepresentable(0, &v22);
  v17 = *(v16 + 68);
  (*(*(a3 - 8) + 56))(a8 + v17, 1, 1, a3);
  (*(*(a2 - 8) + 32))(a8, a1, a2);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v18 = type metadata accessor for MulticolumnSplitView.Configuration(0, &v22);
  (*(*(a4 - 8) + 32))(a8 + *(v16 + 72), a1 + *(v18 + 72), a4);
  v19 = *(v18 + 68);
  v20 = type metadata accessor for Optional();
  return (*(*(v20 - 8) + 40))(a8 + v17, a1 + v19, v20);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MulticolumnSplitView<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for MulticolumnSplitView<A, B, C>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

BOOL MulticolumnSplitViewRepresentable.hasSupplementary.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v1 + *(a1 + 68), v4, v6);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3) != 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t MulticolumnSplitViewRepresentable.supplementary.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  result = MulticolumnSplitViewRepresentable.hasSupplementary.getter(a1);
  if (result)
  {
    (*(v7 + 16))(v9, v2 + *(a1 + 68), v6);
    v11 = *(v5 - 8);
    result = (*(v11 + 48))(v9, 1, v5);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v9, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MulticolumnSplitViewRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *(a2 + 24);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a2))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = [objc_allocWithZone(type metadata accessor for NotifyingMulticolumnSplitViewController()) initWithStyle_];
  [v14 setDelegate_];
  MulticolumnSplitViewRepresentable.Coordinator.addSecondaryView(_:)(v3 + *(a2 + 72), v15);
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<SidebarStyleContext>, MEMORY[0x1E697F808], MEMORY[0x1E697F800], type metadata accessor for StyleContextSplitViewNavigationController);
  v23[0] = v11;
  v23[1] = v12;
  v16 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(v3, 0, v23, v10, *(a2 + 16), *(a2 + 40));
  if ([v14 style])
  {
    [v14 setViewController:v16 forColumn:0];
  }

  v17 = *(v9 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if ([v14 style])
  {
    [v14 setViewController:v17 forColumn:2];
  }

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a2))
  {
    MulticolumnSplitViewRepresentable.supplementary.getter(a2, v7);
    MulticolumnSplitViewRepresentable.Coordinator.addSupplementaryView(_:)(v7, v18);
    (*(v5 + 8))(v7, v22);
    v19 = *(v9 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
    if ([v14 style])
    {
      v19 = v19;
      [v14 setViewController:v19 forColumn:1];
    }
  }

  return v14;
}

void MulticolumnSplitViewRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  if (![v17 style])
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = [a1 viewControllerForColumn_];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v28 = v7;
  v29 = v14;
  v26 = v11;
  v27 = v8;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (type metadata accessor for SplitViewNavigationController(), (v18 = swift_dynamicCastClass()) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  *&v31 = v16;
  *(&v31 + 1) = v15;
  v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x1B8);
  v20 = *(a3 + 16);
  v21 = *(a3 + 40);

  v19(v4, &v31, v13, v20, v21);

  v22 = *(a3 + 72);
  *&v31 = v16;
  *(&v31 + 1) = v15;

  specialized MulticolumnSplitViewRepresentable.Coordinator.updateSecondaryPlaceholder(_:for:environment:transaction:)(v4 + v22, &v31, v13);

  if (MulticolumnSplitViewRepresentable.hasSupplementary.getter(a3))
  {
    v23 = v26;
    MulticolumnSplitViewRepresentable.supplementary.getter(a3, v26);
    *&v31 = v16;
    *(&v31 + 1) = v15;

    specialized MulticolumnSplitViewRepresentable.Coordinator.updateSupplementaryPlaceholder(_:for:environment:transaction:)(v23, &v31, v13);

    (*(v27 + 8))(v23, v28);
  }

  else
  {
    v24 = v30;
  }
}

void MulticolumnSplitViewRepresentable.Coordinator.addSecondaryView(_:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<NoStyleContext>, MEMORY[0x1E697E428], MEMORY[0x1E697E420], type metadata accessor for StyleContextSplitViewNavigationController);
  v12 = xmmword_18CD6A6D0;
  v7 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(a1, 0, &v12, 1uLL, *((v6 & v5) + 0x60), *((v6 & v5) + 0x78));
  v8 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController) = v7;

  v9 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if (v9)
  {
    v10 = [v9 topViewController];
    if (v10)
    {
      v11 = v10;

      *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void MulticolumnSplitViewRepresentable.Coordinator.addSupplementaryView(_:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], type metadata accessor for StyleContextSplitViewNavigationController);
  v12 = xmmword_18CD6A6D0;
  v7 = specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(a1, 0, &v12, 1uLL, *((v6 & v5) + 0x58), *((v6 & v5) + 0x70));
  v8 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) = v7;

  v9 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  if (v9)
  {
    v10 = [v9 topViewController];
    if (v10)
    {
      v11 = v10;

      *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

UISplitViewControllerColumn __swiftcall MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(UISplitViewController *_, UISplitViewControllerColumn topColumnForCollapsingToProposedTopColumn)
{
  if ([(UISplitViewController *)_ style])
  {
    v5 = [(UISplitViewController *)_ viewControllerForColumn:topColumnForCollapsingToProposedTopColumn];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 topViewController];

        if (v8)
        {

          v9 = *(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost);
          if (v9)
          {
            if (v8 == v9)
            {
              return (*(v2 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) != 0);
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return topColumnForCollapsingToProposedTopColumn;
}

UISplitViewControllerColumn @objc MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(void *a1, uint64_t a2, void *a3, UISplitViewControllerColumn a4)
{
  v6 = a3;
  v7 = a1;
  v8 = MulticolumnSplitViewRepresentable.Coordinator.splitViewController(_:topColumnForCollapsingToProposedTopColumn:)(v6, a4);

  return v8;
}

id MulticolumnSplitViewRepresentable.Coordinator.init()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost) = 0;
  *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost) = 0;
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for MulticolumnSplitViewRepresentable.Coordinator(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

void MulticolumnSplitViewRepresentable.Coordinator.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
}

id MulticolumnSplitViewRepresentable.Coordinator.__deallocating_deinit()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for MulticolumnSplitViewRepresentable.Coordinator(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void @objc MulticolumnSplitViewRepresentable.Coordinator.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance MulticolumnSplitViewRepresentable<A, B, C>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MulticolumnSplitViewRepresentable.makeCoordinator()(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for willShowDetailNotification()
{
  result = MEMORY[0x18D00C850](0xD00000000000002FLL, 0x800000018CD3F020);
  static ColumnNavigationViewStyle.willShowDetailNotification = result;
  return result;
}

{
  result = MEMORY[0x18D00C850](0xD00000000000002FLL, 0x800000018CD3F020);
  static DoubleColumnNavigationViewStyle.willShowDetailNotification = result;
  return result;
}

id @objc UISplitViewController.makeDetailNavigationController(root:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

  return v3;
}

double NotifyingMulticolumnSplitViewController.showDetailViewController(_:sender:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willShowDetailNotification != -1)
  {
    swift_once();
  }

  v7 = static ColumnNavigationViewStyle.willShowDetailNotification;
  type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v21[0] = 0xD000000000000017;
  v21[1] = 0x800000018CD3F000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = type metadata accessor for UIViewController();
  *(inited + 72) = a1;
  v9 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 postNotificationName:v7 object:v2 userInfo:isa];

  outlined init with copy of Any?(a2, v21);
  v11 = v22;
  if (v22)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_showDetailViewController_sender_, v9, v17);
  swift_unknownObjectRelease();
  return result;
}

void *NotifyingMulticolumnSplitViewController.childForStatusBarHidden.getter()
{
  if (![v0 isCollapsed])
  {
    v6 = [v0 viewControllerForColumn_];
    v7 = [v6 childViewControllerForStatusBarHidden];
    goto LABEL_13;
  }

  v1 = [v0 viewControllers];
  type metadata accessor for UIViewController();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    v5 = 0;
    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_7:
    v5 = v4;

LABEL_11:
    v7 = [v5 childViewControllerForStatusBarHidden];
    if (!v7)
    {
      return v5;
    }

    v6 = v5;
LABEL_13:
    v5 = v7;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t SplitViewNavigationController.applyStyleContextModifier<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return AnyView.init<A>(_:)();
}

id SplitViewNavigationController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SplitViewNavigationController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void closure #1 in StyleContextSplitViewNavigationController.init<A>(rootView:wantsTransparentBackground:environment:transaction:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = specialized UIHostingController.host.getter();
  v6 = *((v4 & v3) + 0x50);
  v7 = *(v6 + 24);
  v8 = v5;
  v15[0] = a2;
  v15[1] = swift_getWitnessTable(MEMORY[0x1E697F4D0], v7);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v15);
  v11 = type metadata accessor for _UIHostingView(0, v6, WitnessTable, v10);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v11);
  ViewRendererHost.updateViewGraph<A>(body:)();

  if (v14 == 1)
  {
    v12 = specialized UIHostingController.host.getter();
    _UIHostingView.preferencesDidChange()();
  }

  v14 = xmmword_18CD6A6D0;
  v13 = specialized UIHostingController.host.getter();
  _UIHostingView.inheritedEnvironment.setter(&v14);
}

BOOL closure #1 in closure #1 in StyleContextSplitViewNavigationController.init<A>(rootView:wantsTransparentBackground:environment:transaction:)@<W0>(_BYTE *a1@<X8>)
{
  result = GraphHost.updatePreferences()();
  *a1 = result;
  return result;
}

uint64_t StyleContextSplitViewNavigationController.applyStyleContextModifier<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StyleContextWriter();
  v5 = type metadata accessor for ModifiedContent();
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x18D00A570](v6);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F4D0], v4);
  v9[0] = a3;
  v9[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v9);
  return AnyView.init<A>(_:)();
}

uint64_t StyleContextSplitViewNavigationController.replaceRoot<A>(_:environment:transaction:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a3;
  v7 = type metadata accessor for StyleContextWriter();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = *a2;
  v14 = a2[1];
  MEMORY[0x18D00A570](v10);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F4D0], v7);
  v20[0] = a5;
  v20[1] = WitnessTable;
  v16 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v20);
  v21[0] = v13;
  v21[1] = v14;
  UINavigationController.updateRootHost<A>(root:environment:transaction:)(v12, v21, v19, v8, v16);
  return (*(v9 + 8))(v12, v8);
}

id @objc StyleContextSplitViewNavigationController.childForStatusBarHidden.getter(void *a1)
{
  v1 = a1;
  v2 = StyleContextSplitViewNavigationController.childForStatusBarHidden.getter();

  return v2;
}

id StyleContextSplitViewNavigationController.childForStatusBarHidden.getter()
{
  v1 = [v0 topViewController];
  v2 = [v1 childViewControllerForStatusBarHidden];

  result = v2;
  if (!v2)
  {
    return [v0 topViewController];
  }

  return result;
}

id @objc StyleContextSplitViewNavigationController.init(rootViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = specialized StyleContextSplitViewNavigationController.init(rootViewController:)(a3);

  return v5;
}

id StyleContextSplitViewNavigationController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id specialized MulticolumnSplitViewRepresentable.makeCoordinator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  return [objc_allocWithZone(type metadata accessor for MulticolumnSplitViewRepresentable.Coordinator(0 v7))];
}

id specialized StyleContextSplitViewNavigationController.__allocating_init<A>(rootView:wantsTransparentBackground:environment:transaction:)(uint64_t a1, int a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a2;
  v9 = type metadata accessor for StyleContextWriter();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = *a3;
  v33 = a3[1];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697F4D0], v9, v12);
  v38[0] = a6;
  v38[1] = WitnessTable;
  v17 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v38);
  v19 = type metadata accessor for UIHostingController(0, v10, v17, v18);
  MEMORY[0x18D00A570](v19, a5, v9, a6);
  v23 = specialized UIHostingController.__allocating_init(rootView:)(v14, v20, v21, v22);
  (*(v11 + 8))(v14, v10);
  v24 = v34;
  if (v15 != 1)
  {
    if (v34 > 1)
    {
      v25 = specialized UIHostingController.host.getter();
      v37 = v15;
      v26 = v25;
      outlined copy of Transaction?(v24);

      _UIHostingView.inheritedEnvironment.setter(&v37);

      v27 = specialized UIHostingController.host.getter();
      _UIHostingView.viewGraph.getter(v27);

      v28 = swift_allocObject();
      *(v28 + 16) = a6;
      *(v28 + 24) = v23;
      v29 = v23;
      default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
      GraphHost.asyncTransaction(_:id:_:)();
      outlined consume of EnvironmentValues?(v15, v33);

      outlined consume of ListItemTint?(v24);
    }

    else
    {
      outlined consume of EnvironmentValues?(v15, v33);
    }
  }

  v30 = specialized UIHostingController.host.getter();
  _UIHostingView.setWantsTransparentBackground(for:_:)(8, v35 & 1);

  v31 = [objc_allocWithZone(v36) initWithRootViewController_];
  outlined consume of ListItemTint?(v24);

  return v31;
}

void specialized MulticolumnSplitViewRepresentable.Coordinator.updateSecondaryPlaceholder(_:for:environment:transaction:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *(v3 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryController);
  if (v5)
  {
    v6 = v3;
    v7 = *MEMORY[0x1E69E7D40] & *v3;
    v13 = *a2;
    v15 = v5;
    v10 = [v15 topViewController];
    if (v10)
    {
      v11 = *(v6 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.secondaryPlaceholderHost);
      v14 = v10;
      if (v11 && v10 == v11)
      {
        v16 = v13;
        (*((*v4 & *v15) + 0x1B8))(a1, &v16, a3, *(v7 + 96), *(v7 + 120));

        return;
      }

      v12 = v14;
    }

    else
    {
      v12 = v15;
    }
  }
}

void specialized MulticolumnSplitViewRepresentable.Coordinator.updateSupplementaryPlaceholder(_:for:environment:transaction:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController);
  if (v7)
  {
    v9 = *MEMORY[0x1E69E7D40] & *v4;
    *v17 = *a2;
    v10 = [v7 topViewController];
    if (v10)
    {
      v11 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryPlaceholderHost);
      if (v11 && v10 == v11 && (v12 = *(v4 + direct field offset for MulticolumnSplitViewRepresentable.Coordinator.supplementaryController)) != 0)
      {
        v19 = *v17;
        v13 = *((*v6 & *v12) + 0x1B8);
        v14 = *(v9 + 88);
        v15 = *(v9 + 112);
        v18 = v10;
        v16 = v12;
        v13(a1, &v19, a3, v14, v15);
      }

      else
      {
      }
    }
  }
}

id specialized StyleContextSplitViewNavigationController.init(rootViewController:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithRootViewController_, a1);
}

void type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>)
  {
    type metadata accessor for (AnyHashable, Any)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>);
    }
  }
}

void type metadata accessor for (AnyHashable, Any)()
{
  if (!lazy cache variable for type metadata for (AnyHashable, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyHashable, Any));
    }
  }
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  type metadata accessor for (AnyHashable, Any)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for MulticolumnSplitView(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for MulticolumnSplitView.Configuration(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MulticolumnSplitView.Configuration(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MulticolumnSplitView(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v7 = a3[3];
  v6 = a3[4];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9;
  v11 = v5 + v9;
  v12 = (v5 + v10) & ~v10;
  if (*(v8 + 84))
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = *(v6 - 8);
  v15 = *(v14 + 80);
  v16 = v13 + v15;
  v17 = v9 | *(v4 + 80) | *(v14 + 80);
  v18 = v17;
  v19 = v17 & 0x100000;
  if (v18 <= 7 && ((v13 + v15 + v12) & ~v15) + *(*(v6 - 8) + 64) <= 0x18 && v19 == 0)
  {
    v23 = ~v10;
    v27 = ~v15;
    v28 = a3[4];
    (*(v4 + 16))(a1);
    v25 = ((a2 + v11) & v23);
    if ((*(v8 + 48))(v25, 1, v7))
    {
      memcpy(((a1 + v11) & v23), v25, v13);
    }

    else
    {
      (*(v8 + 16))((a1 + v11) & v23, v25, v7);
      (*(v8 + 56))((a1 + v11) & v23, 0, 1, v7);
    }

    (*(v14 + 16))((v16 + ((a1 + v11) & v23)) & v27, (v25 + v16) & v27, v28);
  }

  else
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = (v22 + ((v18 + 16) & ~v18));
  }

  return a1;
}

uint64_t destroy for MulticolumnSplitView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = a2[3];
  v6 = *(v4 + 56);
  v7 = *(v5 - 8);
  v8 = (v6 + a1 + *(v7 + 80)) & ~*(v7 + 80);
  if (!(*(v7 + 48))(v8, 1, v5))
  {
    (*(v7 + 8))(v8, v5);
  }

  v9 = a2[4];
  v10 = *(*(v9 - 8) + 8);
  v11 = *(*(v9 - 8) + 80);
  v12 = *(v7 + 64) + v8;
  if (!*(v7 + 84))
  {
    ++v12;
  }

  return v10((v12 + v11) & ~v11);
}

uint64_t initializeWithCopy for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 16))(v11, v12, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v11, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = *(a3[4] - 8);
  (*(v19 + 16))((v11 + v18 + *(v19 + 80)) & ~*(v19 + 80), (v12 + v18 + *(v19 + 80)) & ~*(v19 + 80));
  return a1;
}

uint64_t assignWithCopy for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = *(a3[4] - 8);
  (*(v20 + 24))((v11 + v19 + *(v20 + 80)) & ~*(v20 + 80), (v12 + v19 + *(v20 + 80)) & ~*(v20 + 80));
  return a1;
}

uint64_t initializeWithTake for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if ((*(v8 + 48))(v12, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v8 + 32))(v11, v12, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v11, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = *(a3[4] - 8);
  (*(v19 + 32))((v11 + v18 + *(v19 + 80)) & ~*(v19 + 80), (v12 + v18 + *(v19 + 80)) & ~*(v19 + 80));
  return a1;
}

uint64_t assignWithTake for MulticolumnSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = a3[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, v7);
  v15 = v13(v12, 1, v7);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = *(a3[4] - 8);
  (*(v20 + 40))((v11 + v19 + *(v20 + 80)) & ~*(v20 + 80), (v12 + v19 + *(v20 + 80)) & ~*(v20 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for MulticolumnSplitView(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3[4];
  v10 = *(v9 - 8);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = *(v6 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v12 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v7)
  {
    v17 = *(*(a3[3] - 8) + 64);
  }

  else
  {
    v17 = *(*(a3[3] - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v13;
  v19 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v20 = ((v17 + v14 + (v18 & ~v13)) & ~v14) + v15;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 < 2)
    {
LABEL_36:
      if (v16)
      {
LABEL_37:
        if (v5 == v16)
        {
          v27 = *(v4 + 48);

          return v27();
        }

        else
        {
          v29 = (a1 + v18) & ~v13;
          if (v8 == v16)
          {
            v30 = (*(v6 + 48))(v29, v7);
            if (v30 >= 2)
            {
              return v30 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *(*(v9 - 8) + 48);
            v32 = (v29 + v17 + v14) & ~v14;

            return v31(v32, v12, v9);
          }
        }
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_36;
  }

LABEL_23:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = ((v17 + v14 + (v18 & ~v13)) & ~v14) + v15;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

char *storeEnumTagSinglePayload for MulticolumnSplitView(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(a4[3] - 8) + 64);
  v17 = *(v13 + 80);
  if (*(v13 + 84) <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v14 + v15;
  if (!v9)
  {
    ++v16;
  }

  v20 = ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17) + *(*(v12 - 8) + 64);
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 == 0 || !v21)
  {
LABEL_24:
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v20 > 3)
  {
    v5 = 1;
    if (v18 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
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
      v5 = v24;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_24;
  }

  v5 = 4;
  if (v18 < a2)
  {
LABEL_25:
    v25 = ~v18 + a2;
    if (v20 < 4)
    {
      v27 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v25 & ~(-1 << (8 * v20));
        v29 = result;
        bzero(result, v20);
        result = v29;
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v29 = v28;
            if (v5 > 1)
            {
LABEL_59:
              if (v5 == 2)
              {
                *&result[v20] = v27;
              }

              else
              {
                *&result[v20] = v27;
              }

              return result;
            }
          }

          else
          {
            *v29 = v25;
            if (v5 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v5 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v26 = result;
      bzero(result, v20);
      result = v26;
      *v26 = v25;
      v27 = 1;
      if (v5 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v5)
    {
      result[v20] = v27;
    }

    return result;
  }

LABEL_34:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v20] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *&result[v20] = 0;
  }

  else if (v5)
  {
    result[v20] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v7 == v18)
  {
    v30 = *(v6 + 56);

    return v30();
  }

  else
  {
    v31 = &result[v19] & ~v15;
    if (v10 == v18)
    {
      v32 = *(v8 + 56);
      v33 = a2 + 1;

      return v32(v31, v33, v9);
    }

    else
    {
      v34 = *(v13 + 56);
      v35 = (v31 + v16 + v17) & ~v17;

      return v34(v35);
    }
  }
}

void type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

id static ForEach<>._makeToolbar(content:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = a2[3];
  v31 = a2[2];
  *v32 = v16;
  *&v32[12] = *(a2 + 60);
  v17 = a2[1];
  v29 = *a2;
  v30 = v17;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  *&v26[32] = v31;
  *&v26[48] = *v32;
  *&v26[60] = *&v32[12];
  *v26 = v29;
  *&v26[16] = v30;
  outlined init with copy of _ToolbarInputs(&v29, v25);
  v24 = a8;
  v19 = default argument 2 of ForEach<>.PreferenceTransform.init(forEach:inputs:cache:)(a3, a4, a5, a6, a7, a8);
  *&v25[20] = *&v26[16];
  *&v25[36] = *&v26[32];
  *&v25[52] = *&v26[48];
  *&v25[64] = *&v26[60];
  *&v25[4] = *v26;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *v26 = v18;
    *&v26[20] = *&v25[16];
    *&v26[36] = *&v25[32];
    *&v26[52] = *&v25[48];
    *&v26[68] = *&v25[64];
    *&v26[4] = *v25;
    v27 = result;
    v28 = v19;
    v21 = *&v32[16];
    PreferencesOutputs.init()();
    v22 = *&v25[8];
    *a9 = *v25;
    *(a9 + 8) = v22;
    *(a9 + 16) = v21;
    MEMORY[0x1EEE9AC00](*v32);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    *v25 = a3;
    *&v25[8] = a4;
    *&v25[16] = a5;
    *&v25[24] = a6;
    *&v25[32] = a7;
    *&v25[40] = v24;
    v23 = type metadata accessor for ForEach<>.PreferenceTransform(0, v25);
    (*(*(v23 - 8) + 8))(v26, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t default argument 2 of ForEach<>.PreferenceTransform.init(forEach:inputs:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v8 = type metadata accessor for ForEach<>.PreferenceTransform.Item(255, v12);
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v10 = specialized Dictionary.init(dictionaryLiteral:)(v9, a2, v8, a5);

  return v10;
}

uint64_t implicit closure #1 in static ForEach<>._makeToolbar(content:inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a1[5];
  v24 = a1[4];
  v25 = v8;
  v26 = *(a1 + 12);
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a1[3];
  v22 = a1[2];
  v23 = v10;
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  *&v29 = a6;
  *(&v29 + 1) = a7;
  v11 = type metadata accessor for ForEach<>.PreferenceTransform(0, &v27);
  v18 = v11;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.PreferenceTransform, v11);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v27, a1, v11);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_4, v17, v11, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  (*(v12 + 8))(&v27, v11);
  return v16;
}

uint64_t ForEach<>.PreferenceTransform.forEach.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ForEach();
  Value = AGGraphGetValue();
  return (*(*(v3 - 8) + 16))(a2, Value, v3);
}

uint64_t ForEach<>.PreferenceTransform.updateValue()(void *a1)
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v78 = v1;
  result = AGSubgraphIsValid();
  if (result)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    v13 = v12 + 16;
    *(v12 + 32) = 0u;
    *(v12 + 41) = 0u;
    *(v12 + 64) = MEMORY[0x1E69E7CC0];
    *(v12 + 72) = 1;
    *(v12 + 80) = MEMORY[0x1E69E7CD0];
    v87 = 0;
    v14 = static Array._allocateUninitialized(_:)();
    v15 = MEMORY[0x18D00CDF0](v14, v3);
    v66 = v4;
    v67 = v12;
    v69 = v10;
    v70 = v7;
    if (v15)
    {
      v16 = a1[6];
      v17 = specialized Set.init(_nonEmptyArrayLiteral:)(v14, v3, v16);
    }

    else
    {

      v16 = a1[6];
      v17 = MEMORY[0x1E69E7CD0];
    }

    v85 = &v66;
    v19 = v78[3];
    v20 = v78[5];
    v101 = v78[4];
    v102 = v20;
    v21 = v78[1];
    v98[0] = *v78;
    v98[1] = v21;
    v22 = v78[3];
    v24 = *v78;
    v23 = v78[1];
    v99 = v78[2];
    v100 = v22;
    v25 = v78[5];
    v95 = v101;
    v96 = v25;
    v91 = v24;
    v92 = v23;
    v26 = *(v78 + 12);
    v86 = v17;
    v103 = v26;
    v27 = *(v78 + 12);
    v28 = (v78 + 6);
    v68 = v78 + 6;
    v97 = v27;
    v93 = v99;
    v94 = v19;
    v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
    v84 = a1[2];
    *(&v66 - 10) = v84;
    *(&v66 - 9) = v3;
    v30 = a1[4];
    v80 = a1[5];
    v31 = v80;
    v81 = v30;
    *(&v66 - 8) = v30;
    *(&v66 - 7) = v31;
    v79 = a1[7];
    v32 = v79;
    *(&v66 - 6) = v16;
    *(&v66 - 5) = v32;
    *(&v66 - 4) = v33;
    *(&v66 - 3) = &v87;
    *(&v66 - 2) = &v86;
    *(&v66 - 1) = v13;
    v34 = *(a1 - 1);
    v73 = *(v34 + 16);
    v74 = v34 + 16;
    (v73)(v104, v98, a1, v29);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.PreferenceTransform, a1);
    MEMORY[0x18D000B40](a1, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
    StatefulRule.withObservation<A>(observationCenter:do:)();
    v83 = 0;
    v104[4] = v95;
    v104[5] = v96;
    v105 = v97;
    v104[0] = v91;
    v104[1] = v92;
    v104[2] = v93;
    v104[3] = v94;
    v36 = *(v34 + 8);
    v75 = v34 + 8;
    v76 = a1;
    v72 = v36;
    v36(v104, a1);

    v37 = v84;
    v38 = *v28;
    *&v91 = v84;
    *(&v91 + 1) = v3;
    v40 = v80;
    v39 = v81;
    *&v92 = v81;
    *(&v92 + 1) = v80;
    v41 = v79;
    *&v93 = v16;
    *(&v93 + 1) = v79;
    v42 = type metadata accessor for ForEach<>.PreferenceTransform.Item(0, &v91);
    v85 = &v66;
    *&v91 = v38;
    MEMORY[0x1EEE9AC00](v42);
    *(&v66 - 8) = v37;
    *(&v66 - 7) = v3;
    *(&v66 - 6) = v39;
    *(&v66 - 5) = v40;
    *(&v66 - 4) = v16;
    *(&v66 - 3) = v41;
    *(&v66 - 2) = &v86;
    v43 = v16;
    v44 = type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable(MEMORY[0x1E69E5D90], v44);
    v45 = Sequence.filter(_:)();
    v46 = v68;
    v47 = MEMORY[0x18D00CDE0](v45, v3);
    v49 = v69;
    v48 = v70;
    if (v47)
    {
      v50 = v43;
      v51 = 0;
      v85 = (v82 + 16);
      v79 = (v82 + 8);
      v80 = (v82 + 32);
      v71 = v42;
      v81 = v45;
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v53 = v45 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v51;
          v84 = *(v82 + 16);
          v84(v49, v53, v3);
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          v65 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v66 != 8)
          {
            __break(1u);
          }

          *&v91 = v65;
          v84 = *v85;
          v84(v49, &v91, v3);
          swift_unknownObjectRelease();
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        (*v80)(v48, v49, v3);
        MEMORY[0x18D00C560](&v90, v48, *v46, v3, v42, v50);
        v55 = v90;
        if (v90)
        {
          v56 = v78[5];
          v95 = v78[4];
          v96 = v56;
          v97 = *(v78 + 12);
          v57 = v78[1];
          v91 = *v78;
          v92 = v57;
          v58 = v78[3];
          v93 = v78[2];
          v94 = v58;
          v83 = v54;
          v59 = v50;
          v60 = v3;
          v61 = v49;
          v62 = v48;
          v63 = v76;
          v73(&v88, &v91, v76);
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          AGSubgraphInvalidate();
          v64 = v63;
          v48 = v62;
          v49 = v61;
          v3 = v60;
          v50 = v59;
          v42 = v71;
          v72(&v91, v64);
          v84(v77, v48, v3);
          v88 = 0;
          v89 = 0;
          type metadata accessor for Dictionary();
          v54 = v83;
          Dictionary.subscript.setter();
        }

        (*v79)(v48, v3);
        v45 = v81;
        ++v51;
      }

      while (v54 != MEMORY[0x18D00CDE0](v81, v3));
    }

    *&v91 = partial apply for closure #3 in ForEach<>.PreferenceTransform.updateValue();
    *(&v91 + 1) = v67;
    type metadata accessor for (_:)();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in ForEach<>.PreferenceTransform.updateValue()(__int128 *a1, void (**a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v115 = a7;
  v10 = a6;
  v99 = a4;
  v103 = a3;
  v117 = a2;
  v88 = *(a6 - 8);
  v108 = a9;
  v118 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v86 - v17;
  v19 = *(v18 + 8);
  v20 = v18;
  v110 = v18;
  v21 = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v146 = &v86 - v22;
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v106 = &v86 - v24;
  v94 = v21;
  v25 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v86 - v26;
  v114 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v134 = a5;
  *(&v134 + 1) = v10;
  *&v135 = v115;
  *(&v135 + 1) = v20;
  *&v136 = a9;
  v29 = type metadata accessor for ForEach();
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v97 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v86 - v32;
  v109 = a5;
  v93 = v25;
  v104 = *(swift_getAssociatedConformanceWitness() + 8);
  v112 = swift_getAssociatedTypeWitness();
  v86 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v35 = &v86 - v34;
  v36 = a1[5];
  v138 = a1[4];
  v139 = v36;
  v140 = *(a1 + 12);
  v37 = a1[1];
  v134 = *a1;
  v135 = v37;
  v39 = a1[2];
  v38 = a1[3];
  v100 = a1;
  v136 = v39;
  v137 = v38;
  *&v125 = a5;
  *(&v125 + 1) = v10;
  v40 = v146;
  *&v126 = v115;
  *(&v126 + 1) = v110;
  v41 = AssociatedTypeWitness;
  *&v127 = v108;
  *(&v127 + 1) = v118;
  v118 = type metadata accessor for ForEach<>.PreferenceTransform(0, &v125);
  ForEach<>.PreferenceTransform.forEach.getter(v33);
  v42 = v105;
  ForEach.data.getter();
  v95 = *(v113 + 8);
  v96 = v33;
  v98 = v29;
  v113 += 8;
  v95(v33, v29);
  v43 = v109;
  dispatch thunk of Collection.indices.getter();
  v44 = *(v114 + 8);
  v114 += 8;
  v94 = v44;
  v44(v42, v43);
  dispatch thunk of Sequence.makeIterator()();
  v45 = v106;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v35;
  v93 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v47 = v111;
  v91 = *(v111 + 48);
  v92 = v111 + 48;
  if (v91(v45, 1, v41) != 1)
  {
    v49 = *(v47 + 32);
    v89 = (v88 + 16);
    v90 = v49;
    v111 = v47 + 32;
    v87 = (v47 + 8);
    v88 += 8;
    v49(v40, v45, v41);
    while (1)
    {
      v58 = v100;
      v59 = v100[5];
      v138 = v100[4];
      v139 = v59;
      v140 = *(v100 + 12);
      v60 = v100[1];
      v134 = *v100;
      v135 = v60;
      v61 = v100[3];
      v136 = v100[2];
      v137 = v61;
      v62 = v96;
      ForEach<>.PreferenceTransform.forEach.getter(v96);
      v63 = v98;
      ForEach.idGenerator.getter();
      v64 = v95;
      v95(v62, v63);
      v132 = v133;
      v65 = v58[5];
      v129 = v58[4];
      v130 = v65;
      v131 = *(v58 + 12);
      v66 = v58[1];
      v125 = *v58;
      v126 = v66;
      v67 = v58[3];
      v127 = v58[2];
      v128 = v67;
      v68 = v97;
      ForEach<>.PreferenceTransform.forEach.getter(v97);
      v69 = v105;
      ForEach.data.getter();
      v64(v68, v63);
      v70 = v109;
      v120 = v109;
      v121 = v10;
      v122 = v115;
      v123 = v110;
      v124 = v108;
      type metadata accessor for ForEach.IDGenerator();
      v71 = v119;
      ForEach.IDGenerator.makeID(data:index:offset:)();
      v72 = v69;
      v73 = v117;
      v94(v72, v70);

      (*v89)(v102, v71, v10);
      v74 = v88;
      type metadata accessor for Set();
      v75 = v101;
      Set.insert(_:)();
      v76 = *v74;
      (*v74)(v75, v10);
      v116 = ForEach<>.PreferenceTransform.item(at:offset:)(v146, *v73, v118);
      Value = AGGraphGetValue();
      v141 = *Value;
      v79 = *(Value + 32);
      v78 = *(Value + 48);
      v80 = *(Value + 16);
      v145 = *(Value + 64);
      v143 = v79;
      v144 = v78;
      v142 = v80;
      v81 = v99[1];
      v82 = v99;
      if (v81)
      {
        v83 = *v99;
      }

      else
      {
        v83 = v141;
      }

      v84 = v73;
      v85 = v10;
      *v82 = v83;
      v82[1] = v81;
      v50 = v82[3];
      if (v50)
      {
        v51 = v82[2];
        v52 = v82[4];
      }

      else
      {
        v50 = *(&v142 + 1);
        v51 = v142;
        v52 = v143;
        outlined copy of Binding<Int>?(v142, *(&v142 + 1));
      }

      v82[2] = v51;
      v82[3] = v50;
      v82[4] = v52;
      *(v82 + 40) = (*(v82 + 40) | BYTE8(v143)) & 1;
      *&v125 = v82[6];
      outlined init with copy of ToolbarStorage(&v141, &v134);

      specialized Array.append<A>(contentsOf:)(v53);
      v82[6] = v125;

      specialized Set.formUnion<A>(_:)(v54);
      outlined destroy of ToolbarStorage(&v141);

      v10 = v85;
      v76(v119, v85);
      v55 = v146;
      v56 = AssociatedTypeWitness;
      (*v87)(v146, AssociatedTypeWitness);
      *v84 = (*v84 + 1);
      v57 = v106;
      dispatch thunk of IteratorProtocol.next()();
      if (v91(v57, 1, v56) == 1)
      {
        break;
      }

      v90(v55, v57, v56);
    }
  }

  return (*(v86 + 8))(v104, v112);
}

id ForEach<>.PreferenceTransform.item(at:offset:)(uint64_t a1, void (*a2)(char *, uint64_t), void *a3)
{
  v4 = v3;
  v99 = a2;
  v104 = a1;
  v6 = a3[4];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v95 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 40);
  v88 = *(*(v10 + 8) + 8);
  v106 = *(v9 + 16);
  v11 = v106;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v93 = v82 - v12;
  v97 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  v15 = a3[6];
  v101 = a3[3];
  v102 = v15;
  *&v16 = v11;
  *(&v16 + 1) = v101;
  v90 = v10;
  v91 = v6;
  *&v17 = v6;
  *(&v17 + 1) = v10;
  v107 = v17;
  v108 = v16;
  v128 = v16;
  v129 = v17;
  *&v130 = v15;
  v18 = type metadata accessor for ForEach();
  MEMORY[0x1EEE9AC00](v18);
  v98 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v82 - v25;
  MEMORY[0x1EEE9AC00](v25);
  v100 = v82 - v26;
  v27 = *(v4 + 12);
  v84 = v7;
  v92 = v109;
  v109 = v97;
  v29 = v28;
  v30 = v4[5];
  v132 = v4[4];
  v133 = v30;
  v134 = v27;
  v31 = v4[1];
  v128 = *v4;
  v129 = v31;
  v32 = v4[3];
  v130 = v4[2];
  v131 = v32;
  v96 = v33;
  v34 = v105;
  ForEach<>.PreferenceTransform.forEach.getter(v22);
  ForEach.idGenerator.getter();
  v35 = *(v29 + 8);
  v87 = v22;
  v35(v22, v18);
  v36 = v4[3];
  v123 = v4[2];
  v124[0] = v36;
  v124[1] = v4[4];
  v37 = v4[1];
  v121 = *v4;
  v122 = v37;
  v38 = *(v4 + 10);
  v39 = *(v4 + 11);
  v82[1] = v4 + 6;
  v97 = *(v4 + 12);
  v125 = v38;
  v85 = v39;
  v126 = v39;
  v127 = v97;
  v40 = v98;
  ForEach<>.PreferenceTransform.forEach.getter(v98);
  v41 = v103;
  ForEach.data.getter();
  v89 = v18;
  v98 = v29 + 8;
  v86 = v35;
  v35(v40, v18);
  v116 = v108;
  v117 = v107;
  v42 = v102;
  *&v118 = v102;
  type metadata accessor for ForEach.IDGenerator();
  v43 = v100;
  ForEach.IDGenerator.makeID(data:index:offset:)();
  v44 = v101;
  v45 = *(v109 + 8);
  v109 += 8;
  v99 = v45;
  v45(v41, v106);

  v46 = v34[7];
  v128 = v108;
  v129 = v107;
  *&v130 = v42;
  *(&v130 + 1) = v46;
  v47 = type metadata accessor for ForEach<>.PreferenceTransform.Item(0, &v128);
  MEMORY[0x18D00C560](&v120, v43, v97, v44, v47, v42);
  v48 = v120;
  if (v120)
  {
    (*(v96 + 8))(v43, v44);
    return v48;
  }

  v97 = v47;
  v49 = AGSubgraphGetGraph();
  *&v108 = AGSubgraphCreate2();

  AGSubgraphAddChild();
  v50 = v4[5];
  v132 = v4[4];
  v133 = v50;
  v134 = *(v4 + 12);
  v51 = v4[1];
  v128 = *v4;
  v129 = v51;
  v52 = v4[3];
  v130 = v4[2];
  v131 = v52;
  v53 = v87;
  ForEach<>.PreferenceTransform.forEach.getter(v87);
  v54 = v103;
  v55 = v89;
  ForEach.data.getter();
  *&v107 = v46;
  v56 = v86;
  v86(v53, v55);
  v57 = v106;
  v58 = dispatch thunk of Collection.subscript.read();
  v59 = v93;
  (*(v92 + 16))(v93);
  v58(&v121, 0);
  v60 = v54;
  v61 = v57;
  v99(v60, v57);
  v62 = v4[5];
  v132 = v4[4];
  v133 = v62;
  v134 = *(v4 + 12);
  v63 = v4[1];
  v128 = *v4;
  v129 = v63;
  v64 = v4[3];
  v130 = v4[2];
  v131 = v64;
  ForEach<>.PreferenceTransform.forEach.getter(v53);
  v65 = *(v53 + *(v55 + 60));

  v56(v53, v55);
  v66 = v95;
  v65(v59);

  v67 = *(v4 + 24);
  v68 = *(v4 + 56);
  v118 = *(v4 + 40);
  v119[0] = v68;
  *(v119 + 12) = *(v4 + 68);
  v116 = *(v4 + 8);
  v117 = v67;
  v69 = v67;
  v114 = v118;
  v115[0] = v68;
  *(v115 + 12) = *(v119 + 12);
  v112 = v116;
  v113 = v67;
  swift_beginAccess();
  v70 = v69[3];
  v129 = v69[2];
  v130 = v70;
  v71 = v69[5];
  v131 = v69[4];
  v132 = v71;
  v128 = v69[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v72 = swift_allocObject();
  memmove((v72 + 16), v69 + 1, 0x50uLL);
  *&v113 = v72;
  outlined init with copy of _ToolbarInputs(&v116, &v121);
  outlined init with copy of CachedEnvironment(&v128, &v121);

  v110 = 0;
  v111 = 1;
  AGGraphClearUpdate();
  v73 = AGSubgraphGetCurrent();
  v74 = v108;
  AGSubgraphSetCurrent();
  v75 = v66;
  v76 = v101;
  v77 = v91;
  closure #1 in ForEach<>.PreferenceTransform.item(at:offset:)(v75, &v112, &v110, v61, v101, v91, v90, v102, v107);
  AGSubgraphSetCurrent();

  result = AGGraphSetUpdate();
  if ((v111 & 1) == 0)
  {
    v79 = v110;
    v80 = v96;
    v81 = v100;
    (*(v96 + 16))(v83, v100, v76);
    *&v121 = v74;
    DWORD2(v121) = v79;
    type metadata accessor for Dictionary();
    v48 = v74;
    Dictionary.subscript.setter();
    (*(v92 + 8))(v93, AssociatedTypeWitness);
    (*(v80 + 8))(v81, v76);
    v123 = v114;
    v124[0] = v115[0];
    *(v124 + 12) = *(v115 + 12);
    v121 = v112;
    v122 = v113;
    outlined destroy of _ToolbarInputs(&v121);
    (*(v84 + 8))(v95, v77);
    return v48;
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in ForEach<>.PreferenceTransform.updateValue()(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20 = *(a2 + 80);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v16;
  }

  *a1 = v7;
  a1[1] = v6;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[2];
    v10 = a1[4];
  }

  else
  {
    v8 = *(&v17 + 1);
    v9 = v17;
    v10 = v18;
    outlined copy of Binding<Int>?(v17, *(&v17 + 1));
  }

  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v10;
  *(a1 + 40) = (*(a1 + 40) | BYTE8(v18)) & 1;
  v15 = a1[6];
  outlined init with copy of ToolbarStorage(&v16, v14);

  specialized Array.append<A>(contentsOf:)(v11);
  a1[6] = v15;

  specialized Set.formUnion<A>(_:)(v12);
  return outlined destroy of ToolbarStorage(&v16);
}

uint64_t closure #1 in ForEach<>.PreferenceTransform.item(at:offset:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a6;
  v13 = type metadata accessor for Attribute();
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v27, a6, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
  v25[2] = a6;
  v26 = v39[0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.setValue(_:), v25, a6, v14, MEMORY[0x1E69E6370], v15, v17);
  _GraphValue.init(_:)();
  v18 = a2[1];
  v19 = a2[3];
  v37 = a2[2];
  v38[0] = v19;
  *(v38 + 12) = *(a2 + 60);
  v20 = a2[1];
  v36[0] = *a2;
  v36[1] = v20;
  v21 = a2[3];
  v31 = v37;
  *v32 = v21;
  *&v32[12] = *(a2 + 60);
  v29 = v36[0];
  v30 = v18;
  v22 = *(a9 + 32);
  outlined init with copy of _ToolbarInputs(v36, v39);
  v22(&v34, v33, &v29, a6, a9);
  v39[2] = v31;
  v40[0] = *v32;
  *(v40 + 12) = *&v32[12];
  v39[0] = v29;
  v39[1] = v30;
  outlined destroy of _ToolbarInputs(v39);
  *&v29 = v34;
  DWORD2(v29) = v35;
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v24 = result;

    *a3 = v24;
    *(a3 + 4) = 0;
  }

  return result;
}

uint64_t ForEach<>.init<>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &unk_18CD6F490);
}

{
  return ForEach<>.init<>(_:content:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &unk_18CD6F4C0);
}

uint64_t ForEach<>.init(_:id:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return ForEach<>.init(_:id:content:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v16[1] = a6;
  v16[2] = a7;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

{
  return ForEach<>.init(_:id:content:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v16[1] = a6;
  v16[2] = a7;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

double ForEach<>.init<>(_:content:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  return ForEach<>.init<>(_:content:)(a3, a4, a5, a6, a9);
}

{
  return ForEach<>.init<>(_:content:)(a3, a4, a5, a6, a9);
}

{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a3;
  v14[5] = a4;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a9 = v16;
  *(a9 + 16) = v17;
  result = *&v18;
  *(a9 + 32) = v18;
  *(a9 + 48) = v19;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C)(void *a1)
{
  return (*(v1 + 32))(*a1);
}

{
  return (*(v1 + 40))(*a1);
}

{
  return (*(v1 + 56))(*a1);
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for Range<Int>();
    v4 = v3;
    v5 = lazy protocol witness table accessor for type Int and conformance Int();
    v6[0] = MEMORY[0x1E69E6570];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E66E8], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v6[4] = v0;
    v6[5] = v1;
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type Int and conformance Int();
    v6[0] = MEMORY[0x1E69E6570];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E66F0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for Range<Int>();
    v4 = v3;
    v5 = lazy protocol witness table accessor for type Int and conformance Int();
    v6[0] = MEMORY[0x1E69E6570];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E66D0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

uint64_t ForEach<>.init<>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = a8;
  v22[9] = a10;
  v22[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(a1, a4);
}

uint64_t instantiation function for generic protocol witness table for <> ForEach<A, B, C>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ForEach<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for ForEach<>.PreferenceTransform(uint64_t a1)
{
}

uint64_t initializeWithCopy for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
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
  v5 = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a1 + 88) = v5;
  *(a1 + 96) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 88);
  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  v6 = v4;

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for ForEach<>.PreferenceTransform(uint64_t a1, uint64_t a2)
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

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for ForEach<>.PreferenceTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for ForEach<>.PreferenceTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL partial apply for closure #2 in ForEach<>.PreferenceTransform.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = **(v1 + 64);

  LOBYTE(v3) = MEMORY[0x18D00D1E0](a1, v5, v3, v4);

  return (v3 & 1) == 0;
}

uint64_t assignWithCopy for ForEach<>.PreferenceTransform.Item(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ForEach<>.PreferenceTransform.Item(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t _ScrollableLayoutView.init(data:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *(a3 - 8);
  (*(v17 + 16))(a9, a1);
  v18 = dispatch thunk of Collection.count.getter();
  (*(v17 + 8))(a1, a3);
  *(a9 + *(swift_getTupleTypeMetadata2() + 48)) = v18;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v19 = type metadata accessor for _ScrollableLayoutView(0, v22);
  return (*(*(a4 - 8) + 32))(a9 + *(v19 + 68), a2, a4);
}

uint64_t static _ScrollableLayoutView._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v89 = a9;
  v133 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v84 = &v77 - v18;
  *&v124 = a3;
  *(&v124 + 1) = a4;
  *&v125 = a5;
  v95 = a6;
  *(&v125 + 1) = a6;
  *&v126 = a7;
  *(&v126 + 1) = a8;
  v19 = type metadata accessor for ScrollableLayoutState(0, &v124);
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v77 - v20;
  v21 = a2[3];
  v22 = a2[1];
  v126 = a2[2];
  v127 = v21;
  v23 = a2[3];
  v128 = a2[4];
  v24 = a2[1];
  v124 = *a2;
  v125 = v24;
  LODWORD(v96) = *a1;
  v129 = *(a2 + 20);
  v131 = v22;
  v132 = v126;
  v130 = v124;
  v117 = v126;
  v118 = v23;
  v119 = a2[4];
  LODWORD(v20) = *(a2 + 20);
  v115 = v124;
  v116 = v22;
  v88 = DWORD1(v126);
  v120 = v20;
  DWORD1(v117) = DWORD1(v126) & 0xFFFFFFFD;
  v94 = a5;
  v82 = *(*(a5 + 8) + 8);
  v93 = a3;
  v101[2] = swift_getAssociatedTypeWitness();
  outlined init with copy of _ViewInputs(&v124, &v109);
  v25 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, partial apply for closure #1 in Attribute.init(type:), v101, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v83 = 0;
  v27 = v109;
  LODWORD(v109) = 0;
  v28 = Attribute.init<A>(body:value:flags:update:)();
  v29 = AGSubgraphGetCurrent();
  if (!v29)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v30 = v29;
  v31 = AGSubgraphGetGraph();

  v32 = AGSubgraphCreate();
  AGGraphClearUpdate();
  v33 = AGSubgraphGetCurrent();
  v79 = v32;
  AGSubgraphSetCurrent();
  v80 = v28;
  LODWORD(v81) = v27;
  v34 = v28;
  v35 = v93;
  v36 = a4;
  v37 = a4;
  v39 = v94;
  v38 = v95;
  closure #1 in static _ScrollableLayoutView._makeView(view:inputs:)(&v115, &v124, v34, v27, v93, v36, v94, v95, a7);
  AGSubgraphSetCurrent();

  v40 = AGGraphSetUpdate();
  v97 = a8;
  v91 = &v77;
  v41 = *(&v109 + 1);
  v78 = v109;
  MEMORY[0x1EEE9AC00](v40);
  LODWORD(v121) = v96;
  *&v109 = v35;
  *(&v109 + 1) = v37;
  *&v110 = v39;
  *(&v110 + 1) = v38;
  *&v111 = a7;
  *(&v111 + 1) = v97;
  type metadata accessor for _ScrollableLayoutView(255, &v109);
  type metadata accessor for _GraphValue();
  swift_getTupleTypeMetadata2();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v42 = _GraphValue.value.getter();
  v92 = v42;
  v43 = v97;
  MEMORY[0x1EEE9AC00](v42);
  v72[0] = v35;
  v72[1] = v37;
  v73 = v39;
  v74 = v38;
  v90 = v44;
  WitnessTable = v44;
  v76 = v43;
  LODWORD(v98) = v96;
  _GraphValue.subscript.getter();
  v121 = v130;
  v122 = v131;
  v123 = v132;
  outlined init with copy of _GraphInputs(&v130, &v109);
  v45 = *(v38 + 8);
  v109 = v121;
  v110 = v122;
  v111 = v123;
  (*(v45 + 48))(v108, &v109, v37);
  LODWORD(v91) = v108[0];
  v108[0] = v121;
  v108[1] = v122;
  v108[2] = v123;
  outlined destroy of _GraphInputs(v108);
  lazy protocol witness table accessor for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput();
  PropertyList.subscript.getter();
  if (BYTE8(v109))
  {
    goto LABEL_7;
  }

  v77 = v109;
  *&v109 = __PAIR64__(v80, v81);
  *(&v109 + 1) = v79;
  *&v110 = v78;
  *(&v110 + 1) = v41;
  v46 = *(v38 + 40);
  v81 = v79;
  v47 = v84;
  v46(v37, v38);
  v96 = v37;
  v48 = v93;
  swift_getAssociatedTypeWitness();
  v49 = Array.init()();
  v50 = Dictionary.init()();
  v51 = *MEMORY[0x1E695F050];
  v52 = *(MEMORY[0x1E695F050] + 8);
  v53 = *(MEMORY[0x1E695F050] + 16);
  v54 = *(MEMORY[0x1E695F050] + 24);
  v76 = v43;
  v55 = v90;
  v74 = v38;
  v56 = v94;
  v57 = v85;
  v58 = ScrollableLayoutState.init(data:layout:scrollView:template:state:stateSeed:proxyStorage:identifiers:placements:validSize:validRect:contentSize:)(v92, v91, v77, &v109, v47, 0, 0, MEMORY[0x1E69E7CC8], v85, 0.0, 0.0, v51, v52, v53, v54, 0.0, 0.0, v49, v50, v48, v96, v94, v74, v90, v76);
  v84 = &v77;
  MEMORY[0x1EEE9AC00](v58);
  *&v109 = v48;
  *(&v109 + 1) = v96;
  v110 = __PAIR128__(v95, v56);
  *&v111 = v55;
  *(&v111 + 1) = v97;
  v59 = type metadata accessor for ScrollableLayoutState.Value(0, &v109);
  v60 = v87;
  v73 = v59;
  v74 = v87;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollableLayoutState<A, B>, v87);
  v61 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v57, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v72, v60, MEMORY[0x1E69E73E0], v61, MEMORY[0x1E69E7410], v62);
  v63 = v95;
  (*(v86 + 8))(v57, v60);
  v64 = v109;
  v65 = default argument 3 of ScrollableLayoutViewAdaptor.init(dataAndCount:layout:state:items:itemsSeed:lastContentOffset:)(v48, v96, v56);
  *&v121 = __PAIR64__(v91, v92);
  DWORD2(v121) = v64;
  *&v122 = v65;
  DWORD2(v122) = 0;
  v123 = *MEMORY[0x1E695F040];
  v98 = v121;
  v99 = v122;
  v100 = v123;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v114 = v129;
  v109 = v124;
  v110 = v125;
  v67 = v96;
  v66 = v97;
  v102 = v48;
  v103 = v96;
  v104 = v56;
  v105 = v63;
  v106 = v55;
  v107 = v97;
  v68 = type metadata accessor for ScrollableLayoutViewAdaptor(0, &v102);
  swift_getWitnessTable(protocol conformance descriptor for ScrollableLayoutViewAdaptor<A, B>, v68);
  static DynamicContainer.makeContainer<A>(adaptor:inputs:)();
  (*(*(v68 - 8) + 8))(&v121, v68);
  if ((v88 & 2) != 0)
  {
    closure #4 in static _ScrollableLayoutView._makeView(view:inputs:)(1, v93, v67, v94, v63, v90, v66, v69);
    LODWORD(v109) = AGGraphCreateOffsetAttribute2();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v109) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v70 = v89;
  *v89 = v102;
  v70[1] = v103;
  v111 = v117;
  v112 = v118;
  v113 = v119;
  v114 = v120;
  v109 = v115;
  v110 = v116;
  return outlined destroy of _ViewInputs(&v109);
}

uint64_t closure #1 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v11;
  v41 = *(a1 + 64);
  v42 = *(a1 + 80);
  v12 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v12;
  v13 = v12;
  v35 = v11;
  v36 = v41;
  v33 = v12;
  v34 = v39;
  v37 = v42;
  v32 = v38[0];
  swift_beginAccess();
  v14 = v13[3];
  v43[1] = v13[2];
  v43[2] = v14;
  v15 = v13[5];
  v43[3] = v13[4];
  v43[4] = v15;
  v43[0] = v13[1];
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memmove((v16 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v38, v30);
  outlined init with copy of CachedEnvironment(v43, v30);

  *&v33 = v16;
  *&v30[0] = 0;
  HIDWORD(v33) = Attribute.init<A>(body:value:flags:update:)();
  v17 = *(a2 + 24);
  LODWORD(a2) = *(a2 + 36);
  *&v30[0] = __PAIR64__(a3, v17);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TemplateViewPhase and conformance TemplateViewPhase();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.viewPhase.setter();
  if ((a2 & 2) != 0)
  {
    DWORD1(v34) |= 2u;
  }

  PreferenceKeys.init()();
  v18 = *&v30[0];

  *&v35 = v18;
  swift_getAssociatedTypeWitness();
  _GraphValue.init(_:)();
  v26[2] = v34;
  v26[3] = v35;
  v26[4] = v36;
  v27 = v37;
  v26[0] = v32;
  v26[1] = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v20 = v32;
  v21 = v33;
  outlined init with copy of _ViewInputs(v26, v30);
  static View.makeDebuggableView(view:inputs:)();
  v28[2] = v22;
  v28[3] = v23;
  v28[4] = v24;
  v29 = v25;
  v28[0] = v20;
  v28[1] = v21;
  outlined destroy of _ViewInputs(v28);
  v30[2] = v34;
  v30[3] = v35;
  v30[4] = v36;
  v31 = v37;
  v30[0] = v32;
  v30[1] = v33;
  return outlined destroy of _ViewInputs(v30);
}

uint64_t closure #2 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v11[2] = type metadata accessor for _ScrollableLayoutView(0, v13);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13[0];
}

uint64_t closure #3 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v9 = type metadata accessor for _ScrollableLayoutView(0, v15);
  v10 = *(v9 + 68);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, partial apply for closure #1 in static PointerOffset.of(_:), v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

uint64_t ScrollableLayoutState.init(data:layout:scrollView:template:state:stateSeed:proxyStorage:identifiers:placements:validSize:validRect:contentSize:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = *a4;
  *(a9 + 24) = *(a4 + 8);
  *(a9 + 40) = *(a4 + 24);
  v46[0] = a20;
  v46[1] = a21;
  v46[2] = a22;
  v46[3] = a23;
  v46[4] = a24;
  v46[5] = a25;
  v37 = type metadata accessor for ScrollableLayoutState(0, v46);
  v38 = v37[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v38, a5, AssociatedTypeWitness);
  *(a9 + v37[21]) = a6;
  v41 = a9 + v37[22];
  *v41 = a7;
  *(v41 + 8) = a8;
  *(a9 + v37[23]) = a18;
  *(a9 + v37[24]) = a19;
  v42 = (a9 + v37[25]);
  *v42 = a10;
  v42[1] = a11;
  v43 = (a9 + v37[26]);
  *v43 = a12;
  v43[1] = a13;
  v43[2] = a14;
  v43[3] = a15;
  v44 = (a9 + v37[27]);
  *v44 = a16;
  v44[1] = a17;
  return result;
}

uint64_t default argument 3 of ScrollableLayoutViewAdaptor.init(dataAndCount:layout:state:items:itemsSeed:lastContentOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();

  return Array.init()();
}

uint64_t closure #4 in static _ScrollableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v9 = type metadata accessor for ScrollableLayoutState.Value(0, v17);
  v10 = *(v9 + 92);
  v16[2] = v9;
  type metadata accessor for CGSize(0);
  v12 = v11;
  v13 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_2, v16, v12, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  return v17[0];
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _ScrollableLayoutView<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _ScrollableLayoutView<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ScrollableLayoutViewAdaptor.dataAndCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v11 - v6;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, TupleTypeMetadata2);
  v9 = *&v7[*(TupleTypeMetadata2 + 48)];
  (*(*(v3 - 8) + 32))(a1, v7, v3);
  return v9;
}

uint64_t ScrollableLayoutViewAdaptor.updatedItems()(double *a1)
{
  v3 = *(a1 + 4);
  v4 = *(*(v3 + 8) + 8);
  v5 = *(a1 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = v4;
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v117 = &v96 - v8;
  v118 = v7;
  v110 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v96 - v10;
  v120 = *(AssociatedTypeWitness - 8);
  v102 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v96 - v12;
  v103 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = v5;
  v122 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 3);
  v16 = *(a1 + 5);
  v17 = *(a1 + 6);
  v112 = a1;
  v18 = *(a1 + 7);
  *&v19 = v5;
  v115 = v15;
  *(&v19 + 1) = v15;
  *&v20 = v3;
  v126 = v16;
  *(&v20 + 1) = v16;
  v104 = v20;
  v105 = v19;
  v141 = v19;
  v142 = v20;
  v106 = v18;
  v107 = v17;
  *&v143 = v17;
  *(&v143 + 1) = v18;
  v21 = type metadata accessor for ScrollableLayoutState.Value(255, &v141);
  v22 = swift_getTupleTypeMetadata2();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v96 - v29;
  v32 = *(v31 + 48);
  LODWORD(v114) = *(v1 + 6);
  v34 = *(v1 + 4);
  v33 = *(v1 + 5);
  v125 = v1;
  Value = AGGraphGetValue();
  v37 = v36;
  v38 = *(v21 - 1);
  (*(v38 + 16))(v30, Value, v21);
  v30[v32] = v37 & 1;
  v108 = v23;
  v41 = *(v23 + 16);
  v40 = v23 + 16;
  v39 = v41;
  v41(v27, v30, v22);
  v109 = v22;
  v42 = v27[*(v22 + 48)];
  v45 = *(v38 + 8);
  v43 = v38 + 8;
  v44 = v45;
  v45(v27, v21);
  v124 = v39;
  if (v42 != 1 || (v39(v27, v30, v109), v46 = *&v27[v21[17]], v44(v27, v21), v46 == v114))
  {
    v47 = v30;
    v48 = v44;
    if (swift_getAssociatedTypeWitness() == MEMORY[0x1E697E108])
    {
      v61 = 0;
      v58 = v108;
      goto LABEL_21;
    }

    v49 = v113;
    v124(v113, v30, v109);
    v50 = v21;
    v51 = &v49[v21[19]];
    v52 = *(v51 + 5);
    v139 = *(v51 + 4);
    v140 = v52;
    v53 = *(v51 + 3);
    v137 = *(v51 + 2);
    v138 = v53;
    v54 = *(v51 + 1);
    v135 = *v51;
    v136 = v54;
    v55 = v21;
    v56 = v48;
    v48(v49, v55);
    _ScrollLayout.contentOffset.getter();
    v58 = v108;
    if (v59 == v34 && v57 == v33)
    {
      AGGraphGetValue();
      if ((v60 & 1) == 0)
      {
        v61 = 0;
LABEL_21:
        (*(v58 + 8))(v47, v109);
        return v61;
      }
    }

LABEL_20:
    v124(v27, v47, v109);
    v82 = &v27[v50[19]];
    v83 = *(v82 + 5);
    v133 = *(v82 + 4);
    v134 = v83;
    v84 = *(v82 + 3);
    v131 = *(v82 + 2);
    v132 = v84;
    v85 = *(v82 + 1);
    v129 = *v82;
    v130 = v85;
    v56(v27, v50);
    v86 = _ScrollLayout.contentOffset.getter();
    v87 = v125;
    *(v125 + 4) = v88;
    *(v87 + 5) = v89;
    v128[0] = *(v87 + 2);
    MEMORY[0x1EEE9AC00](v86);
    v90 = v104;
    *(&v96 - 4) = v105;
    *(&v96 - 3) = v90;
    v91 = v106;
    *(&v96 - 4) = v107;
    *(&v96 - 3) = v91;
    *(&v96 - 2) = v47;
    *(&v96 - 1) = v92;
    v93 = type metadata accessor for Array();

    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v93);
    v61 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ScrollableLayoutViewAdaptor.updatedItems(), (&v96 - 10), v93, &type metadata for AnyDynamicItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v95);

    goto LABEL_21;
  }

  v62 = v125[1];
  v141 = *v125;
  v142 = v62;
  v143 = v125[2];
  ScrollableLayoutViewAdaptor.dataAndCount.getter(v122, v112);
  v115 = type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(1);
  v101 = v30;
  v96 = v40;
  v39(v27, v30, v109);
  v63 = *&v27[v21[20]];

  v99 = v27;
  v100 = v21;
  v97 = v44;
  v98 = v43;
  v44(v27, v21);
  v64 = v39;
  if (!MEMORY[0x18D00CDE0](v63, AssociatedTypeWitness))
  {
LABEL_19:

    (*(v103 + 8))(v122, v121);
    v27 = v99;
    v47 = v101;
    v64(v99, v101, v109);
    v50 = v100;
    v81 = *&v27[v100[17]];
    v56 = v97;
    v97(v27, v100);
    *(v125 + 6) = v81;
    v58 = v108;
    goto LABEL_20;
  }

  v65 = 0;
  v113 = v63;
  v114 = (v120 + 16);
  v66 = v110;
  v111 = (v120 + 32);
  v112 = (v110 + 2);
  ++v110;
  v67 = (v66 + 2);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v120 + 16))(v127, &v63[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v65], AssociatedTypeWitness);
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v102 != 8)
    {
      break;
    }

    v128[0] = result;
    (*v114)(v127, v128, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v69 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_13:
    v70 = v127;
    v126 = v69;
    v71 = dispatch thunk of Collection.subscript.read();
    v72 = *v67;
    v73 = v116;
    v74 = AssociatedTypeWitness;
    v75 = v118;
    (*v67)(v116);
    v71(v128, 0);
    v76 = *(TupleTypeMetadata2 + 48);
    v77 = v117;
    (*v111)(v117, v70, v74);
    (v72)(&v77[v76], v73, v75);
    v63 = v113;
    v64 = v124;
    Array.append(_:)();
    v78 = v75;
    AssociatedTypeWitness = v74;
    (*v110)(v73, v78);
    v79 = MEMORY[0x18D00CDE0](v63, v74);
    ++v65;
    if (v126 == v79)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ScrollableLayoutViewAdaptor.updatedItems()@<X0>(void (*a1)(char *, int *, __n128)@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v160 = a9;
  v178 = a8;
  v169 = a6;
  v150 = a3;
  v176 = a2;
  v165 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v168 = AssociatedTypeWitness;
  v14 = type metadata accessor for Pair();
  v15 = *(a10 + 8);
  v201[0] = MEMORY[0x1E69E7688];
  v201[1] = v15;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980F60], v14, v201);
  *&v194 = AssociatedTypeWitness;
  *(&v194 + 1) = v14;
  *&v195 = a10;
  *(&v195 + 1) = WitnessTable;
  v139 = type metadata accessor for AnyViewVisitor(0, &v194);
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v135 - v17;
  v181 = swift_getAssociatedTypeWitness();
  *&v194 = v181;
  *(&v194 + 1) = v14;
  v18 = v178;
  *&v195 = v178;
  v162 = WitnessTable;
  *(&v195 + 1) = WitnessTable;
  v19 = type metadata accessor for EquatableProxyView(0, &v194);
  v157 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v135 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v158 = v19;
  v22 = v21;
  v171 = v21;
  v23 = type metadata accessor for ModifiedContent();
  v154 = *(v23 - 8);
  v155 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v135 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v147 = *(v25 - 8);
  v148 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v135 - v26;
  v146 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v135 - v30;
  v152 = a4;
  *&v194 = a4;
  v167 = a5;
  *(&v194 + 1) = a5;
  *&v195 = v169;
  v173 = a7;
  *(&v195 + 1) = a7;
  v196 = v18;
  v170 = a10;
  *&v197 = a10;
  v175 = type metadata accessor for ScrollableLayoutState.Value(255, &v194);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v180 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v144 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v142 = &v135 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  v172 = v14;
  v161 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v137 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v179 = &v135 - v40;
  v41 = v168;
  v42 = v181;
  v43 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v135 - v44;
  v177 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v163 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v135 - v49;
  v51 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v135 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v135 - v57;
  (*(v59 + 16))(v45, v165, v43, v56);
  v60 = *(v43 + 48);
  (*(v51 + 32))(v58, v45, v41);
  (*(v177 + 32))(v50, &v45[v60], v181);
  v61 = *(v180 + 16);
  v180 += 16;
  v141 = v61;
  v61(v36, v176, TupleTypeMetadata2);
  LODWORD(v45) = *&v36[v175[18]];
  v62 = *(v175 - 1);
  v63 = *(v62 + 8);
  v143 = v36;
  v164 = v62 + 8;
  v165 = v63;
  (v63)(v36);
  LODWORD(v194) = v45;
  v159 = v51;
  v64 = *(v51 + 16);
  v64(v54, v58, v41);
  Pair.init(_:_:)();
  if (v171 != MEMORY[0x1E697E108])
  {
    v163 = v50;
    v65 = v170;
    _convertToAnyHashable<A>(_:)();
    v66 = v141;
    v67 = v142;
    v68 = TupleTypeMetadata2;
    v141(v142, v176, TupleTypeMetadata2);
    v69 = v175;
    v70 = *&v67[v175[21]];

    (v165)(v67, v69);
    MEMORY[0x18D00C560](v185, v58, v70, v41, MEMORY[0x1E697DB68], v65);

    v140 = v58;
    if (v186)
    {
      static UnitPoint.topLeading.getter();
      _Placement.init(proposedSize:anchoring:at:)();
    }

    else
    {
      v187 = v185[0];
      v188 = v185[1];
      v189 = v185[2];
      v190 = v185[3];
    }

    v194 = v191;
    v195 = v192;
    v196 = v193;
    v197 = v187;
    v198 = v188;
    v199 = v189;
    v200 = v190;
    v86 = *v150;
    v87 = v150[2];
    v202[1] = v150[1];
    v202[2] = v87;
    v202[0] = v86;
    v183[0] = v152;
    v183[1] = v167;
    v183[2] = v169;
    v183[3] = v173;
    v183[4] = v178;
    v183[5] = v65;
    v88 = type metadata accessor for ScrollableLayoutViewAdaptor(0, v183);
    v89 = *(v88 - 8);
    (*(v89 + 16))(v183, v202, v88);
    v90 = *(v88 + 24);
    Value = AGGraphGetValue();
    (*(*(v90 - 8) + 16))(v166, Value, v90);
    (*(v89 + 8))(v202, v88);
    v92 = v143;
    v93 = v176;
    v66(v143, v176, v68);
    v94 = v175;
    v95 = &v92[v175[19]];
    v96 = *(v95 + 5);
    v184[4] = *(v95 + 4);
    v184[5] = v96;
    v97 = *(v95 + 3);
    v184[2] = *(v95 + 2);
    v184[3] = v97;
    v98 = *(v95 + 1);
    v184[0] = *v95;
    v184[1] = v98;
    v99 = v165;
    (v165)(v92, v175);
    v100 = v144;
    v66(v144, v93, TupleTypeMetadata2);
    v102 = v147;
    v101 = v148;
    v103 = v145;
    (*(v147 + 16))(v145, v100, v148);
    (v99)(v100, v94);
    v104 = v149;
    v105 = v166;
    v106 = v167;
    (*(v173 + 56))(&v194, v184, v103, v167);
    (*(v102 + 8))(v103, v101);
    (*(v146 + 8))(v105, v106);
    v107 = v156;
    View.equatableProxy<A>(_:)(v179, v181, v172, v178, v162, v156);
    v108 = v153;
    v109 = v158;
    v110 = v171;
    MEMORY[0x18D00A570](v104, v158, v171, &protocol witness table for EquatableProxyView<A, B>);
    (*(v157 + 8))(v107, v109);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v182[0] = &protocol witness table for EquatableProxyView<A, B>;
    v182[1] = AssociatedConformanceWitness;
    v112 = v155;
    v113 = swift_getWitnessTable(MEMORY[0x1E697E858], v155, v182);
    v114 = v140;
    v115 = v168;
    v116 = specialized AnyDynamicItem.init<A, B>(_:id:)(v108, v140, v112, v168, v113);
    v180 = v117;
    v119 = v118;
    LOBYTE(v109) = v120;
    v83 = v116;
    (*(v154 + 8))(v108, v112);
    (*(v151 + 8))(v104, v110);
    outlined destroy of _ScrollableLayoutItem(&v194);
    (*(v161 + 8))(v179, v172);
    (*(v177 + 8))(v163, v181);
    result = (*(v159 + 8))(v114, v115);
    v85 = v160;
    *v160 = v180;
    v85[1] = v119;
    v121 = v109 & 1;
    goto LABEL_10;
  }

  v71 = v58;
  v72 = v181;
  (*(v177 + 16))(v163, v50, v181);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v122 = v156;
    v123 = v179;
    v124 = v172;
    View.equatableProxy<A>(_:)(v179, v72, v172, v178, v162, v156);
    v125 = v71;
    v126 = v71;
    v127 = v158;
    v128 = v41;
    v129 = specialized AnyDynamicItem.init<A, B>(_:id:)(v122, v126, v158, v41, &protocol witness table for EquatableProxyView<A, B>);
    v180 = v130;
    v178 = v131;
    v133 = v132;
    v83 = v129;
    (*(v157 + 8))(v122, v127);
    (*(v161 + 8))(v123, v124);
    (*(v177 + 8))(v50, v181);
    result = (*(v159 + 8))(v125, v128);
    v85 = v160;
    v134 = v178;
    *v160 = v180;
    v85[1] = v134;
    v121 = v133 & 1;
LABEL_10:
    *(v85 + 16) = v121;
    goto LABEL_11;
  }

  v163 = v50;
  v73 = v71;
  v140 = v71;
  v74 = v41;
  v64(v54, v73, v41);
  v75 = v161;
  v76 = v137;
  v77 = v172;
  (*(v161 + 16))(v137, v179, v172);
  v78 = v138;
  AnyViewVisitor.init(id:token:item:)(v54, v76, 0, 0, 0, 0, v74, v77, v138, v170, v162);
  v79 = v139;
  swift_getWitnessTable(protocol conformance descriptor for AnyViewVisitor<A, B>, v139);
  result = AnyView.visitContent<A>(_:)();
  v81 = v78 + *(v79 + 56);
  v82 = *v81;
  if (*v81)
  {
    v83 = *(v81 + 24);
    LODWORD(v180) = *(v81 + 16);
    v84 = *(v81 + 8);

    (*(v136 + 8))(v78, v79);
    (*(v75 + 8))(v179, v77);
    (*(v177 + 8))(v163, v181);
    result = (*(v159 + 8))(v140, v74);
    v85 = v160;
    *v160 = v82;
    v85[1] = v84;
    *(v85 + 16) = v180 & 1;
LABEL_11:
    *(v85 + 3) = v83;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AnyViewVisitor.init(id:token:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  v19 = type metadata accessor for AnyViewVisitor(0, v22);
  result = (*(*(a8 - 8) + 32))(a9 + *(v19 + 52), a2, a8);
  v21 = (a9 + *(v19 + 56));
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  return result;
}

uint64_t ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, __int128 *a6, unsigned int a7, void (*a8)(__int128 *), double a9, uint64_t a10, void *a11)
{
  v75 = *MEMORY[0x1E69E9840];
  v12 = a6[3];
  v13 = a6[1];
  v71 = a6[2];
  v72 = v12;
  v14 = a6[3];
  v73 = a6[4];
  v15 = a6[1];
  v69 = *a6;
  v70 = v15;
  v65 = v71;
  v66 = v14;
  v67 = a6[4];
  v74 = *(a6 + 20);
  v68 = *(a6 + 20);
  v63 = v69;
  v64 = v13;
  v35 = _ViewInputs.layoutDirection.getter();
  v16 = a11[2];
  v42 = a11[3];
  v18 = a11[4];
  v17 = a11[5];
  v19 = a11[6];
  v20 = a11[7];
  v33 = v17;
  *&v57 = __PAIR64__(a5, a7);
  v39 = a5;
  swift_getAssociatedTypeWitness();
  v50[2] = type metadata accessor for Optional();
  *&v63 = v16;
  *(&v63 + 1) = v42;
  *&v64 = v18;
  *(&v64 + 1) = v17;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v51 = type metadata accessor for ScrollableItemIdentifier(0, &v63);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollableItemIdentifier<A, B>, v51);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v50, v51, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  LODWORD(v17) = v63;
  v23 = *(v36 + 8);
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  v24 = _ViewInputs.position.getter();
  v25 = *MEMORY[0x1E698D3F8];
  *&v57 = __PAIR64__(v23, v17);
  *(&v57 + 1) = __PAIR64__(v24, v35);
  *&v58 = __PAIR64__(v25, DWORD2(v73));
  *&v63 = v16;
  *(&v63 + 1) = v42;
  *&v64 = v18;
  *(&v64 + 1) = v33;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v48 = type metadata accessor for ScrollableItemGeometry(0, &v63);
  v49 = swift_getWitnessTable(protocol conformance descriptor for ScrollableItemGeometry<A, B>, v48);
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, MEMORY[0x1E697DFB8], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, &v47, v48, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v28 = v63;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  outlined init with copy of _ViewInputs(&v69, &v57);
  a8(&v63);
  if ((BYTE4(v71) & 0x20) != 0)
  {
    Attribute<A>.size()();
    _ViewInputs.size.setter();
    Attribute<A>.origin()();
    _ViewInputs.position.setter();
    DWORD1(v65) |= 2u;
  }

  v53[2] = v65;
  v53[3] = v66;
  v53[4] = v67;
  v54 = v68;
  v53[0] = v63;
  v53[1] = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  outlined init with copy of _ViewInputs(v53, v55);
  v29 = swift_getWitnessTable(protocol conformance descriptor for ScrollableLayoutViewAdaptor<A, B>, a11);
  AnyDynamicItem.makeView<A>(uniqueId:container:inputs:adaptor:)(v39, a7, &v57, a11, a2, a3, a4 & 1, a11, v29);
  v55[2] = v59;
  v55[3] = v60;
  v55[4] = v61;
  v56 = v62;
  v55[0] = v57;
  v55[1] = v58;
  v30 = outlined destroy of _ViewInputs(v55);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  AGGraphMutateAttribute();
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  outlined destroy of _ViewInputs(&v57);
  *a1 = v44;
  *(a1 + 8) = v45;
  *(a1 + 12) = v46;
  return v28;
}

uint64_t closure #1 in ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[6] = a2;
  v18[7] = a3;
  v15 = _ViewOutputs.layoutComputer.getter();
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  result = type metadata accessor for ScrollableItemGeometry(0, v18);
  LOBYTE(v18[0]) = BYTE4(v15) & 1;
  if ((v15 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = v15;
  }

  *(a1 + 20) = v17;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.updatedItems() in conformance ScrollableLayoutViewAdaptor<A, B>@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScrollableLayoutViewAdaptor.updatedItems()(a1);
  *a2 = result;
  return result;
}

void protocol witness for DynamicContainerAdaptor.foreachItem(items:_:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t *a1, void (*a2)(void *, __n128))
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 56);
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v7 = *v6;
      v8 = *(v6 - 8);
      v9 = *(v6 - 2);
      v10[0] = *(v6 - 3);
      v10[1] = v9;
      v11 = v8;
      v12 = v7;

      (a2)(v10);

      v6 += 4;
      if (v3 == v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t protocol witness for static DynamicContainerAdaptor.containsItem(_:_:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type [AnyDynamicItem] and conformance [A]();

  return MEMORY[0x1EEDE1D68](a1, a2, a3, a4, v8);
}

double ScrollableLayoutState.Value.init(state:stateSeed:contentSeed:scrollLayout:identifiers:placements:validRect:contentSize:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v31 = a4[3];
  v48 = a4[2];
  v49 = v31;
  v32 = a4[5];
  v50 = a4[4];
  v51 = v32;
  v33 = a4[1];
  v46 = *a4;
  v47 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  v45[0] = a7;
  v45[1] = a8;
  v45[2] = a16;
  v45[3] = a17;
  v45[4] = a18;
  v45[5] = a19;
  v35 = type metadata accessor for ScrollableLayoutState.Value(0, v45);
  *(a9 + v35[17]) = a2;
  *(a9 + v35[18]) = a3;
  v36 = (a9 + v35[19]);
  v37 = v49;
  v36[2] = v48;
  v36[3] = v37;
  v38 = v51;
  v36[4] = v50;
  v36[5] = v38;
  result = *&v46;
  v40 = v47;
  *v36 = v46;
  v36[1] = v40;
  *(a9 + v35[20]) = a5;
  *(a9 + v35[21]) = a6;
  v41 = (a9 + v35[22]);
  *v41 = a10;
  v41[1] = a11;
  v41[2] = a12;
  v41[3] = a13;
  v42 = (a9 + v35[23]);
  *v42 = a14;
  v42[1] = a15;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:) in conformance ScrollableLayoutViewAdaptor<A, B>(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, __int128 *a5, unsigned int a6, void (*a7)(__int128 *), uint64_t a8, void *a9)
{
  result = ScrollableLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(a1, *a3, *(a3 + 8), *(a3 + 16), a4, a5, a6, a7, *(a3 + 24), a8, a9);
  *a2 = result;
  return result;
}

uint64_t ScrollableLayoutState.updateValue()(double *a1)
{
  v2 = v1;
  v220 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 5);
  v5 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = *(AssociatedTypeWitness - 8);
  v158 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v160 = &v144 - v7;
  v176 = a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v12 = *(a1 + 2);
  *&v11 = v12;
  *(&v11 + 1) = v5;
  v178 = v5;
  v179 = v10;
  *&v13 = v8;
  v170 = v4;
  *(&v13 + 1) = v4;
  v182 = v13;
  v183 = v11;
  v210 = v11;
  v211 = v13;
  v175 = v9;
  *&v212 = v9;
  *(&v212 + 1) = v10;
  v171 = type metadata accessor for ScrollableLayoutState.Value(0, &v210);
  v162 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v161 = &v144 - v14;
  v159 = v8;
  v186 = swift_getAssociatedTypeWitness();
  v144 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v156 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v144 - v17;
  v177 = v12;
  v184 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v144 - v23;
  v180 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v181 = &v144 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v163 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v166 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v144 - v30;
  v32 = swift_getTupleTypeMetadata2();
  v33 = v2;
  v34 = swift_getTupleTypeMetadata2();
  v172 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v144 - v38;
  v41 = *(v40 + 48);
  Value = AGGraphGetValue();
  LOBYTE(v8) = v43;
  (*(*(v32 - 8) + 16))(v39, Value, v32);
  v167 = v8 & 1;
  v39[v41] = v8 & 1;
  v164 = TupleTypeMetadata2;
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = v178;
  v46 = AGGraphGetValue();
  LOBYTE(v8) = v47;
  v48 = v45;
  v49 = *(v45 - 8);
  (*(v49 + 16))(v31, v46, v48);
  v50 = v8 & 1;
  v51 = v39;
  v173 = v31;
  v31[v44] = v50;
  AGGraphGetValue();

  v52 = _ScrollLayout.init(_:)(&v188);
  v168 = *(v172 + 16);
  v169 = v172 + 16;
  v168(v36, v39, v34, v52);
  v174 = v34;
  LODWORD(v44) = v36[*(v34 + 48)];
  v53 = *(v184 + 8);
  v149 = v36;
  v150 = v53;
  v54 = v36;
  v55 = v176;
  v151 = v184 + 8;
  v53(v54, v177);
  if (v44 == 1)
  {
    ++*(v33 + v55[22]);
  }

  v56 = *&v39[*(v32 + 48)];
  v57 = v171;
  if (v167 || (v58 = v164, v59 = v166, (*(v163 + 16))(v166, v173, v164), v60 = v59[*(v58 + 48)], (*(v49 + 8))(v59, v178), (v60 & 1) != 0) || (v61 = (v33 + v55[25]), v63 = *v61, v62 = v61[1], v212 = v190, v213 = v191, v214 = v192, v215 = v193, v210 = v188, v211 = v189, _ScrollLayout.size.getter(), v63 != v65) || v62 != v64 || (v66 = (v33 + v55[26]), v68 = *v66, v67 = v66[1], v69 = v66[2], v70 = v66[3], v212 = v190, v213 = v191, v214 = v192, v215 = v193, v210 = v188, v211 = v189, _ScrollLayout.visibleRect.getter(), v222.origin.x = v71, v222.origin.y = v72, v222.size.width = v73, v222.size.height = v74, v221.origin.x = v68, v221.origin.y = v67, v221.size.width = v69, v221.size.height = v70, !CGRectContainsRect(v221, v222)))
  {
    v75 = (v33 + v55[22]);
    v147 = *v75;
    v148 = v75;
    v166 = *(v75 + 1);
    v196 = v190;
    v197 = v191;
    v198 = v192;
    v199 = v193;
    v194 = v188;
    v195 = v189;

    _ScrollLayout.size.getter();
    v77 = v76;
    v79 = v78;
    v209[0] = v190;
    v209[1] = v191;
    v209[2] = v192;
    v209[3] = v193;
    v208[0] = v188;
    v208[1] = v189;
    _ScrollLayout.visibleRect.getter();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v149;
    v167 = v51;
    (v168)(v149, v51, v174);
    v89 = v184;
    v165 = *(v184 + 32);
    v90 = v181;
    v91 = v177;
    v165(v181, v88, v177);
    v146 = *(v89 + 16);
    v92 = v152;
    v146(v152, v90, v91);
    v93 = *(v89 + 80);
    v184 = v56;
    v94 = swift_allocObject();
    v95 = v182;
    *(v94 + 16) = v183;
    *(v94 + 32) = v95;
    v96 = v179;
    *(v94 + 48) = v175;
    *(v94 + 56) = v96;
    v97 = v165;
    v165((v94 + ((v93 + 64) & ~v93)), v92, v91);
    v98 = *(v33 + 32);
    v145 = *(v33 + 24);
    v152 = v98;
    v99 = v33;
    v185 = v33;
    v100 = (v93 + 96) & ~v93;
    v101 = *(v99 + 16);
    v102 = *(v99 + 40);
    (v168)(v88, v167, v174);
    v103 = v154;
    v97(v154, v88, v91);
    v104 = v153;
    v146(v153, v103, v91);
    v105 = swift_allocObject();
    v106 = v182;
    *(v105 + 16) = v183;
    *(v105 + 32) = v106;
    v107 = v179;
    *(v105 + 48) = v175;
    *(v105 + 56) = v107;
    *(v105 + 64) = v101;
    v108 = v145;
    v109 = v152;
    *(v105 + 72) = v145;
    *(v105 + 80) = v109;
    *(v105 + 88) = v102;
    v165((v105 + v100), v104, v91);
    *(&v216 + 1) = MEMORY[0x1E69E7CC0];
    v217 = 0uLL;
    v110 = v108;

    v111 = v150;
    v150(v103, v91);
    v111(v181, v91);
    v112 = *(MEMORY[0x1E695F050] + 16);
    v218 = *MEMORY[0x1E695F050];
    v219 = v112;
    LODWORD(v210) = v147;
    *(&v210 + 1) = v166;
    *&v211 = v77;
    *(&v211 + 1) = v79;
    *&v212 = v81;
    *(&v212 + 1) = v83;
    *&v213 = v85;
    *(&v213 + 1) = v87;
    *&v214 = v184;
    *(&v214 + 1) = partial apply for closure #1 in ScrollableLayoutState.updateValue();
    *&v215 = v94;
    *(&v215 + 1) = partial apply for closure #2 in ScrollableLayoutState.updateValue();
    *&v216 = v105;
    v113 = v176;
    (*(v170 + 48))(v185 + *(v176 + 20), &v210, v178);
    v114 = *(v113 + 23);
    v115 = type metadata accessor for Array();
    v184 = v114;
    *&v183 = v115;
    Array.removeAll(keepingCapacity:)(1);
    v116 = type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(1);
    v117 = *(*(&v216 + 1) + 16);
    v118 = v155;
    v119 = v156;
    if (v117)
    {
      v120 = *(&v216 + 1) + 32;
      v181 = v116;
      *&v182 = v144 + 16;
      v180 = (v144 + 8);
      v121 = (v144 + 16);
      do
      {
        outlined init with copy of _ScrollableLayoutItem(v120, v208);
        AnyHashable.base.getter();
        swift_dynamicCast();
        v122 = *v121;
        (*v121)(v119, v118, v186);
        Array.append(_:)();
        v122(v119, v118, v186);
        v123 = v186;
        v204 = *(v209 + 8);
        v205 = *(&v209[1] + 8);
        v206 = *(&v209[2] + 8);
        v207 = *(&v209[3] + 8);
        outlined destroy of _ScrollableLayoutItem(v208);
        v187 = 0;
        v194 = v204;
        v195 = v205;
        v196 = v206;
        v197 = v207;
        LOBYTE(v198) = 0;
        Dictionary.subscript.setter();
        (*v180)(v118, v123);
        v120 += 104;
        --v117;
      }

      while (v117);
    }

    v55 = v176;
    v33 = v185;
    ++*(v185 + *(v176 + 21));
    v124 = v210;
    v125 = *(&v210 + 1);

    v126 = v148;
    *v148 = v124;
    *(v126 + 1) = v125;
    v127 = v210;
    *(v33 + v55[25]) = v211;
    v67 = *(&v218 + 1);
    v70 = *(&v219 + 1);
    *&v69 = v219;
    v128 = v33 + v55[26];
    v68 = *&v218;
    v129 = *(&v217 + 1);
    *v128 = v218;
    *(v128 + 8) = v67;
    *(v128 + 16) = __PAIR128__(*&v70, *&v69);
    v130 = v217;
    v194 = v127;
    v195 = v211;
    v198 = v214;
    v199 = v215;
    v196 = v212;
    v197 = v213;
    v202 = v218;
    v203 = v219;
    v200 = v216;
    v201 = v217;
    outlined destroy of _ScrollableLayoutProxy(&v194);
    v131 = (v33 + v55[27]);
    *v131 = v130;
    v131[1] = v129;
    v57 = v171;
    v51 = v167;
  }

  v132 = v160;
  (*(v157 + 16))(v160, v33 + v55[20], v158);
  v133 = *(v33 + v55[21]);
  v134 = *(v33 + v55[22]);
  v135 = *(v33 + v55[23]);
  v136 = *(v33 + v55[24]);
  v137 = (v33 + v55[27]);
  v138 = v161;
  ScrollableLayoutState.Value.init(state:stateSeed:contentSeed:scrollLayout:identifiers:placements:validRect:contentSize:)(v132, v133, v134, &v188, v135, v136, v177, v178, v161, v68, v67, v69, v70, *v137, v137[1], v159, v170, v175, v179);
  v140 = MEMORY[0x1EEE9AC00](v139);
  v143[2] = v55;
  v143[3] = swift_getWitnessTable(protocol conformance descriptor for ScrollableLayoutState<A, B>, v55, v140);

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v138, _s14AttributeGraph12StatefulRulePAAE5value5ValueQzvsySPyAFGXEfU_TA_0, v143, v57, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v141);
  (*(v162 + 8))(v138, v57);
  (*(v163 + 8))(v173, v164);
  return (*(v172 + 8))(v51, v174);
}

uint64_t closure #1 in ScrollableLayoutState.updateValue()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of Collection.startIndex.getter();
  Collection.formIndex(_:offsetBy:)();
  _convertToAnyHashable<A>(_:)();
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

double closure #2 in ScrollableLayoutState.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v32 = a8;
  v28 = a6;
  v31 = a11;
  v30 = a10;
  v29 = a9;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v28 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  AnyHashable.base.getter();
  swift_dynamicCast();
  _ProposedSize.init(_:)();
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  (*(v17 + 16))(v19, v22, v16);
  v23 = dispatch thunk of Collection.subscript.read();
  (*(v13 + 16))(v15);
  v23(v33, 0);
  v24 = *(v17 + 8);
  v24(v19, v16);
  v33[0] = a7;
  v33[1] = v32;
  v33[2] = v29;
  v34 = v30;
  v35 = v31;
  v25 = type metadata accessor for ScrollableLayoutState.TemplateView(0, v33);
  v26 = ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(&v36, v15, v25);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v24(v22, v16);
  return v26;
}

double ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  AGGraphClearUpdate();
  v12 = *(a3 + 16);
  v13 = *(a3 + 32);
  v14 = *(a3 + 48);
  v15 = *(a3 + 56);
  LOBYTE(v18) = v6;
  closure #1 in ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(v9, v11, v10, a2, v5, v6, v7, &v18, v8, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15);
  AGGraphSetUpdate();
  return v18;
}

void closure #1 in ScrollableLayoutState.TemplateView.sizeThatFits(_:content:)(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, double *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*AGGraphGetValue() == -1)
  {
    __break(1u);
  }

  AGGraphSetValue();
  v24 = a2;

  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v25 = type metadata accessor for ScrollableLayoutState.TemplateView(0, &v30);
  specialized ScrollableLayoutState.TemplateView.view.setter(a5, v25);

  v30 = a3;
  v31 = a4;
  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
    v30 = a6;
    LOBYTE(v31) = a7 & 1;
    v32 = a8;
    LOBYTE(v33) = a10 & 1;
  }

  else
  {
    AGGraphGetValue();
    v30 = a6;
    LOBYTE(v31) = a7 & 1;
    v32 = a8;
    LOBYTE(v33) = a10 & 1;
  }

  LayoutComputer.sizeThatFits(_:)();
  v27 = v26;
  v29 = v28;

  *a9 = v27;
  *(a9 + 1) = v29;
}

double ScrollableItemIdentifier.info.getter@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 44);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 44) = v7;

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance ScrollableLayoutState<A, B>@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v6[2] = a1[3];
  v4 = type metadata accessor for ScrollableLayoutState.Value(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t ScrollableItemIdentifier.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = HIDWORD(a1);
  ScrollableItemIdentifier.info.getter(v28);
  v16 = v28[1];

  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    ScrollableItemIdentifier.info.getter(v28);
    v20 = v28[0];

    if ((v20 & 0xC000000000000001) != 0)
    {
      MEMORY[0x18D00E9C0](v19, v20);
      goto LABEL_7;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_7:

      v27[0] = a2;
      v27[1] = a3;
      v27[2] = a4;
      v27[3] = a5;
      v27[4] = a6;
      v27[5] = a7;
      v22 = type metadata accessor for ScrollableLayoutViewAdaptor(0, v27);
      swift_getWitnessTable(protocol conformance descriptor for ScrollableLayoutViewAdaptor<A, B>, v22);
      DynamicContainer._ItemInfo.item.getter();

      (*(*v28[0] + 88))(v28, v23);
      AnyHashable.base.getter();

      outlined destroy of AnyHashable(v28);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_dynamicCast();
      return (*(*(AssociatedTypeWitness - 8) + 56))(a8, 0, 1, AssociatedTypeWitness);
    }

    __break(1u);
  }

  else
  {

    v25 = swift_getAssociatedTypeWitness();
    v26 = *(*(v25 - 8) + 56);

    return v26(a8, 1, 1, v25);
  }

  return result;
}

uint64_t ScrollableItemGeometry.identifier.getter@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t ScrollableItemGeometry.state.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a9;
  v10 = type metadata accessor for ScrollableLayoutState.Value(0, v13);
  Value = AGGraphGetValue();
  return (*(*(v10 - 8) + 16))(a7, Value, v10);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ScrollableItemIdentifier<A, B>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t ScrollableItemGeometry.value.getter@<X0>(uint64_t a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11)
{
  v50 = a8;
  v49 = a3;
  v51.f64[0] = a2;
  v48 = a1;
  v47 = a9;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  *&v58 = a6;
  *(&v58 + 1) = a7;
  *&v59 = a8;
  *(&v59 + 1) = a11;
  v45 = type metadata accessor for ScrollableLayoutState.Value(0, &v57);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v39 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = type metadata accessor for Optional();
  v17 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v39 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v41 = a11;
  v24 = a4;
  v42 = a5;
  v43 = a7;
  ScrollableItemGeometry.identifier.getter(v19);
  v25 = *(v20 + 48);
  v46 = AssociatedTypeWitness;
  if (v25(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v39);
LABEL_5:
    static LayoutComputer.defaultValue.getter();
    v31 = v62;
    static ViewSize.zero.getter();
    v32 = v57;
    v33 = v58;
    v57 = v31;
    v58 = v32;
    v59 = v33;
    return ViewGeometry.init(dimensions:)();
  }

  v26 = v46;
  (*(v20 + 32))(v23, v19, v46);
  v27 = v41;
  v28 = v40;
  v29 = HIDWORD(v49);
  ScrollableItemGeometry.state.getter(v24, v42, a6, v43, v50, v40, v41);
  v30 = v45;
  MEMORY[0x18D00C560](&v57, v23, *(v28 + *(v45 + 84)), v26, MEMORY[0x1E697DB68], v27);
  v62 = v57;
  v63 = v58;
  v64 = v59;
  v65 = v60;
  if (v61)
  {
    (*(v20 + 8))(v23, v46);
    (*(v44 + 8))(v28, v30);
    goto LABEL_5;
  }

  (*(v44 + 8))(v28, v30);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v57) = *MEMORY[0x1E698D3F8] == v29;
    LayoutProxy.init(context:layoutComputer:)();
    v55 = v57;
    v56 = DWORD2(v57);
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v60 = v65;
    Value = AGGraphGetValue();
    v36 = Value[1];
    v53 = *Value;
    v54 = v36;
    MEMORY[0x18D00B390]();
    v52 = *AGGraphGetValue();
    LayoutProxy.finallyPlaced(at:in:layoutDirection:)();
    type metadata accessor for CGPoint(0);
    v51 = *AGGraphGetValue();
    v37 = ViewGeometry.origin.modify();
    *v38 = vaddq_f64(v51, *v38);
    v37(&v57, 0);
    return (*(v20 + 8))(v23, v46);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollableItemGeometry<A, B>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance ScrollableItemLayoutComputer(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  lazy protocol witness table accessor for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine();
  return StatefulRule<>.update<A>(to:)();
}

_DWORD *protocol witness for Rule.value.getter in conformance TemplateViewPhase@<X0>(_DWORD *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a1 = v2 + 2 * *result;
  return result;
}

void AnyViewVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v24[0] = a3;
  v24[1] = v9;
  v24[2] = a4;
  v24[3] = v10;
  v11 = type metadata accessor for EquatableProxyView(0, v24);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  View.equatableProxy<A>(_:)(v5 + *(a2 + 52), a3, v9, a4, v10, v24 - v13);
  v15 = specialized AnyDynamicItem.init<A, B>(_:id:)(v14, v5, v11, *(a2 + 16), &protocol witness table for EquatableProxyView<A, B>);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v15;
  (*(v12 + 8))(v14, v11);
  v23 = (v5 + *(a2 + 56));

  *v23 = v17;
  *(v23 + 1) = v19;
  *(v23 + 2) = v21 & 1;
  v23[3] = v22;
}

void specialized ScrollActionDispatcher.updateValue()()
{
  v1 = v0;
  v2 = *AGGraphGetValue() >> 1;
  if (v2 != *(v0 + 32))
  {
    *(v0 + 32) = v2;
    *(v0 + 20) = 0xFFFFFFFFLL;
    *(v0 + 28) = 0;
    *(v0 + 36) = 5;
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for [ScrollPhaseState], MEMORY[0x1E697EB00], MEMORY[0x1E69E62F8]);
  v3 = *AGGraphGetValue();
  v4 = *(v1 + 12);
  v5 = *MEMORY[0x1E698D3F8];

  if (v4 != v5 && *AGGraphGetValue() == 1)
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = v3 + 24 * v6;
      v8 = (v7 + 8);
      v9 = (v7 + 16);
      v10 = (v7 + 24);
      goto LABEL_13;
    }

LABEL_21:

    goto LABEL_22;
  }

  v11 = *(v3 + 16);
  if (v11 >= 2)
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F060, v36);
      _os_log_impl(&dword_18BD4A000, v13, v12, "%s: Multiple scroll views were found. Picking the first one to compare.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x18D0110E0](v15, -1, -1);
      MEMORY[0x18D0110E0](v14, -1, -1);
    }

    v11 = *(v3 + 16);
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v8 = (v3 + 32);
  v9 = (v3 + 40);
  v10 = (v3 + 48);
LABEL_13:
  v16 = *v9;
  v17 = *v8;
  v18 = *v10;

  if (v17 == 5)
  {
LABEL_22:
    v27 = 5;
    goto LABEL_23;
  }

  LOBYTE(v36[0]) = v17;
  v36[1] = v16;
  v36[2] = v18;
  MEMORY[0x1EEE9AC00](v19);
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider, &type metadata for OnScrollPhaseChangeModifier.PhaseActionProvider);
  v21 = v20;
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for ScrollPhase?, MEMORY[0x1E697DD18], MEMORY[0x1E69E6720]);
  v23 = v22;
  v25 = lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(v24);
  MEMORY[0x18D000B40](v21, v23, v25);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v27 = v37;
  if (v37 != 5)
  {
    v28 = *(v1 + 36);
    if (v37 != v28)
    {
      MEMORY[0x1EEE9AC00](v26);
      if (UpdateCycleDetector.dispatch(label:isDebug:)())
      {
        AGGraphClearUpdate();
        if (v28 == 5)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        Value = AGGraphGetValue();
        v32 = *Value;
        v31 = Value[1];
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        *(v33 + 24) = v31;
        *(v33 + 32) = v29;
        *(v33 + 33) = v27;

        AGGraphSetUpdate();
        LOBYTE(v36[0]) = 17;
        Strong = swift_weakLoadStrong();
        v35 = swift_allocObject();
        v35[2] = partial apply for closure #1 in OnScrollPhaseChangeModifier.PhaseActionProvider.makeAction(oldOutput:newOutput:);
        v35[3] = v33;
        v35[4] = Strong;

        static Update.enqueueAction(reason:_:)();
      }
    }
  }

LABEL_23:
  *(v1 + 36) = v27;
}

{
  v1 = v0;
  v2 = *AGGraphGetValue() >> 1;
  if (v2 != v0[9])
  {
    v0[9] = v2;
    *(v0 + 3) = 0xFFFFFFFFLL;
    *(v0 + 32) = 0;
    *(v0 + 6) = 0;
    *(v0 + 7) = 0;
    *(v0 + 5) = 5;
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for [ScrollPhaseState], MEMORY[0x1E697EB00], MEMORY[0x1E69E62F8]);
  v3 = *AGGraphGetValue();
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[4];
  v7 = *MEMORY[0x1E698D3F8];

  if (v6 != v7 && *AGGraphGetValue() == 1)
  {
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = v3 + 24 * v8;
      v10 = (v9 + 8);
      v11 = (v9 + 16);
      v12 = (v9 + 24);
      goto LABEL_13;
    }

LABEL_21:

    v20 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  v13 = *(v3 + 16);
  if (v13 >= 2)
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v44 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000018CD3F080, v44);
      _os_log_impl(&dword_18BD4A000, v15, v14, "%s: Multiple scroll views were found. Picking the first one to compare.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x18D0110E0](v17, -1, -1);
      MEMORY[0x18D0110E0](v16, -1, -1);
    }

    v13 = *(v3 + 16);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v10 = (v3 + 32);
  v11 = (v3 + 40);
  v12 = (v3 + 48);
LABEL_13:
  v18 = *v11;
  v19 = *v10;
  v20 = *v12;

  if (v19 == 5)
  {
LABEL_22:
    *v44 = 5;
    *&v44[8] = v18;
    *&v44[16] = v20;
LABEL_23:
    v38 = *v44;
    v37 = *&v44[16];
    goto LABEL_24;
  }

  LOBYTE(v42) = v19;
  *&v43 = v18;
  *(&v43 + 1) = v20;
  v40[0] = v4;
  v40[1] = v5;
  MEMORY[0x1EEE9AC00](v21);
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider, &type metadata for OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
  v23 = v22;
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for ScrollPhaseState?, MEMORY[0x1E697EB00], MEMORY[0x1E69E6720]);
  v25 = v24;
  v26 = lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>();
  MEMORY[0x18D000B40](v23, v25, v26);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v28 = v44[0];
  if (v44[0] == 5)
  {
    goto LABEL_23;
  }

  v29 = *(v1 + 40);
  v30 = *(v1 + 3);
  v42 = *v44;
  v39 = *&v44[8];
  v43 = *&v44[8];
  if (v29 != 5)
  {
    LOBYTE(v40[0]) = v29;
    v41 = v30;
    v27 = static ScrollPhaseState.== infix(_:_:)();
    if (v27)
    {
      goto LABEL_23;
    }
  }

  MEMORY[0x1EEE9AC00](v27);
  if ((UpdateCycleDetector.dispatch(label:isDebug:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  AGGraphClearUpdate();
  LOBYTE(v42) = v28;
  v31 = v39;
  v43 = v39;
  if (*(v1 + 40) != 5)
  {
    v31 = *(v1 + 3);
    v28 = *(v1 + 40);
  }

  LOBYTE(v40[0]) = v28;
  v41 = v31;
  v32 = OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)(v40, &v42, v4 | (v5 << 32));
  v34 = v33;
  AGGraphSetUpdate();
  LOBYTE(v42) = 17;
  Strong = swift_weakLoadStrong();
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = v34;
  v36[4] = Strong;

  static Update.enqueueAction(reason:_:)();

  v37 = *&v44[16];
  v38 = *v44;
LABEL_24:
  *(v1 + 10) = v38;
  *(v1 + 7) = v37;
}

uint64_t specialized SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  v1 = v0;
  v70 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v7;
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  Value = AGGraphGetValue();
  v60 = v12;
  v14 = Value[1];
  *&v69 = *Value;
  v13 = v69;
  *(&v69 + 1) = v14;
  v15 = type metadata accessor for SearchSelectionModifier.Transform(0);

  v55 = v15;
  AGGraphGetValue();
  v53 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v62 = v13;
  v63 = v10;
  v61 = v14;
  v58 = v17;
  v59 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v54 = v19;
  *&v66 = v19;
  *(&v66 + 1) = v20;
  v67 = *(v0 + 16);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v65 = v22;
  *(&v52 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchSelectionModifier.Transform, &protocol witness table for SearchSelectionModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(v25);

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v27 = *(v64 + 48);
  v28 = v59;
  if (v27(v5, 1, v59) == 1)
  {
    v29 = v63;
    *v63 = 2;
    v30 = &v29[*(v28 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v33 = v32[5];
    type metadata accessor for SearchBoundProperty<AttributedString>(0);
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    v35 = v32[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>(0);
    (*(*(v36 - 8) + 56))(&v30[v35], 1, 1, v36);
    v37 = &v30[v32[7]];
    *(v37 + 28) = 0u;
    *v37 = 0u;
    v37[1] = 0u;
    v38 = v27(v5, 1, v28);
    if (v38 != 1)
    {
      v38 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v29 = v63;
    v38 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v63);
  }

  v39 = v61;
  v40 = v65;
  if (v65)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v41 = *(v65 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v41 != -1)
      {
        v42 = *(v1 + 20);
        if (v42 != -1 && (v53 & 1) == 0 && v41 == v42)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v38);
    *(&v52 - 2) = v1;
    *(&v52 - 1) = v29;
    Attribute.syncMainIfReferences<A>(do:)();
    v43 = *(v1 + 16) + 1;
    *(v1 + 16) = v43;
    LOBYTE(v66) = 17;
    v20 = *(v1 + 8);
    v44 = v57;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v29, v57, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v45 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v46 = v39;
    v47 = (v56 + v45 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v48 = swift_allocObject();
    *(v48 + 16) = v20;
    v49 = v44;
    v40 = v65;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v49, v48 + v45);
    *(v48 + v47) = v43;
    v39 = v46;

    static Update.enqueueAction(reason:_:)();

    if (v60)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v53 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v60)
  {
LABEL_22:
    *&v66 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v39)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v66 = v69;
    AGGraphSetOutputValue();
    if (!v40)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v40)
  {
LABEL_25:
    v50 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v50 = *(v40 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v50;
  *(v1 + 24) = v40 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v29, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v67 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v7;
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  Value = AGGraphGetValue();
  v57 = v12;
  v14 = Value[1];
  *&v66 = *Value;
  v13 = v66;
  *(&v66 + 1) = v14;

  AGGraphGetValue();
  v51 = v15;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v16 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v59 = v13;
  v60 = v10;
  v58 = v14;
  v55 = v16;
  v56 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v17 = PropertyList.subscript.getter();
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 24);
  *&v18 = *v0;
  v52 = v18;
  *&v63 = v18;
  *(&v63 + 1) = v19;
  v64 = *(v0 + 16);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v17);
  v62 = v21;
  *(&v50 - 2) = v21;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
  v23 = v22;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v23, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v25 = *(v61 + 48);
  v26 = v56;
  if (v25(v5, 1, v56) == 1)
  {
    v27 = v60;
    *v60 = 2;
    v28 = &v27[*(v26 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v30 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v31 = v30[5];
    type metadata accessor for SearchBoundProperty<AttributedString>(0);
    (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
    v33 = v30[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>(0);
    (*(*(v34 - 8) + 56))(&v28[v33], 1, 1, v34);
    v35 = &v28[v30[7]];
    *(v35 + 28) = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    v36 = v25(v5, 1, v26);
    if (v36 != 1)
    {
      v36 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v27 = v60;
    v36 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v60);
  }

  v37 = v58;
  v38 = v62;
  if (v62)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v39 = *(v62 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v39 != -1)
      {
        v40 = *(v1 + 20);
        if (v40 != -1 && (v51 & 1) == 0 && v39 == v40)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v36);
    *(&v50 - 2) = v1;
    *(&v50 - 1) = v27;
    Attribute.syncMainIfReferences<A>(do:)();
    v41 = *(v1 + 16) + 1;
    *(v1 + 16) = v41;
    LOBYTE(v63) = 17;
    v19 = *(v1 + 8);
    v42 = v54;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v27, v54, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v43 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v44 = v37;
    v45 = (v53 + v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = swift_allocObject();
    *(v46 + 16) = v19;
    v47 = v42;
    v38 = v62;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v47, v46 + v43);
    *(v46 + v45) = v41;
    v37 = v44;

    static Update.enqueueAction(reason:_:)();

    if (v57)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v51 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v57)
  {
LABEL_22:
    *&v63 = v19;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v37)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v63 = v66;
    AGGraphSetOutputValue();
    if (!v38)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v38)
  {
LABEL_25:
    v48 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v48 = *(v38 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v48;
  *(v1 + 24) = v38 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v27, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v70 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v7;
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  Value = AGGraphGetValue();
  v60 = v12;
  v14 = Value[1];
  *&v69 = *Value;
  v13 = v69;
  *(&v69 + 1) = v14;
  v15 = type metadata accessor for SearchTextTransformModifier.Transform(0);

  v55 = v15;
  AGGraphGetValue();
  v53 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v62 = v13;
  v63 = v10;
  v61 = v14;
  v58 = v17;
  v59 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v54 = v19;
  *&v66 = v19;
  *(&v66 + 1) = v20;
  v67 = *(v0 + 16);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v65 = v22;
  *(&v52 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchTextTransformModifier.Transform, &protocol witness table for SearchTextTransformModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(v25);

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v27 = *(v64 + 48);
  v28 = v59;
  if (v27(v5, 1, v59) == 1)
  {
    v29 = v63;
    *v63 = 2;
    v30 = &v29[*(v28 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v33 = v32[5];
    type metadata accessor for SearchBoundProperty<AttributedString>(0);
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    v35 = v32[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>(0);
    (*(*(v36 - 8) + 56))(&v30[v35], 1, 1, v36);
    v37 = &v30[v32[7]];
    *(v37 + 28) = 0u;
    *v37 = 0u;
    v37[1] = 0u;
    v38 = v27(v5, 1, v28);
    if (v38 != 1)
    {
      v38 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v29 = v63;
    v38 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v63);
  }

  v39 = v61;
  v40 = v65;
  if (v65)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v41 = *(v65 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v41 != -1)
      {
        v42 = *(v1 + 20);
        if (v42 != -1 && (v53 & 1) == 0 && v41 == v42)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v38);
    *(&v52 - 2) = v1;
    *(&v52 - 1) = v29;
    Attribute.syncMainIfReferences<A>(do:)();
    v43 = *(v1 + 16) + 1;
    *(v1 + 16) = v43;
    LOBYTE(v66) = 17;
    v20 = *(v1 + 8);
    v44 = v57;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v29, v57, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v45 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v46 = v39;
    v47 = (v56 + v45 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v48 = swift_allocObject();
    *(v48 + 16) = v20;
    v49 = v44;
    v40 = v65;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v49, v48 + v45);
    *(v48 + v47) = v43;
    v39 = v46;

    static Update.enqueueAction(reason:_:)();

    if (v60)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v53 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v60)
  {
LABEL_22:
    *&v66 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v39)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v66 = v69;
    AGGraphSetOutputValue();
    if (!v40)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v40)
  {
LABEL_25:
    v50 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v50 = *(v40 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v50;
  *(v1 + 24) = v40 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v29, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

{
  v1 = v0;
  v69 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - v4;
  v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v55 = v7;
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  Value = AGGraphGetValue();
  v59 = v12;
  v14 = Value[1];
  *&v68 = *Value;
  v13 = v68;
  *(&v68 + 1) = v14;
  v15 = type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(0);

  v54 = v15;
  AGGraphGetValue();
  v52 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  v17 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();
  v61 = v13;
  v62 = v10;
  v60 = v14;
  v57 = v17;
  v58 = v6;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v18 = PropertyList.subscript.getter();
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  *&v19 = *v0;
  v53 = v19;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  v66 = *(v0 + 16);
  v67 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v64 = v22;
  *(&v51 - 2) = v22;
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchStateEnvironmentTransformModifier.Transform, &protocol witness table for SearchStateEnvironmentTransformModifier.Transform);
  v24 = v23;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v24, v3, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v26 = *(v63 + 48);
  v27 = v58;
  if (v26(v5, 1, v58) == 1)
  {
    v28 = v62;
    *v62 = 2;
    v29 = &v28[*(v27 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v32 = v31[5];
    type metadata accessor for SearchBoundProperty<AttributedString>(0);
    (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
    v34 = v31[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>(0);
    (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
    v36 = &v29[v31[7]];
    *(v36 + 28) = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v37 = v26(v5, 1, v27);
    if (v37 != 1)
    {
      v37 = outlined destroy of SearchEnvironmentStorage.AllProperties?(v5, &lazy cache variable for type metadata for SearchEnvironmentStorage.AllProperties?, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    }
  }

  else
  {
    v28 = v62;
    v37 = outlined init with take of SearchEnvironmentStorage.AllProperties(v5, v62);
  }

  v38 = v60;
  v39 = v64;
  if (v64)
  {
    if ((*(v1 + 24) & 1) == 0)
    {
      v40 = *(v64 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      if (v40 != -1)
      {
        v41 = *(v1 + 20);
        if (v41 != -1 && (v52 & 1) == 0 && v40 == v41)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 2) = v1;
    *(&v51 - 1) = v28;
    Attribute.syncMainIfReferences<A>(do:)();
    v42 = *(v1 + 16) + 1;
    *(v1 + 16) = v42;
    LOBYTE(v65) = 17;
    v20 = *(v1 + 8);
    v43 = v56;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v28, v56, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v44 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v45 = v38;
    v46 = (v55 + v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = swift_allocObject();
    *(v47 + 16) = v20;
    v48 = v43;
    v39 = v64;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v48, v47 + v44);
    *(v47 + v46) = v42;
    v38 = v45;

    static Update.enqueueAction(reason:_:)();

    if (v59)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (!*(v1 + 24) || (v52 & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v59)
  {
LABEL_22:
    *&v65 = v20;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v38)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v65 = v68;
    AGGraphSetOutputValue();
    if (!v39)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_19:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_22;
  }

  if (!v39)
  {
LABEL_25:
    v49 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v49 = *(v39 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);

LABEL_26:
  *(v1 + 20) = v49;
  *(v1 + 24) = v39 == 0;

  return outlined destroy of SearchEnvironmentStorage.AllProperties(v28, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

double specialized closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchSelectionModifier.Transform, &protocol witness table for SearchSelectionModifier.Transform);
  v5 = v4;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchSelectionModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(v6);

  MEMORY[0x18D000B40](v5, MEMORY[0x1E69E7CA8] + 8, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return result;
}

{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment, &type metadata for SearchPopoverAnchorModifier.Transform, &protocol witness table for SearchPopoverAnchorModifier.Transform, type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment);
  v5 = v4;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchPopoverAnchorModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v5, MEMORY[0x1E69E7CA8] + 8, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return result;
}

{
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchTextTransformModifier.Transform, &protocol witness table for SearchTextTransformModifier.Transform);
  v5 = v4;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(v6);

  MEMORY[0x18D000B40](v5, MEMORY[0x1E69E7CA8] + 8, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return result;
}

{
  type metadata accessor for SearchEnvironmentTransformModifier<SearchTextTransformModifier.Transform>.UpdateEnvironment(0, &lazy cache variable for type metadata for SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment, type metadata accessor for SearchStateEnvironmentTransformModifier.Transform, &protocol witness table for SearchStateEnvironmentTransformModifier.Transform);
  v5 = v4;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment();

  MEMORY[0x18D000B40](v5, MEMORY[0x1E69E7CA8] + 8, updated);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return result;
}

uint64_t specialized closure #1 in closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  v4 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 24);
  outlined destroy of SearchEnvironmentStorage.AllProperties?(v3 + v4, &lazy cache variable for type metadata for SearchBoundProperty<TextSelection?>?, type metadata accessor for SearchBoundProperty<TextSelection?>);
  outlined init with copy of SearchEnvironmentStorage.AllProperties(a1, v3 + v4, type metadata accessor for SearchBoundProperty<TextSelection?>);
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  return (*(*(v5 - 8) + 56))(v3 + v4, 0, 1, v5);
}

{
  v3 = a2 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  v4 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 28);
  outlined destroy of SearchEnvironmentStorage.AllProperties?(v3 + v4, &lazy cache variable for type metadata for SearchBoundProperty<PlatformSearchPopoverAnchor?>?, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  return outlined init with copy of SearchEnvironmentStorage.AllProperties(a1, v3 + v4, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
}

{
  v3 = a2 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  v4 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 20);
  outlined destroy of SearchEnvironmentStorage.AllProperties?(v3 + v4, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>);
  outlined init with copy of SearchEnvironmentStorage.AllProperties(a1, v3 + v4, type metadata accessor for SearchBoundProperty<AttributedString>);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  return (*(*(v5 - 8) + 56))(v3 + v4, 0, 1, v5);
}

{
  v3 = a2 + *(type metadata accessor for SearchEnvironmentStorage.AllProperties(0) + 20);
  outlined destroy of SearchEnvironmentStorage.AllProperties?(v3, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>);
  outlined init with copy of SearchEnvironmentStorage.AllProperties(a1, v3, type metadata accessor for SearchBoundProperty<SearchFieldState>);
  type metadata accessor for SearchBoundProperty<SearchFieldState>(0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = *(type metadata accessor for SearchEnvironmentStorage.BoundProperties(0) + 20);
  outlined destroy of SearchEnvironmentStorage.AllProperties?(v3 + v5, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>);
  v6 = type metadata accessor for SearchStateEnvironmentTransformModifier.Transform(0);
  outlined init with copy of SearchEnvironmentStorage.AllProperties(a1 + *(v6 + 20), v3 + v5, type metadata accessor for SearchBoundProperty<AttributedString>);
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  return (*(*(v7 - 8) + 56))(v3 + v5, 0, 1, v7);
}

uint64_t specialized PlatformItemListGenerator.updateValue()()
{
  v12 = *MEMORY[0x1E69E9840];
  if (AGGraphGetOutputValue())
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 80);
    v10[4] = *(v0 + 64);
    v11[0] = v2;
    *(v11 + 12) = *(v0 + 92);
    v3 = *(v0 + 16);
    v10[0] = *v0;
    v10[1] = v3;
    v4 = *(v0 + 48);
    v10[2] = *(v0 + 32);
    v10[3] = v4;
    outlined init with copy of SearchEnvironmentStorage.AllProperties(v10, v9, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
    AGGraphClearUpdate();
    v5 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v6 = specialized PlatformItemListGenerator.makeItemList()();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    outlined destroy of SearchEnvironmentStorage.AllProperties(v10, type metadata accessor for PlatformItemListGenerator<LabelPlatformItemListFlags, HStack<UIKitButtonConfiguration.Label>>);
    v1 = v6;
    *(v0 + 104) = v6;
  }

  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  v9[0] = v7;
  AGGraphSetOutputValue();
}

uint64_t specialized PlatformItemListGenerator.makeItemList()()
{
  v1 = *(v0 + 64);
  v40 = *(v0 + 48);
  v41 = v1;
  v42 = *(v0 + 80);
  v43 = *(v0 + 96);
  v2 = *(v0 + 32);
  v39[0] = *(v0 + 16);
  v39[1] = v2;
  v38 = v43;
  v35 = v40;
  v36 = v1;
  v37 = v42;
  v33 = v39[0];
  v34 = v2;
  if (*(v0 + 100))
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 32);
    v23 = *(v0 + 48);
    v24 = v3;
    v5 = *(v0 + 64);
    v25 = *(v0 + 80);
    v6 = *(v0 + 32);
    v21 = *(v0 + 16);
    v22 = v6;
    v14 = v23;
    v15 = v5;
    v16 = *(v0 + 80);
    v26 = *(v0 + 96);
    v17 = *(v0 + 96);
    v12 = v21;
    v13 = v4;
    outlined init with copy of _ViewInputs(v39, &v27);
    outlined init with copy of _ViewInputs(&v21, &v27);
    _ViewInputs.withoutGeometryDependencies.getter();
    v7 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = v7;
    v31 = *(v0 + 80);
    v32 = *(v0 + 96);
    v8 = *(v0 + 32);
    v27 = *(v0 + 16);
    v28 = v8;
    outlined destroy of _ViewInputs(&v27);
    outlined destroy of _ViewInputs(&v21);
    PreferenceKeys.init()();
    v19 = v12;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    LOBYTE(v18) = 0;
    GraphHost.intern<A>(_:for:id:)();

    PreferencesInputs.init(hostKeys:)();

    *&v36 = v12;
    DWORD2(v36) = DWORD2(v12);
  }

  else
  {
    outlined init with copy of _ViewInputs(v39, &v27);
  }

  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA05LabelfghM0V_Ttg5(0);
  LOBYTE(v27) = 1;
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.setter();
  *&v27 = v41;
  DWORD2(v27) = DWORD2(v41);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    PreferenceKeys.add(_:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v21 = v33;
  v22 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v18 = *(v0 + 8);
  v26 = v38;
  v17 = v38;
  v12 = v33;
  v13 = v34;
  outlined init with copy of _ViewInputs(&v21, &v27);
  lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
  static View.makeDebuggableView(view:inputs:)();
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v27 = v12;
  v28 = v13;
  outlined destroy of _ViewInputs(&v27);
  *&v12 = v19;
  DWORD2(v12) = v20;
  v9 = PreferencesOutputs.subscript.getter();

  if ((v9 & 0x100000000) != 0)
  {
    v10 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v10 = v9;
  }

  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v12 = v33;
  v13 = v34;
  outlined destroy of _ViewInputs(&v12);
  return v10;
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33LimitedAvailabilityCommandContentV15IndirectOutputs33_345D0464CE5C92DE3AB73ADEFB278856LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI24LimitedAvailabilitySceneV15IndirectOutputs33_1B9891F523EE168448E28D047E0F9B62LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI32LimitedAvailabilityConfigurationV15IndirectOutputs33_3573788457D4ED15FDE2DFDF10A5FB7ELLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI45LimitedAvailabilityControlWidgetConfigurationV15IndirectOutputs33_6FC009484B6BDEB11699793D261610FELLVTt1g5;
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19_ConditionalContentVAKE4InfoVyAK15WithCommandFlagVyAK13EmptyCommandsVGAT_G_AmKE9ContainerVyA2T_Am2K0P0RzAkXR_rlE0P8Provider33_7823B10F4F8D6B5D9D46ED7A4A8B7B47LLVyA2T_GGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI16AppearanceEffectVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI29OnChangeOfSuggestionsModifierV13UpdateBinding33_5D3A7576E00F3309999F70325D6ACFD5LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI27GridBadgeInfosActionBinding33_582D9E508E536DEAC67BC3C87B3CFE52LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK016ToolbarPlacementI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI14ToolbarStorageV5EntryVG_AK0I11MakeEntriesVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11VersionSeedV_AK26SearchBoundPropertyUpdaterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI23ContentToolbarPlacementV0K0OAK0jI11DescriptionVG_AK08Documentj5InputI6WriterV04MakejI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI18UpdateBridgedStateVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK0I25HostedViewBridgeTransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK05HoverJ5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI29UpdateNavigationEventHandlersVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI32OnScrollVisibilityGeometryAction33_944EB6CE2BB43BF04D41DCEFAA240B93LLV0ijklM6BinderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK15TooltipModifierV0kJ7Updater33_260978DE3FF5445B342BD9F05199EF00LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK017RootEntityGestureJ6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI29UIKitHostedFocusItemLifecycleVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI33UISplitViewControllerProxyStorageC_AK0ijkL8Modifier33_F3616A22CCA61D36D2410A420C18D22DLLV016EnsureObservableL0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI15BoundInputsViewV4Info33_B0ED1B0780F8D44EDE768B14B582636ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI17ButtonShapeEffect33_97B15FCE624545D0F8AF233156FEE655LLV0K5StateVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK013DefaultLayoutJ6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI15OnFocusObserver33_42A631C1690D3D13832525847B0F7042LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12BaseModifier33_A5D006CD6BDD06141BF18265B8DC3928LLV17SelectionObserverVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK11DisplayListVAKE11HostedViewsV0J6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListVAKE11HostedViewsVAEV_AOTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI28UpdateContextMenuInteraction33_0F42DDF44729C152DA9EC9F6F4D00118LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06ScalediJ033_11B01579BD3D4D341E64E9CBE4EEB235LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI22BadgeInfoActionBinding33_67AB6F1CD4AC649554088B990AFA8004LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK012FocusSectionJ6Filter33_96B0FDB8101CA4B64D25EA023C3F4AF2LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI22ScrollActionDispatcher33_1176EEC1E4A702DD8DB07F9D0C463078LLVyAK02OnI19PhaseChangeModifierV0uJ8ProviderAMLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI22ScrollActionDispatcher33_1176EEC1E4A702DD8DB07F9D0C463078LLVyAK02OnI26PhaseContextChangeModifierV0uvJ8ProviderAMLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI27BoundNavigationPathDetectorVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI31UICollectionViewListCoordinatorCyAK22TableDataSourceAdaptorVAK19AnySelectionManagerVG_AK016UpdateCollectionjmL0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK012DefaultFocusiJ6Filter33_1F8B69996BE941D510140AD6558D8844LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33SearchNavigationSplitViewModifierV0I12InputMutatorVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI23ContentToolbarPlacementV0K0OAK0jI11DescriptionVG_AK05WritejL5InputVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK06ButtonJ033_4FAA67BCBE14FB2253F273D4CB50EE62LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI30UINavigationItemAdaptorStorageVzc_AK010NavigationjK8Modifier33_45CC2B8E0C7D33F7D60891A1D950C3C2LLV04MakeK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_10Foundation4DateV_7SwiftUI11CLKLiveTextV08ResolvedH033_82A9C36F6AB28240033035EE39FA1A1FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11CLKLiveTextV5Style33_82A9C36F6AB28240033035EE39FA1A1FLLV_AM08ResolvedK0AOLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI24ScrollStateActionBinding33_0CB7C3A8C661577BDD4B07512497B9D9LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI21NavigationTitleBinder33_0CB7C3A8C661577BDD4B07512497B9D9LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI20UpdateFocusRingFrame33_B6A2D4E72E5722B5103497ADB7778B5FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI26ScrollStateEnqueueRequestsVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI20ContentScrollViewBoxVGzc_AK0ijK8Provider33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK019DefaultFocusSectionJ6Filter33_C50010F62472159785912911CC27EE97LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK04RootI8Modifier33_4475FD12FD59DEBA453321BD91F6EA04LLV5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SearchI17TransformModifierV06UpdateI0VyAK0k9SelectionM0V0L0V_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SearchI17TransformModifierV06UpdateI0VyAK0k13PopoverAnchorM033_F5D9997FD051E2FDEC8F3E85E3D4B7EBLLV0L0V_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SearchI17TransformModifierV06UpdateI0VyAK0k4TextlM033_E1458373A4858EAD6466FEBDCBAECB56LLV0L0V_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SearchI17TransformModifierV06UpdateI0VyAK0k5StateilM033_366134F59E114783B313E1ABD2826F8FLLV0L0V_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PlatformItemListV_AK0ijK9GeneratorVyAK05LabelijK5FlagsVAK6HStackVyAK24UIKitButtonConfigurationV0M0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ContextMenuJ6Filter33_32895F3BF4B43C337D96231B48286DCELLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI19MultimodalBadgeInfoVG_AK0ijK8Provider33_582D9E508E536DEAC67BC3C87B3CFE52LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK19PropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A66LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK17GeometryTransform33_EE68159C4F54001FA5A3813EBA5DD945LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28AccessibilityGeometryStorageC10RespondersV_AK0I20ViewResponderUpdaterVAN33_EE68159C4F54001FA5A3813EBA5DD945LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28AccessibilityGeometryStorageC4SizeV_AK0iJ7UpdaterVAN33_EE68159C4F54001FA5A3813EBA5DD945LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI12OnTestEffect33_8C980AFABD1442F6AFBE944DEFCC6A05LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK015FocusEventProxyJ6Filter33_220887A402CE7023D01D5BCC1E080716LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAK37NavigationSplitViewStyleConfigurationV6DetailVAK17InjectKeyModifierVGAK8StaticIfVyAK9SemanticsV013DismissPopsInklM5RootsVAK012_Environmentr9TransformS0VyAK7BindingVyAK16PresentationModeVGGAK05EmptyS0VGGAK012_Environmentr7WritingS0VyAK0K5StateV13SelectionSeedVGG_AK01_kL6Reader33_F85FC22E89B4B90838177134F16A33DBLLV14PreparedColumnVy_AQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAK37NavigationSplitViewStyleConfigurationV0J0VAK17InjectKeyModifierVGAK8StaticIfVyAK9SemanticsV013DismissPopsInklM5RootsVAK012_Environmentq9TransformR0VyAK7BindingVyAK16PresentationModeVGGAK05EmptyR0VGGAK01_zq7WritingR0VyAK0K5StateV13SelectionSeedVGG_AK01_kL6Reader33_F85FC22E89B4B90838177134F16A33DBLLV14PreparedColumnVy_AQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAK37NavigationSplitViewStyleConfigurationV7SidebarVAK17InjectKeyModifierVGAK8StaticIfVyAK9SemanticsV013DismissPopsInklM5RootsVAK012_Environmentr9TransformS0VyAK7BindingVyAK16PresentationModeVGGAK05EmptyS0VGGAK012_Environmentr7WritingS0VyAK0K5StateV13SelectionSeedVGG_AK01_kL6Reader33_F85FC22E89B4B90838177134F16A33DBLLV14PreparedColumnVy_AQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV27UpdateRequiredCompactColumnVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV28UpdatePreferredCompactColumnVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011HoverEffectJ6Filter33_D28E134894A8AA480F6505DB71A5E521LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK012SpringLoadedJ6Filter33_0A62C33CA897E979E415FFCD1544224ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10AnyGestureVyytG_AK06EntityjE0010_A8DDB75A0N21E5F8F27A342C362DF9804LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34AccessibilityPlatformItemTransform33_71F62EDC1DAE3BBC7A74521E45BA5A66LLV_AK0jiL0AMLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK28DragReorderableChildModifier33_1B0CD5E46D60A3CA175732DDA089171CLLV0J6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK017FocusStateBindingJ6Filter33_274D264A38B51DC68ACC48A91353B7D0LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI16PlatformItemListVzc_AK0ijK14TextFieldStyleV0ijK6Writer33_F5F69C036D71EFF6D6C6B9149A31864CLLV09TransformI5ItemsVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK08ArchivediJ033_145AEADE96C7CFB715E6BB334BECE23CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK08ArchivediJ033_145AEADE96C7CFB715E6BB334BECE23CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK011SizeFittingiJ033_F613AABF2A2A0496B46514894D5116C3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK25LayoutScrollableTransform33_0E5D36A33D50442A9EDB086D241B5AD6LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK08EditMenuJ6Filter33_2554D9DFC599D14C3CD7485EE0274C2FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15DSLPlatformItemV_AM5Child33_9468037CAAEA4C3DC76B4DA596382B1FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TupleEvents33_4A246E6CAF7738080E94F3E215C262DBLLVAEV_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK012DragSnapshotJ6Filter33_397C20C14EC0CA3AE71B27913C94A14CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18MapKitPlatformItemV_AM5Child33_1669C9D793B9EC8A5ABBA18523D275D2LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK04DropJ6Filter33_C6F617A793E8E1A6C01EF8D03330D268LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI19ScrollGeometryStateVG_AK010MultimodalijK033_94927F8A97ECE008E6A618C158753C28LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK20FocusNamespaceFilter33_1F8B69996BE941D510140AD6558D8844LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK31RepresentationGeometryTransform33_AAF5C5EDB558810623EAFD84FD4E7390LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK11CLKLiveTextV07DynamiclI033_82A9C36F6AB28240033035EE39FA1A1FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK11CLKLiveTextV0liJ033_82A9C36F6AB28240033035EE39FA1A1FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yp_7SwiftUI18TransactionWrapper33_5AC2D91303C60C06D15F8A51A12C2AF4LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK0J7Updater33_968E828A5C870CF151C9DED6C252CB00LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI9SceneListV9NamespaceOAMG_AK05WriteiJ033_51ADE71499A9765E37CE861215422D5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK06ScrolliJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17HostingScrollViewC_AK07UpdatedijK033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK010ScrollViewiJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23SystemScrollLayoutStateV_AK0j12ViewAdjustedL033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06Scrolli14ChildContainerJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ScrollAnchorStorageV_AK0I18ViewDefaultAnchors33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI30ScrollTargetBehaviorPropertiesV_AK0i12ViewAdjustedkL033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15FocusableBorderVSg_AK010ScrollViewiJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK012BridgedSceneI033_A363922CEBDF47986D9772B903C8737ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_B92561C95728147E3908B4955923B8A7LLVyAK22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK22_SymbolEffectsModifierV0kH033_C350E1C6FA5CB264BFEA1DF73B9E8FA7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK31_IndefiniteSymbolEffectModifierV0lH033_1E42BCA1B3AC632454FB5BE9F835FBCELLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK32_ConditionalSymbolEffectModifierV0lH033_1E42BCA1B3AC632454FB5BE9F835FBCELLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK38ToolbarButtonDefaultForegroundModifierV05ChildH033_8121E462201269536FCC187EEBB1AA54LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_B92561C95728147E3908B4955923B8A7LLVyAK41NavigationCommonTransformBridgePropertiesVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK31ListRowInsetTransformerModifierV15TransformTraits33_E0697BB83CA4DF1B18B89ADE22D27A03LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK31TableRowForegroundStyleModifier33_B6B4A762B473EAC1C1EB2297E230B0FBLLV05ChildH0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AK016ResolvedSafeAreaI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI10Scrollable_pG_AK05UnaryH18PreferenceProviderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK18VariadicViewForestVyAK22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0L4RootVAMyAMyAMyAK0mnK18StyleConfigurationV7SidebarVAK17InjectKeyModifierVGAK8StaticIfVyAK9SemanticsV013DismissPopsInmnK5RootsVAK32_EnvironmentKeyTransformModifierVyAK7BindingVyAK16PresentationModeVGGAK13EmptyModifierVGGAK30_EnvironmentKeyWritingModifierVyAK0M5StateV13SelectionSeedVGG_AMyAMyAMyAV0I0VAZGA16_GA24_GAMyAMyAMyAV6DetailVAZGA16_GA24_GtGAK010PositionedM20DestinationProcessor33_EA42A490FE48784768DCEF705CD04CF4LLVyAR4CoreVGG_A41_Tt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15NavigationStateV5SeedsV_AK06EnsurehiJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK017FlipForRTLDisplayI033_72C5A4740F0BD901F7ED529BBDFB6899LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK0hI9Transform33_71F62EDC1DAE3BBC7A74521E45BA5A66LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI44PlatformItemNavigationSelectionStyleModifier33_A5D006CD6BDD06141BF18265B8DC3928LLV_AK04BaseM0AMLLV5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK014BottomOrnamentK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK012AccessoryBarK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK06Windowh5ItemsK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK06WindowhK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK09BottomBarK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK06TabBarK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ToolbarPlacementV4RoleOAK0H23AppearanceConfigurationVGzc_AK0hK8ModifierV010PreferenceC033_3D0A5FA8455C04EDCEBBD3CEA14D2692LLVy_AK013NavigationBarK3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK06ScaledhI033_11B01579BD3D4D341E64E9CBE4EEB235LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34WidgetAuxiliaryTextImagePreferenceVSg_AK0hi8MetadatajK6WriterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK012RowTransformI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK22_GridCellRangeModifierV0lmI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK21_GridCellSizeModifierV06MergedlI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK19_GridAnchorModifierV012AnchoredCellI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK22_GridAlignmentModifierV011AlignedCellI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK24_GridUnsizedAxesModifierV0lm4CellI033_69F00159ECCD7162D5EDC19B53BBB085LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PreferenceBridgeC_AK07ToolbarB9UtilitiesV010InvalidateI033_4997625AA627E52E7801CB66FC37C409LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI31AccessibilityAttachmentModifierV_AK0h22DetachedPropertyWriterJ033_881C460E3F5308896682D6C2898A0A47LLV04MakeiJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14ScrollGeometryV_AK0hI8Provider33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK010ScrollViewhI033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK022TransformScrollStorageI0VyAK08ResolvedL16BehaviorModifier33_FAAD6984F31E64B6B32B1CA0954A3C9BLLV0oK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK30ResolvedScrollBehaviorModifier33_FAAD6984F31E64B6B32B1CA0954A3C9BLLV07TrackedI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9SceneListV_AK020DocumentIntroductioniJ0V04MakeJ033_1BB51E5E0ADE7F6C24CE2554989BFE7BLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11HoverEffectV_AK03AnyiJ9Container33_B21176D76BE25DD1BEC9B79F48A5E748LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19NavigationAuthorityVSg9authority_AK17EnvironmentValuesV08computedL0t_AK01_I11SplitReader33_F85FC22E89B4B90838177134F16A33DBLLV17DerivedAttributesVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK24PlatformAccessibilityEnv33_71F62EDC1DAE3BBC7A74521E45BA5A66LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21AccessibilityNodeListV_AK08ArchivedI10Attachment33_145AEADE96C7CFB715E6BB334BECE23CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15HostingUIButtonC_AK06UpdateJ033_4FAA67BCBE14FB2253F273D4CB50EE62LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK015UpdateFocusableiJ033_B6A2D4E72E5722B5103497ADB7778B5FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9FocusItemV04ViewJ0V_AK06UpdatekiJ033_B6A2D4E72E5722B5103497ADB7778B5FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK20UpdateDefaultTabFillV08AdaptiveM7SymbolsVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014ScrollGeometryI8ProviderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI22NavigationTitleStorageVSgzc_AK0H11BarDefaults33_DB4085A53F7E00BD5F11F3B74D2A8BAELLV07DefaultI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27TableTemplateRowWrapperViewV_AM0lD0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14SafeAreaInsetsV_AK015ScrollViewChildhiJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK06Scrollh5ChildI033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33LimitedAvailabilityToolbarContentV15IndirectOutputs33_EADA7BFC4BEA65B524D8BEFFEAAA69A7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33OnInteractiveResizeChangeModifier33_566B660B14EA811E2CA2F74B7315FA61LLV16ActionDispatcherVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So12UIScrollViewCSg_7SwiftUI010ListScrollG8ProviderVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK014ScrollableItemiJ033_BDA524D9ADD28AA937EEF9530ADFF8B6LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK10EmptyTupleVG_AK0klJ033_4A246E6CAF7738080E94F3E215C262DBLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewIdentityV_AK13PortalGroupIDVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17HostingScrollViewC17PlatformContainerC_AK07UpdatedjkM033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I23WritingTableRowModifierV03AddI033_3FCAC41ECA223CCA916A97D58BF9A4E6LLVyAK23TypeSelectEquivalentKeyV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I23WritingTableRowModifierV03AddI033_3FCAC41ECA223CCA916A97D58BF9A4E6LLVyAK016IsDeleteDisabledI3KeyV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I23WritingTableRowModifierV03AddI033_3FCAC41ECA223CCA916A97D58BF9A4E6LLVyAK08OnInsertI3KeyV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I23WritingTableRowModifierV03AddI033_3FCAC41ECA223CCA916A97D58BF9A4E6LLVyAK08DropOntoI3KeyV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI04ViewB16BridgePropertiesV_AK06UpdateJ033_B92561C95728147E3908B4955923B8A7LLVyAK22InspectorBarManagement33_DB4085A53F7E00BD5F11F3B74D2A8BAELLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34SearchEnvironmentTransformModifierVyAK0h9SelectionK0V0J0VG_AO0jK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34SearchEnvironmentTransformModifierVyAK0h13PopoverAnchorK033_F5D9997FD051E2FDEC8F3E85E3D4B7EBLLV0J0VG_AP0jK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19SearchBoundPropertyVyAK08PlatformH13PopoverAnchorVSgG_AM04MakeJ0VyAP_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34SearchEnvironmentTransformModifierVyAK0h4TextjK033_E1458373A4858EAD6466FEBDCBAECB56LLV0J0VG_AP0jK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI30ResolvedScrollBehaviorModifier33_FAAD6984F31E64B6B32B1CA0954A3C9BLLV0J9TransformV_AN04MakejU0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34SearchEnvironmentTransformModifierVyAK0h5StateijK033_366134F59E114783B313E1ABD2826F8FLLV0J0VG_AP0jK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_7SwiftUI16SidebarListStyleV14HasSearchField33_83E996DD07E588A53C4A03D8DF51FC07LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6HStackVyAK24UIKitButtonConfigurationV5LabelVG_AA3MapVyAoRGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12_FrameLayoutV_AK017ContainerRelativeH8Modifier33_4F801DE0DF2953F27A2ED176E7D053FDLLV04MakeI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SSSg_7SwiftUI8ToString33_0318F9E71D1B630C28E63B9A7E7B941CLLVyytGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK17_UnaryViewAdaptorVyAK05EmptyK0VGAK8StaticIfVyAK8SolariumVAK31DefaultToolbarBarPocketModifierVAK0mU0VGG_AK0R4ItemV04MakeK033_0318F9E71D1B630C28E63B9A7E7B941CLLVyytAR_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11ToolbarItemVyytAK17_UnaryViewAdaptorVyAK05EmptyK0VGG_AK07DefaulthI0V15InternalContentV04MakehI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK012TemplateViewI033_BDA524D9ADD28AA937EEF9530ADFF8B6LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_AA3MapVy7SwiftUI17EnvironmentValuesVSbGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI20ContentScrollViewBoxVG_AK0iJ18PreferenceProvider33_AD27239257EBE0541C7319B19ACFE557LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14ScrollGeometryV_AK0hI8Provider33_AD27239257EBE0541C7319B19ACFE557LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26ListTemplateRowWrapperViewV_AM0lD0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yycSg_AA3MapVy7SwiftUI28PlatformButtonActionModifierVAKGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI30_LayoutDirectionBehaviorEffectV_AK5Child33_6CE72D746ED38DE4B7ABDAD3F36DB9C2LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22PinnedBarConfigurationV_AK0hI8ModifierV04MakeJ033_7D9C6F3671D8F0DED7A6FE0403BDEF6ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22PinnedBarElementEffect33_7D9C6F3671D8F0DED7A6FE0403BDEF6ALLV_AK0hiJ8ModifierV04MakeK0AMLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityAttachmentVAKE4TreeO_AmKE17DeferredTransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityAttachmentV_AK0H20PlatformViewModifierV0jkI033_4EFBB0540F336979925886EE21020A43LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI11PPTTestCaseV4NameVG_AK28AddSupportedPPTTestsModifier33_8C980AFABD1442F6AFBE944DEFCC6A05LLV0K9TestCasesVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI27FlipForRTLContainerPosition33_72C5A4740F0BD901F7ED529BBDFB6899LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17UIKitCalendarViewV_AK29AutomaticMultiDatePickerStyleV4Body33_75FB10C81DC6F9A48D7360B2E4C46C86LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_7SwiftUI18DefaultToolbarItemV15InternalContentV17WriteSearchColumnVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19TupleToolbarContentVyAK07DefaultI4ItemV08InternalJ0VG_AA3MapVyAoRGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityAttachmentV_AA3MapVyAK0H13ImageModifierVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityAttachmentV_AA5FocusVyAK10MutableBoxCyAMGAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13HoverCallbackO_AK01_H14RegionModifierV0I0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PresentationKindV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27ConditionalDraggingModifier33_1B0CD5E46D60A3CA175732DDA089171CLLV_AK020DragReorderableChildJ0AMLLV04MakeR6SourceVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27ConditionalDraggingModifier33_1B0CD5E46D60A3CA175732DDA089171CLLV_AK020DragReorderableChildJ0AMLLV04MakeR11SourceProxyVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23ResolvedSystemTextField33_B5BBFA0CB2C8606BFE1A8A9B1471B7CFLLV_AK0ijK0AMLLV17MakeRepresentableVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI44PlatformItemNavigationSelectionStyleModifier33_A5D006CD6BDD06141BF18265B8DC3928LLV_AK010LegacyBaseM0AMLLV5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28InterpolatableArchiveContent33_145AEADE96C7CFB715E6BB334BECE23CLLV_AN4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI17ArchivedViewStateVG_AK11DisplayListVAKE11HostedViewsV10PreferenceVy__AK0hI9StatesKeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AmKE11HostedViewsV07SplicedhI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24SearchFieldConfigurationV4DataVSg_AK0hij5TokenI5StyleV04MakeJ033_C57460DAF6662E0BF26F310238B3B1C0LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI33AccessibilityPlatformViewModifierV_AK06ButtonhK033_4FAA67BCBE14FB2253F273D4CB50EE62LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI33AccessibilityPlatformViewModifierV_AK04Makeh6ScrollJ033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28AccessibilityGestureModifierV_AK0hI10AttachmentVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI28AccessibilityOpacityModifierV_AK0hI10AttachmentVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI015MultiDatePickerC0VyAK09AutomatichiJ5StyleVG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI12ScaledOrigin33_11B01579BD3D4D341E64E9CBE4EEB235LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK015PrimitiveButtonH0V0I033_2218E1141B3D7C3A65B6697591AFB638LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK010SpatialTapH0VAEVG_AO0I033_4CBCFA1A8492A311E8B21AE224C33BFCLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7GesturePAKE16requiredTapCountyQrSiSgFQOyAK08ModifierH0VyAK015CoordinateSpaceH0VyAK20TappableSpatialEventVGAQyAK06RepeatH0VyAUGAK06SinglejH0VyAUGGG_Qo__AK0pjH0V5Child33_4CBCFA1A8492A311E8B21AE224C33BFCLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ListLabelLayout33_46E184F179717CA4D1066F6C1EAE4B61LLV_AK0hI5StackAMLLV5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_TraitWritingModifierVyAK030ListDisclosureGroupIndentationH3KeyVG_AK0klmnJ033_ED5C281D1096126E73599DAE31CF03C8LLV5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12SwipeActionsOAEV_AM04MakeC0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23IgnoreColorInvertEffect33_8F7EEC29F2C13A367344344FB59228B4LLV_AK021_AccessibilityIgnoresJ18ColorsViewModifierV05ChildW0AMLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26UIKitRichTextEditorAdaptorV_AK0hijK0V17MakeRepresentable33_47725443404060A3C4EDDEF9FB7C496DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17ListRepresentable33_AD27239257EBE0541C7319B19ACFE557LLVyAK22TableDataSourceAdaptorVAK19AnySelectionManagerVG_AK04MakeI0AMLLVyApRGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25NavigationSplitViewColumnV_AK06SearchhiJ8ModifierV08ResolvedL5InputVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25NavigationSplitViewColumnVSg_AK06SearchhijK8ModifierV04MakeL9CandidateVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK07ToolbarB9UtilitiesV04HostI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7WeakBoxVySo6UIViewCG_AK32UIKitFlattenedButtonHostProvider33_4FAA67BCBE14FB2253F273D4CB50EE62LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ListLabeledContent33_2076B144509B2EE42BE09458ED88A0ECLLV_AK0hiJ5StyleV5_BodyAMLLV04MakeS0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityPropertiesV_AK17BridgedAttachment33_AAF5C5EDB558810623EAFD84FD4E7390LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20UIKitTextViewAdaptor33_A90AD0DD13E6C72FFE734B65FAFF6EFFLLV_AK0hI6EditorV17MakeRepresentableAMLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11CLKLiveTextV0I11ContentView33_82A9C36F6AB28240033035EE39FA1A1FLLV_AM10ChildQueryAOLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16TimelineSchedule_pSg_AA3MapVyAK11CLKLiveTextV5Style33_82A9C36F6AB28240033035EE39FA1A1FLLVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityPropertiesV_AK0H24DetachedPropertyModifier33_881C460E3F5308896682D6C2898A0A47LLV07InitialK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_7SwiftUI31ConditionalBridgingTintModifier33_67D696EB8D485C79391F9EE8D0C23CD0LLV05ChildJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI13ContentOffset33_82EFBFF660266D0B9A51D97979C8390ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16SelectionContextV_AK09PrimitiveH17ContainerModifier33_6368CFA25CABC3E0C4568665562C417FLLV04MakehI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_VariadicViewO4TreeVy_AK16SectionContainer33_4F6C9EDF4B4BD8C3129AFB2C853C1F78LLVAK19_ConditionalContentVyAK0K18StyleConfigurationV03RawX0VAK05EmptyI0VGG_AK0K4BodyAQLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16FocusableOptionsV_AK08ResolvedI033_B6A2D4E72E5722B5103497ADB7778B5FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9FocusItemVSg_AK0H10DelegationO8Provider33_B6A2D4E72E5722B5103497ADB7778B5FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06Scrollh9ResponderI033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI27ScrollViewResponderPosition33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI10Scrollable_pG_AK0H18PreferenceProvider33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7WeakBoxVySo6UIViewCG_AK22ScrollViewHostProvider33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AK23ScrollViewChildSafeArea33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06Scrollh8AdjustedI033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI26ScrollViewAdjustedPosition33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06Scrollh12ContentFrameI033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI9SceneListV9NamespaceOAMG_AK0hI8Combiner33_A363922CEBDF47986D9772B903C8737ALLVTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI14SizeFittingMux33_F613AABF2A2A0496B46514894D5116C3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI13ViewResponderCGzc_AK06ScrolliJ6Filter33_82EFBFF660266D0B9A51D97979C8390ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21PreparedCompactColumnVSg_AK22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0h11AlternativeiJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI16PlatformItemListVzc_AK0hiJ25ViewThatFitsRepresentableV015FittingChildrenhiJ033_CE84B1BFBEAEAB6361605407E54625A3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI23ContainerBackgroundKeysO06CustomC0Vzc_AK0hI8Modifier33_126CB847089D203F408DCC1619C651B5LLV0k10PreferenceC0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI14ToolbarStorageVzc_AK0H16RemovingModifier33_E54E8F0036C88C06FCE06176D1A5D36FLLV0H18DefaultItemRemoverVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI31AccessibilityAttachmentModifierV_AK0h19CollectionViewTableI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24_AnchorTransformModifierVySo6CGRectVSgAK33SharingActivityPickerPresentation33_ED8966F32E79CAE8636A59B86DBA4A31LLV3KeyVG_AK0lmnJ0V5ChildARLLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI17UIKitDialogBridgeC18UpdateAlertActions33_CE41526C50FA4ACF6DE8F3D533927AA2LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK013TemporalStateiJ0025_4352BA3B6EC249A24F6BF0A1S6A4160DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI04ViewB16BridgePropertiesV_AK06UpdateJ033_B92561C95728147E3908B4955923B8A7LLVyAK0K25BridgesToAllowedBehaviorsVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI04ViewB16BridgePropertiesV_AK06UpdateJ033_B92561C95728147E3908B4955923B8A7LLVyAK025NavigationCommonTransformiJ0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK18UIKitButtonAdaptorVyAK012PlatformItemI033_64A26C7A8406856A733B1A7B593971F7LLVGAK31AccessibilityAttachmentModifierVG_AK0j6Systemk13ConfigurationY0V04MakemL0AQLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011UnsupportedhI033_F0196C17270D74A1F1A35F1926215FB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK14_OpacityEffectVAK09PinnedBarK033_7D9C6F3671D8F0DED7A6FE0403BDEF6ALLVG_AK0lM8ModifierV04MakeK0AQLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI15FocusableBoundsVG_AK0hI9TransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI16FeedbackLocation33_C9541C03AF81FECFD19A57A1BB81CE81LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25NavigationSplitParametersV_AK01_hI6Reader33_F85FC22E89B4B90838177134F16A33DBLLV06CustomJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListVAKE15HostedViewStateV0K4InfoV_AO05FetchK033_A20DF47D739D7FD0278716FD8B020A7BLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI04ViewB16BridgePropertiesV_AK0hbiJ7FeatureV04MakeiJ033_740EB2CA70C6E534C8611E22FBE70272LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI20DateSequenceTimelineCG_AK08AlwaysOnJ16PreferenceWriterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7WeakBoxVySo8UIButtonCGSg_AK26BridgedPopUpButtonProviderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14ToolbarStorageV10SearchItemVSg_AK010PreferencecA0VyAK0J3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22NavigationTitleStorageVSg_AK010PreferencecA0VyAK0hI3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14ToolbarStorageV_AK010PreferencecA0VyAK0H3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27WidgetAuxiliaryViewMetadataVSg_AK0H25CurvesContentBaseModifierV0h6CurvedM6Writer33_E1F3D42E8FF818641CE51A2E172ADA13LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK06ButtonhI033_4FAA67BCBE14FB2253F273D4CB50EE62LLVyAK15HostingUIButtonCGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23AccessibilityPropertiesV_AK0H24DetachedPropertyModifier33_881C460E3F5308896682D6C2898A0A47LLV06MergedI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So6CGRectV_7SwiftUI14FocusItemFrame33_10718FCC504A33B6994038B6E6E29C50LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10Scrollable_p_AK0H8Provider33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AK26ScrollViewAdjustedSafeArea33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So6CGSizeV_7SwiftUI32ScrollViewRTLAlignmentAdjustment33_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI47CustomizableDocumentViewControllerRepresentableV_AK08Resolvedi15GroupsIntroRootJ0V04MakeL033_1BB51E5E0ADE7F6C24CE2554989BFE7BLLVTt1g5;
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33LimitedAvailabilityToolbarContentV15IndirectOutputs33_EADA7BFC4BEA65B524D8BEFFEAAA69A7LLVTt1g5(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    v3 = AGSubgraphGetGraph();
    v4 = AGSubgraphCreate();

    v5 = *(a1 + 120);
    *(a1 + 120) = v4;
    v7 = v4;

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v6 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()(a1);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK014ScrollableItemiJ033_BDA524D9ADD28AA937EEF9530ADFF8B6LLVTt1g5(unsigned int *a1)
{
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  lazy protocol witness table accessor for type ScrollableItemLayoutComputer and conformance ScrollableItemLayoutComputer();
  lazy protocol witness table accessor for type ScrollableItemLayoutComputer._LayoutEngine and conformance ScrollableItemLayoutComputer._LayoutEngine();
  return StatefulRule<>.update<A>(to:)();
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33OnInteractiveResizeChangeModifier33_566B660B14EA811E2CA2F74B7315FA61LLV16ActionDispatcherVTt1g5(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *WeakValue;
    if (v3 != *(a1 + 12))
    {
      Value = AGGraphGetValue();
      v6 = *Value;
      v5 = Value[1];
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      *(v7 + 32) = v3;
      swift_retain_n();
      static Update.enqueueAction(reason:_:)();

      *(a1 + 12) = v3;
    }
  }
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI14SizeFittingMux33_F613AABF2A2A0496B46514894D5116C3LLVTt1g5(uint64_t *a1)
{
  AGGraphGetValue();
  ViewSize.proposal.getter();
  v3[2] = a1;
  v3[3] = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;

  SizeFittingState.applyChildren(selectLast:to:)(1, partial apply for closure #1 in SizeFittingMux.updateValue(), v3);

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK10EmptyTupleVG_AK0klJ033_4A246E6CAF7738080E94F3E215C262DBLLVTt1g5(unsigned int *a1)
{
  lazy protocol witness table accessor for type EmptyTuplePhase and conformance EmptyTuplePhase();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    if ((a1[2] & 1) == 0)
    {
      type metadata accessor for [EventID : EventType](0);
      if (*(*AGGraphGetValue() + 16))
      {
        *(a1 + 8) = 1;
      }
    }

    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for GesturePhase<EmptyTuple>, &type metadata for EmptyTuple, MEMORY[0x1E697DE58]);
    return AGGraphSetOutputValue();
  }

  return result;
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI33LimitedAvailabilityCommandContentV15IndirectOutputs33_345D0464CE5C92DE3AB73ADEFB278856LLVTt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!*(a1 + 96))
  {
    v6 = AGSubgraphGetGraph();
    v7 = AGSubgraphCreate();

    v8 = *(a1 + 96);
    *(a1 + 96) = v7;
    v10 = v7;

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    a3(a1);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewIdentityV_AK13PortalGroupIDVTt1g5(unsigned int *a1)
{
  AGGraphGetValue();
  ViewIdentity.Tracker.update(for:)();
  return AGGraphSetOutputValue();
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI17UIKitDialogBridgeC18UpdateAlertActions33_CE41526C50FA4ACF6DE8F3D533927AA2LLVTt1g5(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    AGGraphGetValue();

    UIKitDialogBridge.updateAlertActionsEnabled(_:)(v2);
  }

  return result;
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI13ViewResponderCGzc_AK06ScrolliJ6Filter33_82EFBFF660266D0B9A51D97979C8390ALLVTt1g5(uint64_t *a1)
{
  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17HostingScrollViewC17PlatformContainerC_AK07UpdatedjkM033_2827C9FDBC03BB2C61476E3A694FFF5DLLVTt1g5(unsigned int *a1)
{
  if (!*(a1 + 1))
  {
    type metadata accessor for HostingScrollView();
    v2 = *AGGraphGetValue();
    v3 = objc_allocWithZone(type metadata accessor for HostingScrollView.PlatformContainer());
    v4 = v2;
    v6 = specialized HostingScrollView.PlatformContainer.init(scrollView:)(v4, v5);

    *(a1 + 1) = v6;
  }

  type metadata accessor for HostingScrollView.PlatformContainer();
  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

uint64_t partial apply for closure #1 in Attribute.init(type:)@<X0>(_DWORD *a2@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput()
{
  result = lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput;
  if (!lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ViewInputs.ContainingScrollViewInput, &type metadata for _ViewInputs.ContainingScrollViewInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput;
  if (!lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ViewInputs.ContainingScrollViewInput, &type metadata for _ViewInputs.ContainingScrollViewInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput);
  }

  return result;
}