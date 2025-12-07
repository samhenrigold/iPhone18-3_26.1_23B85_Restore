void specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v5);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

double Canvas.ChildEnvironment.value.getter@<D0>(uint64_t *a1@<X8>)
{
  EnvironmentFetch.environment.getter(a1);
  v2 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, 0, 255);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v2, *a1);
  }

  return result;
}

double EnvironmentFetch.environment.getter@<D0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = v5;
  a2[1] = v4;

  return result;
}

uint64_t Canvas.init(opaque:colorMode:rendersAsynchronously:renderer:symbols:)@<X0>(char a1@<W0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = *a2;
  v16 = type metadata accessor for Canvas(0, a7, a9, a4);
  v17 = v16[10];
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v18 = a8 + v17;
  v19 = static RasterizationOptions.Flags.defaultFlags;
  *v18 = -1;
  *(v18 + 4) = 768;
  *(v18 + 8) = v19;
  *(v18 + 12) = 3;
  *(a8 + v16[11]) = 0;
  v20 = v19 & 0xFFFFFFF8;
  v21 = v19 | 3;
  if ((a1 & 1) == 0)
  {
    v21 = v20 + 1;
  }

  *(v18 + 4) = v15;
  v22 = v21 & 0xFFFFFFFB;
  if (a3)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  *(v18 + 8) = v22 | v23;
  result = a6();
  v25 = (a8 + v16[9]);
  *v25 = a4;
  v25[1] = a5;
  return result;
}

char *RBDrawingLayer.init(options:)(int *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[2];
  LOBYTE(a1) = *(a1 + 12);
  v7 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>(0, v8, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0;
  *(v11 + 64) = 5;
  *(v11 + 72) = 3;
  *&v1[v7] = v11;
  *(v11 + 80) = 0;
  v12 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
  *v12 = v4;
  *(v12 + 2) = v5;
  *(v12 + 2) = v6;
  v12[12] = a1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  v14 = (*(v13 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8) >> 1) & 1;
  v15 = v13;
  [v15 setOpaque_];
  PlatformDrawableOptions.update(rbLayer:)(v15);

  return v15;
}

void type metadata accessor for AtomicBuffer<RBDrawingLayer.State>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<RBDrawingLayer.State>)
  {
    v4 = type metadata accessor for AtomicBuffer(0, &unk_1F004B610, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AtomicBuffer<RBDrawingLayer.State>);
    }
  }
}

id PlatformDrawableOptions.update(rbLayer:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = v1[2];
  v6 = *(v1 + 12);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  LODWORD(v10) = v2;
  BYTE4(v10) = v3;
  BYTE5(v10) = v4;
  LODWORD(v11) = v5;
  BYTE4(v11) = v6;
  [v7 setColorMode_];
  [v7 setRendersAsynchronously_];
  [v7 setMaxDrawableCount_];
  [v7 setAllowsDisplayCompositing_];
  [v7 setAllowsPackedDrawable_];
  [v7 setPromotesFramebuffer_];
  LODWORD(v8) = dword_18DDEDA20[v4];

  return [v7 setDisplayHeadroomLimit_];
}

double protocol witness for ColorProvider.apply(color:to:) in conformance Color.AccentColorProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v6[0] = *(a2 + 48);
  v6[1] = v3;

  v4 = specialized Color.AccentColorProvider.baseColor(in:)(v6);

  Color._apply(to:)(a2, v4);

  return result;
}

double _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = type metadata accessor for _DefaultForegroundStyleModifier(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  MaterialView.ChildEnvironment.environment.getter(&v21);
  _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter(type metadata accessor for _DefaultForegroundStyleModifier, v11);
  v17 = a2;
  v18 = a3;
  v19 = &v21;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter, v16, MEMORY[0x1E69E73E0], &type metadata for AnyShapeStyle, v12, &v20);
  (*(v9 + 8))(v11, v8);
  v14 = v20;
  v13 = v21;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(&v21, v14);

  if (*(&v21 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v13, v21);
  }

  result = *&v21;
  *a5 = v21;
  return result;
}

void closure #1 in _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.value.getter(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v10);

  v8 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v10, v9, 0, a2, a3);

  *a4 = v8;
}

double sub_18D22A434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = type metadata accessor for SubviewsRoot(255, v5, v6, a4);
  v9 = type metadata accessor for _VariadicView.Tree(255, v8, v4, &protocol witness table for SubviewsRoot<A>);
  v11 = type metadata accessor for _ConditionalContent(255, v5, v9, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SubviewsRoot<A>, v8);
  v18[0] = v13;
  v18[1] = v7;
  v14 = swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v9, v18, WitnessTable);
  v17[0] = v6;
  v17[1] = v15;
  return swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v11, v17, v14);
}

uint64_t Group.init<A, B>(elementsOf:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = type metadata accessor for GroupElementsOfContent(0, v13);
  swift_getWitnessTable(protocol conformance descriptor for GroupElementsOfContent<A, B>, v11);
  Group<A>.init(content:)(a8);

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in Group.init<A, B>(elementsOf:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a1;
  v31 = a2;
  v32 = a8;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  v19 = type metadata accessor for GroupElementsOfContent(0, v33);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v29 - v25;
  (*(v12 + 16))(v14, v30, a4, v24);

  GroupElementsOfContent.init(subviews:content:)(v14, v31, a3, a4, a5, a6, v29, v22);
  swift_getWitnessTable(protocol conformance descriptor for GroupElementsOfContent<A, B>, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v20 + 8);
  v27(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return v27(v26, v19);
}

uint64_t GroupElementsOfContent.init(subviews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(a1, a4);
    v21 = v27;
    v20 = v28;
    v31 = v27;
    v32 = v28;
    v22 = v26;
    v29 = v25;
    v30 = v26;
    *a8 = v25;
    a8[1] = v22;
    a8[2] = v21;
    a8[3] = v20;
    *&v25 = a4;
    *(&v25 + 1) = a5;
    *&v26 = a6;
    *(&v26 + 1) = a7;
    type metadata accessor for GroupElementsOfContent.Storage(0, &v25);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    outlined destroy of SubviewsCollection?(&v25);
    (*(v16 + 32))(a8, a1, a4);
    *&v29 = a4;
    *(&v29 + 1) = a5;
    *&v30 = a6;
    *(&v30 + 1) = a7;
    type metadata accessor for GroupElementsOfContent.Storage(0, &v29);
  }

  swift_storeEnumTagMultiPayload();
  *&v29 = a4;
  *(&v29 + 1) = a5;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  result = type metadata accessor for GroupElementsOfContent(0, &v29);
  v24 = (a8 + *(result + 52));
  *v24 = a2;
  v24[1] = a3;
  return result;
}

uint64_t outlined destroy of SubviewsCollection?(uint64_t a1)
{
  type metadata accessor for SubviewsCollection?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for GroupElementsOfContent(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v5 = 64;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
    v11 = 1;
  }

  else
  {
    v12 = *(a2 + 24);
    *(a1 + 24) = v12;
    (**(v12 - 8))(a1, a2);
    v13 = *(a2 + 5);
    v14 = *(a2 + 6);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = *(a2 + 7);
    v15 = v13;

    v11 = 0;
  }

  *(a1 + v5) = v11;
  v16 = (&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  v17 = v16[1];
  v19 = ((v5 + 8 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v18;
  v19[1] = v17;

  return a1;
}

uint64_t GroupElementsOfContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = *(a1 + 40);
  v67 = *(a1 + 16);
  v6 = *(&v67 + 1);
  v7 = v67;
  v63 = type metadata accessor for SubviewsRoot(255, *(&v67 + 1), v5, a2);
  v8 = type metadata accessor for _VariadicView.Tree(0, v63, v67, &protocol witness table for SubviewsRoot<A>);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v53 - v11;
  v59 = v7;
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = *(a1 + 32);
  v69 = v67;
  v61 = v20;
  *&v70 = v20;
  *(&v70 + 1) = v5;
  v64 = v5;
  v21 = type metadata accessor for GroupElementsOfContent.Storage(0, &v69);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v53 - v23);
  v62 = type metadata accessor for _ConditionalContent(0, v6, v8, v25);
  v60 = *(v62 - 8);
  v26 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v53 - v27;
  (*(v22 + 16))(v24, v3, v21, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v57;
    v29 = v59;
    (*(v58 + 32))();
    v30 = (v3 + *(a1 + 52));
    v31 = v30[1];
    *&v69 = *v30;
    *(&v69 + 1) = v31;
    MEMORY[0x1EEE9AC00](v31);
    v32 = v61;
    *&v33 = v61;
    v34 = v64;
    *(&v33 + 1) = v64;
    *(&v53 - 2) = v33;
    *(&v53 - 3) = v67;
    *(&v53 - 2) = v28;

    v35 = v53;
    v36 = v63;
    _VariadicView.Tree.init(_:content:)(&v69, partial apply for closure #1 in GroupElementsOfContent.body.getter, v63, v29, &protocol witness table for SubviewsRoot<A>, v53);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SubviewsRoot<A>, v36);
    v75[0] = v38;
    v75[1] = v32;
    swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v8, v75, WitnessTable);
    v39 = v55;
    static ViewBuilder.buildExpression<A>(_:)();
    v40 = *(v56 + 8);
    v40(v35, v8);
    static ViewBuilder.buildExpression<A>(_:)();
    v40(v39, v8);
    static ViewBuilder.buildEither<A, B>(second:)(v35, v6, v8, v34, v66);
    v40(v35, v8);
    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v41 = v24[1];
    v69 = *v24;
    v70 = v41;
    v42 = v24[3];
    v71 = v24[2];
    v72 = v42;
    (*(v3 + *(a1 + 52)))(&v69);
    outlined destroy of SubviewsCollection(&v69);
    v34 = v64;
    static ViewBuilder.buildExpression<A>(_:)();
    v43 = *(v54 + 8);
    v43(v16, v6);
    static ViewBuilder.buildExpression<A>(_:)();
    v43(v19, v6);
    v36 = v63;
    v44 = swift_getWitnessTable(protocol conformance descriptor for SubviewsRoot<A>, v63);
    v32 = v61;
    v68[0] = v45;
    v68[1] = v61;
    swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v8, v68, v44);
    static ViewBuilder.buildEither<A, B>(first:)(v16, v6, v8, v34, v66);
    v43(v16, v6);
  }

  v46 = swift_getWitnessTable(protocol conformance descriptor for SubviewsRoot<A>, v36);
  v74[0] = v47;
  v74[1] = v32;
  v48 = swift_getWitnessTable(protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v8, v74, v46);
  v73[0] = v34;
  v73[1] = v49;
  v50 = v62;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v62, v73, v48);
  v51 = v66;
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v60 + 8))(v51, v50);
}

uint64_t initializeWithCopy for GroupElementsOfContent.Storage(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v4 = 64;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v13 = *(a2 + 5);
    v14 = *(a2 + 6);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = *(a2 + 7);
    v15 = v13;

    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

uint64_t closure #1 in GroupElementsOfContent.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for _ConditionalContent.Storage(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(*(a3 - 8) + 16))(&v15 - v12, a1, a3, v11);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)(v13, a2, a3, a4, a5);
}

uint64_t static _VariadicView_ViewRoot._makeViewList(root:inputs:body:)(int *a1, __int128 *a2, void (*a3)(__int128 *__return_ptr), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  a3(&v43);
  v10 = a2[1];
  v46 = *a2;
  v47 = v10;
  v11 = a2[2];
  v35 = *MEMORY[0x1E698D3F8];
  v48 = v11;
  v36 = MEMORY[0x1E69E7CD0];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  swift_weakInit();
  v40 = 0;
  v41 = 0;
  v42 = -1;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = 0;
  v34 = 0;
  outlined init with copy of _GraphInputs(&v46, &v27);
  v12 = _ViewListOutputs.makeAttribute(inputs:)(&v30);
  outlined destroy of _ViewListInputs(&v30);
  outlined destroy of _ViewListOutputs(&v43);
  static DynamicPropertyCache.fields(of:)(a5, &v30);
  v13 = v30;
  v14 = v31;
  v15 = DWORD1(v31);
  outlined init with copy of _ViewListInputs(a2, &v30);
  v23 = v15;
  v24 = v9;
  v25 = v9;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(&v26, &v27, &v25, v12, &v30, &v43, a5, a6);
  v16 = v26;
  v17 = v28;
  v22 = v27;
  v18 = v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v43) = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v43, &v30, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v18 & 1) == 0)
  {
    v27 = v22;
    v28 = v17;
    v26 = v24;
    v43 = v13;
    v44 = v14;
    v45 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v26, &v43, a5);
  }

  outlined destroy of _ViewListInputs(&v30);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v13, *(&v13 + 1), v14);
}

uint64_t SubviewsRoot.body(children:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  outlined init with copy of _VariadicView_Children(v12, v15);
  a2(v15);
  outlined destroy of SubviewsCollection(v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t static Subview._makeViewList(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v5);
  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MergeTraits and conformance MergeTraits();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA7SubviewV_Tt2B5(v5, x8_0);
  return outlined destroy of _ViewListInputs(v5);
}

void lazy protocol witness table accessor for type MergeTraits and conformance MergeTraits()
{
  if (!lazy protocol witness table cache variable for type MergeTraits and conformance MergeTraits)
  {
    swift_getWitnessTable(protocol conformance descriptor for MergeTraits, &unk_1F00C0820, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MergeTraits and conformance MergeTraits);
  }
}

void MergeTraits.value.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v13 = v3;
  Value = AGGraphGetValue();
  v5 = *(*Value + 16);
  if (v5)
  {
    v6 = *Value + 32;

    do
    {
      outlined init with copy of AnyTrackedValue(v6, v10);
      v7 = v11;
      v8 = v12;
      v9 = __swift_project_boxed_opaque_existential_1(v10, v11);
      ViewTraitCollection.setErasedValue<A>(trait:)(v9, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      --v5;
    }

    while (v5);

    v3 = v13;
  }

  *a2 = v3;
}

uint64_t ViewTraitCollection.setErasedValue<A>(trait:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v36 = v3;
  v37 = &v33 - v8;
  v9 = 0;
  v10 = 0;
  v11 = *v3;
  v12 = (*v3 + 32);
  v13 = *(*v3 + 16);
  v15 = (v14 + 8);
  while (v13 != v10)
  {
    if (v10 >= v11[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v10;
    outlined init with copy of AnyTrackedValue(v12 + v9 * 8, v40);
    v16 = v11;
    v17 = v41;
    v18 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v19 = (*(v18 + 8))(v17, v18);
    v20 = (*(a3 + 8))(v39, a3);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v9 += 5;
    v21 = v19 == v20;
    v11 = v16;
    if (v21)
    {
      v22 = MEMORY[0x1E69E7CA0];
      (*(a3 + 16))(v40, MEMORY[0x1E69E7CA0] + 8, v39, a3);
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v36;
      *v36 = v16;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        v11 = result;
        *v24 = result;
      }

      if (v10 - 1 >= v11[2])
      {
        __break(1u);
      }

      else
      {
        v25 = v11[v9 + 2];
        v26 = v11[v9 + 3];
        __swift_mutable_project_boxed_opaque_existential_1(&v11[v9 - 1], v25);
        result = (*(v26 + 24))(v40, v22 + 8, v25, v26);
        *v24 = v11;
      }

      return result;
    }
  }

  v10 = v35;
  v12 = *(v35 + 16);
  v12(v37, v38, v39, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v36;
  *v36 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

LABEL_15:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  *v15 = v11;
LABEL_11:
  v29 = v11[2];
  v28 = v11[3];
  if (v29 >= v28 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
    *v15 = v11;
  }

  v30 = v34;
  v31 = v37;
  v32 = v39;
  (v12)(v34, v37, v39);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v30, v15, v32, a3);
  result = (*(v10 + 8))(v31, v32);
  *v15 = v11;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyViewTrait>, &lazy cache variable for type metadata for AnyViewTrait, &protocol descriptor for AnyViewTrait);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_SublistTransform_Item>, &lazy cache variable for type metadata for _ViewList_SublistTransform_Item, &protocol descriptor for _ViewList_SublistTransform_Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, CGColorRef>.Item>, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, CGColorRef>.Item, type metadata accessor for CGColorRef);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphMutation>, &lazy cache variable for type metadata for GraphMutation, &protocol descriptor for GraphMutation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.Resolved, NSObject>.Item>, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item, type metadata accessor for NSObject);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectCache<Locale.Key, String>.Item>, type metadata accessor for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache<Locale.Key, String>.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<MaterialBackdropProxy.Observer>, &type metadata for MaterialBackdropProxy.Observer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry>, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *static Subview._makeView(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v44[2] = *(a2 + 32);
  v44[3] = v5;
  v44[4] = *(a2 + 64);
  v45 = *(a2 + 80);
  v6 = *(a2 + 16);
  v44[0] = *a2;
  v44[1] = v6;
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v8;
  v36 = *(a2 + 64);
  v37 = *(a2 + 80);
  v9 = *(a2 + 16);
  v32 = *a2;
  v33 = v9;
  v10 = v34;
  LODWORD(v34) = 0;
  v38 = v32;
  v39 = v9;
  v43 = v37;
  v41 = v8;
  v42 = v36;
  v40 = v34;
  outlined init with copy of _ViewInputs(v44, v30);
  outlined init with copy of _ViewInputs(&v38, v30);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v24 = v40;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  v12 = v40;
  LODWORD(v24) = 0;
  LODWORD(v14[0]) = OffsetAttribute2;
  v28[0] = v38;
  v28[1] = v39;
  v29 = v43;
  v28[3] = v41;
  v28[4] = v42;
  v28[2] = v24;
  v18 = v24;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v16 = v38;
  v17 = v39;
  outlined init with copy of _ViewInputs(&v38, v30);
  outlined init with copy of _ViewInputs(v28, v30);
  static _ViewList_View._makeView(view:inputs:)(v14, &v16, a3);
  v30[2] = v18;
  v30[3] = v19;
  v30[4] = v20;
  v31 = v21;
  v30[0] = v16;
  v30[1] = v17;
  outlined destroy of _ViewInputs(v30);
  LODWORD(v24) = v12;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v22);
    AGSubgraphEndTreeElement();
    outlined destroy of _ViewInputs(&v38);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    outlined destroy of _ViewInputs(&v16);
    LODWORD(v34) = v10;
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v32);
    AGSubgraphEndTreeElement();
  }

  else
  {
    outlined destroy of _ViewInputs(&v38);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    outlined destroy of _ViewInputs(&v16);
    LODWORD(v34) = v10;
  }

  v14[2] = v34;
  v14[3] = v35;
  v14[4] = v36;
  v15 = v37;
  v14[0] = v32;
  v14[1] = v33;
  return outlined destroy of _ViewInputs(v14);
}

void type metadata accessor for SubviewsCollection?()
{
  if (!lazy cache variable for type metadata for SubviewsCollection?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubviewsCollection?);
    }
  }
}

double destroy for GroupElementsOfContent(id *a1, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a2 + 16) - 8) + 64);
  }

  v4 = *(a1 + v3);
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a1;
  }

  else if (v6 == 2)
  {
    v7 = *a1;
  }

  else if (v6 == 3)
  {
    v7 = *a1 | (*(a1 + 2) << 16);
  }

  else
  {
    v7 = *a1;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t ViewTraitCollection.AnyTrait.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3, AssociatedTypeWitness);

  return swift_dynamicCast();
}

