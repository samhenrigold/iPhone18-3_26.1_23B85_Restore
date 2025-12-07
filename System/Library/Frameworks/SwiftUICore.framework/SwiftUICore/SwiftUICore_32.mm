uint64_t sub_18D1FDA54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t initializeWithCopy for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 5);
  *v10 = *v11;
  *(v10 + 5) = v12;
  *(v10 + 13) = *(v11 + 13);

  return a1;
}

uint64_t outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SymbolRenderer.symbol<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v71 = type metadata accessor for Optional();
  v10 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](v71);
  v12 = v61 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  _convertToAnyHashable<A>(_:)();
  swift_beginAccess();
  v17 = *(v5 + 40);
  if (*(v17 + 16))
  {

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v75);
    if (v19)
    {
      v20 = (*(v17 + 56) + 24 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      swift_unknownObjectRetain();
      outlined destroy of AnyHashable(&v75);

      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      *a4 = v21;
      a4[1] = v24;
      a4[2] = v25;
      return;
    }
  }

  v70 = v16;
  v65 = a4;
  outlined destroy of AnyHashable(&v75);
  v66 = v5;
  v26 = *(v5 + 16);
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_19:
    _convertToAnyHashable<A>(_:)();
    v35 = v66;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = *(v35 + 40);
    *(v35 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 0, 0, &v75, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(&v75);
    *(v35 + 40) = v74[0];
    swift_endAccess();
    v37 = v65;
    *v65 = 0;
    v37[1] = 0;
    v37[2] = 0;
    return;
  }

  v28 = 0;
  v29 = v10;
  v30 = (v13 + 48);
  v69 = (v13 + 32);
  v67 = (v13 + 8);
  v68 = (v29 + 8);
  v31 = (v26 + 72);
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v75 = *(v31 - 2);

    ViewTraitCollection.tagValue<A>(for:)(a2, a3, v32, v12);

    if ((*v30)(v12, 1, a2) != 1)
    {
      break;
    }

    (*v68)(v12, v71);
LABEL_14:
    ++v28;
    v31 += 6;
    if (v27 == v28)
    {
      goto LABEL_19;
    }
  }

  v33 = a3;
  v34 = v70;
  (*v69)(v70, v12, a2);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    (*v67)(v34, a2);
    a3 = v33;
    goto LABEL_14;
  }

  if (v28 >= *(v26 + 16))
  {
    goto LABEL_27;
  }

  v38 = v66;
  InputValue = AGGraphGetInputValue();
  v41 = *InputValue;
  v40 = InputValue[1];
  v42 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v43 = *(v38 + 28);
  v71 = v42;
  [v42 setDefaultColorSpace_];
  if (v28 >= *(v26 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v31 - 1) == *MEMORY[0x1E698D3F8])
  {
LABEL_25:
    v58 = v71;
    _convertToAnyHashable<A>(_:)();
    swift_beginAccess();
    swift_unknownObjectRetain();
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v38 + 40);
    *(v38 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v41, v40, &v75, v59);
    outlined destroy of AnyHashable(&v75);
    *(v38 + 40) = v73;
    swift_endAccess();

    (*v67)(v70, a2);
    v60 = v65;
    *v65 = v58;
    v60[1] = v41;
    v60[2] = v40;
    return;
  }

  v61[1] = v33;
  v68 = v41;
  v69 = v40;
  v44 = AGGraphGetInputValue();
  v45 = *v44;
  v63 = *(v44 + 8);
  v62 = *(v44 + 12);
  v64 = v45;

  v46 = v71;
  v47 = AGGraphGetInputValue();
  v48 = *v47;
  v49 = v47[1];
  type metadata accessor for GraphicsContext.Storage();
  v50 = swift_allocObject();
  *(v50 + 32) = xmmword_18DD85500;
  *(v50 + 48) = 1065353216;
  *(v50 + 56) = 0x7FF8000000000000;
  v75 = v48;
  v76 = v49;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v51 = v46;

  *(v50 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v51, &v75);
  *(v50 + 24) = RBDisplayListGetState();
  *(v50 + 64) = 0;

  *&v74[0] = v50;
  if (v28 < *(v26 + 16))
  {
    v52 = *v31;
    v53 = *(*v31 + 64);
    *(*v31 + 72) = xmmword_18DDAB910;
    v75 = v64;
    LOWORD(v76) = v63;
    HIDWORD(v76) = v62;

    v54 = *(v52 + 48);
    v55 = *(v52 + 56);
    DisplayList.GraphicsRenderer.render(list:in:)(&v75, v74);
    swift_beginAccess();

    v56 = MEMORY[0x1E69E7CC8];
    *(v52 + 16) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v57 = *(v52 + 32);
    *(v52 + 32) = v56;
    *(v52 + 40) = v56;
    *(v52 + 16) = v57;
    swift_endAccess();
    *(v52 + 48) = v54;
    *(v52 + 56) = v55;
    *(v52 + 64) = v53;

    swift_bridgeObjectRelease_n();

    v40 = v69;
    v41 = v68;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

void key path getter for EnvironmentValues.redactionReasons : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double View.redacted(reason:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.redacted(reason:), v5, a2);

  return result;
}

void *partial apply for closure #1 in View.redacted(reason:)(void *result)
{
  v2 = *(v1 + 16);
  if ((v2 & ~*result) != 0)
  {
    *result |= v2;
  }

  return result;
}

double key path setter for EnvironmentValues.redactionReasons : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016RedactionReasonsK033_18671928047E57F039DC339288B6FAFBLLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t specialized LeafLayoutComputer.updateValue()()
{
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v12 = 1;
  v11 = 1;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v10 = &v13;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v13, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
}

{
  Value = AGGraphGetValue();
  v1 = Value[3];
  v3 = *Value;
  v2 = Value[1];
  v30[2] = Value[2];
  v30[3] = v1;
  v30[0] = v3;
  v30[1] = v2;
  v4 = Value[7];
  v6 = Value[4];
  v5 = Value[5];
  v30[6] = Value[6];
  v30[7] = v4;
  v30[4] = v6;
  v30[5] = v5;
  v8 = Value[9];
  v7 = Value[10];
  v9 = Value[8];
  *(v31 + 11) = *(Value + 171);
  v30[9] = v8;
  v31[0] = v7;
  v30[8] = v9;
  LOBYTE(v32) = 1;
  v18[0] = 1;
  v18[192] = 1;
  v10 = Value[9];
  v27 = Value[8];
  v28 = v10;
  *v29 = Value[10];
  *&v29[11] = *(Value + 171);
  v11 = Value[5];
  v23 = Value[4];
  v24 = v11;
  v12 = Value[7];
  v25 = Value[6];
  v26 = v12;
  v13 = Value[1];
  v19 = *Value;
  v20 = v13;
  v14 = Value[3];
  v21 = Value[2];
  v22 = v14;
  v40 = v27;
  v41 = v28;
  v42 = *v29;
  v43 = *&v29[16];
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v14;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v47 = 1;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  v17 = &v32;
  outlined init with copy of Image.Resolved(v30, v18);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v16, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v40 = v27;
  v41 = v28;
  v42 = *v29;
  v43 = *&v29[16];
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v47 = 1;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return outlined destroy of LeafLayoutEngine<Image.Resolved>(&v32);
}

{
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v8 = 1;
  v7 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v6 = &v9;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v5, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v9, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
}

{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v8 = 1;
  v7 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v6 = &v9;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v5, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v9, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
}

{
  type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 33);
  v6 = *(Value + 34);
  v7 = *(Value + 32);
  v12 = 1;
  v11 = 1;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v10 = &v13;
  outlined copy of Path.Storage(v1, v2, v3, v4, v7);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v13, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

{
  type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA18EllipticalGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, AngularGradient>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15AngularGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, RadialGradient>(0);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14RadialGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v1 = Value[2];
  v3 = *Value;
  *(v13 + 12) = *(Value + 44);
  v12[1] = v2;
  v13[0] = v1;
  v12[0] = v3;
  v4 = Value[1];
  v9 = *Value;
  v10 = v4;
  *v11 = Value[2];
  *&v11[12] = *(Value + 44);
  v8[0] = 1;
  v8[64] = 1;
  v14 = v9;
  v15 = v4;
  v16 = *v11;
  v17 = *&v11[16];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  v7 = &v14;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v12, v8, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v6, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v14 = v9;
  v15 = v10;
  v16 = *v11;
  v17 = *&v11[16];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v14, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
}

double partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v3;
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v21[4] = *(v2 + 64);
  v21[5] = v6;
  v21[2] = v4;
  v21[3] = v5;
  v7 = *(v2 + 96);
  v8 = *(v2 + 112);
  v9 = *(v2 + 144);
  v21[8] = *(v2 + 128);
  v21[9] = v9;
  v21[6] = v7;
  v21[7] = v8;
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  v12 = *(v2 + 192);
  v22 = *(v2 + 208);
  v21[11] = v11;
  v21[12] = v12;
  v21[10] = v10;
  v13 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v13;
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = *(v2 + 208);
  v14 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v14;
  v15 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v15;
  v16 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v16;
  v17 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v17;
  v18 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v18;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v21, v20, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v3;

  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14LinearGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.LeadingModifier(CTFontDescriptorRef *a1)
{
  v3 = *v1;
  v4 = *a1;
  v6 = v3;
  v5 = CTFontDescriptorRef.leading(_:)(&v6);

  *a1 = v5;
}

CTFontDescriptorRef CTFontDescriptorRef.leading(_:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x8000u);
      if (!CopyWithSymbolicTraits)
      {
        CopyWithSymbolicTraits = v1;
      }

      v5 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithSymbolicTraits, 0x10000u, 0x10000u);
      if (v5)
      {
        goto LABEL_10;
      }

      return CopyWithSymbolicTraits;
    }

    CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x10000u);
    if (!CopyWithSymbolicTraits)
    {
      CopyWithSymbolicTraits = v1;
    }

    v3 = CopyWithSymbolicTraits;
    v4 = 0x8000;
  }

  else
  {
    CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x10000u);
    if (!CopyWithSymbolicTraits)
    {
      CopyWithSymbolicTraits = v1;
    }

    v3 = CopyWithSymbolicTraits;
    v4 = 0;
  }

  v5 = CTFontDescriptorCreateCopyWithSymbolicTraits(v3, v4, 0x8000u);
  if (v5)
  {
LABEL_10:
    v6 = v5;

    return v6;
  }

  return CopyWithSymbolicTraits;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unsigned __int8 *assignWithCopy for LazyState(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v17;
      a1[v7] = 0;

      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 16))(a1, a2, v5);
    a1[v7] = 1;
  }

LABEL_41:
  v18 = *(v6 + 64);
  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  *(&a1[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v18 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

double destroy for LazyState.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }

  return result;
}

void _ShapeStyle_Pack.Slice.allColors.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    goto LABEL_36;
  }

  v4 = *(v0 + 32);
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v6 = *(v0 + 8);
    swift_unknownObjectRetain();
    if (v5 == v4)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return;
    }

    v7 = 0;
    v8 = 1;
    v24 = v2;
    v25 = v1;
    while (1)
    {
      if (v7 < v1 || v7 >= v2)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v9 = *v6;
      v10 = v6[1];
      v11 = v6[3];
      v27[2] = v6[2];
      v27[3] = v11;
      v27[0] = v9;
      v27[1] = v10;
      v12 = v6[4];
      v13 = v6[5];
      v14 = v6[7];
      v29 = v6[6];
      v30 = v14;
      v27[4] = v12;
      v28 = v13;
      if ((v4 + v7) >= v5)
      {
        goto LABEL_35;
      }

      if (v8)
      {
        break;
      }

      v8 = 0;
LABEL_7:
      ++v7;
      v6 += 8;
      if (v3 == v7)
      {
        goto LABEL_4;
      }
    }

    v15 = BYTE13(v28);
    if (BYTE13(v28))
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
LABEL_32:
      v8 = v15 == 6;
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      goto LABEL_7;
    }

    v16 = *(&v29 + 1);
    v17 = v30;
    if (v30 == 255)
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (one-time initialization token for normal != -1)
      {
        swift_once();
      }

      v18 = static GraphicsBlendMode.normal;
      v19 = byte_1ED52F818;
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    }

    else
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v18 = v16;
      v19 = v17;
    }

    outlined copy of GraphicsBlendMode?(v16, v17);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v20 = static GraphicsBlendMode.normal;
    if (v19)
    {
      if (byte_1ED52F818)
      {
        swift_unknownObjectRetain();
        outlined consume of GraphicsBlendMode(v18, 1);
        outlined consume of GraphicsBlendMode(v20, 1);
        v21 = v18 == v20;
        v2 = v24;
        v1 = v25;
        if (!v21)
        {
          goto LABEL_32;
        }

LABEL_31:
        if (!*(*(&v30 + 1) + 16))
        {
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          v8 = 1;
          goto LABEL_7;
        }

        goto LABEL_32;
      }

      outlined consume of GraphicsBlendMode(v18, 1);
      v22 = v20;
      v23 = 0;
    }

    else
    {
      if ((byte_1ED52F818 & 1) == 0)
      {
        outlined consume of GraphicsBlendMode(v18, 0);
        outlined consume of GraphicsBlendMode(v20, 0);
        v21 = v18 == v20;
        v2 = v24;
        v1 = v25;
        if (!v21)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v18, 0);
      v22 = v20;
      v23 = 1;
    }

    outlined consume of GraphicsBlendMode(v22, v23);
    v2 = v24;
    v1 = v25;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Slice(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t _ShapeStyle_Pack.Style.color.getter()
{
  if (*(v0 + 85))
  {
    return 0;
  }

  v1 = v0[12];
  v2 = *(v0 + 104);
  v3 = v0[14];
  v4 = *v0;
  if (v2 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v5 = static GraphicsBlendMode.normal;
    v6 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v5 = v0[12];
    v6 = *(v0 + 104);
  }

  outlined copy of GraphicsBlendMode?(v1, v2);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v7 = static GraphicsBlendMode.normal;
  v8 = byte_1ED52F818;
  if (v6)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v5, 1);
      outlined consume of GraphicsBlendMode(v7, 1);
      if (v5 != v7)
      {
        return 0;
      }

      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    goto LABEL_19;
  }

  if (byte_1ED52F818)
  {
LABEL_19:
    outlined copy of GraphicsBlendMode(v7, v8);
    outlined consume of GraphicsBlendMode(v5, v6 & 1);
    outlined consume of GraphicsBlendMode(v7, v8);
    outlined consume of GraphicsBlendMode(v5, v6 & 1);
    return 0;
  }

  outlined consume of GraphicsBlendMode(v5, 0);
  outlined consume of GraphicsBlendMode(v7, 0);
  if (v5 != v7)
  {
    return 0;
  }

