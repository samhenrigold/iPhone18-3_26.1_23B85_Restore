uint64_t getEnumTagSinglePayload for BorderedButtonColorSpec.LabelStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double destroy for BorderedButtonColorSpec.LabelStyle(unint64_t *a1)
{
  if (*a1 >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t *sub_18BEB6DD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = a1;

    a1 = v4;
  }

  *a1 = v3;
  return a1;
}

uint64_t storeEnumTagSinglePayload for BorderedButtonColorSpec.LabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void protocol witness for ShapeStyle._apply(to:) in conformance BorderedButtonColorSpec.LabelStyle(uint64_t a1, __n128 a2)
{
  v3 = *v2;
  if (*v2)
  {
    if (v3 == 1)
    {
      v4 = 2;
      goto LABEL_6;
    }

    if (v3 == 2)
    {
      v4 = 3;
LABEL_6:

      MEMORY[0x1EEDE18C8](a1, v4);
      return;
    }

    Color._apply(to:)();
  }

  else
  {
    static Color.white.getter();
    Color._apply(to:)();
  }
}

void UIHostingContentView.bounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x710);
  v20[0] = *((*MEMORY[0x1E69E7D40] & *v4) + 0x700);
  v20[1] = v9;
  v10 = type metadata accessor for UIHostingContentView(0, v20);
  v21.receiver = v4;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_bounds);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19.receiver = v4;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, sel_setBounds_, a1, a2, a3, a4);
  UIHostingContentView.bounds.didset(v12, v14, v16, v18);
}

void @objc UIHostingContentView.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingContentView.bounds.setter(a2, a3, a4, a5);
}

void UIHostingContentView.bounds.didset(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  if (v8 != a3 || v7 != a4)
  {
    v10 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

void FillShapeStyle._apply(to:)(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v23 = v3;
  v24 = v2;

  EnvironmentValues.backgroundMaterial.getter();

  v4 = *(&v32[0] + 1);
  if (BYTE8(v32[0]) != 0xFF)
  {
    v17 = *&v32[0];
    *(a1 + 105) = 0;
    v23 = v17;
    LOBYTE(v24) = v4;
    HIDWORD(v24) = HIDWORD(v4);
    ForegroundMaterialStyle._apply(to:)();
    outlined consume of Material.ID(v23, v24);
    return;
  }

  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      goto LABEL_31;
    }

    if (v8 == 4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
LABEL_21:
      *(a1 + 24) = v8;
      goto LABEL_22;
    }

    if (v7 | v5 | v6)
    {
LABEL_31:
      v21 = AnyShapeStyle.init<A>(_:)();
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v21;
      v22 = 2;
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      v22 = 4;
    }

    *(a1 + 40) = v22;
    return;
  }

  if (*(a1 + 24))
  {
    if (v8 == 1)
    {
      if (v5 == v7)
      {
        return;
      }

      if (v7 < v5)
      {
        __break(1u);
      }

      else if (v5 < v7)
      {
        do
        {
          v9 = v5 + 1;
          v10 = *(a1 + 64);
          v11 = *(a1 + 80);
          v12 = *(a1 + 32);
          v33 = *(a1 + 48);
          v34 = v10;
          v35[0] = v11;
          *(v35 + 12) = *(a1 + 92);
          v13 = *(a1 + 16);
          v32[0] = *a1;
          v32[1] = v13;
          v32[2] = v12;
          *&v27[24] = *(&v13 + 1);
          v28 = v12;
          v29 = v33;
          v30 = v10;
          v31[0] = v11;
          *(v31 + 12) = *(v35 + 12);
          *v27 = v6;
          *&v27[8] = xmmword_18CD633F0;
          v27[24] = 1;
          v14 = 3;
          if (v5 < 3)
          {
            v14 = v5;
          }

          if (v5 >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v25[0] = v29;
          outlined init with copy of _ShapeStyle_Shape(v32, &v23);

          FillShapeStyle.Kind.resolve(in:)(v25, v15);

          Color._apply(to:)();

          _ShapeStyle_Shape.stylePack.getter();
          LOBYTE(v25[0]) = v6;
          _ShapeStyle_Pack.subscript.getter();

          v16 = _ShapeStyle_Shape.stylePack.modify();
          _ShapeStyle_Pack.subscript.setter();
          v16(v25, 0);
          v25[4] = v30;
          v26[0] = v31[0];
          *(v26 + 12) = *(v31 + 12);
          v25[0] = *v27;
          v25[1] = *&v27[16];
          v25[2] = v28;
          v25[3] = v29;
          outlined destroy of _ShapeStyle_Shape(v25);
          ++v5;
        }

        while (v7 != v9);
        return;
      }

      __break(1u);
      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    LOBYTE(v8) = 2;
    goto LABEL_21;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
LABEL_22:
  v18 = 3;
  if (v6 < 3)
  {
    v18 = v6;
  }

  if (v6 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v20;

  FillShapeStyle.Kind.resolve(in:)(&v23, v19);

  Color._apply(to:)();
}

double _IndefiniteSymbolEffectModifier.EffectEnvironment.value.getter@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v21[1] = a2;
  v22 = a3;
  v3 = type metadata accessor for SymbolEffectOptions();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolEffectConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v12 = Value[1];
  *&v43 = *Value;
  *(&v43 + 1) = v12;
  v13 = type metadata accessor for _IndefiniteSymbolEffectModifier(0);

  if (*(AGGraphGetValue() + *(v13 + 24)) == 1)
  {
    v14 = AGGraphGetValue();
    (*(v8 + 16))(v10, v14, v7);
    v15 = AGGraphGetValue();
    (*(v4 + 16))(v6, v15 + *(v13 + 20), v3);
    _SymbolEffect.init(config:options:)(v10, v6, &v34);
    v16 = v36;
    v17 = v37;
    if ((~v36 & 0xFFFFFFFE) != 0 || (v37 & 0xFEFE) != 2)
    {
      v19 = v34;
      v18 = v35;
      v33 = v40 & 1;
      v32 = v42 & 1;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v28 = v39;
      v29 = v40 & 1;
      v30 = v41;
      v31 = v42 & 1;
      EnvironmentValues.appendSymbolEffect(_:for:)();
      outlined consume of SymbolEffect?(v19, v18, v16, v17);
    }
  }

  result = *&v43;
  *v22 = v43;
  return result;
}

uint64_t assignWithCopy for PlainButtonStyleBase(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = v2[2];
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v2;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

uint64_t View.accessibilityAction(named:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3 & 1;
  v23 = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v18 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  View.accessibilityAction<A>(_:label:image:_:)(&v20, 0, 0, 0, 0, 0, thunk for @escaping @callee_guaranteed () -> ()partial apply, v17, a9, a7, &type metadata for AccessibilityVoidAction, a8, v18);

  return outlined consume of AccessibilityActionKind.ActionKind(v20, v21, v22, v23);
}

double specialized static ContentMarginModifier.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 49);
  if (!*Value)
  {
    return *&v5;
  }

  if (*(Value + 65) > 1u)
  {
    if (*(Value + 65) == 2)
    {
      v6 = a2[1];
      if (v6)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);

        PropertyList.Tracker.value<A>(_:for:)();

        if ((v4 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);
        PropertyList.subscript.getter();
        if ((v4 & 1) == 0)
        {
LABEL_16:
          if ((v4 & 2) != 0)
          {
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            if ((v4 & 4) == 0)
            {
LABEL_18:
              if ((v4 & 8) == 0)
              {
LABEL_20:
                v7 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>;
                v8 = &unk_1EFFABFC0;
                v9 = &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey;
                type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);
                v10 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>;
                goto LABEL_37;
              }

LABEL_19:
              OptionalEdgeInsets.subscript.getter();
              OptionalEdgeInsets.subscript.setter();
              goto LABEL_20;
            }
          }

          else if ((v4 & 4) == 0)
          {
            goto LABEL_18;
          }

          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 8) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      OptionalEdgeInsets.subscript.getter();
      OptionalEdgeInsets.subscript.setter();
      goto LABEL_16;
    }

    v6 = a2[1];
    if (v6)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);

      PropertyList.Tracker.value<A>(_:for:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);
      PropertyList.subscript.getter();
      if ((v4 & 1) == 0)
      {
LABEL_32:
        if ((v4 & 2) != 0)
        {
          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 4) == 0)
          {
LABEL_34:
            if ((v4 & 8) == 0)
            {
LABEL_36:
              v7 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>;
              v8 = &unk_1EFFABFA0;
              v9 = &protocol witness table for EnvironmentValues.ToolbarMarginKey;
              type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);
              v10 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>;
              goto LABEL_37;
            }

LABEL_35:
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            goto LABEL_36;
          }
        }

        else if ((v4 & 4) == 0)
        {
          goto LABEL_34;
        }

        OptionalEdgeInsets.subscript.getter();
        OptionalEdgeInsets.subscript.setter();
        if ((v4 & 8) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    goto LABEL_32;
  }

  if (*(Value + 65))
  {
    v6 = a2[1];
    if (v6)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);

      PropertyList.Tracker.value<A>(_:for:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);
      PropertyList.subscript.getter();
      if ((v4 & 1) == 0)
      {
LABEL_24:
        if ((v4 & 2) != 0)
        {
          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 4) == 0)
          {
LABEL_26:
            if ((v4 & 8) == 0)
            {
LABEL_28:
              v7 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>;
              v8 = &type metadata for EnvironmentValues.ScrollContentContentMarginKey;
              v9 = &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey;
              type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);
              v10 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>;
              goto LABEL_37;
            }

LABEL_27:
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            goto LABEL_28;
          }
        }

        else if ((v4 & 4) == 0)
        {
          goto LABEL_26;
        }

        OptionalEdgeInsets.subscript.getter();
        OptionalEdgeInsets.subscript.setter();
        if ((v4 & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    goto LABEL_24;
  }

  v6 = a2[1];
  if (v6)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);

    PropertyList.Tracker.value<A>(_:for:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);
  PropertyList.subscript.getter();
  if (v4)
  {
LABEL_6:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OptionalEdgeInsets.subscript.getter();
  OptionalEdgeInsets.subscript.setter();
  if ((v4 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  if ((v4 & 8) != 0)
  {
LABEL_10:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
  }

LABEL_11:
  v7 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>;
  v8 = &unk_1EFFAC000;
  v9 = &protocol witness table for EnvironmentValues.AutomaticContentMarginKey;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);
  v10 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>;
LABEL_37:
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(v10, v7, v8, v9);

  PropertyList.subscript.setter();
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return *&v5;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput()
{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(255);
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>);
    }
  }
}

void type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t associated type witness table accessor for View.Body : View in ResolvedBorderedButton(uint64_t a1)
{
  return swift_getOpaqueTypeConformance2();
}

{
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for HStack<ButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>);
    }
  }
}

void type metadata accessor for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for _ShapeView<ResolvedBorderShape, Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, Color>)
  {
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>, type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697EBB8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<ResolvedBorderShape, Color>, MEMORY[0x1E697DB78]);
    v5[1] = MEMORY[0x1E69802C0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>)
  {
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E6980AB8]);
    result = swift_getWitnessTable(MEMORY[0x1E6980AC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable(MEMORY[0x1E6980468], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable(MEMORY[0x1E6980468], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ClipEffect<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69805E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

uint64_t implicit closure #1 in static KeyboardShortcutBindingBehavior._makeView(modifier:inputs:body:)(int a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a1;
  type metadata accessor for KeyboardShortcutBindingBehavior(255, a4, a5, a4);
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[2];
  v35 = a2[3];
  v36 = v10;
  v37[0] = v11;
  *(v37 + 12) = *(a2 + 92);
  v13 = a2[1];
  v32 = *a2;
  v33 = v13;
  v34 = v12;
  *v29 = &type metadata for TextPlatformItemListFlags;
  *&v29[8] = a4;
  *&v29[16] = &protocol witness table for TextPlatformItemListFlags;
  *&v29[24] = a5;
  v14 = type metadata accessor for PlatformItemListGenerator(0, v29);
  (*(*(v14 - 8) + 16))(v29, a2, v14);
  if (one-time initialization token for keyboardShortcut != -1)
  {
    swift_once();
  }

  v27 = static CachedEnvironment.ID.keyboardShortcut;
  swift_beginAccess();
  _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for KeyboardShortcut?, &type metadata for KeyboardShortcut, MEMORY[0x1E69E6720]);
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v16 = *(a3 + 48);
  *&v29[32] = *(a3 + 32);
  *&v29[48] = v16;
  *&v29[64] = *(a3 + 64);
  *&v29[80] = *(a3 + 80);
  v17 = *(a3 + 16);
  *v29 = *a3;
  *&v29[16] = v17;
  v18 = _ViewInputs.isEnabled.getter();
  *(&v31[3] + 4) = v35;
  *(&v31[4] + 4) = v36;
  *(&v31[5] + 4) = v37[0];
  v31[6] = *(v37 + 12);
  *(v31 + 4) = v32;
  *(&v31[1] + 4) = v33;
  *(&v31[2] + 4) = v34;
  *&v29[52] = v31[3];
  *&v29[68] = v31[4];
  *&v29[84] = v31[5];
  *&v29[100] = *(v37 + 12);
  *&v29[4] = v31[0];
  *&v29[20] = v31[1];
  v19 = *(a3 + 56);
  *v29 = v9;
  v20 = *MEMORY[0x1E698D3F8];
  *&v29[36] = v31[2];
  *&v29[116] = v15;
  *&v29[120] = v18;
  *&v29[124] = v19;
  v30 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v22 = type metadata accessor for BindKeyboardShortcutItems(0, a4, a5, v21);
  v26[2] = v22;
  v26[3] = swift_getWitnessTable(protocol conformance descriptor for BindKeyboardShortcutItems<A>, v22);
  type metadata accessor for Attribute<[KeyboardShortcutBinding]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_25, v26, v22, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  v37[1] = *&v29[96];
  v37[2] = *&v29[112];
  v38 = v30;
  v34 = *&v29[32];
  v35 = *&v29[48];
  v36 = *&v29[64];
  v37[0] = *&v29[80];
  v32 = *v29;
  v33 = *&v29[16];
  (*(*(v22 - 8) + 8))(&v32, v22);
  return v27;
}

id specialized static KitCoreUINamedColorProvider.effectiveCGColor(cuiColor:in:)(void *a1, void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  result = [a1 systemColorName];
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = Selector.init(_:)();
    type metadata accessor for UIColor();
    v7 = [swift_getObjCClassFromMetadata() respondsToSelector_];
    result = 0;
    if (v7)
    {
      v8[0] = v2;
      v8[1] = v3;
      return specialized static KitCoreUINamedColorProvider.withAppearance(cuiColor:environment:_:)(v8, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

id specialized UICollectionViewListCoordinator.__allocating_init(dataSource:selection:editMode:transaction:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *(a3 + 16);
  *&v9[*((*MEMORY[0x1E69E7D40] & *v9) + 0x348)] = 0;
  v12 = *a3;
  v13 = v10;
  return specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(a1, a2, &v12, a4);
}

uint64_t closure #1 in closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter(void *a1, void *a2)
{

  MEMORY[0x18D00CC30](v3);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(255, &lazy cache variable for type metadata for [SectionAccumulator.Item], MEMORY[0x1E697F490], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Range<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSnySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSnySiGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E6530], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for PopoverItemStateProvider(uint64_t a1)
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

void PlatformFallbackButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(0);
  v11 = &a2[*(v10 + 36)];
  *v11 = 0;
  v11[8] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>(0);
  v13 = &a2[*(v12 + 36)];
  *v13 = 0;
  v13[8] = 0;
}

void ConditionallyBorderedStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_1(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0);
  v13 = &a2[*(v12 + 36)];
  *v13 = KeyPath;
  v13[8] = 0;
  *(v13 + 2) = v11;
  v13[24] = 0;
}

uint64_t AccessibilityButtonBorderModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)))
  {
    specialized Environment.wrappedValue.getter(v3, v4, (&v20 + 1));
    v7 = 20.0;
    v8 = 15.0;
    if (BYTE1(v20) - 3 >= 2)
    {
      v8 = 7.0;
      v7 = 12.0;
    }

    if (BYTE1(v20) >= 2u)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5.0;
    }

    if (BYTE1(v20) >= 2u)
    {
      v10 = v7;
    }

    else
    {
      v10 = 10.0;
    }

    specialized Environment.wrappedValue.getter(v5, v6, &v20);
    v11 = 0.0;
    if (v20 - 7 <= 4)
    {
      v11 = dbl_18CDA2808[(v20 - 7)];
    }

    v12 = v10 + v11;
    v13 = v9;
    v14 = v12;
  }

  else
  {
    static EdgeInsets.zero.getter();
    v9 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  result = static Edge.Set.all.getter();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  return result;
}

void ButtonShapeEffect.EffectState.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  if (AGGraphGetOutputValue())
  {
    if ((v4 & 1) == 0)
    {
      return;
    }

    v6 = *(v1 + 144);
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      return;
    }
  }

  v7 = *(v1 + 136);
  if (v7)
  {
    if (*(v1 + 124) == 1)
    {
      v8 = v7;
      if (*(v1 + 116))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = v7;
      AGGraphResetIndirectAttribute();
      if (*(v1 + 116))
      {
LABEL_11:
        AGSubgraphRef.willInvalidate(isInserted:)(1);
        AGSubgraphInvalidate();

        *(v1 + 136) = 0;
        goto LABEL_12;
      }
    }

    AGGraphResetIndirectAttribute();
    goto LABEL_11;
  }

LABEL_12:
  if (v5)
  {
    v10 = AGSubgraphGetGraph();
    v11 = AGSubgraphCreate();

    AGSubgraphAddChild();
    *(v1 + 136) = v11;
    v12 = v11;
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    ButtonShapeEffect.EffectState.makeOutputs()();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }

  *(v1 + 144) = v5;
}

uint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *_s7SwiftUI4ViewPAAE26readNavigationDestinations8position8isActive6readerQrAA0e5StackC8PositionVSg_Sbqd__mtAA0E17DestinationReaderRd__lFySayAA0eM12ResolverBaseCGzcfU_TA_0(void *result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = result;

    *v2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for PPTTestCase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MatchedTransitionSourceConfiguration.clipShape(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  return MatchedTransitionSourceConfiguration.concat<A>(_:)(&v6, a2, &unk_1EFFE4C18, a3, &protocol witness table for CornerConfiguration, a4);
}

uint64_t MatchedTransitionSourceConfiguration.concat<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return CombinedMatchedTransitionSourceConfiguration.init(a:b:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t CombinedMatchedTransitionSourceConfiguration.init(a:b:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for CombinedMatchedTransitionSourceConfiguration(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

__n128 protocol witness for MatchedTransitionSourceConfiguration._update(configuration:) in conformance CornerConfiguration(uint64_t a1)
{
  *(a1 + 56) = v1[1].n128_u8[0];
  result = *v1;
  *(a1 + 40) = *v1;
  return result;
}

uint64_t MatchedTransitionSourceSourceMarkingEffect.needsUpdateFor(newValue:)(uint64_t a1)
{
  outlined init with copy of _Benchmark(a1, v19);
  type metadata accessor for PlatformGroupFactory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v18, 0, 137);
  }

  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v1, v17);
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v18, v8);
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v17, v10);
  if (!v9)
  {
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
    if (!v11)
    {
      outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
      v3 = 0;
      goto LABEL_10;
    }

LABEL_9:
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for (MatchedTransitionSourceSourceMarkingEffect?, MatchedTransitionSourceSourceMarkingEffect?));
    v3 = 1;
    goto LABEL_10;
  }

  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v8, v7);
  if (!v11)
  {
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v7);
    goto LABEL_9;
  }

  v5[6] = v15;
  v6[0] = v16[0];
  *(v6 + 9) = *(v16 + 9);
  v5[2] = v11;
  v5[3] = v12;
  v5[4] = v13;
  v5[5] = v14;
  v5[0] = v10[0];
  v5[1] = v10[1];
  v2 = specialized static MatchedTransitionSourceSourceMarkingEffect.== infix(_:_:)(v7, v5);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v5);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v7);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  v3 = v2 ^ 1;