__n128 AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *(a2 + 8);
  v13 = *a3;
  v29 = a3[1];
  v30 = *a2;
  v14 = *(a3 + 16);
  v32 = *a5;
  v31 = *(a5 + 8);
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 64) = 0;
  v15 = a7 + 64;
  *(a7 + 88) = 1;
  *(a7 + 96) = 0;
  *(a7 + 104) = 0;
  *(a7 + 112) = 0;
  *(a7 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v34);
  v16 = v34[7];
  *(a7 + 224) = v34[6];
  *(a7 + 240) = v16;
  *(a7 + 256) = v34[8];
  *(a7 + 272) = v35;
  v17 = v34[3];
  *(a7 + 160) = v34[2];
  *(a7 + 176) = v17;
  v18 = v34[5];
  *(a7 + 192) = v34[4];
  *(a7 + 208) = v18;
  v19 = v34[1];
  *(a7 + 128) = v34[0];
  *(a7 + 144) = v19;

  *a7 = v9;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;

  *(a7 + 24) = v30;
  *(a7 + 32) = v12;
  *(a7 + 40) = v13;
  *(a7 + 48) = v29;
  *(a7 + 56) = v14;
  outlined assign with take of AccessibilityValueStorage?(a4, v15);
  *(a7 + 112) = v32;
  *(a7 + 120) = v31;
  v20 = *(a7 + 240);
  v36[6] = *(a7 + 224);
  v36[7] = v20;
  v36[8] = *(a7 + 256);
  v37 = *(a7 + 272);
  v21 = *(a7 + 176);
  v36[2] = *(a7 + 160);
  v36[3] = v21;
  v22 = *(a7 + 208);
  v36[4] = *(a7 + 192);
  v36[5] = v22;
  v23 = *(a7 + 144);
  v36[0] = *(a7 + 128);
  v36[1] = v23;
  _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(v36, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
  v24 = *(a6 + 112);
  *(a7 + 224) = *(a6 + 96);
  *(a7 + 240) = v24;
  *(a7 + 256) = *(a6 + 128);
  *(a7 + 272) = *(a6 + 144);
  v25 = *(a6 + 48);
  *(a7 + 160) = *(a6 + 32);
  *(a7 + 176) = v25;
  v26 = *(a6 + 80);
  *(a7 + 192) = *(a6 + 64);
  *(a7 + 208) = v26;
  result = *a6;
  v28 = *(a6 + 16);
  *(a7 + 128) = *a6;
  *(a7 + 144) = v28;
  *(a7 + 280) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ContainerValues.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for ContainerValueViewTraitKey(0, a1, a2, a3);
  swift_getWitnessTable(protocol conformance descriptor for ContainerValueViewTraitKey<A>, v5);
  return ViewTraitCollection.subscript.getter(v5, v6, a4);
}

uint64_t specialized ContainerValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  (*(v11 + 16))(&v16 - v9, a1, v8);
  v13 = type metadata accessor for ContainerValueViewTraitKey(0, a3, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for ContainerValueViewTraitKey<A>, v13);
  return ViewTraitCollection.subscript.setter(v10, v13, v13, v14);
}

uint64_t SubviewsCollection.endIndex.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4;
}

void type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v5 = v4;
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v9[0] = v3;
    v9[1] = &type metadata for Subview.ID;
    v9[2] = &type metadata for Subview;
    v9[3] = v5;
    v9[4] = v6;
    v7 = type metadata accessor for ForEach(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    }
  }
}

void lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>()
{
  if (!lazy protocol witness table cache variable for type Slice<SubviewsCollection> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v3 = v2;
    lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E74F0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type Slice<SubviewsCollection> and conformance <> Slice<A>);
  }
}

double destroy for SubviewsCollectionSlice(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 16));

  return result;
}

uint64_t type metadata completion function for EnumeratedViews(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for MappedViews(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation()
{
  if (!lazy protocol witness table cache variable for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewListInputs.ContentOffsetMutation, &unk_1F00644E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation);
  }
}

uint64_t initializeWithCopy for MappedViews.MappedList.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;

  return a1;
}

uint64_t LayoutSubview.dimensions(in:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 2);
  v12 = *v5;
  v13 = v6;
  v8 = a1;
  v9 = a2 & 1;
  v10 = a3;
  v11 = a4 & 1;
  return LayoutProxy.dimensions(in:)(&v8, a5);
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v5, v10);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(v2, v8);

  return result;
}

uint64_t sub_18D22CE48()
{

  return swift_deallocObject();
}

double MappedViews.ElementView.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v57 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v63 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - v19;
  v20 = *(*(a1 + 24) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v57 - v25;
  v26 = v2[1];
  v27 = *(v2 + 6);
  v71 = *(a1 + 16);
  v72 = v28;
  v67 = v28;
  v73 = *(a1 + 32);
  v74 = *v2;
  v75 = v26;
  v76 = v2[2];
  v77 = v27;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v29 = static ObservationCenter._current;
  swift_beginAccess();
  v30 = pthread_getspecific(v29[2]);
  if (!v30)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(v29[2], v31);
    v79 = type metadata accessor for ObservationCenter();
    *&v78 = v29[3];
    outlined init with take of Any(&v78, v31);

    v30 = v31;
  }

  outlined init with copy of Any(v30, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v69;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
    *(v32 + 24) = v29;
    goto LABEL_9;
  }

  v59 = CurrentAttribute;
  v61 = a2;
  swift_beginAccess();
  v60 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v34 = (*(v6 + 56))(v17, 1, 1, v5);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v67;
  *(&v57 - 4) = v67;
  *(&v57 - 3) = partial apply for closure #1 in MappedViews.ElementView.value.getter;
  *(&v57 - 2) = &v70;
  v36 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v57 - 6), v62, v36, v35, MEMORY[0x1E69E7288], &v69);
  v62 = v8;
  v20 = *(v20 + 32);
  (v20)(v68, v23, v35);
  v37 = v17;
  v38 = v66;
  outlined init with take of ObservationTracking._AccessList?(v37, v66);
  v39 = v63;
  outlined init with copy of ObservationTracking._AccessList?(v38, v63);
  if ((*(v6 + 48))(v39, 1, v5) == 1)
  {
    v40 = v35;
    v41 = v39;
    v8 = v5;
    outlined destroy of ObservationTracking._AccessList?(v38);
    v42 = v41;
    a2 = v61;
    goto LABEL_12;
  }

  v43 = v65;
  v63 = *(v6 + 32);
  (v63)(v65, v39, v5);
  v8 = v5;
  (*(v6 + 16))(v64, v43, v5);
  v29 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v29;
  a2 = v61;
  v58 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v46 = v29[2];
  v45 = v29[3];
  if (v46 >= v45 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v29);
  }

  v29[2] = v46 + 1;
  v47 = v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46;
  v6 = v58;
  (v63)(v47, v64, v8);
  *(v32 + 24) = v29;
  (*(v6 + 8))(v65, v8);
  v40 = v67;
  v42 = v66;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  (v20)(a2, v68, v40);
  v48 = *(v32 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v51 = *(v6 + 16);
    v50 = v6 + 16;
    v68 = v51;
    v52 = v48 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v67 = v48;

    v54 = v59;
    v55 = v62;
    do
    {
      (v68)(v55, v52, v8);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v54, v55);
      (*(v50 - 8))(v55, v8);
      v52 += v53;
      --v49;
    }

    while (v49);
  }

  *(v32 + 24) = v60;

  return result;
}

void lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for PartialRangeUpTo<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Range<Int>();
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_1(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for PartialRangeThrough<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_2(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_3(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_4(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for RangeSet<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_5(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for AnchorValueBox<UnitRect>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_6(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSnySiGMaTm_4(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_7(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_8(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v5 = v4;
    lazy protocol witness table accessor for type Int and conformance Int();
    v8[0] = MEMORY[0x1E69E6570];
    v8[1] = v6;
    swift_getWitnessTable(a2, v5, v8);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type Int and conformance Int()
{
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    swift_getWitnessTable(MEMORY[0x1E69E6558], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Int and conformance Int);
  }
}

{
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    swift_getWitnessTable(MEMORY[0x1E69E6578], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Int and conformance Int);
  }
}

{
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    swift_getWitnessTable(MEMORY[0x1E69E6588], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Int and conformance Int);
  }
}

double get_witness_table_5ValueQyd__Rsz7SwiftUI20KeyframeTrackContentRd__AcDRd_0_AAQyd_0_ABRSr_0_lAC06MergeddeF0Vyxqd__qd_0_GAcDHPyHCTm(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), const char *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = v4;
  v6 = a2(255, v8);
  return swift_getWitnessTable(a3, v6);
}

double closure #1 in DynamicTextView.TextManager.resolve(in:for:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

double static _Glass.regular.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDCAA00;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _UNKNOWN **a16)
{
  v31 = a9;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v24[0] = a14;
  v24[1] = a10;
  v32 = a8;
  v33 = a12;
  v34 = a11;
  v35 = a16;
  v36 = a15;
  v18 = type metadata accessor for KeyframeAnimator(255, &v32);
  v32 = a7;
  v33 = v18;
  v34 = a13;
  v35 = &protocol witness table for KeyframeAnimator<A, B, C>;
  v19 = type metadata accessor for CustomModifier(0, &v32);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v24 - v21;
  closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(v25, v26, v27, v28, v29, v30, a7, a8, v24 - v21, a10, a11, a12, a13, a14, a15, a16);
  View.modifier<A>(_:)();
  return (*(v20 + 8))(v22, v19);
}

uint64_t closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v65 = a7;
  v71 = a5;
  v72 = a6;
  v69 = a3;
  v70 = a4;
  v63 = a2;
  v61 = a1;
  v73 = a9;
  v68 = a14;
  v58 = a16;
  v17 = *(a10 - 8);
  v64 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v19;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v24;
  v75[0] = v25;
  v75[1] = a12;
  v75[2] = a11;
  v75[3] = v26;
  v75[4] = a15;
  v27 = type metadata accessor for KeyframeAnimator(0, v75);
  v28 = *(v27 - 8);
  v66 = v27;
  v67 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v60 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v62 = &v55 - v32;
  v33 = *(v21 + 16);
  v34 = a8;
  v74 = a8;
  v33(v24, v61, a8, v31);
  v35 = *(v17 + 16);
  v55 = a10;
  v35(v19, v63, a10);
  v36 = swift_allocObject();
  v37 = v65;
  v36[2] = v65;
  v36[3] = v34;
  v36[4] = a10;
  v36[5] = a11;
  v56 = a12;
  v38 = v64;
  v36[6] = a12;
  v36[7] = v38;
  v39 = v68;
  v36[8] = v68;
  v36[9] = a15;
  v40 = v58;
  v41 = v69;
  v42 = v70;
  v36[10] = v58;
  v36[11] = v41;
  v36[12] = v42;
  v43 = swift_allocObject();
  v44 = v74;
  v43[2] = v37;
  v43[3] = v44;
  v45 = v55;
  v43[4] = v55;
  v43[5] = a11;
  v43[6] = a12;
  v43[7] = v38;
  v43[8] = v39;
  v43[9] = a15;
  v46 = v39;
  v47 = v71;
  v48 = v72;
  v43[10] = v40;
  v43[11] = v47;
  v43[12] = v48;

  v49 = v60;
  KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)(v59, v57, partial apply for closure #1 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:), v36, partial apply for closure #2 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:), v43, v74, v56, v60, a11, v45, v40, a15, v46);
  v50 = v62;
  v51 = v49;
  v52 = v66;
  static ViewBuilder.buildExpression<A>(_:)();
  v53 = *(v67 + 8);
  v53(v51, v52);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v53)(v50, v52);
}

uint64_t sub_18D22E224()
{

  return swift_deallocObject();
}

uint64_t KeyframeAnimator.init<A>(initialValue:trigger:content:keyframes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = a8;
  v30 = a1;
  v31 = a5;
  v32 = a6;
  v33 = a3;
  v34 = a4;
  v35 = a14;
  v17 = *(a11 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9, v18);
  v36[0] = a7;
  v36[1] = v29;
  v36[2] = a10;
  v36[3] = a12;
  v36[4] = a13;
  v23 = type metadata accessor for KeyframeAnimator(0, v36);
  v24 = (a9 + v23[15]);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = (a9 + v23[17]);
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  (*(v17 + 16))(v20, a2, a11);
  AnyEquatable.init<A>(_:)(v20, a11, v36);
  (*(v17 + 8))(a2, a11);
  result = (*(v22 + 8))(v30, a7);
  *(a9 + v23[16]) = v36[0];
  return result;
}

uint64_t initializeWithCopy for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 += 23;
  v12 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  outlined copy of _SymbolEffect.Trigger(v11);
  *v10 = v11;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  v13[1] = v14;

  return a1;
}

double outlined copy of _SymbolEffect.Trigger(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

double destroy for KeyframeAnimator(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  outlined consume of _SymbolEffect.Trigger(*((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return result;
}

double outlined consume of _SymbolEffect.Trigger(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomModifier<A, B>(unsigned int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

{
  return static MultiViewModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, &protocol witness table for CustomModifier<A, B>);
}

void *static CustomModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v60 = *(a2 + 32);
  v61 = v15;
  v17 = *(a2 + 48);
  v62 = *(a2 + 64);
  v18 = *(a2 + 16);
  v59[0] = *a2;
  v59[1] = v18;
  v55 = v60;
  v56 = v17;
  v57 = *(a2 + 64);
  v19 = *a1;
  v63 = *(a2 + 80);
  v58 = *(a2 + 80);
  v53 = v59[0];
  v54 = v16;
  v20 = type metadata accessor for PlaceholderContentView(0, a5, a3, a4);
  outlined init with copy of _ViewInputs(v59, &v64);
  _ViewInputs.pushModifierBody<A>(_:body:)(v20, a3, a4, v20);
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v30[1] = v19;
  *&v64 = a5;
  *(&v64 + 1) = a6;
  *&v65 = a7;
  *(&v65 + 1) = a8;
  v21 = type metadata accessor for CustomModifier(255, &v64);
  type metadata accessor for _GraphValue(0, v21, v22, v23);
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v30);
  v24 = v30[0];
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v64 = v53;
  v65 = v54;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v45 = v66;
  v46 = v67;
  v47 = v68;
  v48 = v69;
  v43 = v64;
  v44 = v65;
  v26 = v66;
  LODWORD(v45) = 0;
  LODWORD(v35[0]) = v24;
  v49[0] = v64;
  v49[1] = v65;
  v50 = v69;
  v49[3] = v67;
  v49[4] = v68;
  v49[2] = v45;
  v39 = v45;
  v40 = v67;
  v41 = v68;
  v42 = v69;
  v37 = v64;
  v38 = v65;
  v27 = *(a8 + 24);
  outlined init with copy of _ViewInputs(&v64, v51);
  outlined init with copy of _ViewInputs(v49, v51);
  v27(v35, &v37, a6, a8);
  v51[2] = v39;
  v51[3] = v40;
  v51[4] = v41;
  v52 = v42;
  v51[0] = v37;
  v51[1] = v38;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v45) = v26;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v43);
    AGSubgraphEndTreeElement();
  }

  v35[2] = v55;
  v35[3] = v56;
  v35[4] = v57;
  v36 = v58;
  v35[0] = v53;
  v35[1] = v54;
  outlined destroy of _ViewInputs(v35);
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  return outlined destroy of _ViewInputs(&v37);
}

{
  v70 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v60 = *(a2 + 32);
  v61 = v15;
  v17 = *(a2 + 48);
  v62 = *(a2 + 64);
  v18 = *(a2 + 16);
  v59[0] = *a2;
  v59[1] = v18;
  v55 = v60;
  v56 = v17;
  v57 = *(a2 + 64);
  v19 = *a1;
  v63 = *(a2 + 80);
  v58 = *(a2 + 80);
  v53 = v59[0];
  v54 = v16;
  v20 = type metadata accessor for PlaceholderContentView(0, a5, a3, a4);
  outlined init with copy of _ViewInputs(v59, &v64);
  _ViewInputs.pushModifierBody<A>(_:body:)(v20, a3, a4, v20);
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v30[1] = v19;
  *&v64 = a5;
  *(&v64 + 1) = a6;
  *&v65 = a7;
  *(&v65 + 1) = a8;
  v21 = type metadata accessor for CustomModifier(255, &v64);
  type metadata accessor for _GraphValue(0, v21, v22, v23);
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v30);
  v24 = v30[0];
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v64 = v53;
  v65 = v54;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v45 = v66;
  v46 = v67;
  v47 = v68;
  v48 = v69;
  v43 = v64;
  v44 = v65;
  v26 = v66;
  LODWORD(v45) = 0;
  LODWORD(v35[0]) = v24;
  v49[0] = v64;
  v49[1] = v65;
  v50 = v69;
  v49[3] = v67;
  v49[4] = v68;
  v49[2] = v45;
  v39 = v45;
  v40 = v67;
  v41 = v68;
  v42 = v69;
  v37 = v64;
  v38 = v65;
  v27 = *(a8 + 24);
  outlined init with copy of _ViewInputs(&v64, v51);
  outlined init with copy of _ViewInputs(v49, v51);
  v27(v35, &v37, a6, a8);
  v51[2] = v39;
  v51[3] = v40;
  v51[4] = v41;
  v52 = v42;
  v51[0] = v37;
  v51[1] = v38;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v45) = v26;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v43);
    AGSubgraphEndTreeElement();
  }

  v35[2] = v55;
  v35[3] = v56;
  v35[4] = v57;
  v36 = v58;
  v35[0] = v53;
  v35[1] = v54;
  outlined destroy of _ViewInputs(v35);
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  return outlined destroy of _ViewInputs(&v37);
}

uint64_t closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for CustomModifier(0, v11);
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

void *static KeyframeAnimator._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a8;
  v70 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v43 = type metadata accessor for KeyframeTrackState(0, a3, a4, a6);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v37 - v15;
  *&v64 = a3;
  *(&v64 + 1) = v14;
  v38 = a3;
  v39 = v14;
  *&v65 = a5;
  *(&v65 + 1) = a6;
  *&v66 = a7;
  v40 = type metadata accessor for AnimatorAttribute(0, &v64);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v37 - v16;
  LODWORD(a1) = *a1;
  v18 = a2[3];
  v66 = a2[2];
  v67 = v18;
  v68 = a2[4];
  v69 = *(a2 + 20);
  v19 = a2[1];
  v64 = *a2;
  v65 = v19;
  v20 = a3;
  v21 = a5;
  closure #1 in static KeyframeAnimator._makeView(view:inputs:)(1, v20, v14, a5, a6, a7);
  LODWORD(a2) = AGGraphCreateOffsetAttribute2();
  v22 = DWORD2(v64);
  LODWORD(v14) = DWORD2(v65);
  v23 = v41;
  swift_storeEnumTagMultiPayload();
  v43 = a7;
  v24 = v14;
  v25 = v40;
  AnimatorAttribute.init(view:playback:phase:time:resetSeed:currentState:)(a1, a2, v24, v22, 0, v23, v38, v39, v17, v21, a6, a7);
  v47[2] = v21;
  v47[3] = v25;
  swift_getWitnessTable(protocol conformance descriptor for AnimatorAttribute<A, B, C>, v25);
  v47[4] = v26;
  v27 = type metadata accessor for Attribute();
  v41 = v17;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v47, v25, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  v29 = LODWORD(v62[0]);
  AGGraphSetFlags();
  _GraphValue.init(_:)(v29, v46);
  v30 = v46[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v54 = v64;
  v55 = v65;
  v32 = v66;
  LODWORD(v56) = 0;
  v45 = v30;
  v60[0] = v64;
  v60[1] = v65;
  v61 = v69;
  v60[3] = v67;
  v60[4] = v68;
  v60[2] = v56;
  v50 = v56;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v48 = v64;
  v49 = v65;
  v33 = v43;
  v34 = *(v43 + 24);
  outlined init with copy of _ViewInputs(&v64, v62);
  outlined init with copy of _ViewInputs(v60, v62);
  v35 = v44;
  v34(&v45, &v48, v21, v33);
  v62[2] = v50;
  v62[3] = v51;
  v62[4] = v52;
  v63 = v53;
  v62[0] = v48;
  v62[1] = v49;
  outlined destroy of _ViewInputs(v62);
  LODWORD(v56) = v32;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v35, &v54);
    AGSubgraphEndTreeElement();
  }

  (*(v42 + 8))(v41, v25);
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v48 = v54;
  v49 = v55;
  return outlined destroy of _ViewInputs(&v48);
}