LABEL_15:
  if (*(v3 + 16))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v4 = 3;
    }

    else
    {
      if (a1 != 8)
      {
        if (a1 == 9)
        {
          if (a3)
          {
            _ShapeStyle_Pack.subscript.getter(a2, a3);
            if ((v5 & 0x100000000) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        return;
      }

      v4 = 4;
    }
  }

  else if (a1)
  {
    if (a1 == 5)
    {
      v4 = 1;
    }

    else
    {
      if (a1 != 6)
      {
        return;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a4 + 16);
  v7 = *(a4 + 24) >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = *(a4 + 32);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v11 == v9)
  {
    return;
  }

  if (v11 < v9)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v12 = v11 + ~v9;
  if (v12 < v4)
  {
    v4 = v12;
  }

  v13 = v4 - v9;
  if (v13 < v6 || v13 >= v7)
  {
    goto LABEL_33;
  }

  _ShapeStyle_Pack.Style.color.getter();
  if ((v15 & 0x100000000) == 0)
  {
LABEL_28:
    RBColorFromLinear();
  }
}

float thunk for @escaping @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4(a2, a3, v6);

  return v7;
}

uint64_t specialized static Font.SystemProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v19 = v5;
  v20 = v4;
  v21 = v2;
  v22 = v3;
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v6 == 4)
  {
    if (v11 != 4)
    {
      return 0;
    }

LABEL_14:
    if (v7 == 14)
    {
      if (v12 != 14)
      {
        return 0;
      }
    }

    else
    {
      v18 = v7;
      if (v12 == 14)
      {
        return 0;
      }

      v17 = v12;
      if (!specialized static Font.TextStyle.== infix(_:_:)(&v18, &v17))
      {
        return 0;
      }
    }

    if (v9)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v11 != 4 && v6 == v11)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t Text.fontWeight(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v11 = *(a6 + 2);
  v10 = *(a6 + 3);
  if (v11 >= v10 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a6);
  }

  *(a6 + 2) = v11 + 1;
  v12 = &a6[16 * v11];
  *(v12 + 4) = a1;
  v12[40] = a2 & 1 | 0x40;
  return a3;
}

SwiftUI::Gradient __swiftcall Gradient.init(stops:)(SwiftUI::Gradient stops)
{
  v1 = *(stops.stops._rawValue + 2);
  if (v1)
  {
    v2 = *(stops.stops._rawValue + 5);
    v3 = (stops.stops._rawValue + 56);
    while (--v1)
    {
      v4 = *v3;
      v3 += 2;
      v5 = v4 < v2;
      v2 = v4;
      if (v5)
      {
        rawValue = stops.stops._rawValue;
        v7 = static os_log_type_t.fault.getter();
        if (one-time initialization token for runtimeIssuesLog != -1)
        {
          v8 = v7;
          swift_once();
          v7 = v8;
        }

        os_log(_:dso:log:_:_:)(v7, &dword_18D018000, static Log.runtimeIssuesLog, "Gradient stop locations must be ordered.", 40, 2, MEMORY[0x1E69E7CC0]);
        return rawValue;
      }
    }
  }

  return stops;
}

uint64_t LinearGradient.init(gradient:startPoint:endPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void key path getter for EnvironmentValues.defaultTextFieldTruncationMode : EnvironmentValues(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X3>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *, uint64_t, void (*)(uint64_t *__return_ptr, uint64_t))@<X4>, _BYTE *a4@<X8>, uint64_t a5@<X2>)
{
  v6 = *a1;
  if (a1[1])
  {

    a2(&v9, v6);
  }

  else
  {
    a3(&v9, *a1, v8, a5, a2);
  }

  *a4 = v9;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  type metadata accessor for Locale?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.BoldModifier(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 2u, 2u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

uint64_t Font.StaticModifierProvider.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v8 = *a1;
  v7 = a1[1];
  v11[2] = a1[2];
  v12[0] = v8;
  v9 = a1[2];
  v12[1] = v7;
  v12[2] = v9;
  *&v12[0] = (*(*a2 + 96))(v12);
  (*(a4 + 16))(v12, v11, a3, a4);
  return *&v12[0];
}

uint64_t specialized ShapeStyledDisplayList.updateValue()(uint64_t (*a1)(void), void (*a2)(void *, _OWORD *, _OWORD *, uint64_t *))
{
  v63 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = *(v2 + 12);
  a1(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 40);
  v8 = *(Value + 41);
  if ((v9 & 1) != 0 || !*(v2 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v2 + 28);
    LODWORD(__dst[1]) = LODWORD(v4);

    v10 = AGGraphAnyInputsChanged();
    v11 = ++static DisplayList.Version.lastValue;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
  if (!v11)
  {
    LOWORD(v12) = 0;
  }

  *(v2 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    swift_once();
    v16 = v40;
    v15 = v39;
    v14 = v38;
    v13 = v37;
    goto LABEL_23;
  }

  v43 = a2;
  v41 = v7;
  v7 = __src;
  v17 = *(v2 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v42 = v17;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = AGGraphGetValue();
  v22 = v19 - *v21;
  v23 = v20 - v21[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = v25;
  v64.size.height = v26;
  IsNull = CGRectIsNull(v64);
  if (IsNull)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v25;
  }

  if (IsNull)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v26;
  }

  v28 = 6;
  if (!IsNull)
  {
    v28 = 0;
  }

  v29 = 0x10000;
  if (!v8)
  {
    v29 = 0;
  }

  v30 = 256;
  if (!v41)
  {
    v30 = 0;
  }

  a2 = (v29 | v30 | v28);
  _setThreadGeometryProxyData();
  v50 = 0uLL;
  *&v51 = v6;
  *(&v51 + 1) = v4;
  *&v52 = a2;
  *&v54 = 0;
  *&v55[24] = 0;
  v56 = 0;
  v57 = 0;
  v58 = v25;
  v59 = v26;
  v31 = *v2;
  *(v48 + 8) = 0u;
  *(&v48[1] + 8) = 0u;
  *(&v48[2] + 8) = 0u;
  *(&v48[3] + 8) = 0u;
  *(&v48[4] + 1) = 0x20000000;
  v49 = 0;
  *&v48[0] = v31;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v50, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = v25;
  v65.size.height = v26;
  *&v13 = CGRectOffset(v65, v22, v23);
  LODWORD(v6) = *(v2 + 8);
  LOWORD(a2) = *(v2 + 50);
  LOBYTE(v4) = *(v2 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = static GraphicsBlendMode.normal;
  v33 = byte_1ED52F818;
  *(v7 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v33;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v34 = v53;
  v35 = *v55;
  v7[4] = v54;
  v7[5] = v35;
  *(v7 + 92) = *&v55[12];
  __src[0] = v50;
  __src[1] = v51;
  __src[2] = v52;
  __src[3] = v34;
  WORD6(__src[6]) = a2;
  *(v7 + 14) = v13;
  *(v7 + 15) = v14;
  *(v7 + 16) = v15;
  *(v7 + 17) = v16;
  *(v7 + 20) = v13;
  *(v7 + 21) = v14;
  *(v7 + 22) = v15;
  *(v7 + 23) = v16;
  *(v7 + 24) = v11;
  *(v7 + 25) = 0;
  *(v7 + 26) = 0;
  *(v7 + 27) = 0;
  *(v7 + 28) = 3221225472;
  DWORD2(__src[14]) = LODWORD(v6);
  BYTE12(__src[14]) = LOBYTE(v4);
  LODWORD(__src[15]) = v42;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v32, v33);
  v43(__dst, v48, __src, v2);
  LOBYTE(__dst[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v44);
  *&v61[0] = v44;
  WORD4(v61[0]) = v45;
  HIDWORD(v61[0]) = v46;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v50, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v61[2] = v48[2];
  v61[3] = v48[3];
  v61[4] = v48[4];
  v62 = v49;
  v61[0] = v48[0];
  v61[1] = v48[1];
  outlined destroy of _ShapeStyle_RenderedLayers(v61);
}

{
  v6 = v2;
  v83 = *MEMORY[0x1E69E9840];
  v7 = *(v2 + 12);
  a1(0);
  Value = AGGraphGetValue();
  v9 = Value[1];
  v10 = Value[2];
  v60 = *Value;
  if ((v11 & 1) != 0 || !*(v6 + 50))
  {
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v6 + 28);
    LODWORD(__dst[1]) = v7;
    v12 = AGGraphAnyInputsChanged();
    v13 = ++static DisplayList.Version.lastValue;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
  if (!v13)
  {
    LOWORD(v14) = 0;
  }

  *(v6 + 50) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    swift_once();
    v18 = v48;
    v17 = v47;
    v16 = v46;
    v15 = v45;
    goto LABEL_15;
  }

  v58 = v13;
  v59 = a2;
  v55 = v10;
  v56 = v9;
  v10 = __src;
  v19 = *(v6 + 40);
  v54 = AGCreateWeakAttribute();
  v52 = AGCreateWeakAttribute();
  v57 = v19;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v53 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v51 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v50 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v49 = HIDWORD(v26);
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = *(v34 + 8);
  _threadGeometryProxyData();
  __dst[0] = v54;
  __dst[1] = v52;
  __dst[2] = __PAIR64__(v53, v21);
  __dst[3] = __PAIR64__(v51, v23);
  v4 = v58;
  __dst[4] = __PAIR64__(v50, v25);
  __dst[5] = __PAIR64__(v49, v27);
  LODWORD(__dst[6]) = v58;
  _setThreadGeometryProxyData();
  LOBYTE(__src[0]) = v60;
  Capsule.path(in:)(v81, 0.0, 0.0, v35, v36);
  v37 = 0x10000;
  if (!v55)
  {
    v37 = 0;
  }

  v38 = 256;
  if (!v56)
  {
    v38 = 0;
  }

  v13 = v37 | v38 | v82;
  v3 = &v78;
  _setThreadGeometryProxyData();
  v68 = v81[1];
  v67 = v81[0];
  *&v69 = v13;
  *&v71 = 0;
  DWORD2(v72[1]) = 0;
  v73 = 0;
  v74 = 0;
  v75 = v35;
  v76 = v36;
  v39 = *v6;
  *(v65 + 8) = 0u;
  *(&v65[1] + 8) = 0u;
  *(&v65[2] + 8) = 0u;
  *(&v65[3] + 8) = 0u;
  *(&v65[4] + 1) = 0x20000000;
  v66 = 0;
  *&v65[0] = v39;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v35;
  v84.size.height = v36;
  *&v15 = CGRectOffset(v84, v32, v33);
  LODWORD(v13) = *(v6 + 8);
  LOWORD(v9) = *(v6 + 50);
  LOBYTE(a2) = *(v6 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v40 = static GraphicsBlendMode.normal;
  v41 = byte_1ED52F818;
  *(v10 + 248) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v41;
  *(v10 + 260) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v71;
  __src[5] = v72[0];
  *(&__src[5] + 12) = *(v72 + 12);
  __src[0] = v67;
  __src[1] = v68;
  __src[2] = v69;
  __src[3] = v70;
  WORD6(__src[6]) = v9;
  *(v10 + 112) = v15;
  *(v10 + 120) = v16;
  *(v10 + 128) = v17;
  *(v10 + 136) = v18;
  *(v10 + 160) = v15;
  *(v10 + 168) = v16;
  *(v10 + 176) = v17;
  *(v10 + 184) = v18;
  *(v10 + 192) = v4;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 216) = 0;
  *(v10 + 224) = 3221225472;
  *(v10 + 232) = v13;
  BYTE12(__src[14]) = a2;
  *(v10 + 240) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v40, v41);
  v59(__dst, v65, __src, v6);
  LOBYTE(__dst[0]) = *(v6 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  v78 = v61;
  v79 = v62;
  v80 = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = v65[3];
  *(v3 + 2) = v65[2];
  *(v3 + 3) = v42;
  *(v3 + 4) = v65[4];
  *(v3 + 20) = v66;
  v43 = v65[1];
  *v3 = v65[0];
  *(v3 + 1) = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v78);
}

uint64_t outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>, type metadata accessor for _ShapeView<Rectangle, LinearGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>>, type metadata accessor for _ShapeView<Circle, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>, type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<CombinedContentShape, ForegroundStyle>>, type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Rectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<AnyShape>>, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Ellipse, ForegroundStyle>>, type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Ellipse._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>>, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>, type metadata accessor for _ShapeView<Path, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>>, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>>, type metadata accessor for _ShapeView<Rectangle, AngularGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>>, type metadata accessor for _ShapeView<Rectangle, RadialGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
}

{
  v6 = *a1;
  v7 = a3[1];
  v51 = *a3;
  v52 = v7;
  v8 = a3[3];
  v53 = a3[2];
  v54 = v8;
  v9 = a3[5];
  v55 = a3[4];
  v56[0] = v9;
  *(v56 + 12) = *(a3 + 92);
  v10 = DWORD2(v56[1]) >> 29;
  if (DWORD2(v56[1]) >> 29 == 2)
  {
    v11 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v26 = v51;
      LOBYTE(v27) = v52 & 1;
      v34[0] = v11;
      LOBYTE(v44) = v6;
      _ShapeStyle_Pack.subscript.getter(&v44, 0, &v36);
      v25 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v26, &v36, &v25);
      v48 = v40;
      v49[0] = v41;
      v49[1] = v42;
      v50 = v43;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      v47 = v39;
      outlined destroy of _ShapeStyle_Pack.Style(&v44);
    }

    else
    {
      v44 = v51;
      LOBYTE(v45) = v52 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v44);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v51);
  }

  else if (v10 == 3)
  {
    if (v55)
    {
      v44 = v51;
      LOBYTE(v45) = v52;
      *(&v45 + 1) = *(&v52 + 1);
      BYTE7(v45) = (*(&v52 + 1) | ((*(&v52 + 5) | (BYTE7(v52) << 16)) << 32)) >> 48;
      *(&v45 + 5) = *(&v52 + 5);
      *(&v45 + 1) = *(&v52 + 1);
      v46 = v53;
      v47 = v54;
      LOBYTE(v48) = v55;
      *(&v48 + 1) = *(&v55 + 1);
      BYTE7(v48) = (*(&v55 + 1) | ((*(&v55 + 5) | (BYTE7(v55) << 16)) << 32)) >> 48;
      *(&v48 + 5) = *(&v55 + 5);
      *(&v48 + 1) = *(&v55 + 1);
      v49[0] = v56[0];
      *&v49[1] = *&v56[1];
      DWORD2(v49[1]) = DWORD2(v56[1]) & 0x1FFFFFFF;
      _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v44);
      return;
    }

    if (BYTE8(v51) != 2)
    {
      if (BYTE8(v51) == 255)
      {
        *(v49 + 12) = *(a3 + 92);
        v12 = a3[5];
        v48 = a3[4];
        v49[0] = v12;
        v13 = a3[1];
        v44 = *a3;
        v45 = v13;
        v14 = a3[3];
        v46 = a3[2];
        v47 = v14;
        DWORD2(v49[1]) &= 0x1FFFFFFFu;
        v15 = a4;
        outlined init with copy of GraphicsImage(&v44, &v36);
        a4 = v15;
      }

      goto LABEL_14;
    }

    v16 = *(v51 + 24);
    v17 = *(v51 + 32);
    v18 = *(v51 + 40);
    v19 = *(v51 + 44);
    v20 = *(v51 + 45);
    v21 = *(v51 + 48);
    *&v44 = *(v51 + 16);
    BYTE8(v44) = v16;
    *&v45 = v17;
    DWORD2(v45) = v18;
    BYTE12(v45) = v19;
    BYTE13(v45) = v20;
    *&v46 = v21;
    LOBYTE(v26) = v6;
    *&v36 = a4;
    v22 = v44;
    outlined copy of Image.Location(v17);
    v23 = v21;

    specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v44, *(&v53 + 1), &v26, &v36, a2, v24);

    outlined consume of Image.Location(v17);
  }

  else if (v10 != 5 || DWORD2(v56[1]) != -1610612736 || v52 | ((*(&v52 + 1) | ((*(&v52 + 5) | (BYTE7(v52) << 16)) << 32)) << 8) | v55 | ((*(&v55 + 1) | ((*(&v55 + 5) | (BYTE7(v55) << 16)) << 32)) << 8) | v51 | *(&v51 + 1) | *(&v52 + 1) | v53 | *(&v53 + 1) | v54 | *(&v54 + 1) | *(&v55 + 1) | *&v56[0] | *(&v56[0] + 1) | *&v56[1])
  {
LABEL_14:
    *&v44 = a4;
    LOBYTE(v26) = v6;
    _ShapeStyle_Pack.subscript.getter(&v26, 0, &v36);
    v34[0] = v6;
    v34[1] = 0;
    v35 = 0;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    outlined init with copy of _ShapeStyle_Pack.Style(&v36, &v44);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v34, &v26, a3);
    v48 = v30;
    v49[0] = v31;
    v49[1] = v32;
    v50 = v33;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v29;
    outlined destroy of _ShapeStyle_Pack.Style?(&v44, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    _ShapeStyle_RenderedShape.render(style:)(&v26);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
    outlined destroy of _ShapeStyle_Pack.Style(&v36);
  }
}