LABEL_10:
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v18, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  return v3 & 1;
}

unint64_t type metadata accessor for PlatformGroupFactory()
{
  result = lazy cache variable for type metadata for PlatformGroupFactory;
  if (!lazy cache variable for type metadata for PlatformGroupFactory)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformGroupFactory);
  }

  return result;
}

uint64_t outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?()
{
  if (!lazy cache variable for type metadata for MatchedTransitionSourceSourceMarkingEffect?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MatchedTransitionSourceSourceMarkingEffect?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for MatchedTransitionSourceSourceMarkingEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized static MatchedTransitionSourceSourceMarkingEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((MEMORY[0x18D00E7E0](a1 + 8, a2 + 8) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      goto LABEL_24;
    }

    v5 = COERCE_FLOAT(*(a1 + 48)) == COERCE_FLOAT(*(a2 + 48)) && COERCE_FLOAT(HIDWORD(*(a1 + 48))) == COERCE_FLOAT(HIDWORD(*(a2 + 48)));
    v6 = v5 && COERCE_FLOAT(*(a1 + 56)) == COERCE_FLOAT(*(a2 + 56));
    if (!v6 || COERCE_FLOAT(HIDWORD(*(a1 + 56))) != COERCE_FLOAT(HIDWORD(*(a2 + 56))))
    {
      goto LABEL_24;
    }
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    goto LABEL_24;
  }

  if (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    goto LABEL_24;
  }

  if (*(a1 + 112))
  {
    if (*(a2 + 112))
    {
      goto LABEL_34;
    }
  }

  else if ((*(a2 + 112) & 1) == 0)
  {
    v9 = 0;
    v10 = *(a1 + 96);
    v11 = *(a2 + 96);
    if (*&v10 != *&v11)
    {
      return v9 & 1;
    }

    if (*(&v10 + 1) != *(&v11 + 1))
    {
      return v9 & 1;
    }

    v12 = *(a1 + 104);
    v13 = *(a2 + 104);
    if (*&v12 != *&v13 || *(&v12 + 1) != *(&v13 + 1))
    {
      return v9 & 1;
    }

LABEL_34:
    v9 = 0;
    if (*(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128))
    {
      v9 = *(a1 + 136) ^ *(a2 + 136) ^ 1;
    }

    return v9 & 1;
  }

LABEL_24:
  v9 = 0;
  return v9 & 1;
}

uint64_t outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void NavigationAuthority.flushRequestQueue()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    memmove(__dst, v2 + 2, 0x9AuLL);
    if (getEnumTag for AccessibilityActionCategory.Category(__dst) == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = v19;
    v0 = v2[23];
    swift_getKeyPath();
    v17[0] = v0;
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v0 + 2);

    swift_beginAccess();
    if (!v2[22])
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v17[0] = v2[22];
    swift_bridgeObjectRetain_n();
    v0 = 0;
    specialized MutableCollection<>.sort(by:)(v17);
    v14 = v4;
    v15 = v3;

    if (!v2[22])
    {
LABEL_22:
      __break(1u);

      __break(1u);
      return;
    }

    v5 = v17[0];
    v2[22] = MEMORY[0x1E69E7CC0];

    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 32);
      while (v7 < *(v5 + 2))
      {
        outlined init with copy of NavigationRequest(v8, v17);
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = v9;
          v11 = *(v9 + 200);
          if (!v11)
          {
            goto LABEL_18;
          }

          swift_beginAccess();
          memmove(v16, (v10 + 16), 0x9AuLL);
          if (getEnumTag for AccessibilityActionCategory.Category(v16) == 1)
          {
            goto LABEL_19;
          }

          NavigationState.update(for:controllerCache:)(v17, v11);
          swift_endAccess();
        }

        outlined destroy of NavigationRequest(v17);
        ++v7;
        v8 += 168;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:

    v12 = NavigationStateHost.navigationState.modify(v16);
    memmove(v17, v13, 0x9AuLL);
    if (getEnumTag for AccessibilityActionCategory.Category(v17) != 1)
    {
      NavigationState.finalizeFlush()();
    }

    (v12)(v16, 0);
    $defer #1 () in NavigationAuthority.flushRequestQueue()(v2, v15, v14);
  }
}

uint64_t lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 32;
      do
      {
        v12 = *&v2[16 * v10 + 32];
        v13 = v9;
        v14 = v11;
        do
        {
          if (v12 > *v14)
          {
            break;
          }

          v15 = *(v14 + 3);
          *(v14 + 1) = *v14;
          *v14 = v12;
          *(v14 + 1) = v15;
          v14 -= 16;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 16;
        --v9;
      }

      while (v10 != v3);
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v17, v18, v19, v6, v5);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = v2 + 48;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = *&v2[16 * i + 40];
        v13 = v10;
        v14 = v9;
        do
        {
          if (v12 > *(v14 - 1))
          {
            break;
          }

          v15 = *v14;
          *v14 = *(v14 - 1);
          *(v14 - 1) = v12;
          *(v14 - 2) = v15;
          v14 -= 2;
        }

        while (!__CFADD__(v13++, 1));
        v9 += 16;
        --v10;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v17, v18, v19, v6, v5);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = v2 + 72;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = *&v2[56 * i + 32];
        v13 = v10;
        v14 = v9;
        do
        {
          if (v12 >= *(v14 - 5))
          {
            break;
          }

          v15 = *(v14 + 24);
          v16 = *(v14 + 40);
          v17 = *(v14 + 56);
          v18 = *(v14 - 40);
          v19 = *(v14 - 8);
          *(v14 + 2) = *(v14 - 24);
          *(v14 + 3) = v19;
          *(v14 + 8) = *(v14 + 1);
          *(v14 - 5) = v12;
          *(v14 - 2) = v15;
          *(v14 - 1) = v16;
          *v14 = v17;
          *(v14 + 1) = v18;
          v14 -= 56;
        }

        while (!__CFADD__(v13++, 1));
        v9 += 56;
        --v10;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v8 + 32;
    v21[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v21, v22, v23, v6, v5);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v5 = result;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v2 / 2;
      }

      v8[0] = v6 + 32;
      v8[1] = v2 / 2;
      v7 = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v5 = result;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v2 / 2;
      }

      v8[0] = v6 + 32;
      v8[1] = v2 / 2;
      v7 = v6;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 168 * a3;
    v7 = result - a3;
LABEL_5:
    v20 = v7;
    v46 = v6;
    while (2)
    {
      outlined init with copy of NavigationRequest(v6, &v35);
      v8 = (v6 - 168);
      outlined init with copy of NavigationRequest(v6 - 168, v34);
      outlined init with copy of NavigationRequest.Action(&v35, &v21);
      v9 = 25;
      switch(v33)
      {
        case 0:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 5;
          goto LABEL_30;
        case 1:
        case 4:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 20;
          goto LABEL_30;
        case 2:
          _s2os6LoggerVSgWOhTm_2(&v21, type metadata accessor for Binding<AnyListSelection>);
          v9 = 20;
          goto LABEL_30;
        case 3:
        case 5:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 15;
          goto LABEL_30;
        case 6:
          outlined destroy of NavigationRequest.Action(&v21);
          goto LABEL_22;
        case 7:
LABEL_22:
          v9 = 30;
          goto LABEL_30;
        case 8:
          goto LABEL_30;
        case 9:
          v9 = 60;
          goto LABEL_30;
        case 10:
        case 17:

          outlined destroy of AnyNavigationLinkPresentedValue(&v21);
          v9 = 40;
          goto LABEL_30;
        case 13:

          outlined destroy of NavigationLinkSelectionIdentifier(&v22);
          v9 = 40;
          goto LABEL_30;
        case 14:

          outlined destroy of NavigationLinkSelectionIdentifier(&v22);
          goto LABEL_24;
        case 18:

          outlined destroy of NavigationLinkSelectionIdentifier(&v23);
          v9 = 50;
          goto LABEL_30;
        case 19:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 50;
          goto LABEL_30;
        case 20:
          goto LABEL_28;
        case 21:
          outlined destroy of NavigationRequest.Action(&v21);
LABEL_24:
          v9 = 80;
          goto LABEL_30;
        case 22:
          if (v26 | v21 | v27 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22)
          {
            v10 = v27 | v26 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22;
            if (v21 != 1 || v10)
            {
              if (v21 != 4 || v10)
              {
LABEL_29:
                outlined destroy of NavigationRequest.Action(&v21);
                v9 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
LABEL_28:
                v9 = 70;
              }
            }

            else
            {
              v9 = 6;
            }
          }

          else
          {
            v9 = 0;
          }

LABEL_30:
          outlined init with copy of NavigationRequest.Action(v34, &v21);
          v11 = 25;
          switch(v33)
          {
            case 0:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 5;
              goto LABEL_54;
            case 1:
            case 4:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 20;
              goto LABEL_54;
            case 2:
              _s2os6LoggerVSgWOhTm_2(&v21, type metadata accessor for Binding<AnyListSelection>);
              v11 = 20;
              goto LABEL_54;
            case 3:
            case 5:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 15;
              goto LABEL_54;
            case 6:
              outlined destroy of NavigationRequest.Action(&v21);
              goto LABEL_46;
            case 7:
LABEL_46:
              v11 = 30;
              goto LABEL_54;
            case 8:
              goto LABEL_54;
            case 9:
              v11 = 60;
              goto LABEL_54;
            case 10:
            case 17:

              outlined destroy of AnyNavigationLinkPresentedValue(&v21);
              v11 = 40;
              goto LABEL_54;
            case 13:

              outlined destroy of NavigationLinkSelectionIdentifier(&v22);
              v11 = 40;
              goto LABEL_54;
            case 14:

              outlined destroy of NavigationLinkSelectionIdentifier(&v22);
              goto LABEL_48;
            case 18:

              outlined destroy of NavigationLinkSelectionIdentifier(&v23);
              v11 = 50;
              goto LABEL_54;
            case 19:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 50;
              goto LABEL_54;
            case 20:
              goto LABEL_52;
            case 21:
              outlined destroy of NavigationRequest.Action(&v21);
LABEL_48:
              v11 = 80;
              goto LABEL_54;
            case 22:
              if (v26 | v21 | v27 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22)
              {
                v12 = v27 | v26 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22;
                if (v21 != 1 || v12)
                {
                  if (v21 != 4 || v12)
                  {
LABEL_53:
                    outlined destroy of NavigationRequest.Action(&v21);
                    v11 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
LABEL_52:
                    v11 = 70;
                  }
                }

                else
                {
                  v11 = 6;
                }
              }

              else
              {
                v11 = 0;
              }

LABEL_54:
              outlined destroy of NavigationRequest(v34);
              result = outlined destroy of NavigationRequest(&v35);
              if (v9 < v11)
              {
                if (!v5)
                {
                  __break(1u);
                  JUMPOUT(0x18BEBBC50);
                }

                v42 = *(v6 + 112);
                v43 = *(v6 + 128);
                v44 = *(v6 + 144);
                v45 = *(v6 + 160);
                v38 = *(v6 + 48);
                v39 = *(v6 + 64);
                v40 = *(v6 + 80);
                v41 = *(v6 + 96);
                v35 = *v6;
                v36 = *(v6 + 16);
                v37 = *(v6 + 32);
                v13 = *(v6 - 24);
                *(v6 + 128) = *(v6 - 40);
                *(v6 + 144) = v13;
                *(v6 + 160) = *(v6 - 8);
                v14 = *(v6 - 88);
                *(v6 + 64) = *(v6 - 104);
                *(v6 + 80) = v14;
                v15 = *(v6 - 56);
                *(v6 + 96) = *(v6 - 72);
                *(v6 + 112) = v15;
                v16 = *(v6 - 152);
                *v6 = *v8;
                *(v6 + 16) = v16;
                v17 = *(v6 - 120);
                *(v6 + 32) = *(v6 - 136);
                *(v6 + 48) = v17;
                *(v6 - 56) = v42;
                *(v6 - 40) = v43;
                *(v6 - 24) = v44;
                *(v6 - 8) = v45;
                *(v6 - 120) = v38;
                *(v6 - 104) = v39;
                *(v6 - 88) = v40;
                *(v6 - 72) = v41;
                *v8 = v35;
                *(v6 - 152) = v36;
                *(v6 - 136) = v37;
                v6 -= 168;
                if (!__CFADD__(v7++, 1))
                {
                  continue;
                }
              }

              ++v4;
              v6 = v46 + 168;
              v7 = v20 - 1;
              if (v4 != a2)
              {
                goto LABEL_5;
              }

              return result;
            default:
              goto LABEL_53;
          }

        default:
          goto LABEL_29;
      }
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + (a3 << 6) + 56;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v10 = v8 - 56;
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = v8 - 120;
      v14 = *(v8 - 15);
      v15 = *(v8 - 14);
      v16 = *(v9 - 64);
      v9 -= 64;
      result = v16;
      if (v12 == v15)
      {
        v17 = *(v8 - 3);
        v18 = *(v8 - 11);
        v19 = v17 < v18;
        if (v17 == v18 && (v20 = *(v8 - 2), v21 = *(v8 - 10), v19 = v20 < v21, v20 == v21) && (v22 = *(v8 - 1), v23 = *(v8 - 9), v19 = v22 < v23, v22 == v23))
        {
          v24 = *v8;
          if (v24 == result)
          {
            if (v11 >= v14)
            {
              goto LABEL_4;
            }
          }

          else if (v24 >= result)
          {
LABEL_4:
            ++a3;
            v5 += 64;
            --v6;
            if (a3 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }

        else if (!v19)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v12)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v25 = *(v10 + 1);
      *v30 = *(v10 + 2);
      *&v30[9] = *(v10 + 41);
      v26 = *v10;
      v27 = *(v13 + 1);
      *v10 = *v13;
      *(v10 + 1) = v27;
      v28 = *(v13 + 3);
      *(v10 + 2) = *(v13 + 2);
      *(v10 + 3) = v28;
      *(v13 + 41) = *&v30[9];
      *(v13 + 1) = v25;
      *(v13 + 2) = *v30;
      v8 = v9;
      *v13 = v26;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NavigationRequest.skipFirstColumn.getter()
{
  v1 = *(v0 + 136) >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    v2 = *(v0 + 120);
    if (v2 == 6)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(v0 + 112);
  }

  outlined init with copy of NavigationRequest.Action(v0, &v6);
  if (v10 == 14)
  {
    v3 = &v8;
  }

  else
  {
    if (v10 != 13)
    {
      outlined destroy of NavigationRequest.Action(&v6);
      return 0;
    }

    v3 = &v9;
  }

  v4 = *v3;
  outlined destroy of NavigationLinkSelectionIdentifier(&v7);
  if ((v2 & 0xFE) != 0)
  {
    return 0;
  }

  else
  {
    return v4 ^ 1u;
  }
}

void type metadata accessor for Binding<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NavigationRequest.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && *(a1 + 97))
  {
    return (*a1 + 234);
  }

  v3 = *(a1 + 96);
  if (v3 >= 0x17)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for NavigationRequest.TargetedRequest(uint64_t a1, uint64_t *a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v23;
      *(a1 + 32) = a2[4];
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 5);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 2, v16);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = a2[3];
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 8);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 8);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = a2[2];
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 3);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 28);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 3);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = a2[4];

      if (v32)
      {
        v33 = a2[5];
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 1, v32);
      }

      else
      {
        v53 = *(a2 + 3);
        *v31 = *(a2 + 1);
        *(a1 + 24) = v53;
        *(a1 + 40) = a2[5];
      }

      v54 = a2[7];
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v54;
      }

      v55 = a2[9];
      v56 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = a2[4];

      if (v9)
      {
        v10 = a2[5];
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 1, v9);
      }

      else
      {
        v43 = *(a2 + 3);
        *v8 = *(a2 + 1);
        *(a1 + 24) = v43;
        *(a1 + 40) = a2[5];
      }

      v44 = a2[7];
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v44;
      }

      v45 = a2[9];
      v46 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = a2[4];

      if (v20)
      {
        v21 = a2[5];
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 1, v20);
      }

      else
      {
        v47 = *(a2 + 3);
        *v19 = *(a2 + 1);
        *(a1 + 24) = v47;
        *(a1 + 40) = a2[5];
      }

      v48 = a2[7];
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = a2[8];
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 3);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 32);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = a2[5];

      if (v6)
      {
        v7 = a2[6];
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 2, v6);
      }

      else
      {
        v38 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v38;
        *(a1 + 48) = a2[6];
      }

      v39 = a2[8];
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 7);
      }

      else
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v39;
      }

      v40 = a2[10];
      v41 = a2[11];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = a2[3];
      if (v27)
      {
        v28 = a2[4];
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = a2[4];
      }

      v50 = a2[6];
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 5);
      }

      else
      {
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = a2[7];
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = a2[2];
      if (v51)
      {
        v52 = a2[3];
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 200) = *(a2 + 25);
  v57 = (a1 + 216);
  v58 = a2 + 27;
  v59 = *(a2 + 312);

  switch(v59)
  {
    case 0:
      v60 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v60;
      *(a1 + 312) = 0;

      return a1;
    case 1:
      v71 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v71;
      v72 = a2[30];
      *(a1 + 232) = a2[29];
      *(a1 + 240) = v72;
      *(a1 + 248) = a2[31];
      *(a1 + 312) = 1;

      goto LABEL_80;
    case 2:
      v75 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v75;
      v76 = *(a2 + 16);
      *(a1 + 256) = v76;
      v77 = v76;
      v78 = **(v76 - 8);

      v78(a1 + 232, a2 + 29, v77);
      *(a1 + 272) = *(a2 + 17);
      v79 = 2;
      goto LABEL_115;
    case 3:
      *(a1 + 216) = a2[27];
      *(a1 + 224) = *(a2 + 14);
      *(a1 + 240) = a2[30];
      *(a1 + 312) = 3;

      return a1;
    case 4:
      v68 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v68;
      *(a1 + 232) = *(a2 + 116);
      v69 = 4;
      goto LABEL_78;
    case 5:
      v70 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v70;
      *(a1 + 232) = *(a2 + 116);
      v69 = 5;
      goto LABEL_78;
    case 6:
      v89 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v89;
      *(a1 + 232) = a2[29];
      *(a1 + 312) = 6;

LABEL_80:

      return a1;
    case 10:
      v73 = *(a2 + 15);
      *(a1 + 240) = v73;
      (**(v73 - 8))(a1 + 216, a2 + 27);
      v74 = a2[33];
      *(a1 + 256) = a2[32];
      *(a1 + 264) = v74;
      *(a1 + 272) = *(a2 + 136);
      v69 = 10;
      goto LABEL_78;
    case 11:
      v90 = *(a2 + 15);
      *(a1 + 240) = v90;
      (**(v90 - 8))(a1 + 216, a2 + 27);
      v79 = 11;
      goto LABEL_115;
    case 12:
      *(a1 + 216) = a2[27];
      v66 = a2[31];

      if (v66)
      {
        v67 = a2[32];
        *(a1 + 248) = v66;
        *(a1 + 256) = v67;
        (**(v66 - 8))(a1 + 224, a2 + 28, v66);
      }

      else
      {
        v94 = *(a2 + 15);
        *(a1 + 224) = *(a2 + 14);
        *(a1 + 240) = v94;
        *(a1 + 256) = a2[32];
      }

      v95 = a2 + 33;
      v96 = a2[34];
      if (v96 == 1)
      {
        *(a1 + 264) = *v95;
      }

      else
      {
        *(a1 + 264) = *v95;
        *(a1 + 272) = v96;
      }

      v97 = a2[36];
      v98 = a2[37];
      *(a1 + 280) = a2[35];
      *(a1 + 288) = v97;
      *(a1 + 296) = v98;
      v99 = 12;
      goto LABEL_109;
    case 13:
      *(a1 + 216) = a2[27];
      v80 = a2[31];

      if (v80)
      {
        v81 = a2[32];
        *(a1 + 248) = v80;
        *(a1 + 256) = v81;
        (**(v80 - 8))(a1 + 224, a2 + 28, v80);
      }

      else
      {
        v100 = *(a2 + 15);
        *(a1 + 224) = *(a2 + 14);
        *(a1 + 240) = v100;
        *(a1 + 256) = a2[32];
      }

      v101 = a2 + 33;
      v102 = a2[34];
      if (v102 == 1)
      {
        *(a1 + 264) = *v101;
      }

      else
      {
        *(a1 + 264) = *v101;
        *(a1 + 272) = v102;
      }

      v103 = a2[36];
      v104 = a2[37];
      *(a1 + 280) = a2[35];
      *(a1 + 288) = v103;
      *(a1 + 296) = v104;
      *(a1 + 304) = *(a2 + 304);
      v99 = 13;
      goto LABEL_109;
    case 14:
      *(a1 + 216) = a2[27];
      v82 = a2[31];

      if (v82)
      {
        v83 = a2[32];
        *(a1 + 248) = v82;
        *(a1 + 256) = v83;
        (**(v82 - 8))(a1 + 224, a2 + 28, v82);
      }

      else
      {
        v105 = *(a2 + 15);
        *(a1 + 224) = *(a2 + 14);
        *(a1 + 240) = v105;
        *(a1 + 256) = a2[32];
      }

      v106 = a2 + 33;
      v107 = a2[34];
      if (v107 == 1)
      {
        *(a1 + 264) = *v106;
      }

      else
      {
        *(a1 + 264) = *v106;
        *(a1 + 272) = v107;
      }

      *(a1 + 280) = a2[35];
      *(a1 + 288) = *(a2 + 288);
      v79 = 14;
      goto LABEL_115;
    case 17:
      v87 = *(a2 + 15);
      *(a1 + 240) = v87;
      (**(v87 - 8))(a1 + 216, a2 + 27);
      *(a1 + 256) = *(a2 + 256);
      v88 = a2[34];
      *(a1 + 264) = a2[33];
      *(a1 + 272) = v88;
      *(a1 + 280) = *(a2 + 140);
      v69 = 17;
LABEL_78:
      *(a1 + 312) = v69;

      return a1;
    case 18:
      v84 = a2[28];
      *(a1 + 216) = a2[27];
      *(a1 + 224) = v84;
      v85 = a2[32];

      if (v85)
      {
        v86 = a2[33];
        *(a1 + 256) = v85;
        *(a1 + 264) = v86;
        (**(v85 - 8))(a1 + 232, a2 + 29, v85);
      }

      else
      {
        *(a1 + 232) = *(a2 + 29);
        *(a1 + 248) = *(a2 + 31);
        *(a1 + 264) = a2[33];
      }

      v108 = a2[35];
      if (v108 == 1)
      {
        *(a1 + 272) = *(a2 + 17);
      }

      else
      {
        *(a1 + 272) = a2[34];
        *(a1 + 280) = v108;
      }

      v109 = a2[37];
      v110 = a2[38];
      *(a1 + 288) = a2[36];
      *(a1 + 296) = v109;
      *(a1 + 304) = v110;
      v99 = 18;
LABEL_109:
      *(a1 + 312) = v99;

      return a1;
    case 19:
      v64 = a2[30];
      if (v64)
      {
        v65 = a2[31];
        *(a1 + 240) = v64;
        *(a1 + 248) = v65;
        (**(v64 - 8))(a1 + 216, a2 + 27);
      }

      else
      {
        v92 = *(a2 + 29);
        *v57 = *v58;
        *(a1 + 232) = v92;
        *(a1 + 248) = a2[31];
      }

      v93 = a2[33];
      if (v93 == 1)
      {
        *(a1 + 256) = *(a2 + 16);
      }

      else
      {
        *(a1 + 256) = a2[32];
        *(a1 + 264) = v93;
      }

      *(a1 + 272) = a2[34];
      v79 = 19;
      goto LABEL_115;
    case 21:
      if (*v58)
      {
        v91 = a2[28];
        *(a1 + 216) = *v58;
        *(a1 + 224) = v91;
      }

      else
      {
        *v57 = *v58;
      }

      v111 = a2[29];
      if (v111)
      {
        v112 = a2[30];
        *(a1 + 232) = v111;
        *(a1 + 240) = v112;
      }

      else
      {
        *(a1 + 232) = *(a2 + 29);
      }

      v79 = 21;
LABEL_115:
      *(a1 + 312) = v79;
      break;
    default:
      v61 = *(a2 + 37);
      *(a1 + 280) = *(a2 + 35);
      *(a1 + 296) = v61;
      *(a1 + 312) = *(a2 + 312);
      v62 = *(a2 + 29);
      *v57 = *v58;
      *(a1 + 232) = v62;
      v63 = *(a2 + 33);
      *(a1 + 248) = *(a2 + 31);
      *(a1 + 264) = v63;
      break;
  }

  return a1;
}