uint64_t type metadata completion function for KeyframeTrackState(uint64_t *a1)
{
  result = type metadata accessor for KeyframeTrackState.RepeatingState(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrackState.RepeatingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for KeyframeTimeline(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTimeline(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AnimatorAttribute(uint64_t *a1)
{
  result = type metadata accessor for KeyframeTrackState(319, a1[2], a1[3], a1[5]);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in static KeyframeAnimator._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v7 = type metadata accessor for KeyframeAnimator(0, v13);
  v8 = *(v7 + 64);
  v12[2] = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, &unk_1F00569F0, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t AnimatorAttribute.init(view:playback:phase:time:resetSeed:currentState:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v19[0] = a7;
  v19[1] = a8;
  v19[2] = a10;
  v19[3] = a11;
  v19[4] = a12;
  v16 = *(type metadata accessor for AnimatorAttribute(0, v19) + 76);
  v17 = type metadata accessor for KeyframeTrackState(0, a7, a8, a11);
  return (*(*(v17 - 8) + 32))(&a9[v16], a6, v17);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatorAttribute<A, B, C>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnimatorAttribute<A, B, C>, a1);

  return static AsyncAttribute.flags.getter();
}

_DWORD *initializeWithCopy for AnimatorAttribute(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = v14 + 11;
  v16 = v11 + v14 + 11;
  v17 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 & v17);
  v19 = ((v12 + v15) & v17);
  v20 = *(v13 + 64) + 7;
  if ((((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v21 = 16;
  }

  else
  {
    v21 = (((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v22 = *(v19 + v21);
  if (v22 >= 2 && v21 != 0)
  {
    v22 = *v19 + 2;
  }

  if (v22 == 1)
  {
    v24 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
    (*(v13 + 16))(v18, v19);
    *((v18 + v20) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v20) & 0xFFFFFFFFFFFFFFF8);
    v25 = v18 + v24;
    v26 = *(v19 + v24);
    *(v25 + 2) = *(v19 + v24 + 16);
    *v25 = v26;
    *(v18 + v21) = 1;
  }

  else if (v22)
  {
    memcpy(v18, v19, v21 | 1);
  }

  else
  {
    *v18 = *v19;
    v18[1] = *(((v12 + v15) & v17) + 8);
    *(v18 + v21) = 0;
  }

  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C)(void *a1)
{
  return (*(v1 + 32))(*a1);
}

{
  return (*(v1 + 24))(*a1);
}

void lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID()
{
  if (!lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ForEachConstantID, &type metadata for ForEachConstantID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID);
  }
}

{
  if (!lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ForEachConstantID, &type metadata for ForEachConstantID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ForEachConstantID and conformance ForEachConstantID);
  }
}

void type metadata accessor for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for TagValueTraitKey<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TagValueTraitKey);
    v3 = v2;
    lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>();
    v6 = type metadata accessor for ViewTraitCollection.AnyTrait(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>);
    }
  }
}

void lazy protocol witness table accessor for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>()
{
  if (!lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>)
  {
    _sSnySiGMaTm_6(255, &lazy cache variable for type metadata for TagValueTraitKey<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TagValueTraitKey);
    swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TagValueTraitKey<Int> and conformance TagValueTraitKey<A>);
  }
}

uint64_t assignWithCopy for KeyframeAnimator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  outlined copy of _SymbolEffect.Trigger(v12);
  v13 = *v10;
  *v10 = v12;
  outlined consume of _SymbolEffect.Trigger(v13);
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  v14[1] = v15;

  return a1;
}

uint64_t static ConditionallyArchivableView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v49 = a2[2];
  v50 = v8;
  v51 = a2[4];
  v52 = *(a2 + 20);
  v9 = a2[1];
  v47 = *a2;
  v48 = v9;
  static DynamicPropertyCache.fields(of:)(a3, &v59);
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v41 = v47;
  v42 = v48;
  v24 = v7;
  v25 = v60;
  LODWORD(v30) = v7;
  v26 = *(&v59 + 1);
  v27 = v59;
  v53 = v59;
  LOBYTE(v54) = v60;
  v23 = DWORD1(v60);
  DWORD1(v54) = DWORD1(v60);
  outlined init with copy of _ViewInputs(&v47, &v59);
  static ConditionallyArchivableView.makeBody(view:inputs:fields:)(&v35, &v59, &v30, &v41, &v53, a3, a4);
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v53 = v41;
  v54 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v22 = v59;
  v10 = v60;
  LODWORD(v34) = v35;
  BYTE4(v34) = BYTE4(v35);
  v58 = v46;
  v40 = v46;
  v35 = v41;
  v36 = v42;
  outlined init with copy of _ViewInputs(&v53, &v59);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for ConditionalGraphValue(0, AssociatedTypeWitness, v12, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeView(inputs:)(&v35, v14, AssociatedConformanceWitness, v16, &v30);
  v61 = v37;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  v59 = v35;
  v60 = v36;
  outlined destroy of _ViewInputs(&v59);
  v17 = v30;
  v18 = v31;
  if (v10)
  {
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    outlined destroy of _ViewInputs(&v35);
    v20 = v26;
    v19 = v27;
  }

  else
  {
    v34 = v22;
    v29 = v24;
    v30 = v27;
    v31 = v26;
    v32 = v25;
    v33 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v29, &v30, a3);
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v35 = v41;
    v36 = v42;
    outlined destroy of _ViewInputs(&v35);
    v19 = v27;
    v20 = v26;
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v19, v20, v25);
  *a5 = v17;
  a5[1] = v18;
  return result;
}

void *ConditionalGraphValue<>.makeView(inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v53[2] = a1[2];
  v53[3] = v11;
  v53[4] = a1[4];
  v54 = *(a1 + 20);
  v12 = a1[1];
  v53[0] = *a1;
  v53[1] = v12;
  v13 = *v5;
  v14 = *(v5 + 4);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v16 = ShouldRecordTree;
  if (v14)
  {
    v17 = *(a2 + 24);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v18 = a1[3];
    v37 = a1[2];
    v38 = v18;
    v39 = a1[4];
    v40 = *(a1 + 20);
    v19 = a1[1];
    v35 = *a1;
    v36 = v19;
    v20 = v37;
    LODWORD(v37) = 0;
    v28 = v13;
    v41 = v35;
    v42 = v19;
    v46 = v40;
    v44 = v18;
    v45 = v39;
    v43 = v37;
    v31 = v37;
    v32 = v18;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v19;
    v21 = *(a4 + 24);
    outlined init with copy of _ViewInputs(v53, &v47);
    outlined init with copy of _ViewInputs(&v41, &v47);
    v21(&v28, &v29, v17, a4);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v34;
    v47 = v29;
    v48 = v30;
    outlined destroy of _ViewInputs(&v47);
    LODWORD(v37) = v20;
    if (v16)
    {
LABEL_5:
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v35);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    v23 = *(a2 + 16);
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v24 = a1[3];
    v37 = a1[2];
    v38 = v24;
    v39 = a1[4];
    v40 = *(a1 + 20);
    v25 = a1[1];
    v35 = *a1;
    v36 = v25;
    v26 = v37;
    LODWORD(v37) = 0;
    v28 = v13;
    v41 = v35;
    v42 = v25;
    v46 = v40;
    v44 = v24;
    v45 = v39;
    v43 = v37;
    v31 = v37;
    v32 = v24;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v25;
    v27 = *(a3 + 24);
    outlined init with copy of _ViewInputs(v53, &v47);
    outlined init with copy of _ViewInputs(&v41, &v47);
    v27(&v28, &v29, v23, a3);
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v52 = v34;
    v47 = v29;
    v48 = v30;
    outlined destroy of _ViewInputs(&v47);
    LODWORD(v37) = v26;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  return outlined destroy of _ViewInputs(&v29);
}

void type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<ResolvedStyledText, TimelineSchedule?>)
  {
    type metadata accessor for ResolvedStyledText();
    type metadata accessor for ScrollStateRequest?(255, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<ResolvedStyledText, TimelineSchedule?>);
    }
  }
}

double ForEach<>.init(_:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v20 = 0;
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a3;
  v12[5] = a4;
  v13 = MEMORY[0x1E69E6530];
  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v15 = v14;
  _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_8(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E66E8]);
  ForEach.init(_:idGenerator:content:)(v21, &v20, partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C), v12, v15, v13, a5, v16, v22, MEMORY[0x1E69E6540]);
  v17 = v24;
  v18 = v22[1];
  *a7 = v22[0];
  *(a7 + 16) = v18;
  result = *&v23;
  *(a7 + 32) = v23;
  *(a7 + 48) = v17;
  return result;
}

uint64_t sub_18D22FE68()
{

  return swift_deallocObject();
}

double destroy for AnimatorAttribute(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8 | 7;
  v4 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4) & ~v3);
  v5 = ((((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5;
  v7 = *(v4 + v5);
  if (v7 >= 2 && v6 != 0)
  {
    v7 = *v4 + 2;
  }

  if (v7 == 1)
  {
    (*(v2 + 8))((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4) & ~v3);
  }

  else if (!v7)
  {
  }

  return result;
}

void *_s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA03TaggdK0VySiG_Tt0g5(uint64_t a1, char a2)
{
  v4 = *v3;
  result = (*v3 + 32);
  v6 = -*(*v3 + 16);
  v7 = -1;
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E6540];
  while (v6 + v7 != -1)
  {
    if (++v7 >= v4[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = result + 5;
    outlined init with copy of AnyTrackedValue(result, &v22);
    v10 = v23;
    v11 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v12 = (v11[1])(v10, v11);
    _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for TagValueTraitKey<Int>, v8, v9, type metadata accessor for TagValueTraitKey);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    result = v2;
    if (v12 == v14)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v21;
  *v21 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  *v2 = v4;
LABEL_7:
  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
    *v2 = v4;
  }

  type metadata accessor for ViewTraitCollection.AnyTrait<TagValueTraitKey<Int>>(0);
  v23 = v18;
  v24 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v22 = a1;
  BYTE8(v22) = a2 & 1;
  v4[2] = v17 + 1;
  result = outlined init with take of AnyTrackedValue(&v22, &v4[5 * v17 + 4]);
  *v2 = v4;
  return result;
}

uint64_t static _ContainerValueWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(__n128), uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  outlined init with copy of _ViewListInputs(a2, v22);
  v9 = *(a2 + 64);
  v18[0] = v8;
  v18[1] = v9;
  v20 = type metadata accessor for _ContainerValueWritingModifier.AddTrait(0, a5, v10, v11);
  swift_getWitnessTable(protocol conformance descriptor for _ContainerValueWritingModifier<A>.AddTrait, v20);
  v21 = v12;
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, v19, v20, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v23 = v17;

  v24 = 0;
  v25 = 0;
  (a3)(v15, v22);
  return outlined destroy of _ViewListInputs(v22);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ContainerValueWritingModifier<A>.AddTrait(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ContainerValueWritingModifier<A>.AddTrait, a1);

  return static AsyncAttribute.flags.getter();
}

void _ContainerValueWritingModifier.AddTrait.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ContainerValueWritingModifier(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  _TagTraitWritingModifier.AddTrait.traits.getter(a1, &v25);
  v20 = v25;
  if (!v25)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v25 = v20;
  _ContainerValueWritingModifier.AddTrait.modifier.getter(a2, v18, v19, v17);
  v21 = *(v12 + 8);

  v21(v17, v11);
  _ContainerValueWritingModifier.AddTrait.modifier.getter(a2, v22, v23, v14);
  (*(v5 + 16))(v7, &v14[*(v11 + 28)], a2);
  v21(v14, v11);
  swift_setAtWritableKeyPath();

  *v24 = v25;
}

uint64_t _ContainerValueWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for _ContainerValueWritingModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

void _TagTraitWritingModifier.AddTrait.traits.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = v3;
}

uint64_t outlined assign with take of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ContainerValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized ContainerValues.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

Swift::Int __swiftcall SubviewsCollection.index(after:)(Swift::Int after)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  if ((after & 0x8000000000000000) == 0 && v6 > after)
  {
    return after + 1;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for SubviewsCollectionSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  (**(v4 - 8))(a1 + 16, a2 + 16);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  v7 = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewsCollectionSlice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void static SubviewsCollectionSlice._makeViewList(view:inputs:)(uint64_t *a2@<X1>, uint64_t x8_0@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>(0);
  lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v5, a2, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v5, a2, x8_0);
  }
}

void lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection()
{
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollection, &type metadata for SubviewsCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollection, &type metadata for SubviewsCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollection, &type metadata for SubviewsCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollection, &type metadata for SubviewsCollection, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }
}

void lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child()
{
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child)
  {
    swift_getWitnessTable(protocol conformance descriptor for SubviewsCollectionSlice.Child, &type metadata for SubviewsCollectionSlice.Child, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child);
  }
}

void _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v9);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v9);
  v9 = a1;
  v10 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init, type metadata accessor for ForEachState.Info.Init, protocol conformance descriptor for ForEachState<A, B, C>.Info.Init);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Evictor, type metadata accessor for ForEachState.Evictor, protocol conformance descriptor for ForEachState<A, B, C>.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info.Init and conformance ForEachState<A, B, C>.Info.Init(&lazy protocol witness table cache variable for type ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>.Init, type metadata accessor for ForEachList.Init, protocol conformance descriptor for ForEachList<A, B, C>.Init);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for Slice<_VariadicView_Children>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v7 = v6;
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9 = v8;
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v13[0] = v7;
    v13[1] = &type metadata for Subview.ID;
    v13[2] = &type metadata for Subview;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = &protocol witness table for Subview;
    v11 = a3(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for Slice<_VariadicView_Children>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *assignWithCopy for SubviewsCollectionSlice(void *a1, void *a2, __n128 a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  __swift_assign_boxed_opaque_existential_1(a1 + 2, a2 + 2, a3);
  v5 = a2[7];
  v6 = a1[7];
  a1[7] = v5;
  v7 = v5;

  a1[8] = a2[8];

  a1[9] = a2[9];
  return a1;
}

uint64_t static EnumeratedViews._makeViewList(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  outlined init with copy of _ViewListInputs(a2, v67);
  if ((~v68 & 0x10800) != 0)
  {
    v68 |= 0x10800uLL;
  }

  v14 = *(*(a3 - 8) + 64);
  v49 = a7;
  if (v14)
  {
    closure #1 in static CountViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, type metadata accessor for EnumeratedViews, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v48 = v13;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v61);
  v16 = v61;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v54) = v16;
  (*(a5 + 32))(&v54, v67, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v16, a3, a5);
  outlined init with copy of _ViewListOutputs.Views(v49, v65);
  if (v66)
  {
    outlined destroy of _ViewListOutputs.Views(v65);
    v17 = _ViewListOutputs.makeAttribute(inputs:)(v67);
    *&v61 = a3;
    *(&v61 + 1) = a4;
    *&v62 = a5;
    *(&v62 + 1) = a6;
    if (*(*(type metadata accessor for MappedViews(0, &v61) - 8) + 64))
    {
      closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, closure #1 in static PointerOffset.of(_:)partial apply);
    }

    v22 = AGGraphCreateOffsetAttribute2();
    v23 = a2[1];
    v58 = *a2;
    v59 = v23;
    v25 = *a2;
    v24 = a2[1];
    v60 = a2[2];
    v61 = v25;
    v26 = a2[2];
    v62 = v24;
    v63 = v26;
    outlined init with copy of _GraphInputs(&v58, &v54);
    v27 = default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)(a3, a4);
    MappedViews.MappedList.Init.init(list:view:baseInputs:views:)(v17, v22, &v61, v27, &v54);
    MEMORY[0x1EEE9AC00](v28);
    *&v61 = a3;
    *(&v61 + 1) = a4;
    *&v62 = a5;
    *(&v62 + 1) = a6;
    v29 = type metadata accessor for MappedViews.MappedList.Init(0, &v61);
    v46 = v29;
    swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.MappedList.Init, v29);
    v47 = v30;
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v54, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, &v45, v29, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v64 = v57;
    (*(*(v29 - 8) + 8))(&v61, v29);
    outlined destroy of _ViewListInputs(v67);
    v33 = v53[0];
    v34 = v49;
    result = outlined destroy of _ViewListOutputs.Views(v49);
    *v34 = v33;
    *(v34 + 8) = 0;
    *(v34 + 40) = 1;
    return result;
  }

  outlined init with take of _ViewList_Elements(v65, v53);
  outlined init with copy of AnyTrackedValue(v53, v52);
  v18 = a2[1];
  v61 = *a2;
  v62 = v18;
  v20 = *a2;
  v19 = a2[1];
  v63 = a2[2];
  v54 = v20;
  v55 = v19;
  v56 = a2[2];
  v21 = *(a2 + 6);
  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v21 > 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v50[0] = 0;
  v50[1] = v21;
  v51 = MEMORY[0x1E69E7CC0];
  *&v58 = a3;
  *(&v58 + 1) = a4;
  *&v59 = a5;
  *(&v59 + 1) = a6;
  if (*(*(type metadata accessor for MappedViews(0, &v58) - 8) + 64))
  {
    outlined init with copy of _GraphInputs(&v61, &v58);
    closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(1, a3, a4, a5, a6, partial apply for closure #1 in static PointerOffset.of(_:));
  }

  else
  {
    outlined init with copy of _GraphInputs(&v61, &v58);
  }

  v48 = AGGraphCreateOffsetAttribute2();
  v36 = type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  v38 = v37;
  v39 = type metadata accessor for Dictionary();
  type metadata accessor for MutableBox(0, v39, v40, v41);
  swift_getTupleTypeMetadata2();
  v42 = static Array._allocateUninitialized(_:)();
  v43 = specialized Dictionary.init(dictionaryLiteral:)(v42, &type metadata for _ViewList_ID.Canonical, v36, v38);

  __swift_destroy_boxed_opaque_existential_1(v53);
  outlined destroy of _ViewListInputs(v67);
  *&v58 = v43;
  v44 = MutableBox.__allocating_init(_:)(&v58);
  *&v58 = a3;
  *(&v58 + 1) = a4;
  *&v59 = a5;
  *(&v59 + 1) = a6;
  *(&v59 + 1) = type metadata accessor for MappedViews.MappedElements(0, &v58);
  *&v60 = &protocol witness table for MappedViews<A, B>.MappedElements;
  *&v58 = swift_allocObject();
  v46 = a6;
  MappedViews.MappedElements.init(base:baseInputs:id:list:view:views:)(v52, &v54, v50, 0, v48, v44, v58 + 16);
  BYTE8(v60) = 0;
  return outlined assign with take of _ViewListOutputs.Views(&v58, v49);
}

uint64_t sub_18D231A74()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t _ViewListInputs.updateContentOffset(outputs:)(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    outlined init with copy of _ViewListOutputs.Views(a1, v22);
    if ((v23 & 1) == 0)
    {
      outlined init with take of _ViewList_Elements(v22, v19);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v17 = (*(v16 + 8))(v15, v16);
      _ViewListInputs.updateStaticContentOffset(count:needsDynamicView:)(v17, 0);
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    v2 = v22[0];

    LODWORD(v19[0]) = v2;
    v19[1] = partial apply for specialized closure #1 in Attribute.subscript.getter;
    v19[2] = swift_getKeyPath();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Map<ViewList, Int>(0);
    lazy protocol witness table accessor for type Map<ViewList, Int> and conformance Map<A, B>();

    v3 = Attribute.init<A>(body:value:flags:update:)();

    v5 = *(v1 + 128);
    if (v5 == 255)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v1 + 112);
      if (v5)
      {
        v7 = *(v1 + 120);
        v19[0] = __PAIR64__(v6, v3);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation();
        result = Attribute.init<A>(body:value:flags:update:)();
        v3 = result;
        v6 = v7;
      }

      else
      {
        v19[0] = __PAIR64__(*MEMORY[0x1E698D3F8], v3);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type _ViewListInputs.ContentOffsetMutation and conformance _ViewListInputs.ContentOffsetMutation();
        result = Attribute.init<A>(body:value:flags:update:)();
        v3 = result;
      }
    }

    *(v1 + 112) = v3;
    *(v1 + 120) = v6;
    goto LABEL_17;
  }

  v8 = *(a1 + 56);
  outlined init with copy of _ViewListOutputs.Views(a1, v22);
  v9 = v23;
  result = outlined destroy of _ViewListOutputs.Views(v22);
  v10 = *(v1 + 128);
  if (v10 == 255)
  {
    *(v1 + 112) = v8;
    *(v1 + 120) = v9;
    *(v1 + 128) = 0;
    return result;
  }

  v12 = *(v1 + 112);
  v11 = *(v1 + 120);
  if ((v10 & 1) == 0)
  {
    v13 = __OFADD__(v12, v8);
    v18 = v12 + v8;
    if (!v13)
    {
      *(v1 + 112) = v18;
      *(v1 + 120) = (v11 | v9) & 1;
      *(v1 + 128) = 0;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  v13 = __OFADD__(v11, v8);
  v14 = v11 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 112) = v12;
  *(v1 + 120) = v14;
LABEL_17:
  *(v1 + 128) = 1;
  return result;
}

uint64_t sub_18D231DA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = ViewList.count.getter(v3, v4);
  *a2 = result;
  return result;
}