void type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v7 = type metadata accessor for ShapeStyledDisplayList(a1, v5, &protocol witness table for _ShapeView<A, B>, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized StaticBody.updateValue()()
{
  v2 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    *&v52 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    v50 = v1;
    outlined init with take of Any(&v50, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v41 = *(v2 + 2);

    v42 = v41 + 1;
    v29 = v45;
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 1, v2);
    *(v21 + 24) = v43;

    v2 = v43;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v45 = v11;
  swift_beginAccess();
  v46 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v17, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v48 = v17;
  v50 = *Value;
  v26 = *(Value + 24);
  v51 = *(Value + 8);
  v52 = v26;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v50);
  v27 = v48;

  *(StatusReg + 848) = v24;
  outlined init with copy of ObservationTracking._AccessList?(v27, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v28 = v14;
    goto LABEL_12;
  }

  v29 = v45;
  v44 = *(v4 + 32);
  v44(v45, v14, v3);
  (*(v4 + 16))(v47, v29, v3);
  swift_beginAccess();
  v2 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v44(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32], v47, v3);
  *(v21 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v29, v3);
  v28 = v48;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v21 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v37 = *(v4 + 16);
    v35 = v4 + 16;
    v36 = v37;
    v38 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    v48 = *(v21 + 24);

    do
    {
      v36(v6, v38, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v35 - 8))(v6, v3);
      v38 += v39;
      --v34;
    }

    while (v34);
  }

  *(v21 + 24) = v46;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1)
{
  v45 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for OSSignpostID();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v44[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v64 = v4;
    LOBYTE(v65) = v5;
    BYTE1(v65) = v6;
    BYTE2(v65) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v4 + 1);
    LODWORD(v56) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v15 = v14;
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v16 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v15;
    *(v9 + 72) = v16;
    *(v9 + 80) = v17;
    v57 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v61 = v56;
      v59 = _signpostLog;
      v60 = &dword_18D018000;
      *&v64 = v4;
      *(&v64 + 1) = v55;
      LOBYTE(v65) = v5;
      v62[0] = "%{public}@.body [in %{public}@]";
      v62[1] = 31;
      v63 = 2;
      v58 = v57;
      v18 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v61, &v60, &v59, &v64, v46, v62, &v58);
      (*(v53 + 8))(v18, v52);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = bswap32(v4) | (4 * WORD1(v4));
    v21 = v56;
    v22 = v53 + 16;
    v47 = *(v53 + 16);
    v23 = v47(v54, v46, v52);
    v24 = 0;
    LOBYTE(v62[0]) = 1;
    v56 = v19;
    v50 = 16 * v19;
    v53 = v22;
    v51 = (v22 - 8);
    v49 = v57 + 32;
    v48 = v4;
LABEL_11:
    v55 = v44;
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v44[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = v26 + 8;
    v28 = v56;
    v29 = v26 + 8;
    do
    {
      *(v29 - 1) = 0;
      *v29 = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
    v30 = v49 + 40 * v24;
    v31 = v56;
    while (1)
    {
      v32 = *(v57 + 16);
      if (v24 == v32)
      {
        LOBYTE(v62[0]) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v26[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v26[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = *v51;
        v38 = v54;
        v39 = v52;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v23 = v47(v38, v40, v39);
        if ((v62[0] & 1) == 0)
        {
          v41 = v52;
          v37(v54, v52);
          v37(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v24 >= v32)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v30, &v64);
      v33 = *(&v65 + 1);
      v34 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      *(v27 - 1) = CVarArg.kdebugValue(_:)(v20 | v21, v33, v34);
      *v27 = v35 & 1;
      v27 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v30 += 40;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = *(v45 + 16);
  v64 = *v45;
  v65 = v42;
  v66 = *(v45 + 32);
  v67 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v45, v62, &lazy cache variable for type metadata for UncheckedSendable<LinearGradient>, &type metadata for LinearGradient, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
  AGGraphSetOutputValue();
}

{
  v78 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v57 = v8;
    v73 = v8;
    LODWORD(v56) = v9;
    LOBYTE(v74) = v9;
    v59 = v10;
    BYTE1(v74) = v10;
    BYTE2(v74) = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v51 = *(&v8 + 1);
    LODWORD(v52) = v12;
    v46 = a1;
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
    v47 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v58 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v59)
    {
      v61 = v52;
      *&v67[0] = &dword_18D018000;
      *&v62 = _signpostLog;
      *&v73 = v57;
      *(&v73 + 1) = v51;
      LOBYTE(v74) = v56;
      *&v69 = "%{public}@.body [in %{public}@]";
      *(&v69 + 1) = 31;
      LOBYTE(v70) = 2;
      v60 = v58;
      v22 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v61, v67, &v62, &v73, v47, &v69, &v60);
      (*(v54 + 8))(v22, v53);
LABEL_34:

      a1 = v46;
      break;
    }

    v23 = v57;
    if (v57 == 20)
    {
      a1 = 3;
    }

    else
    {
      a1 = 4;
    }

    v24 = bswap32(v57) | (4 * WORD1(v57));
    v59 = v52;
    v25 = v54 + 16;
    v48 = *(v54 + 16);
    v26 = v48(v55, v47, v53);
    v27 = 0;
    LOBYTE(v69) = 1;
    v57 = a1;
    v54 = v25;
    v51 = 16 * a1;
    v52 = (v25 - 8);
    v49 = v23;
    v50 = v58 + 32;
LABEL_11:
    v56 = &v45;
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v29 + 8;
    v31 = v57;
    v32 = v29 + 8;
    do
    {
      *(v32 - 1) = 0;
      *v32 = 0;
      v32 += 16;
      --v31;
    }

    while (v31);
    v7 = (v50 + 40 * v27);
    v33 = v57;
    while (1)
    {
      v34 = *(v58 + 16);
      if (v27 == v34)
      {
        LOBYTE(v69) = 0;
LABEL_19:
        v37 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v29[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v29[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        a1 = v53;
        v38 = *v52;
        v39 = v55;
        (*v52)(v55, v53);
        v40 = __swift_project_value_buffer(a1, static OSSignpostID.continuation);
        v26 = v48(v39, v40, a1);
        if ((v69 & 1) == 0)
        {
          v41 = v53;
          v38(v55, v53);
          v38(v47, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v27 >= v34)
      {
        break;
      }

      ++v27;
      outlined init with copy of AnyTrackedValue(v7, &v73);
      v35 = *(&v74 + 1);
      a1 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      *(v30 - 1) = CVarArg.kdebugValue(_:)(v24 | v59, v35, a1);
      *v30 = v36 & 1;
      v30 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v7 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = *a1;
  *v71 = *(a1 + 40);
  *&v71[9] = *(a1 + 49);
  v43 = *(a1 + 24);
  v69 = *(a1 + 8);
  v70 = v43;
  v62 = v69;
  v63 = v43;
  v64 = *v71;
  v65 = *&v71[16];
  v66 = v42;
  v67[2] = *v71;
  v67[3] = *&v71[16];
  v67[0] = v69;
  v67[1] = v43;
  v68 = v42;
  outlined init with copy of ObservationTracking._AccessList?(a1, &v73, &lazy cache variable for type metadata for UncheckedSendable<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>, type metadata accessor for UncheckedSendable);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v62, &v73, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(v67, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v73 = v62;
  v74 = v63;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
  *v71 = v75;
  *&v71[16] = v76;
  v72 = v77;
  v69 = v73;
  v70 = v74;
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v69, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v54 = v1;
  v3 = v2;
  v73 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v66 = v10;
  *v72 = v10;
  LODWORD(v64) = v11;
  v72[16] = v11;
  v72[17] = v12;
  v72[18] = v13;
  if (Signpost.isEnabled.getter())
  {
    v59 = *(&v10 + 1);
    LODWORD(v63) = v14;
    v52 = v3;
    v53 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v21 = v20;
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v22 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v21;
    *(v15 + 72) = v22;
    *(v15 + 80) = v23;
    v65 = v15;
    if (one-time initialization token for _signpostLog == -1)
    {
      v24 = v59;
      if (v12)
      {
LABEL_6:
        v70 = v63;
        v68 = _signpostLog;
        v69 = &dword_18D018000;
        *v72 = v66;
        *&v72[8] = v24;
        v72[16] = v64;
        v71[0] = "%{public}@.body [in %{public}@]";
        v71[1] = 31;
        LOBYTE(v71[2]) = 2;
        v67 = v65;
        v25 = v53;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v70, &v69, &v68, v72, v53, v71, &v67);
        (*(v61 + 8))(v25, v60);
LABEL_35:

        v3 = v52;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v24 = v59;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v26 = v66;
    if (v66 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v66) | (4 * WORD1(v66));
    LODWORD(v66) = v63;
    v29 = v61 + 16;
    v55 = *(v61 + 16);
    v30 = v55(v62, v53, v60);
    v31 = 0;
    LOBYTE(v71[0]) = 1;
    v64 = v27;
    v61 = v29;
    v58 = 16 * v27;
    v59 = (v29 - 8);
    v56 = v26;
    v57 = v65 + 32;
    do
    {
      v63 = &v51;
      MEMORY[0x1EEE9AC00](v30);
      v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v33 + 8;
      v35 = v64;
      v36 = v33 + 8;
      do
      {
        *(v36 - 1) = 0;
        *v36 = 0;
        v36 += 16;
        --v35;
      }

      while (v35);
      v37 = v57 + 40 * v31;
      v38 = v64;
      while (1)
      {
        v39 = *(v65 + 16);
        if (v31 == v39)
        {
          break;
        }

        if (v31 >= v39)
        {
          __break(1u);
        }

        ++v31;
        outlined init with copy of AnyTrackedValue(v37, v72);
        v40 = *&v72[24];
        v41 = *&v72[32];
        __swift_project_boxed_opaque_existential_1(v72, *&v72[24]);
        *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v66, v40, v41);
        *v34 = v42 & 1;
        v34 += 16;
        __swift_destroy_boxed_opaque_existential_1(v72);
        v37 += 40;
        if (!--v38)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v71[0]) = 0;
LABEL_20:
      v43 = v56;
      if (v56 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v33[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v43 != 20 && v33[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v44 = v60;
      v45 = *v59;
      v46 = v62;
      (*v59)(v62, v60);
      v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
      v30 = v55(v46, v47, v44);
    }

    while ((v71[0] & 1) != 0);
    v48 = v60;
    v45(v62, v60);
    v45(v53, v48);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v49 = memcpy(v71, v3, 0x2A8uLL);
  GlassEntryView.body.getter(v49);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>(0);
  AGGraphSetOutputValue();
  memcpy(v71, v72, sizeof(v71));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v71, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v53 = v1;
  v3 = v2;
  v72 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v65 = v10;
  v71[0] = v10;
  LODWORD(v63) = v11;
  LOBYTE(v71[1]) = v11;
  BYTE1(v71[1]) = v12;
  BYTE2(v71[1]) = v13;
  if (Signpost.isEnabled.getter())
  {
    v58 = *(&v10 + 1);
    LODWORD(v62) = v14;
    v51 = v3;
    v52 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v21 = v20;
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v22 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v21;
    *(v15 + 72) = v22;
    *(v15 + 80) = v23;
    v64 = v15;
    if (one-time initialization token for _signpostLog == -1)
    {
      v24 = v58;
      if (v12)
      {
LABEL_6:
        v69 = v62;
        v67 = _signpostLog;
        v68 = &dword_18D018000;
        *&v71[0] = v65;
        *(&v71[0] + 1) = v24;
        LOBYTE(v71[1]) = v63;
        v70[0] = "%{public}@.body [in %{public}@]";
        v70[1] = 31;
        LOBYTE(v70[2]) = 2;
        v66 = v64;
        v25 = v52;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v69, &v68, &v67, v71, v52, v70, &v66);
        (*(v60 + 8))(v25, v59);
LABEL_35:

        v3 = v51;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v24 = v58;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v26 = v65;
    if (v65 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v65) | (4 * WORD1(v65));
    LODWORD(v65) = v62;
    v29 = v60 + 16;
    v54 = *(v60 + 16);
    v30 = v54(v61, v52, v59);
    v31 = 0;
    LOBYTE(v70[0]) = 1;
    v63 = v27;
    v60 = v29;
    v57 = 16 * v27;
    v58 = (v29 - 8);
    v55 = v26;
    v56 = v64 + 32;
    do
    {
      v62 = &v50;
      MEMORY[0x1EEE9AC00](v30);
      v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v33 + 8;
      v35 = v63;
      v36 = v33 + 8;
      do
      {
        *(v36 - 1) = 0;
        *v36 = 0;
        v36 += 16;
        --v35;
      }

      while (v35);
      v37 = v56 + 40 * v31;
      v38 = v63;
      while (1)
      {
        v39 = *(v64 + 16);
        if (v31 == v39)
        {
          break;
        }

        if (v31 >= v39)
        {
          __break(1u);
        }

        ++v31;
        outlined init with copy of AnyTrackedValue(v37, v71);
        v40 = *(&v71[1] + 1);
        v41 = *&v71[2];
        __swift_project_boxed_opaque_existential_1(v71, *(&v71[1] + 1));
        *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v65, v40, v41);
        *v34 = v42 & 1;
        v34 += 16;
        __swift_destroy_boxed_opaque_existential_1(v71);
        v37 += 40;
        if (!--v38)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v70[0]) = 0;
LABEL_20:
      v43 = v55;
      if (v55 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v33[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v33[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v43 != 20 && v33[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v44 = v59;
      v45 = *v58;
      v46 = v61;
      (*v58)(v61, v59);
      v47 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
      v30 = v54(v46, v47, v44);
    }

    while ((v70[0] & 1) != 0);
    v48 = v59;
    v45(v61, v59);
    v45(v52, v48);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v70, v3, 0x408uLL);
  GlassItemView.body.getter(v71);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
  AGGraphSetOutputValue();
  memcpy(v70, v71, 0x819uLL);
  return outlined destroy of ObservationTracking._AccessList?(v70, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
}

{
  v47 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    LOBYTE(v67) = v7;
    BYTE1(v67) = v8;
    BYTE2(v67) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v6 + 1);
    LODWORD(v58) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v59 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v6;
      *(&v66 + 1) = v57;
      LOBYTE(v67) = v7;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v20 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v55 + 8))(v20, v54);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v58;
    v24 = v55 + 16;
    v49 = *(v55 + 16);
    v25 = v49(v56, v48, v54);
    v26 = 0;
    LOBYTE(v61[0]) = 1;
    v58 = v21;
    v52 = 16 * v21;
    v55 = v24;
    v53 = (v24 - 8);
    v51 = v59 + 32;
    v50 = v6;
LABEL_11:
    v57 = v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v28 + 8;
    v30 = v58;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v26;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v26 == v34)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v38 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v54;
        v40 = *v53;
        v41 = v56;
        (*v53)(v56, v54);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v49(v41, v42, v39);
        if ((v61[0] & 1) == 0)
        {
          v43 = v54;
          v40(v56, v54);
          v40(v48, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v66);
      v35 = *(&v67 + 1);
      v36 = v68;
      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = *(v47 + 16);
  v66 = *v47;
  v67 = v44;
  LOBYTE(v68) = *(v47 + 32);
  *(&v68 + 1) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

uint64_t Text.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v14);
  if (swift_dynamicCast())
  {
    v18 = v26[1];
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v20 = *(a5 + 2);
    v19 = *(a5 + 3);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, a5);
    }

    v22 = 0;
  }

  else
  {
    type metadata accessor for TextForegroundStyleModifier();
    v18 = specialized TextForegroundStyleModifier.__allocating_init<A>(_:)(a1, a6, a7);
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v20 = *(a5 + 2);
    v23 = *(a5 + 3);
    v21 = v20 + 1;
    if (v20 >= v23 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v20 + 1, 1, a5);
    }

    v22 = -64;
  }

  *(a5 + 2) = v21;
  v24 = &a5[16 * v20];
  *(v24 + 4) = v18;
  v24[40] = v22;
  return a2;
}

void specialized static Text.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a3)
  {
    if ((a7 & 1) == 0 || ((*(*a1 + 96))(a5, a2) & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a7 & 1) == 0 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
LABEL_10:

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(a4, a8);
  }
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, __int128 *a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v8 = *a1;
  v9 = a3[1];
  v69 = *a3;
  v70 = v9;
  v10 = a3[3];
  v71 = a3[2];
  v72 = v10;
  v11 = a3[5];
  v73 = a3[4];
  v74[0] = v11;
  *(v74 + 12) = *(a3 + 92);
  v12 = DWORD2(v74[1]) >> 29;
  if (DWORD2(v74[1]) >> 29 == 2)
  {
    v37 = a6;
    v14 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v50 = v69;
      LOBYTE(v51) = v70 & 1;
      v15 = *(v14 + 16);
      v40 = *v14;
      v41 = v15;
      v42 = *(v14 + 32);
      LODWORD(v43) = *(v14 + 48);
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v40, &v62, a5, v37);
      v16 = *AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v40, a5, v37);
      v48[0] = v16;
      LOBYTE(v62) = v8;
      _ShapeStyle_Pack.subscript.getter(&v62, 0, &v54);

      v39 = v8;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v50, &v54, &v39);
      v66 = v58;
      v67[0] = v59;
      v67[1] = v60;
      v68 = v61;
      v62 = v54;
      v63 = v55;
      v64 = v56;
      v65 = v57;
      outlined destroy of _ShapeStyle_Pack.Style(&v62);
    }

    else
    {
      v62 = v69;
      LOBYTE(v63) = v70 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v62);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v69);
  }

  else
  {
    v13 = *(&v71 + 1);
    if (v12 == 3)
    {
      if (v73)
      {
        v62 = v69;
        LOBYTE(v63) = v70;
        *(&v63 + 1) = *(&v70 + 1);
        BYTE7(v63) = (*(&v70 + 1) | ((*(&v70 + 5) | (BYTE7(v70) << 16)) << 32)) >> 48;
        *(&v63 + 5) = *(&v70 + 5);
        *(&v63 + 1) = *(&v70 + 1);
        v64 = v71;
        v65 = v72;
        LOBYTE(v66) = v73;
        *(&v66 + 1) = *(&v73 + 1);
        BYTE7(v66) = (*(&v73 + 1) | ((*(&v73 + 5) | (BYTE7(v73) << 16)) << 32)) >> 48;
        *(&v66 + 5) = *(&v73 + 5);
        *(&v66 + 1) = *(&v73 + 1);
        v67[0] = v74[0];
        *&v67[1] = *&v74[1];
        DWORD2(v67[1]) = DWORD2(v74[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v62);
        return;
      }

      if (BYTE8(v69) != 2)
      {
        if (BYTE8(v69) == 255)
        {
          *(v67 + 12) = *(a3 + 92);
          v17 = a3[5];
          v66 = a3[4];
          v67[0] = v17;
          v18 = a3[1];
          v62 = *a3;
          v63 = v18;
          v19 = a3[3];
          v64 = a3[2];
          v65 = v19;
          DWORD2(v67[1]) &= 0x1FFFFFFFu;
          v20 = a4;
          v21 = a6;
          outlined init with copy of GraphicsImage(&v62, &v54);
          a6 = v21;
          a4 = v20;
        }

        goto LABEL_14;
      }

      v24 = *(v69 + 24);
      v25 = *(v69 + 32);
      v26 = *(v69 + 40);
      v27 = *(v69 + 44);
      v28 = *(v69 + 45);
      v29 = *(v69 + 48);
      *&v40 = *(v69 + 16);
      BYTE8(v40) = v24;
      *&v41 = v25;
      DWORD2(v41) = v26;
      BYTE12(v41) = v27;
      BYTE13(v41) = v28;
      *&v42 = v29;
      LOBYTE(v50) = v8;
      v30 = *(a4 + 16);
      v56 = *(a4 + 32);
      LODWORD(v57) = *(a4 + 48);
      v31 = *a4;
      v55 = v30;
      v54 = v31;
      v32 = a6;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v69, &v62);
      v33 = v40;
      outlined copy of Image.Location(v25);
      v34 = v29;
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v54, &v62, a5, v32);
      v35 = *AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v54, a5, v32);
      *&v62 = v35;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v40, v13, &v50, &v62, a2, v36);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v69);

      outlined consume of Image.Location(v25);
    }

    else if (v12 != 5 || DWORD2(v74[1]) != -1610612736 || v70 | ((*(&v70 + 1) | ((*(&v70 + 5) | (BYTE7(v70) << 16)) << 32)) << 8) | v73 | ((*(&v73 + 1) | ((*(&v73 + 5) | (BYTE7(v73) << 16)) << 32)) << 8) | v69 | *(&v69 + 1) | *(&v70 + 1) | v71 | *(&v71 + 1) | v72 | *(&v72 + 1) | *(&v73 + 1) | *&v74[0] | *(&v74[0] + 1) | *&v74[1])
    {
LABEL_14:
      v22 = *a4;
      v51 = *(a4 + 16);
      v50 = v22;
      v52 = *(a4 + 32);
      v53 = *(a4 + 48);
      v23 = a6;
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v50, &v62, a5, a6);
      AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v50, a5, v23);
      LOBYTE(v54) = v8;
      _ShapeStyle_Pack.subscript.getter(&v54, 0, &v62);

      v58 = v66;
      v59 = v67[0];
      v60 = v67[1];
      v61 = v68;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v57 = v65;
      v47 = v68;
      v48[0] = v8;
      v48[1] = 0;
      v49 = 0;
      v44 = v66;
      v45 = v67[0];
      v46 = v67[1];
      v40 = v62;
      v41 = v63;
      v42 = v64;
      v43 = v65;
      outlined init with copy of _ShapeStyle_Pack.Style(&v54, &v62);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v48, &v40, a3);
      v66 = v44;
      v67[0] = v45;
      v67[1] = v46;
      v68 = v47;
      v62 = v40;
      v63 = v41;
      v64 = v42;
      v65 = v43;
      outlined destroy of _ShapeStyle_Pack.Style?(&v62, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      _ShapeStyle_RenderedShape.render(style:)(&v40);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v54);
    }
  }
}