uint64_t outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Decodable & Encodable.Type>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
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

void *specialized Dictionary.subscript.setter(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(__src + 31))
  {
    memcpy(__dst, __src, 0x163uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    outlined destroy of TabEntry?(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      memcpy(__dst, (*(v15 + 56) + 360 * v13), 0x163uLL);
      specialized _NativeDictionary._delete(at:)(v13, v15);
      *v5 = v15;
    }

    else
    {
      memset(__dst, 0, 355);
    }

    return outlined destroy of TabEntry?(__dst, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
  }

  return result;
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 360 * v13;

    return outlined assign with take of NavigationColumnState(a1, v24);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v23);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      if (v10 == a1 && a2 == v11 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *__src, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a6[6] + 24 * a1;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  result = memcpy((a6[7] + 360 * a1), __src, 0x163uLL);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

double destroy for NavigationColumnState(uint64_t a1)
{
  if (*(a1 + 48))
  {
  }

  if (*(a1 + 104))
  {
  }

  v2 = *(a1 + 208);
  if (*(a1 + 240))
  {
    if (v2 != 255)
    {
      if (v2)
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
    if (v2 != 255)
    {
      if (v2)
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

  return result;
}

uint64_t outlined init with copy of NavigationState.Base?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t storeEnumTagSinglePayload for NavigationColumnState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 354) = 0;
    *(result + 352) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 355) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 355) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x2F0uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 736) = v5;
  *(v12 + 728) = a4;
  *(v12 + 355) = a3;
  *(v12 + 720) = a2;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  *(v13 + 356) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 93) = v15;
  if (v21)
  {
    memcpy(v13, (*(*v6 + 56) + 360 * v15), 0x163uLL);
  }

  else
  {
    v13[20] = 0u;
    v13[21] = 0u;
    v13[18] = 0u;
    v13[19] = 0u;
    v13[16] = 0u;
    v13[17] = 0u;
    v13[14] = 0u;
    v13[15] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    *(v13 + 351) = 0;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of NavigationRequest.Action?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for NavigationRequest.Action?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

_OWORD *NavigationColumnState.update(for:shouldAnimate:splitViewState:)(_OWORD *a1, uint64_t a2, int a3, __int128 *a4)
{
  v5 = v4;
  outlined init with copy of NavigationRequest.Action?(a2 + 216, v209, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  v189 = a1;
  LOBYTE(v190) = a3;
  v191 = a2;
  if (LOBYTE(v209[6]) == 255)
  {
    outlined init with copy of NavigationRequest.Action(a2, v211);
    if (LOBYTE(v209[6]) != 255)
    {
      outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    *&v211[64] = v209[4];
    *&v211[80] = v209[5];
    v212 = v209[6];
    *v211 = v209[0];
    *&v211[16] = v209[1];
    *&v211[48] = v209[3];
    *&v211[32] = v209[2];
  }

  v10 = v213;
  v11 = v198;
  v13 = *&v211[8];
  v12 = *v211;
  switch(v212)
  {
    case 1:
      v209[0] = *&v211[24];
      v60 = v214;
      NavigationColumnState.setPath(_:environment:)(*v211, *&v211[8], *&v211[16], v209, v213);
      v5 = v4;

      v24 = v60;

      goto LABEL_42;
    case 2:
      v43 = a4[1];
      v44 = a4[3];
      v210[2] = a4[2];
      v210[3] = v44;
      v45 = *a4;
      v46 = *a4;
      v210[1] = a4[1];
      v210[0] = v45;
      v47 = a4[3];
      v192[2] = v210[2];
      v192[3] = v47;
      LOWORD(v210[4]) = *(a4 + 32);
      LOWORD(v192[4]) = *(a4 + 32);
      v192[0] = v46;
      v192[1] = v43;
      outlined init with copy of NavigationRequest.Action?(v210, v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v214;
      NavigationColumnState.setSelection(from:splitViewState:)(v191, v192, v209);
      if (v4)
      {
        v198[2] = v192[2];
        v198[3] = v192[3];
        LOWORD(v198[4]) = v192[4];
        v198[0] = v192[0];
        v198[1] = v192[1];
        outlined destroy of NavigationRequest.Action?(v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        v30 = &lazy cache variable for type metadata for Binding<AnyListSelection>;
        v31 = &type metadata for AnyListSelection;
        v32 = MEMORY[0x1E6981948];
        v33 = v211;
        goto LABEL_24;
      }

      v198[2] = v192[2];
      v198[3] = v192[3];
      LOWORD(v198[4]) = v192[4];
      v198[0] = v192[0];
      v198[1] = v192[1];
      outlined destroy of NavigationRequest.Action?(v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      memcpy(v213, v209, 0x15CuLL);
      outlined destroy of NavigationRequest.Action?(v211, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      goto LABEL_128;
    case 3:

      *(&v213[8] + 8) = 0u;
      *(&v213[7] + 8) = 0u;
      *(&v213[6] + 8) = 0u;
      *(&v213[5] + 8) = 0u;
      *(&v213[4] + 8) = 0u;
      *(&v213[3] + 8) = 0u;
      *(&v213[2] + 8) = 0u;
      *(&v213[1] + 8) = 0u;
      *(&v213[9] + 1) = 0;
      *&v213[10] = 0x1FFFFFFFCLL;
      *(&v213[16] + 8) = 0u;
      *(&v213[17] + 8) = 0u;
      *(&v213[18] + 8) = 0u;
      *(&v213[19] + 8) = 0u;
      *(&v213[20] + 1) = 0u;
      *(&v213[10] + 8) = 0u;
      *(&v213[11] + 8) = 0u;
      *(&v213[12] + 8) = 0u;
      *(&v213[13] + 8) = 0u;
      *(&v213[14] + 8) = 0u;
      *(&v213[15] + 8) = 0u;
      v213[0] = __PAIR128__(v13, v12);
      LOBYTE(v213[1]) = 0;
      goto LABEL_33;
    case 4:
    case 5:
    case 21:
      outlined destroy of NavigationRequest.Action(v211);
      v14 = 0uLL;
      *(&v213[1] + 8) = 0u;
      *(&v213[2] + 8) = 0u;
      *(&v213[3] + 8) = 0u;
      *(&v213[4] + 8) = 0u;
      *(&v213[5] + 8) = 0u;
      *(&v213[6] + 8) = 0u;
      *(&v213[7] + 8) = 0u;
      *(&v213[8] + 8) = 0u;
      v15 = 0x1FFFFFFFELL;
      goto LABEL_7;
    case 6:
      v209[0] = *&v211[8];
      v34 = v214;
      NavigationColumnState.boundPathChange(to:environment:)(*v211, v209, v213);

      v5 = v4;
      v24 = v34;
LABEL_42:

      goto LABEL_128;
    case 7:
      v38 = a4[1];
      v39 = a4[3];
      v210[2] = a4[2];
      v210[3] = v39;
      v40 = *a4;
      v41 = *a4;
      v210[1] = a4[1];
      v210[0] = v40;
      v42 = a4[3];
      v192[2] = v210[2];
      v192[3] = v42;
      LOWORD(v210[4]) = *(a4 + 32);
      LOWORD(v192[4]) = *(a4 + 32);
      v192[0] = v41;
      v192[1] = v38;
      outlined init with copy of NavigationRequest.Action?(v210, v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v214;
      NavigationColumnState.boundSelectionChange(request:splitViewState:)(v191, v192, v209);
      if (!v4)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 8:
      v25 = a4[1];
      v26 = a4[3];
      v210[2] = a4[2];
      v210[3] = v26;
      v27 = *a4;
      v28 = *a4;
      v210[1] = a4[1];
      v210[0] = v27;
      v29 = a4[3];
      v192[2] = v210[2];
      v192[3] = v29;
      LOWORD(v210[4]) = *(a4 + 32);
      LOWORD(v192[4]) = *(a4 + 32);
      v192[0] = v28;
      v192[1] = v25;
      outlined init with copy of NavigationRequest.Action?(v210, v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v214;
      NavigationColumnState.editingChanged(request:splitViewState:)(v191, v192, v209);
      if (!v4)
      {
LABEL_21:
        v198[2] = v192[2];
        v198[3] = v192[3];
        LOWORD(v198[4]) = v192[4];
        v198[0] = v192[0];
        v198[1] = v192[1];
        outlined destroy of NavigationRequest.Action?(v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        memcpy(v213, v209, 0x15CuLL);
        goto LABEL_128;
      }

LABEL_12:
      v198[2] = v192[2];
      v198[3] = v192[3];
      LOWORD(v198[4]) = v192[4];
      v198[0] = v192[0];
      v198[1] = v192[1];
      v30 = &lazy cache variable for type metadata for NavigationSplitViewState?;
      v31 = &type metadata for NavigationSplitViewState;
      v32 = MEMORY[0x1E69E6720];
      v33 = v198;
LABEL_24:
      outlined destroy of NavigationRequest.Action?(v33, v30, v31, v32);
      return v10;
    case 9:
      v24 = v214;
      if (*(v214 + 104))
      {
        v190 = (Transaction.disablesAnimations.getter() ^ 1) & a3;
      }

      NavigationColumnState.pop(_:writesSelectionAt:request:splitViewState:)(v12, v13 & 1, v191, a4, v213);
      goto LABEL_128;
    case 10:

      v204 = *v211;
      v205 = *&v211[16];
      v16 = a4[1];
      v17 = a4[3];
      v210[2] = a4[2];
      v210[3] = v17;
      v18 = *a4;
      v19 = *a4;
      v210[1] = a4[1];
      v210[0] = v18;
      v20 = a4[3];
      v192[2] = v210[2];
      v192[3] = v20;
      *&v206 = *&v211[32];
      LOWORD(v210[4]) = *(a4 + 32);
      LOWORD(v192[4]) = *(a4 + 32);
      v192[0] = v19;
      v192[1] = v16;
      outlined init with copy of NavigationRequest.Action?(v210, v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v21 = v214;
      NavigationColumnState.presentValue(_:request:splitViewState:)(&v204, v191, v192, v209);
      v5 = v4;
      if (v4)
      {
        v198[2] = v192[2];
        v198[3] = v192[3];
        LOWORD(v198[4]) = v192[4];
        v198[0] = v192[0];
        v198[1] = v192[1];
        outlined destroy of NavigationRequest.Action?(v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        outlined destroy of AnyNavigationLinkPresentedValue(&v204);
        return v10;
      }

      v198[2] = v192[2];
      v198[3] = v192[3];
      LOWORD(v198[4]) = v192[4];
      v198[0] = v192[0];
      v198[1] = v192[1];
      outlined destroy of NavigationRequest.Action?(v198, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      outlined destroy of AnyNavigationLinkPresentedValue(&v204);
      memcpy(v213, v209, 0x15CuLL);
      v24 = v21;
      goto LABEL_128;
    case 11:
      v210[0] = *v211;
      v210[1] = *&v211[16];
      *&v210[2] = *&v211[32];
      v22 = v214;
      NavigationColumnState.ejectAll()();
      NavigationColumnState.ColumnContent.replaceRoot(_:)(v210);
      v23 = v4;
      *(v22 + 352) = 1;
      memset(v209, 0, 136);
      *(&v209[8] + 1) = 0x1FFFFFFFELL;
      memset(&v209[9], 0, 169);
      NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v209, (&v213[1] + 8));
      outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
      outlined destroy of AnyNavigationLinkPresentedValue(v210);
      v213[0] = xmmword_18CD79D60;
      LOBYTE(v213[1]) = 2;
      v24 = v22;
      goto LABEL_16;
    case 12:
      v23 = v4;
      v35 = *&v211[72];
      v36 = *&v211[80];
      v210[0] = *&v211[8];
      v210[1] = *&v211[24];
      v210[2] = *&v211[40];
      v210[3] = *&v211[56];
      v37 = v214;
      NavigationColumnState.ejectAll()();
      outlined init with copy of NavigationLinkSelectionIdentifier(v210, v209 + 8);
      *&v209[0] = v12;
      *(&v209[4] + 1) = v35;
      *&v209[5] = v36;

      NavigationColumnState.ColumnContent.replaceRoot(_:)(v209);
      outlined destroy of NavigationViewDestinationView(v209);
      *(v37 + 352) = 1;
      memset(v209, 0, 136);
      *(&v209[8] + 1) = 0x1FFFFFFFELL;
      memset(&v209[9], 0, 169);
      NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v209, (&v213[1] + 8));

      outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationLinkSelectionIdentifier(v210);
      v213[0] = xmmword_18CD79D60;
      LOBYTE(v213[1]) = 2;
      v24 = v37;
LABEL_16:
      *(&v213[21] + 4) = 1;
      v5 = v23;
      goto LABEL_128;
    case 13:
      v198[0] = *&v211[8];
      v198[1] = *&v211[24];
      v198[2] = *&v211[40];
      v198[3] = *&v211[56];
      v188 = *&v211[72];
      outlined init with copy of NavigationLinkSelectionIdentifier(v198, v192 + 8);
      *&v192[0] = v12;
      *(&v192[4] + 8) = v188;
      v24 = v214;
      v77 = *(v191 + 136) >> 62;
      if (v77)
      {
        if (v77 != 1)
        {
          goto LABEL_80;
        }

        v78 = *(v191 + 120);
        if (v78 == 6)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v78 = *(v191 + 112);
      }

      if (*(v214 + 24) != v78)
      {
        goto LABEL_80;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v214 + 120, v209);
      if (BYTE8(v209[7]))
      {
        outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_80:
        *(v24 + 352) = 1;
        NavigationColumnState.ejectAll()();
        NavigationColumnState.ColumnContent.replaceRoot(_:)(v192);
        outlined init with copy of NavigationRequest.TargetedRequest(v191, v210);
        NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v210, v209);
        outlined destroy of NavigationRequest.Action?(v210, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
        outlined destroy of NavigationLinkSelectionIdentifier(v198);
        goto LABEL_81;
      }

      v114 = outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      if (*(v24 + 352) >= 2u)
      {
        *(v24 + 352) = 0;
      }

      MEMORY[0x1EEE9AC00](v114);
      specialized NavigationColumnState.ColumnContent.mutateViewDestinationViews<A>(transform:)(partial apply for closure #1 in NavigationColumnState.presentView(_:identifier:dismiss:request:));
      v24 = v214;
      outlined destroy of NavigationLinkSelectionIdentifier(v198);
      memset(v209, 0, 136);
      *(&v209[8] + 1) = 0x1FFFFFFFCLL;
      memset(&v209[9], 0, 169);
LABEL_81:
      v213[0] = xmmword_18CD6A6D0;
      LOBYTE(v213[1]) = 2;
      memcpy(&v213[1] + 8, v209, 0x139uLL);
      *(&v213[21] + 4) = 1;
      outlined destroy of NavigationViewDestinationView(v192);
      goto LABEL_128;
    case 14:
      v209[0] = *&v211[8];
      v209[1] = *&v211[24];
      v209[2] = *&v211[40];
      v209[3] = *&v211[56];
      v24 = v214;
      NavigationColumnState.updateView(_:identifier:request:)(*v211, v209, v191, v213);

      goto LABEL_35;
    case 15:
      v24 = v214;
      NavigationColumnState.accumulatedDismiss(count:request:)(*v211, v191, v213);
      goto LABEL_128;
    case 16:
      if (v211[8])
      {
        if (!*(v214 + 48))
        {
          goto LABEL_121;
        }

        v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI15NavigationStateV7ListKeyV_SD4KeysVyAhD0dfE0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLV_GTt0g5(v48);
        v11 = v214;
        v50 = *(v214 + 48);
        if (!v50)
        {

          goto LABEL_121;
        }

        v187 = v4;
        v181 = v49;
        v10 = (v214 + 80);
        v51 = *(v214 + 80);
        v52 = *(v214 + 56);
        v53 = *(v214 + 64);
        v54 = *(v214 + 72);
        v55 = *(v214 + 88);
        LODWORD(v209[0]) = *(v214 + 40);
        *(&v209[0] + 1) = v50;
        *&v209[1] = v52;
        *(&v209[1] + 1) = v53;
        *&v209[2] = v54;
        *(&v209[2] + 1) = v51;
        LODWORD(v209[3]) = v55;

        v56 = NavigationListState.wouldDeselect()();

        if (*(v11 + 6))
        {
          NavigationListState.dismissLegacyLinks()();
          v5 = v187;
          if (*(v11 + 6))
          {
            specialized Set.formUnion<A>(_:)(v181);
            if (!v56)
            {
              goto LABEL_121;
            }

            goto LABEL_63;
          }

          if (!v56)
          {
LABEL_121:
            if ((v13 & 0x10100) == 0x100)
            {
              v87 = __OFSUB__(v12--, 1);
              if (v87)
              {
                __break(1u);
                JUMPOUT(0x18BEBFE94);
              }
            }

            goto LABEL_123;
          }
        }

        else
        {

          v5 = v187;
          if (!v56)
          {
            goto LABEL_121;
          }
        }
      }

      else if (!*(v214 + 48) || !NavigationListState.clearAllSelections()())
      {
        goto LABEL_121;
      }

LABEL_63:
      v87 = __OFSUB__(v12--, 1);
      if (!v87)
      {
LABEL_123:
        if (v12 < 1)
        {
          memset(v209, 0, 136);
          *(&v209[8] + 1) = 0x1FFFFFFFCLL;
          memset(&v209[9], 0, 169);
        }

        else
        {
          outlined init with copy of NavigationRequest(v191, v210);
          *&v192[0] = v12;
          BYTE8(v192[0]) = v13 & 1;
          LOBYTE(v193) = 9;
          *(&v209[16] + 8) = 0u;
          *(&v209[17] + 8) = 0u;
          *(&v209[18] + 8) = 0u;
          *(&v209[13] + 8) = 0u;
          *(&v209[14] + 8) = 0u;
          *(&v209[15] + 8) = 0u;
          BYTE8(v209[19]) = -1;
          v209[8] = v210[8];
          v209[9] = v210[9];
          *&v209[10] = *&v210[10];
          v209[4] = v210[4];
          v209[5] = v210[5];
          v209[6] = v210[6];
          v209[7] = v210[7];
          v209[0] = v210[0];
          v209[1] = v210[1];
          v209[2] = v210[2];
          v209[3] = v210[3];
          *(&v209[10] + 8) = *(v191 + 168);
          *(&v209[11] + 8) = *(v191 + 184);
          *(&v209[12] + 8) = *(v191 + 200);
          outlined assign with take of NavigationRequest.Action?(v192, &v209[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        }

        v24 = v214;
        v213[0] = xmmword_18CD6A6D0;
        LOBYTE(v213[1]) = 2;
        memcpy(&v213[1] + 8, v209, 0x139uLL);
        goto LABEL_127;
      }

      __break(1u);
LABEL_66:
      outlined init with copy of AnyNavigationLinkPresentedValue(&v201, v192);
      *(&v192[2] + 1) = v181;
      *&v192[3] = v12;
      BYTE8(v192[3]) = v5;
      BYTE9(v192[3]) = v11;
      LOBYTE(v193) = 10;
      outlined init with copy of NavigationRequest(v191, v210);
      v88 = *(v191 + 168);
      v89 = *(v191 + 184);
      v90 = *(v191 + 200);
      if (v193 == 255)
      {
        v180 = *(v191 + 184);
        v184 = *(v191 + 168);
        v177 = *(v191 + 200);
        outlined init with copy of NavigationRequest.Action?(v191 + 216, v198, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
        v90 = v177;
        v89 = v180;
        v88 = v184;
      }

      else
      {
        v198[4] = v192[4];
        v199 = v192[5];
        v200 = v193;
        v198[0] = v192[0];
        v198[1] = v192[1];
        v198[2] = v192[2];
        v198[3] = v192[3];
      }

      *(&v209[17] + 8) = 0u;
      *(&v209[18] + 8) = 0u;
      *(&v209[16] + 8) = 0u;
      *(&v209[15] + 8) = 0u;
      *(&v209[14] + 8) = 0u;
      *(&v209[13] + 8) = 0u;
      BYTE8(v209[19]) = -1;
      v209[8] = v210[8];
      v209[9] = v210[9];
      *&v209[10] = *&v210[10];
      v209[4] = v210[4];
      v209[5] = v210[5];
      v209[6] = v210[6];
      v209[7] = v210[7];
      v209[0] = v210[0];
      v209[1] = v210[1];
      v209[2] = v210[2];
      v209[3] = v210[3];
      *(&v209[10] + 8) = v88;
      *(&v209[11] + 8) = v89;
      *(&v209[12] + 8) = v90;
      outlined assign with take of NavigationRequest.Action?(v198, &v209[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
      v176 = v209[1];
      v178 = v209[0];
      v172 = v209[3];
      v174 = v209[2];
      v170 = v209[5];
      v171 = v209[4];
      v168 = v209[7];
      v169 = v209[6];
      v182 = v209[8];
      v166 = v209[10];
      v167 = v209[9];
      v164 = v209[12];
      v165 = v209[11];
      v161 = v209[15];
      v162 = v209[13];
      v163 = v209[14];
      v159 = v209[17];
      v160 = v209[16];
      v73 = *(&v209[18] + 1);
      v72 = *&v209[18];
      v74 = *&v209[19];
      v75 = BYTE8(v209[19]);
LABEL_91:
      outlined destroy of AnyNavigationLinkPresentedValue(&v201);
      v213[0] = xmmword_18CD6A6D0;
      LOBYTE(v213[1]) = 2;
      *(v10 + 40) = v176;
      *(v10 + 24) = v178;
      *(v10 + 72) = v172;
      *(v10 + 56) = v174;
      *(v10 + 104) = v170;
      *(v10 + 88) = v171;
      *(v10 + 136) = v168;
      *(v10 + 120) = v169;
      *(v10 + 168) = v167;
      *(v10 + 152) = v182;
      *(v10 + 200) = v165;
      *(v10 + 184) = v166;
      *(v10 + 232) = v162;
      *(v10 + 216) = v164;
      *(&v213[16] + 8) = v161;
      *(v10 + 248) = v163;
      *(&v213[17] + 8) = v160;
      *(&v213[18] + 8) = v159;
      *(&v213[19] + 1) = v72;
      *&v213[20] = v73;
      *(&v213[20] + 1) = v74;
      LOBYTE(v213[21]) = v75;
      *(&v213[21] + 1) = v209[0];
      BYTE3(v213[21]) = BYTE2(v209[0]);
      *(&v213[21] + 4) = 0;
      v5 = v187;
      v24 = v214;
LABEL_128:
      v120 = v213[0];
      v121 = LOBYTE(v213[1]);
      v122 = DWORD1(v213[21]);
      v123 = DWORD2(v213[21]);
      outlined init with copy of NavigationState.UpdateResult(&v213[1] + 8, v210);
      outlined init with copy of NavigationState.UpdateResult(v210, v209);
      v124 = *(&v209[8] + 1);
      outlined destroy of NavigationState.UpdateResult(v209);
      if (v124 >> 1 != 0xFFFFFFFF && (v121 != 2 || v120 != 1))
      {
        outlined init with copy of NavigationColumnState.ColumnContent(v24 + 120, v209);
        if (BYTE8(v209[7]))
        {
          outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
          if (!v121)
          {
            v209[2] = MEMORY[0x1E69E7CC0];
            *&v209[1] = 0;
            v209[0] = MEMORY[0x1E69E7CC0];
            BYTE8(v209[1]) = 0;
            ResolvedNavigationDestinations.updatePossibilities(for:over:)(v120, *(&v120 + 1), 0, v209, v129);
            if (v5)
            {

              v131 = 0;
              LODWORD(v132) = 0;
            }

            else
            {
              v131 = v130;
              v132 = HIDWORD(v130);
            }

            v125 = v189;
            v126 = v190;
            outlined consume of NavigationPath.Representation(*&v209[0], *(&v209[0] + 1), *&v209[1], SBYTE8(v209[1]));

            LODWORD(v122) = v131 + v122;
            v123 = (v132 + v123);
            v24 = v214;
            goto LABEL_131;
          }

          goto LABEL_129;
        }

        outlined destroy of NavigationRequest.Action?(v209, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        outlined copy of ResolvedNavigationDestinations.ChangeRequest(v120, *(&v120 + 1), v121);
        v133 = v5;
        v134 = specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(v24 + 120, v120, *(&v120 + 1), v121, v24);
        if (!v5)
        {
          v143 = v134;
          v144 = v135;
          outlined consume of ResolvedNavigationDestinations.ChangeRequest(v120, *(&v120 + 1), v121);
          v145 = HIDWORD(v143);
          if (v144)
          {
            v146 = 0;
          }

          else
          {
            v146 = v143;
          }

          if (v144)
          {
            LODWORD(v145) = 0;
          }

          LODWORD(v122) = v146 + v122;
          v123 = (v145 + v123);
          v125 = v189;
          v24 = v214;
          goto LABEL_130;
        }

        outlined consume of ResolvedNavigationDestinations.ChangeRequest(v120, *(&v120 + 1), v121);
        *v211 = v5;
        v136 = v5;
        v10 = type metadata accessor for Error();
        if ((swift_dynamicCast() & 1) != 0 && *(&v209[0] + 1) >> 62 == 1)
        {
          v137 = *&v209[0];

          *&v192[0] = v137;
          type metadata accessor for Any.Type();
          v138 = String.init<A>(describing:)();
          v140 = v139;
          *&v192[0] = 0;
          *(&v192[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(310);
          MEMORY[0x18D00C9B0](0x1000000000000032, 0x800000018CD4CBA0);
          MEMORY[0x18D00C9B0](v138, v140);
          MEMORY[0x18D00C9B0](0x1000000000000102, 0x800000018CD4CBE0);

          MEMORY[0x18D009810](*&v192[0], *(&v192[0] + 1));

          outlined destroy of NavigationState.UpdateResult(v210);
          outlined destroy of NavigationState.RequestResults(v213);
          *v189 = 0u;
          v189[1] = 0u;
          v189[2] = 0u;
          v189[3] = 0u;
          v189[4] = 0u;
          v189[5] = 0u;
          v189[6] = 0u;
          v189[7] = 0u;
          *(v189 + 16) = 0;
          *(v189 + 17) = 0x1FFFFFFFELL;
          v189[10] = 0u;
          v189[11] = 0u;
          v189[12] = 0u;
          v189[13] = 0u;
          v189[14] = 0u;
          v189[15] = 0u;
          v189[16] = 0u;
          v189[17] = 0u;
          v189[18] = 0u;
          v189[9] = 0u;
          *(v189 + 297) = 0u;

          return (v122 | (v123 << 32));
        }

        *&v198[0] = v5;
        v141 = v5;
        if (!swift_dynamicCast())
        {
LABEL_146:
          outlined destroy of NavigationState.UpdateResult(v210);
          outlined destroy of NavigationState.RequestResults(v213);

          return v10;
        }

        v142 = *&v211[8];
        v10 = *v211;
        if (*&v211[8] < 2uLL)
        {
          outlined consume of NavigationPath.Error(*v211, *&v211[8]);
          goto LABEL_146;
        }

        v24 = v214;
        outlined init with copy of NavigationColumnState(v214, v209);
        outlined init with copy of NavigationColumnState.ColumnContent(&v209[7] + 8, v192);
        outlined destroy of NavigationColumnState(v209);
        if (BYTE8(v194) == 1)
        {
          outlined destroy of NavigationColumnState.ColumnContent(v192);
        }

        else
        {
          v147 = v193;

          outlined destroy of NavigationRequest.Action?(v192, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
          LOBYTE(v209[0]) = 17;
          v148 = *(v24 + 96);
          v149 = *(v214 + 104);
          v186 = v10;
          v150 = *(v214 + 112);
          v151 = swift_allocObject();
          v151[2] = v148;
          v151[3] = v149;
          v151[4] = v150;
          v151[5] = v147;
          v152 = v149;
          v24 = v214;
          v153 = v150;
          v10 = v186;
          outlined copy of Binding<AnyNavigationPath>?(v148, v152, v153);

          static Update.enqueueAction(reason:_:)();

          LODWORD(v122) = v122 + 1;
        }

        *&v209[0] = 0;
        *(&v209[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(151);
        MEMORY[0x18D00C9B0](0xD00000000000005FLL, 0x800000018CD4CB00);
        MEMORY[0x18D00C9B0](v10, v142);
        outlined consume of NavigationPath.Error(v10, v142);
        MEMORY[0x18D00C9B0](0x1000000000000036, 0x800000018CD4CB60);
        MEMORY[0x18D009810](*&v209[0], *(&v209[0] + 1));
      }

LABEL_129:
      v125 = v189;
LABEL_130:
      v126 = v190;
LABEL_131:
      v10 = (v122 | (v123 << 32));
      NavigationColumnState.updateAnimationState(requestAnimation:disablesAnimations:seedDelta:)(*(v191 + 160), (v126 & 1) == 0, v10);
      v127 = *(v24 + 4) + v123;
      *v24 += v122;
      *(v24 + 4) = v127;
      outlined destroy of NavigationState.RequestResults(v213);
      memcpy(v125, v210, 0x139uLL);
      return v10;
    case 17:
      v187 = v4;
      v12 = *&v211[56];
      LOBYTE(v5) = v211[64];
      LOBYTE(v11) = v211[65];
      v201 = *v211;
      v202 = *&v211[16];
      v181 = *&v211[48];
      v203 = *&v211[32];
      v61 = *a4;
      v62 = a4[1];
      v63 = a4[2];
      v64 = a4[3];
      v208 = *(a4 + 32);
      v206 = v63;
      v207 = v64;
      v204 = v61;
      v205 = v62;
      if (v62 == 1)
      {
        goto LABEL_66;
      }

      v65 = v206;
      if (!v206)
      {
        goto LABEL_66;
      }

      v66 = *(&v206 + 1);
      v67 = *(&v202 + 1);
      v68 = v203;
      __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
      v173 = *(v68 + 40);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v65, v66);
      v175 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(&v204, v209, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v173(v209, v67, v68);
      v69 = *(v214 + 24);
      if (v69 >= 3)
      {
        LOBYTE(v69) = 3;
      }

      BYTE9(v209[3]) = v69;
      LOBYTE(v192[0]) = 17;
      outlined init with copy of NavigationUpdateEvent(v209, v210);
      v70 = swift_allocObject();
      *(v70 + 16) = v65;
      *(v70 + 24) = v66;
      v71 = v210[1];
      *(v70 + 32) = v210[0];
      *(v70 + 48) = v71;
      *(v70 + 64) = v210[2];
      *(v70 + 74) = *(&v210[2] + 10);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.Action?(&v204, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v175);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v65, v66);

      outlined destroy of NavigationUpdateEvent(v209);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v178 = 0u;
      v182 = xmmword_18CDAF4D0;
      v174 = 0u;
      v176 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      goto LABEL_91;
    case 18:
      v10 = *&v211[88];
      v204 = *&v211[16];
      v205 = *&v211[32];
      v206 = *&v211[48];
      v207 = *&v211[64];
      if (*&v211[8] != -1)
      {
        v79 = *&v211[80];
        v80 = v214;
        if ((NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(&v204) & 1) == 0)
        {
          if (*(v80 + 352) >= 2u)
          {
            *(v80 + 352) = 0;
          }

          outlined init with copy of NavigationLinkSelectionIdentifier(&v204, v210 + 8);
          *&v210[0] = v12;
          *(&v210[4] + 8) = v79;

          NavigationColumnState.ColumnContent.presentView(_:from:)(v210, v13);
          v97 = v96;
          v99 = v98;
          v183 = v100;
          v101 = v100;
          outlined destroy of NavigationViewDestinationView(v210);
          if (v101 == 1)
          {
            LOBYTE(v210[0]) = 17;
            v179 = v99;
            v102 = *(v80 + 96);
            v103 = *(v80 + 104);
            v104 = *(v80 + 112);
            v105 = swift_allocObject();
            v105[2] = v97;
            v105[3] = v102;
            v105[4] = v103;
            v105[5] = v104;
            v106 = v103;
            v99 = v179;
            outlined copy of Binding<AnyNavigationPath>?(v102, v106, v104);
            static Update.enqueueAction(reason:_:)();
          }

          outlined destroy of NavigationLinkSelectionIdentifier(&v204);
          v5 = v4;
          *(&v209[8] + 8) = 0u;
          *(&v209[7] + 8) = 0u;
          *(&v209[6] + 8) = 0u;
          *(&v209[5] + 8) = 0u;
          *(&v209[4] + 8) = 0u;
          *(&v209[3] + 8) = 0u;
          *(&v209[2] + 8) = 0u;
          *(&v209[1] + 8) = 0u;
          *(&v209[9] + 1) = 0;
          *&v209[10] = 0x1FFFFFFFCLL;
          *(&v209[16] + 8) = 0u;
          *(&v209[17] + 8) = 0u;
          *(&v209[18] + 8) = 0u;
          *(&v209[19] + 8) = 0u;
          *(&v209[20] + 1) = 0u;
          *(&v209[10] + 8) = 0u;
          *(&v209[11] + 8) = 0u;
          *(&v209[12] + 8) = 0u;
          *(&v209[13] + 8) = 0u;
          *(&v209[14] + 8) = 0u;
          *(&v209[15] + 8) = 0u;
          *&v209[0] = v97;
          *(&v209[0] + 1) = v99;
          LOBYTE(v209[1]) = v183;
          *(&v209[21] + 4) = 1;
          goto LABEL_102;
        }

        v81 = *(v191 + 200);
        if (v81 >> 1 == 0xFFFFFFFF)
        {
          v82 = (v191 + 104);
          v83 = (v191 + 112);
          v84 = (v191 + 120);
          v85 = (v191 + 128);
          v81 = *(v191 + 136);
          v86 = (v191 + 144);
        }

        else
        {
          v82 = (v191 + 168);
          v83 = (v191 + 176);
          v84 = (v191 + 184);
          v85 = (v191 + 192);
          v86 = (v191 + 208);
        }

        v185 = *v86;
        v110 = *v85;
        v111 = *v84;
        v112 = *v83;
        v113 = *v82;
        v210[0] = v204;
        v210[1] = v205;
        v210[2] = v206;
        v210[3] = v207;
        outlined init with copy of NavigationRequest(v191, v192);
        *&v198[0] = v12;
        *(v198 + 8) = v210[0];
        *(&v198[1] + 8) = v210[1];
        *(&v198[2] + 8) = v210[2];
        *(&v198[3] + 8) = v210[3];
        BYTE8(v198[4]) = 1;
        v200 = 14;
        *(&v210[16] + 8) = 0u;
        *(&v210[17] + 8) = 0u;
        *(&v210[18] + 8) = 0u;
        *(&v210[13] + 8) = 0u;
        *(&v210[14] + 8) = 0u;
        *(&v210[15] + 8) = 0u;
        BYTE8(v210[19]) = -1;
        v210[1] = v192[1];
        v210[0] = v192[0];
        v210[5] = v192[5];
        v210[4] = v192[4];
        v210[2] = v192[2];
        v210[3] = v192[3];
        v210[9] = v196;
        v210[8] = v195;
        v210[6] = v193;
        v210[7] = v194;
        *&v210[10] = v197;
        *(&v210[10] + 1) = v113;
        *&v210[11] = v112;
        *(&v210[11] + 1) = v111;
        *&v210[12] = v110;
        *(&v210[12] + 1) = v81;
        *&v210[13] = v185;
        outlined assign with take of NavigationRequest.Action?(v198, &v210[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        v209[0] = xmmword_18CD6A6D0;
        LOBYTE(v209[1]) = 2;
        memcpy(&v209[1] + 8, v210, 0x139uLL);
LABEL_100:
        *(&v209[21] + 4) = 0;
        v5 = v4;
LABEL_102:
        memcpy(v213, v209, 0x15CuLL);
        v24 = v214;
        goto LABEL_128;
      }

      if (*(v214 + 24) >= 2u)
      {
        goto LABEL_119;
      }

      v91 = *(v191 + 200);
      if (v91 >> 1 == 0xFFFFFFFF)
      {
        v92 = (v191 + 104);
        v93 = (v191 + 112);
        v94 = (v191 + 120);
        v95 = (v191 + 128);
        v91 = *(v191 + 136);
      }

      else
      {
        v92 = (v191 + 168);
        v93 = (v191 + 176);
        v94 = (v191 + 184);
        v95 = (v191 + 192);
      }

      v115 = *v94;
      v116 = *v93;
      v117 = v91 >> 62;
      if (v117)
      {
        if (v117 != 1 || *v94 == 6)
        {
          goto LABEL_119;
        }

        v118 = v116;
        v116 = *v94;
        v115 = *v95;
      }

      else
      {
        v118 = *v92;
      }

      if (v116 - 2 >= 4)
      {
        v156 = *&v211[88];
        v157 = *&v211[80];
        if (v116)
        {
          v158 = 2;
        }

        else if (v115 == 3)
        {
          v158 = 1;
        }

        else
        {
          v158 = 2;
        }

        v198[0] = *&v211[16];
        v198[1] = *&v211[32];
        v198[2] = *&v211[48];
        v198[3] = *&v211[64];
        outlined init with copy of NavigationRequest(v191, v210);
        *&v192[0] = v12;
        *(v192 + 8) = v198[0];
        *(&v192[1] + 8) = v198[1];
        *(&v192[2] + 8) = v198[2];
        *(&v192[3] + 8) = v198[3];
        *(&v192[4] + 1) = v157;
        *&v192[5] = v156;
        LOBYTE(v193) = 12;
        LOBYTE(v209[21]) = -1;
        *(&v209[3] + 8) = v210[2];
        *(&v209[2] + 8) = v210[1];
        *(&v209[1] + 8) = v210[0];
        *(&v209[7] + 8) = v210[6];
        *(&v209[6] + 8) = v210[5];
        *(&v209[5] + 8) = v210[4];
        *(&v209[4] + 8) = v210[3];
        *(&v209[10] + 8) = v210[9];
        *(&v209[9] + 8) = v210[8];
        *(&v209[8] + 8) = v210[7];
        *(&v209[11] + 1) = *&v210[10];
        *&v209[12] = v118;
        *(&v209[12] + 1) = v158;
        v209[13] = v115;
        memset(&v209[14], 0, 112);
        outlined assign with take of NavigationRequest.Action?(v192, &v209[15], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        v209[0] = xmmword_18CD6A6D0;
        LOBYTE(v209[1]) = 2;
        goto LABEL_100;
      }

LABEL_119:
      lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
      swift_allocError();
      *v119 = 0u;
      *(v119 + 16) = 0u;
      *(v119 + 32) = 5;
      swift_willThrow();

      outlined destroy of NavigationLinkSelectionIdentifier(&v204);
      return v10;
    case 19:
      v209[0] = *v211;
      v209[1] = *&v211[16];
      v209[2] = *&v211[32];
      v209[3] = *&v211[48];
      v24 = v214;
      NavigationColumnState.programmaticallyDismissView(identifier:request:)(v209, v191, v213);
LABEL_35:
      outlined destroy of NavigationLinkSelectionIdentifier(v209);
      goto LABEL_128;
    case 20:
      v24 = v214;
      NavigationColumnState.popAllForSelectionChange(popReplacedRoots:)(v211[0] & 1, v213);
      goto LABEL_128;
    case 22:
      if (!(*&v211[8] | *v211 | *&v211[24] | *&v211[88] | *&v211[80] | *&v211[72] | *&v211[64] | *&v211[56] | *&v211[48] | *&v211[40] | *&v211[32] | *&v211[16]))
      {
        v14 = 0uLL;
        *(&v213[8] + 8) = 0u;
        *(&v213[7] + 8) = 0u;
        *(&v213[6] + 8) = 0u;
        *(&v213[5] + 8) = 0u;
        *(&v213[4] + 8) = 0u;
        *(&v213[3] + 8) = 0u;
        *(&v213[2] + 8) = 0u;
        *(&v213[1] + 8) = 0u;
        v15 = 0x1FFFFFFFCLL;
LABEL_7:
        *(&v213[9] + 1) = 0;
        *&v213[10] = v15;
        *(&v213[16] + 8) = v14;
        *(&v213[17] + 8) = v14;
        *(&v213[18] + 8) = v14;
        *(&v213[19] + 8) = v14;
        *(&v213[20] + 1) = v14;
        *(&v213[10] + 8) = v14;
        *(&v213[11] + 8) = v14;
        *(&v213[12] + 8) = v14;
        *(&v213[13] + 8) = v14;
        *(&v213[14] + 8) = v14;
        *(&v213[15] + 8) = v14;
        v213[0] = xmmword_18CD6A6D0;
        LOBYTE(v213[1]) = 2;
LABEL_33:
        *(&v213[21] + 4) = 0;
        v24 = v214;
        goto LABEL_128;
      }

      v76 = *&v211[24] | *&v211[8] | *&v211[88] | *&v211[80] | *&v211[72] | *&v211[64] | *&v211[56] | *&v211[48] | *&v211[40] | *&v211[32] | *&v211[16];
      v24 = v214;
      if (*v211 == 1 && !v76)
      {
        NavigationColumnState.ejectAll()();
        *(v24 + 352) = 0;
        *(&v213[1] + 8) = 0u;
        *(&v213[2] + 8) = 0u;
        *(&v213[3] + 8) = 0u;
        *(&v213[4] + 8) = 0u;
        *(&v213[5] + 8) = 0u;
        *(&v213[6] + 8) = 0u;
        *(&v213[7] + 8) = 0u;
        *(&v213[8] + 8) = 0u;
        *(&v213[9] + 1) = 0;
        *&v213[10] = 0x1FFFFFFFCLL;
        *(&v213[16] + 8) = 0u;
        *(&v213[17] + 8) = 0u;
        *(&v213[18] + 8) = 0u;
        *(&v213[19] + 8) = 0u;
        *(&v213[20] + 1) = 0u;
        *(&v213[10] + 8) = 0u;
        *(&v213[11] + 8) = 0u;
        *(&v213[12] + 8) = 0u;
        *(&v213[13] + 8) = 0u;
        *(&v213[14] + 8) = 0u;
        *(&v213[15] + 8) = 0u;
        v213[0] = xmmword_18CD79D60;
        LOBYTE(v213[1]) = 2;
LABEL_127:
        *(&v213[21] + 4) = 1;
        goto LABEL_128;
      }

      if (*v211 == 2 && !v76)
      {
        NavigationColumnState.dismissSplitViewColumn(request:)(v191, v213);
        goto LABEL_128;
      }

      if (*v211 != 3 || v76)
      {
        if (*v211 != 4 || v76)
        {
          if (*v211 != 5 || v76)
          {
            NavigationColumnState.revealedBySubsequentPop()(v213);
          }

          else
          {
            v154 = *(v214 + 8);
            if (v154 != -1)
            {
              if (v154)
              {
                v155 = merge32(_:_:)(v154, 1u);
              }

              else
              {
                v155 = 1;
              }

              *(v24 + 8) = v155;
            }

            *(&v213[8] + 8) = 0u;
            *(&v213[7] + 8) = 0u;
            *(&v213[6] + 8) = 0u;
            *(&v213[5] + 8) = 0u;
            *(&v213[4] + 8) = 0u;
            *(&v213[3] + 8) = 0u;
            *(&v213[2] + 8) = 0u;
            *(&v213[1] + 8) = 0u;
            *(&v213[9] + 1) = 0;
            *&v213[10] = 0x1FFFFFFFCLL;
            *(&v213[16] + 8) = 0u;
            *(&v213[17] + 8) = 0u;
            *(&v213[18] + 8) = 0u;
            *(&v213[19] + 8) = 0u;
            *(&v213[20] + 1) = 0u;
            *(&v213[10] + 8) = 0u;
            *(&v213[11] + 8) = 0u;
            *(&v213[12] + 8) = 0u;
            *(&v213[13] + 8) = 0u;
            *(&v213[14] + 8) = 0u;
            *(&v213[15] + 8) = 0u;
            v213[0] = xmmword_18CD6A6D0;
            LOBYTE(v213[1]) = 2;
            *(&v213[21] + 4) = 0;
          }
        }

        else
        {
          NavigationColumnState.applyPendingDeselections(_:)(v191, v213);
        }

        goto LABEL_128;
      }

      if (*(v214 + 48))
      {
        v107 = NavigationListState.clearAllSelections()();
        v108 = *(v24 + 8);
        if (v108 != -1)
        {
          if (!v108)
          {
LABEL_97:
            v109 = 1;
LABEL_171:
            *(v24 + 8) = v109;
            goto LABEL_172;
          }

LABEL_170:
          v109 = merge32(_:_:)(v108, 1u);
          goto LABEL_171;
        }
      }

      else
      {
        v107 = 0;
        v108 = *(v214 + 8);
        if (v108 != -1)
        {
          if (!v108)
          {
            goto LABEL_97;
          }

          goto LABEL_170;
        }
      }

LABEL_172:
      v213[0] = xmmword_18CD6A6D0;
      LOBYTE(v213[1]) = 2;
      *(&v213[1] + 8) = 0u;
      *(&v213[2] + 8) = 0u;
      *(&v213[3] + 8) = 0u;
      *(&v213[4] + 8) = 0u;
      *(&v213[5] + 8) = 0u;
      *(&v213[6] + 8) = 0u;
      *(&v213[7] + 8) = 0u;
      *(&v213[8] + 8) = 0u;
      *(&v213[9] + 1) = 0;
      *&v213[10] = 0x1FFFFFFFCLL;
      *(&v213[16] + 8) = 0u;
      *(&v213[17] + 8) = 0u;
      *(&v213[18] + 8) = 0u;
      *(&v213[19] + 8) = 0u;
      *(&v213[20] + 1) = 0u;
      *(&v213[10] + 8) = 0u;
      *(&v213[11] + 8) = 0u;
      *(&v213[12] + 8) = 0u;
      *(&v213[13] + 8) = 0u;
      *(&v213[14] + 8) = 0u;
      *(&v213[15] + 8) = 0u;
      *(&v213[21] + 4) = v107;
      goto LABEL_128;
    default:
      outlined init with copy of NavigationColumnState(v214, v209);
      v192[2] = *(&v209[17] + 8);
      v192[3] = *(&v209[18] + 8);
      v192[4] = *(&v209[19] + 8);
      *&v192[5] = *(&v209[20] + 1);
      v192[0] = *(&v209[15] + 8);
      v192[1] = *(&v209[16] + 8);
      v198[2] = *(&v209[17] + 8);
      v198[3] = *(&v209[18] + 8);
      v198[4] = *(&v209[19] + 8);
      *&v199 = *(&v209[20] + 1);
      v198[0] = *(&v209[15] + 8);
      v198[1] = *(&v209[16] + 8);
      outlined init with copy of ResolvedNavigationDestinations(v192, v210);
      v57 = (v12)(v198);
      v210[2] = v198[2];
      v210[3] = v198[3];
      v210[4] = v198[4];
      *&v210[5] = v199;
      v210[0] = v198[0];
      v210[1] = v198[1];
      outlined destroy of ResolvedNavigationDestinations(v210);
      if (v57 >> 62)
      {
        v58 = __CocoaSet.count.getter();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      outlined destroy of NavigationColumnState(v209);
      if (v58)
      {
        v59 = 0;
      }

      else
      {

        v59 = 2;
        v57 = 1;
      }

      *(&v213[8] + 8) = 0u;
      *(&v213[7] + 8) = 0u;
      *(&v213[6] + 8) = 0u;
      *(&v213[5] + 8) = 0u;
      *(&v213[4] + 8) = 0u;
      *(&v213[3] + 8) = 0u;
      *(&v213[2] + 8) = 0u;
      *(&v213[1] + 8) = 0u;
      *(&v213[9] + 1) = 0;
      *&v213[10] = 0x1FFFFFFFCLL;
      *(&v213[16] + 8) = 0u;
      *(&v213[17] + 8) = 0u;
      *(&v213[18] + 8) = 0u;
      *(&v213[19] + 8) = 0u;
      *(&v213[20] + 1) = 0u;
      *(&v213[10] + 8) = 0u;
      *(&v213[11] + 8) = 0u;
      *(&v213[12] + 8) = 0u;
      *(&v213[13] + 8) = 0u;
      *(&v213[14] + 8) = 0u;
      *(&v213[15] + 8) = 0u;

      v213[0] = v57;
      LOBYTE(v213[1]) = v59;
      *(&v213[21] + 4) = 0;
      v5 = v4;
      v24 = v214;
      goto LABEL_128;
  }
}

uint64_t sub_18BEBFEF8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void type metadata accessor for NavigationRequest.Action?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void destroy for NavigationState.UpdateResult(void *a1)
{
  if ((a1[17] >> 1) <= 0x80000000)
  {
    switch(*(a1 + 96))
    {
      case 0:
        goto LABEL_30;
      case 1:

        goto LABEL_30;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(a1 + 2);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_30;
      case 6:

        goto LABEL_30;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(a1);

        goto LABEL_30;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(a1);
        break;
      case 0xC:
      case 0xD:

        if (a1[4])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 1);
        }

        if (a1[7] != 1)
        {
        }

        goto LABEL_30;
      case 0xE:

        if (a1[4])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 1);
        }

        v2 = a1[7];
        goto LABEL_25;
      case 0x12:

        if (a1[5])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 2);
        }

        if (a1[8] != 1)
        {
        }

        goto LABEL_30;
      case 0x13:
        if (a1[3])
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v2 = a1[6];
LABEL_25:
        if (v2 == 1)
        {
          break;
        }

        goto LABEL_30;
      case 0x15:
        if (*a1)
        {
        }

        if (a1[2])
        {
LABEL_30:
        }

        break;
      default:
        break;
    }

    switch(*(a1 + 312))
    {
      case 0:
        goto LABEL_61;
      case 1:

        goto LABEL_61;
      case 2:

        v3 = a1 + 29;
        goto LABEL_67;
      case 3:

        return;
      case 4:
      case 5:

        goto LABEL_61;
      case 6:

        goto LABEL_61;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(a1 + 27);

        goto LABEL_61;
      case 0xB:
        v3 = a1 + 27;
LABEL_67:

        __swift_destroy_boxed_opaque_existential_1(v3);
        return;
      case 0xC:
      case 0xD:

        if (a1[31])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 28);
        }

        if (a1[34] != 1)
        {
        }

        goto LABEL_61;
      case 0xE:

        if (a1[31])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 28);
        }

        if (a1[34] == 1)
        {
          return;
        }

        goto LABEL_61;
      case 0x12:

        if (a1[32])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 29);
        }

        if (a1[35] != 1)
        {
        }

        goto LABEL_61;
      case 0x13:
        if (a1[30])
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 27);
        }

        if (a1[33] == 1)
        {
          return;
        }

        goto LABEL_61;
      case 0x15:
        if (a1[27])
        {
        }

        if (a1[29])
        {
LABEL_61:
        }

        break;
      default:
        return;
    }
  }
}

void NavigationColumnState.updateAnimationState(requestAnimation:disablesAnimations:seedDelta:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(v3 + 353);
  if (v4 == 2)
  {
    goto LABEL_15;
  }

  if ((a2 & 1) == 0 || !a3)
  {
    if (!a1 || (a2 & 1) != 0)
    {
      v5 = *(v3 + 353);
      goto LABEL_10;
    }

    v6 = *(v3 + 340);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      v9 = a2;
      *(v3 + 340) = v8;

      *(v3 + 344) = a1;
      LOBYTE(v5) = 1;
      a2 = v9;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  ++*(v3 + 336);
  LOBYTE(v5) = 1;
LABEL_10:
  if ((a2 | ((v4 & 0x100) >> 8)))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *(v3 + 353) = v11 & 0xFFFE | v5 & 1;
}

void destroy for NavigationState.RequestResults(uint64_t a1)
{
  outlined consume of ResolvedNavigationDestinations.ChangeRequest(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 160) >> 2 != 0x7FFFFFFFLL)
  {
    switch(*(a1 + 120))
    {
      case 0:
        goto LABEL_31;
      case 1:

        goto LABEL_31;
      case 2:

        __swift_destroy_boxed_opaque_existential_1((a1 + 40));
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_31;
      case 6:

        goto LABEL_31;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1((a1 + 24));

        goto LABEL_31;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1((a1 + 24));
        break;
      case 0xC:
      case 0xD:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        if (*(a1 + 80) != 1)
        {
        }

        goto LABEL_31;
      case 0xE:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        v2 = *(a1 + 80);
        goto LABEL_26;
      case 0x12:

        if (*(a1 + 64))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 40));
        }

        if (*(a1 + 88) != 1)
        {
        }

        goto LABEL_31;
      case 0x13:
        if (*(a1 + 48))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 24));
        }

        v2 = *(a1 + 72);
LABEL_26:
        if (v2 == 1)
        {
          break;
        }

        goto LABEL_31;
      case 0x15:
        if (*(a1 + 24))
        {
        }

        if (*(a1 + 40))
        {
LABEL_31:
        }

        break;
      default:
        break;
    }

    switch(*(a1 + 336))
    {
      case 0:
        goto LABEL_62;
      case 1:

        goto LABEL_62;
      case 2:

        v3 = (a1 + 256);
        goto LABEL_67;
      case 3:

        return;
      case 4:
      case 5:

        goto LABEL_62;
      case 6:

        goto LABEL_62;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1((a1 + 240));

        goto LABEL_62;
      case 0xB:
        v3 = (a1 + 240);
LABEL_67:

        __swift_destroy_boxed_opaque_existential_1(v3);
        return;
      case 0xC:
      case 0xD:

        if (*(a1 + 272))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 248));
        }

        if (*(a1 + 296) != 1)
        {
        }

        goto LABEL_62;
      case 0xE:

        if (*(a1 + 272))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 248));
        }

        v4 = *(a1 + 296);
        goto LABEL_57;
      case 0x12:

        if (*(a1 + 280))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 256));
        }

        if (*(a1 + 304) != 1)
        {
        }

        goto LABEL_62;
      case 0x13:
        if (*(a1 + 264))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 240));
        }

        v4 = *(a1 + 288);