uint64_t closure #2 in static EnumeratedViews._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v15[2] = type metadata accessor for EnumeratedViews(0, &v17);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for MappedViews(0, &v17);
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17;
}

uint64_t default argument 3 of MappedViews.MappedList.Init.init(list:view:baseInputs:views:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  v2 = type metadata accessor for Dictionary();
  type metadata accessor for MutableBox(0, v2, v3, v4);
  v6 = Dictionary.init()();
  return MutableBox.__allocating_init(_:)(&v6);
}

__n128 MappedViews.MappedList.Init.init(list:view:baseInputs:views:)@<Q0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 4) = a2;
  v5 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v5;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = a4;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MappedViews<A, B>.MappedList.Init(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.MappedList.Init, a1);

  return static AsyncAttribute.flags.getter();
}

double destroy for MappedViews.MappedList.Init(void *a1)
{

  return result;
}

double MappedViews.MappedList.Init.value.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  *v20 = *v2;
  *&v20[16] = v5;
  v6 = v2[3];
  *&v20[32] = v2[2];
  *&v20[48] = v6;
  MappedViews.MappedList.Init.list.getter(v19);
  v16 = *&v20[8];
  v17 = *&v20[24];
  v18 = *&v20[40];
  v7 = *&v20[4];
  v8 = *&v20[56];
  v9 = *(a1 + 32);
  v15[0] = *(a1 + 16);
  v15[1] = v9;
  v10 = type metadata accessor for MappedViews.MappedList(0, v15);
  a2[3] = v10;
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.MappedList, v10);
  a2[4] = v11;
  v12 = swift_allocObject();
  *a2 = v12;
  outlined init with take of AnyTrackedValue(v19, v12 + 16);
  v13 = v17;
  *(v12 + 56) = v16;
  *(v12 + 72) = v13;
  *(v12 + 88) = v18;
  *(v12 + 104) = v7;
  *(v12 + 112) = v8;
  outlined init with copy of _GraphInputs(&v20[8], &v16);

  return result;
}