char *GraphicsBlendMode.init(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = qword_18DDD94C0[*result];
  *(a2 + 8) = 0;
  return result;
}

uint64_t outlined assign with copy of AnyAccessibilityValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AnyAccessibilityValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TimeDataFormattingContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t destroy for AccessibilityValueStorage(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for AccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t GeometryProxy.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  v11 = v3[1];
  v27 = *v3;
  v28 = v11;
  v29 = v3[2];
  v30 = *(v3 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v17 = a2;
  v18 = a1;
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _PositionAwarePlacementContext?, &type metadata for _PositionAwarePlacementContext);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in GeometryProxy.subscript.getter, v16, MEMORY[0x1E69E73E0], a2, v12, v10);
  v13 = *(a2 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, a2) == 1)
  {
    Anchor.defaultValue.getter(a1);
    if (v14(v10, 1, a2) != 1)
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v13 + 32))(a3, v10, a2);
  }

  return static Update.end()();
}

double partial apply for closure #1 in GeometryProxy.subscript.getter(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 6);
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = v3;
  return Anchor.in(_:)(&v5, v2);
}

uint64_t getEnumTagSinglePayload for GlassEffectItemInit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double Anchor.in(_:)(unsigned int *a1, uint64_t a2)
{
  InputValue = AGGraphGetInputValue();
  v4 = *InputValue;
  v5 = *(InputValue + 8);
  v6 = *(InputValue + 16);
  v7 = *(InputValue + 24);
  v8 = *(InputValue + 32);
  v9 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetInputValue();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = v8 - (*v10 - v6);
  v15[0] = v4;
  v15[1] = v5;
  *&v15[2] = v11;
  *&v15[3] = v12;
  *&v15[4] = v13;
  *&v15[5] = v9 - (v12 - v7);
  (*(*a2 + 96))(v15);

  return result;
}

uint64_t storeEnumTagSinglePayload for _BlendModeEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _BlendModeEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Path.strokedPath(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 32);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = CGRectIsNull(*(result + 16));
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = CGRectIsNull(*v2);
      if (result)
      {
LABEL_4:
        v7 = 0;
        LOBYTE(v6) = 6;
LABEL_13:
        *a2 = v7;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = v6;
        return result;
      }
    }

LABEL_10:
    Path.retainRBPath()();
    type metadata accessor for Path.PathBox();
    v7 = swift_allocObject();
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 16) = 2;
    RBPathStorageInit();
    closure #1 in Path.strokedPath(_:)(v7 + 24, a1);
    result = RBPathRelease();
    LOBYTE(v6) = 5;
    goto LABEL_13;
  }

  if (v6 == 5)
  {
    if (*(result + 16))
    {
      if (*(result + 16) != 1)
      {
        v8 = one-time initialization token for bufferCallbacks;

        if (v8 != -1)
        {
          swift_once();
        }

LABEL_18:
        IsEmpty = RBPathIsEmpty();
        result = outlined destroy of Path(v2);
        if (IsEmpty)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

LABEL_8:

      goto LABEL_18;
    }

    if (*(result + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (v6 == 6)
  {
    v7 = 0;
    goto LABEL_13;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in Path.strokedPath(_:)(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v3 = a2[2];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[4];
  v8[0] = v4;
  v5 = a2[3];
  v8[1] = *(v5 + 16);
  v8[2] = v5 + 32;
  MEMORY[0x193AC35E0](a1, 19, v7, v8);
  Path.append(to:)(a1);
  return MEMORY[0x193AC35E0](a1, 16, 0, 0);
}

void Path.boundingRect.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      if (*(v1 + 16))
      {
        if (*(v1 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          MEMORY[0x193AC3640](v1 + 24);
        }

        goto LABEL_11;
      }

      v3 = *(v1 + 24);
      if (v3)
      {
        v4 = v3;

        CGPathGetPathBoundingBox(v4);

LABEL_11:
        outlined destroy of Path(v0);
        return;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v2 != 6)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  if (IsNull)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v12;
  a1[1] = result;
  a1[2].i8[0] = v11;
  return result;
}

Swift::Bool __swiftcall FixedRoundedRect.contains(_:)(SwiftUI::FixedRoundedRect *a1)
{
  x = a1->rect.origin.x;
  y = a1->rect.origin.y;
  width = a1->rect.size.width;
  height = a1->rect.size.height;
  v20 = a1->cornerSize.height;
  v21 = a1->cornerSize.width;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v22 = v1[4];
  v23 = v1[5];
  v24.origin.x = *v1;
  v24.origin.y = v7;
  v24.size.width = v8;
  v24.size.height = v9;
  v25 = CGRectInset(v24, -0.001, -0.001);
  v19 = x;
  v30.origin.x = x;
  v10 = y;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = CGRectContainsRect(v25, v30);
  if (v11)
  {
    if (v22 > v21 || v23 > v20)
    {
      v26.origin.x = v6;
      v26.origin.y = v7;
      v26.size.width = v8;
      v26.size.height = v9;
      v13 = fabs(CGRectGetWidth(v26)) * 0.5;
      v27.origin.x = v6;
      v27.origin.y = v7;
      v27.size.width = v8;
      v27.size.height = v9;
      v14 = fabs(CGRectGetHeight(v27)) * 0.5;
      if (v14 >= v13)
      {
        v14 = v13;
      }

      v15 = v22;
      if (v14 < v22)
      {
        v15 = v14;
      }

      if (v14 >= v23)
      {
        v14 = v23;
      }

      v16 = v15 * 0.292893219;
      v17 = v14 * 0.292893219;
      v28.origin.x = v6;
      v28.origin.y = v7;
      v28.size.width = v8;
      v28.size.height = v9;
      v29 = CGRectInset(v28, v16, v17);
      v31.size.height = height;
      v31.origin.x = v19;
      v31.origin.y = v10;
      v31.size.width = width;
      LOBYTE(v11) = CGRectContainsRect(v29, v31);
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  return v11;
}

void type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void __swiftcall Path.roundedRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 == 2)
  {
    v7 = *(*&v2 + 64);
    v8 = *(*&v2 + 32);
    retstr->value.rect.origin = *(*&v2 + 16);
    retstr->value.rect.size = v8;
    retstr->value.cornerSize = *(*&v2 + 48);
    retstr->value.style = v7;
  }

  else
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3 == 1)
    {
      if (vabdd_f64(v4, v6) < 0.001)
      {
        retstr->value.rect.origin.x = v2;
        retstr->value.rect.origin.y = v5;
        retstr->value.rect.size.width = v4;
        retstr->value.rect.size.height = v6;
        retstr->value.cornerSize.width = v4 * 0.5;
        retstr->value.cornerSize.height = v4 * 0.5;
        retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
        return;
      }
    }

    else if (!*(v1 + 32))
    {
      retstr->value.rect.origin.x = v2;
      retstr->value.rect.origin.y = v5;
      retstr->value.rect.size.width = v4;
      retstr->value.rect.size.height = v6;
      retstr->value.cornerSize.width = 0.0;
      retstr->value.cornerSize.height = 0.0;
      retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
      return;
    }

    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    retstr->value.style = SwiftUI_RoundedCornerStyle_unknownDefault;
  }
}

uint64_t BufferedElement.__deallocating_deinit()
{
  swift_beginAccess();
  UnsafeHeterogeneousBuffer.destroy()();
  swift_endAccess();
  AnyElement.deinit();
  return swift_deallocClassInstance();
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

void Color.ResolvedHDR.animatableData.getter(float32x4_t *a1@<X8>)
{
  v7 = *v1;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v3 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v3 = v8;
  }

  v4.i64[0] = 0x4300000043000000;
  v4.i64[1] = 0x4300000043000000;
  v5 = vmulq_f32(v3, v4);
  v6 = v1[1].i32[0];
  *a1 = v5;
  a1[1].i32[0] = v6;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); (vminv_u16(vmovn_s32(vceqq_f32(*(v3 - 4), *(i - 4)))) & 1) != 0 && *v3 == *i; i += 5)
    {
      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for _ForegroundColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ForegroundColorModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t Font.leading(_:)(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  a3(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.LeadingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.LeadingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.LeadingModifier>, lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier, &type metadata for Font.LeadingModifier, type metadata accessor for Font.ModifierProvider);
    v3 = v2;
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>();
    v6 = type metadata accessor for FontBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.LeadingModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier()
{
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.LeadingModifier, &type metadata for Font.LeadingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.LeadingModifier, &type metadata for Font.LeadingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.LeadingModifier, &type metadata for Font.LeadingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }
}

void lazy protocol witness table accessor for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>()
{
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.LeadingModifier>, lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier, &type metadata for Font.LeadingModifier, type metadata accessor for Font.ModifierProvider);
    swift_getWitnessTable(protocol conformance descriptor for Font.ModifierProvider<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>);
  }
}

_OWORD *assignWithTake for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for _EnvironmentKeyTransformModifier(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v4;

  return a1;
}

uint64_t specialized LeafDisplayList.updateValue()()
{
  v31 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 16);
  v5 = *(Value + 21);
  v6 = swift_allocObject();
  *(v6 + 16) = *Value;
  *(v6 + 32) = v4;
  *(v6 + 36) = 1;
  *(v6 + 37) = v5;
  v7 = ++static DisplayList.Version.lastValue;
  if (v3)
  {
    if (v7)
    {
      v8 = (2 * ((33 * (v7 >> 16)) ^ v7)) | 1;
    }

    else
    {
      LOWORD(v8) = 0;
    }

    *(v0 + 11) = v8;
  }

  v9 = v6 | 0x1000000000000000;
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v14 = v11 - *v13;
  v15 = v12 - v13[1];
  v16 = *(v0 + 11);
  type metadata accessor for CGSize(0);

  v17 = AGGraphGetValue();
  v18 = *v0;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  v22 = *v17;
  *&v24[16] = 0;
  *(&v23 + 1) = v9;
  *v24 = v16;
  *&v24[24] = v18;
  *&v23 = v7;
  LOBYTE(v27) = *(v0 + 20);
  DisplayList.Item.canonicalize(options:)(&v27);
  v25[2] = v23;
  v26[0] = v16;
  *(v26 + 12) = *&v24[12];
  v25[0] = v21;
  v25[1] = v22;
  v29 = v23;
  v30[0] = v16;
  *(v30 + 12) = *&v24[12];
  v27 = v21;
  v28 = v22;
  outlined init with copy of DisplayList.Item(v25, &v20);
  DisplayList.init(_:)(&v27, &v20);
  AGGraphSetOutputValue();

  v29 = v23;
  v30[0] = *v24;
  *(v30 + 12) = *&v24[12];
  v27 = v21;
  v28 = v22;
  outlined destroy of DisplayList.Item(&v27);
}