LABEL_57:
        if (v4 != 1)
        {
          goto LABEL_62;
        }

        return;
      case 0x15:
        if (*(a1 + 240))
        {
        }

        if (*(a1 + 256))
        {
LABEL_62:
        }

        break;
      default:
        return;
    }
  }
}

uint64_t outlined consume of ResolvedNavigationDestinations.ChangeRequest(uint64_t result, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return v3;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

{
  v1 = *a1;
  v2 = *a1 + 40;
  v3 = *(*a1 + 104);
  (*(*a1 + 112))();
  outlined destroy of ToolbarPlacement.Role(v1);
  v3(v2, 0);

  free(v1);
}

{
  v1 = *a1;
  v2 = *a1 + 128;
  v3 = *(*a1 + 192);
  (*(*a1 + 200))();
  outlined destroy of IdentifiedDocumentGroupConfiguration(v1);
  v3(v2, 0);

  free(v1);
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1)
{
  v1 = *a1;
  outlined init with copy of NavigationState.Base?(*a1, *a1 + 360, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState);
  v2 = *(v1 + 356);
  if (*(v1 + 608))
  {
    v3 = *(v1 + 736);
    memcpy(v9, (v1 + 360), sizeof(v9));
    v4 = *v3;
    v5 = *(v1 + 744);
    if (v2)
    {
      memcpy((v4[7] + 360 * v5), v9, 0x163uLL);
    }

    else
    {
      v6 = *(v1 + 728);
      v7 = *(v1 + 720);
      v8 = *(v1 + 355);
      memcpy(__dst, v9, 0x163uLL);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v7, v8, v6, __dst, v4);
    }
  }

  else
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v1 + 360, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    if (v2)
    {
      specialized _NativeDictionary._delete(at:)(*(v1 + 744), **(v1 + 736));
    }
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v1, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 35);
  if (v2 == 3)
  {
    if (*(*a1 + 35))
    {
      v4 = *(v1 + 24);
      v5 = **(v1 + 16);
      outlined destroy of TabCustomizationID(*(v5 + 48) + 24 * v4);
      specialized _NativeDictionary._delete(at:)(v4, v5);
    }
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3)
    {
      *((*v7)[7] + 2 * v6) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, *v1, *(v1 + 8), *(v1 + 34) & 1, v2, *v7);
      outlined copy of TabCustomizationID.Base();
    }
  }

  free(v1);
}