uint64_t sub_18D23218C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t MappedViews.MappedList.Init.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();
  return outlined init with copy of AnyTrackedValue(Value, a1);
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v7 = v6;
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9 = v8;
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v13[0] = v7;
    v13[1] = &type metadata for Subview.ID;
    v13[2] = &type metadata for Subview;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = &protocol witness table for Subview;
    v11 = a3(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v7 = v6;
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    v9 = v8;
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v13[0] = v7;
    v13[1] = &type metadata for Subview.ID;
    v13[2] = &type metadata for Subview;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = &protocol witness table for Subview;
    v11 = a3(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t outlined init with copy of Set<EventID>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void lazy protocol witness table accessor for type Subview and conformance Subview()
{
  if (!lazy protocol witness table cache variable for type Subview and conformance Subview)
  {
    swift_getWitnessTable(protocol conformance descriptor for Subview, &type metadata for Subview, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Subview and conformance Subview);
  }
}

uint64_t outlined destroy of Slice<SubviewsCollection>(uint64_t a1)
{
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ForEachState.update(view:)(uint64_t *a1)
{
  v2 = v1;
  v186 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v156 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v159 = v135 - v5;
  _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v135 - v8;
  v10 = v1[19];
  if (AGSubgraphIsValid())
  {
    v11 = AGMakeUniqueID();
    v146 = *(*v1 + 232);
    *(v1 + v146) = v11;
    v12 = *(*v1 + 240);
    v13 = *(v1 + v12);
    v154 = v12;
    *(v1 + v12) = v13 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1[40];
    v145 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v15 + 16));
    }

    else
    {
      *(v2 + 320) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v15 + 24) >> 1);
    }

    *(v2 + 328) = 2;
    swift_beginAccess();
    _s2os6LoggerVSgWOcTm_0(v2 + 176, v180, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    v16 = *(&v181 + 1);
    _s2os6LoggerVSgWOhTm_0(v180, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    if (v16)
    {
      if (!*(v2 + 216))
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if (!*(v2 + 272))
      {
        outlined init with copy of Set<EventID>(v2 + 176, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
        v45 = specialized Slice.distance(from:to:)(*&v180[0], *(&v180[0] + 1));
        outlined destroy of Slice<SubviewsCollection>(v180);
        v46 = *a1;
        v47 = a1[1];
        if (v45 != specialized Slice.distance(from:to:)(*a1, v47))
        {
          *&v180[0] = 0;
          *(&v180[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(204);
          v168 = v180[0];
          MEMORY[0x193ABEDD0](0xD00000000000002FLL, 0x800000018DD7D030);
          MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
          *&v180[0] = specialized Slice.distance(from:to:)(v46, v47);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v48);

          MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
          if (!*(v2 + 216))
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          outlined init with copy of Set<EventID>(v2 + 176, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
          v49 = specialized Slice.distance(from:to:)(*&v180[0], *(&v180[0] + 1));
          outlined destroy of Slice<SubviewsCollection>(v180);
          *&v166[0] = v49;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v50);

          MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
          specialized static Log.externalWarning(_:)(v168, *(&v168 + 1));
        }

        if (*(v2 + 216))
        {
          v51 = MEMORY[0x1E69E74D0];
          outlined init with copy of Set<EventID>(v2 + 176, &v168, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v180, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
          swift_beginAccess();
          outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(v180, v2 + 176, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
          outlined init with copy of Set<EventID>(&v168, v180, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, v51);
          if (*(v2 + 216))
          {
            outlined assign with take of Slice<SubviewsCollection>(v180, v2 + 176);
            swift_endAccess();
            swift_beginAccess();
            v52 = *(v2 + 336);
            v44 = v52 + 64;
            v53 = 1 << *(v52 + 32);
            v54 = -1;
            if (v53 < 64)
            {
              v54 = ~(-1 << v53);
            }

            v55 = v54 & *(v52 + 64);
            v56 = (v53 + 63) >> 6;

            v57 = 0;
LABEL_28:
            if (v55)
            {
              goto LABEL_33;
            }

            while (1)
            {
              v58 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                break;
              }

              if (v58 >= v56)
              {
                goto LABEL_36;
              }

              v55 = *(v44 + 8 * v58);
              ++v57;
              if (v55)
              {
                v57 = v58;
LABEL_33:
                v59 = __clz(__rbit64(v55)) | (v57 << 6);
                v60 = *(*(v52 + 48) + 16 * v59 + 8);
                v61 = *(*(v52 + 56) + 8 * v59);

                if (!v60)
                {
LABEL_36:
                  outlined destroy of Slice<SubviewsCollection>(&v168);

                  return;
                }

                *(v61 + 128) = *(v2 + v146);
                if (*(v61 + 136) == v13)
                {
                  *(v61 + 136) = *(v2 + v154);
                }

                v55 &= v55 - 1;

                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          goto LABEL_165;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v180, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    swift_beginAccess();
    outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(v180, v2 + 176, &lazy cache variable for type metadata for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>?, type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>);
    swift_endAccess();
    v17 = MEMORY[0x1E69E7CD0];
    v18 = v145;
    *v145 = MEMORY[0x1E69E7CD0];
    v18[1] = v17;
    v139 = v7;
    swift_storeEnumTagMultiPayload();
    v19 = *(*v2 + 208);
    swift_beginAccess();
    v138 = v19;
    outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v18, v2 + v19, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
    swift_endAccess();
    v20 = v159;
    outlined init with copy of Set<EventID>(a1, v159, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    v21 = a1[12];
    v22 = v156;
    v23 = v20 + *(v156 + 72);

    IndexSet.init()();
    v140 = type metadata accessor for IndexSetBuilder(0);
    v24 = v23 + *(v140 + 20);
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v25 = (v20 + *(v22 + 76));
    *v25 = v17;
    v25[1] = v17;
    *(v20 + 80) = v21;
    if ((*(v2 + 172) & 1) == 0)
    {
      v26 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      *(v2 + *(*v2 + 216)) = Counter;
      outlined init with copy of Set<EventID>(a1, &v175, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
      v28 = *v2;
      v29 = *(*v2 + 224);
      if ((*(v2 + v29) & 0x8000000000000000) != 0)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_155:
        *(v2 + *(v28 + 248)) = 0;
        *(v2 + v29) = v39;
        outlined destroy of Slice<SubviewsCollection>(&v175);
        v132 = v159;
        swift_beginAccess();
        v133 = v145;
        outlined init with copy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v132, v145, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        outlined destroy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v132, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        swift_storeEnumTagMultiPayload();
        v134 = v138;
        swift_beginAccess();
        outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v133, v2 + v134, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        swift_endAccess();
        return;
      }

      v137 = *(*v2 + 224);
      swift_beginAccess();
      v30 = *(v2 + 336);
      v160 = *(v30 + 16);
      v31 = *(*v2 + 272);
      swift_beginAccess();
      v136 = v31;
      v152 = *(v2 + v31);
      v153 = v2;
      v157 = *(v152 + 16);
      v163 = v17;
      v33 = *a1;
      v32 = a1[1];
      v34 = *a1 == v32;
      v35 = *a1 < v32;
      v141 = v10;
      v155 = v30;
      if (v34)
      {

        v36 = 0;
        v37 = 0;
        v38 = 0;
        v142 = 0;
        v143 = 1;
        goto LABEL_46;
      }

      if (!v35)
      {
        __break(1u);
        goto LABEL_157;
      }

      _VariadicView_Children.subscript.getter(v33, &v168);
      v183 = v172;
      v184 = v173;
      v185 = v174;
      v180[0] = v168;
      v180[1] = v169;
      v181 = v170;
      v182 = v171;
      v40 = a1[12];
      if (v40)
      {

        v41 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v42)
        {

          v43 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
          v44 = v40;
          (partial apply for specialized closure #2 in KeyPath.makeGetFunction())(&v164, v180);
        }

        else
        {
          v62 = v41;
          v44 = swift_allocObject();
          *(v44 + 16) = v62;
          v43 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
          (partial apply for specialized closure #1 in KeyPath.makeGetFunction())(&v164, v180);
        }

        v63 = v175;
        if (*(v30 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v164, v165), (v65 & 1) != 0))
        {
          v66 = *(*(v30 + 56) + 8 * v64);
        }

        else
        {
          v66 = 0;
        }

        v135[2] = v40;
        *&v168 = v66;
        type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item?(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item?, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item, _s7SwiftUI12ForEachStateC4InfoVys5SliceVyAA18SubviewsCollectionVGAA7SubviewV2IDVAL_GMaTm_0);
        _ViewInputs.base.modify();

        v135[1] = v165;
        specialized Set.contains(_:)(v164, v165, v152);
        LOBYTE(v168) = v67 & 1;
        _ViewInputs.base.modify();
        if (v63 == v176)
        {
          v2 = 0;
          v37 = 0;
          v144 = 0;
          v142 = 0;
          v143 = 1;
LABEL_44:
          v36 = v2;
          outlined destroy of Subview(v180);

LABEL_45:
          v30 = v155;

          v2 = v153;
          v38 = v144;
LABEL_46:
          v68 = *(*v2 + 248);
          if ((*(v2 + v68) & 1) == 0)
          {
            v69 = v159;
            swift_beginAccess();
            v70 = v69 + *(v156 + 72);
            if ((v143 & 1) == 0)
            {
              v71 = v70 + *(v140 + 20);
              if (v36 >= v38)
              {
                *v71 = 0;
                *(v71 + 8) = 0;
                *(v71 + 16) = 1;
              }

              else if (v37 >= v38)
              {
                *v71 = v36;
                *(v71 + 8) = v38;
                *(v71 + 16) = 0;
              }
            }

            IndexSet.remove(integersIn:)();
            swift_endAccess();
          }

          if (!v160)
          {

LABEL_151:
            if (*(v2 + v68))
            {
              v39 = v142;
            }

            else
            {
              v39 = 0x7FFFFFFFFFFFFFFFLL;
            }

            swift_beginAccess();
            *(v2 + v136) = v163;

            v28 = *v2;
            v29 = v137;
            goto LABEL_155;
          }

          v149 = v68;
          v152 = MEMORY[0x1E69E7CC0];
          *&v166[0] = MEMORY[0x1E69E7CC0];
          v44 = v30 + 64;
          v96 = _HashTable.startBucket.getter();
          v158 = 1 << *(v30 + 32);
          v97 = *(v30 + 36);
          v150 = v30 + 72;
          v151 = v30 + 64;
          v98 = v97;
          v99 = v97;
          while (1)
          {
            if (v99 != v97)
            {
              goto LABEL_138;
            }

            if (v96 == v158)
            {
              break;
            }

            if (v96 < 0)
            {
              goto LABEL_139;
            }

            v2 = 1 << *(v30 + 32);
            if (v96 >= v2)
            {
              goto LABEL_139;
            }

            v100 = v96 >> 6;
            if ((*(v44 + 8 * (v96 >> 6)) & (1 << v96)) == 0)
            {
              goto LABEL_140;
            }

            v101 = *(*(v30 + 56) + 8 * v96);
            if (*(v101 + 142))
            {

              v102 = v98;
            }

            else
            {
              v157 = v98;
              v103 = *(v101 + 136);
              v104 = *(v153 + v154);

              if (v103 != v104)
              {

                MEMORY[0x193ABF170](v105);
                if (*((*&v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v166[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v152 = *&v166[0];
                --v160;
                swift_beginAccess();
                v107 = *(v101 + 32);
                v106 = *(v101 + 40);

                specialized Set._Variant.insert(_:)(&v168, v107, v106);

                swift_endAccess();
                v30 = v155;
                v2 = 1 << *(v155 + 32);
              }

              v44 = v151;
              v102 = v157;
            }

            if (v96 >= v2)
            {
              goto LABEL_141;
            }

            v108 = *(v44 + 8 * v100);
            if ((v108 & (1 << v96)) == 0)
            {
              goto LABEL_142;
            }

            if (v97 != *(v30 + 36))
            {
              goto LABEL_143;
            }

            v109 = v108 & (-2 << (v96 & 0x3F));
            if (v109)
            {

              v2 = __clz(__rbit64(v109)) | v96 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v110 = v100 << 6;
              v111 = v100 + 1;
              v112 = (v150 + 8 * v100);
              while (v111 < (v2 + 63) >> 6)
              {
                v114 = *v112++;
                v113 = v114;
                v110 += 64;
                ++v111;
                if (v114)
                {
                  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v96, v102, 0);

                  v2 = __clz(__rbit64(v113)) + v110;
                  goto LABEL_94;
                }
              }

              outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v96, v102, 0);
            }

LABEL_94:
            v98 = *(v30 + 36);
            v99 = *(v30 + 36);
            v96 = v2;
            if (!v160)
            {
              goto LABEL_118;
            }
          }

          v2 = v158;
LABEL_118:
          v157 = v98;

          v44 = v152;
          if (!(v152 >> 62))
          {
            v115 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v115)
            {
LABEL_120:
              if (v115 < 1)
              {
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
              }

              v116 = 0;
              v117 = v44 & 0xC000000000000001;
              v160 = v115;
              while (1)
              {
                if (v117)
                {
                  v118 = MEMORY[0x193AC03C0](v116, v44);
                }

                else
                {
                  v118 = *(v44 + 8 * v116 + 32);
                }

                AGSubgraphApply();
                AGSubgraphRemoveChild();
                *(v118 + 141) = 256;
                v119 = *(v118 + 24) - 1;
                *(v118 + 24) = v119;
                if (!v119)
                {
                  break;
                }

LABEL_123:
                ++v116;

                if (v115 == v116)
                {
                  goto LABEL_150;
                }
              }

              Strong = swift_weakLoadStrong();
              if (Strong)
              {
                v121 = Strong;
                swift_beginAccess();
                v122 = *(v121 + 336);
                if (*(v122 + 16))
                {
                  v124 = *(v118 + 32);
                  v123 = *(v118 + 40);

                  specialized __RawDictionaryStorage.find<A>(_:)(v124, v123);
                  if (v126)
                  {
                    v127 = v125;
                    v128 = *(v122 + 36);

                    swift_beginAccess();
                    specialized Dictionary._Variant.remove(at:)(&v168, v127, v128);
                    swift_endAccess();

                    goto LABEL_134;
                  }
                }

                v130 = specialized _NativeDictionary.filter(_:)(v129, v118, specialized _NativeDictionary.extractDictionary(using:count:));

                *(v121 + 336) = v130;
              }

LABEL_134:
              IsValid = AGSubgraphIsValid();
              v44 = v152;
              if (IsValid)
              {
                AGSubgraphRef.willInvalidate(isInserted:)(1);
                AGSubgraphInvalidate();
              }

              v115 = v160;
              goto LABEL_123;
            }

            goto LABEL_150;
          }

LABEL_149:
          v115 = __CocoaSet.count.getter();
          if (v115)
          {
            goto LABEL_120;
          }

LABEL_150:

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v157, 0);
          v2 = v153;
          v68 = v149;
          goto LABEL_151;
        }

        v72 = 0;
        v142 = 0;
        v37 = 0;
        v2 = 0;
        if (v176 <= v63)
        {
          v73 = v63;
        }

        else
        {
          v73 = v176;
        }

        v150 = v63;
        v151 = v73;
        v143 = 1;
        v144 = 0;
        v74 = v63;
        v148 = v43;
        v149 = v44;
        v147 = v176;
        while (1)
        {
          if (v151 == v74)
          {
            goto LABEL_144;
          }

          _VariadicView_Children.subscript.getter(v74, &v168);
          v166[4] = v172;
          v166[5] = v173;
          v167 = v174;
          v166[0] = v168;
          v166[1] = v169;
          v166[2] = v170;
          v166[3] = v171;
          (v43)(&v161, v166);
          outlined destroy of Subview(v166);
          if (!v160 && !v157)
          {
            v36 = v2;
            outlined destroy of Subview(v180);

            v160 = 0;
            goto LABEL_45;
          }

          v158 = v2;
          v75 = v37;
          v76 = v155;
          if (*(v155 + 16))
          {
            v77 = v161;
            v78 = v162;
            specialized __RawDictionaryStorage.find<A>(_:)(v161, v162);
            v80 = v77;
            v81 = HIDWORD(v77);
            if (v82)
            {
              v83 = *(*(v76 + 56) + 8 * v79);
              swift_beginAccess();
              *(v83 + 112) = v74;
              v84 = v153;
              v85 = *(v153 + v146);
              *(v83 + 120) = v72;
              *(v83 + 128) = v85;
              *(v83 + 136) = *(v84 + v154);
              --v160;
              LODWORD(v85) = *(v83 + 142);
              v86 = v85 ^ 1;
              v34 = v85 == 0;
              v87 = v144;
              if (v34)
              {
                v87 = v72;
              }

              v144 = v87;
              v142 = v72;
            }

            else
            {
              v86 = 0;
            }
          }

          else
          {
            v86 = 0;
            v80 = v161;
            v81 = HIDWORD(v161);
            v78 = v162;
          }

          specialized Set.contains(_:)(v80 | (v81 << 32), v78, v152);
          if (v88)
          {
            swift_beginAccess();

            specialized Set._Variant.insert(_:)(v166, v80 | (v81 << 32), v78);
            swift_endAccess();

            --v157;
            v37 = v75;
          }

          else
          {
            v37 = v75;
            if (!v86)
            {
              v89 = v159;
              swift_beginAccess();
              v90 = v89 + *(v156 + 72);
              v44 = *(v140 + 20);
              v2 = v158;
              if (v143)
              {
                v37 = v72 + 1;
                if (__OFADD__(v72, 1))
                {
                  goto LABEL_147;
                }

                if (v37 < v72)
                {
                  goto LABEL_148;
                }

                goto LABEL_80;
              }

              if (v72 == v37)
              {
                if (__OFADD__(v37++, 1))
                {
                  goto LABEL_158;
                }

                if (v37 < v158)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                IndexSet.insert(integersIn:)();
                v37 = v72 + 1;
                if (__OFADD__(v72, 1))
                {
                  goto LABEL_159;
                }

                if (v37 < v72)
                {
                  goto LABEL_161;
                }

LABEL_80:
                v2 = v72;
              }

              v92 = v90 + v44;
              *v92 = v2;
              *(v92 + 8) = v37;
              *(v92 + 16) = 0;
              swift_endAccess();
              v143 = 0;
              goto LABEL_82;
            }
          }

          v2 = v158;
LABEL_82:
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          v44 = static Update._lock;
          _MovableLockLock(static Update._lock);
          specialized static Update.begin()();
          v93 = v178;
          v94 = v179;
          __swift_project_boxed_opaque_existential_1(v177, v178);
          *&v168 = 2;
          v95 = (*(v94 + 16))(&v168, v93, v94);
          static Update.end()();
          _MovableLockUnlock(v44);
          if (v150 < 0 || v74 >= v95)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v72, 1))
          {
            goto LABEL_146;
          }

          ++v74;
          ++v72;
          v43 = v148;
          v44 = v149;
          if (v147 == v74)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_167:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_163;
  }
}

{
  v184 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v174 = a1[1];
  v175 = v5;
  v176 = v4;
  v7 = a1[4];
  v6 = a1[5];
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v173 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v153 - v9;
  _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v153 - v13;
  v177 = v1;
  v15 = v1[19];
  if (AGSubgraphIsValid())
  {
    v170 = v6;
    v171 = v3;
    v160 = v15;
    v158 = v12;
    v16 = AGMakeUniqueID();
    v17 = v177;
    v18 = *(*v177 + 232);
    *(v177 + v18) = v16;
    v19 = *(*v17 + 240);
    v20 = *(v17 + v19);
    v172 = v19;
    *(v17 + v19) = v20 + 1;
    v21 = v17 + 31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v23 + 16));
    }

    else
    {
      *v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v23 + 24) >> 1);
    }

    v24 = v177;
    v177[32] = 2;
    swift_beginAccess();
    v25 = v24[22];
    v26 = v24[25];
    v162 = v18;
    if (v25 && !v26)
    {
      v173 = v7;
      LODWORD(v169) = v20;
      v27 = *(*a1 + 16);
      if (*(v25 + 16) != v27)
      {
        v183[0] = 0;
        v183[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(204);
        MEMORY[0x193ABEDD0](0xD0000000000000DELL, 0x800000018DD7D120);
        MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
        v182[0] = v27;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v28);

        MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
        v29 = v177[22];
        if (!v29)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v182[0] = *(v29 + 16);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v30);

        MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
        specialized static Log.externalWarning(_:)(v183[0], v183[1]);

        v25 = v177[22];
        if (!v25)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }
      }

      v31 = v177;
      swift_beginAccess();
      v32 = v31[22];
      v33 = v31[23];
      v34 = v31[24];
      v35 = v31[25];
      v7 = v31[26];
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v183, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);

      outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v32, v33, v34, v35, v7);
      v36 = v171;
      v37 = v174;
      v38 = v175;
      v31[22] = v171;
      v31[23] = v37;
      v39 = v176;
      v31[24] = v38;
      v31[25] = v39;
      v40 = v170;
      v31[26] = v173;
      v31[27] = v40;
      if (v36)
      {
        v41 = v177;
        v177[22] = v25;

        swift_endAccess();

        swift_beginAccess();
        v42 = v41[33];
        v43 = v42 + 64;
        v44 = 1 << *(v42 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & *(v42 + 64);
        v47 = (v44 + 63) >> 6;

        v48 = 0;
        v49 = v162;
        v50 = v169;
        while (v46)
        {
LABEL_19:
          v52 = *(*(v42 + 56) + ((v48 << 9) | (8 * __clz(__rbit64(v46)))));
          v46 &= v46 - 1;
          *(v52 + 120) = *(v177 + v49);
          if (*(v52 + 128) == v50)
          {
            *(v52 + 128) = *(v177 + v172);
          }
        }

        while (1)
        {
          v51 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v51 >= v47)
          {

            return;
          }

          v46 = *(v43 + 8 * v51);
          ++v48;
          if (v46)
          {
            v48 = v51;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v53 = v177;
    v54 = v177[23];
    v55 = v177[24];
    v168 = v10;
    v56 = v14;
    v57 = v177[26];
    v169 = v177[27];
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, v183, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>);
    v58 = v174;
    v59 = v175;
    v53[22] = v171;
    v53[23] = v58;
    v60 = v176;
    v53[24] = v59;
    v53[25] = v60;
    v61 = v170;
    v53[26] = v7;
    v53[27] = v61;
    v62 = v26;
    v63 = v168;
    outlined consume of ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>?(v25, v54, v55, v62, v57);
    v64 = MEMORY[0x1E69E7CD0];
    *v56 = MEMORY[0x1E69E7CD0];
    v56[1] = v64;
    swift_storeEnumTagMultiPayload();
    v65 = *(*v53 + 208);
    swift_beginAccess();
    v156 = v65;
    v157 = v56;
    outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v56, v53 + v65, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
    swift_endAccess();
    v179[0] = *a1;
    v66 = a1[3];
    v67 = v173;
    v68 = v63 + *(v173 + 72);
    outlined init with copy of [GlassContainer.Item](v179, v183, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

    IndexSet.init()();
    v161 = type metadata accessor for IndexSetBuilder(0);
    v69 = &v68[*(v161 + 20)];
    *v69 = 0;
    *(v69 + 1) = 0;
    v69[16] = 1;
    v70 = (v63 + *(v67 + 76));
    *v70 = v64;
    v70[1] = v64;
    v71 = v179[0];
    *v63 = v179[0];
    v63[1] = v66;
    if (*(v53 + 172))
    {
      __break(1u);
      goto LABEL_134;
    }

    v72 = v177;
    v73 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    *(v72 + *(*v72 + 216)) = Counter;
    v75 = *v72;
    v43 = *(*v72 + 224);
    if (*(v72 + v43) < 0)
    {

      v85 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_130:
      v149 = v177;
      *(v177 + *(v75 + 248)) = 0;
      *(v149 + v43) = v85;
      outlined destroy of [GlassContainer.Item](v179, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8], type metadata accessor for [_ViewList_ID]);
      v150 = v168;
      swift_beginAccess();
      v151 = v157;
      outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v150, v157, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
      swift_storeEnumTagMultiPayload();
      v152 = v156;
      swift_beginAccess();
      outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v151, v149 + v152, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
      swift_endAccess();
      outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v150, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
      return;
    }

    v155 = v66;
    v76 = v177;
    swift_beginAccess();
    v77 = v76[33];
    v176 = *(v77 + 16);
    v78 = *(*v76 + 272);
    swift_beginAccess();
    v153 = v78;
    v154 = v43;
    v79 = *(v76 + v78);
    v174 = v77;
    v175 = v79;
    v166 = *(v79 + 16);
    v181 = v64;
    v80 = *(v71 + 16);
    if (!v80)
    {
      outlined init with copy of [GlassContainer.Item](v179, v183, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

      v159 = 0;
      v86 = 0;
      v47 = 0;
      v167 = 1;
LABEL_63:
      v113 = *(*v177 + 248);
      if ((*(v177 + v113) & 1) == 0)
      {
        v114 = v168;
        swift_beginAccess();
        v115 = v114 + *(v173 + 72);
        if ((v167 & 1) == 0)
        {
          v116 = v115 + *(v161 + 20);
          if (v86 >= v47)
          {
            *v116 = 0;
            *(v116 + 8) = 0;
            *(v116 + 16) = 1;
          }

          else if (v80 >= v47)
          {
            *v116 = v86;
            *(v116 + 8) = v47;
            *(v116 + 16) = 0;
          }
        }

        IndexSet.remove(integersIn:)();
        swift_endAccess();
      }

      if (!v176)
      {

LABEL_126:
        v148 = v177;
        if (*(v177 + v113))
        {
          v85 = v159;
        }

        else
        {
          v85 = 0x7FFFFFFFFFFFFFFFLL;
        }

        swift_beginAccess();
        *(v148 + v153) = v181;

        v75 = *v148;
        goto LABEL_130;
      }

      v167 = v113;
      v170 = MEMORY[0x1E69E7CC0];
      v182[0] = MEMORY[0x1E69E7CC0];
      v117 = v174;
      v175 = v174 + 64;
      v43 = _HashTable.startBucket.getter();
      v171 = 1 << *(v117 + 32);
      v118 = *(v117 + 36);
      v169 = v117 + 72;
      v7 = v118;
      v119 = v118;
      while (v119 == v118)
      {
        if (v43 == v171)
        {
          v47 = v171;
LABEL_97:

          v43 = v170;
          if (v170 >> 62)
          {
            goto LABEL_124;
          }

          v133 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v133)
          {
            goto LABEL_125;
          }

          goto LABEL_99;
        }

        if (v43 < 0)
        {
          goto LABEL_118;
        }

        v47 = 1 << *(v117 + 32);
        if (v43 >= v47)
        {
          goto LABEL_118;
        }

        v120 = v7;
        v7 = v118;
        v121 = v43 >> 6;
        if ((*(v175 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
        {
          goto LABEL_119;
        }

        v122 = *(*(v117 + 56) + 8 * v43);
        if (*(v122 + 134))
        {
        }

        else
        {
          v123 = *(v122 + 128);
          v124 = *(v177 + v172);

          if (v123 == v124)
          {
            v117 = v174;
          }

          else
          {

            MEMORY[0x193ABF170](v125);
            if (*((v182[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v170 = v182[0];
            --v176;
            swift_beginAccess();
            specialized Set._Variant.insert(_:)(v180, *(v122 + 32));
            swift_endAccess();
            v117 = v174;
            v47 = 1 << *(v174 + 32);
          }
        }

        if (v43 >= v47)
        {
          goto LABEL_120;
        }

        v126 = *(v175 + 8 * v121);
        if ((v126 & (1 << v43)) == 0)
        {
          goto LABEL_121;
        }

        if (v118 != *(v117 + 36))
        {
          goto LABEL_122;
        }

        v127 = v126 & (-2 << (v43 & 0x3F));
        if (v127)
        {

          v47 = __clz(__rbit64(v127)) | v43 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v128 = v121 << 6;
          v129 = v121 + 1;
          v130 = (v169 + 8 * v121);
          while (v129 < (v47 + 63) >> 6)
          {
            v132 = *v130++;
            v131 = v132;
            v128 += 64;
            ++v129;
            if (v132)
            {
              outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v43, v120, 0);

              v47 = __clz(__rbit64(v131)) + v128;
              goto LABEL_73;
            }
          }

          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v43, v120, 0);
        }

LABEL_73:
        v7 = *(v117 + 36);
        v119 = *(v117 + 36);
        v43 = v47;
        if (!v176)
        {
          goto LABEL_97;
        }
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      v133 = __CocoaSet.count.getter();
      if (v133)
      {
LABEL_99:
        if (v133 < 1)
        {
          __break(1u);
        }

        v134 = 0;
        v175 = 0;
        v176 = v133;
        v135 = v43 & 0xC000000000000001;
        do
        {
          if (v135)
          {
            v136 = MEMORY[0x193AC03C0](v134, v43);
          }

          else
          {
            v136 = *(v43 + 8 * v134 + 32);
          }

          AGSubgraphApply();
          AGSubgraphRemoveChild();
          *(v136 + 133) = 256;
          v137 = *(v136 + 24) - 1;
          *(v136 + 24) = v137;
          if (!v137)
          {
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v139 = Strong;
              swift_beginAccess();
              v140 = *(v139 + 264);
              if (*(v140 + 16) && (v141 = specialized __RawDictionaryStorage.find<A>(_:)(*(v136 + 32)), (v142 & 1) != 0))
              {
                v143 = v141;
                v144 = *(v140 + 36);
                swift_beginAccess();
                specialized Dictionary._Variant.remove(at:)(&v178, v143, v144);
                swift_endAccess();
              }

              else
              {

                v146 = v175;
                v147 = specialized _NativeDictionary.filter(_:)(v145, v136, specialized _NativeDictionary.extractDictionary(using:count:));
                v175 = v146;

                *(v139 + 264) = v147;
              }

              v43 = v170;
            }

            if (AGSubgraphIsValid())
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            v133 = v176;
          }

          ++v134;
        }

        while (v133 != v134);
      }

LABEL_125:

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v47, v7, 0);
      v43 = v154;
      v113 = v167;
      goto LABEL_126;
    }

    v171 = v71 + 32;
    memcpy(v183, (v71 + 32), 0x154uLL);
    v81 = v155;
    if (!v155)
    {
LABEL_137:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    outlined init with copy of [GlassContainer.Item](v179, v182, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);

    outlined init with copy of GlassContainer.Entry(v183, v182);
    v82 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v83)
    {

      v84 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
    }

    else
    {
      v87 = v82;
      v81 = swift_allocObject();
      *(v81 + 16) = v87;
      v84 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
    }

    v88 = v84;
    memcpy(v182, v183, 0x154uLL);
    v88(v180, v182);
    v89 = v180[0];
    v90 = v174;
    if (*(v174 + 16) && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v180[0]), (v92 & 1) != 0))
    {
      v93 = *(*(v90 + 56) + 8 * v91);
    }

    else
    {
      v93 = 0;
    }

    v182[0] = v93;
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item, _s7SwiftUI12ForEachStateC4InfoVySayAA14GlassContainerO5EntryVGAI8StableIDVAA15ModifiedContentVyANyAA6ZStackVyAA0giH4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA07_LayoutY0VyAA0G12EffectLayoutARLLV3KeyVGGGAVyAA010TransitionY3KeyVGG_GMaTm_0);
    _ViewInputs.base.modify();

    v94 = v175;
    LOBYTE(v182[0]) = specialized Set.contains(_:)(v89, v175);
    _ViewInputs.base.modify();
    v47 = 0;
    v159 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v95 = v94 + 56;
    v167 = 1;
    v169 = v80;
    v170 = v81;
    while (1)
    {
      if (v47 == v80)
      {
        goto LABEL_116;
      }

      v7 = v47;
      v88(v180, (v171 + 344 * v47));
      if (!v176 && !v166)
      {
        v176 = 0;
LABEL_62:
        outlined destroy of GlassContainer.Entry(v183);

        v43 = v154;
        v86 = v164;
        v47 = v165;
        v80 = v163;
        goto LABEL_63;
      }

      v96 = v180[0];
      v97 = v174;
      if (*(v174 + 16) && (v98 = specialized __RawDictionaryStorage.find<A>(_:)(v180[0]), (v99 & 1) != 0))
      {
        v100 = *(*(v97 + 56) + 8 * v98);
        swift_beginAccess();
        *(v100 + 104) = v47;
        v101 = v177;
        v102 = *(v177 + v162);
        *(v100 + 112) = v47;
        *(v100 + 120) = v102;
        *(v100 + 128) = *(v101 + v172);
        --v176;
        LODWORD(v102) = *(v100 + 134);
        v43 = v102 ^ 1;
        v103 = v102 == 0;
        v104 = v165;
        if (v103)
        {
          v104 = v47;
        }

        v165 = v104;
        v159 = v47;
      }

      else
      {
        v43 = 0;
      }

      ++v47;
      if (*(v175 + 16))
      {
        v105 = v175;
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v96);
        v106 = Hasher._finalize()();
        v107 = -1 << *(v105 + 32);
        v108 = v106 & ~v107;
        if ((*(v95 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
        {
          break;
        }
      }

LABEL_53:
      if (v43)
      {
LABEL_37:
        v80 = v169;
        if (v47 == v169)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v110 = v168;
        swift_beginAccess();
        v111 = v110 + *(v173 + 72);
        v43 = *(v161 + 20);
        v80 = v169;
        if ((v167 & 1) == 0)
        {
          if (v163 == v7)
          {
            v7 = v164;
            if (v47 < v164)
            {
              goto LABEL_123;
            }
          }

          else
          {
            IndexSet.insert(integersIn:)();
          }
        }

        v112 = v111 + v43;
        v164 = v7;
        *v112 = v7;
        *(v112 + 8) = v47;
        *(v112 + 16) = 0;
        swift_endAccess();
        v167 = 0;
        v163 = v47;
        if (v47 == v80)
        {
          goto LABEL_62;
        }
      }
    }

    v109 = ~v107;
    while (*(*(v175 + 48) + 8 * v108) != v96)
    {
      v108 = (v108 + 1) & v109;
      if (((*(v95 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v178, v96);
    swift_endAccess();
    --v166;
    goto LABEL_37;
  }
}

{
  v2 = v1;
  v187[1] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v175 = *a1;
  v176 = v4;
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v173 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v174 = (&v153 - v11);
  _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v153 - v14;
  v168 = *(v2 + 152);
  if (!AGSubgraphIsValid())
  {
    return;
  }

  v169 = v5;
  v170 = v8;
  v171 = v7;
  v161 = v13;
  v16 = AGMakeUniqueID();
  v17 = *(*v2 + 232);
  *(v2 + v17) = v16;
  v18 = *(*v2 + 240);
  LODWORD(v167) = *(v2 + v18);
  v172 = v18;
  *(v2 + v18) = v167 + 1;
  v19 = v2;
  specialized ForEachState.invalidateViewCounts()();
  swift_beginAccess();
  v20 = *(v2 + 192);
  v21 = *(v2 + 208);
  v177 = v2;
  v165 = v17;
  if (v20 && !v21)
  {
    v22 = *(v2 + 176);
    v23 = *(v2 + 184);
    v24 = __OFSUB__(v23, v22);
    v25 = v23 - v22;
    if (v24)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v26 = a1[1];
    v27 = v26 - *a1;
    if (__OFSUB__(v26, *a1))
    {
      goto LABEL_147;
    }

    v173 = v9;
    v174 = v6;
    if (v25 != v27)
    {
      v185 = 0;
      v186 = 0xE000000000000000;
      _StringGuts.grow(_:)(204);
      MEMORY[0x193ABEDD0](0xD0000000000000A2, 0x800000018DD7CEB0);
      MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
      v184 = v27;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = &v185;
      MEMORY[0x193ABEDD0](v28);

      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
      if (!*(v2 + 192))
      {
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v29 = *(v2 + 176);
      v30 = *(v2 + 184);
      v24 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      if (v24)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v184 = v31;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v32);

      MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
      specialized static Log.externalWarning(_:)(v185, v186);

      if (!*(v2 + 192))
      {
        goto LABEL_164;
      }
    }

    v33 = *(v2 + 176);
    v168 = *(v2 + 184);
    swift_beginAccess();
    v34 = *(v2 + 176);
    v35 = *(v2 + 184);
    v20 = *(v2 + 192);
    v2 = v177[25];
    v36 = v177[26];
    v37 = v177[27];
    v9 = v177[28];
    outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(a1, &v185, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
    v38 = v35;
    v39 = v177;
    outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v34, v38, v20, v2, v36, v37);
    v40 = v176;
    v39[22] = v175;
    v39[23] = v40;
    v41 = v174;
    v42 = v169;
    v43 = v170;
    v39[24] = v174;
    v39[25] = v42;
    v44 = v171;
    v39[26] = v43;
    v39[27] = v44;
    v39[28] = v173;
    if (v41)
    {
      v45 = v168;
      v39[22] = v33;
      v39[23] = v45;
      swift_endAccess();
      swift_beginAccess();
      v46 = v39[34];
      v48 = *(v46 + 64);
      v19 = v46 + 64;
      v47 = v48;
      v49 = 1 << *(v39[34] + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & v47;
      v52 = (v49 + 63) >> 6;

      v54 = 0;
      v55 = v165;
      v56 = v167;
      while (v51)
      {
LABEL_19:
        v58 = *(*(v53 + 56) + ((v54 << 9) | (8 * __clz(__rbit64(v51)))));
        v51 &= v51 - 1;
        *(v58 + 120) = *(v39 + v55);
        if (*(v58 + 128) == v56)
        {
          *(v58 + 128) = *(v39 + v172);
        }
      }

      while (1)
      {
        v57 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v57 >= v52)
        {

          return;
        }

        v51 = *(v19 + 8 * v57);
        ++v54;
        if (v51)
        {
          v54 = v57;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v59 = v177[22];
  v60 = v177[23];
  v61 = v177[25];
  v62 = v177[27];
  v164 = v177[28];
  v166 = v62;
  v167 = type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(a1, &v185, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, type metadata accessor for ForEach, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);
  v63 = v176;
  v177[22] = v175;
  v177[23] = v63;
  v177[24] = v6;
  v64 = v170;
  v177[25] = v169;
  v177[26] = v64;
  v177[27] = v171;
  v177[28] = v9;
  v65 = v59;
  v66 = v177;
  outlined consume of ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>?(v65, v60, v20, v61, v21, v166);
  v67 = v15;
  v68 = MEMORY[0x1E69E7CD0];
  *v67 = MEMORY[0x1E69E7CD0];
  v67[1] = v68;
  swift_storeEnumTagMultiPayload();
  v69 = *(*v66 + 208);
  swift_beginAccess();
  v156 = v69;
  v157 = v67;
  outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v67, v66 + v69, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_endAccess();
  v70 = *a1;
  v71 = a1[1];
  v187[0] = a1[4];
  v73 = v173;
  v72 = v174;
  v162 = v70;
  *v174 = v70;
  v72[1] = v71;
  v175 = v71;
  v74 = v72 + *(v73 + 72);
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v187, &v185, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, v167);
  IndexSet.init()();
  v160 = type metadata accessor for IndexSetBuilder(0);
  v75 = &v74[*(v160 + 20)];
  *v75 = 0;
  *(v75 + 1) = 0;
  v75[16] = 1;
  v76 = (v72 + *(v73 + 76));
  *v76 = v68;
  v76[1] = v68;
  v72[2] = v187[0];
  if (*(v66 + 172))
  {
    __break(1u);
    goto LABEL_162;
  }

  v77 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *(v66 + *(*v66 + 216)) = Counter;
  v79 = *v66;
  v80 = *(*v66 + 224);
  if ((*(v66 + v80) & 0x8000000000000000) != 0)
  {
    v86 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_159;
  }

  v155 = *(*v66 + 224);
  swift_beginAccess();
  v81 = v66[34];
  v176 = *(v81 + 16);
  v19 = *(*v66 + 272);
  swift_beginAccess();
  v154 = v19;
  v2 = *(v66 + v19);
  v166 = *(v2 + 16);
  v181 = v68;
  v82 = v162;
  if (v162 == v175)
  {

    v164 = 0;
    v83 = 0;
    v84 = 0;
    v159 = 0;
    v85 = 1;
    v66 = v177;
    goto LABEL_75;
  }

  v87 = v187[0];
  if (!v187[0])
  {
    goto LABEL_165;
  }

  v88 = v162;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v187, v183, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);

  v89 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v90)
  {

    v91 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
  }

  else
  {
    v92 = v89;
    v87 = swift_allocObject();
    *(v87 + 16) = v92;
    v91 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
  }

  v93 = v91;
  v183[0] = v82;
  (v91)(v182, v183);
  v94 = v182[0];
  v95 = *(v81 + 16);
  v170 = v93;
  v171 = v87;
  if (v95 && (v96 = specialized __RawDictionaryStorage.find<A>(_:)(v182[0]), (v97 & 1) != 0))
  {
    v19 = *(*(v81 + 56) + 8 * v96);
  }

  else
  {
    v19 = 0;
  }

  v183[0] = v19;
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item?(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item?, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  _ViewInputs.base.modify();

  LOBYTE(v183[0]) = specialized Set.contains(_:)(v94, v2);
  _ViewInputs.base.modify();
  v9 = 0;
  v163 = 0;
  v164 = 0;
  v83 = 0;
  v159 = 0;
  v20 = v2 + 56;
  v98 = v175;
  if (v175 <= v82)
  {
    v98 = v82;
  }

  v169 = v98;
  v167 = 1;
  while (1)
  {
    if (v88 == v175)
    {
      goto LABEL_72;
    }

    v183[0] = v88;
    v19 = v171;
    v170(v180, v183);
    v99 = v180[0];
    if (!v176 && !v166)
    {
      break;
    }

    if (*(v81 + 16) && (v100 = specialized __RawDictionaryStorage.find<A>(_:)(v180[0]), (v101 & 1) != 0))
    {
      v102 = *(*(v81 + 56) + 8 * v100);
      swift_beginAccess();
      *(v102 + 104) = v88;
      v103 = v177;
      v104 = *(v177 + v165);
      *(v102 + 112) = v9;
      *(v102 + 120) = v104;
      *(v102 + 128) = *(v103 + v172);
      --v176;
      LODWORD(v104) = *(v102 + 134);
      v19 = v104 ^ 1;
      v105 = v104 == 0;
      v106 = v163;
      if (v105)
      {
        v106 = v9;
      }

      v163 = v106;
      v159 = v9;
      if (!*(v2 + 16))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v19 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_53;
      }
    }

    v107 = MEMORY[0x193AC1170](*(v2 + 40), v99);
    v108 = -1 << *(v2 + 32);
    v109 = v107 & ~v108;
    if ((*(v20 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
    {
      v110 = ~v108;
      while (*(*(v2 + 48) + 8 * v109) != v99)
      {
        v109 = (v109 + 1) & v110;
        if (((*(v20 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      swift_beginAccess();
      v19 = &v181;
      specialized Set._Variant.insert(_:)(v180, v99);
      swift_endAccess();
      --v166;
      goto LABEL_67;
    }

LABEL_53:
    if (!v19)
    {
      v111 = v174;
      swift_beginAccess();
      v19 = v111 + *(v173 + 72);
      v112 = *(v160 + 20);
      if (v167)
      {
        v83 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_144;
        }

        if (v83 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_65;
      }

      if (v83 == v9)
      {
        v83 = v9 + 1;
        v113 = v164;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_149;
        }

        if (v83 < v164)
        {
          goto LABEL_150;
        }
      }

      else
      {
        IndexSet.insert(integersIn:)();
        v83 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_148;
        }

        if (v83 < v9)
        {
          goto LABEL_151;
        }

LABEL_65:
        v113 = v9;
      }

      v114 = v19 + v112;
      v164 = v113;
      *v114 = v113;
      *(v114 + 8) = v83;
      *(v114 + 16) = 0;
      swift_endAccess();
      v167 = 0;
      v82 = v162;
    }

LABEL_67:
    if (v175 < v82)
    {
      goto LABEL_135;
    }

    if (v88 == v169)
    {
      goto LABEL_136;
    }

    ++v88;
    v24 = __OFADD__(v9++, 1);
    if (v24)
    {
      __break(1u);
LABEL_72:

      goto LABEL_74;
    }
  }

  v176 = 0;
LABEL_74:
  outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v187, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.IDGenerator, type metadata accessor for ForEach.IDGenerator, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>);

  v66 = v177;
  v84 = v163;
  v85 = v167;
LABEL_75:
  v115 = *(*v66 + 248);
  if ((*(v115 + v66) & 1) == 0)
  {
    v116 = v174;
    swift_beginAccess();
    v19 = v116 + *(v173 + 72);
    if ((v85 & 1) == 0)
    {
      v117 = v19 + *(v160 + 20);
      if (v164 >= v84)
      {
        *v117 = 0;
        *(v117 + 8) = 0;
        *(v117 + 16) = 1;
      }

      else if (v83 >= v84)
      {
        *v117 = v164;
        *(v117 + 8) = v84;
        *(v117 + 16) = 0;
      }
    }

    IndexSet.remove(integersIn:)();
    swift_endAccess();
  }

  if (!v176)
  {

    goto LABEL_155;
  }

  v167 = v115;
  v9 = MEMORY[0x1E69E7CC0];
  v180[0] = MEMORY[0x1E69E7CC0];
  v118 = v81 + 64;
  v2 = _HashTable.startBucket.getter();
  v20 = *(v81 + 36);
  v175 = 1 << *(v81 + 32);
  v169 = v81 + 72;
  v170 = 0;
  v171 = v20;
  v158 = v81;
  while (v2 != v175)
  {
    if (v2 < 0)
    {
      goto LABEL_137;
    }

    v19 = 1 << *(v81 + 32);
    if (v2 >= v19)
    {
      goto LABEL_137;
    }

    v119 = v9;
    v120 = v2 >> 6;
    v9 = 1 << v2;
    if ((*(v118 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
    {
      goto LABEL_138;
    }

    if (v20 != *(v81 + 36))
    {
      goto LABEL_139;
    }

    v121 = *(*(v81 + 56) + 8 * v2);
    if (*(v121 + 134) == 1)
    {
    }

    else
    {
      v122 = v118;
      v123 = *(v121 + 128);
      v124 = *(v177 + v172);

      if (v123 == v124)
      {
        v20 = v171;
        v118 = v122;
        v81 = v158;
      }

      else
      {

        MEMORY[0x193ABF170](v125);
        v118 = v122;
        if (*((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v166 = *((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v119 = v180[0];
        --v176;
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v179, *(v121 + 32));
        swift_endAccess();
        v81 = v158;
        v19 = 1 << *(v158 + 32);
        v20 = v171;
      }
    }

    if (v2 >= v19)
    {
      goto LABEL_140;
    }

    v126 = *(v118 + 8 * v120);
    if ((v126 & v9) == 0)
    {
      goto LABEL_141;
    }

    if (v20 != *(v81 + 36))
    {
      goto LABEL_142;
    }

    v127 = v126 & (-2 << (v2 & 0x3F));
    if (v127)
    {

      v2 = __clz(__rbit64(v127)) | v2 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v128 = v120 << 6;
      v129 = v120 + 1;
      v130 = (v169 + 8 * v120);
      while (v129 < (v19 + 63) >> 6)
      {
        v132 = *v130++;
        v131 = v132;
        v128 += 64;
        ++v129;
        if (v132)
        {
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v20, 0);

          v2 = __clz(__rbit64(v131)) + v128;
          goto LABEL_85;
        }
      }

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v20, 0);

      v2 = v19;
    }

LABEL_85:
    v9 = v119;
    if (!v176)
    {
      goto LABEL_109;
    }
  }

  v2 = v175;
LABEL_109:

  v19 = v9 >> 62;
  if (v9 >> 62)
  {
LABEL_153:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_111;
    }

    goto LABEL_154;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_111:
    v133 = 0;
    v134 = v9 & 0xFFFFFFFFFFFFFF8;
    v175 = v9 & 0xFFFFFFFFFFFFFF8;
    v176 = v9 & 0xC000000000000001;
    if (v9 < 0)
    {
      v134 = v9;
    }

    v172 = v19;
    v173 = v134;
    v169 = v9;
    do
    {
      if (v176)
      {
        v136 = MEMORY[0x193AC03C0](v133, v9);
        v137 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v133 >= *(v175 + 16))
        {
          goto LABEL_143;
        }

        v136 = *(v9 + 8 * v133 + 32);

        v137 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          goto LABEL_134;
        }
      }

      AGSubgraphApply();
      AGSubgraphRemoveChild();
      *(v136 + 133) = 256;
      v138 = *(v136 + 24) - 1;
      *(v136 + 24) = v138;
      if (!v138)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v140 = Strong;
          swift_beginAccess();
          v141 = *(v140 + 272);
          if (*(v141 + 16) && (v142 = specialized __RawDictionaryStorage.find<A>(_:)(*(v136 + 32)), (v143 & 1) != 0))
          {
            v144 = v142;
            v145 = *(v141 + 36);
            swift_beginAccess();
            specialized Dictionary._Variant.remove(at:)(&v178, v144, v145);
            swift_endAccess();
          }

          else
          {

            v147 = v170;
            v148 = specialized _NativeDictionary.filter(_:)(v146, v136, specialized _NativeDictionary.extractDictionary(using:count:));
            v170 = v147;

            *(v140 + 272) = v148;
          }

          v9 = v169;
          v19 = v172;
        }

        IsValid = AGSubgraphIsValid();
        v20 = v171;
        if (IsValid)
        {
          AGSubgraphRef.willInvalidate(isInserted:)(1);
          v19 = v172;
          AGSubgraphInvalidate();
        }
      }

      if (v19)
      {
        v135 = __CocoaSet.count.getter();
      }

      else
      {
        v135 = *(v175 + 16);
      }

      ++v133;
    }

    while (v137 != v135);
  }

LABEL_154:

  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v2, v20, 0);
  v66 = v177;
  v115 = v167;
LABEL_155:
  if (*(v115 + v66))
  {
    v86 = v159;
  }

  else
  {
    v86 = 0x7FFFFFFFFFFFFFFFLL;
  }

  swift_beginAccess();
  *(v66 + v154) = v181;

  v79 = *v66;
  v80 = v155;
LABEL_159:
  *(v66 + *(v79 + 248)) = 0;
  *(v66 + v80) = v86;
  v150 = v174;
  swift_beginAccess();
  v151 = v157;
  outlined init with copy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v150, v157, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_storeEnumTagMultiPayload();
  v152 = v156;
  swift_beginAccess();
  outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(v151, v66 + v152, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
  swift_endAccess();
  outlined destroy of ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.EditsBuilder(v150, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVySnySiGSiAA15ModifiedContentVyAHyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVG_GMaTm_0);
}

uint64_t MappedViews.MappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = *a2;
  v9 = *(a4 + 8);
  v31 = *a4;
  v32 = v9;
  v10 = *(v7 + 88);
  v11 = *(v7 + 56);
  v34[0] = *(v7 + 40);
  v34[1] = v11;
  v35 = *(v7 + 72);
  v12 = *(v7 + 96);
  v13 = a7[4];
  v14 = a7[5];
  *&v30[36] = v35;
  *&v30[20] = v11;
  *&v30[4] = v34[0];
  *v29 = v10;
  *&v29[4] = *v30;
  *&v29[20] = *&v30[16];
  *&v29[36] = *&v30[32];
  *&v29[52] = HIDWORD(v35);
  *&v29[56] = v12;
  v15 = a7[3];
  v19 = a7[2];
  v20 = v15;
  v21 = v13;
  v22 = v14;
  v23 = a1;
  v24 = v8;
  v25 = a3;
  v26 = BYTE4(a3) & 1;
  v27 = a5;
  v28 = a6;
  outlined init with copy of _GraphInputs(v34, &v36);

  *&v36 = v19;
  *(&v36 + 1) = v15;
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v16 = type metadata accessor for MappedViews.Transform(0, &v36);
  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v29, partial apply for closure #1 in MappedViews.MappedList.applyNodes(from:style:list:transform:to:), &v18, MEMORY[0x1E69E6370], v16, &protocol witness table for MappedViews<A, B>.Transform);
  v36 = *v29;
  v37 = *&v29[16];
  v38 = *&v29[32];
  v39 = *&v29[48];
  (*(*(v16 - 8) + 8))(&v36, v16);
  return v33;
}

uint64_t initializeWithCopy for MappedViews.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;

  return a1;
}

double MappedViews.Transform.apply(sublist:)(void *a1, uint64_t a2)
{
  v5 = v2[1];
  *v21 = *v2;
  *&v21[16] = v5;
  v6 = v2[3];
  *&v21[32] = v2[2];
  *&v21[48] = v6;
  outlined init with copy of AnyTrackedValue((a1 + 4), v20);
  v17 = *&v21[8];
  v18 = *&v21[24];
  *v19 = *&v21[40];
  v7 = a1[3];
  v8 = a1[2];
  outlined init with copy of _GraphInputs(&v21[8], v16);

  v9 = AGCreateWeakAttribute();
  v10 = *v21;
  v11 = *&v21[56];

  __swift_destroy_boxed_opaque_existential_1(a1 + 4);
  v12 = *(a2 + 32);
  v16[0] = *(a2 + 16);
  v16[1] = v12;
  a1[7] = type metadata accessor for MappedViews.MappedElements(0, v16);
  a1[8] = &protocol witness table for MappedViews<A, B>.MappedElements;
  v13 = swift_allocObject();
  a1[4] = v13;
  outlined init with take of AnyTrackedValue(v20, v13 + 16);
  v14 = v18;
  *(v13 + 56) = v17;
  *(v13 + 72) = v14;
  result = v19[0];
  *(v13 + 88) = *v19;
  *(v13 + 104) = v8;
  *(v13 + 112) = v7;
  *(v13 + 120) = v9;
  *(v13 + 128) = v10;
  *(v13 + 136) = v11;
  return result;
}

uint64_t sub_18D234088()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 48);
  v19[2] = *(a3 + 32);
  v19[3] = v12;
  v19[4] = *(a3 + 64);
  v20 = *(a3 + 80);
  v13 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v13;
  AGWeakAttributeGetAttribute();
  v14 = swift_allocObject();
  v15 = *(v7 + 96);
  v16 = *a2;
  *(v14 + 20) = *(v7 + 92);
  *(v14 + 24) = v15;
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v14 + 16) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;

  closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(a1, _s7SwiftUI11_ViewInputsVAcA01_C7OutputsVIegnr_AESgSbIgngrd_A2cEIegnr_AFSbIegngrd_TRTA_0, v17, v7, a2, v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_18D2342D0()
{

  return swift_deallocObject();
}

uint64_t closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v8 = *(a6 + 48);
  v13[2] = *(a6 + 32);
  v13[3] = v8;
  v13[4] = *(a6 + 64);
  v14 = *(a6 + 80);
  v9 = *(a6 + 16);
  v13[0] = *a6;
  v13[1] = v9;
  return (*(v7 + 16))(a1, a5, v13) & 1;
}

void closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _OWORD *, uint64_t (*)(), uint64_t, __n128), uint64_t a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  v17 = *(a2 + 48);
  v37[2] = *(a2 + 32);
  v37[3] = v17;
  v37[4] = *(a2 + 64);
  v38 = *(a2 + 80);
  v18 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v18;
  v29 = a13;
  v30 = a14;
  v19 = type metadata accessor for MappedViews.MappedElements(0, &v29);
  (*(*(v19 - 8) + 16))(&v29, a11, v19);
  v20 = swift_allocObject();
  v21 = v34;
  *(v20 + 136) = v33;
  *(v20 + 152) = v21;
  v22 = v36;
  *(v20 + 168) = v35;
  *(v20 + 184) = v22;
  v23 = v30;
  *(v20 + 72) = v29;
  *(v20 + 88) = v23;
  v24 = v32;
  *(v20 + 104) = v31;
  *(v20 + 16) = a13;
  *(v20 + 32) = a14;
  *(v20 + 48) = a5;
  *(v20 + 56) = a8;
  *(v20 + 60) = a9;
  *(v20 + 64) = a10 & 1;
  *(v20 + 120) = v24;
  *(v20 + 200) = a12;
  *(v20 + 208) = a3;
  *(v20 + 216) = a4;

  (a6)(a1, v37, partial apply for closure #1 in closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:), v20);

  swift_beginAccess();
  v25 = *(a5 + 16);
  if (v25 == 0x7FFFFFFF)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v25 + 1;
  }
}

uint64_t sub_18D2345E8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 76) | (*(v4 + 80) << 32);
  closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)(a1, a2, a3, a4, *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), v7, SBYTE4(v7), *(v4 + 88), *(v4 + 96), *(v4 + 16), *(v4 + 32));
  return v5 & 1;
}

uint64_t initializeWithCopy for MappedViews.MappedElements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

void *closure #1 in closure #1 in closure #1 in MappedViews.MappedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  v85 = *MEMORY[0x1E69E9840];
  v14 = a1[3];
  v81 = a1[2];
  v82 = v14;
  v83 = a1[4];
  v84 = *(a1 + 20);
  v15 = a1[1];
  v79 = *a1;
  v80 = v15;
  swift_beginAccess();
  v16 = *(a2 + 24);

  *&v62 = *(a2 + 16);
  *(&v62 + 1) = v16;
  LODWORD(v63) = a3;
  *(&v63 + 4) = AGCreateWeakAttribute();
  v36 = *(&a10 + 1);
  v68 = a10;
  v69 = a11;
  v37 = type metadata accessor for MappedViews.ElementView(0, &v68);
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.ElementView, v37);
  v38 = v17;
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v62, partial apply for closure #1 in Attribute.init<A>(_:), v35, v37, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  v20 = v68;
  swift_beginAccess();
  v21 = *(a2 + 24);
  *&v68 = *(a2 + 16);
  *(&v68 + 1) = v21;

  _ViewList_ID.Canonical.init(id:)(&v68, &v62);
  v22 = *(&v62 + 1);
  *&v54[0] = AGCreateWeakAttribute();
  BYTE8(v54[0]) = 0;
  *&v56 = v62;
  *(&v56 + 1) = v22;
  swift_beginAccess();
  type metadata accessor for WeakAttribute();
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v23 = *(a5 + 56);
  v77[0] = *(a5 + 40);
  v77[1] = v23;
  v78 = *(a5 + 72);
  v74 = v77[0];
  v75 = v23;
  v76 = v78;
  outlined init with copy of _GraphInputs(v77, &v68);
  if (a6)
  {

    _GraphInputs.makeReusable(indirectMap:)(v24);
  }

  v64 = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v62 = v79;
  v63 = v80;
  v56 = v74;
  v57 = v75;
  v58 = v76;
  outlined init with copy of _ViewInputs(&v79, &v68);
  _GraphInputs.merge(_:ignoringPhase:)(&v56, 0);
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5(a7, a8);
  _GraphValue.init(_:)(v20, v34);
  v25 = v34[0];
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v68 = v62;
  v69 = v63;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v70;
  v51 = v71;
  v52 = v72;
  v53 = v73;
  v48 = v68;
  v49 = v69;
  v27 = v70;
  LODWORD(v50) = 0;
  LODWORD(v39[0]) = v25;
  v54[0] = v68;
  v54[1] = v69;
  v55 = v73;
  v54[3] = v71;
  v54[4] = v72;
  v54[2] = v50;
  v44 = v50;
  v45 = v71;
  v46 = v72;
  v47 = v73;
  v42 = v68;
  v43 = v69;
  v28 = *(*(&a11 + 1) + 24);
  outlined init with copy of _ViewInputs(&v68, &v56);
  outlined init with copy of _ViewInputs(v54, &v56);
  v28(v39, &v42, *(&a10 + 1), *(&a11 + 1));
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v56 = v42;
  v57 = v43;
  outlined destroy of _ViewInputs(&v56);
  LODWORD(v50) = v27;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v48);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v64;
  v39[3] = v65;
  v39[4] = v66;
  v40 = v67;
  v39[0] = v62;
  v39[1] = v63;
  outlined destroy of _ViewInputs(v39);
  v41[0] = v74;
  v41[1] = v75;
  v41[2] = v76;
  outlined destroy of _GraphInputs(v41);
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  return outlined destroy of _ViewInputs(&v42);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MappedViews<A, B>.ElementView(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for MappedViews<A, B>.ElementView, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t initializeWithCopy for MappedViews.ElementView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for MappedViewElement.BodyInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v4, v6) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), !AGCompareValues()))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<MappedViewElement.BodyInput>, &type metadata for MappedViewElement.BodyInput, &protocol witness table for MappedViewElement.BodyInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for MappedViewElement.BodyInput, 0, v5);
  }
}