id UnclippedGradientLayer.init()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_init);
  v2 = objc_allocWithZone(type metadata accessor for GradientLayer());
  v3 = v1;
  v4 = [v2 init];
  [v4 setAnchorPoint_];
  [v4 setNoAnimationDelegate];
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDAB4D0;
  *(v5 + 32) = v4;
  type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSublayers_];

  return v3;
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    }
  }
}

uint64_t AnyDynamicFontModifier.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t AnyDynamicFontModifier.__deallocating_deinit()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

double protocol witness for FontModifier.modify(traits:) in conformance Font.WeightModifier(uint64_t a1)
{
  result = *v1;
  *(a1 + 8) = *v1;
  return result;
}

uint64_t static MutableBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v14 = *(*v13 + 88);
  swift_beginAccess();
  v15 = *(v7 + 16);
  v15(v12, a1 + v14, v6);
  v16 = *(*a2 + 88);
  swift_beginAccess();
  v15(v9, a2 + v16, v6);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);
  return v17 & 1;
}

BOOL specialized static AccessibilityProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  specialized static AccessibilityProperties.CustomPropertyStorage.== infix(_:_:)(*(a1 + 280), *(a2 + 280));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (!v5)
  {
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_13:
    v10 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = *(a2 + 32);
        v13 = *(a1 + 24);
        swift_bridgeObjectRetain_n();

        v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(v13, v10);
        swift_bridgeObjectRelease_n();

        v9 = 0;
        if ((v14 & 1) == 0 || v11 != v12)
        {
          return v9;
        }

        goto LABEL_23;
      }
    }

    else if (!v10)
    {

LABEL_23:
      if ((*(a1 + 56) & 1) == 0)
      {
        v9 = 0;
        if ((*(a2 + 56) & 1) != 0 || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
        {
          return v9;
        }

LABEL_29:
        outlined init with copy of AccessibilityValueStorage?(a1 + 64, __src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
        outlined init with copy of AccessibilityValueStorage?(a2 + 64, &__src[3], &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
        if (*(&__src[1] + 1) == 1)
        {
          if (*(&__src[4] + 1) == 1)
          {
            _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
LABEL_37:
            v21 = *(a2 + 120);
            if (*(a1 + 120))
            {
              if (!*(a2 + 120))
              {
                return 0;
              }
            }

            else
            {
              if (*(a1 + 112) != *(a2 + 112))
              {
                v21 = 1;
              }

              if (v21)
              {
                return 0;
              }
            }

            v22 = *(a1 + 240);
            v23 = *(a1 + 208);
            v84 = *(a1 + 224);
            v85 = v22;
            v24 = *(a1 + 240);
            v86 = *(a1 + 256);
            v25 = *(a1 + 176);
            v26 = *(a1 + 144);
            v80 = *(a1 + 160);
            v81 = v25;
            v27 = *(a1 + 176);
            v28 = *(a1 + 208);
            v82 = *(a1 + 192);
            v83 = v28;
            v29 = *(a1 + 144);
            v79[0] = *(a1 + 128);
            v79[1] = v29;
            v30 = *(a2 + 240);
            v31 = *(a2 + 208);
            v93 = *(a2 + 224);
            v94 = v30;
            v32 = *(a2 + 240);
            v95 = *(a2 + 256);
            v33 = *(a2 + 176);
            v34 = *(a2 + 144);
            v89 = *(a2 + 160);
            v90 = v33;
            v35 = *(a2 + 176);
            v36 = *(a2 + 208);
            v91 = *(a2 + 192);
            v92 = v36;
            v37 = *(a2 + 144);
            v88[0] = *(a2 + 128);
            v88[1] = v37;
            v38 = *(a1 + 240);
            __src[6] = *(a1 + 224);
            __src[7] = v38;
            __src[8] = *(a1 + 256);
            v39 = *(a1 + 176);
            __src[2] = *(a1 + 160);
            __src[3] = v39;
            v40 = *(a1 + 208);
            __src[4] = *(a1 + 192);
            __src[5] = v40;
            v41 = *(a1 + 144);
            __src[0] = *(a1 + 128);
            __src[1] = v41;
            v42 = *(a2 + 256);
            *(&__src[16] + 8) = v32;
            *(&__src[17] + 8) = v42;
            *(&__src[15] + 8) = v93;
            *(&__src[11] + 8) = v89;
            *(&__src[12] + 8) = v35;
            *(&__src[13] + 8) = v91;
            *(&__src[14] + 8) = v31;
            *(&__src[9] + 8) = v88[0];
            *(&__src[10] + 8) = v34;
            v103 = v84;
            v104 = v24;
            v105 = *(a1 + 256);
            v99 = v80;
            v100 = v27;
            v101 = v82;
            v102 = v23;
            v87 = *(a1 + 272);
            v96 = *(a2 + 272);
            LOBYTE(__src[9]) = *(a1 + 272);
            BYTE8(__src[18]) = *(a2 + 272);
            v106 = *(a1 + 272);
            v97 = v79[0];
            v98 = v26;
            if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v97) == 1)
            {
              __dst[6] = *(&__src[15] + 8);
              __dst[7] = *(&__src[16] + 8);
              __dst[8] = *(&__src[17] + 8);
              LOBYTE(__dst[9]) = BYTE8(__src[18]);
              __dst[2] = *(&__src[11] + 8);
              __dst[3] = *(&__src[12] + 8);
              __dst[4] = *(&__src[13] + 8);
              __dst[5] = *(&__src[14] + 8);
              __dst[0] = *(&__src[9] + 8);
              __dst[1] = *(&__src[10] + 8);
              if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(__dst) == 1)
              {
                v74 = __src[6];
                v75 = __src[7];
                v76 = __src[8];
                v77 = __src[9];
                v70 = __src[2];
                v71 = __src[3];
                v72 = __src[4];
                v73 = __src[5];
                v68 = __src[0];
                v69 = __src[1];
                outlined init with copy of AccessibilityValueStorage?(v79, &v57, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(v88, &v57, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(&v68, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                return 1;
              }

              outlined init with copy of AccessibilityValueStorage?(v79, &v68, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(v88, &v68, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
            }

            else
            {
              v74 = __src[6];
              v75 = __src[7];
              v76 = __src[8];
              v70 = __src[2];
              v71 = __src[3];
              v72 = __src[4];
              v73 = __src[5];
              v68 = __src[0];
              v69 = __src[1];
              v63 = __src[6];
              v64 = __src[7];
              v65 = __src[8];
              v59 = __src[2];
              v60 = __src[3];
              v61 = __src[4];
              v62 = __src[5];
              v77 = __src[9];
              v66 = __src[9];
              v57 = __src[0];
              v58 = __src[1];
              __dst[6] = *(&__src[15] + 8);
              __dst[7] = *(&__src[16] + 8);
              __dst[8] = *(&__src[17] + 8);
              LOBYTE(__dst[9]) = BYTE8(__src[18]);
              __dst[2] = *(&__src[11] + 8);
              __dst[3] = *(&__src[12] + 8);
              __dst[4] = *(&__src[13] + 8);
              __dst[5] = *(&__src[14] + 8);
              __dst[0] = *(&__src[9] + 8);
              __dst[1] = *(&__src[10] + 8);
              if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(__dst) != 1)
              {
                v53 = *(&__src[15] + 8);
                v54 = *(&__src[16] + 8);
                v55 = *(&__src[17] + 8);
                v56 = BYTE8(__src[18]);
                v49 = *(&__src[11] + 8);
                v50 = *(&__src[12] + 8);
                v51 = *(&__src[13] + 8);
                v52 = *(&__src[14] + 8);
                v47 = *(&__src[9] + 8);
                v48 = *(&__src[10] + 8);
                outlined init with copy of AccessibilityValueStorage?(v79, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(v88, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(&v68, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                v9 = specialized static AccessibilityTextLayoutProperties.== infix(_:_:)(&v57, &v47);
                v43[6] = v53;
                v43[7] = v54;
                v43[8] = v55;
                v44 = v56;
                v43[2] = v49;
                v43[3] = v50;
                v43[4] = v51;
                v43[5] = v52;
                v43[0] = v47;
                v43[1] = v48;
                outlined destroy of AccessibilityTextLayoutProperties(v43);
                v45[6] = v63;
                v45[7] = v64;
                v45[8] = v65;
                v46 = v66;
                v45[2] = v59;
                v45[3] = v60;
                v45[4] = v61;
                v45[5] = v62;
                v45[0] = v57;
                v45[1] = v58;
                outlined destroy of AccessibilityTextLayoutProperties(v45);
                v53 = __src[6];
                v54 = __src[7];
                v55 = __src[8];
                v56 = __src[9];
                v49 = __src[2];
                v50 = __src[3];
                v51 = __src[4];
                v52 = __src[5];
                v47 = __src[0];
                v48 = __src[1];
                _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(&v47, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                return v9;
              }

              v53 = __src[6];
              v54 = __src[7];
              v55 = __src[8];
              v56 = __src[9];
              v49 = __src[2];
              v50 = __src[3];
              v51 = __src[4];
              v52 = __src[5];
              v47 = __src[0];
              v48 = __src[1];
              outlined init with copy of AccessibilityValueStorage?(v79, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(v88, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(&v68, v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined destroy of AccessibilityTextLayoutProperties(&v47);
            }

            memcpy(__dst, __src, 0x129uLL);
            v16 = &lazy cache variable for type metadata for (AccessibilityTextLayoutProperties?, AccessibilityTextLayoutProperties?);
            v17 = &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?;
            v18 = &type metadata for AccessibilityTextLayoutProperties;
            v19 = __dst;
            goto LABEL_35;
          }
        }

        else
        {
          outlined init with copy of AccessibilityValueStorage?(__src, __dst, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
          if (*(&__src[4] + 1) != 1)
          {
            v97 = __src[3];
            v98 = __src[4];
            v99 = __src[5];
            v20 = specialized static AccessibilityValueStorage.== infix(_:_:)(__dst, &v97);
            outlined destroy of AccessibilityValueStorage(&v97);
            outlined destroy of AccessibilityValueStorage(__dst);
            _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
            if (!v20)
            {
              return 0;
            }

            goto LABEL_37;
          }

          outlined destroy of AccessibilityValueStorage(__dst);
        }

        v16 = &lazy cache variable for type metadata for (AccessibilityValueStorage?, AccessibilityValueStorage?);
        v17 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
        v18 = &type metadata for AccessibilityValueStorage;
        v19 = __src;
LABEL_35:
        outlined destroy of (AccessibilityTextLayoutProperties?, AccessibilityTextLayoutProperties?)(v19, v16, v17, v18);
        return 0;
      }

      if (*(a2 + 56))
      {
        goto LABEL_29;
      }

      return 0;
    }

LABEL_19:

    return 0;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (*a1 == *a2 && v5 == v6)
  {
    if (v7 != v8)
    {
      return 0;
    }

    goto LABEL_13;
  }

  v9 = 0;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v7 == v8)
  {
    goto LABEL_13;
  }

  return v9;
}

void specialized static AccessibilityProperties.CustomPropertyStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_13:
        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = v13 | (v10 << 6);
        v15 = *(*(a1 + 48) + 8 * v14);
        outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v14, v23);
        *&v24 = v15;
        outlined init with take of _ViewList_Elements(v23, &v24 + 8);
        v12 = v10;
LABEL_14:
        v27[1] = v25;
        v27[2] = v26;
        v27[0] = v24;
        if (!v26)
        {
          break;
        }

        v16 = *&v27[0];
        outlined init with take of _ViewList_Elements((v27 + 8), &v24);
        if (!*(a2 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v18 & 1) == 0) || (outlined init with copy of AnyTrackedValue(*(a2 + 56) + 40 * v17, v22), outlined init with take of _ViewList_Elements(v22, v23), v19 = *(&v25 + 1), v20 = v26, __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1)), v21 = (*(v20 + 8))(v23, v19, v20), __swift_destroy_boxed_opaque_existential_1(v23), (v21 & 1) == 0))
        {

          __swift_destroy_boxed_opaque_existential_1(&v24);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v24);
        v9 = v12;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (v8 <= v9 + 1)
      {
        v11 = v9 + 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11 - 1;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          v7 = 0;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for CodableAccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 112);
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08CalendarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = *(*v5 + 248);
    v7 = v5;
    v8 = type metadata accessor for Calendar();
    return (*(*(v8 - 8) + 16))(a2, &v7[v6], v8);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Calendar();
    v11 = __swift_project_value_buffer(v10, static CalendarKey.defaultValue);
    return (*(*(v10 - 8) + 16))(a2, v11, v10);
  }
}

void EnvironmentValues.calendar.getter(void (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t *))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else
  {
    a2(v3, &v5);
  }
}

void EnvironmentValues.locale.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(*v4 + 248);
      v6 = v4;
      v7 = type metadata accessor for Locale();
      v8 = *(*(v7 - 8) + 16);
      v9 = v6 + v5;
      v10 = v7;
      v11 = a1;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Locale();
      v9 = __swift_project_value_buffer(v12, static LocaleKey.defaultValue);
      v8 = *(*(v12 - 8) + 16);
      v11 = a1;
      v10 = v12;
    }

    v8(v11, v9, v10);
  }
}

double outlined copy of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t protocol witness for PlatformDrawable.update(content:required:) in conformance RBDrawingLayer(uint64_t a1, double a2)
{
  v3 = *(a1 + 40);
  if (v3 != 255)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    v8 = *a1;
    v9 = *&v2[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];
    outlined copy of PlatformDrawableContent?(*a1, v7, v6, v5, v4, v3);
    outlined copy of PlatformDrawableContent?(v8, v7, v6, v5, v4, v3);

    os_unfair_lock_lock((v9 + 16));
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v13 = *(v9 + 48);
    v14 = *(v9 + 56);
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    *(v9 + 48) = v5;
    *(v9 + 56) = v4;
    v15 = *(v9 + 64);
    *(v9 + 64) = v3;
    outlined consume of PlatformDrawableContent.Storage(v10, v11, v12, v13, v14, v15);
    os_unfair_lock_unlock((v9 + 16));
    outlined consume of PlatformDrawableContent?(v8, v7, v6, v5, v4, v3);
  }

  [v2 setNeedsDisplay];
  return 1;
}