{
  v1 = *a1;
  outlined init with copy of NavigationState.Base?(*a1, *a1 + 368, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
  v2 = *(v1 + 178);
  if (*(v1 + 384))
  {
    v3 = *(v1 + 552);
    outlined init with take of ConfirmationDialog(v1 + 368, v1 + 184);
    v4 = *v3;
    v5 = *(v1 + 560);
    if (v2)
    {
      outlined init with take of ConfirmationDialog(v1 + 184, v4[7] + 184 * v5);
    }

    else
    {
      v6 = *(v1 + 180);
      outlined init with take of ConfirmationDialog(v1 + 184, v1 + 368);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v6, v1 + 368, v4);
    }
  }

  else
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v1 + 368, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
    if (v2)
    {
      specialized _NativeDictionary._delete(at:)(*(v1 + 560), **(v1 + 552));
    }
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v1, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 128);
  if (v2)
  {
    v3 = *(v1 + 152);
    v4 = **(v1 + 144);
    if (*(*a1 + 121))
    {
      *(v4[7] + 8 * v3) = v2;
    }

    else
    {
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v1 + 136), v1);
      specialized _NativeDictionary._insert(at:key:value:)(v3, v1, v2, v4);
    }
  }

  else if (*(*a1 + 121))
  {
    v5 = *(v1 + 152);
    v6 = **(v1 + 144);
    outlined destroy of IdentifiedDocumentGroupConfiguration(*(v6 + 48) + (v5 << 7));
    specialized _NativeDictionary._delete(at:)(v5, v6);
  }

  free(v1);
}