void *static MappedViewElement.Placeholder._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v36 = *(a1 + 32);
  v37 = v3;
  v5 = *(a1 + 48);
  v38 = *(a1 + 64);
  v6 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v6;
  v31 = v36;
  v32 = v5;
  v33 = *(a1 + 64);
  v39 = *(a1 + 80);
  v34 = *(a1 + 80);
  v29 = v35[0];
  v30 = v4;
  outlined init with copy of _ViewInputs(v35, &v23);
  v7 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5();
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v19[2] = v31;
    v19[3] = v32;
    v19[4] = v33;
    v20 = v34;
    v19[0] = v29;
    v19[1] = v30;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v13 = v29;
    v14 = v30;
    outlined init with copy of _ViewInputs(v19, &v23);
    v9(&v13);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, v10);
    v21[2] = v15;
    v21[3] = v16;
    v21[4] = v17;
    v22 = v18;
    v21[0] = v13;
    v21[1] = v14;
    outlined destroy of _ViewInputs(v21);
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;
    return outlined destroy of _ViewInputs(&v23);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    v12 = *MEMORY[0x1E698D3F8];
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;
    result = outlined destroy of _ViewInputs(&v23);
    *(a2 + 12) = v12;
  }

  return result;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA17MappedViewElementV04BodyG033_0869CE5E72C6BD6754FF980DEA862555LLV_AA01_K7OutputsVAA01_kD0VcTt0g5()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for MappedViewElement.BodyInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA010MappedViewQ0V9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt0B5(v1, v7);
  if (v2 && (v3 = *(v2 + 72)) != 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17MappedViewElementV9BodyInput33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5(v0, v4);

  return v5;
}