void GraphicsContext.translateBy(x:y:)(double a1, double a2)
{
  if (a1 != 0.0 || a2 != 0.0)
  {
    GraphicsContext.copyOnWrite()();

    RBDrawingStateTranslateCTM();
  }
}

void *initializeWithCopy for GraphicsContext.ResolvedShading(void *a1, void **a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  v21 = a2[17];
  v22 = a2[18];
  v23 = a2[19];
  v24 = a2[20];
  v9 = a2[8];
  v10 = *a2;
  v11 = a2[1];
  outlined copy of GraphicsContext.ResolvedShading(*a2, v11, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18);
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v9;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  a1[17] = v21;
  a1[18] = v22;
  a1[19] = v23;
  a1[20] = v24;
  return a1;
}

uint64_t GraphicsContext.identifier.setter(uint64_t a1)
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

void outlined copy of GraphicsContext.ResolvedShading(void *a1, unsigned __int8 a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, void *a15)
{
  v15 = a14 >> 60;
  if ((a14 >> 60) > 5)
  {
    if (v15 == 6)
    {

LABEL_15:

      return;
    }

    if (v15 != 7)
    {
      if (v15 != 8)
      {
        return;
      }

      goto LABEL_15;
    }

    outlined copy of GraphicsImage.Contents?(a1, a2);
  }

  else
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        outlined copy of _ShapeStyle_Pack.Fill(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, BYTE5(a11));
        outlined copy of GraphicsBlendMode?(a13, a14);
      }

      else if (v15 != 5)
      {
        return;
      }

      goto LABEL_15;
    }

    v16 = a1;
  }
}

uint64_t _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(uint64_t a1)
{
  v1 = (*(a1 + 104) >> 11) & 0x1F80 | (*(a1 + 104) >> 9) | (*(a1 + 104) >> 13) & 0xFFFFE000;
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

double GraphicsContext.Storage.Shared.setColor(_:)(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  v7 = *(v5 + 40);
  LODWORD(a2) = *a1;
  LODWORD(a3) = a1[1];
  LODWORD(a4) = a1[2];
  LODWORD(a5) = a1[3];
  if (*(v5 + 64) != 2)
  {
    RBColorFromLinear();
  }

  [v7 setColor_];
  LODWORD(v8) = a1[4];
  [v7 setHeadroom_];
  *(v5 + 272) = 0;

  return result;
}

uint64_t AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a10;
  v16 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AccessibilityValueStorage.init<A>(_:description:), v21, MEMORY[0x1E69E73E0], &type metadata for AnyAccessibilityValue, v17, v25);
  *&v24 = 0;
  v22 = 0u;
  v23 = 0u;
  outlined assign with copy of AnyAccessibilityValue?(v25, &v22);
  if (a5)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDA6EB0;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = a4 & 1;
    *(v18 + 56) = a5;
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    outlined consume of Text?(a2, a3, a4, a5);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  _sypSgWOhTm_11(v25, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(&v24 + 1) = v18;
  v19 = v23;
  *a9 = v22;
  a9[1] = v19;
  a9[2] = v24;
  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t AnyAccessibilityValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v9 = type metadata accessor for AnyAccessibilityValue.ConcreteBase(0, v13);
  a6[3] = v9;
  swift_getWitnessTable(protocol conformance descriptor for AnyAccessibilityValue.ConcreteBase<A>, v9);
  a6[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
}

uint64_t initializeWithCopy for TimeDataFormattingContainer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t closure #1 in AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  return AnyAccessibilityValue.init<A>(_:)(v13, a2, a3, a4, a5, a6);
}

void instantiation function for generic protocol witness table for AnyAccessibilityValue.ConcreteBase<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyAccessibilityValue.ConcreteBase<A>);
  *(a1 + 8) = v5;
  swift_getWitnessTable(protocol conformance descriptor for AnyAccessibilityValue.ConcreteBase<A>, a2, WitnessTable);
  *(a1 + 16) = v6;
}

uint64_t type metadata completion function for RawRepresentableProxy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue()
{
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityProgressValue, &type metadata for AccessibilityProgressValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityProgressValue, &type metadata for AccessibilityProgressValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityProgressValue, &type metadata for AccessibilityProgressValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityProgressValue, &type metadata for AccessibilityProgressValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }
}

uint64_t getEnumTagSinglePayload for ScrollStateRequestKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance SpacingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout()
{
  if (!lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpacingLayout, &type metadata for SpacingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for SpacingLayout, &type metadata for SpacingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout);
  }
}

uint64_t specialized UnaryLayoutComputer.updateValue()()
{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(v0 + 8);
    v14 = *(v0 + 4);
    v5 = v14;
    v15 = v4;
    Value = AGGraphGetValue();
    v16 = &v10;
    v7 = *Value;
    v17 = 1;
    v12 = 1;
    v13 = 1;
    v18 = 1;
    v19 = v7;
    v20 = v3;
    v21 = v3;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    v25 = v2;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 1;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v44 = 1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v11 = v2;
    v9[2] = &v19;
    MEMORY[0x1EEE9AC00](v8);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v19 = v7;
    v20 = v3;
    v21 = v3;
    v22 = v14;
    v23 = v3;
    v24 = v15;
    v25 = v11;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = v12;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = v13;
    v42 = 0u;
    v43 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v44 = 1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    return outlined destroy of UnaryLayoutEngine<SpacingLayout>(&v19);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = outlined init with copy of ConcentricPaddingLayout(Value, v10);
    v18 = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 1;
    v44 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v43 = 1;
    v10[12] = v3;
    v10[13] = v3;
    v10[14] = v5;
    v10[15] = v3;
    v10[16] = v4;
    v10[17] = v2;
    MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    return outlined destroy of UnaryLayoutEngine<ConcentricPaddingLayout>(v10);
  }

  return result;
}

uint64_t View.spacing(_:)(uint64_t *a1)
{
  View.modifier<A>(_:)();
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x1F9uLL);
  memcpy(a1, v3, 0x1F9uLL);
  return outlined init with copy of UnaryLayoutEngine<SpacingLayout>(__dst, &v5);
}

{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x161uLL);
  memcpy(a1, v3, 0x161uLL);
  return outlined init with copy of LeafLayoutEngine<Image.Resolved>(__dst, &v5);
}

uint64_t outlined init with copy of UnaryLayoutEngine<SpacingLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>);
    }
  }
}

uint64_t outlined destroy of UnaryLayoutEngine<SpacingLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Color.Resolved.kitColor.getter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  if (one-time initialization token for cache != -1)
  {
    v4 = a4.n128_u32[0];
    v5 = a3.n128_u32[0];
    v6 = a2.n128_u32[0];
    v7 = a1.n128_u32[0];
    swift_once();
    a1.n128_u32[0] = v7;
    a2.n128_u32[0] = v6;
    a3.n128_u32[0] = v5;
    a4.n128_u32[0] = v4;
  }

  specialized ObjectCache.subscript.getter(a1, a2, a3, a4);
}

uint64_t one-time initialization function for zero()
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = 1;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  *(inited + 88) = v1;
  *(inited + 96) = 3;
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0;
  *(inited + 144) = v1;
  *(inited + 152) = 0;
  *(inited + 160) = 0u;
  *(inited + 176) = 0u;
  *(inited + 192) = 0;
  *(inited + 200) = v1;
  *(inited + 208) = 2;
  *(inited + 248) = 0;
  *(inited + 232) = 0u;
  *(inited + 216) = 0u;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  static Spacing.zero = v2;
  return result;
}

double IgnoresAutomaticPaddingLayout.placement(of:in:)@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v25 = *(a1 + 1);
  v26 = a1[3];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v29 = *(a1 + 2);
  v6 = *(a1 + 48);
  v24 = v3;
  v27 = v4;
  v28 = v5;
  v30 = v6;
  PlacementContext.proposedSize.getter(&v20);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  if (v6)
  {
    InputValue = AGGraphGetInputValue();
    v12 = *InputValue;
    v13 = InputValue[1];
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  result = v12 * 0.5;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  __asm { FMOV            V2.2D, #0.5 }

  *(a2 + 32) = _Q2;
  *(a2 + 48) = result;
  *(a2 + 56) = v13 * 0.5;
  return result;
}

double specialized RBDrawingLayer.draw(in:size:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  v5 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(v5 + 72) = 3;
  *(v5 + 80) = 0;
  v20[0] = v6;
  v21 = v7;
  os_unfair_lock_unlock((v5 + 16));

  v8 = *&v2[v4];

  os_unfair_lock_lock((v8 + 16));
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v12 = *(v8 + 48);
  v13 = *(v8 + 56);
  v14 = *(v8 + 64);
  outlined copy of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  os_unfair_lock_unlock((v8 + 16));

  [v2 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v20, v15, v16);
  outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  v17 = *&v2[v4];

  os_unfair_lock_lock((v17 + 16));
  v18 = v21;
  *(v17 + 72) = v20[0];
  *(v17 + 80) = v18;
  os_unfair_lock_unlock((v17 + 16));

  return result;
}

void PlatformDrawableContent.draw(in:size:state:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = *(v4 + 40);
  if (v9 == 4)
  {
    [a1 translateByX:COERCE_DOUBLE(v8 ^ 0x8000000000000000) Y:COERCE_DOUBLE(v7 ^ 0x8000000000000000)];
    State = RBDisplayListGetState();
    v11 = sel_drawInState_by_;
    v12 = v5;

    goto LABEL_5;
  }

  if (v9 == 3)
  {
    [a1 translateByX:COERCE_DOUBLE(v6 ^ 0x8000000000000000) Y:COERCE_DOUBLE(v8 ^ 0x8000000000000000)];
    v11 = sel_drawDisplayList_;
    v12 = a1;
    State = v5;

LABEL_5:
    [v12 v11];
    return;
  }

  v40 = *(v4 + 32);
  v17 = a1;
  EnvironmentValues.init()(&v42);
  v18 = v42;
  v19 = v43;
  type metadata accessor for GraphicsContext.Storage();
  v20 = swift_allocObject();
  *(v20 + 32) = xmmword_18DD85500;
  *(v20 + 48) = 1065353216;
  *(v20 + 56) = 0x7FF8000000000000;
  v41[0] = v18;
  v41[1] = v19;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v21 = v17;
  *(v20 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v21, v41);
  *(v20 + 24) = RBDisplayListGetState();
  *(v20 + 64) = 0;

  v44 = v20;
  if (v9 <= 1)
  {
    if (v9)
    {
      outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 1u);

      v29 = RBDrawingStateBeginCGContext();
      v30 = v29;
      v31 = *(v20 + 52);
      if (v31)
      {
        CGContextSetBlendMode(v29, v31);
      }

      v32 = *(v20 + 56);
      outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 1u);
      if ((~*&v32 & 0x7FF0000000000000) != 0 || (*&v32 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        _CGContextSetShapeDistance(v30, v32);
        v39 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
        (v5)([v39 push], a3, a4);
        [v39 pop];

        _CGContextSetShapeDistance(v30, NAN);
      }

      else
      {
        v33 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
        (v5)([v33 push], a3, a4);
        [v33 pop];
      }

      outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 1u);
      RBDrawingStateEndCGContext();

      outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 1u);
      v22 = v5;
      v23 = v6;
      v24 = v8;
      v25 = v7;
      v26 = v40;
      v27 = 1;
    }

    else
    {

      (v5)(&v44, a3, a4);
      v22 = v5;
      v23 = v6;
      v24 = v8;
      v25 = v7;
      v26 = v40;
      v27 = 0;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    if (*&v8 == 0.0 && *&v7 == 0.0)
    {

      v28 = *(a2 + 8);
      if (!v28)
      {
        goto LABEL_23;
      }
    }

    else
    {

      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
      v28 = *(a2 + 8);
      if (!v28)
      {
LABEL_23:
        LOBYTE(v42) = *a2;
        type metadata accessor for DisplayList.GraphicsRenderer();
        swift_allocObject();
        v28 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v42);
        *(a2 + 8) = v28;
      }
    }

    v34 = *(v28 + 64);
    *(v28 + 72) = v40;
    *(v28 + 80) = 0x7FF0000000000000;
    v42 = v5;
    LOWORD(v43) = v6;
    HIDWORD(v43) = HIDWORD(v6);
    v35 = *(v28 + 48);
    v36 = *(v28 + 56);
    outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 2u);

    DisplayList.GraphicsRenderer.render(list:in:)(&v42, &v44);
    swift_beginAccess();

    v37 = MEMORY[0x1E69E7CC8];
    *(v28 + 16) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v38 = *(v28 + 32);
    *(v28 + 32) = v37;
    *(v28 + 40) = v37;
    *(v28 + 16) = v38;
    swift_endAccess();
    *(v28 + 48) = v35;
    *(v28 + 56) = v36;
    *(v28 + 64) = v34;
    outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v40, 2u);

    v22 = v5;
    v23 = v6;
    v24 = v8;
    v25 = v7;
    v26 = v40;
    v27 = 2;
LABEL_27:
    outlined consume of PlatformDrawableContent.Storage(v22, v23, v24, v25, v26, v27);
  }
}

void key path getter for EnvironmentValues.controlSize : EnvironmentValues(__int128 *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  EnvironmentValues.controlSize.getter(&v6, a3, a4, a5);
  *a2 = v6;
}

void EnvironmentValues.controlSize.getter(_BYTE *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *v4;
  if (*(v4 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v6, &v11);

    v7 = v11;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>(0, a2, a3, a4);
    BloomFilter.init(hashValue:)(v8);
    v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v6, v10);
    if (v9)
    {
      v7 = *(v9 + 72);
    }

    else
    {
      v7 = 5;
    }
  }

  if (v7 == 5)
  {
    LOBYTE(v7) = 2;
  }

  *a1 = v7;
}

void type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

float protocol witness for ColorProvider.resolve(in:) in conformance SystemColorType(__int128 *a1)
{
  v4 = *v1;
  v3 = *a1;
  SystemColorType.resolveHDR(in:)(&v3, &v5);
  return v5;
}

double SystemColorType.resolveHDR(in:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  if (v5)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a1);
    if (v10)
    {
      v7 = v10[9];
      v9 = v10[10];
    }

    else
    {
      v9 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v7 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v13 = v6;
  v12[0] = v4;
  v12[1] = v5;
  (v9[1])(&v14, &v13, v12, v7, v9);
  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  return result;
}