void destroy for NavigationRequest.TargetedRequest(void *a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      if (a1[7] != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (a1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 1);
      }

      v2 = a1[7];
      goto LABEL_24;
    case 0x12:

      if (a1[5])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 2);
      }

      if (a1[8] != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = a1[6];
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (a1[2])
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  switch(*(a1 + 312))
  {
    case 0:
      goto LABEL_60;
    case 1:

      goto LABEL_60;
    case 2:

      v3 = a1 + 29;
      goto LABEL_66;
    case 3:

      return;
    case 4:
    case 5:

      goto LABEL_60;
    case 6:

      goto LABEL_60;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1 + 27);

      goto LABEL_60;
    case 0xB:
      v3 = a1 + 27;
LABEL_66:

      __swift_destroy_boxed_opaque_existential_1(v3);
      return;
    case 0xC:
    case 0xD:

      if (a1[31])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 28);
      }

      if (a1[34] != 1)
      {
      }

      goto LABEL_60;
    case 0xE:

      if (a1[31])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 28);
      }

      if (a1[34] == 1)
      {
        return;
      }

      goto LABEL_60;
    case 0x12:

      if (a1[32])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 29);
      }

      if (a1[35] != 1)
      {
      }

      goto LABEL_60;
    case 0x13:
      if (a1[30])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 27);
      }

      if (a1[33] == 1)
      {
        return;
      }

      goto LABEL_60;
    case 0x15:
      if (a1[27])
      {
      }

      if (a1[29])
      {
LABEL_60:
      }

      break;
    default:
      return;
  }
}

_OWORD *assignWithTake for NavigationState.UpdateResult(_OWORD *__dst, _OWORD *__src)
{
  if ((*(__dst + 17) >> 1) <= 0x80000000)
  {
    if ((*(__src + 17) >> 1) <= 0x80000000)
    {
      if (__dst != __src)
      {
        outlined destroy of NavigationRequest.Action(__dst);
        v4 = __src[5];
        __dst[4] = __src[4];
        __dst[5] = v4;
        *(__dst + 96) = *(__src + 96);
        v5 = __src[1];
        *__dst = *__src;
        __dst[1] = v5;
        v6 = __src[3];
        __dst[2] = __src[2];
        __dst[3] = v6;
      }

      *(__dst + 104) = *(__src + 104);
      *(__dst + 120) = *(__src + 120);
      *(__dst + 136) = *(__src + 136);
      *(__dst + 152) = *(__src + 152);
      *(__dst + 20) = *(__src + 20);

      *(__dst + 168) = *(__src + 168);
      *(__dst + 184) = *(__src + 184);
      *(__dst + 200) = *(__src + 200);
      if (*(__dst + 312) != 255)
      {
        if (*(__src + 312) != 255 && __dst == __src)
        {
          return __dst;
        }

        outlined destroy of NavigationRequest.Action(__dst + 216);
      }

      v7 = *(__src + 296);
      *(__dst + 280) = *(__src + 280);
      *(__dst + 296) = v7;
      *(__dst + 312) = *(__src + 312);
      v8 = *(__src + 232);
      *(__dst + 216) = *(__src + 216);
      *(__dst + 232) = v8;
      v9 = *(__src + 264);
      *(__dst + 248) = *(__src + 248);
      *(__dst + 264) = v9;
      return __dst;
    }

    switch(*(__dst + 96))
    {
      case 0:
        goto LABEL_39;
      case 1:

        goto LABEL_39;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(__dst + 2);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_39;
      case 6:

        goto LABEL_39;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(__dst);

        goto LABEL_39;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(__dst);
        break;
      case 0xC:
      case 0xD:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 1);
        }

        if (*(__dst + 7) != 1)
        {
        }

        goto LABEL_39;
      case 0xE:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 1);
        }

        v11 = *(__dst + 7);
        goto LABEL_34;
      case 0x12:

        if (*(__dst + 5))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 2);
        }

        if (*(__dst + 8) != 1)
        {
        }

        goto LABEL_39;
      case 0x13:
        if (*(__dst + 3))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst);
        }

        v11 = *(__dst + 6);
LABEL_34:
        if (v11 == 1)
        {
          break;
        }

        goto LABEL_39;
      case 0x15:
        if (*__dst)
        {
        }

        if (*(__dst + 2))
        {
LABEL_39:
        }

        break;
      default:
        break;
    }

    switch(*(__dst + 312))
    {
      case 0:
        goto LABEL_68;
      case 1:

        goto LABEL_68;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(__dst + 29);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_68;
      case 6:

        goto LABEL_68;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(__dst + 27);

        goto LABEL_68;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(__dst + 27);
        break;
      case 0xC:
      case 0xD:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 28);
        }

        if (*(__dst + 34) != 1)
        {
        }

        goto LABEL_68;
      case 0xE:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 28);
        }

        v12 = *(__dst + 34);
        goto LABEL_63;
      case 0x12:

        if (*(__dst + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 29);
        }

        if (*(__dst + 35) != 1)
        {
        }

        goto LABEL_68;
      case 0x13:
        if (*(__dst + 30))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 27);
        }

        v12 = *(__dst + 33);
LABEL_63:
        if (v12 == 1)
        {
          break;
        }

        goto LABEL_68;
      case 0x15:
        if (*(__dst + 27))
        {
        }

        if (*(__dst + 29))
        {
LABEL_68:
        }

        break;
      default:
        break;
    }
  }

  return memcpy(__dst, __src, 0x139uLL);
}

uint64_t outlined destroy of (NavigationState.Base, NavigationState.Base?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall NavigationState.finalizeFlush()()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_12:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(v1 + 48) + 24 * (v8 | (v6 << 6));
    v11 = specialized Dictionary.subscript.modify(v19, *v9, *(v9 + 8), *(v9 + 16));
    if (*(v10 + 248))
    {
      v12 = v10 + 353;
      v13 = *(v10 + 353);
      if (v13 != 2)
      {
        if ((v13 & 1) == 0)
        {
          if (*(v10 + 104))
          {
            v14 = v10;
            v15 = Transaction.animation.getter();
            if (v15)
            {
              if (*(v12 + 1) == 1)
              {
              }

              else
              {
                *(v14 + 344) = v15;

                v16 = *(v14 + 340);
                v17 = __CFADD__(v16, 1);
                v18 = v16 + 1;
                if (v17)
                {
                  goto LABEL_22;
                }

                *(v14 + 340) = v18;
              }
            }
          }
        }

        *v12 = 2;
      }
    }

    (v11)(v19, 0);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4);
  return Dictionary.subscript.modifyspecialized ;
}

void EnvironmentValues.writingToolsBehavior.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t assignWithCopy for PositionedNavigationDestinationProcessor(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
    v6 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 8) = *(a2 + 1);

    *(a1 + 16) = *(a2 + 2);
  }

  return a1;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v13 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    v15 = *(v3 + 48) + 48 * v14;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v32 = *(v15 + 24);
    *&v33 = *(v15 + 32);
    *(&v33 + 1) = *(v15 + 40);
    result = outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(*(v3 + 56) + 176 * v14, &v34);
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = *v42;
    v12 = *&v42[8];
    v29 = *&v42[24];
    v11 = v8;
    v30 = *&v42[40];
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v13;
    if (v12 >> 1 == 0xFFFFFFFF)
    {
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0x1FFFFFFFELL;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 192) = 0;
      *(a1 + 216) = 0;
    }

    else
    {
      v31 = v1[5];
      *&v34 = v17;
      *(&v34 + 1) = v16;
      *&v35 = v18;
      *(&v35 + 1) = v32;
      v36 = v33;
      v37 = v20;
      v38 = v21;
      v39 = v22;
      v40 = v23;
      v41 = v24;
      *v42 = v25;
      *&v42[16] = v26;
      *&v42[32] = v27;
      v43 = v28;
      v44 = v12;
      v45 = v29;
      v46 = v30;
      v31(&v34);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v34, &lazy cache variable for type metadata for (key: NavigationStackViewPosition, value: PositionedNavigationDestination.Storage.SeededRequest), &type metadata for NavigationStackViewPosition, &type metadata for PositionedNavigationDestination.Storage.SeededRequest);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    v12 = xmmword_18CD67BD0;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v33 = 0uLL;
        v30 = 0;
        v28 = 0;
        v32 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v13 = 0;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v29 = 0uLL;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of NavigationLinkSelectionIdentifier(*(v3 + 48) + (v13 << 6), v16);
    outlined init with copy of UpdateViewDestinationRequest(*(v3 + 56) + 192 * v13, v17);
    v19 = v16[0];
    v20 = v16[1];
    v21 = v16[2];
    v22 = v16[3];
    outlined init with take of UpdateViewDestinationRequest(v17, v23);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v14 = v1[5];
    result = outlined init with take of (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?(&v19, v17, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest), &type metadata for NavigationLinkSelectionIdentifier, &type metadata for UpdateViewDestinationRequest);
    if (v18 == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
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
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
    }

    else
    {
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)(v17, v16, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest), &type metadata for NavigationLinkSelectionIdentifier, &type metadata for UpdateViewDestinationRequest);
      v14(v16);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(v16, &lazy cache variable for type metadata for (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest), &type metadata for NavigationLinkSelectionIdentifier, &type metadata for UpdateViewDestinationRequest);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        *&v20 = 0;
        *(&v20 + 1) = 1;
        v19 = 0uLL;
        v21 = 0u;
        v22 = 0u;
        memset(v23, 0, sizeof(v23));
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + 4 * v13);
    result = outlined init with copy of InspectorStorage(*(v4 + 56) + 120 * v13, &v25);
    v16 = v25;
    v17 = *v26;
    v18 = *&v26[16];
    v19 = *&v26[32];
    v20 = *&v26[48];
    v21 = *&v26[64];
    v22 = *&v26[80];
    v23 = *&v26[96];
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v17 == 1)
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0;
    }

    else
    {
      v24 = v1[5];
      v25 = v14;
      *v26 = v16;
      *&v26[8] = v17;
      *&v26[24] = v18;
      *&v26[40] = v19;
      *&v26[56] = v20;
      *&v26[72] = v21;
      *&v26[88] = v22;
      *&v26[104] = v23;
      v24(&v25);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v25, &lazy cache variable for type metadata for (key: ViewIdentity, value: InspectorStorage), MEMORY[0x1E697DFC0], &type metadata for InspectorStorage);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v31 = v1[2];
    v8 = v1[3];
LABEL_11:
    v30 = (v7 - 1) & v7;
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of ToolbarPlacement.Role(*(v4 + 48) + 40 * v12, v40);
    v13 = (*(v4 + 56) + 80 * v12);
    v32 = *v13;
    v14 = *(v13 + 57);
    v16 = v13[2];
    v15 = v13[3];
    v33 = v13[1];
    *v34 = v16;
    *&v34[16] = v15;
    *&v34[25] = v14;
    v28 = v40[1];
    v29 = v40[0];
    v17 = v41;
    v18 = v32;
    v19 = v33;
    v26 = *(&v16 + 1);
    v27 = v16;
    v24 = *&v34[24];
    v25 = v15;
    v23 = v14 >> 56;
    v22 = HIBYTE(v14);
    result = outlined init with copy of ToolbarAppearanceConfiguration(&v32, v40);
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v31;
    v1[3] = v8;
    v1[4] = v30;
    if (*(&v18 + 1) == 1)
    {
LABEL_14:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 97) = 0u;
    }

    else
    {
      v21 = v1[5];
      v32 = v29;
      v33 = v28;
      *v34 = v17;
      *&v34[8] = v18;
      *&v34[24] = v19;
      *&v34[40] = v27;
      v35 = v26;
      v36 = v25;
      v37 = v24;
      v38 = v23;
      v39 = v22;
      v21(&v32);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v32, &lazy cache variable for type metadata for (key: ToolbarPlacement.Role, value: ToolbarAppearanceConfiguration), &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarAppearanceConfiguration);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        v31 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + 8 * v13);
    result = outlined init with copy of NavigationDestinationPresentation(*(v4 + 56) + 96 * v13, v24);
    v16 = *v24;
    v17 = *&v24[16];
    v18 = *&v24[32];
    v19 = *&v24[48];
    v20 = *&v24[64];
    v21 = *&v24[80];
    v22 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v22 == 255)
    {
LABEL_13:
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = -1;
    }

    else
    {
      v23 = v1[5];
      *v24 = v14;
      *&v24[8] = v16;
      *&v24[24] = v17;
      *&v24[40] = v18;
      *&v24[56] = v19;
      *&v24[72] = v20;
      v25 = v21;
      v26 = v22;
      v23(v24);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(v24, &lazy cache variable for type metadata for (key: Namespace.ID, value: NavigationDestinationPresentation), MEMORY[0x1E6981EA0], &type metadata for NavigationDestinationPresentation);
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (v2 != *(v1 + 56))
  {
    goto LABEL_10;
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    if (v3 == *(v1 + 64))
    {
      v5 = *(v1 + 72);
    }

    else
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    v4 = 0;
LABEL_10:
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v1 + 16);
      v7 = *(v1 + 24);
      v9 = __OFADD__(v8, v7);
      v10 = v8 + v7;
      if (!v9)
      {
        if (v6 == v10)
        {
          v11 = 0;
LABEL_16:
          *(v1 + 80) = v6;
          *(v1 + 88) = v11;
          *(v1 + 96) = v6 == v10;
          v12 = *(v1 + 104);
          v14[0] = v2;
          v14[1] = v3;
          v15 = v4;
          return v12(v14);
        }

        if (v4)
        {
          goto LABEL_22;
        }

        v11 = v3 + 1;
        if (!__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if ((*(v1 + 72) & 1) == 0)
  {
    v4 = 1;
    goto LABEL_10;
  }

LABEL_17:
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = -256;
  return result;
}

double outlined consume of ResolvedNavigationDestinations?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
  }

  return result;
}