uint64_t closure #1 in MappedViews.ElementView.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a8;
  v13 = a3;
  v15 = a1;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v16 = HIDWORD(a1);
  v17 = HIDWORD(a3);
  type metadata accessor for MappedViews.ElementView(0, &v33);
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = v15;
  v28 = v16;
  v29 = a2;
  v30 = v13;
  v31 = v17;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v18 = type metadata accessor for MappedViews(0, &v33);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in MappedViews.ElementView.value.getter, v22, v18, a6, a9);
}

double View.enumerated<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v7, v15);
  MappedViews.init(content:transform:)(v17, a1, a2, a3, a4, a5, a6, a7);

  return result;
}

uint64_t MappedViews.init(content:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for MappedViews(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

double closure #1 in closure #1 in MappedViews.ElementView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v14 = *(a1 + *(type metadata accessor for MappedViews(0, &v21) + 52));

  v19[0] = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  type metadata accessor for MappedViews.ElementView(0, v19);
  MappedViews.ElementView.list.getter(&v21);
  v15 = v24;
  if (v24)
  {
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(&v21, v24);
    (*(v16 + 56))(v19, v15, v16);
    v17 = v19[0];
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    outlined destroy of ViewList?(&v21);
    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = a2;
  v22 = a3;
  v23 = v17;
  v14(&v21);

  return result;
}

double MappedViews.ElementView.list.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BodyHeadOutdentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BodyHeadOutdentKey>>);
    }
  }
}

uint64_t SubscriptionLifetime.Connection.receive(_:)(uint64_t a1, uint64_t a2)
{
  if (swift_weakLoadStrong())
  {
    if (SubscriptionLifetime.shouldAcceptValue(for:)(*(v2 + *(a2 + 60)), v4, v5, v6))
    {
      dispatch thunk of Subscriber.receive(_:)();
    }
  }

  return static Subscribers.Demand.none.getter();
}

uint64_t SubscriptionLifetime.shouldAcceptValue(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = type metadata accessor for SubscriptionLifetime.StateType(0, v7, *(*v4 + 88), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = *(v6 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v18[-6], "to subscriber subscription subscriptionID ");
    v18[1] = v7;
    v18[2] = type metadata accessor for AnyCancellable();
    v18[3] = type metadata accessor for Subscription();
    v18[4] = MEMORY[0x1E69E6530];
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    v15 = *(TupleTypeMetadata + 64);
    v16 = *&v11[*(TupleTypeMetadata + 80)];
    __swift_destroy_boxed_opaque_existential_1(&v11[v15]);
    (*(*(v7 - 8) + 8))(v11, v7);
    if (v16 == a1)
    {
      return 1;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

unsigned __int8 *assignWithTake for _ConditionalContent(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

void specialized static AppearanceEffect.didReinsert(attribute:)()
{
  AGGraphGetAttributeInfo();
  *(v0 + 41) = 0;
  if (*(v0 + 48) != *MEMORY[0x1E698D3F8])
  {
    AGGraphInvalidateValue();
    v1 = AGGraphGetAttributeGraph();
    Context = AGGraphGetContext();
    if (Context)
    {
      v3 = Context;

      if ((*(*v3 + 192))())
      {
        v5 = v4;
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC28RemovableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_nTm(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>(0, a2, a3, a4, a5);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v9 = *(i - 1);
      v15 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v5)
      {
        return v7;
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v15 = *v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = result;
      a5();
      result = v24;
      goto LABEL_8;
    }

    a6(v21, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v10;
  if (v22)
  {
    v27 = (*(v26 + 56) + 16 * result);
    *v27 = a1;
    v27[1] = a2;
  }

  else
  {

    return a7(result, a3, a1, a2, v26);
  }

  return result;
}

void closure #1 in AGSubgraphRef.didReinsert()(uint64_t a1)
{
  AttributeInfo = AGGraphGetAttributeInfo();
  static RemovableAttributeDescriptor.cachedConformance(of:)(*AttributeInfo, v3);
  if (v3[0])
  {
    (*(v3[1] + 24))(a1);
  }
}

void specialized closure #1 in AGSubgraphRef.willRemove()(uint64_t a1)
{
  AttributeInfo = AGGraphGetAttributeInfo();
  static RemovableAttributeDescriptor.cachedConformance(of:)(*AttributeInfo, v3);
  if (v3[0])
  {
    (*(v3[1] + 16))(a1);
  }
}

void static RemovableAttributeDescriptor.cachedConformance(of:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static RemovableAttributeDescriptor.typeCache;
    if (*(static RemovableAttributeDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
    {
      v10 = *(v4[7] + 16 * v5);
      swift_endAccess();
      *a2 = v10;
    }

    else
    {
      swift_endAccess();
      _removableAttributeProtocolDescriptor();
      v7 = swift_conformsToProtocol();
      if (v7)
      {
        v8 = v7;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = static RemovableAttributeDescriptor.typeCache;
        static RemovableAttributeDescriptor.typeCache = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, a1, isUniquelyReferenced_nonNull_native);
        static RemovableAttributeDescriptor.typeCache = v11;
        swift_endAccess();
        *a2 = a1;
        *(a2 + 8) = v8;
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }
    }
  }
}

void *one-time initialization function for typeCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC28RemovableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static RemovableAttributeDescriptor.typeCache = result;
  return result;
}

{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI15TypeConformanceVyAC32InvalidatableAttributeDescriptor33_372497ED4F569296C4450147CA418CD0LLVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static InvalidatableAttributeDescriptor.typeCache = result;
  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for TypeConformance<RemovableAttributeDescriptor>, &type metadata for RemovableAttributeDescriptor, &protocol witness table for RemovableAttributeDescriptor, type metadata accessor for TypeConformance);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
    }
  }
}

void *destroy for AttributeInvalidatingSubscriber.StateType(void *a1)
{
  if (a1[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

Swift::Void __swiftcall AnimatableAttribute.destroy()()
{
  v3 = v2 + *(v0 + 40);
  if (*(v3 + *(type metadata accessor for AnimatableAttributeHelper(0, *(v0 + 16), *(v0 + 24), v1) + 48)))
  {
    AnimatorState.removeListeners()();
  }
}

uint64_t Material.Layer.SDFLayer.Contents.Gradient.colors.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v10 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        v8 = *v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
        v6 = v8;
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 16 * v5 + 32) = v6;
      v4 = (v4 + 20);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void one-time initialization function for ultraThin()
{
  dword_1ED51CC2C = 0;
  static Material.ultraThin = 0;
  byte_1ED51CC28 = 3;
}

uint64_t static Material.ultraThin.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for ultraThin != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.ultraThin;
  v3 = dword_1ED51CC2C;
  *a1 = static Material.ultraThin;
  v4 = byte_1ED51CC28;
  *(a1 + 8) = byte_1ED51CC28;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void specialized static AppearanceEffect.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  if (*(v0 + 8) != 1 && *(v0 + 40) == 1)
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = *(v0 + 32);
      v3 = v0;
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = swift_allocObject();
      *(v5 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v5 + 24) = v4;
      v6 = 2;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);

      static Update.enqueueAction(reason:_:)(&v6, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);

      v0 = v3;
    }

    *(v0 + 40) = 0;
  }

  *(v0 + 41) = 1;
}

double static Animation.easeInOut.getter(__n128 a1, __n128 a2)
{
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 32) = a2;
  result = -2.0;
  *(v2 + 48) = xmmword_18DDAF520;
  *(v2 + 64) = 0;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *Font.feature(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>(0);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return v6;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureSettingModifier>, lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    v3 = v2;
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>();
    v6 = type metadata accessor for FontBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier()
{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier);
  }
}

void lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>()
{
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureSettingModifier>, lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier, &type metadata for Font.FeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    swift_getWitnessTable(protocol conformance descriptor for Font.ModifierProvider<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureSettingModifier> and conformance Font.ModifierProvider<A>);
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v15;
    v9 = *(type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v14, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v13 + 1;
      outlined init with take of AnyTrackedValue(v14, v8 + 40 * v13 + 32);
      v10 += v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v142 = a7;
  *(&v149 + 1) = a5;
  v150 = a6;
  *&v149 = a4;
  v170 = a2;
  v147 = a8;
  v140 = type metadata accessor for AttributedString();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v141 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v148 = v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v144 = v128 - v25;
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Morphology?, MEMORY[0x1E6967EA8]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v146 = v128 - v27;
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>(0);
  v29 = v28;
  v145 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocalizedStringKey.FormatArgument(a1, v34, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v34, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    v45 = v147;
LABEL_11:
    *&v152 = v170;
    *(&v152 + 1) = a3;
    v161[0] = v149;
    v46 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v162, &v152);
    *v150 = (*v150 | v46) & 1;
    return outlined init with take of AnyTrackedValue(&v162, v45);
  }

  v136 = a1;
  v137 = v13;
  v35 = a3;
  v36 = *v34;
  v37 = *(v34 + 1);
  if (v34[16] != 1)
  {
    outlined consume of Text.Storage(*v34, *(v34 + 1), 0);
LABEL_9:

    goto LABEL_10;
  }

  v135 = *(v34 + 3);
  v38 = *(v34 + 4);
  type metadata accessor for AttributedStringTextStorage(0);
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    outlined consume of Text.Storage(v36, v37, 1);
    goto LABEL_9;
  }

  v40 = v39;
  v133 = v38;
  v41 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  swift_getKeyPath();
  v134 = v37;
  outlined copy of Text.Storage(v36, v37, 1);
  type metadata accessor for AttributeScopes.FoundationAttributes();

  v131 = v41;
  v132 = v40;
  AttributedString.subscript.getter();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute();
  v42 = v146;
  ScopedAttributeContainer.subscript.getter();

  (*(v145 + 8))(v31, v29);
  v43 = type metadata accessor for Morphology();
  LODWORD(v41) = (*(*(v43 - 8) + 48))(v42, 1, v43);
  _sypSgWOhTm_3(v42, &lazy cache variable for type metadata for Morphology?, MEMORY[0x1E6967EA8], type metadata accessor for NSInlinePresentationIntent?);
  if (v41 == 1)
  {
    v44 = v134;
    outlined consume of Text.Storage(v36, v134, 1);
    outlined consume of Text.Storage(v36, v44, 1);

LABEL_10:
    v45 = v147;
    a3 = v35;
    goto LABEL_11;
  }

  v145 = v36;
  if (v35)
  {

    v48 = v144;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v170, v144);
  }

  else
  {
    v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v170);
    v48 = v144;
    if (v49)
    {
      v50 = *(*v49 + 248);
      v51 = v49;
      v52 = type metadata accessor for Locale();
      (*(*(v52 - 8) + 16))(v48, &v51[v50], v52);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Locale();
      v54 = __swift_project_value_buffer(v53, static LocaleKey.defaultValue);
      (*(*(v53 - 8) + 16))(v48, v54, v53);
    }
  }

  v55 = type metadata accessor for Locale();
  v128[0] = *(v55 - 8);
  v129 = *(v128[0] + 56);
  v130 = v55;
  v128[1] = v128[0] + 56;
  (v129)(v48, 0, 1);
  v56 = *(a11 + 16);
  if (v56)
  {
    v169 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v57 = v169;
    v58 = a11 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v146 = *(v141 + 72);
    do
    {
      v59 = v148;
      outlined init with copy of LocalizedStringKey.FormatArgument(v58, v148, type metadata accessor for LocalizedStringKey.FormatArgument);
      *&v162 = v170;
      *(&v162 + 1) = v35;
      v161[0] = v149;
      v60 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v152, &v162);
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v59, type metadata accessor for LocalizedStringKey.FormatArgument);
      *v150 = (*v150 | v60) & 1;
      outlined init with take of AnyTrackedValue(&v152, &v162);
      v169 = v57;
      v62 = v57[2];
      v61 = v57[3];
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v57 = v169;
      }

      v57[2] = v62 + 1;
      outlined init with take of AnyTrackedValue(&v162, &v57[5 * v62 + 4]);
      v58 += v146;
      --v56;
    }

    while (v56);
    v48 = v144;
  }

  v63 = getVaList(_:)();

  v64 = v128[0];
  v65 = v130;
  if ((*(v128[0] + 48))(v48, 1, v130) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v64 + 8))(v48, v65);
  }

  v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v68 = [v67 initSwiftUIAttributedStringWithFormat:v142 options:0 locale:isa arguments:v63];

  v148 = v68;
  v69 = [v68 string];
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  v146 = v71;

  *&v162 = v70;
  *(&v162 + 1) = v72;
  *&v152 = 0;
  *(&v152 + 1) = 0xE000000000000000;
  Character.write<A>(to:)();
  *&v161[0] = v133;
  v73 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v73);

  Character.write<A>(to:)();
  v74 = v143;
  v129(v143, 1, 1, v65);
  lazy protocol witness table accessor for type String and conformance String();
  v75 = StringProtocol.range<A>(of:options:range:locale:)();
  v77 = v76;
  v79 = v78;
  _sypSgWOhTm_3(v74, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);

  if (v79)
  {
    v80 = v145;
    v81 = v134;
    outlined consume of Text.Storage(v145, v134, 1);
    *&v152 = v170;
    *(&v152 + 1) = v35;
    v161[0] = v149;
    v82 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(&v162, &v152);

    outlined consume of Text.Storage(v80, v81, 1);

    outlined consume of Text.Storage(v80, v81, 1);
    *v150 = (*v150 | v82) & 1;
    return outlined init with take of AnyTrackedValue(&v162, v147);
  }

  else
  {
    *&v162 = v75;
    *(&v162 + 1) = v77;
    v83 = v148;
    v84 = [v148 string];
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    *&v152 = v85;
    *(&v152 + 1) = v87;
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    v88 = _NSRange.init<A, B>(_:in:)();
    v90 = [v83 attributesAtIndex:v88 longestEffectiveRange:0 inRange:{v88, v89}];
    type metadata accessor for NSAttributedStringKey(0);
    v92 = v91;
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    *&v149 = v93;
    *(&v149 + 1) = v92;
    v94 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of LocalizedStringKey.FormatArgument(a12, v19, type metadata accessor for Text.Style);
    v95 = Text.withInlinePresentationIntent(from:)(v94, v145, v134, 1, v135);
    v97 = v96;
    LOBYTE(v85) = v98;
    v100 = v99;

    outlined consume of Text.Storage(v95, v97, v85 & 1);
    v101 = *(v100 + 16);
    if (v101)
    {
      v102 = 0;
      v103 = (v100 + 16 * v101 + 24);
      while (v101 <= *(v100 + 16))
      {
        v104 = *(v103 - 1);
        v105 = *v103;
        if ((*v103 & 0xE0) == 0x80)
        {
          v102 = 1;
        }

        else
        {
          outlined copy of Text.Modifier(*(v103 - 1), *v103);
        }

        --v101;
        *&v162 = v170;
        *(&v162 + 1) = v35;
        Text.Modifier.modify(style:environment:)(v19, &v162, v104, v105);
        outlined consume of Text.Modifier(v104, v105);
        v103 -= 16;
        if (!v101)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    v102 = 0;
LABEL_39:

    LOWORD(v164) = 0;
    v162 = 0u;
    v163 = 0u;
    v106 = MEMORY[0x1E69E7CC0];
    *(&v164 + 1) = MEMORY[0x1E69E7CC0];
    *&v165[0] = MEMORY[0x1E69E7CC0];
    *(v165 + 8) = 0u;
    *(&v165[1] + 8) = 0u;
    *(&v165[2] + 1) = 0;
    v166 = xmmword_18DD85510;

    v167 = v106;
    *&v168[1] = 0;
    v168[0] = MEMORY[0x1E69E7CD0];
    BYTE8(v168[1]) = 3;
    *&v152 = v170;
    *(&v152 + 1) = v35;
    *&v161[0] = a13;
    outlined copy of Text.Storage(v145, v134, 1);
    v107 = v132;
    v108 = v19;
    v109 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #2 in closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:), v132, &v152, 1, v161, &v162);

    v169 = v109;
    if (v102)
    {
      if (one-time initialization token for kitTracking != -1)
      {
        swift_once();
      }

      v110 = static NSAttributedStringKey.kitTracking;
      if (v108[72])
      {
        v111 = static NSAttributedStringKey.kitTracking;
        specialized Dictionary._Variant.removeValue(forKey:)(v111, &v152);

        _sypSgWOhTm_3(&v152, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyypGMaTm_0);
      }

      else
      {
        v112 = *(v108 + 8);
        *(&v153 + 1) = MEMORY[0x1E69E7DE0];
        *&v152 = v112;
        outlined init with take of Any(&v152, v161);
        v113 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v109;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v161, v113, isUniquelyReferenced_nonNull_native);

        v169 = v151;
      }
    }

    v115 = v108;
    v116 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    v117 = v139;
    (*(v138 + 16))(v139, v107 + v131, v140);
    AttributeScopeContext.init()(&v152);
    v161[0] = v152;
    v161[1] = v153;
    v118 = NSAttributedString.init(swiftUIAttributedString:in:)(v117, v161);
    v119 = Dictionary._bridgeToObjectiveC()().super.isa;
    v120 = v118;
    v121 = [v120 length];

    [v120 addAttributes:v119 range:{0, v121}];
    v122 = v150;
    v123 = *v150;

    *v122 = (v123 | BYTE1(v164)) & 1;
    v124 = v147;
    v147[3] = v116;
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSMutableAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    v124[4] = v125;

    v126 = v145;
    v127 = v134;
    outlined consume of Text.Storage(v145, v134, 1);
    *v124 = v120;

    outlined consume of Text.Storage(v126, v127, 1);
    outlined consume of Text.Storage(v126, v127, 1);
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v115, type metadata accessor for Text.Style);
    v158 = v166;
    v159 = v167;
    v160[0] = v168[0];
    *(v160 + 9) = *(v168 + 9);
    v154 = v164;
    v155 = v165[0];
    v156 = v165[1];
    v157 = v165[2];
    v152 = v162;
    v153 = v163;
    return outlined destroy of Text.ResolvedProperties(&v152);
  }
}