uint64_t initializeWithCopy for GraphicsContext.Shading(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  outlined copy of GraphicsContext.Shading.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

double *GraphicsContext.draw(_:with:style:)(double *result, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[5];
  v9 = *(a2 + 72);
  v10 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  v14 = a3[4];
  v15 = *(a3 + 40);
  if (v9 > 7)
  {
    if (v9 == 8)
    {
      if (*(v4 + 16))
      {
        v46 = result;
        v47 = a4;
        v48 = *(v4 + 48);
        v49 = *(v4 + 80);
        v103 = *(v4 + 64);
        *v104 = v49;
        *&v104[9] = *(v4 + 89);
        v50 = *(v4 + 48);
        v101 = *(v4 + 32);
        v102 = v48;
        v51 = *(v4 + 80);
        v99 = *(v4 + 64);
        *v100 = v51;
        *&v100[9] = *(v4 + 89);
        v97 = *(v4 + 32);
        v98 = v50;
        *&v126 = v10;
        *(&v126 + 1) = v11;
        *&v127 = v13;
        *(&v127 + 1) = v12;
        *&v128 = v14;
        BYTE8(v128) = v15;
        outlined init with copy of GraphicsContext.Shading(&v101, &v111);
        GraphicsContext.draw(_:with:style:)(v46, &v97, &v126, v47);
        v113 = v99;
        *v114 = *v100;
        *&v114[9] = *&v100[9];
        v111 = v97;
        v112 = v98;
        return outlined destroy of GraphicsContext.Shading(&v111);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v9 == 9)
    {
      v52 = *(v4 + 144);
      v117 = *(v4 + 128);
      v118 = v52;
      v119 = *(v4 + 160);
      v120 = *(v4 + 176);
      v53 = *(v4 + 80);
      *v114 = *(v4 + 64);
      *&v114[16] = v53;
      v54 = *(v4 + 112);
      v115 = *(v4 + 96);
      v116 = v54;
      v55 = *(v4 + 32);
      v111 = *(v4 + 16);
      v112 = v55;
      v113 = *(v4 + 48);
      v56 = *(v4 + 144);
      v107 = *(v4 + 128);
      v108 = v56;
      v109 = *(v4 + 160);
      v110 = *(v4 + 176);
      v57 = *(v4 + 80);
      *v104 = *(v4 + 64);
      *&v104[16] = v57;
      v58 = *(v4 + 112);
      v105 = *(v4 + 96);
      v106 = v58;
      v59 = *(v4 + 32);
      v101 = *(v4 + 16);
      v102 = v59;
      v103 = *(v4 + 48);
      *&v126 = v10;
      *(&v126 + 1) = v11;
      *&v127 = v13;
      *(&v127 + 1) = v12;
      *&v128 = v14;
      BYTE8(v128) = v15;
      v60 = result;
      v61 = a4;
      outlined init with copy of GraphicsContext.ResolvedShading(&v111, &v97);
      GraphicsContext.draw(_:with:style:)(v60, &v101, &v126, v61);
      return outlined destroy of GraphicsContext.ResolvedShading(&v111);
    }

    if (v9 == 10 && !(v5 | v4 | v7 | v6 | a2[4] | v8 | a2[6] | a2[7] | a2[8]))
    {
      v91 = *(a3 + 40);
      v16 = a3[1];
      v17 = a3[2];
      v18 = a3[3];
      v19 = *a3;
      v20 = a3[4];
      v94 = result;
      v21 = *(a4 + 2);
      v22 = *(a4 + 4);
      v23 = *(a4 + 5);
      v88 = a4;
      v24 = v22;
      v25 = v23;
      if (v22 == 1)
      {
        v24 = *(v21 + 48);
        v25 = *(v21 + 56);
      }

      *&v111 = v24;
      *(&v111 + 1) = v25;
      outlined copy of EnvironmentValues?(v22, v23);
      GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v111, &v101);
      outlined consume of EnvironmentValues?(v111, *(&v111 + 1));
      *&v97 = v19;
      *(&v97 + 1) = v16;
      *&v98 = v17;
      *(&v98 + 1) = v18;
      *&v99 = v20;
      BYTE8(v99) = v91;
      GraphicsContext.draw(_:with:style:)(v94, &v101, &v97, v88);
      v118 = v108;
      v119 = v109;
      v120 = v110;
      *&v114[16] = *&v104[16];
      v115 = v105;
      v116 = v106;
      v117 = v107;
      v111 = v101;
      v112 = v102;
      v113 = v103;
      *v114 = *v104;
      return outlined destroy of GraphicsContext.ResolvedShading(&v111);
    }

    goto LABEL_15;
  }

  if (*(a2 + 72))
  {
    if (v9 != 4)
    {
LABEL_15:
      v85 = a2[8];
      v87 = a2[7];
      v90 = a2[6];
      v93 = a2[4];
      v96 = result;
      v38 = *(a4 + 2);
      v39 = a4;
      v40 = v38[4];
      if (a3[5])
      {
        *&v101 = *a3;
        *(&v101 + 1) = v11;
        *&v102 = v13;
        *(&v102 + 1) = v12;
        *&v103 = v14;
        v41 = v40;
        RBShape.setStrokedPath(_:style:)(v96, &v101, v42, v43, v44, v45);
      }

      else
      {
        v70 = a4[7];
        v71 = *a3;
        v72 = v40;
        RBShape.setPath(_:style:shapeDistance:)(v96, v71 & 0x101, v70);
      }

      *&v111 = v4;
      *(&v111 + 1) = v5;
      *&v112 = v7;
      *(&v112 + 1) = v6;
      *&v113 = v93;
      *(&v113 + 1) = v8;
      *v114 = v90;
      *&v114[8] = v87;
      *&v114[16] = v85;
      v73 = *(v39 + 4);
      v74 = *(v39 + 5);
      v75 = v73;
      v76 = v74;
      v114[24] = v9;
      if (v73 == 1)
      {
        v75 = v38[6];
        v76 = v38[7];
      }

      *&v97 = v75;
      *(&v97 + 1) = v76;
      outlined copy of EnvironmentValues?(v73, v74);
      GraphicsContext.Storage.Shared.setShading(_:in:)(&v111, &v97);

      return RBDrawingStateDrawShape();
    }

    v92 = *(a3 + 40);
    v26 = a3[1];
    v84 = a3[2];
    v86 = a3[3];
    v27 = *a3;
    v89 = a3[4];
    v95 = result;
    v28 = *(a4 + 4);
    v29 = *(a4 + 5);
    v30 = v28;
    v31 = v29;
    if (v28 == 1)
    {
      v32 = *(a4 + 2);
      v30 = *(v32 + 48);
      v31 = *(v32 + 56);
      v33 = a4;

      a4 = v33;
    }

    v34 = a4;
    memset(v133, 0, sizeof(v133));
    v134 = 1;
    v100[59] = 0;
    v97 = 0uLL;
    *&v98 = 1;
    BYTE8(v98) = 1;
    *&v99 = 0;
    BYTE8(v99) = 5;
    *v100 = v30;
    *&v100[8] = v31;
    memset(&v100[16], 0, 40);
    v100[56] = 1;
    *&v100[57] = 256;
    v35 = *(*v4 + 80);
    v36 = outlined copy of EnvironmentValues?(v28, v29);
    v35(&v97, v36);
    if (BYTE8(v99) == 1)
    {
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v132 = v37;
    LOBYTE(v111) = 0;
    _ShapeStyle_Pack.subscript.getter(&v111, 0, &v101);

    *&v121 = v27;
    *(&v121 + 1) = v26;
    v122 = v84;
    v123 = v86;
    v124 = v89;
    v125 = v92;
    _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v95, &v121, v34, v133);
    *&v114[16] = *&v104[16];
    v115 = v105;
    v116 = v106;
    *&v117 = v107;
    v111 = v101;
    v112 = v102;
    v113 = v103;
    *v114 = *v104;
    outlined destroy of _ShapeStyle_Pack.Style(&v111);
    v130 = *&v100[16];
    v131[0] = *&v100[32];
    *(v131 + 12) = *&v100[44];
    v126 = v97;
    v127 = v98;
    v128 = v99;
    v129 = *v100;
    return outlined destroy of _ShapeStyle_Shape(&v126);
  }

  else
  {
    v62 = result;
    *&v101 = *a2;
    *(&v101 + 1) = v5;
    LODWORD(v102) = v7;
    v63 = *(a4 + 2);
    v64 = *(v63 + 32);
    if (v15)
    {
      *&v111 = v10;
      *(&v111 + 1) = v11;
      *&v112 = v13;
      *(&v112 + 1) = v12;
      *&v113 = v14;
      v65 = v64;
      RBShape.setStrokedPath(_:style:)(v62, &v111, v66, v67, v68, v69);
    }

    else
    {
      v77 = a4[7];
      v78 = v10;
      v79 = v64;
      RBShape.setPath(_:style:shapeDistance:)(v62, v78 & 0x101, v77);
    }

    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if ((v5 & 0x7FFFFFFF00000000) != 0)
    {
      [*(v63 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v101, v80, v81, v82, v83);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();

    return RBDrawingStateDestroy();
  }
}

double *GraphicsContext.fill(_:with:style:)(double *a1, uint64_t *a2, __int16 a3, double *a4)
{
  v5 = a3 & 0x101;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  return GraphicsContext.draw(_:with:style:)(a1, a2, &v5, a4);
}

double outlined copy of GraphicsContext.Shading.Storage(void *a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  if (a10 > 5u)
  {
    if (a10 > 7u)
    {
      if (a10 != 8)
      {
        if (a10 != 9)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (a10 != 6)
      {
        if (a10 != 7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

LABEL_21:

    return result;
  }

  if (a10 <= 3u)
  {
    if (a10 != 1)
    {
      if (a10 != 3)
      {
        return result;
      }

      v10 = a1;

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a10 == 4)
  {
LABEL_17:

    return result;
  }

  if (a10 == 5)
  {
    v11 = a2 & 1;

    return outlined copy of EitherGradient(a1, v11);
  }

  return result;
}

uint64_t RasterizationOptions.colorSpace.getter()
{
  v1 = *v0;
  if (v1 == -1)
  {
    v2 = v0[2];
    v3 = ((v2 << 25) >> 31) & 9;
    if ((v2 & 0x40) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 1;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 10;
    }

    else
    {
      v5 = 2;
    }

    if (*(v0 + 4) == 1)
    {
      v5 = v4;
    }

    if (!*(v0 + 4))
    {
      return MEMORY[0x1EEE32298](v3);
    }

    v1 = v5;
  }

  return MEMORY[0x1EEE32298](v1);
}

void outlined consume of GraphicsContext.Shading.Storage(void *a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  if (a10 > 5u)
  {
    if (a10 > 7u)
    {
      if (a10 == 8)
      {
LABEL_22:

        return;
      }

      if (a10 != 9)
      {
        return;
      }
    }

    else
    {
      if (a10 == 6)
      {

LABEL_21:

        goto LABEL_22;
      }

      if (a10 != 7)
      {
        return;
      }
    }

    goto LABEL_17;
  }

  if (a10 <= 3u)
  {
    if (a10 != 1)
    {
      if (a10 != 3)
      {
        return;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a10 == 4)
  {
LABEL_17:

    return;
  }

  if (a10 == 5)
  {
    v10 = a2 & 1;

    outlined consume of EitherGradient(a1, v10);
  }
}

void type metadata accessor for EnvironmentFetch<LayoutDirection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for EnvironmentFetch(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void Spacing.reset(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v1;
    v54 = *v1 + 64;
    v4 = 1 << *(*v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(*v1 + 64);
    v53 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = &unk_1ED534000;
    v10 = off_1ED533000;
    v11 = &unk_1ED534000;
    v12 = off_1ED533000;
    v56 = v2;
    v55 = v7;
LABEL_6:
    if (v6)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v53)
      {

        v30 = 0;
        while (2)
        {
          v32 = outlined read-only object #1 of Spacing.reset(_:)[v30 + 32];
          v33 = v32;
          if ((v32 - 9) >= 0xEFu)
          {
            if ((v33 & 0x80000000) != 0)
            {
              LOBYTE(v34) = 0;
            }

            else
            {
              v34 = 1 << v32;
            }

            if ((v34 & ~v56) != 0)
            {
              goto LABEL_60;
            }
          }

          if (outlined read-only object #1 of Spacing.reset(_:)[v30 + 32] > 1u)
          {
            if (v32 == 2)
            {
              v35 = &static Spacing.Category.edgeAboveText;
              if (one-time initialization token for edgeAboveText != -1)
              {
                swift_once();
                v35 = &static Spacing.Category.edgeAboveText;
              }
            }

            else
            {
              v35 = &static Spacing.Category.edgeLeftText;
              if (one-time initialization token for edgeLeftText != -1)
              {
                swift_once();
                v35 = &static Spacing.Category.edgeLeftText;
              }
            }
          }

          else if (outlined read-only object #1 of Spacing.reset(_:)[v30 + 32])
          {
            v35 = &static Spacing.Category.edgeRightText;
            if (one-time initialization token for edgeRightText != -1)
            {
              swift_once();
              v35 = &static Spacing.Category.edgeRightText;
            }
          }

          else
          {
            v35 = &static Spacing.Category.edgeBelowText;
            if (one-time initialization token for edgeBelowText != -1)
            {
              swift_once();
              v35 = &static Spacing.Category.edgeBelowText;
            }
          }

          v36 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *v3;
          v59 = *v3;
          *v3 = 0x8000000000000000;
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v33);
          v41 = *(v38 + 16);
          v42 = (v40 & 1) == 0;
          v43 = __OFADD__(v41, v42);
          v44 = v41 + v42;
          if (v43)
          {
            goto LABEL_89;
          }

          v45 = v40;
          if (*(v38 + 24) >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_81;
            }

            v52 = v39;
            specialized _NativeDictionary.copy()();
            v39 = v52;
            v47 = v59;
            if (v45)
            {
              goto LABEL_58;
            }

LABEL_82:
            v47[(v39 >> 6) + 8] |= 1 << v39;
            v48 = v47[6] + 16 * v39;
            *v48 = v36;
            *(v48 + 8) = v33;
            v49 = v47[7] + 40 * v39;
            *(v49 + 32) = 0;
            *v49 = 0u;
            *(v49 + 16) = 0u;
            v50 = v47[2];
            v43 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v43)
            {
              goto LABEL_90;
            }

            v47[2] = v51;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
            v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v33);
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_91;
            }

LABEL_81:
            v47 = v59;
            if ((v45 & 1) == 0)
            {
              goto LABEL_82;
            }

LABEL_58:
            v31 = v47[7] + 40 * v39;
            *(v31 + 32) = 0;
            *v31 = 0u;
            *(v31 + 16) = 0u;
          }

          *v3 = v47;
LABEL_60:
          if (++v30 == 4)
          {
            return;
          }

          continue;
        }
      }

      v6 = *(v54 + 8 * v15);
      ++v8;
      if (v6)
      {
        v8 = v15;
LABEL_11:
        v16 = 0;
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = *(v55 + 48) + ((v8 << 10) | (16 * v17));
        v19 = *v18;
        v20 = *(v18 + 8);
        while (2)
        {
          v22 = outlined read-only object #0 of Spacing.reset(_:)[v16 + 32];
          if ((v22 - 9) < 0xEFu)
          {
            goto LABEL_22;
          }

          if ((v22 & 0x80) == 0)
          {
            if (v22 <= 7)
            {
              v23 = 1 << v22;
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          if (v22 <= 0xF8)
          {
            goto LABEL_22;
          }

          LOBYTE(v23) = 0;
LABEL_21:
          if ((v23 & ~v2) == 0)
          {
LABEL_22:
            if (v22 == v20)
            {
              if (v20 > 1)
              {
                if (v20 == 2)
                {
                  if (one-time initialization token for edgeAboveText != -1)
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                  }

                  v21 = v11[233];
                  goto LABEL_15;
                }

                if (v20 == 3)
                {
                  if (one-time initialization token for edgeLeftText == -1)
                  {
                    v21 = v12[170];
                  }

                  else
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                    v21 = static Spacing.Category.edgeLeftText;
                  }

                  goto LABEL_15;
                }
              }

              else
              {
                if (v20)
                {
                  if (one-time initialization token for edgeRightText == -1)
                  {
                    v21 = v10[167];
                  }

                  else
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                    v21 = static Spacing.Category.edgeRightText;
                  }
                }

                else if (one-time initialization token for edgeBelowText == -1)
                {
                  v21 = v9[230];
                }

                else
                {
                  swift_once();
                  v12 = off_1ED533000;
                  v11 = &unk_1ED534000;
                  v10 = off_1ED533000;
                  v9 = &unk_1ED534000;
                  v21 = static Spacing.Category.edgeBelowText;
                }

LABEL_15:
                if (v19 == v21)
                {
                  v61 = 0;
                  memset(v60, 0, sizeof(v60));
                  v25 = swift_isUniquelyReferenced_nonNull_native();
                  v57 = *v3;
                  *v3 = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v19, v20, v25);

                  v12 = off_1ED533000;
                  v11 = &unk_1ED534000;
                  v10 = off_1ED533000;
                  v9 = &unk_1ED534000;
                  *v3 = v57;
                  if ((v22 - 9) < 0xEFu)
                  {
                    goto LABEL_6;
                  }

                  if ((v22 & 0x80) != 0)
                  {
                    if (v22 <= 0xF8)
                    {
                      goto LABEL_6;
                    }

                    LOBYTE(v26) = 0;
                  }

                  else
                  {
                    if (v22 > 7)
                    {
                      goto LABEL_6;
                    }

                    v26 = 1 << v22;
                  }

                  if ((v26 & v56) != 0)
                  {
                    v56 &= ~v26;
                  }

                  goto LABEL_6;
                }
              }
            }
          }

          if (++v16 == 4)
          {
            if ((v20 - 9) >= 0xEFu)
            {
              if ((v20 & 0x80) != 0)
              {
                if (v20 > 0xF8)
                {
                  LOBYTE(v24) = 0;
                  goto LABEL_42;
                }
              }

              else if (v20 <= 7)
              {
                v24 = 1 << v20;
LABEL_42:
                if ((v24 & ~v2) != 0)
                {
                  goto LABEL_6;
                }
              }
            }

            v13 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
            v12 = off_1ED533000;
            v11 = &unk_1ED534000;
            v10 = off_1ED533000;
            v9 = &unk_1ED534000;
            if (v14)
            {
              v27 = v13;
              v28 = swift_isUniquelyReferenced_nonNull_native();
              v29 = *v3;
              v58 = *v3;
              *v3 = 0x8000000000000000;
              if (!v28)
              {
                specialized _NativeDictionary.copy()();
                v29 = v58;
              }

              specialized _NativeDictionary._delete(at:)(v27, v29);

              *v3 = v29;
              v9 = &unk_1ED534000;
              v10 = off_1ED533000;
              v11 = &unk_1ED534000;
              v12 = off_1ED533000;
            }

            goto LABEL_6;
          }

          continue;
        }
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = 16 * v6;
      v12 = *(a2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v13);
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v11);
        if (16 * v3 != v11 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 40 * v3;
        v21 = (v19 + 40 * v6);
        if (40 * v3 < (40 * v6) || v20 >= v21 + 40 || v3 != v6)
        {
          v9 = *v21;
          v10 = v21[1];
          *(v20 + 32) = *(v21 + 4);
          *v20 = v9;
          *(v20 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 20 * v3;
        v17 = (v15 + 20 * v6);
        if (20 * v3 < (20 * v6) || v16 >= v17 + 20 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 4);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v11 = v2;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = v7;
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];
      v18 = v8;
      Hasher.init(_seed:)();
      v19 = v14;
      v7 = v13;
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v8 = v18;
      v20 = result & v13;
      if (v3 >= v18)
      {
        if (v20 < v18)
        {
          v4 = v30;
          v2 = v11;
        }

        else
        {
          v4 = v30;
          v2 = v11;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v11;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 16 * v3);
          v23 = (v21 + 16 * v6);
          if (v3 != v6 || v22 >= v23 + 1)
          {
            *v22 = *v23;
          }

          v24 = *(v2 + 56);
          v25 = v24 + 40 * v3;
          v26 = (v24 + 40 * v6);
          if (v3 != v6 || v25 >= v26 + 40)
          {
            v9 = *v26;
            v10 = v26[1];
            *(v25 + 32) = *(v26 + 4);
            *v25 = v9;
            *(v25 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v13;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v12);
      MEMORY[0x193AC11A0](v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = v8;
      v10 = 32 * v6;
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      Hasher.init(_seed:)();
      if (v14 == 1)
      {
        Hasher._combine(_:)(0);
        if (v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x193AC11E0](v17);
        if (v16)
        {
LABEL_7:
          Hasher._combine(_:)(0);
          goto LABEL_16;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x193AC11E0](v18);
LABEL_16:
      result = Hasher._finalize()();
      v19 = result & v7;
      v8 = v9;
      v2 = v11;
      if (v3 >= v9)
      {
        v4 = v30;
        if (v19 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        if (v19 >= v9)
        {
          goto LABEL_21;
        }
      }

      if (v3 >= v19)
      {
LABEL_21:
        v20 = *(v11 + 48);
        v21 = (v20 + 32 * v3);
        v22 = (v20 + v10);
        if (32 * v3 != v10 || v21 >= v22 + 2)
        {
          v23 = v22[1];
          *v21 = *v22;
          v21[1] = v23;
        }

        v24 = *(v11 + 56);
        v25 = (v24 + 8 * v3);
        v26 = (v24 + 8 * v6);
        if (v3 != v6 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      MEMORY[0x193AC11A0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      MEMORY[0x193AC11A0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v17 >= v18 + 1))
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

SwiftUI::Spacing __swiftcall ViewLayoutEngine.spacing()()
{
  v3 = v1;
  v4 = v0[16];
  v5 = *(v2 + v4);
  if (v5 || (v6 = (v2 + v0[10]), v7 = *v6, v8 = *(v6 + 1), v9 = *(v2 + v0[11]), v10 = v0, , v12 = v7, v13 = v8, v14 = 0, v15 = v9, (*(*(v10 + 3) + 48))(&v16, &v12, v2 + v10[9], *(v10 + 2)), , v5 = v16, result.minima._rawValue = , (*(v2 + v4) = v5) != 0))
  {
    *v3 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s7SwiftUI7HVStackPAAE7spacing8subviews5cacheAA11ViewSpacingVAA14LayoutSubviewsV_AA06_StackI5CacheVztFAA07_HStackI0V_Tt0t2g5Tm(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  StackLayout.UnmanagedImplementation.spacing()(a1, &v6);
  v5 = *(a1 + 97);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a1 + 104) = v4;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _StackLayoutCache(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18D20988C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

double keypath_set_3Tm(void *a1)
{

  specialized EnvironmentValues.foregroundColor.setter(v1);

  return result;
}

uint64_t specialized EnvironmentValues.foregroundColor.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = one-time initialization token for foreground;

    if (v4 != -1)
    {
      swift_once();
    }

    if (static Color.foreground == v3 || ((*(*v3 + 88))() & 1) != 0)
    {

      v3 = 0;
    }
  }

  v5 = *v2;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v5, *v2);
  }
}

void lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ForegroundColorProvider, &type metadata for Color.ForegroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ForegroundColorProvider, &type metadata for Color.ForegroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ForegroundColorProvider, &type metadata for Color.ForegroundColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }
}

uint64_t one-time initialization function for foreground()
{
  type metadata accessor for ColorBox<Color.AccentColorProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.ForegroundColorProvider>, lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider, &type metadata for Color.ForegroundColorProvider);
  result = swift_allocObject();
  static Color.foreground = result;
  return result;
}

uint64_t static Font.ModifierProvider.== infix(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (((*(**a1 + 112))(*a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Font.ModifierProvider(0, a3, a4, v6);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Font.system(_:design:weight:)(char *a1, char *a2, uint64_t a3, char a4)
{
  v6 = *a1;
  v7 = *a2;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 17) = v7;
  *(result + 24) = a3;
  *(result + 32) = a4 & 1;
  return result;
}

void _FlexFrameLayout.spacing(in:child:)(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  v22 = *(a2 + 1);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_10:
      if (v22 == *MEMORY[0x1E698D3F8])
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        InputValue = &static LayoutComputer.defaultValue;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v8 = *InputValue;
      v9 = one-time initialization token for lockAssertionsAreEnabled;

      if (v9 != -1)
      {
        swift_once();
      }

      if (!lockAssertionsAreEnabled)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock))
      {
LABEL_21:
        (*(*v8 + 112))();

        return;
      }

      goto LABEL_34;
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_10;
  }

  v23 = v5;
  v24 = v22;
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    goto LABEL_10;
  }

  if (v22 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v10 = AGGraphGetInputValue();
  }

  v11 = *v10;
  v12 = one-time initialization token for lockAssertionsAreEnabled;

  if (v12 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_33:
    (*(*v11 + 112))(&v25);

    KeyPath = swift_getKeyPath();
    v26 = v4;
    v27 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, v14, v15, v16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v17, v18);
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v19, v20);
    LOBYTE(v23) = 0;
    v21 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    LOBYTE(v23) = v21;
    AbsoluteEdge.Set.init(_:layoutDirection:)(&v23, &v26);
    Spacing.reset(_:)(&v26);
    *a3 = v25;
    return;
  }

LABEL_34:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI22AnyDynamicFontModifierCyAA0E0V06WeightF0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for Font.ModifierDefinition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *ChildTransaction.value.getter(unint64_t a1, unint64_t a2)
{
  v2 = *AGGraphGetValue();
  v8 = v2;

  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v3);
  if (v4 && (v4[9] & 1) != 0)
  {
    return v2;
  }

  AGGraphClearUpdate();
  v5 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*AGGraphGetValue() != v5)
  {
    return v2;
  }

  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Animation?, &type metadata for Animation, MEMORY[0x1E69E6720]);
  v6 = *AGGraphGetValue();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v8, v6);

  result = AGGraphGetValue();
  if (*result == v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ValueTransactionSeed.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  Value = AGGraphGetValue();
  (*(v9 + 16))(v15, Value, v4);
  v17 = *(v3 + 40);
  (*(v6 + 16))(v8, v2 + v17, v5);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v18 = *(v6 + 8);
    v18(v8, v5);
    v25 = -1;
    AGGraphSetOutputValue();
    v18((v2 + v17), v5);
    (*(v9 + 32))(v2 + v17, v15, v4);
  }

  else
  {
    v23 = v6;
    v22 = *(v9 + 32);
    v22(v12, v8, v4);
    v19 = *(v3 + 24);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v20 = *(v9 + 8);
      v20(v12, v4);
      v20(v15, v4);
      return;
    }

    AGGraphClearUpdate();
    closure #1 in ValueTransactionSeed.updateValue()(v2, v4, v19, v21, &v25);
    AGGraphSetUpdate();
    v24 = v25;
    AGGraphSetOutputValue();
    (*(v9 + 8))(v12, v4);
    (*(v23 + 8))(v2 + v17, v5);
    v22((v2 + v17), v15, v4);
  }

  (*(v9 + 56))(v2 + v17, 0, 1, v4);
}

void onNextMainRunLoop(do:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDA6EB0;
  v6 = *MEMORY[0x1E695DA28];
  *(v5 + 32) = *MEMORY[0x1E695DA28];
  type metadata accessor for NSRunLoopMode(0);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = _sIg_Ieg_TRTA_0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v4 performInModes:isa block:v10];
  _Block_release(v10);
}

uint64_t sub_18D20AACC()
{

  return swift_deallocObject();
}

uint64_t *assignWithCopy for Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for CountViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BlendModeEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *__swift_memcpy15_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

void EnvironmentValues.contentTransition.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v9);

    v4 = v9;
    v5 = v10 | (v11 << 32);
    v6 = v12;
    v7 = v13;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v8)
    {
      v4 = v8[9];
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v7 = *(v8 + 86);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      v7 = BYTE14(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v4, v5, v6);
  }

  outlined copy of ContentTransition.Storage(v4, v5, v6);
  outlined consume of ContentTransition.Storage(v4, v5, v6);

  *a1 = v4;
  *(a1 + 12) = BYTE4(v5);
  *(a1 + 8) = v5;
  *(a1 + 13) = v6;
  *(a1 + 14) = v7;
}

uint64_t assignWithTake for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 6);
  v6 = *(a2 + 2);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  v9 = *(a1 + 13);
  *(a1 + 12) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