char *storeEnumTagSinglePayload for AccessibilityLargeContentViewBehaviorModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t NavigationState.update(for:controllerCache:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136) >> 62;
  if (v8)
  {
    if (v8 != 1 || *(a1 + 120) == 6)
    {
      outlined init with copy of NavigationRequest(a1, __src);
      if (*(&__src[8] + 1) >> 62 == 2 && *(&__src[8] + 1) == 0x8000000000000000 && !(*&__src[8] | *&__src[9] | *(&__src[7] + 1) | *&__src[7] | *(&__src[6] + 1)))
      {
        outlined init with copy of NavigationRequest.Action(__src, &v115);
        v10 = BYTE8(__src[9]);
        outlined destroy of NavigationRequest(__src);
        HIBYTE(v121) = v10;
        *&v110[64] = v119;
        *&v110[80] = v120;
        *v110 = v115;
        *&v110[16] = v116;
        *&v110[32] = v117;
        *&v110[48] = v118;
        *&v110[96] = v121;
        if (v10 << 8 != 512)
        {
          v112[4] = *&v110[64];
          v112[5] = *&v110[80];
          LOWORD(v112[6]) = *&v110[96];
          v112[0] = *v110;
          v112[1] = *&v110[16];
          v112[2] = *&v110[32];
          v112[3] = *&v110[48];
          if (v104[13] == 1)
          {
            v11 = *(v104 + 13);
            v12 = *(v104 + 17);
            __src[2] = *(v104 + 15);
            __src[3] = v12;
            LOWORD(__src[4]) = *(v104 + 76);
            __src[0] = *(v104 + 11);
            __src[1] = v11;
            outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
            v104[12] = 0;
            v104[13] = 0;
            v104[11] = 0;
            *(v104 + 112) = 0;
            *(v104 + 113) = 3;
            *(v104 + 15) = 0u;
            *(v104 + 17) = 0u;
            *(v104 + 76) = 768;
          }

          NavigationSplitViewState.update(for:)(v112, __src);
          result = outlined destroy of NavigationRequest.SplitRequest(v112);
          if (!v99)
          {
            v14 = *(&__src[21] + 4);
            result = outlined destroy of NavigationState.RequestResults(__src);
            v104[2] = vadd_s32(v104[2], v14);
          }

          return result;
        }
      }

      else
      {
        outlined destroy of NavigationRequest(__src);
        memset(v110, 0, 96);
        *&v110[96] = 512;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v110, &lazy cache variable for type metadata for NavigationRequest.SplitRequest?, &type metadata for NavigationRequest.SplitRequest, MEMORY[0x1E69E6720]);
      outlined init with copy of NavigationRequest(a1, &v115);
      *&v110[160] = xmmword_18CD67BC0;
      *&v110[176] = 0;
      if (v124 >> 62 == 1)
      {
        *&v110[104] = v122;
        *&v110[120] = v123;
        v110[136] = v124 & 1;
        *&v110[144] = v125;
        outlined init with copy of NavigationRequest.Action(&v115, v110);
        v15 = v126;
        outlined destroy of NavigationRequest(&v115);
        v110[152] = v15;
        __src[10] = *&v110[160];
        *&__src[11] = *&v110[176];
        __src[4] = *&v110[64];
        __src[5] = *&v110[80];
        __src[6] = *&v110[96];
        __src[7] = *&v110[112];
        __src[0] = *v110;
        __src[1] = *&v110[16];
        __src[2] = *&v110[32];
        __src[3] = *&v110[48];
        __src[8] = *&v110[128];
        __src[9] = *&v110[144];
        if (*&v110[144] != 1)
        {
          v112[8] = __src[8];
          v112[9] = __src[9];
          v112[10] = __src[10];
          *&v112[11] = *&__src[11];
          v112[4] = __src[4];
          v112[5] = __src[5];
          v112[6] = __src[6];
          v112[7] = __src[7];
          v112[0] = __src[0];
          v112[1] = __src[1];
          v112[2] = __src[2];
          v112[3] = __src[3];
          if (v104[5])
          {
            v16 = *(v104 + 13);
            v17 = *(v104 + 17);
            *&v110[32] = *(v104 + 15);
            *&v110[48] = v17;
            *&v110[64] = *(v104 + 76);
            *v110 = *(v104 + 11);
            *&v110[16] = v16;
            v18 = *(v104 + 13);
            v19 = *(v104 + 17);
            v117 = *(v104 + 15);
            v118 = v19;
            LOWORD(v119) = *(v104 + 76);
            v20 = *(v104 + 11);
            v116 = v18;
            v115 = v20;
            v21 = v99;
          }

          else
          {
            v85 = MEMORY[0x1E69E7CC0];
            v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC0egF0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SayAC7BindingVySbGGTt0g5Tf4g_n(v85);
            v88 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_AC03AnyG9SelectionVTt0g5Tf4g_n(v85);
            v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15NavigationStateV7ListKeyV_SbTt0g5Tf4g_n(v85);
            outlined consume of NavigationListState?(v104[4], v104[5]);
            v104[4] = 0;
            v104[5] = v86;
            v90 = MEMORY[0x1E69E7CD0];
            v104[6] = v87;
            v104[7] = v88;
            v104[8] = v89;
            v104[9] = v90;
            *(v104 + 20) = 0;
            v91 = *(v104 + 13);
            v92 = *(v104 + 17);
            *&v110[32] = *(v104 + 15);
            *&v110[48] = v92;
            *&v110[64] = *(v104 + 76);
            *v110 = *(v104 + 11);
            *&v110[16] = v91;
            v93 = *(v104 + 13);
            v94 = *(v104 + 17);
            v117 = *(v104 + 15);
            v118 = v94;
            LOWORD(v119) = *(v104 + 76);
            v95 = *(v104 + 11);
            v116 = v93;
            v115 = v95;
            v21 = v99;
            if (!v86)
            {
LABEL_103:
              __break(1u);
LABEL_104:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_105:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }
          }

          outlined init with copy of NavigationState.Base?(v110, v128, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          NavigationListState.update(for:splitViewState:)(v112, &v115, __src);
          v128[2] = v117;
          v128[3] = v118;
          v129 = v119;
          v128[1] = v116;
          v128[0] = v115;
          outlined destroy of Binding<NavigationSplitViewColumn>(v128, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
          if (v21)
          {
            return outlined destroy of NavigationRequest.ListRequest(v112);
          }

          outlined destroy of NavigationRequest.ListRequest(v112);
          v96 = *(&__src[21] + 4);
          result = outlined destroy of NavigationState.RequestResults(__src);
          v104[2] = vadd_s32(v104[2], v96);
          return result;
        }
      }

      else
      {
        outlined destroy of NavigationRequest(&v115);
        memset(__src, 0, 144);
        *&__src[9] = 1;
        *(&__src[9] + 8) = 0u;
        *(&__src[10] + 8) = 0u;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    }
  }

  if (NavigationRequest.skipFirstColumn.getter())
  {
    if (v8 && (v8 != 1 || (v22 = v6, v4 = v5, LOBYTE(v5) = v6, v6 = v7, v22 == 6)) || v5 - 2 < 4)
    {
      v4 = 0;
      v23 = 0;
      v6 = 0;
      v24 = 0x1FFFFFFFELL;
    }

    else
    {
      if (v5)
      {
        v23 = 2;
      }

      else if (v6 == 3)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      v24 = 0;
    }

    memset(__src, 0, 96);
    LOBYTE(__src[6]) = -1;
    outlined init with copy of NavigationRequest(a1, v128);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v139 = -1;
    *&v130 = v4;
    *(&v130 + 1) = v23;
    v131 = v6;
    v132 = v24;
  }

  else
  {
    memset(__src, 0, 96);
    LOBYTE(__src[6]) = -1;
    outlined init with copy of NavigationRequest(a1, v128);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v139 = -1;
    v130 = 0u;
    v131 = 0u;
    v132 = xmmword_18CD67BD0;
  }

  outlined assign with take of NavigationRequest.Action?(__src, &v133);
  outlined init with copy of NavigationRequest.TargetedRequest(v128, &v115);
  v127 = 0;
  outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(&v115, __src);
  v25 = v99;
  v26 = v104;
  if (*(&__src[8] + 1) >> 2 != 0x7FFFFFFFLL)
  {
    v28 = 0;
    v27 = 0;
    v97 = v3 ^ 1;
    while (1)
    {
      v102 = v28;
      memcpy(__dst, __src, 0x139uLL);
      v30 = __dst[21];
      v31 = __dst[22];
      v32 = __dst[25];
      v33 = __dst[21];
      v34 = __dst[22];
      v35 = __dst[23];
      v36 = __dst[24];
      v108 = __dst[23];
      v109 = __dst[24];
      v106 = __dst[25] & 0xFFFFFFFFFFFFFFFELL;
      v107 = __dst[25];
      if ((__dst[25] & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
      {
        v33 = __dst[13];
        v34 = __dst[14];
        v35 = __dst[15];
        v36 = __dst[16];
        v32 = __dst[17];
      }

      v37 = v32 >> 62;
      v101 = v27;
      if (v37)
      {
        v38 = v37 != 1 || v35 == 6;
        v33 = v34;
        v34 = v35;
        if (v38)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v36 = v35;
      }

      v39 = v26[3];
      v105 = __dst[22];
      if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34, v36), (v41 & 1) != 0))
      {
        outlined init with copy of NavigationColumnState(*(v39 + 56) + 360 * v40, __src);
        outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      }

      else
      {
        v100 = v25;
        memset(__src, 0, 355);
        outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
        v42 = v30;
        v43 = v108;
        v44 = v109;
        v45 = v107;
        if (v106 == 0x1FFFFFFFELL)
        {
          v42 = __dst[13];
          v31 = __dst[14];
          v43 = __dst[15];
          v44 = __dst[16];
          v45 = __dst[17];
        }

        v46 = v45 >> 62;
        v103 = v30;
        if (v46)
        {
          if (v46 != 1)
          {
            goto LABEL_104;
          }

          v42 = v31;
          LOBYTE(v31) = v43;
          if (v43 == 6)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v44 = v43;
        }

        v47 = *v26;
        v48 = v26[1];
        *&__src[0] = 0x100000001;
        DWORD2(__src[0]) = 0;
        *(&__src[2] + 8) = 0u;
        *(&__src[3] + 8) = 0u;
        *(&__src[4] + 8) = 0u;
        *(&__src[5] + 8) = 0u;
        *(&__src[6] + 8) = 0u;
        *(&__src[7] + 8) = 0u;
        *(&__src[8] + 8) = 0u;
        *(&__src[9] + 8) = 0u;
        *(&__src[10] + 8) = 0u;
        *(&__src[11] + 8) = 0u;
        *(&__src[12] + 1) = 0;
        LOBYTE(__src[13]) = -1;
        LOBYTE(__src[15]) = 1;
        memset(&__src[21], 0, 17);
        *(&__src[22] + 1) = 2;
        *&__src[1] = v42;
        BYTE8(__src[1]) = v31;
        *&__src[2] = v44;
        v49 = MEMORY[0x1E69E7CC0];
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(v49);
        v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySOGTt0g5Tf4g_n(v49);

        v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpXpTt0g5Tf4g_n(v49);
        *(&__src[15] + 1) = v50;
        *&__src[16] = v51;
        *(&__src[16] + 1) = v52;
        *&__src[17] = 1;
        *(&__src[17] + 1) = v53;
        *&__src[18] = v47;
        *(&__src[18] + 1) = v48;
        *&__src[19] = a2;
        v54 = v103;
        *(&__src[19] + 1) = v42;
        v55 = v105;
        v56 = v108;
        v57 = v109;
        LOBYTE(__src[20]) = v31;
        v58 = v107;
        *(&__src[20] + 1) = v44;
        if (v106 == 0x1FFFFFFFELL)
        {
          v54 = __dst[13];
          v55 = __dst[14];
          v56 = __dst[15];
          v57 = __dst[16];
          v58 = __dst[17];
        }

        v59 = v58 >> 62;
        v25 = v100;
        if (v59)
        {
          if (v59 != 1)
          {
            goto LABEL_104;
          }

          v54 = v55;
          v55 = v56;
          if (v56 == 6)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v57 = v56;
        }

        outlined init with copy of NavigationColumnState(__src, v112);

        specialized Dictionary.subscript.setter(v112, v54, v55, v57);
        outlined destroy of NavigationColumnState(__src);
        v31 = v105;
        v30 = v103;
      }

      v60 = v30;
      v61 = v31;
      v62 = v108;
      v63 = v109;
      v64 = v107;
      if (v106 == 0x1FFFFFFFELL)
      {
        v30 = __dst[13];
        v61 = __dst[14];
        v62 = __dst[15];
        v63 = __dst[16];
        v64 = __dst[17];
      }

      v65 = v64 >> 62;
      if (v65)
      {
        if (v65 != 1)
        {
          goto LABEL_104;
        }

        v30 = v61;
        v61 = v62;
        if (v62 == 6)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v63 = v62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v104[3];
      v67 = v111;
      v104[3] = 0x8000000000000000;
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v61, v63);
      v70 = *(v67 + 16);
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        break;
      }

      v73 = v68;
      if (*(v67 + 24) >= v72)
      {
        v26 = v104;
        v76 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, isUniquelyReferenced_nonNull_native);
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v61, v63);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_105;
        }

        v69 = v74;
        v26 = v104;
        v76 = v60;
      }

      if ((v73 & 1) == 0)
      {
        goto LABEL_102;
      }

      v77 = v111;
      memcpy(__src, (*(v111 + 56) + 360 * v69), 0x163uLL);
      if (BYTE1(__src[22]) == 2)
      {
        *(&__src[22] + 1) = 0;
      }

      outlined init with copy of NavigationState.Base?(__src, v110, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState);
      if (*&v110[248])
      {
        memcpy(v112, v110, 0x163uLL);
        memcpy((*(v77 + 56) + 360 * v69), v112, 0x163uLL);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v110, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
        specialized _NativeDictionary._delete(at:)(v69, v77);
      }

      v78 = v105;
      outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      v26[3] = v77;
      if (v106 == 0x1FFFFFFFELL)
      {
        v76 = __dst[13];
        v78 = __dst[14];
        v108 = __dst[15];
        v109 = __dst[16];
        v107 = __dst[17];
      }

      if (v107 >> 62)
      {
        if (v107 >> 62 != 1 || v108 == 6)
        {
          goto LABEL_104;
        }

        v79 = specialized Dictionary._Variant.subscript.modify(v112, v78, v108, v109);
      }

      else
      {
        v79 = specialized Dictionary._Variant.subscript.modify(v112, v76, v78, v108);
      }

      if (!*(v80 + 248))
      {
        goto LABEL_101;
      }

      v81 = v79;
      v82 = NavigationColumnState.update(for:shouldAnimate:splitViewState:)(__src, __dst, v97 & 1, (v26 + 11));
      if (v25)
      {
        (v81)(v112, 0);
        outlined destroy of NavigationRequest.TargetedRequest(__dst);
        outlined destroy of NavigationRequest.TargetedRequest(v128);
        return outlined destroy of (NavigationState.Base, NavigationState.Base?)(&v115, type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds));
      }

      v83 = v82;
      v84 = HIDWORD(v82);
      (v81)(v112, 0);
      outlined destroy of NavigationRequest.TargetedRequest(__dst);
      outlined assign with take of NavigationState.UpdateResult(__src, &v115);
      v127 = v83;
      v28 = v102 + v83;
      v27 = v101 + v84;
      outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(&v115, __src);
      if (*(&__src[8] + 1) >> 2 == 0x7FFFFFFFLL)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    memset(__src, 0, 355);
    __break(1u);
    goto LABEL_103;
  }

  v27 = 0;
  v28 = 0;
LABEL_32:
  outlined destroy of NavigationRequest.TargetedRequest(v128);
  outlined destroy of NavigationState.UpdateResult(__src);
  v29 = *(v26 + 5) + v27;
  *(v26 + 4) += v28;
  *(v26 + 5) = v29;
  return outlined destroy of (NavigationState.Base, NavigationState.Base?)(&v115, type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds));
}

void destroy for NavigationRequest.Action(void *a1)
{
  v1 = a1;
  v2 = *(a1 + 96);
  if (v2 >= 0x16)
  {
    v2 = *a1 + 22;
  }

  switch(v2)
  {
    case 0u:
      goto LABEL_33;
    case 1u:

      goto LABEL_33;
    case 2u:

      a1 = v1 + 2;
      goto LABEL_37;
    case 3u:

      return;
    case 4u:
    case 5u:

      goto LABEL_33;
    case 6u:

      goto LABEL_33;
    case 0xAu:
    case 0x11u:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_33;
    case 0xBu:
LABEL_37:

      __swift_destroy_boxed_opaque_existential_1(a1);
      return;
    case 0xCu:
    case 0xDu:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 1);
      }

      if (v1[7] != 1)
      {
      }

      goto LABEL_33;
    case 0xEu:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 1);
      }

      if (v1[7] == 1)
      {
        return;
      }

      goto LABEL_33;
    case 0x12u:

      if (v1[5])
      {
        __swift_destroy_boxed_opaque_existential_1(v1 + 2);
      }

      if (v1[8] != 1)
      {
      }

      goto LABEL_33;
    case 0x13u:
      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      if (v1[6] == 1)
      {
        return;
      }

      goto LABEL_33;
    case 0x15u:
      if (*a1)
      {
      }

      if (v1[2])
      {
LABEL_33:
      }

      break;
    default:
      return;
  }
}

void type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds)()
{
  if (!lazy cache variable for type metadata for (NavigationState.UpdateResult, NavigationState.Seeds))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationState.UpdateResult, NavigationState.Seeds));
    }
  }
}