uint64_t sub_18D23869C@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.foundation.getter();
  result = type metadata accessor for AttributeScopes.FoundationAttributes();
  *a1 = result;
  return result;
}

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>)
  {
    type metadata accessor for AttributeScopes.FoundationAttributes();
    v1 = type metadata accessor for ScopedAttributeContainer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.FoundationAttributes>);
    }
  }
}

uint64_t initializeWithCopy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = type metadata accessor for AttributedString();
    }

    else
    {
      v9 = type metadata accessor for LocalizedStringResource();
    }

    (*(*(v9 - 8) + 16))(a1, a2, v9);
  }

  else if (EnumCaseMultiPayload)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v11, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    v13 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v13;
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
    v7 = *(a2 + 40);
    *(a1 + 40) = v7;
    v8 = v7;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

BOOL LocalizedStringKey.FormatArgument.resolve(in:idiom:)(void *a1, uint64_t a2)
{
  v82 = a1;
  v4 = type metadata accessor for LocalizedStringResource();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v79 - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *(a2 + 8);
  v83 = v20;
  outlined init with copy of LocalizedStringKey.FormatArgument(v2, v19, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v11 + 32))(v16, v19, v10);
      v36 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      (*(v11 + 16))(v13, v16, v10);
      v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v38 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes, protocol conformance descriptor for AttributeScopes.SwiftUIAttributes);
      v40 = v39;
      v41 = type metadata accessor for TaskPriority();
      (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply, v42);

      _sypSgWOhTm_3(v9, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], type metadata accessor for NSInlinePresentationIntent?);
      v86 = MEMORY[0x1E69E7CC0];
      v87 = v37;
      v88 = v38;
      v89 = v40;
      v43 = NSAttributedString.init(swiftUIAttributedString:in:)(v13, &v86);
      v44 = v82;
      v82[3] = v36;
      lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v44[4] = v45;
      *v44 = v43;
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v83, &v86);
      }

      else
      {
        v65 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v83);
        if (v65)
        {
          v66 = v65[9];
        }

        else
        {
          v66 = 0;
        }

        v86 = v66;
      }

      (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v80 + 32))(v6, v19, v81);
      v53 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v54 = v83;
      v86 = v83;
      v87 = v21;
      LocalizedStringResource.resolve(in:)(&v86, v13);
      v55 = MEMORY[0x1E69E7CC0];
      v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v57 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes, protocol conformance descriptor for AttributeScopes.SwiftUIAttributes);
      v59 = v58;
      v60 = type metadata accessor for TaskPriority();
      (*(*(v60 - 8) + 56))(v9, 1, 1, v60);
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v61);

      _sypSgWOhTm_3(v9, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], type metadata accessor for NSInlinePresentationIntent?);
      v86 = v55;
      v87 = v56;
      v88 = v57;
      v89 = v59;
      v62 = NSAttributedString.init(swiftUIAttributedString:in:)(v13, &v86);
      v63 = v82;
      v82[3] = v53;
      lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v63[4] = v64;
      *v63 = v62;
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v54, &v86);
      }

      else
      {
        v68 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v54);
        if (v68)
        {
          v69 = v68[9];
        }

        else
        {
          v69 = 0;
        }

        v86 = v69;
      }

      (*(v80 + 8))(v6, v81);
    }

    goto LABEL_36;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = *(v19 + 5);
    outlined init with take of AnyTrackedValue(v19, &v86);
    if (!v23)
    {
      outlined init with copy of AnyTrackedValue(&v86, v82);
      if (v21)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v83, &v84);

        v35 = v84;
      }

      else
      {
        v77 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v83);
        if (v77)
        {
          v35 = v77[9];
        }

        else
        {
          v35 = 0;
        }
      }

      goto LABEL_39;
    }

    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (v25)
    {
      v84 = v83;
      v85 = v21;
      v26 = *(v25 + 8);
      v27 = v25;
      v28 = v23;
      v26(&v84, ObjectType, v27);
    }

    __swift_project_boxed_opaque_existential_1(&v86, v89);
    v29 = [v23 stringForObjectValue_];
    swift_unknownObjectRelease();
    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v82;
      v82[3] = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v34;
      *v33 = v30;
      v33[1] = v32;
      if (v21)
      {
LABEL_8:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v83, &v84);

        swift_unknownObjectRelease();
        v35 = v84;
LABEL_39:
        __swift_destroy_boxed_opaque_existential_1(&v86);
        return v35 == 0;
      }
    }

    else
    {
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(101);
      MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD79BA0);
      v70 = [v23 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      MEMORY[0x193ABEDD0](v71, v73);

      MEMORY[0x193ABEDD0](0xD000000000000022, 0x800000018DD79BC0);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0xD000000000000027, 0x800000018DD79BF0);
      specialized static Log.externalWarning(_:)(v84, v85);

      v74 = v82;
      v82[3] = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      v74[4] = v75;
      *v74 = 0;
      v74[1] = 0xE000000000000000;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v76 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v83);
    if (v76)
    {
      v35 = v76[9];
    }

    else
    {
      v35 = 0;
    }

    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v46 = *(v19 + 4);
  outlined consume of Text.Storage(*v19, *(v19 + 1), v19[16]);

  v86 = 0;
  v87 = 0xE000000000000000;
  Character.write<A>(to:)();
  v84 = v46;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v47);

  Character.write<A>(to:)();
  v48 = v86;
  v49 = v87;
  v50 = v82;
  v82[3] = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  v50[4] = v51;
  *v50 = v48;
  v50[1] = v49;
  v52 = v83;
  if (v21)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v52, &v86);

LABEL_36:
    v35 = v86;
    return v35 == 0;
  }

  v67 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v83);
  if (v67)
  {
    v35 = v67[9];
  }

  else
  {
    v35 = 0;
  }

  return v35 == 0;
}

uint64_t sub_18D23930C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void destroy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v4 = type metadata accessor for AttributedString();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v4 = type metadata accessor for LocalizedStringResource();
    }

    v6 = *(*(v4 - 8) + 8);

    v6(a1, v4);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v5 = *(a1 + 40);
  }
}

void specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = specialized LocalizedStringKey.getTextArguments()(a6);
  if (*(v16 + 16))
  {
    v26 = v16;
    v17 = [a1 string];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v28 = v13;
    v29 = v14;
    v27 = v15;
    MEMORY[0x1EEE9AC00](v20);
    v23[10] = a7;
    v23[11] = a8;
    v23[12] = a1;
    v23[13] = a2;
    v23[14] = v13;
    v23[15] = v14;
    v23[16] = v15;
    v24 = a5 & 1;
    MEMORY[0x1EEE9AC00](v21);
    v23[2] = a7;
    v23[3] = a8;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = v15;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v25, v19, &v28, &v27, v26, partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v22, partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v23);
  }

  else
  {

    v28 = v13;
    v29 = v14;
    v27 = v15;
    (*(a8 + 72))(a1, &v28, &v27, a5 & 1, a7, a8);
  }
}

uint64_t specialized LocalizedStringKey.getTextArguments()(uint64_t a1)
{
  type metadata accessor for (Int, LocalizedStringKey.FormatArgument)(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v49);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v41 - v7);
  v9 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v48 = v15;
  if (v18)
  {
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = a1 + v20;
    v22 = *(v15 + 72);
    v23 = v42;
    v43 = v22;
    v44 = v20;
    do
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v21, v17, type metadata accessor for LocalizedStringKey.FormatArgument);
      outlined init with copy of LocalizedStringKey.FormatArgument(v17, v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v8, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
          outlined init with take of LocalizedStringKey.FormatArgument(v17, v23, type metadata accessor for LocalizedStringKey.FormatArgument);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
            v23 = v42;
            v19 = v50;
          }

          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v23 = v42;
            v19 = v50;
          }

          *(v19 + 16) = v27 + 1;
          v22 = v43;
          outlined init with take of LocalizedStringKey.FormatArgument(v23, v19 + v44 + v27 * v43, type metadata accessor for LocalizedStringKey.FormatArgument);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for LocalizedStringKey.FormatArgument);
LABEL_5:
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  v28 = *(v19 + 16);
  if (v28)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = 0;
    v30 = v50;
    v31 = v48;
    v32 = v19 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    while (v29 < *(v19 + 16))
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v32 + *(v31 + 72) * v29, v11, type metadata accessor for LocalizedStringKey.FormatArgument);
      outlined init with copy of LocalizedStringKey.FormatArgument(v11, v5, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_25;
      }

      v33 = *(v47 + 48);
      v34 = *(v5 + 4);
      outlined consume of Text.Storage(*v5, *(v5 + 1), v5[16]);

      v35 = v45;
      *v45 = v34;
      v36 = v35 + v33;
      v37 = v35;
      outlined init with take of LocalizedStringKey.FormatArgument(v11, v36, type metadata accessor for LocalizedStringKey.FormatArgument);
      v50 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v30 = v50;
      }

      ++v29;
      *(v30 + 16) = v39 + 1;
      outlined init with take of LocalizedStringKey.FormatArgument(v37, v30 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
      v31 = v48;
      if (v28 == v29)
      {

        return v30;
      }
    }

    __break(1u);
LABEL_25:
    result = _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v5, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void type metadata accessor for (Int, LocalizedStringKey.FormatArgument)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Int, LocalizedStringKey.FormatArgument))
  {
    type metadata accessor for LocalizedStringKey.FormatArgument(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, LocalizedStringKey.FormatArgument));
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>)
  {
    type metadata accessor for LocalizedStringKey.FormatArgument(255);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>);
    }
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Int, LocalizedStringKey.FormatArgument)(0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_23;
  }

  v52 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  v56 = a1;
  v51 = v17;
  outlined init with copy of LocalizedStringKey.FormatArgument(a1 + v17, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
  v60 = *v15;
  v18 = v60;
  v53 = v16;
  outlined init with take of LocalizedStringKey.FormatArgument(v15 + v16, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v19 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a2 & 1);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v30 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(v30[6] + 8 * v21) = v18;
      v31 = *(v8 + 72);
      outlined init with take of LocalizedStringKey.FormatArgument(v10, v30[7] + v31 * v21, type metadata accessor for LocalizedStringKey.FormatArgument);
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        v30[2] = v34;
        v35 = v56;
        if (v55 != 1)
        {
          v36 = v56 + v54 + v51;
          v37 = 1;
          while (v37 < *(v35 + 16))
          {
            outlined init with copy of LocalizedStringKey.FormatArgument(v36, v15, type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
            v60 = *v15;
            v38 = v60;
            outlined init with take of LocalizedStringKey.FormatArgument(v15 + v53, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
            v39 = *a3;
            v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
            v42 = v39[2];
            v43 = (v41 & 1) == 0;
            v33 = __OFADD__(v42, v43);
            v44 = v42 + v43;
            if (v33)
            {
              goto LABEL_24;
            }

            v45 = v41;
            if (v39[3] < v44)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, 1);
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
              if ((v45 & 1) != (v46 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v45)
            {
              goto LABEL_10;
            }

            v47 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v47[6] + 8 * v40) = v38;
            outlined init with take of LocalizedStringKey.FormatArgument(v10, v47[7] + v31 * v40, type metadata accessor for LocalizedStringKey.FormatArgument);
            v48 = v47[2];
            v33 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v33)
            {
              goto LABEL_25;
            }

            ++v37;
            v47[2] = v49;
            v36 += v54;
            v35 = v56;
            if (v55 == v37)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();
    v59 = v28;
    v29 = v28;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v10, type metadata accessor for LocalizedStringKey.FormatArgument);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD744D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  v9 = v8;
  BloomFilter.init(hashValue:)(v8);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(v7, v16[0]);
  if (!v10 || (outlined init with copy of EnvironmentValues.CapitalizationContext(v10 + *(*v10 + 248), v6, type metadata accessor for EnvironmentValues.CapitalizationContext), v11 = AGCompareValues(), outlined destroy of EnvironmentValues.CapitalizationContext(v6, type metadata accessor for EnvironmentValues.CapitalizationContext), !v11))
  {
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, v6, type metadata accessor for EnvironmentValues.CapitalizationContext);
    v13 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>(0);
    v14 = swift_allocObject();
    outlined init with copy of EnvironmentValues.CapitalizationContext(v6, v14 + *(*v14 + 248), type metadata accessor for EnvironmentValues.CapitalizationContext);

    value = PropertyList.Element.init(keyType:before:after:)(v9, 0, v13).value;
    outlined destroy of EnvironmentValues.CapitalizationContext(v6, type metadata accessor for EnvironmentValues.CapitalizationContext);
    *a1 = value;
  }

  return result;
}

__n128 protocol witness for ResolvedTextContainer.idiom.getter in conformance Text.Resolved@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v14 = v13[1];
    v15 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>(0);
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    outlined init with copy of EnvironmentValues.CapitalizationContext(a2, boxed_opaque_existential_1, type metadata accessor for EnvironmentValues.CapitalizationContext);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(a1, v7);
  if (v5)
  {
    return _s7SwiftUI24TypesettingConfigurationVWOcTm_0(v5 + *(*v5 + 248), a2, type metadata accessor for EnvironmentValues.CapitalizationContext);
  }

  MEMORY[0x193ABCCE0]();
  type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  return swift_storeEnumTagMultiPayload();
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE0V033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.Key>>);
    }
  }
}

void *initializeWithCopy for EnvironmentValues.CapitalizationContext(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
  }

  else
  {
    v6 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.Key>, &type metadata for EnvironmentValues.Key, &protocol witness table for EnvironmentValues.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.Key>>);
    }
  }
}

uint64_t Text.withInlinePresentationIntent(from:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  if (!*(a1 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A4A0]), (v11 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v10, v29), (swift_dynamicCast() & 1) == 0))
  {
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    return a2;
  }

  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if (v28)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v15 = *(a5 + 2);
    v14 = *(a5 + 3);
    if (v15 >= v14 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, a5);
    }

    *(a5 + 2) = v15 + 1;
    v16 = &a5[16 * v15];
    *(v16 + 4) = 0;
    v16[40] = -32;
    if ((v28 & 2) == 0)
    {
LABEL_6:
      if ((v28 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      type metadata accessor for MonospacedTextModifier();
      v22 = swift_allocObject();
      *(v22 + 16) = 1;
      outlined copy of Text.Storage(a2, a3, a4 & 1);

      v23 = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
      }

      outlined consume of Text.Storage(a2, a3, a4 & 1);

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = v22;
      v26[40] = -64;
      a5 = v23;
      if ((v28 & 0x20) != 0)
      {
        goto LABEL_26;
      }

      return a2;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for BoldTextModifier();
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  v18 = a5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  outlined consume of Text.Storage(a2, a3, a4 & 1);

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  *(v21 + 4) = v17;
  v21[40] = -64;
  a5 = v18;
  if ((v28 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v28 & 0x20) != 0)
  {
LABEL_26:
    v27 = Text.strikethrough(_:color:)(1, 0, a2, a3, a4 & 1, a5, v12);
    outlined consume of Text.Storage(a2, a3, a4 & 1);

    return v27;
  }

  return a2;
}

uint64_t Text.Storage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = *a3;
  if (a6)
  {
    v17 = *a2;
    v18 = v10;
    v16[0] = v12;
    return (*(*a4 + 80))(a1, &v17, v16, a7, a8);
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v16[0] = v11;
    v16[1] = v10;
    v15 = v12;
    lazy protocol witness table accessor for type String and conformance String();
    return ResolvedTextContainer.append<A>(_:in:with:)(&v17, v16, &v15, a7, MEMORY[0x1E69E6158], a8, v14);
  }
}

uint64_t AttachmentTextStorage.resolveAndWriteAuxiliaryMetadataIfNeeded<A>(into:context:environment:options:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a4;
  if ((*a4 & 4) == 0)
  {
    return 0;
  }

  v17 = *a3;
  (*(**(v6 + 16) + 88))(&v27, a2);
  v10 = v28;
  if (!v28)
  {
    return 0;
  }

  v11 = v31;
  v16 = v32;
  v13 = v29;
  v12 = v30;
  v14 = v27;
  v26 = BYTE4(v30) & 1;
  v20[0] = v27;
  v20[1] = v28;
  v20[2] = v29;
  v21 = v30;
  v22 = BYTE4(v30) & 1;
  v23 = *(&v30 + 5) & 0x1FF;
  v24 = v31;
  v25 = v32;
  v19 = v17;
  v18 = v7;
  (*(a6 + 88))(v20, &v19, &v18, a5, a6);
  outlined consume of Image.NamedResolved?(v14, v10, v13, v12, v11, v16);
  return 1;
}

uint64_t outlined init with take of NamedImage.BitmapKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void Text.Style.fontTraits(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *&v22 = *v2;
  *&v25 = v4;
  *(&v25 + 1) = v5;
  outlined copy of Text.Style.TextStyleFont(v22);
  v6 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v25, 1);
  outlined consume of EffectAnimator<A>.State<A>(v22);
  if (v5)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v4);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v4);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  v9 = v2[1];
  if (v9 >> 62)
  {
    v10 = v7 >> 62;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v7 >> 62;
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    goto LABEL_38;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
LABEL_10:
      if (v5)
      {

        _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v4, &v25);
      }

      else
      {
        v22 = v4;

        static EnvironmentValues.FontContextKey.value(in:)(&v22, &v25);
      }

      v22 = v25;
      v23 = v26;
      v24 = v27;
      if (!v6)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      v18 = v25;
      v19 = v26;
      v20 = v27;
      v11 = *(*v6 + 96);
      v5 = *v6 + 96;

      v12 = v11(&v18);

      v21 = v12;
      if (v10)
      {
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_25;
        }
      }

      if (v4 < 1)
      {
        __break(1u);
        goto LABEL_37;
      }

      v5 = 0;
      v10 = v7 & 0xC000000000000001;
      do
      {
        if (v10)
        {
          v13 = MEMORY[0x193AC03C0](v5, v7);
        }

        else
        {
          v13 = *(v7 + 8 * v5 + 32);
        }

        ++v5;
        v18 = v22;
        v19 = v23;
        v20 = v24;
        (*(*v13 + 80))(&v21, &v18);
      }

      while (v4 != v5);
LABEL_25:

      if (v9 >> 62)
      {
        v7 = __CocoaSet.count.getter();
        if (!v7)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_35;
        }
      }

      if (v7 >= 1)
      {
        v14 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x193AC03C0](v14, v9);
          }

          else
          {
            v15 = *(v9 + 8 * v14 + 32);
          }

          ++v14;
          v18 = v22;
          v19 = v23;
          v20 = v24;
          (*(*v15 + 80))(&v21, &v18);
        }

        while (v7 != v14);
LABEL_35:
        v16 = v21;
        Font.ResolvedTraits.init(_:)(v16, a2);
        outlined destroy of Font.Context(&v22);

        return;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  if (!v6)
  {
    goto LABEL_45;
  }

  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v4, v17);
  }

  else
  {
    v25 = v4;

    static EnvironmentValues.FontContextKey.value(in:)(&v25, v17);
  }

  v25 = v17[0];
  v26 = v17[1];
  v27 = v17[2];
  (*(*v6 + 104))(v17);

  outlined destroy of Font.Context(&v25);
}