double EnvironmentValues.contentTransition.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v19 = *(a1 + 14);
  v7 = *v1;
  v6 = v1[1];
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v7, &v20);

    v8 = v20;
    v9 = v21 | (v22 << 32);
    v10 = v23;
    v17 = v24;
    v11 = v25;
    v18 = v26;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v7);
    if (v12)
    {
      v8 = v12[9];
      v9 = *(v12 + 20) | (*(v12 + 84) << 32);
      v10 = *(v12 + 85);
      v17 = *(v12 + 87);
      v11 = v12[11];
      v13 = *(v12 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static ContentTransition.State.defaultValue;
      v9 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v10 = BYTE13(static ContentTransition.State.defaultValue);
      v17 = HIBYTE(static ContentTransition.State.defaultValue);
      v11 = off_1ED536620;
      v13 = dword_1ED536628;
    }

    v18 = v13;
    outlined copy of ContentTransition.Storage(v8, v9, v10);
  }

  outlined consume of ContentTransition.Storage(v8, v9, v10);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v3, v4, v5);
  v14 = 0x1000000000000;
  if (!v19)
  {
    v14 = 0;
  }

  v15 = v14 | v4 & 0xFFFFFFFFFFLL | (v5 << 40) | (v17 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v3, v15, v11, v18);

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v7, *v2);
  }

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  return result;
}

double key path setter for EnvironmentValues.contentTransition : EnvironmentValues(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 8);
  v3 = *(a1 + 14);
  v4 = *(a1 + 13);
  v6 = *a1;
  v8 = v1;
  v7 = v2;
  v9 = v4;
  v10 = v3;
  outlined copy of ContentTransition.Storage(v6, v2 | (v1 << 32), v4);
  return EnvironmentValues.contentTransition.setter(&v6);
}

uint64_t initializeBufferWithCopyOfBuffer for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  *a1 = v4;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  *(a1 + 13) = v7;
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

double _FixedSizeLayout.placement(of:in:)@<D0>(unsigned int *a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v29 = *(a1 + 1);
  v30 = a1[3];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v33 = *(a1 + 2);
  v8 = *(a1 + 48);
  v28 = v5;
  v31 = v6;
  v32 = v7;
  v34 = v8;
  PlacementContext.proposedSize.getter(&v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  if (v8)
  {
    InputValue = AGGraphGetInputValue();
    v14 = *InputValue;
    v15 = InputValue[1];
  }

  else
  {
    v14 = v6;
    v15 = v7;
  }

  if ((a2 & 0x100) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  result = v14 * 0.5;
  *a3 = v17;
  *(a3 + 8) = (a2 | v10) & 1;
  *(a3 + 16) = v16;
  *(a3 + 24) = (v12 | ((a2 & 0x100) >> 8)) & 1;
  __asm { FMOV            V2.2D, #0.5 }

  *(a3 + 32) = _Q2;
  *(a3 + 48) = result;
  *(a3 + 56) = v15 * 0.5;
  return result;
}

double protocol witness for UnaryLayout.placement(of:in:) in conformance _FixedSizeLayout@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return _FixedSizeLayout.placement(of:in:)(a1, v3 | *v2, a2);
}

uint64_t _FixedSizeLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a3 + 2);
  v15 = *a3;
  v16 = v8;
  if (a4)
  {
    v4 = 0;
  }

  v9 = a4 | v5;
  if ((a4 & 0x100) != 0)
  {
    v6 = 0;
  }

  v11 = v4;
  v12 = v9 & 1;
  v13 = v6;
  v14 = v7 & 1 | HIBYTE(a4) & 1;
  return LayoutProxy.size(in:)(&v11);
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance _FixedSizeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (v3[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return _FixedSizeLayout.sizeThatFits(in:context:child:)(a1, a2, a3, v4 | *v3);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FixedSizeLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

void lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout()
{
  if (!lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _FixedSizeLayout, &type metadata for _FixedSizeLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _FixedSizeLayout, &type metadata for _FixedSizeLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout);
  }
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>);
    }
  }
}