char *initializeWithCopy for NavigationState.UpdateResult(char *__dst, char *__src)
{
  if ((*(__src + 17) >> 1) > 0x80000000)
  {

    return memcpy(__dst, __src, 0x139uLL);
  }

  else
  {
    switch(__src[96])
    {
      case 0:
        v4 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v4;
        __dst[96] = 0;
        goto LABEL_61;
      case 1:
        v23 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v23;
        v24 = *(__src + 3);
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = v24;
        *(__dst + 4) = *(__src + 4);
        __dst[96] = 1;

        goto LABEL_61;
      case 2:
        v15 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v15;
        v16 = *(__src + 40);
        *(__dst + 40) = v16;
        v17 = v16;
        v18 = **(v16 - 8);

        v18(__dst + 16, __src + 16, v17);
        *(__dst + 56) = *(__src + 56);
        __dst[96] = 2;
        break;
      case 3:
        *__dst = *__src;
        *(__dst + 8) = *(__src + 8);
        *(__dst + 3) = *(__src + 3);
        __dst[96] = 3;

        break;
      case 4:
        v31 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v31;
        *(__dst + 8) = *(__src + 8);
        v14 = 4;
        goto LABEL_25;
      case 5:
        v19 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v19;
        *(__dst + 8) = *(__src + 8);
        v14 = 5;
        goto LABEL_25;
      case 6:
        v25 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v25;
        *(__dst + 2) = *(__src + 2);
        __dst[96] = 6;

        goto LABEL_61;
      case 10:
        v26 = *(__src + 24);
        *(__dst + 24) = v26;
        (**(v26 - 8))(__dst, __src);
        v27 = *(__src + 6);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = v27;
        *(__dst + 28) = *(__src + 28);
        v14 = 10;
        goto LABEL_25;
      case 11:
        v35 = *(__src + 24);
        *(__dst + 24) = v35;
        (**(v35 - 8))(__dst, __src);
        __dst[96] = 11;
        break;
      case 12:
        *__dst = *__src;
        v32 = __dst + 8;
        v33 = *(__src + 4);

        if (v33)
        {
          v34 = *(__src + 5);
          *(__dst + 4) = v33;
          *(__dst + 5) = v34;
          (**(v33 - 8))(__dst + 8, __src + 8, v33);
        }

        else
        {
          v54 = *(__src + 24);
          *v32 = *(__src + 8);
          *(__dst + 24) = v54;
          *(__dst + 5) = *(__src + 5);
        }

        v55 = *(__src + 7);
        if (v55 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v55;
        }

        v56 = *(__src + 9);
        v57 = *(__src + 10);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = v56;
        *(__dst + 10) = v57;
        v43 = 12;
        goto LABEL_60;
      case 13:
        *__dst = *__src;
        v9 = __dst + 8;
        v10 = *(__src + 4);

        if (v10)
        {
          v11 = *(__src + 5);
          *(__dst + 4) = v10;
          *(__dst + 5) = v11;
          (**(v10 - 8))(__dst + 8, __src + 8, v10);
        }

        else
        {
          v44 = *(__src + 24);
          *v9 = *(__src + 8);
          *(__dst + 24) = v44;
          *(__dst + 5) = *(__src + 5);
        }

        v45 = *(__src + 7);
        if (v45 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v45;
        }

        v46 = *(__src + 9);
        v47 = *(__src + 10);
        *(__dst + 8) = *(__src + 8);
        *(__dst + 9) = v46;
        *(__dst + 10) = v47;
        __dst[88] = __src[88];
        v43 = 13;
        goto LABEL_60;
      case 14:
        *__dst = *__src;
        v20 = __dst + 8;
        v21 = *(__src + 4);

        if (v21)
        {
          v22 = *(__src + 5);
          *(__dst + 4) = v21;
          *(__dst + 5) = v22;
          (**(v21 - 8))(__dst + 8, __src + 8, v21);
        }

        else
        {
          v48 = *(__src + 24);
          *v20 = *(__src + 8);
          *(__dst + 24) = v48;
          *(__dst + 5) = *(__src + 5);
        }

        v49 = *(__src + 7);
        if (v49 == 1)
        {
          *(__dst + 3) = *(__src + 3);
        }

        else
        {
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = v49;
        }

        *(__dst + 8) = *(__src + 8);
        __dst[72] = __src[72];
        __dst[96] = 14;
        break;
      case 17:
        v12 = *(__src + 24);
        *(__dst + 24) = v12;
        (**(v12 - 8))(__dst, __src);
        __dst[40] = __src[40];
        v13 = *(__src + 7);
        *(__dst + 6) = *(__src + 6);
        *(__dst + 7) = v13;
        *(__dst + 32) = *(__src + 32);
        v14 = 17;
LABEL_25:
        __dst[96] = v14;

        goto LABEL_61;
      case 18:
        v6 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v6;
        v7 = *(__src + 5);

        if (v7)
        {
          v8 = *(__src + 6);
          *(__dst + 5) = v7;
          *(__dst + 6) = v8;
          (**(v7 - 8))(__dst + 16, __src + 16, v7);
        }

        else
        {
          v39 = *(__src + 2);
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = v39;
          *(__dst + 6) = *(__src + 6);
        }

        v40 = *(__src + 8);
        if (v40 == 1)
        {
          *(__dst + 56) = *(__src + 56);
        }

        else
        {
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = v40;
        }

        v41 = *(__src + 10);
        v42 = *(__src + 11);
        *(__dst + 9) = *(__src + 9);
        *(__dst + 10) = v41;
        *(__dst + 11) = v42;
        v43 = 18;
LABEL_60:
        __dst[96] = v43;
LABEL_61:

        break;
      case 19:
        v28 = *(__src + 3);
        if (v28)
        {
          v29 = *(__src + 4);
          *(__dst + 3) = v28;
          *(__dst + 4) = v29;
          (**(v28 - 8))(__dst, __src);
        }

        else
        {
          v50 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v50;
          *(__dst + 4) = *(__src + 4);
        }

        v51 = *(__src + 6);
        if (v51 == 1)
        {
          *(__dst + 40) = *(__src + 40);
        }

        else
        {
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = v51;
        }

        *(__dst + 7) = *(__src + 7);
        __dst[96] = 19;
        break;
      case 21:
        if (*__src)
        {
          v30 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v30;
        }

        else
        {
          *__dst = *__src;
        }

        v52 = *(__src + 2);
        if (v52)
        {
          v53 = *(__src + 3);
          *(__dst + 2) = v52;
          *(__dst + 3) = v53;
        }

        else
        {
          *(__dst + 1) = *(__src + 1);
        }

        __dst[96] = 21;
        break;
      default:
        v36 = *(__src + 5);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v36;
        __dst[96] = __src[96];
        v37 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v37;
        v38 = *(__src + 3);
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = v38;
        break;
    }

    *(__dst + 104) = *(__src + 104);
    *(__dst + 120) = *(__src + 120);
    *(__dst + 136) = *(__src + 136);
    __dst[152] = __src[152];
    *(__dst + 20) = *(__src + 20);
    *(__dst + 168) = *(__src + 168);
    *(__dst + 184) = *(__src + 184);
    *(__dst + 200) = *(__src + 200);
    v58 = __dst + 216;
    v59 = __src + 216;
    v60 = __src[312];

    switch(v60)
    {
      case 0:
        v61 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v61;
        __dst[312] = 0;
        goto LABEL_114;
      case 1:
        v72 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v72;
        v73 = *(__src + 30);
        *(__dst + 29) = *(__src + 29);
        *(__dst + 30) = v73;
        *(__dst + 31) = *(__src + 31);
        __dst[312] = 1;

        goto LABEL_84;
      case 2:
        v76 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v76;
        v77 = *(__src + 16);
        *(__dst + 16) = v77;
        v78 = v77;
        v79 = **(v77 - 8);

        v79(__dst + 232, __src + 232, v78);
        *(__dst + 17) = *(__src + 17);
        __dst[312] = 2;
        return __dst;
      case 3:
        *(__dst + 27) = *(__src + 27);
        *(__dst + 14) = *(__src + 14);
        *(__dst + 30) = *(__src + 30);
        __dst[312] = 3;

        return __dst;
      case 4:
        v69 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v69;
        *(__dst + 116) = *(__src + 116);
        v70 = 4;
        goto LABEL_82;
      case 5:
        v71 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v71;
        *(__dst + 116) = *(__src + 116);
        v70 = 5;
        goto LABEL_82;
      case 6:
        v89 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v89;
        *(__dst + 29) = *(__src + 29);
        __dst[312] = 6;

LABEL_84:

        goto LABEL_114;
      case 10:
        v74 = *(__src + 15);
        *(__dst + 15) = v74;
        (**(v74 - 8))(__dst + 216, __src + 216);
        v75 = *(__src + 33);
        *(__dst + 32) = *(__src + 32);
        *(__dst + 33) = v75;
        *(__dst + 136) = *(__src + 136);
        v70 = 10;
        goto LABEL_82;
      case 11:
        v90 = *(__src + 15);
        *(__dst + 15) = v90;
        (**(v90 - 8))(__dst + 216, __src + 216);
        __dst[312] = 11;
        return __dst;
      case 12:
        *(__dst + 27) = *(__src + 27);
        v67 = *(__src + 31);

        if (v67)
        {
          v68 = *(__src + 32);
          *(__dst + 31) = v67;
          *(__dst + 32) = v68;
          (**(v67 - 8))(__dst + 224, __src + 224, v67);
        }

        else
        {
          v94 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v94;
          *(__dst + 32) = *(__src + 32);
        }

        v95 = __src + 264;
        v96 = *(__src + 34);
        if (v96 == 1)
        {
          *(__dst + 264) = *v95;
        }

        else
        {
          *(__dst + 33) = *v95;
          *(__dst + 34) = v96;
        }

        v97 = *(__src + 36);
        v98 = *(__src + 37);
        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = v97;
        *(__dst + 37) = v98;
        v99 = 12;
        goto LABEL_113;
      case 13:
        *(__dst + 27) = *(__src + 27);
        v80 = *(__src + 31);

        if (v80)
        {
          v81 = *(__src + 32);
          *(__dst + 31) = v80;
          *(__dst + 32) = v81;
          (**(v80 - 8))(__dst + 224, __src + 224, v80);
        }

        else
        {
          v100 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v100;
          *(__dst + 32) = *(__src + 32);
        }

        v101 = __src + 264;
        v102 = *(__src + 34);
        if (v102 == 1)
        {
          *(__dst + 264) = *v101;
        }

        else
        {
          *(__dst + 33) = *v101;
          *(__dst + 34) = v102;
        }

        v103 = *(__src + 36);
        v104 = *(__src + 37);
        *(__dst + 35) = *(__src + 35);
        *(__dst + 36) = v103;
        *(__dst + 37) = v104;
        __dst[304] = __src[304];
        v99 = 13;
        goto LABEL_113;
      case 14:
        *(__dst + 27) = *(__src + 27);
        v82 = *(__src + 31);

        if (v82)
        {
          v83 = *(__src + 32);
          *(__dst + 31) = v82;
          *(__dst + 32) = v83;
          (**(v82 - 8))(__dst + 224, __src + 224, v82);
        }

        else
        {
          v105 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v105;
          *(__dst + 32) = *(__src + 32);
        }

        v106 = __src + 264;
        v107 = *(__src + 34);
        if (v107 == 1)
        {
          *(__dst + 264) = *v106;
        }

        else
        {
          *(__dst + 33) = *v106;
          *(__dst + 34) = v107;
        }

        *(__dst + 35) = *(__src + 35);
        __dst[288] = __src[288];
        __dst[312] = 14;
        return __dst;
      case 17:
        v87 = *(__src + 15);
        *(__dst + 15) = v87;
        (**(v87 - 8))(__dst + 216, __src + 216);
        __dst[256] = __src[256];
        v88 = *(__src + 34);
        *(__dst + 33) = *(__src + 33);
        *(__dst + 34) = v88;
        *(__dst + 140) = *(__src + 140);
        v70 = 17;
LABEL_82:
        __dst[312] = v70;

        goto LABEL_114;
      case 18:
        v84 = *(__src + 28);
        *(__dst + 27) = *(__src + 27);
        *(__dst + 28) = v84;
        v85 = *(__src + 32);

        if (v85)
        {
          v86 = *(__src + 33);
          *(__dst + 32) = v85;
          *(__dst + 33) = v86;
          (**(v85 - 8))(__dst + 232, __src + 232, v85);
        }

        else
        {
          *(__dst + 232) = *(__src + 232);
          *(__dst + 248) = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
        }

        v108 = *(__src + 35);
        if (v108 == 1)
        {
          *(__dst + 17) = *(__src + 17);
        }

        else
        {
          *(__dst + 34) = *(__src + 34);
          *(__dst + 35) = v108;
        }

        v109 = *(__src + 37);
        v110 = *(__src + 38);
        *(__dst + 36) = *(__src + 36);
        *(__dst + 37) = v109;
        *(__dst + 38) = v110;
        v99 = 18;
LABEL_113:
        __dst[312] = v99;
LABEL_114:

        break;
      case 19:
        v65 = *(__src + 30);
        if (v65)
        {
          v66 = *(__src + 31);
          *(__dst + 30) = v65;
          *(__dst + 31) = v66;
          (**(v65 - 8))(__dst + 216, __src + 216);
        }

        else
        {
          v92 = *(__src + 232);
          *v58 = *v59;
          *(__dst + 232) = v92;
          *(__dst + 31) = *(__src + 31);
        }

        v93 = *(__src + 33);
        if (v93 == 1)
        {
          *(__dst + 16) = *(__src + 16);
        }

        else
        {
          *(__dst + 32) = *(__src + 32);
          *(__dst + 33) = v93;
        }

        *(__dst + 34) = *(__src + 34);
        __dst[312] = 19;
        break;
      case 21:
        if (*v59)
        {
          v91 = *(__src + 28);
          *(__dst + 27) = *v59;
          *(__dst + 28) = v91;
        }

        else
        {
          *v58 = *v59;
        }

        v111 = *(__src + 29);
        if (v111)
        {
          v112 = *(__src + 30);
          *(__dst + 29) = v111;
          *(__dst + 30) = v112;
        }

        else
        {
          *(__dst + 232) = *(__src + 232);
        }

        __dst[312] = 21;
        break;
      default:
        v62 = *(__src + 296);
        *(__dst + 280) = *(__src + 280);
        *(__dst + 296) = v62;
        __dst[312] = __src[312];
        v63 = *(__src + 232);
        *v58 = *v59;
        *(__dst + 232) = v63;
        v64 = *(__src + 264);
        *(__dst + 248) = *(__src + 248);
        *(__dst + 264) = v64;
        break;
    }

    return __dst;
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NavigationRequest.Action(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 96);
  if (v4 >= 0x16)
  {
    v4 = *a2 + 22;
  }

  switch(v4)
  {
    case 0u:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v5;
      *(a1 + 96) = 0;

      return a1;
    case 1u:
      v20 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v20;
      v21 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v21;
      *(a1 + 32) = a2[4];
      *(a1 + 96) = 1;

      goto LABEL_26;
    case 2u:
      v16 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v16;
      v17 = *(a2 + 5);
      *(a1 + 40) = v17;
      v18 = v17;
      v19 = **(v17 - 8);

      v19(a1 + 16, a2 + 2, v18);
      *(a1 + 56) = *(a2 + 7);
      v6 = 2;
      goto LABEL_66;
    case 3u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 24) = a2[3];
      *(a1 + 96) = 3;

      return a1;
    case 4u:
      v11 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v11;
      *(a1 + 16) = *(a2 + 8);
      v12 = 4;
      goto LABEL_30;
    case 5u:
      v24 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 8);
      v12 = 5;
      goto LABEL_30;
    case 6u:
      v29 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v29;
      *(a1 + 16) = a2[2];
      *(a1 + 96) = 6;

LABEL_26:

      return a1;
    case 7u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v6 = 7;
      goto LABEL_66;
    case 8u:
      *a1 = *a2;
      v6 = 8;
      goto LABEL_66;
    case 9u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v6 = 9;
      goto LABEL_66;
    case 0xAu:
      v33 = *(a2 + 3);
      *(a1 + 24) = v33;
      (**(v33 - 8))(a1, a2);
      v34 = a2[6];
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v34;
      *(a1 + 56) = *(a2 + 28);
      v12 = 10;
      goto LABEL_30;
    case 0xBu:
      v10 = *(a2 + 3);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1, a2);
      v6 = 11;
      goto LABEL_66;
    case 0xCu:
      *a1 = *a2;
      v13 = (a1 + 8);
      v14 = a2[4];

      if (v14)
      {
        v15 = a2[5];
        *(a1 + 32) = v14;
        *(a1 + 40) = v15;
        (**(v14 - 8))(a1 + 8, a2 + 1, v14);
      }

      else
      {
        v42 = *(a2 + 3);
        *v13 = *(a2 + 1);
        *(a1 + 24) = v42;
        *(a1 + 40) = a2[5];
      }

      v43 = a2[7];
      if (v43 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v43;
      }

      v44 = a2[9];
      v45 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v44;
      *(a1 + 80) = v45;
      v46 = 12;
      goto LABEL_60;
    case 0xDu:
      *a1 = *a2;
      v26 = (a1 + 8);
      v27 = a2[4];

      if (v27)
      {
        v28 = a2[5];
        *(a1 + 32) = v27;
        *(a1 + 40) = v28;
        (**(v27 - 8))(a1 + 8, a2 + 1, v27);
      }

      else
      {
        v49 = *(a2 + 3);
        *v26 = *(a2 + 1);
        *(a1 + 24) = v49;
        *(a1 + 40) = a2[5];
      }

      v50 = a2[7];
      if (v50 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v50;
      }

      v51 = a2[9];
      v52 = a2[10];
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v51;
      *(a1 + 80) = v52;
      *(a1 + 88) = *(a2 + 88);
      v46 = 13;
      goto LABEL_60;
    case 0xEu:
      *a1 = *a2;
      v7 = (a1 + 8);
      v8 = a2[4];

      if (v8)
      {
        v9 = a2[5];
        *(a1 + 32) = v8;
        *(a1 + 40) = v9;
        (**(v8 - 8))(a1 + 8, a2 + 1, v8);
      }

      else
      {
        v40 = *(a2 + 3);
        *v7 = *(a2 + 1);
        *(a1 + 24) = v40;
        *(a1 + 40) = a2[5];
      }

      v41 = a2[7];
      if (v41 == 1)
      {
        *(a1 + 48) = *(a2 + 3);
      }

      else
      {
        *(a1 + 48) = a2[6];
        *(a1 + 56) = v41;
      }

      *(a1 + 64) = a2[8];
      *(a1 + 72) = *(a2 + 72);
      v6 = 14;
      goto LABEL_66;
    case 0xFu:
      *a1 = *a2;
      v6 = 15;
      goto LABEL_66;
    case 0x10u:
      *a1 = *a2;
      *(a1 + 7) = *(a2 + 7);
      v6 = 16;
      goto LABEL_66;
    case 0x11u:
      v22 = *(a2 + 3);
      *(a1 + 24) = v22;
      (**(v22 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v23 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v23;
      *(a1 + 64) = *(a2 + 32);
      v12 = 17;
LABEL_30:
      *(a1 + 96) = v12;

      return a1;
    case 0x12u:
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = a2[5];

      if (v31)
      {
        v32 = a2[6];
        *(a1 + 40) = v31;
        *(a1 + 48) = v32;
        (**(v31 - 8))(a1 + 16, a2 + 2, v31);
      }

      else
      {
        v53 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v53;
        *(a1 + 48) = a2[6];
      }

      v54 = a2[8];
      if (v54 == 1)
      {
        *(a1 + 56) = *(a2 + 7);
      }

      else
      {
        *(a1 + 56) = a2[7];
        *(a1 + 64) = v54;
      }

      v55 = a2[10];
      v56 = a2[11];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v55;
      *(a1 + 88) = v56;
      v46 = 18;
LABEL_60:
      *(a1 + 96) = v46;

      return a1;
    case 0x13u:
      v38 = a2[3];
      if (v38)
      {
        v39 = a2[4];
        *(a1 + 24) = v38;
        *(a1 + 32) = v39;
        (**(v38 - 8))(a1, a2);
      }

      else
      {
        v57 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v57;
        *(a1 + 32) = a2[4];
      }

      v58 = a2[6];
      if (v58 == 1)
      {
        *(a1 + 40) = *(a2 + 5);
      }

      else
      {
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v58;
      }

      *(a1 + 56) = a2[7];
      v6 = 19;
      goto LABEL_66;
    case 0x14u:
      *a1 = *a2;
      v6 = 20;
      goto LABEL_66;
    case 0x15u:
      if (*a2)
      {
        v25 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v25;
      }

      else
      {
        *a1 = *a2;
      }

      v47 = a2[2];
      if (v47)
      {
        v48 = a2[3];
        *(a1 + 16) = v47;
        *(a1 + 24) = v48;
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
      }

      v6 = 21;
LABEL_66:
      *(a1 + 96) = v6;
      break;
    default:
      v35 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v37;
      break;
  }

  return a1;
}

uint64_t outlined assign with take of NavigationRequest.Action?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationColumnState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 355))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI33NavigationDestinationResolverBaseCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NavigationColumnState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  if (v4)
  {
    *(a1 + 40) = *(a2 + 40);
    v5 = *(a2 + 56);
    v6 = *(a2 + 64);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
    *(a1 + 80) = v8;
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  *(a1 + 92) = *(a2 + 92);
  v9 = *(a2 + 104);
  if (v9)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v9;
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  v10 = *(a2 + 208);
  if (*(a2 + 240))
  {
    if (v10 == 255)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
    }

    else if (v10)
    {
      *(a1 + 120) = *(a2 + 120);
      v11 = *(a2 + 152);

      if (v11)
      {
        v12 = *(a2 + 160);
        *(a1 + 152) = v11;
        *(a1 + 160) = v12;
        (**(v11 - 8))(a1 + 128, a2 + 128, v11);
      }

      else
      {
        v17 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v17;
        *(a1 + 160) = *(a2 + 160);
      }

      v18 = *(a2 + 176);
      if (v18 == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = v18;
      }

      v19 = *(a2 + 192);
      v20 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v19;
      *(a1 + 200) = v20;
      *(a1 + 208) = 1;
    }

    else
    {
      v15 = *(a2 + 144);
      *(a1 + 144) = v15;
      (**(v15 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    *(a1 + 240) = 1;
  }

  else
  {
    if (v10 == 255)
    {
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 193) = *(a2 + 193);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
    }

    else if (v10)
    {
      *(a1 + 120) = *(a2 + 120);
      v13 = *(a2 + 152);

      if (v13)
      {
        v14 = *(a2 + 160);
        *(a1 + 152) = v13;
        *(a1 + 160) = v14;
        (**(v13 - 8))(a1 + 128, a2 + 128, v13);
      }

      else
      {
        v21 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v21;
        *(a1 + 160) = *(a2 + 160);
      }

      v22 = *(a2 + 176);
      if (v22 == 1)
      {
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = v22;
      }

      v23 = *(a2 + 192);
      v24 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v23;
      *(a1 + 200) = v24;
      *(a1 + 208) = 1;
    }

    else
    {
      v16 = *(a2 + 144);
      *(a1 + 144) = v16;
      (**(v16 - 8))(a1 + 120, a2 + 120);
      *(a1 + 208) = 0;
    }

    v25 = *(a2 + 224);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = v25;
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = 0;
  }

  v26 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v26;
  v27 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v27;
  v28 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v28;
  v29 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v29;
  v30 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v30;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);

  return a1;
}