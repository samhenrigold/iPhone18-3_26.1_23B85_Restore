uint64_t protocol witness for Animatable.animatableData.setter in conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized ModifiedContent<>.animatableData.setter(a1, a2, *(a3 - 8), *(a3 - 16));
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for AnimatablePair(0, v6);
  return (*(*(v4 - 8) + 8))(a1, v4);
}

void (*protocol witness for Animatable.animatableData.modify in conformance <> ModifiedContent<A, B>(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x60uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = v3;
  v7[5] = a2;
  v9 = *(a3 - 8);
  v7[6] = v9;
  v10 = *(a3 - 16);
  v7[7] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *v8 = AssociatedTypeWitness;
  v8[1] = v12;
  v8[2] = AssociatedConformanceWitness;
  v8[3] = v14;
  v15 = type metadata accessor for AnimatablePair(0, v8);
  v8[8] = v15;
  v16 = *(v15 - 8);
  v8[9] = v16;
  v17 = *(v16 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8[10] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v18 = malloc(v17);
  }

  v8[11] = v18;
  ModifiedContent<>.animatableData.getter(a2, v9, v10, v18);
  return protocol witness for Animatable.animatableData.modify in conformance <> ModifiedContent<A, B>;
}

void protocol witness for Animatable.animatableData.modify in conformance <> ModifiedContent<A, B>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  v9 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 80), v4, v5);
    specialized ModifiedContent<>.animatableData.setter(v3, v9, v7, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized ModifiedContent<>.animatableData.setter(*(*a1 + 88), v9, v7, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA016AutomaticPaddingeF033_47C1BD8C61550BB60F4F3D12F752D53DLLV0P6LayoutV07WrappedZ0V_AA015_SafeAreaInsetsF0VTt3B503_s7a4UI28ope13Modifier33_47qrstuvwxy7DLLV05_g30E08modifier6inputs4bodyAA01_E7k6VAA11_lm13VyADG_AA01_E6N29VAjA01_U0V_AOtctFZAjQ_AOtcfU_ArpJIegnnr_09AttributeL09AttributeVyACyAYA_GGTf1nnnc_n@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a6@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = *(a2 + 48);
  v58 = *(a2 + 32);
  v59 = v9;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v10 = *(a2 + 16);
  v56 = *a2;
  v57 = v10;
  v24 = v58;
  LODWORD(v58) = 0;
  v62 = v56;
  v63 = v10;
  v66 = v61;
  *&v64[16] = v9;
  v65 = v60;
  *v64 = v58;
  outlined init with copy of _ViewInputs(a2, &v67);
  outlined init with copy of _ViewInputs(&v62, &v67);
  v11 = AGMakeUniqueID();
  v54 = v62;
  v55 = v63;
  v12 = *v64;
  v52 = *&v64[4];
  v53 = *&v64[20];
  v26 = v65;
  v13 = v66;
  v27 = DWORD2(v65);
  v14 = *&v64[28];
  v69 = *v64;
  v70 = *&v64[16];
  v71 = v65;
  v72 = v66;
  v67 = v62;
  v68 = v63;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v62, &v47);
  v15 = CachedEnvironment.animatedPosition(for:)(&v67);
  v69 = *v64;
  v70 = *&v64[16];
  v71 = v65;
  v72 = v66;
  v67 = v62;
  v68 = v63;
  v16 = CachedEnvironment.animatedSize(for:)(&v67);
  swift_endAccess();
  *&v67 = v11;
  *(&v67 + 1) = __PAIR64__(v15, v14);
  LODWORD(v68) = v16;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  v18 = v12 | 4;
  *&v67 = v11;
  *(&v67 + 1) = __PAIR64__(HIDWORD(v65), OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets();
  v19 = Attribute.init<A>(body:value:flags:update:)();
  v47 = v54;
  v48 = v55;
  *&v49[4] = v52;
  *&v49[20] = v53;
  *v49 = v12 | 4;
  *&v49[28] = v17;
  *&v50 = v26;
  *(&v50 + 1) = __PAIR64__(v19, v27);
  v51 = v13;
  outlined init with copy of _ViewInputs(&v47, &v67);
  v20 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v43 = *v49;
  v44 = *&v49[16];
  v45 = v50;
  v46 = v51;
  v41 = v47;
  v42 = v48;
  v21 = *v49;
  LODWORD(v43) = 0;
  v72 = v51;
  v70 = *&v49[16];
  v71 = v50;
  v67 = v47;
  v68 = v48;
  v69 = v43;

  outlined init with copy of _ViewInputs(&v47, v32);
  outlined init with copy of _ViewInputs(&v67, v32);
  specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v20, &v67, a3, a6);
  outlined destroy of _ViewInputs(&v67);
  LODWORD(v43) = v21;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a6, &v41);
    AGSubgraphEndTreeElement();
  }

  v30[2] = v43;
  v30[3] = v44;
  v30[4] = v45;
  v31 = v46;
  v30[0] = v41;
  v30[1] = v42;
  outlined destroy of _ViewInputs(v30);
  outlined destroy of _ViewInputs(&v47);
  v35 = v53;
  v32[0] = v54;
  v32[1] = v55;
  v34 = v52;
  v33 = v18;
  v36 = v17;
  v37 = v26;
  v38 = v27;
  v39 = v19;
  v40 = v13;
  outlined destroy of _ViewInputs(v32);
  outlined destroy of _ViewInputs(&v62);
  LODWORD(v58) = v24;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a6, &v56);
    AGSubgraphEndTreeElement();
  }

  v28[2] = v58;
  v28[3] = v59;
  v28[4] = v60;
  v29 = v61;
  v28[0] = v56;
  v28[1] = v57;
  outlined destroy of _ViewInputs(v28);
}

double static ModifiedContent<>._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *a1;
  v14 = v25;
  v15 = type metadata accessor for ModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v15, v16, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a6, &v24);
  v18 = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a7;
  *(v19 + 40) = a8;
  *(v19 + 48) = v14;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v23 = v18;
  (*(a8 + 32))(&v23, a2, partial apply for closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:), v19, a6, a8);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v18, a6, a8);

  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[1] = a3;
  v13 = type metadata accessor for ModifiedContent(255, a6, a7, a4);
  type metadata accessor for _GraphValue(0, v13, v14, v15);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeViewList(modifier:inputs:body:), a6, v19);
  v16 = v19[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v18 = v16;
  (*(a8 + 32))(&v18, a2, a4, a5, a6, a8);
  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v16, a6, a8);
}

uint64_t static ModifiedContent<>._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  v11[4] = a1[4];
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a2;
  v10[7] = a3;
  return (*(a7 + 40))(v11, partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:body:), v10, a5, a7);
}

uint64_t ModifiedContent.customViewDebugMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Mirror();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ContentTransitionGroup(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentTransitionEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SaturationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEffectPlatformItemModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GlassEntryFlexInteractionModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance MaterialEffect(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 20) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  a9(v9, a2, a8, v17);

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerCornerOffsetLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ColorMultiplyEffect._Resolved(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TransactionModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SpacingLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaInsetsModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SystemColorSchemeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SystemColorSchemeModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = off_1F00BCAD8(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _HueRotationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t specialized ModifiedContent<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *(a2 + 24);
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v22 - v9;
  v11 = *(a2 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v16 + 16))(&v22 - v14, a1, v12, v13);
  (*(a3 + 32))(v15, v11, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = v23;
  v19 = swift_getAssociatedConformanceWitness();
  v26[0] = v12;
  v26[1] = AssociatedTypeWitness;
  v26[2] = AssociatedConformanceWitness;
  v26[3] = v19;
  v20 = type metadata accessor for AnimatablePair(0, v26);
  (*(v24 + 16))(v10, a1 + *(v20 + 52), AssociatedTypeWitness);
  return (*(a4 + 32))(v10, v18, a4);
}

void specialized ViewModifier.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized ModifiedContent<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModifiedContent(0, a1, a2, a4);
  v7[0] = a3;
  v7[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
  specialized View.bodyError()(v6);
}

uint64_t partial apply for closure #1 in static ModifiedContent<>._viewListCount(inputs:body:)(_OWORD *a1)
{
  v2 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (*(v2 + 40))(v8, v3, v4);
}

void lazy protocol witness table accessor for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>()
{
  if (!lazy protocol witness table cache variable for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>)
  {
    type metadata accessor for ChildEnvironment<RedactionReasons>(255, &lazy cache variable for type metadata for ChildEnvironment<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for ChildEnvironment);
    swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ChildEnvironment<RedactionReasons> and conformance ChildEnvironment<A>);
  }
}

void type metadata accessor for ChildEnvironment<RedactionReasons>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment()
{
  if (!lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for AngularGradient;
    v4[1] = &type metadata for Color;
    v4[2] = &protocol witness table for AngularGradient;
    v4[3] = &protocol witness table for Color;
    v2 = type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _ForegroundStyleModifier2<AngularGradient, Color>.ForegroundStyleEnvironment);
    }
  }
}

double static DSLDynamicPropertyCache.fields(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)(a1, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  return result;
}

uint64_t DSLBodyAccessor.makeBody(container:inputs:fields:)(_DWORD *a1, void *a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v37 = a1;
  v38 = a2;
  v50 = *MEMORY[0x1E69E9840];
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Transformer(0, v14, v15, v13);
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33[-v17];
  v34 = *a3;
  v20 = *a5;
  v19 = *(a5 + 8);
  v21 = *(a5 + 16);
  LODWORD(a5) = *(a5 + 20);
  v22 = a4[1];
  v47 = *a4;
  v48 = v22;
  v49 = a4[2];
  (*(v10 + 16))(v12, v35, a6);
  (*(v10 + 32))(v18, v12, a6);
  v39 = v34;
  v41 = v20;
  v42 = v19;
  v43 = v21;
  v44 = a5;
  outlined copy of DynamicPropertyCache.Fields.Layout(v20, v19, v21);
  swift_getWitnessTable(protocol conformance descriptor for Transformer<A>, v16);
  BodyAccessor.makeBody(container:inputs:fields:)(&v40, v45, &v39, &v47, &v41, v16, v23);
  outlined consume of DynamicPropertyCache.Fields.Layout(v41, v42, v43);
  result = (*(v36 + 8))(v18, v16);
  v25 = v40;
  v26 = v45[0];
  v27 = v45[1];
  v28 = v46;
  v29 = v48;
  *a4 = v47;
  a4[1] = v29;
  a4[2] = v49;
  *v37 = v25;
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  if (v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27;
  }

  v32 = v38;
  *v38 = v30;
  v32[1] = v31;
  *(v32 + 16) = v28;
  return result;
}

uint64_t DSLBodyAccessor.setBody(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v74 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v69 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v69 - v12;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Transformer(0, a3, a4, v17);
  v70 = *(v71 - 8);
  v18 = MEMORY[0x1EEE9AC00](v71);
  v20 = &v69 - v19;
  (*(v13 + 16))(v16, v4, a3, v18);
  v21 = *(v13 + 32);
  v69 = v20;
  v21(v20, v16, a3);
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v22 = static Signpost.bodyInvoke;
  v23 = word_1ED539040;
  v24 = HIBYTE(word_1ED539040);
  v25 = byte_1ED539042;
  v26 = static os_signpost_type_t.begin.getter();
  v94 = v22;
  v95 = v23;
  v96 = v24;
  v97 = v25;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v87) = v26;
    swift_getAssociatedTypeWitness();
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18DDAB4C0;
    v28 = AGTypeID.description.getter();
    v30 = v29;
    v31 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v33 = v32;
    *(v27 + 64) = v32;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v34 = specialized static Tracing.libraryName(defining:)();
    *(v27 + 96) = v31;
    *(v27 + 104) = v33;
    *(v27 + 72) = v34;
    *(v27 + 80) = v35;
    if (one-time initialization token for _signpostLog == -1)
    {
      v36 = v87;
      if (v24)
      {
LABEL_6:
        v93[0] = v36;
        v91 = _signpostLog;
        v92 = &dword_18D018000;
        v94 = v22;
        v95 = v23;
        v89[0] = "%{public}@.body [in %{public}@]";
        v89[1] = 31;
        v90 = 2;
        v88 = v27;
        v37 = v77;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v93, &v92, &v91, &v94, v77, v89, &v88);
        (*(v84 + 8))(v37, v83);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v36 = v87;
      if (v24)
      {
        goto LABEL_6;
      }
    }

    if (v22 == 20)
    {
      v38 = 3;
    }

    else
    {
      v38 = 4;
    }

    v39 = bswap32(v22) | (4 * WORD1(v22));
    v40 = v36;
    v41 = v84 + 16;
    v78 = *(v84 + 16);
    v42 = v78(v85, v77, v83);
    v43 = 0;
    LOBYTE(v89[0]) = 1;
    v87 = v38;
    v84 = v41;
    v81 = 16 * v38;
    v82 = (v41 - 8);
    v80 = v27 + 32;
    v79 = *(&v22 + 1);
    do
    {
      v86 = &v69;
      MEMORY[0x1EEE9AC00](v42);
      v45 = &v69 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = v45 + 8;
      v47 = v87;
      v48 = v45 + 8;
      do
      {
        *(v48 - 1) = 0;
        *v48 = 0;
        v48 += 16;
        --v47;
      }

      while (v47);
      v49 = v80 + 40 * v43;
      v50 = v87;
      while (1)
      {
        v51 = *(v27 + 16);
        if (v43 == v51)
        {
          break;
        }

        if (v43 >= v51)
        {
          __break(1u);
        }

        ++v43;
        outlined init with copy of AnyTrackedValue(v49, &v94);
        v52 = v98;
        v53 = v99;
        __swift_project_boxed_opaque_existential_1(&v94, v98);
        *(v46 - 1) = CVarArg.kdebugValue(_:)(v39 | v40, v52, v53);
        *v46 = v54 & 1;
        v46 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v94);
        v49 += 40;
        if (!--v50)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v89[0]) = 0;
LABEL_20:
      v55 = v79;
      if (v79 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v45[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v45[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v45[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v55 != 20 && v45[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v56 = v83;
      v57 = *v82;
      v58 = v85;
      (*v82)(v85, v83);
      v59 = __swift_project_value_buffer(v56, static OSSignpostID.continuation);
      v42 = v78(v58, v59, v56);
    }

    while ((v89[0] & 1) != 0);
    v60 = v83;
    v57(v85, v83);
    v57(v77, v60);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v61 = v72;
  v74();
  AGGraphSetUpdate();
  v62 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v63 = MEMORY[0x1EEE9AC00](v62);
  v64 = v71;
  *(&v69 - 2) = v71;
  swift_getWitnessTable(protocol conformance descriptor for Transformer<A>, v64, v63);
  *(&v69 - 1) = v65;
  v66 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v61, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v69 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v67);
  (*(v75 + 8))(v61, v66);
  return (*(v70 + 8))(v69, v64);
}

uint64_t DSLDynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v19 = *v3;
  v20 = v3[1];
  v18 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  outlined copy of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
  _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v18, &v14, a3);
  v10 = v14;
  v11 = v15;
  v12 = v16;

  return outlined consume of DynamicPropertyCache.Fields.Layout(v10, v11, v12);
}

void EnvironmentValues.effectiveAllowedDynamicRange(hdrContent:explicitRange:)(char a1@<W0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    v4 = *a2;
    v6 = *v3;
    v5 = v4;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v5, a3);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t Image.DynamicRange.Storage.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int Image.DynamicRange.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Image.allowedDynamicRange(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.DynamicRangeProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

uint64_t protocol witness for ImageProvider.resolve(in:) in conformance Image.DynamicRangeProvider(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v6);
  if (v8 != 3)
  {
    v6[*(v4 + 36)] = v8;
  }

  (*(*v7 + 80))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

uint64_t protocol witness for ImageProvider.resolveNamedImage(in:) in conformance Image.DynamicRangeProvider(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v6);
  if (v8 != 3)
  {
    v6[*(v4 + 36)] = v8;
  }

  (*(*v7 + 88))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

void EnvironmentValues.allowedDynamicRange.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 3;
    }

    *a1 = v5;
  }
}

void key path getter for EnvironmentValues.allowedDynamicRange : EnvironmentValues(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 3;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.allowedDynamicRange : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues.allowedDynamicRange.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.allowedDynamicRange.modify(char **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.allowedDynamicRange.modify;
}

void EnvironmentValues.allowedDynamicRange.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV019AllowedDynamicRangeK033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void type metadata accessor for ImageProviderBox<Image.DynamicRangeProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.DynamicRangeProvider>)
  {
    lazy protocol witness table accessor for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider();
    v4 = type metadata accessor for ImageProviderBox(a1, &unk_1F00AA100, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ImageProviderBox<Image.DynamicRangeProvider>);
    }
  }
}

void lazy protocol witness table accessor for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider()
{
  if (!lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.DynamicRangeProvider, &unk_1F00AA100, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.DynamicRangeProvider, &unk_1F00AA100, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.DynamicRangeProvider and conformance Image.DynamicRangeProvider);
  }
}

double EnvironmentValues.maxAllowedDynamicRange.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v7 = *a1;
  v3 = *v1;
  v4 = v1[1];
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    (*(v5 + 16))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, v1, &v7, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
  }

  else
  {
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(v1, v2);

    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV022MaxAllowedDynamicRangeK0VG_Ttg5(v3, *v1);
    }
  }

  return result;
}

double (*EnvironmentValues.maxAllowedDynamicRange.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAC022MaxAllowedDynamicRangeG0V_Tt0B5(*v1, *(v1 + 8), (a1 + 24));
  return EnvironmentValues.maxAllowedDynamicRange.modify;
}

double EnvironmentValues.maxAllowedDynamicRange.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  *(a1 + 25) = v3;
  v4 = a1 + 25;
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  if (a2)
  {
    v8 = EnvironmentValues.bridgedEnvironmentResolver.getter();
    v10 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    (*(v9 + 16))(&type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, v10, v4, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey);
    return result;
  }

  v11 = EnvironmentValues.bridgedEnvironmentResolver.getter();
  v10 = *(a1 + 16);
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_6:
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(v10, v3);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV022MaxAllowedDynamicRangeK0VG_Ttg5(v6, **(a1 + 16));
  }

  return result;
}

unint64_t Image.DynamicRange.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void lazy protocol witness table accessor for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage()
{
  if (!lazy protocol witness table cache variable for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.DynamicRange.Storage, &type metadata for Image.DynamicRange.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.DynamicRange.Storage and conformance Image.DynamicRange.Storage);
  }
}

void lazy protocol witness table accessor for type Image.DynamicRange and conformance Image.DynamicRange()
{
  if (!lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.DynamicRange, &type metadata for Image.DynamicRange, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange);
  }
}

uint64_t specialized static Image.DynamicRangeProvider.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 != *a2 && ((*(**a1 + 96))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t SymbolVariants.Shape.path(in:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (!*v6)
  {
    if (!CGRectIsNull(*&a3))
    {
      v26.origin.x = a3;
      v26.size.width = a5;
      v26.origin.y = a4;
      v26.size.height = a6;
      IsInfinite = CGRectIsInfinite(v26);
      result = *&a3;
      *&v16 = a4;
      *(&v16 + 1) = a5;
      v18 = !IsInfinite;
      goto LABEL_21;
    }

    result = 0;
    v16 = 0uLL;
    goto LABEL_15;
  }

  v10 = *&a1;
  if (*&a1 > 0.5)
  {
    v10 = 0.5;
  }

  if (*&a1 < 0.0)
  {
    v10 = 0.0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v11 = 0.225;
  }

  else
  {
    v11 = v10;
  }

  v12 = a6;
  Width = CGRectGetWidth(*&a3);
  v23.origin.x = a3;
  v23.size.width = a5;
  v23.origin.y = a4;
  v23.size.height = a6;
  Height = CGRectGetHeight(v23);
  if (Height < Width)
  {
    Width = Height;
  }

  v24.origin.x = a3;
  v24.size.width = a5;
  v24.origin.y = a4;
  v24.size.height = a6;
  IsNull = CGRectIsNull(v24);
  v16 = 0uLL;
  if (IsNull)
  {
    result = 0;
LABEL_15:
    v18 = 6;
    a6 = 0.0;
    goto LABEL_21;
  }

  v19 = v11 * Width;
  if (v19 == 0.0 || (v25.origin.x = a3, v25.size.width = a5, v25.origin.y = a4, v25.size.height = a6, CGRectIsInfinite(v25)))
  {
    v18 = 0;
    result = *&a3;
    *&v16 = a4;
    *(&v16 + 1) = a5;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = a6;
    v16 = 0uLL;
    *(result + 48) = v19;
    *(result + 56) = v19;
    v18 = 2;
    a6 = 0.0;
    *(result + 64) = 1;
  }

LABEL_21:
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 24) = a6;
  *(a2 + 32) = v18;
  return result;
}

void EnvironmentValues.symbolVariants.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 36);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v5 = static SymbolVariantsKey.defaultValue;
    }

    *a1 = v5;
  }
}

void *EnvironmentValues.symbolsGrowToFitBackground.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t EnvironmentValues.symbolBackgroundCornerRadius.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t SymbolVariants.Shape.suffix.getter()
{
  v1 = 0x6572617571732ELL;
  if (*v0 != 1)
  {
    v1 = 0x676E61746365722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C637269632ELL;
  }
}

Swift::Int SymbolVariants.Shape.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void SymbolVariants.fill.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 1;
  a1[1] = v2;
}

void SymbolVariants.background.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 4;
  a1[1] = v2;
}

void SymbolVariants.slash.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 2;
  a1[1] = v2;
}

_BYTE *SymbolVariants.formUnion(_:)(_BYTE *result)
{
  v2 = result[1];
  *v1 |= *result;
  v3 = v1[1];
  if (v2 != 3)
  {
    v3 = v2;
  }

  v1[1] = v3;
  return result;
}

void SymbolVariants.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int SymbolVariants.hashValue.getter()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SymbolVariants()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SymbolVariants()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SymbolVariants(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  if (v2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v2);
  }

  return Hasher._finalize()();
}

double EnvironmentValues.symbolVariants.setter(__int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.symbolVariants.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static SymbolVariantsKey.defaultValue;
    }

    *(v4 + 20) = v8;
  }

  return EnvironmentValues.symbolVariants.modify;
}

void EnvironmentValues.symbolVariants.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void key path getter for EnvironmentValues.symbolBackgroundCornerRadius : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (v7)
    {
      v4 = v7[9];
      v6 = *(v7 + 80);
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
}

double key path setter for EnvironmentValues.symbolBackgroundCornerRadius : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v5, *a2);
  }

  return result;
}

double EnvironmentValues.symbolBackgroundCornerRadius.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v3, a1, a2 & 1);

  if (v3[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v6, *v3);
  }

  return result;
}

void (*EnvironmentValues.symbolBackgroundCornerRadius.modify(uint64_t **a1))(uint64_t **a1)
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
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.symbolBackgroundCornerRadius.modify;
}

void EnvironmentValues.symbolBackgroundCornerRadius.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA028SymbolBackgroundCornerRadiusK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

void key path getter for EnvironmentValues.symbolsGrowToFitBackground : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.symbolsGrowToFitBackground : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.symbolsGrowToFitBackground.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.symbolsGrowToFitBackground.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.symbolsGrowToFitBackground.modify;
}

void EnvironmentValues.symbolsGrowToFitBackground.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA026SymbolsGrowToFitBackgroundK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void lazy protocol witness table accessor for type SymbolVariants.Shape and conformance SymbolVariants.Shape()
{
  if (!lazy protocol witness table cache variable for type SymbolVariants.Shape and conformance SymbolVariants.Shape)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants.Shape, &type metadata for SymbolVariants.Shape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants.Shape and conformance SymbolVariants.Shape);
  }
}

void lazy protocol witness table accessor for type SymbolVariants and conformance SymbolVariants()
{
  if (!lazy protocol witness table cache variable for type SymbolVariants and conformance SymbolVariants)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants, &type metadata for SymbolVariants, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants and conformance SymbolVariants);
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>)
  {
    v4 = type metadata accessor for _EnvironmentKeyTransformModifier(0, &type metadata for SymbolVariants, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>);
    }
  }
}

void lazy protocol witness table accessor for type SymbolVariants.Flags and conformance SymbolVariants.Flags()
{
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants.Flags, &unk_1F00AA2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants.Flags, &unk_1F00AA2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants.Flags, &unk_1F00AA2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariants.Flags, &unk_1F00AA2A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariants.Flags and conformance SymbolVariants.Flags);
  }
}

double View.appearanceAnimation<A>(animation:strategy:modifier:)@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a7;
  v28 = a1;
  v29 = a5;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  v22 = *v21;
  v23(v7, 0, v18);
  a2(v7, 1);
  (*(v11 + 16))(v13, v7, a3);
  v30 = v22;
  AppearanceAnimationView.init(content:from:to:animation:strategy:)(v13, v20, v16, v28, &v30, a3, a4, v29, v27, v26);

  return result;
}

uint64_t AppearanceAnimationView.init(content:from:to:animation:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a5;
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a10;
  v18 = type metadata accessor for AppearanceAnimationView(0, v21);
  v19 = *(*(a7 - 8) + 32);
  v19(a9 + v18[13], a2, a7);
  result = (v19)(a9 + v18[14], a3, a7);
  *(a9 + v18[15]) = a4;
  *(a9 + v18[16]) = v17;
  return result;
}

Swift::Int AppearanceAnimationStrategy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AppearanceAnimationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v54 = *(a1 + 16);
  v3 = v54;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v7 = type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue(0, &v54);
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v41 - v11;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v4;
  v48 = v3;
  v54 = v3;
  v55 = v4;
  v45 = v6;
  v46 = v5;
  v56 = v5;
  v57 = v6;
  v16 = type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation(0, &v54);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v24 = type metadata accessor for _ConditionalContent(0, v16, v7, v23);
  v50 = *(v24 - 8);
  v51 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v49 = &v41 - v26;
  LOBYTE(v5) = *(v44 + *(a1 + 64));
  (*(v12 + 16))(v15, v25);
  if (v5)
  {
    AppearanceAnimationView.NormalBody_WithAnimation.init(view:)(v15, v48, v47, v46, v45, type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue, v9, type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState);
    swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_AnimationValue, v7);
    v27 = v42;
    static ViewBuilder.buildExpression<A>(_:)();
    v28 = *(v43 + 8);
    v28(v9, v7);
    static ViewBuilder.buildExpression<A>(_:)();
    v28(v27, v7);
    swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_WithAnimation, v16);
    v29 = v49;
    static ViewBuilder.buildEither<A, B>(second:)(v9, v16, v7, v30, v49);
    v28(v9, v7);
  }

  else
  {
    AppearanceAnimationView.NormalBody_WithAnimation.init(view:)(v15, v48, v47, v46, v45, type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation, v19, type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState);
    swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_WithAnimation, v16);
    v32 = v31;
    static ViewBuilder.buildExpression<A>(_:)();
    v33 = *(v17 + 8);
    v33(v19, v16);
    static ViewBuilder.buildExpression<A>(_:)();
    v33(v22, v16);
    swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_AnimationValue, v7);
    v29 = v49;
    static ViewBuilder.buildEither<A, B>(first:)(v19, v16, v7, v32, v49);
    v33(v19, v16);
  }

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_WithAnimation, v16);
  v36 = v35;
  v37 = swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.NormalBody_AnimationValue, v7, WitnessTable);
  v53[0] = v36;
  v53[1] = v38;
  v39 = v51;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v51, v53, v37);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v50 + 8))(v29, v39);
}

uint64_t AppearanceAnimationView.NormalBody_WithAnimation.init(view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t *)@<X6>, uint64_t a7@<X8>, uint64_t (*a8)(void, void *)@<X5>)
{
  v15 = property wrapper backing initializer of AppearanceAnimationView.NormalBody_WithAnimation.state(0, a2, a3, a4, a5, a8);
  *a7 = v15;
  *(a7 + 4) = BYTE4(v15) & 1;
  *(a7 + 8) = v16;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v17 = *(a6(0, &v20) + 52);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v18 = type metadata accessor for AppearanceAnimationView(0, &v20);
  return (*(*(v18 - 8) + 32))(a7 + v17, a1, v18);
}

uint64_t AppearanceAnimationView.NormalBody_WithAnimation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a1;
  v64 = a2;
  v4 = a1 - 8;
  v62 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v52 - v7;
  v8 = *(v4 + 32);
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 48);
  *&v72 = v8;
  *(&v72 + 1) = MEMORY[0x1E69E7668];
  *&v73 = v12;
  *(&v73 + 1) = MEMORY[0x1E69E7678];
  v13 = type metadata accessor for IDView(0, &v72);
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v52 - v14;
  v58 = v15;
  v61 = type metadata accessor for ModifiedContent(0, v15, &type metadata for _AppearanceActionModifier, v16);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v52 - v19;
  v20 = *v2;
  v21 = *(v2 + 4);
  v22 = v2[1];
  v69 = *v2;
  v70 = v21;
  v71 = v22;
  *&v23 = *(v4 + 40);
  *&v24 = *(v4 + 24);
  *(&v24 + 1) = v8;
  v25 = v12;
  *(&v23 + 1) = v12;
  v66 = v24;
  v67 = v23;
  v73 = v23;
  v72 = v24;
  v26 = type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState(255, &v72);
  v29 = type metadata accessor for State(0, v26, v27, v28);
  State.wrappedValue.getter(v29, &v72);
  v30 = *(v4 + 60);
  if (BYTE4(v72) == 1)
  {
    v72 = v66;
    v73 = v67;
    v31 = type metadata accessor for AppearanceAnimationView(0, &v72);
    v32 = 56;
  }

  else
  {
    v72 = v66;
    v73 = v67;
    v31 = type metadata accessor for AppearanceAnimationView(0, &v72);
    v32 = 52;
  }

  v33 = v52;
  v52[2](v11, v3 + v30 + *(v31 + v32), v8);
  LODWORD(v72) = v20;
  BYTE4(v72) = v21;
  *(&v72 + 1) = v22;
  State.wrappedValue.getter(v29, &v69);
  LODWORD(v72) = v69;
  View.id<A>(_:)(&v72, v8, MEMORY[0x1E69E7668], v25, MEMORY[0x1E69E7678], v65);
  (v33[1])(v11, v8);
  v35 = v62;
  v34 = v63;
  v36 = *(v62 + 16);
  v37 = v53;
  v36(v53, v3, v63);
  v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v52 = v3;
  v39 = swift_allocObject();
  v40 = v67;
  *(v39 + 16) = v66;
  *(v39 + 32) = v40;
  v41 = *(v35 + 32);
  v41(v39 + v38, v37, v34);
  v42 = v60;
  v36(v60, v52, v34);
  v43 = swift_allocObject();
  v44 = v67;
  *(v43 + 16) = v66;
  *(v43 + 32) = v44;
  v41(v43 + v38, v42, v34);
  *&v72 = partial apply for closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter;
  *(&v72 + 1) = v39;
  *&v73 = partial apply for closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter;
  *(&v73 + 1) = v43;
  v45 = v54;
  v46 = v58;
  v47 = v65;
  View.modifier<A>(_:)();

  (*(v57 + 8))(v47, v46);
  v68[0] = &protocol witness table for IDView<A, B>;
  v68[1] = &protocol witness table for _AppearanceActionModifier;
  v48 = v61;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v61, v68);
  v49 = v56;
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = *(v59 + 8);
  v50(v45, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v50)(v49, v48);
}

uint64_t closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v9 = a1 + *(type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation(0, &v13) + 52);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10 = *(v9 + *(type metadata accessor for AppearanceAnimationView(0, &v13) + 60));
  v13 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v13, v10);

  specialized closure #1 in withTransaction<A>(_:_:)(v11, partial apply for closure #1 in closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter);
}

void closure #1 in closure #1 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 4);
  v11 = *(a1 + 1);
  v22 = *a1;
  v9 = v22;
  v23 = v10;
  v24 = v11;

  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v12 = type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation.AnimationState(255, &v18);
  v15 = type metadata accessor for State(0, v12, v13, v14);
  State.wrappedValue.getter(v15, &v25);
  LODWORD(v18) = v9;
  BYTE4(v18) = v10;
  v19 = v11;
  v16 = v25;
  v17 = (v26 & 1) == 0;
  specialized LazyState.wrappedValue.setter(&v16, v15);
}

uint64_t property wrapper backing initializer of AppearanceAnimationView.NormalBody_WithAnimation.state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *))
{
  v11 = a1;
  v12 = BYTE4(a1) & 1;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v6 = a6(0, v10);
  State.init(wrappedValue:)(&v11, v6, v7, v8, v10);
  return v10[0];
}

uint64_t AppearanceAnimationView.NormalBody_AnimationValue.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v86 = a1;
  v3 = a1 - 8;
  v83 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v81 = v4;
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v65 - v6;
  v7 = *(v3 + 32);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnimationModifier<Bool>(255, v12, v13, v14);
  v17 = type metadata accessor for ModifiedContent(0, v7, v15, v16);
  v72 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v65 - v19;
  v95[0] = *(v3 + 48);
  v20 = v95[0];
  v95[1] = &protocol witness table for _AnimationModifier<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v17, v95, v18);
  v73 = v17;
  *&v93 = v17;
  *(&v93 + 1) = MEMORY[0x1E69E7668];
  v71 = v21;
  *&v94 = v21;
  *(&v94 + 1) = MEMORY[0x1E69E7678];
  v22 = type metadata accessor for IDView(0, &v93);
  v77 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v65 - v23;
  v78 = v24;
  v80 = type metadata accessor for ModifiedContent(0, v24, &type metadata for _AppearanceActionModifier, v25);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v76 = &v65 - v28;
  v29 = *(v2 + 4);
  v30 = *(v2 + 1);
  v68 = *v2;
  v90 = v68;
  v91 = v29;
  v67 = v30;
  v92 = v30;
  *&v31 = *(v3 + 40);
  *&v32 = *(v3 + 24);
  v33 = v7;
  *(&v32 + 1) = v7;
  v70 = v20;
  *(&v31 + 1) = v20;
  v87 = v32;
  v88 = v31;
  v94 = v31;
  v93 = v32;
  v34 = type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState(255, &v93);
  v37 = type metadata accessor for State(0, v34, v35, v36);
  State.wrappedValue.getter(v37, &v93);
  v38 = *(v3 + 60);
  if (BYTE4(v93) == 1)
  {
    v93 = v87;
    v94 = v88;
    v39 = type metadata accessor for AppearanceAnimationView(0, &v93);
    v40 = 56;
  }

  else
  {
    v93 = v87;
    v94 = v88;
    v39 = type metadata accessor for AppearanceAnimationView(0, &v93);
    v40 = 52;
  }

  v65 = v2;
  (*(v8 + 16))(v11, v2 + v38 + *(v39 + v40), v33);
  v41 = v2 + *(v86 + 52);
  v94 = v88;
  v93 = v87;
  v42 = *(v41 + *(type metadata accessor for AppearanceAnimationView(0, &v93) + 60));
  v43 = v68;
  LODWORD(v93) = v68;
  BYTE4(v93) = v29;
  v66 = v29;
  v44 = v67;
  *(&v93 + 1) = v67;
  State.wrappedValue.getter(v37, &v90);
  LOBYTE(v93) = v91;
  v45 = v69;
  View.animation<A>(_:value:)(v42, &v93, v33, MEMORY[0x1E69E6370], v70);
  (*(v8 + 8))(v11, v33);
  LODWORD(v93) = v43;
  BYTE4(v93) = v66;
  *(&v93 + 1) = v44;
  State.wrappedValue.getter(v37, &v90);
  LODWORD(v93) = v90;
  v46 = v73;
  View.id<A>(_:)(&v93, v73, MEMORY[0x1E69E7668], v71, MEMORY[0x1E69E7678], v85);
  (*(v72 + 8))(v45, v46);
  v47 = v83;
  v48 = *(v83 + 16);
  v49 = v74;
  v50 = v86;
  v48(v74, v2, v86);
  v51 = (*(v47 + 80) + 48) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v53 = v88;
  *(v52 + 16) = v87;
  *(v52 + 32) = v53;
  v54 = *(v47 + 32);
  v54(v52 + v51, v49, v50);
  v55 = v82;
  v48(v82, v65, v50);
  v56 = swift_allocObject();
  v57 = v88;
  *(v56 + 16) = v87;
  *(v56 + 32) = v57;
  v54(v56 + v51, v55, v50);
  *&v93 = partial apply for closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter;
  *(&v93 + 1) = v52;
  *&v94 = partial apply for closure #2 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter;
  *(&v94 + 1) = v56;
  v58 = v75;
  v59 = v78;
  v60 = v85;
  View.modifier<A>(_:)();

  (*(v77 + 8))(v60, v59);
  v89[0] = &protocol witness table for IDView<A, B>;
  v89[1] = &protocol witness table for _AppearanceActionModifier;
  v61 = v80;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v80, v89);
  v62 = v76;
  static ViewBuilder.buildExpression<A>(_:)();
  v63 = *(v79 + 8);
  v63(v58, v61);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v63)(v62, v61);
}

double closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 4);
  v11 = *(a1 + 1);
  v23 = *a1;
  v9 = v23;
  v24 = v10;
  v25 = v11;

  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue.AnimationState(255, &v19);
  v15 = type metadata accessor for State(0, v12, v13, v14);
  State.wrappedValue.getter(v15, &v26);
  LODWORD(v19) = v9;
  BYTE4(v19) = v10;
  v20 = v11;
  v17 = v26;
  v18 = (v27 & 1) == 0;
  specialized LazyState.wrappedValue.setter(&v17, v15);

  return result;
}

double closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *))
{
  v12 = *(a1 + 4);
  v13 = *(a1 + 1);
  v25 = *a1;
  v11 = v25;
  v26 = v12;
  v27 = v13;

  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v14 = a6(255, &v21);
  v17 = type metadata accessor for State(0, v14, v15, v16);
  State.wrappedValue.getter(v17, &v28);
  LODWORD(v21) = v11;
  BYTE4(v21) = v12;
  v22 = v13;
  v19 = v28;
  v20 = 0;
  specialized LazyState.wrappedValue.setter(&v19, v17);
  LODWORD(v21) = v11;
  BYTE4(v21) = v12;
  v22 = v13;
  State.wrappedValue.getter(v17, &v28);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v19 = v28 + 1;
  v20 = v29;
  specialized LazyState.wrappedValue.setter(&v19, v17);

  return result;
}

uint64_t AppearanceAnimationView.displayListAnimation.getter@<X0>(char *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = v3;
  v184 = a3;
  v6 = *(a1 + 2);
  v7 = type metadata accessor for ModifiedContent(255, v6, &type metadata for _RotationEffect, a2);
  v157 = type metadata accessor for Optional();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v152 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v145 - v10;
  v173 = v7;
  v164 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v151 = &v145 - v14;
  v16 = type metadata accessor for ModifiedContent(255, v6, &type metadata for _ScaleEffect, v15);
  v162 = type metadata accessor for Optional();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v155 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v145 - v19;
  v172 = v16;
  v171 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v181 = &v145 - v23;
  v25 = type metadata accessor for ModifiedContent(255, v6, &type metadata for _OffsetEffect, v24);
  v169 = type metadata accessor for Optional();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v159 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v145 - v28;
  v180 = v25;
  v179 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v145 - v32;
  v34 = type metadata accessor for ModifiedContent(255, v6, &type metadata for _OpacityEffect, v33);
  v35 = type metadata accessor for Optional();
  v175 = *(v35 - 8);
  v176 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v183 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v145 - v38;
  v40 = *(a1 + 3);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v150 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v160 = &v145 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v154 = &v145 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v145 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v158 = &v145 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v174 = &v145 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v166 = &v145 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v145 - v57;
  v59 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v153 = &v145 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v62);
  v182 = &v145 - v64;
  v65 = a1;
  v66 = *(a1 + 13);
  v67 = *(v41 + 16);
  v68 = v4;
  *&v186 = v66;
  v67(v58, v4 + v66, v40, v63);
  v69 = swift_dynamicCast();
  v70 = v59[7];
  *&v185 = v41 + 16;
  if (v69)
  {
    v146 = v70;
    v70(v39, 0, 1, v34);
    v145 = v59[4];
    v145(v182, v39, v34);
    (v67)(v166, v4 + *(v65 + 14), v40);
    v71 = v40;
    if (swift_dynamicCast())
    {
      v72 = v183;
      v146(v183, 0, 1, v34);
      v73 = v153;
      v145(v153, v72, v34);
      v74 = *(v34 + 36);
      v75 = v182;
      v76 = *&v182[v74];
      v77 = *&v73[v74];
      v78 = *(v4 + *(v65 + 15));
      v79 = v184;
      v184[3] = &type metadata for DisplayList.OpacityAnimation;
      v79[4] = &protocol witness table for DisplayList.OpacityAnimation;
      *v79 = v76;
      v79[1] = v77;
      v79[2] = v78;
      v80 = v59[1];

      v80(v73, v34);
      return (v80)(v75, v34);
    }

    v84 = v67;
    v82 = v65;
    (v59[1])(v182, v34);
    v83 = v183;
    v70 = v146;
  }

  else
  {
    v71 = v40;
    v82 = v65;
    v83 = v39;
    v84 = v67;
  }

  v70(v83, 1, 1, v34);
  (*(v175 + 8))(v83, v176);
  v85 = v68;
  v86 = v71;
  (v84)(v174, v68 + v186, v71);
  v87 = v177;
  v88 = v180;
  v89 = swift_dynamicCast();
  v90 = v179;
  v91 = *(v179 + 56);
  v183 = v84;
  v165 = v68;
  if (v89)
  {
    v176 = v91;
    v91(v87, 0, 1, v88);
    v182 = *(v90 + 32);
    (v182)(v178, v87, v88);
    (v84)(v158, v68 + *(v82 + 14), v86);
    v87 = v159;
    v92 = swift_dynamicCast();
    v93 = v184;
    v94 = v181;
    if (v92)
    {
      v176(v87, 0, 1, v88);
      v95 = v149;
      (v182)(v149, v87, v88);
      v96 = *(v88 + 36);
      v97 = v178;
      v98 = *&v178[v96];
      v185 = *&v95[v96];
      v186 = v98;
      v99 = *(v165 + *(v82 + 15));
      v93[3] = &type metadata for DisplayList.OffsetAnimation;
      v93[4] = &protocol witness table for DisplayList.OffsetAnimation;
      v100 = swift_allocObject();
      *v93 = v100;
      v101 = v185;
      *(v100 + 16) = v186;
      *(v100 + 32) = v101;
      *(v100 + 48) = v99;
      v102 = *(v90 + 8);

      v102(v95, v88);
      return (v102)(v97, v88);
    }

    v182 = v82;
    (*(v90 + 8))(v178, v88);
    v103 = v171;
    v104 = v172;
    v105 = v170;
    v85 = v165;
    v91 = v176;
  }

  else
  {
    v182 = v82;
    v103 = v171;
    v104 = v172;
    v94 = v181;
    v105 = v170;
  }

  v91(v87, 1, 1, v88);
  (*(v168 + 8))(v87, v169);
  v106 = v183;
  (v183)(v167, v85 + v186, v86);
  v107 = swift_dynamicCast();
  v108 = v103[7];
  if (v107)
  {
    v108(v105, 0, 1, v104);
    v181 = v103[4];
    (v181)(v94, v105, v104);
    v109 = v94;
    v106(v154, v85 + *(v182 + 14), v86);
    v110 = v155;
    if (swift_dynamicCast())
    {
      v108(v110, 0, 1, v104);
      v111 = v148;
      (v181)(v148, v110, v104);
      v112 = *(v104 + 36);
      v113 = &v94[v112];
      v114 = &v111[v112];
      v115 = *(v85 + *(v182 + 15));
      v116 = v184;
      v184[3] = &type metadata for DisplayList.ScaleAnimation;
      v116[4] = &protocol witness table for DisplayList.ScaleAnimation;
      v117 = swift_allocObject();
      *v116 = v117;
      v118 = *(v113 + 1);
      *(v117 + 16) = *v113;
      *(v117 + 32) = v118;
      v119 = *(v114 + 1);
      *(v117 + 48) = *v114;
      *(v117 + 64) = v119;
      *(v117 + 80) = v115;
      v120 = v103[1];

      v120(v111, v104);
      return (v120)(v109, v104);
    }

    v121 = v85;
    (v103[1])(v109, v104);
    v122 = v163;
    v105 = v110;
    v123 = v184;
  }

  else
  {
    v121 = v85;
    v122 = v163;
    v123 = v184;
  }

  v108(v105, 1, 1, v104);
  (*(v161 + 8))(v105, v162);
  v124 = v183;
  (v183)(v160, v121 + v186, v86);
  v125 = v173;
  v126 = swift_dynamicCast();
  v127 = v164;
  v128 = *(v164 + 56);
  if (v126)
  {
    v128(v122, 0, 1, v125);
    v129 = v122;
    v130 = *(v127 + 32);
    v131 = v151;
    v130(v151, v129, v125);
    v124(v150, v165 + *(v182 + 14), v86);
    v132 = v131;
    v133 = v152;
    v125 = v173;
    if (swift_dynamicCast())
    {
      v128(v133, 0, 1, v125);
      v134 = v147;
      v130(v147, v133, v125);
      v135 = *(v125 + 36);
      v186 = *&v132[v135];
      *&v136 = *&v132[v135 + 16];
      v137 = &v134[v135];
      *(&v136 + 1) = *v137;
      v185 = v136;
      v138 = *(v137 + 1);
      v139 = *(v137 + 2);
      v140 = *(v165 + *(v182 + 15));
      v141 = v184;
      v184[3] = &type metadata for DisplayList.RotationAnimation;
      v141[4] = &protocol witness table for DisplayList.RotationAnimation;
      v142 = swift_allocObject();
      *v141 = v142;
      v143 = v185;
      *(v142 + 16) = v186;
      *(v142 + 32) = v143;
      *(v142 + 48) = v138;
      *(v142 + 56) = v139;
      *(v142 + 64) = v140;
      v144 = *(v127 + 8);

      v144(v134, v125);
      return (v144)(v132, v125);
    }

    (*(v127 + 8))(v132, v125);
    v122 = v133;
    v123 = v184;
  }

  v128(v122, 1, 1, v125);
  result = (*(v156 + 8))(v122, v157);
  v123[4] = 0;
  *v123 = 0u;
  *(v123 + 1) = 0u;
  return result;
}

uint64_t AppearanceAnimationView.archivedBody.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v2;
  v18[0] = v15;
  v18[1] = v2;
  v3 = type metadata accessor for AppearanceAnimationView.AnimationEffect(255, v18);
  v5 = type metadata accessor for ModifiedContent(0, v15, v3, v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  AppearanceAnimationView.displayListAnimation.getter(a1, v12, v18);
  View.modifier<A>(_:)();
  (*(*(v3 - 8) + 8))(v18, v3);
  v17[0] = v16;
  v17[1] = &protocol witness table for AppearanceAnimationView<A, B>.AnimationEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, v5);
}

void lazy protocol witness table accessor for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy()
{
  if (!lazy protocol witness table cache variable for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy)
  {
    swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationStrategy, &type metadata for AppearanceAnimationStrategy, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AppearanceAnimationStrategy and conformance AppearanceAnimationStrategy);
  }
}

uint64_t AppearanceAnimationView.AnimationEffect.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of _DisplayList_AnyEffectAnimation?(v1, &v6);
  if (v7)
  {
    outlined init with take of AnyTrackedValue(&v6, v8);
    v3 = swift_allocObject();
    result = outlined init with take of AnyTrackedValue(v8, v3 + 16);
    v5 = 11;
  }

  else
  {
    result = outlined destroy of _DisplayList_AnyEffectAnimation?(&v6);
    v3 = 0;
    v5 = 20;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v5;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AppearanceAnimationView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + v8;
  v12 = v10 + 7;
  v13 = ((v10 + 7 + ((v10 + v8 + ((v5 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = v8 | *(v4 + 80) & 0xF8;
  if (v14 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  else
  {
    v18 = ~v8;
    (*(v4 + 16))(a1);
    v20 = (v3 + v9) & v18;
    v21 = (a2 + v9) & v18;
    v22 = *(v7 + 16);
    v22(v20, v21, v6);
    v23 = (v11 + v20) & v18;
    v24 = (v11 + v21) & v18;
    v22(v23, v24, v6);
    v25 = (v12 + v23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v12 + v24) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  return v3;
}

double destroy for AppearanceAnimationView(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = *(v7 + 80);
  v11 = (v5 + v10) & ~v10;
  v8(v11, v6);
  v8((*(v9 + 56) + v10 + v11) & ~v10, v6);

  return result;
}

uint64_t initializeWithCopy for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = *(v6 + 48) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 48);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);

  return a1;
}

uint64_t assignWithCopy for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 24);
  v10 = v8 + 24;
  v11 = *(v8 + 80);
  v12 = *(v6 + 40) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 40);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t initializeWithTake for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v10 = v8 + 32;
  v11 = *(v8 + 80);
  v12 = *(v6 + 32) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 32);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t assignWithTake for AppearanceAnimationView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 40);
  v10 = v8 + 40;
  v11 = *(v8 + 80);
  v12 = *(v6 + 24) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 24);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = (v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;

  *(v18 + 8) = *(v19 + 8);
  return a1;
}

void storeEnumTagSinglePayload for AppearanceAnimationView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + v11;
  v17 = (v12 + v11 + v15) & ~v11;
  v18 = v12 + 7;
  v19 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v23 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = (a3 - v13 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v23)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v26 = *(v6 + 56);

        v26();
      }

      else
      {
        v27 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v28 = *(v8 + 56);

          v28(v27);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v29 = a2 - 1;
          }

          *((v18 + ((v16 + v27) & ~v11)) & 0xFFFFFFFFFFFFFFF8) = v29;
        }
      }

      return;
    }
  }

  v24 = ~v13 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_29:
      if (v23 == 2)
      {
        *&a1[v19] = v25;
      }

      else
      {
        *&a1[v19] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v23)
  {
    a1[v19] = v25;
  }
}

void *destroy for AppearanceAnimationView.AnimationEffect(void *a1)
{
  if (a1[3])
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t type metadata completion function for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1)
{
  v5 = &unk_18DE0DC50;
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for AppearanceAnimationView(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v6 + 80) & 0xF8 | v8;
  v10 = ((v9 | 7) + 16) & ~(v9 | 7);
  v11 = *(v6 + 64) + v8;
  v12 = *(v7 + 64);
  v13 = v12 + v8;
  v14 = v12 + 7;
  if (v9 > 7 || ((*(v7 + 80) | *(v6 + 80)) & 0x100000) != 0 || v10 + ((v12 + 7 + ((v12 + v8 + (v11 & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = v17 + v10;
  }

  else
  {
    v18 = ~v8;
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 8) = a2[1];
    v19 = (a2 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v6 + 16);
    v29 = v4;

    v28((a1 + 23) & 0xFFFFFFFFFFFFFFF8, v19, v5);
    v20 = (v11 + ((a1 + 23) & 0xFFFFFFFFFFFFFFF8)) & v18;
    v21 = (v11 + v19) & v18;
    v22 = *(v7 + 16);
    v22(v20, v21, v29);
    v23 = (v13 + v20) & v18;
    v24 = (v13 + v21) & v18;
    v22(v23, v24, v29);
    v25 = (v14 + v23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v14 + v24) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  return a1;
}

double destroy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(v4 - 8);
  v7 = v6 + 8;
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v10 = (a1 + (*(v6 + 80) & 0xF8 | v9 | 7) + 16) & ~(*(v6 + 80) & 0xF8 | v9 | 7);
  (*(v6 + 8))(v10);
  v11 = (*(v7 + 56) + v9 + v10) & ~v9;
  v12 = *(v8 + 8);
  v12(v11, v5);
  v12((*(v8 + 64) + v9 + v11) & ~v9, v5);

  return result;
}

uint64_t initializeWithCopy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = *(v6 + 80) & 0xF8 | v10 | 7;
  v12 = (v11 + 16 + a1) & ~v11;
  v13 = (v11 + 16 + a2) & ~v11;

  v7(v12, v13, v4);
  v14 = *(v8 + 48) + v10;
  v15 = (v14 + v12) & ~v10;
  v16 = (v14 + v13) & ~v10;
  v17 = *(v9 + 16);
  v17(v15, v16, v5);
  v18 = *(v9 + 64);
  v19 = (v18 + v10 + v15) & ~v10;
  v20 = (v18 + v10 + v16) & ~v10;
  v17(v19, v20, v5);
  v21 = (v18 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v18 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);

  return a1;
}

uint64_t assignWithCopy for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(v6 - 8);
  v9 = v8 + 24;
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = *(v8 + 80) & 0xF8 | v11 | 7;
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v8 + 24))(v13, v14);
  v15 = *(v9 + 40) + v11;
  v16 = (v15 + v13) & ~v11;
  v17 = (v15 + v14) & ~v11;
  v18 = *(v10 + 24);
  v18(v16, v17, v7);
  v19 = *(v10 + 64);
  v20 = (v19 + v11 + v16) & ~v11;
  v21 = (v19 + v11 + v17) & ~v11;
  v18(v20, v21, v7);
  v22 = (v19 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);
  return a1;
}

_OWORD *initializeWithTake for AppearanceAnimationView.NormalBody_WithAnimation(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = *(v5 + 80) & 0xF8 | v8 | 7;
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v5 + 32))(v10, v11, *(a3 + 16));
  v12 = *(v6 + 32) + v8;
  v13 = (v12 + v10) & ~v8;
  v14 = (v12 + v11) & ~v8;
  v15 = *(v7 + 32);
  v15(v13, v14, v4);
  v16 = *(v7 + 64);
  v17 = (v16 + v8 + v13) & ~v8;
  v18 = (v16 + v8 + v14) & ~v8;
  v15(v17, v18, v4);
  v19 = (v16 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  return a1;
}

uint64_t assignWithTake for AppearanceAnimationView.NormalBody_WithAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(v6 - 8);
  v9 = v8 + 40;
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = *(v8 + 80) & 0xF8 | v11 | 7;
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v8 + 40))(v13, v14);
  v15 = *(v9 + 24) + v11;
  v16 = (v15 + v13) & ~v11;
  v17 = (v15 + v14) & ~v11;
  v18 = *(v10 + 40);
  v18(v16, v17, v7);
  v19 = *(v10 + 64);
  v20 = (v19 + v11 + v16) & ~v11;
  v21 = (v19 + v11 + v17) & ~v11;
  v18(v20, v21, v7);
  v22 = (v19 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;

  *(v22 + 8) = *(v23 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppearanceAnimationView.NormalBody_WithAnimation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v4 + 80) & 0xF8 | v9 | 7;
  v13 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v14 = v10 + v9;
  v15 = v10 + 7;
  v16 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v17 = ((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      v25 = (a1 + v12 + 16) & ~v12;
      if (v5 == v11)
      {
        return (*(v4 + 48))(v25);
      }

      v26 = (v13 + v25) & ~v9;
      if (v8 == v11)
      {
        return (*(v7 + 48))(v26, v8, v6);
      }

      v27 = *((v15 + ((v14 + v26) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFF8) == -9)
  {
    v24 = 0;
  }

  else
  {
    if (v17 <= 3)
    {
      v23 = ((v12 + 16) & ~v12) + ((v15 + ((v14 + (v13 & ~v9)) & ~v9)) & 0xFFFFFFF8) + 9;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  return v11 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for AppearanceAnimationView.NormalBody_WithAnimation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v6 + 80) & 0xF8 | v10 | 7;
  v15 = ((v14 + 16) & ~v14) + ((v12 + 7 + ((v12 + v10 + ((v11 + v10) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = a3 >= v13;
  v17 = a3 - v13;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v13 < a2)
  {
    v19 = ~v13 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (((v14 + 16) & ~v14) + ((v12 + 7 + ((v12 + v10 + ((v11 + v10) & ~v10)) & ~v10)) & 0xFFFFFFF8) != -9)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_52:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v14 + 16] & ~v14;
  if (v7 == v13)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v11 + v10 + v24) & ~v10;
    if (v9 == v13)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v28 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v28 = a2 - 1;
      }

      *((v12 + 7 + ((v12 + v10 + v26) & ~v10)) & 0xFFFFFFFFFFFFFFF8) = v28;
    }
  }
}

void type metadata accessor for _AnimationModifier<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _AnimationModifier<Bool>)
  {
    v4 = type metadata accessor for _AnimationModifier(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _AnimationModifier<Bool>);
    }
  }
}

double partial apply for closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter(uint64_t (*a1)(void, void *), uint64_t (*a2)(uint64_t, uint64_t *))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v10[0] = v2[2];
  v4 = v10[0];
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = *(a1(0, v10) - 8);
  return closure #2 in AppearanceAnimationView.NormalBody_WithAnimation.body.getter((v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80))), v4, v5, v6, v7, a2);
}

uint64_t partial apply for closure #1 in AppearanceAnimationView.NormalBody_AnimationValue.body.getter(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

void type metadata accessor for _DisplayList_AnyEffectAnimation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?)
  {
    type metadata accessor for _DisplayList_AnyEffectAnimation();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?);
    }
  }
}

uint64_t outlined destroy of _DisplayList_AnyEffectAnimation?(uint64_t a1)
{
  type metadata accessor for _DisplayList_AnyEffectAnimation?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CodablePlatformImage.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CorePlatformImage();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = a1;
  v6 = a1;
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v6);
  v8.receiver = v5;
  v8.super_class = v4;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  *a2 = v7;
}

id RBDisplayListEncoderDelegate.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = &v3[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
  *v5 = *a1;
  *(v5 + 2) = v4;
  *(v5 + 24) = *(a1 + 24);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id RBDisplayListDecoderDelegate.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  v7 = &v3[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v7 = *a1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(int a1, void (*a2)(void), unint64_t a3)
{
  v8 = type metadata accessor for OSSignpostID();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 2);
  v38 = *v3;
  v39 = v11;
  v40 = *(v3 + 24);
  v12 = ProtobufEncoder.archiveWriter.getter();
  if (v12)
  {
    v13 = v12;
    v35 = v8;
    v37 = a1;
    lazy protocol witness table accessor for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:)();
    v15 = v14;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v16 = v13[19];
    if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(&v38), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_endAccess();
      outlined destroy of AnyHashable(&v38);
      if (one-time initialization token for archiving != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v20, static OSSignposter.archiving);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v21, v22);
      static OSSignpostID.exclusive.getter();
      v15 = OSSignposter.logHandle.getter();
      v23 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v19;
        v25 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v15, v23, v25, "addAttachment.cacheHit", "index=%{name=index}ld", v24, 0xCu);
        MEMORY[0x193AC4820](v24, -1, -1);
      }

      (*(v36 + 8))(v10, v35);
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_endAccess();
      outlined destroy of AnyHashable(&v38);
      v38 = 0uLL;
      LODWORD(v39) = 0;
      BYTE4(v39) = 1;
      specialized ArchiveWriter.addAttachment(hash:from:)(&v38, v13, a2, a3);
      if (v4)
      {
        goto LABEL_11;
      }

      v19 = v26;
      v37 = a1;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v13[19];
      v13[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, &v38, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v38);
      v13[19] = v41;
      swift_endAccess();
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_9:
        ProtobufEncoder.encodeVarint(_:)(8uLL);
        ProtobufEncoder.encodeVarint(_:)(v19);
LABEL_11:

        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v15 = Mutable;
    v28 = CGDataConsumerCreateWithCFData(Mutable);
    if (v28)
    {
      v13 = v28;
      a2();
      if (v4)
      {

LABEL_19:
        return;
      }

LABEL_18:
      v30 = v15;
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      ProtobufEncoder.dataField(_:_:)(2, v31, v33);
      outlined consume of Data._Representation(v31, v33);

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CodablePlatformImage.kitImage.getter()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

void CodablePlatformImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v9 = _CorePlatformImageGetCGImage(v7, *(v5 + v8));
  if (!v9)
  {
    lazy protocol witness table accessor for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v10 = *(v5 + v6);
  v11 = *(v5 + v8);
  v12 = v9;
  _CorePlatformImageGetScale(v10, v11);
  v14 = v13;
  ImageOrientation = _CorePlatformImageGetImageOrientation(*(v5 + v6), *(v5 + v8));
  v16 = specialized Image.Orientation.init(rawValue:)(ImageOrientation);
  if (v16 == 8)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    LOBYTE(v17) = v16;
  }

  _CorePlatformImageGetBaselineOffsetFromBottom(*(v5 + v6), *(v5 + v8));
  v19 = v18;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v12);

  if (v2)
  {
    goto LABEL_46;
  }

  v20 = round(v14);
  if (v20 == 1.0)
  {
    goto LABEL_18;
  }

  v21 = fabs(v20);
  if (v21 >= 65536.0)
  {
    v22 = 17;
  }

  else
  {
    v22 = 21;
  }

  ProtobufEncoder.encodeVarint(_:)(v22);
  if (v21 >= 65536.0)
  {
    v25 = a1[1];
    v24 = v25 + 8;
    if (!__OFADD__(v25, 8))
    {
      if (a1[2] < v24)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v24) = v20;
      }

      else
      {
        a1[1] = v24;
        *(*a1 + v25) = v20;
      }

      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v23 = a1[1];
  v24 = v23 + 4;
  if (__OFADD__(v23, 4))
  {
    __break(1u);
    goto LABEL_48;
  }

  *&v20 = v20;
  if (a1[2] < v24)
  {
    goto LABEL_51;
  }

  a1[1] = v24;
  *(*a1 + v23) = LODWORD(v20);
  while (1)
  {
LABEL_18:
    if (v17 > 3u)
    {
      if (v17 > 5u)
      {
        v17 = v17 == 6 ? 7 : 5;
      }

      else
      {
        v17 = v17 == 4 ? 1 : 3;
      }
    }

    else if (v17 > 1u)
    {
      v17 = v17 == 2 ? 6 : 4;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_33;
      }

      v17 = 2;
    }

    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v17);
LABEL_33:
    if (v19 == 0.0)
    {
      goto LABEL_44;
    }

    v20 = fabs(v19);
    v26 = v20 >= 65536.0 ? 33 : 37;
    ProtobufEncoder.encodeVarint(_:)(v26);
    if (v20 >= 65536.0)
    {
      break;
    }

    v27 = a1[1];
    v24 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      v28 = v19;
      if (a1[2] < v24)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v24) = v28;
      }

      else
      {
        a1[1] = v24;
        *(*a1 + v27) = v28;
      }

      goto LABEL_44;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    *ProtobufEncoder.growBufferSlow(to:)(v24) = LODWORD(v20);
  }

  v29 = a1[1];
  v24 = v29 + 8;
  if (__OFADD__(v29, 8))
  {
    goto LABEL_50;
  }

  if (a1[2] < v24)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v24) = v19;
  }

  else
  {
    a1[1] = v24;
    *(*a1 + v29) = v19;
  }

LABEL_44:
  v30 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate;
  swift_beginAccess();
  if (*(v5 + v30))
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

LABEL_46:
}

void CodablePlatformImage.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v5 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v5)
        {
          goto LABEL_96;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_97;
      }

      if (v10 < 8)
      {
        goto LABEL_96;
      }

LABEL_11:
      v12 = v10 >> 3;
      v13 = v10 & 7;
      if (v10 >> 3 <= 2)
      {
        if (v12 == 1)
        {
          if (v13 != 2)
          {
            goto LABEL_96;
          }

          v20 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
            v20 = isUniquelyReferenced_nonNull_native;
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
            v20 = isUniquelyReferenced_nonNull_native;
          }

          *(v20 + 16) = v23 + 1;
          *(v20 + 8 * v23 + 32) = v6;
          a1[5] = v20;
          v24 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
LABEL_97:

            return;
          }

          if (v24 < 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            __break(1u);
            v43 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v44 = *(v43 + 2);
            if (v44)
            {
              v41 = v44 - 1;
              v42 = *&v43[8 * v41 + 32];
              *(v43 + 2) = v41;

              a1[5] = v43;
              a1[2] = v42;
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v25 = a1[1] + v24;
          if (v6 < v25)
          {
            goto LABEL_96;
          }

          a1[2] = v25;
          _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
          v27 = a1[5];
          if (!*(v27 + 2))
          {
            goto LABEL_102;
          }

          v28 = v26;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v29 = *(v27 + 2);
            if (!v29)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
            v29 = *(v27 + 2);
            if (!v29)
            {
LABEL_93:
              __break(1u);
              break;
            }
          }

          v30 = v29 - 1;
          v6 = *&v27[8 * v30 + 32];
          *(v27 + 2) = v30;

          a1[5] = v27;
          a1[2] = v6;
          v8 = v28;
          goto LABEL_4;
        }

        if (v12 == 2)
        {
          if (v13 == 5)
          {
            v33 = a1[1];
            if (v6 < (v33 + 1))
            {
              goto LABEL_96;
            }

            v34 = *v33;
            a1[1] = v33 + 1;
            v9 = v34;
          }

          else
          {
            if (v13 == 2)
            {
              v32 = ProtobufDecoder.decodeVarint()(v10);
              if (v2)
              {
                goto LABEL_97;
              }

              if (v32 < 0)
              {
                goto LABEL_106;
              }

              v15 = a1[1];
              if (v6 < v15 + v32)
              {
                goto LABEL_96;
              }

              a1[3] = 17;
              a1[4] = v15 + v32;
            }

            else
            {
              if (v13 != 1)
              {
                goto LABEL_96;
              }

              v15 = a1[1];
            }

            if (v6 < (v15 + 1))
            {
              goto LABEL_96;
            }

            v9 = *v15;
            a1[1] = v15 + 1;
          }

          goto LABEL_4;
        }

LABEL_54:
        if ((v10 & 7) > 1)
        {
          if (v13 == 2)
          {
            v35 = ProtobufDecoder.decodeVarint()(v10);
            if (v2)
            {
              goto LABEL_97;
            }

            if (v35 < 0)
            {
              goto LABEL_107;
            }

            v31 = a1[1] + v35;
            if (v6 < v31)
            {
              goto LABEL_96;
            }

            goto LABEL_80;
          }

          if (v13 != 5)
          {
            goto LABEL_96;
          }

LABEL_62:
          v31 = a1[1] + 4;
          if (v6 < v31)
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        if ((v10 & 7) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_56;
      }

      if (v12 == 3)
      {
        if ((v10 & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_96;
          }

          v10 = ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_97;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          v16 = a1[1] + v10;
          if (v6 < v16)
          {
LABEL_96:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();

            return;
          }

          a1[3] = 24;
          a1[4] = v16;
        }

        v17 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_97;
        }

        if (v17 <= 0xFF)
        {
          v7 = 0;
          if (v17 <= 3u)
          {
            switch(v17)
            {
              case 1u:
                v7 = 4;
                break;
              case 2u:
                v7 = 1;
                break;
              case 3u:
                v7 = 5;
                break;
            }
          }

          else if (v17 > 5u)
          {
            if (v17 == 6)
            {
              v7 = 2;
            }

            else if (v17 == 7)
            {
              v7 = 6;
            }
          }

          else if (v17 == 4)
          {
            v7 = 3;
          }

          else if (v17 == 5)
          {
            v7 = 7;
          }
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_4;
      }

      if (v12 != 4)
      {
        if (v12 == 5)
        {
          if ((v10 & 7) != 0)
          {
            if (v13 != 2)
            {
              goto LABEL_96;
            }

            v10 = ProtobufDecoder.decodeVarint()(v10);
            if (v2)
            {
              goto LABEL_97;
            }

            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            v14 = a1[1] + v10;
            if (v6 < v14)
            {
              goto LABEL_96;
            }

            a1[3] = 40;
            a1[4] = v14;
          }

LABEL_3:
          ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_97;
          }

          goto LABEL_4;
        }

        goto LABEL_54;
      }

      if (v13 == 5)
      {
        goto LABEL_62;
      }

      if (v13 == 2)
      {
        v18 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_97;
        }

        if (v18 < 0)
        {
          goto LABEL_105;
        }

        v19 = a1[1];
        if (v6 < v19 + v18)
        {
          goto LABEL_96;
        }

        a1[3] = 33;
        a1[4] = v19 + v18;
        goto LABEL_58;
      }

LABEL_56:
      if (v13 != 1)
      {
        goto LABEL_96;
      }

      v19 = a1[1];
LABEL_58:
      v31 = v19 + 8;
      if (v6 < v31)
      {
        goto LABEL_96;
      }

LABEL_80:
      a1[1] = v31;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (!v8)
        {
          goto LABEL_95;
        }

        KitImage = _CorePlatformImageMakeKitImage(v9, 0, v8, (0x507030104060200uLL >> (8 * v7)) & 7);
        v37 = type metadata accessor for CorePlatformImage();
        v38 = objc_allocWithZone(v37);
        v38[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = 0;
        *&v38[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = KitImage;
        v39 = KitImage;
        v38[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(0, v39);
        v45.receiver = v38;
        v45.super_class = v37;
        v40 = objc_msgSendSuper2(&v45, sel_init);

        *a2 = v40;
        return;
      }
    }
  }

  a1[3] = 0;
LABEL_95:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t CodableCGImage.encode(to:)(__int128 *a1)
{
  v3 = *v1;
  Identifier = CGImageGetIdentifier();
  v5 = *(a1 + 2);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 24);
  ProtobufEncoder.archiveHost.getter(v11);
  v7[2] = v11;
  v7[3] = v3;
  specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, partial apply for closure #1 in CodableCGImage.encode(to:), v7);
  return outlined destroy of AnyArchivedViewHost?(v11, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
}

void closure #1 in CodableCGImage.encode(to:)(CGDataConsumer *a1, uint64_t a2, void *a3)
{
  v26 = a1;
  type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UTType();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  outlined init with copy of AnyArchivedViewHost?(a2, v29);
  v15 = v30;
  if (v30)
  {
    v16 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v17 = (*(v16 + 16))(a3, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v29);
    if (v3)
    {
      return;
    }
  }

  else
  {
    outlined destroy of AnyArchivedViewHost?(v29, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    v17 = a3;
  }

  outlined init with copy of AnyArchivedViewHost?(a2, &v27);
  if (!v28)
  {
    outlined destroy of AnyArchivedViewHost?(&v27, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    static UTType.png.getter();
    v20 = v32;
LABEL_12:
    v24 = specialized static CodableCGImage.export(_:to:as:)(v17, v26, v14);
    (*(v20 + 8))(v14, v9, v24);

    return;
  }

  outlined init with take of AnyTrackedValue(&v27, v29);
  v18 = v30;
  v19 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v19 + 32))(v17, v18, v19);
  v20 = v32;
  v21 = *(v32 + 48);
  if (v21(v8, 1, v9) != 1)
  {
    v23 = *(v20 + 32);
    v23(v11, v8, v9);
    v23(v14, v11, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
    goto LABEL_12;
  }

  lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();

  if (v21(v8, 1, v9) != 1)
  {
    outlined destroy of AnyArchivedViewHost?(v8, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
}

void CodableCGImage.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t $defer #1 () in static CodableCGImage.export(_:to:as:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static OSSignposter.archiving);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v10, v11, v14, "CodableCGImage.export", v12, v13, 2u);
    MEMORY[0x193AC4820](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CodableCGImage(__int128 *a1)
{
  v3 = *v1;
  Identifier = CGImageGetIdentifier();
  v5 = *(a1 + 2);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 24);
  ProtobufEncoder.archiveHost.getter(v11);
  v7[2] = v11;
  v7[3] = v3;
  specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, closure #1 in CodableCGImage.encode(to:)partial apply, v7);
  return outlined destroy of AnyArchivedViewHost?(v11, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
}

void protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodableCGImage(uint64_t a1@<X0>, void *a2@<X8>)
{
  _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t CodableRBDisplayListContents.base.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

void CodableRBDisplayListContents.encode(to:)(__int128 *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = *(a1 + 2);
  v28 = *a1;
  v29 = v5;
  v30 = *(a1 + 24);
  v6 = ProtobufEncoder.archiveWriter.getter();
  if (v6)
  {
    v7 = v6;
    v26 = *a1;
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    v10 = *(a1 + 4);
    v11 = type metadata accessor for RBDisplayListEncoderDelegate();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
    *v13 = v26;
    *(v13 + 2) = v9;
    *(v13 + 3) = v8;
    *(v13 + 4) = v10;
    v27.receiver = v12;
    v27.super_class = v11;

    v14 = objc_msgSendSuper2(&v27, sel_init);
    *&v28 = 0;
    v15 = [v4 encodedDataForDelegate:v14 error:&v28];

    v16 = v28;
    if (v15)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      outlined copy of Data._Representation(v17, v19);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v17, v19, &v28);
      v20 = v29;
      v21 = v28;
      v22 = specialized Collection<>.firstIndex(of:)(v28, *(&v28 + 1), v29, v7[4]);
      if ((v23 & 1) == 0 || (v28 = v21, LODWORD(v29) = v20, BYTE4(v29) = 0, outlined copy of Data._Representation(v17, v19), specialized ArchiveWriter.addAttachment(hash:from:)(&v28, v7, v17, v19), !v2))
      {
        if (v22 < 0)
        {
          __break(1u);
        }

        if (v22)
        {
          v24 = v22;
          ProtobufEncoder.encodeVarint(_:)(8uLL);
          ProtobufEncoder.encodeVarint(_:)(v24);
        }
      }

      outlined consume of Data._Representation(v17, v19);
    }

    else
    {
      v25 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

double RBDisplayListEncoderDelegate.encoder.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return result;
}

id RBDisplayListEncoderDelegate.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder];
  *v5 = *a1;
  *(v5 + 2) = v4;
  *(v5 + 24) = *(a1 + 24);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t RBDisplayListEncoderDelegate.encoderSet.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  if (one-time initialization token for rbEncoderSetKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.rbEncoderSetKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for RBEncoderSet();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

char *RBDisplayListEncoderDelegate.encodedData(image:)(unsigned int a1, uint64_t a2)
{
  v5 = type metadata accessor for Data.Deallocator();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  v9 = RBImageCopyCGImage();
  if (!v9)
  {
    lazy protocol witness table accessor for type CodableRBImage.Error and conformance CodableRBImage.Error();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v10 = v9;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v11 = v24;
  v12 = v26;
  result = swift_isUniquelyReferenced_nonNull_native();
  v28 = v6;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v15 + 1;
  *&v12[8 * v15 + 32] = v11;
  v26 = v12;
  if (!__OFADD__(v11, 1))
  {
    v24 = v11 + 1;
    Identifier = CGImageGetIdentifier();
    v21[1] = v23;
    v21[2] = v11 + 1;
    v21[3] = v25;
    v21[4] = v12;
    v21[5] = v27;
    ProtobufEncoder.archiveHost.getter(v22);
    MEMORY[0x1EEE9AC00](v17);
    v21[-2] = v22;
    v21[-1] = v10;
    specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, closure #1 in CodableCGImage.encode(to:)partial apply, &v21[-4]);
    if (!v3)
    {
      outlined destroy of AnyArchivedViewHost?(v22, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
      ProtobufEncoder.endLengthDelimited()();

      swift_unknownObjectRelease();
      v19 = v23;
      if (v23)
      {
        v20 = v24;
        (*(v28 + 104))(v8, *MEMORY[0x1E6969000], v5);
        v19 = specialized Data.init(bytesNoCopy:count:deallocator:)(v19, v20, v8);
      }

      return v19;
    }

    outlined destroy of AnyArchivedViewHost?(v22, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    swift_unknownObjectRelease();
    v18 = v23;
    v19 = v26;
LABEL_12:
    free(v18);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t RBDisplayListEncoderDelegate.encodedData(cgFont:)(CGFont *a1)
{
  v4 = type metadata accessor for Data.Deallocator();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);

  CodableCGFont.encode(to:)(&v13, a1);
  if (v2)
  {
    free(v13);
    v8 = v16;
  }

  else
  {
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      (*(v5 + 104))(v7, *MEMORY[0x1E6969000], v4);
      v8 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v9, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

Swift::Bool __swiftcall RBDisplayListEncoderDelegate.shouldEncodeFontSubset(cgFont:)(CGFontRef cgFont)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 16);
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder);
  v6 = v2;
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 24);
  ProtobufEncoder.archiveOptions.getter(v4);
  return (v4[0] & 0x14) != 4;
}

double RBDisplayListDecoderDelegate.decoder.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder);
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 32);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 40);
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);
  v7 = *v2;
  v6 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  v8 = v7;

  return result;
}

id RBDisplayListDecoderDelegate.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v7 = *a1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

void lazy protocol witness table accessor for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error()
{
  if (!lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformImage.Error, &unk_1F00AAB20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodablePlatformImage.Error, &unk_1F00AAB20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodablePlatformImage.Error and conformance CodablePlatformImage.Error);
  }
}

void RBDisplayListDecoderDelegate.decodedImageContents(data:type:)(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  outlined copy of Data._Representation(a1, a2);
  ProtobufDecoder.init(_:)(a1, a2, v13);
  v8 = *(v3 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);

  v13[6].super.isa = v8;
  v9 = specialized CodableRBImage.init(from:)(v13);
  if (v4)
  {
    goto LABEL_2;
  }

  if (!v9)
  {
    lazy protocol witness table accessor for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error();
    swift_allocError();
    swift_willThrow();
LABEL_2:
    isa = v13[0].super.isa;

    return;
  }

  *a3 = v10;
  v12 = v13[0].super.isa;
}

char *RBDisplayListDecoderDelegate.decodedCGFont(data:)(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  ProtobufDecoder.init(_:)(a1, a2, v9);
  v5 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder + 48);

  v9[6].super.isa = v5;
  v6 = specialized CodableCGFont.init(from:)(v9);
  isa = v9[0].super.isa;

  return v6;
}

id RBDisplayListDecoderDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t type metadata accessor for RBEncoderSet()
{
  result = lazy cache variable for type metadata for RBEncoderSet;
  if (!lazy cache variable for type metadata for RBEncoderSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBEncoderSet);
  }

  return result;
}

void lazy protocol witness table accessor for type CodableRBImage.Error and conformance CodableRBImage.Error()
{
  if (!lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableRBImage.Error, &unk_1F00AAA90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableRBImage.Error, &unk_1F00AAA90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableRBImage.Error and conformance CodableRBImage.Error);
  }
}

char *specialized CodableRBImage.init(from:)(void *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_41:
    a1[3] = 0;
LABEL_42:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    v6 = swift_allocError();
    swift_willThrow();
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[3];
    if (v7)
    {
      v8 = a1[4];
      if (v4 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v4)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    v7 = ProtobufDecoder.decodeVarint()(v7);
    if (v1)
    {
      goto LABEL_44;
    }

    if (v7 < 8)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_44:

      return v6;
    }

LABEL_11:
    v9 = v7 & 7;
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((v7 & 7) > 1)
    {
      if (v9 == 2)
      {
        v20 = ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_44;
        }

        if (v20 < 0)
        {
          goto LABEL_51;
        }

        v19 = a1[1] + v20;
        if (v5 < v19)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_43;
        }

        v19 = a1[1] + 4;
        if (v5 < v19)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if ((v7 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v7);
        if (v1)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_43;
      }

      v19 = a1[1] + 8;
      if (v5 < v19)
      {
        goto LABEL_43;
      }
    }

    a1[1] = v19;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      a1[3] = 0;
      if (!v6)
      {
        goto LABEL_42;
      }

      return v6;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_43;
  }

  v2 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  if (v12 >= v11 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
    v2 = isUniquelyReferenced_nonNull_native;
  }

  *(v2 + 16) = v12 + 1;
  *(v2 + 8 * v12 + 32) = v5;
  a1[5] = v2;
  v13 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v1)
  {
    goto LABEL_44;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = a1[1] + v13;
    if (v5 < v14)
    {
      goto LABEL_43;
    }

    a1[2] = v14;
    _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_50;
    }

    v2 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v17 = *(v16 + 2);
      if (!v17)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v18 = v17 - 1;
    v5 = *&v16[8 * v18 + 32];
    *(v16 + 2) = v18;

    a1[5] = v16;
    a1[2] = v5;
    v6 = v2;
    goto LABEL_4;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v24 = result;
  v25 = *(result + 2);
  if (v25)
  {
    v22 = v25 - 1;
    v23 = *&result[8 * v22 + 32];
    *(result + 2) = v22;

    a1[5] = v24;
    a1[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

double specialized static CodableCGImage.export(_:to:as:)(CGImage *a1, CGDataConsumer *a2, uint64_t a3)
{
  v59 = a2;
  v5 = type metadata accessor for OSSignpostID();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v15, static OSSignposter.archiving);
  (*(v12 + 16))(v14, a3, v11);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v56 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    v55 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v54 = a3;
    v53 = v19;
    v60 = v19;
    *v18 = 136315138;
    v20 = UTType.identifier.getter();
    v22 = v10;
    v23 = v7;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v60);

    *(v18 + 4) = v24;
    v7 = v23;
    v10 = v22;
    (*(v12 + 8))(v14, v11);
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v16, v56, v25, "CodableCGImage.export", "typeIdentifier=%{name=typeIdentifier}s", v18, 0xCu);
    v26 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x193AC4820](v26, -1, -1);
    v27 = v18;
    a1 = v55;
    MEMORY[0x193AC4820](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v29 = v57;
  v28 = v58;
  (*(v57 + 16))(v7, v10, v58);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v30 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v29 + 8))(v10, v28);
  v31 = UTType.identifier.getter();
  v32 = MEMORY[0x193ABEC20](v31);

  CopyForImageIODestination = _CGImageCreateCopyForImageIODestination(a1);
  if (!CopyForImageIODestination)
  {
    CopyForImageIODestination = a1;
  }

  v34 = CGImageCopySourceData();
  if (v34)
  {
    v35 = v34;
    type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAB4C0;
    v37 = *MEMORY[0x1E696E118];
    *(inited + 32) = *MEMORY[0x1E696E118];
    type metadata accessor for CFStringRef(0);
    *(inited + 40) = v32;
    v38 = *MEMORY[0x1E696E040];
    *(inited + 64) = v39;
    *(inited + 72) = v38;
    *(inited + 104) = MEMORY[0x1E69E6370];
    *(inited + 80) = 1;
    v40 = v37;
    v41 = v32;
    v42 = v38;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (CFStringRef, Any)(0);
    swift_arrayDestroy();
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v43.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v44 = CGImageSourceCreateWithData(v35, v43.super.isa);
    if (v44)
    {
      v45 = v44;
      v46 = CGImageSourceGetType(v44);
      if (v46)
      {
        v47 = v46;
        if (CFEqual(v46, v41))
        {
          v48 = v35;
          CFDataGetBytePtr(v48);
          CFDataGetLength(v48);

          CGDataConsumerPutBytes();
LABEL_19:

          $defer #1 () in static CodableCGImage.export(_:to:as:)(v30);

          return result;
        }
      }

      else
      {
        v47 = v45;
      }
    }
  }

  v49 = CGImageDestinationCreateWithDataConsumer(v59, v32, 1uLL, 0);
  if (v49)
  {
    v47 = v49;
    CGImageDestinationAddImage(v49, CopyForImageIODestination, 0);
    CGImageDestinationFinalize(v47);
    v43.super.isa = v32;
    v45 = CopyForImageIODestination;
    goto LABEL_19;
  }

  lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();

  $defer #1 () in static CodableCGImage.export(_:to:as:)(v30);

  return result;
}

char *specialized RBDisplayListEncoderDelegate.encodedFontData(data:cgFont:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Data.Deallocator();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = *(v2 + OBJC_IVAR____TtC7SwiftUI28RBDisplayListEncoderDelegate_encoder + 32);

  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v9 = v19;
  v10 = v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 2) = v13 + 1;
  *&v10[8 * v13 + 32] = v9;
  v21 = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = v9 + 1;
    Data.encode(to:)(&v18, a1, a2);
    if (v3)
    {
      free(v18);
      v14 = v21;
    }

    else
    {
      ProtobufEncoder.endLengthDelimited()();
      v15 = v18;
      if (v18)
      {
        v16 = v19;
        (*(v23 + 104))(v8, *MEMORY[0x1E6969000], v6);
        v14 = specialized Data.init(bytesNoCopy:count:deallocator:)(v15, v16, v8);
      }

      else
      {
        v14 = 0;
      }
    }

    return v14;
  }

  return result;
}

void lazy protocol witness table accessor for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error()
{
  if (!lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for RBDisplayListDecoderDelegate.Error, &unk_1F00AAA00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for RBDisplayListDecoderDelegate.Error, &unk_1F00AAA00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RBDisplayListDecoderDelegate.Error and conformance RBDisplayListDecoderDelegate.Error);
  }
}

void lazy protocol witness table accessor for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:)()
{
  if (!lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:))
  {
    swift_getWitnessTable(protocol conformance descriptor for Key #1 in CodableCGImage.encode(to:), &unk_1F00AABD0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:));
  }
}

{
  if (!lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:))
  {
    swift_getWitnessTable(protocol conformance descriptor for Key #1 in CodableCGImage.encode(to:), &unk_1F00AABD0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Key #1 in CodableCGImage.encode(to:) and conformance Key #1 in CodableCGImage.encode(to:));
  }
}

uint64_t outlined init with copy of AnyArchivedViewHost?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyArchivedViewHost?(0, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyArchivedViewHost?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AnyArchivedViewHost?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for AnyArchivedViewHost?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void static CGImageRef.render(size:scale:environment:options:renderer:)(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v40 = a1[1];
  v41 = *a1;
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = *(a2 + 5);
  v14 = a2[2];
  v15 = *(a2 + 12);
  if ((v14 & 1) != 0 && [objc_opt_self() sharedDefaultDevice])
  {
    v39 = swift_unknownObjectRetain();
  }

  else
  {
    v39 = [objc_opt_self() sharedDevice];
  }

  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0);
  inited = swift_initStackObject();
  v17 = *MEMORY[0x1E69C71B8];
  *(inited + 32) = *MEMORY[0x1E69C71B8];
  v18 = MEMORY[0x1E69E7DE0];
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 40) = a7;
  v19 = *MEMORY[0x1E69C7198];
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  LODWORD(aBlock) = v10;
  BYTE4(aBlock) = v11;
  BYTE5(aBlock) = v13;
  DWORD2(aBlock) = v14;
  BYTE12(aBlock) = v15;
  v20 = RasterizationOptions.resolvedColorMode.getter();
  v21 = MEMORY[0x1E69E72F0];
  *(inited + 80) = v20;
  v22 = *MEMORY[0x1E69C71A8];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 120) = (v14 & 2) != 0;
  v24 = *MEMORY[0x1E69C7188];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  *(inited + 184) = v21;
  *(inited + 160) = 1;
  v25 = v17;
  v26 = v19;
  v27 = v22;
  v28 = v24;
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (RBImageRendererProperty, Any)(0);
  swift_arrayDestroy();
  v30 = *MEMORY[0x1E69C71C0];
  v31 = dword_18DDEDA20[v12];
  v44 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = v31;
  outlined init with take of Any(&aBlock, v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v30, isUniquelyReferenced_nonNull_native);
  type metadata accessor for RBImageRendererProperty(0);
  lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = swift_allocObject();
  v34[2] = v41;
  v34[3] = v40;
  v34[4] = a3;
  v34[5] = a4;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
  *(v35 + 24) = v34;
  v45 = _sSo13RBDisplayListCIgg_ABIegg_TRTA_0;
  v46 = v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v44 = &block_descriptor_26;
  v36 = _Block_copy(&aBlock);

  [v39 renderImageInRect:isa options:v36 renderer:{0.0, 0.0, a5, a6}];
  swift_unknownObjectRelease();
  _Block_release(v36);
  swift_unknownObjectRelease();

  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if (isa)
  {
    __break(1u);
  }
}

uint64_t Image.init(size:label:opaque:colorMode:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v18 = *a6;
  if (one-time initialization token for defaultFlags != -1)
  {
    v23 = a5;
    swift_once();
    a5 = v23;
  }

  if (a5)
  {
    v19 = static RasterizationOptions.Flags.defaultFlags | 3;
  }

  else
  {
    v19 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFC) + 1;
  }

  type metadata accessor for RenderedImageProviderBox();
  v20 = swift_allocObject();
  type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v20 + 88) = a8;
  *(v20 + 96) = v21;
  *(v20 + 16) = a9;
  *(v20 + 24) = a10;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  *(v20 + 64) = -1;
  *(v20 + 68) = v18;
  *(v20 + 69) = 3;
  *(v20 + 72) = v19;
  *(v20 + 76) = 3;
  *(v20 + 80) = a7;
  return v20;
}

uint64_t Image.init(size:label:options:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v16 = *a5;
  v17 = *(a5 + 2);
  v18 = a5[2];
  v19 = *(a5 + 12);
  type metadata accessor for RenderedImageProviderBox();
  v20 = swift_allocObject();
  type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v20 + 16) = a8;
  *(v20 + 24) = a9;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4;
  *(v20 + 64) = v16;
  *(v20 + 68) = v17;
  *(v20 + 72) = v18;
  *(v20 + 76) = v19;
  *(v20 + 80) = a6;
  *(v20 + 88) = a7;
  *(v20 + 96) = v21;
  return v20;
}

void RenderedImageProviderBox.resolve(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a1;
  v7 = *a1;
  v8 = *(v2 + 96);

  os_unfair_lock_lock((v8 + 16));
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v115 = *(v8 + 40);
  outlined copy of AnyGestureInfo<A>.Value?<A>(v9, *&v10);
  os_unfair_lock_unlock((v8 + 16));

  v113 = v10;
  v114 = v7;
  v117 = v9;
  if (!v9)
  {
    type metadata accessor for PropertyList.Tracker();
    v3 = swift_allocObject();
    type metadata accessor for Text?(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = MEMORY[0x1E69E7CC8];
    *(v18 + 24) = 0;
    *(v18 + 32) = v19;
    v20 = MEMORY[0x1E69E7CC0];
    *(v18 + 40) = v19;
    *(v18 + 48) = v20;
    *(v18 + 56) = 0;
    *(v3 + 16) = v18;

    if (v7)
    {
LABEL_23:
      v21 = v7[8];
      goto LABEL_24;
    }

LABEL_7:
    v21 = 0;
LABEL_24:
    v32 = *(v3 + 16);

    os_unfair_lock_lock((v32 + 16));
    *(v32 + 24) = v21;
    os_unfair_lock_unlock((v32 + 16));

    Height = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v7);

    v33 = *(v111 + 64);
    v34 = *(v111 + 68);
    v35 = *(v111 + 69);
    v36 = *(v111 + 72);
    v37 = *(v111 + 76);
    *&aBlock = v7;
    *(&aBlock + 1) = v3;
    LOBYTE(v151) = v35;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v151, &v123);
    v38 = v123;
    Width = *(v111 + 16);
    v39 = *(v111 + 24);
    v109 = *(v111 + 80);
    v107 = v123;
    if ((v36 & 1) != 0 && [objc_opt_self() sharedDefaultDevice])
    {
      v40 = v37;
      v106 = swift_unknownObjectRetain();
      v108 = v106;
    }

    else
    {
      v40 = v37;
      v106 = [objc_opt_self() sharedDevice];
      v108 = 0;
    }

    type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0);
    v41 = swift_allocObject();
    v42 = *MEMORY[0x1E69C71B8];
    *(v41 + 32) = *MEMORY[0x1E69C71B8];
    v43 = MEMORY[0x1E69E7DE0];
    *(v41 + 16) = xmmword_18DDACA80;
    *(v41 + 40) = Height;
    v44 = *MEMORY[0x1E69C7198];
    *(v41 + 64) = v43;
    *(v41 + 72) = v44;
    LODWORD(aBlock) = v33;
    BYTE4(aBlock) = v34;
    BYTE5(aBlock) = v38;
    DWORD2(aBlock) = v36;
    BYTE12(aBlock) = v40;
    v45 = RasterizationOptions.resolvedColorMode.getter();
    v46 = MEMORY[0x1E69E72F0];
    *(v41 + 80) = v45;
    v47 = *MEMORY[0x1E69C71A8];
    *(v41 + 104) = v46;
    *(v41 + 112) = v47;
    v48 = MEMORY[0x1E69E6370];
    *(v41 + 120) = (v36 & 2) != 0;
    v17 = *MEMORY[0x1E69C7188];
    *(v41 + 144) = v48;
    *(v41 + 152) = v17;
    *(v41 + 184) = v46;
    *(v41 + 160) = 1;
    v49 = v42;
    v50 = v44;
    v51 = v47;
    v52 = v17;
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(v41);
    swift_setDeallocating();
    type metadata accessor for (RBImageRendererProperty, Any)(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = *MEMORY[0x1E69C71C0];
    v55 = dword_18DDEDA20[v107];
    v142 = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = v55;
    outlined init with take of Any(&aBlock, &v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = v53;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v123, v54, isUniquelyReferenced_nonNull_native);
    type metadata accessor for RBImageRendererProperty(0);
    lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v4 = swift_allocObject();
    *(v4 + 16) = v114;
    *(v4 + 24) = v3;
    *(v4 + 32) = v109;
    v10 = COERCE_DOUBLE(swift_allocObject());
    *(*&v10 + 16) = closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:)partial apply;
    *(*&v10 + 24) = v4;
    v143 = thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ()partial apply;
    v144 = v10;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v141 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v142 = COERCE_DOUBLE(&block_descriptor_22_0);
    v15 = _Block_copy(&aBlock);

    v57 = COERCE_DOUBLE([v106 renderImageInRect:isa options:v15 renderer:{0.0, 0.0, Width, v39}]);
    swift_unknownObjectRelease();
    _Block_release(v15);
    swift_unknownObjectRelease();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_49;
    }

    if (v57 == 0.0)
    {

      v60 = 0;
      v59 = 0.0;
    }

    else
    {
      v59 = Height;
      v60 = v3;
    }

    outlined copy of AnyGestureInfo<A>.Value?<A>(v60, *&v57);
    outlined consume of AnyGestureInfo<()>.Value?(v117, *&v113);
    v61 = *(v111 + 96);
    outlined copy of AnyGestureInfo<A>.Value?<A>(v60, *&v57);

    os_unfair_lock_lock((v61 + 16));
    v62 = *(v61 + 24);
    v63 = *(v61 + 32);
    *(v61 + 24) = v60;
    *(v61 + 32) = v57;
    *(v61 + 40) = v59;
    outlined consume of AnyGestureInfo<()>.Value?(v62, v63);
    os_unfair_lock_unlock((v61 + 16));

    outlined consume of AnyGestureInfo<()>.Value?(v60, *&v57);

    v17 = v60;
    v10 = v57;
    v115 = *&v59;
    if (v60)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v11 = v9[2];

  os_unfair_lock_lock((v11 + 16));
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);
  isa = *(v11 + 40);
  v15 = *(v11 + 48);
  v16 = *(v11 + 56);

  os_unfair_lock_unlock((v11 + 16));

  if (v16)
  {
    goto LABEL_15;
  }

  if (v114)
  {
    if (*(v114 + 64) == v13)
    {
LABEL_5:

      v17 = v117;
LABEL_33:
      v64 = *&v10;
      outlined copy of AnyGestureInfo<A>.Value?<A>(v17, *&v10);
      Width = CGImageGetWidth(v64);
      Height = CGImageGetHeight(v64);
      v4 = *v110;
      v15 = v110[1];
      if (v15)
      {
        v65 = *(v17 + 16);

        os_unfair_lock_lock((v65 + 16));
        v66 = *(v65 + 32);
        v118 = v17;
        v67 = *&v10;
        v68 = *(v65 + 40);
        v69 = *(v65 + 48);
        v70 = *(v65 + 56);
        *&aBlock = *(v65 + 24);
        *(&aBlock + 1) = v66;
        v141 = v68;
        v142 = v69;
        LOBYTE(v143) = v70;
        v71 = v15[2];

        os_unfair_lock_lock(v71 + 4);
        TrackerData.formUnion(_:)(&aBlock);

        os_unfair_lock_unlock(v71 + 4);

        os_unfair_lock_unlock((v65 + 16));

        v72 = 0;
        v106 = v115;
        v113 = *&v67;
        v3 = v67;
        v17 = v118;
      }

      else
      {

        v72 = 0;
        v106 = v115;
        v113 = v10;
        v3 = *&v10;
      }

      goto LABEL_38;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  compare(_:against:)(v12, v114);
  if ((v22 & 1) == 0 || (compare(_:against:)(isa, v114), (v23 & 1) == 0))
  {
LABEL_15:

    v27 = *(v117 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v27 + 16));
    *(v27 + 24) = 0;
    if (*(*(v27 + 32) + 16))
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *(v27 + 32);
      *(v27 + 32) = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
      _NativeDictionary.removeAll(isUnique:)(v28);
      *(v27 + 32) = aBlock;
    }

    if (*(*(v27 + 40) + 16))
    {
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *(v27 + 40);
      *(v27 + 40) = 0x8000000000000000;
      type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>(0);
      _NativeDictionary.removeAll(isUnique:)(v29);
      *(v27 + 40) = aBlock;
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v27 + 48);
    v7 = v114;
    if (v30)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v31 + 16));
    }

    else
    {
      *(v27 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v31 + 24) >> 1);
    }

    *(v27 + 56) = 0;
    os_unfair_lock_unlock((v27 + 16));

    v3 = v117;
    if (v114)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v24 = (v15 + 4);
  v17 = -v15[2];
  v25 = -1;
  while (v17 + v25 != -1)
  {
    if (++v25 >= v15[2])
    {
      goto LABEL_65;
    }

    v4 = v24 + 40;
    outlined init with copy of AnyTrackedValue(v24, &aBlock);
    v10 = v142;
    v3 = v143;
    __swift_project_boxed_opaque_existential_1(&aBlock, *&v142);
    v26 = (*(v3 + 16))(v114, COERCE_DOUBLE(*&v10), v3);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v24 = v4;
    if ((v26 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = v113;
  v17 = v117;
  if (v117)
  {
    goto LABEL_33;
  }

LABEL_37:
  v113 = v10;
  v3 = 0;
  v4 = *v110;
  v15 = v110[1];
  v72 = -1;
  v106 = 0x3FF0000000000000;
  Height = 0.0;
  Width = 0.0;
LABEL_38:
  v10 = COERCE_DOUBLE(v139);
  *&aBlock = v4;
  *(&aBlock + 1) = v15;
  LOBYTE(v123) = 2;
  outlined copy of GraphicsImage.Contents?(v3, v72);

  v73 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v123);

  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  if (v73)
  {
    isa = 0x3F8000003F800000;
  }

  else
  {
    isa = 0;
  }

  if (v73)
  {
    v74 = 2143289344;
  }

  else
  {
    v74 = 0;
  }

  LODWORD(v110) = v74;
  LOBYTE(v109) = (v73 & 1) == 0;
  v148 = v109;
  v108 = v72;
  v107 = v3;
  if (v15)
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v4);
  }

  else
  {
    aBlock = v4;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&aBlock);
  }

  v76 = v72;
  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_50;
  }

  v3 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    goto LABEL_66;
  }

LABEL_49:
  *&aBlock = v4;
  *(&aBlock + 1) = v15;
  (*(*static Color.foreground + 120))(&v151, &aBlock);
  v77 = v154;
  v78 = v152;
  v79 = v153 * 0.16;
  *(v3 + 16) = v151;
  *(v3 + 24) = v78;
  *(v3 + 28) = v79;
  *(v3 + 32) = v77;
  outlined consume of GraphicsImage.Contents?(v107, v108);
  v76 = 4;
LABEL_50:
  *&aBlock = v3;
  BYTE8(aBlock) = v76;
  v141 = v106;
  v142 = Width;
  v143 = *&Height;
  LOBYTE(v144) = 0;
  *(*&v10 + 156) = isa;
  v116 = isa;
  *(*&v10 + 164) = isa;
  v145 = v110;
  v146 = v109;
  *(*&v10 + 184) = 0u;
  *(*&v10 + 200) = 0u;
  v147 = 65794;
  v80 = *(v111 + 32);
  v81 = *(v111 + 40);
  v83 = *(v111 + 48);
  v82 = *(v111 + 56);
  v84 = *(*&v10 + 128);
  **&v10 = *(*&v10 + 112);
  *(*&v10 + 16) = v84;
  v85 = *(*&v10 + 144);
  v86 = *(*&v10 + 160);
  *(*&v10 + 92) = *(*&v10 + 204);
  v87 = *(*&v10 + 192);
  *(*&v10 + 64) = *(*&v10 + 176);
  *(*&v10 + 80) = v87;
  *(*&v10 + 32) = v85;
  *(*&v10 + 48) = v86;
  outlined init with copy of GraphicsImage(&aBlock, &v123);
  v112 = v80;
  outlined copy of Text?(v80, v81, v83, v82);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  v119 = v17;
  if (BYTE8(aBlock) == 2)
  {
    v90 = *(aBlock + 32);
    v91 = v76;
    v92 = *(aBlock + 48);
    v93 = *(aBlock + 16);
    outlined copy of Image.Location(v90);
    v94 = v92;
    v76 = v91;
    v95 = v106;
    v104 = v94;
    outlined copy of Image.Location(v90);
    v96 = [v93 styleMask];
    *&v123 = v90;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v96, &v123, &v120);

    outlined consume of Image.Location(v90);
    outlined consume of GraphicsImage.Contents?(v107, v108);

    v97 = v120;
    v89 = v121;
    v88 = v122 & 0xFD;
  }

  else
  {
    if (BYTE8(aBlock) == 255)
    {
      outlined consume of GraphicsImage.Contents?(v107, v108);

      v88 = 0;
      v89 = 0;
    }

    else
    {
      v89 = (v146 & 1) == 0;
      outlined consume of GraphicsImage.Contents?(v107, v108);

      v88 = 0;
    }

    v97 = 0;
    v95 = v106;
  }

  v138 = 1;
  v98 = v83 & 1;
  if (!v82)
  {
    v98 = 0x1FFFFFFFELL;
  }

  v99 = *(*&v10 + 80);
  if (v82)
  {
    v100 = v81;
  }

  else
  {
    v100 = 0;
  }

  v101 = v112;
  if (!v82)
  {
    v101 = 0;
  }

  *(a2 + 64) = *(*&v10 + 64);
  *(a2 + 80) = v99;
  *(a2 + 96) = *(*&v10 + 96);
  v102 = *(*&v10 + 16);
  *a2 = **&v10;
  *(a2 + 16) = v102;
  v103 = *(*&v10 + 48);
  *(a2 + 32) = *(*&v10 + 32);
  *(a2 + 48) = v103;
  *(a2 + 112) = v101;
  *(a2 + 120) = v100;
  *(a2 + 128) = v98;
  *(a2 + 136) = v82;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v82 == 0;
  *(a2 + 161) = 3;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v97;
  *(a2 + 184) = v89;
  *(a2 + 186) = v88;
  *&v123 = v3;
  BYTE8(v123) = v76;
  *(&v123 + 9) = *(*&v10 + 241);
  HIDWORD(v123) = *(*&v10 + 244);
  v124 = v95;
  v125 = Width;
  v126 = Height;
  v127 = 0;
  v129 = v150;
  v128 = v149;
  v130 = v116;
  v131 = v116;
  v132 = v110;
  v133 = v109;
  *&v134[3] = *(*&v10 + 234);
  *v134 = *(*&v10 + 231);
  v135 = 0u;
  v136 = 0u;
  v137 = 65794;
  outlined destroy of GraphicsImage(&v123);
  outlined consume of AnyGestureInfo<()>.Value?(v119, *&v113);
}

uint64_t RenderedImageProviderBox.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  v38 = *MEMORY[0x1E69E9840];
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v1 + 16) != *(result + 16) || *(v1 + 24) != *(result + 24))
    {
      return 0;
    }

    v5 = *(v1 + 56);
    v6 = *(result + 56);
    if (v5)
    {
      if (v6)
      {
        v7 = *(v1 + 32);
        v9 = *(result + 32);
        v8 = *(result + 40);
        v10 = *(result + 48);
        if (*(v2 + 48))
        {
          if (v10)
          {
            v33 = result;
            v11 = *(*v7 + 96);

            outlined copy of Text?(v9, v8, v10, v6);
            outlined copy of Text.Storage(v9, v8, 1);
            v12 = v11(v9);
            outlined consume of Text.Storage(v9, v8, 1);
            if (v12)
            {
LABEL_27:
              _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v5, v6);
              v20 = v19;
              outlined consume of Text.Storage(v9, v8, v10 & 1);

              if ((v20 & 1) == 0)
              {
LABEL_30:

                return 0;
              }

LABEL_28:
              v21 = *(v2 + 68);
              v22 = *(v2 + 72);
              v23 = *(v2 + 76);
              LODWORD(v36) = *(v2 + 64);
              WORD2(v36) = v21;
              LODWORD(v37) = v22;
              BYTE4(v37) = v23;
              LOWORD(v22) = *(v33 + 68);
              v24 = *(v33 + 72);
              v25 = *(v33 + 76);
              LODWORD(v34) = *(v33 + 64);
              WORD2(v34) = v22;
              LODWORD(v35) = v24;
              BYTE4(v35) = v25;
              if (specialized static RasterizationOptions.== infix(_:_:)(&v36, &v34))
              {
                v27 = *(v2 + 80);
                v26 = *(v2 + 88);
                v28 = swift_allocObject();
                *(v28 + 16) = v27;
                *(v28 + 24) = v26;
                v30 = *(v33 + 80);
                v29 = *(v33 + 88);
                v31 = swift_allocObject();
                *(v31 + 16) = v30;
                *(v31 + 24) = v29;
                v36 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
                v37 = v28;
                v34 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
                v35 = v31;
                type metadata accessor for (_:)();

                v32 = AGCompareValues();

                return v32;
              }

              goto LABEL_30;
            }

LABEL_24:
            outlined consume of Text.Storage(v9, v8, v10 & 1);

            goto LABEL_25;
          }

          outlined copy of Text?(*(result + 32), v8, v10, v6);
          v13 = v9;
          v14 = v8;
          v15 = 0;
        }

        else
        {
          if ((v10 & 1) == 0)
          {
            v33 = result;
            v16 = *(v2 + 40);
            if (v7 == v9 && v16 == v8)
            {

              outlined copy of Text?(v7, v16, v10, v6);
              goto LABEL_27;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined copy of Text?(v9, v8, v10, v6);
            if (v18)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          outlined copy of Text?(*(result + 32), v8, v10, v6);
          v13 = v9;
          v14 = v8;
          v15 = 1;
        }

        outlined consume of Text.Storage(v13, v14, v15);
LABEL_25:
      }
    }

    else if (!v6)
    {
      v33 = result;

      goto LABEL_28;
    }

    return 0;
  }

  return result;
}

double RenderedImageProviderBox.__ivar_destroyer()
{
  outlined consume of Text?(v0[4], v0[5], v0[6], v0[7]);

  return result;
}

uint64_t RenderedImageProviderBox.__deallocating_deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];

  outlined consume of Text?(v1, v2, v3, v4);

  return swift_deallocClassInstance();
}

void type metadata accessor for AtomicBuffer<RenderedImageProviderBox.CachedImage?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<RenderedImageProviderBox.CachedImage?>)
  {
    type metadata accessor for Text?(255, &lazy cache variable for type metadata for RenderedImageProviderBox.CachedImage?, &unk_1F00AACC8, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for AtomicBuffer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AtomicBuffer<RenderedImageProviderBox.CachedImage?>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for RenderedImageProviderBox.CachedImage(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  v4 = v3;
  return a1;
}

uint64_t *assignWithCopy for RenderedImageProviderBox.CachedImage(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for RenderedImageProviderBox.CachedImage(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

BOOL Visibility.isVisible(automatic:)(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  if (a3)
  {
    return a3 == 1;
  }

  else
  {
    return a1() & 1;
  }
}

SwiftUI::Visibility_optional __swiftcall Visibility.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int Visibility.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t CodableVisibility.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void lazy protocol witness table accessor for type Visibility and conformance Visibility()
{
  if (!lazy protocol witness table cache variable for type Visibility and conformance Visibility)
  {
    swift_getWitnessTable(protocol conformance descriptor for Visibility, &type metadata for Visibility, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Visibility and conformance Visibility);
  }
}

void lazy protocol witness table accessor for type [Visibility] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [Visibility] and conformance [A])
  {
    type metadata accessor for [Visibility]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [Visibility] and conformance [A]);
  }
}

void type metadata accessor for [Visibility]()
{
  if (!lazy cache variable for type metadata for [Visibility])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Visibility]);
    }
  }
}

void instantiation function for generic protocol witness table for CodableVisibility(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  *(a1 + 16) = v3;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CodableVisibility(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnableScrollPrefetchFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA020EnableScrollPrefetchF0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ScrollEdgeEffectTag.Feature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5();
  *a1 = result & 1;
  return result;
}

id static UserDefaultKeyedFeature.defaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

{
  return static UserDefaultKeyedFeature.defaults.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DisableRemoteEffects@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA20DisableRemoteEffectsV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance Semantics.UnifiedLayout@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static Semantics.UnifiedLayout.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance UnifiedHitTestingFeature@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static UnifiedHitTestingFeature.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ImprovedButtonGestureFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA026EndedGestureWaitsForActiveC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance GestureContainerFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA016GestureContainerC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance TapGestureUsesGesturesFrameworkFeature@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _SemanticFeature<A>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>, a1);
  result = static Feature.defaultValue.getter(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance Semantics.DismissPopsInNavigationSplitViewRoots@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v2 = static Semantics.DismissPopsInNavigationSplitViewRoots.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnabledFeature@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v2 = static EnabledFeature.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v2;
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance EnableLazyLayoutReuseLoggingAlways@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ContainerContextStylingFeatureEnabled@<X0>(_BYTE *a1@<X8>)
{
  result = _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA023ContainerContextStylingC7EnabledV_Ttg5();
  *a1 = result & 1;
  return result;
}

uint64_t static UserDefaultKeyedFeature.test<A>(enabled:_:)(char a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 40))(a4, a6);
  v9 = *(a6 + 48);
  v10 = v9(a1 & 1, a4, a6);
  a2(v10);
  return v9(v13, a4, a6);
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance ResettableLazyLayoutsFeature(BOOL *a1@<X8>)
{
  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    v2 = 1;
  }

  else
  {
    v3 = getenv("XCODE_RUNNING_FOR_PREVIEWS");
    if (v3)
    {
      v2 = atoi(v3) != 0;
    }

    else
    {
      v2 = 0;
    }
  }

  *a1 = v2;
}

uint64_t View.background<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  return View.background<A, B>(_:in:fillStyle:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, type metadata accessor for _BackgroundShapeModifier, _BackgroundShapeModifier.init(style:shape:fillStyle:));
}

{
  return View.background<A, B>(_:in:fillStyle:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, type metadata accessor for _InsettableBackgroundShapeModifier, _InsettableBackgroundShapeModifier.init(style:shape:fillStyle:));
}

uint64_t _BackgroundModifier.alignment.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

BOOL static _BackgroundModifier<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for _BackgroundModifier(0, a3, a5, v9) + 36);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  return v12 == v15 && v11 == v14;
}

uint64_t _BackgroundStyleModifier.init(style:ignoresSafeAreaEdges:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for _BackgroundStyleModifier(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _BackgroundStyleModifier<A>.BackgroundInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t _BackgroundShapeModifier.fillStyle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _BackgroundShapeModifier.fillStyle.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 56));
  *v3 = result & 1;
  v3[1] = BYTE1(result) & 1;
  return result;
}

double static _BackgroundShapeModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = *a1;
  v17 = default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(a5, a6, a7, a8);
  *&v20 = a7;
  *(&v20 + 1) = a8;
  static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(&v21, a2, 1, a3, a4, v17, v18, a5, a9, a6, v20);

  return result;
}

uint64_t closure #4 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = type metadata accessor for _BackgroundShapeModifier(0, v12);
  v7 = *(v6 + 56);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for FillStyle, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12[0];
}

uint64_t _BackgroundShapeModifier.init(style:shape:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v17 = a8(0, v20);
  result = (*(*(a5 - 8) + 32))(a9 + *(v17 + 52), a2, a5);
  v19 = (a9 + *(v17 + 56));
  *v19 = a3 & 1;
  v19[1] = HIBYTE(a3) & 1;
  return result;
}

uint64_t View.background<A>(in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return View.background<A>(in:fillStyle:)(a1, a2, a3, a4, a5, a6, _BackgroundShapeModifier.init(style:shape:fillStyle:), a7);
}

{
  return View.background<A>(in:fillStyle:)(a1, a2, a3, a4, a5, a6, _InsettableBackgroundShapeModifier.init(style:shape:fillStyle:), a7);
}

uint64_t View.background<A>(in:fillStyle:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, char *, void, ValueMetadata *, uint64_t, _UNKNOWN **, uint64_t)@<X7>, uint64_t a8@<X8>)
{
  v27 = a7;
  v28 = a5;
  v26[1] = a8;
  v26[2] = a3;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = &type metadata for BackgroundStyle;
  v29[1] = v16;
  v29[2] = &protocol witness table for BackgroundStyle;
  v29[3] = v17;
  v19 = v18(0, v29, v13);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v26 - v22;
  v24 = (*(v12 + 16))(v15, a1, a4, v21);
  v27(v24, v15, a2 & 0x101, &type metadata for BackgroundStyle, a4, &protocol witness table for BackgroundStyle, a6);
  View.modifier<A>(_:)();
  return (*(v20 + 8))(v23, v19);
}

uint64_t View.background<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(char *, char *, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v41 = a7;
  v34 = a8;
  v35 = a1;
  v39 = a9;
  v40 = a4;
  v37 = a3;
  v36 = a2;
  v38 = a12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = a10;
  v27 = v26(0, v42, v20);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v33 - v30;
  (*(v18 + 16))(v22, v35, a5, v29);
  (*(v14 + 16))(v16, v36, a6);
  v38(v22, v16, v37 & 0x101, a5, a6, v34, a10);
  View.modifier<A>(_:)();
  return (*(v28 + 8))(v31, v27);
}

double get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA19_BackgroundModifierVyqd__GGAaBHPxAaBHD1__AgA0cG0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double get_witness_table_7SwiftUI4ViewRzAA5ShapeRd__r__lAA15ModifiedContentVyxAA011_BackgroundD8ModifierVyAA0G5StyleVqd__GGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v13[0] = &type metadata for BackgroundStyle;
  v13[1] = v4;
  v13[2] = &protocol witness table for BackgroundStyle;
  v13[3] = v6;
  v8 = a2(255, v13);
  v10 = type metadata accessor for ModifiedContent(255, v5, v8, v9);
  v12[0] = v7;
  v12[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v12);
}

double get_witness_table_7SwiftUI4ViewRzAA10ShapeStyleRd__AA0D0Rd_0_r_0_lAA15ModifiedContentVyxAA011_BackgroundD8ModifierVyqd__qd_0_GGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v12[0] = *(a1 + 8);
  v12[1] = v6;
  v7 = a2(255, v12);
  v9 = type metadata accessor for ModifiedContent(255, v4, v7, v8);
  v11[0] = v5;
  v11[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v11);
}

void *initializeBufferWithCopyOfBuffer for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if ((v5 & 0x1000F8) == 0 && ((-49 - v6) | v6) - ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) - 32 >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    a1[2] = a2[2];
    v11 = a2 + 55;
    (*(v4 + 16))((a1 + 55) & 0xFFFFFFFFFFFFFFF8, (a2 + 55) & 0xFFFFFFFFFFFFFFF8);
    v12 = (((v11 | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((((v3 + 55) | 7) + v7) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

_OWORD *initializeWithTake for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 55;
  v9 = a1 + v7 + 55;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & v10;
  v12 = (a2 + v8) & v10;
  (*(v5 + 32))(v9 & v10, v12);
  v13 = *(v6 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  return a1;
}

_OWORD *assignWithTake for _BackgroundStyleModifier.BackgroundInfo.Value(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80) & 0xF8;
  v8 = v7 + 55;
  v9 = a1 + v7 + 55;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = v9 & v10;
  v12 = (a2 + v8) & v10;
  (*(v5 + 40))(v9 & v10, v12);
  v13 = *(v6 + 24) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for _BackgroundStyleModifier.BackgroundInfo.Value(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  if (v5 >= a2)
  {
    return (*(v4 + 48))((a1 + v7 + 48) & ~v7);
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v6 + 55) & ~v7) + 32;
  v9 = a2 - v5;
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
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((a1 + v7 + 48) & ~v7);
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for _BackgroundStyleModifier.BackgroundInfo.Value(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80) & 0xF8;
  v8 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) + 32;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) == -32)
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

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (result + (v7 | 7) + 48) & ~(v7 | 7);

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) == -32)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) + ((v7 + 55) & ~(v7 | 7)) != -32)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, v8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

void type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Attribute<_ShapeStyle_Pack>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void __swiftcall StrongHasher.init()(SwiftUI::StrongHasher *__return_ptr retstr)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  v2 = *&v5.data[5];
  *&retstr->state.data[1] = *&v5.data[1];
  *&retstr->state.data[5] = v2;
  v3 = *&v5.data[13];
  *&retstr->state.data[9] = *&v5.data[9];
  *&retstr->state.data[13] = v3;
  v4 = *&v5.h4;
  *&retstr->state.h0 = *&v5.h0;
  *&retstr->state.h4 = v4;
}

double StrongHasher.finalize()@<D0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  v6 = 0;
  CC_SHA1_Final(&v5, v1);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

void StrongHash.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double static StrongHash.random()@<D0>(uint64_t a1@<X8>)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  return _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v4, a1);
}

double StrongHash.init<A>(encodable:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v4)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v9, v10, &v13);

    (*(*(a2 - 8) + 8))(a1, a2);
    v12 = v14;
    result = *&v13;
    *a4 = v13;
    *(a4 + 16) = v12;
  }

  return result;
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance ToggleState(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

uint64_t RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

const void *StrongHasher.combineBytes(_:count:)(const void *data, unint64_t len)
{
  if ((len & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(len))
  {
    return CC_SHA1_Update(v2, data, len);
  }

  __break(1u);
  return data;
}

uint64_t StrongHash.words.setter(uint64_t result, int a2, int a3, int a4, int a5)
{
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return result;
}

uint64_t StrongHash.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18DDAB8A0;
  v7 = MEMORY[0x1E69E7668];
  v8 = MEMORY[0x1E69E76D0];
  *(v6 + 56) = MEMORY[0x1E69E7668];
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v4;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v3;
  *(v6 + 176) = v7;
  *(v6 + 184) = v8;
  *(v6 + 152) = v2;
  *(v6 + 216) = v7;
  *(v6 + 224) = v8;
  *(v6 + 192) = v1;

  return String.init(format:_:)();
}

uint64_t StrongHash.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = a1[1];
  v10 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  a1[3] = v10;
  v14 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  a1[1] = v14;
  isUniquelyReferenced_nonNull_native = v9 + 5;
  if (__OFADD__(v14, 4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v15 = (*a1 + v14);
    goto LABEL_9;
  }

LABEL_24:
  v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v15 = v5;
  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v17)
  {
    a1[1] = v17;
    v18 = (*a1 + v16);
    goto LABEL_12;
  }

  v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
LABEL_12:
  *v18 = v4;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_15;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_15:
  *v21 = v7;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_18;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_18:
  *v24 = v6;
  v25 = a1[1];
  v26 = v25 + 4;
  if (__OFADD__(v25, 4))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (a1[2] < v26)
  {
LABEL_32:
    v27 = ProtobufEncoder.growBufferSlow(to:)(v26);
    goto LABEL_21;
  }

  a1[1] = v26;
  v27 = (*a1 + v25);
LABEL_21:
  *v27 = v8;
  return ProtobufEncoder.endLengthDelimited()();
}

uint64_t StrongHash.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v13 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v5;
    a2[1] = v6;
    v10 = v13;
    a2[2] = v7;
    a2[3] = v10;
    a2[4] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int StrongHash.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StrongHash()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StrongHash(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance StrongHash(CC_SHA1_CTX *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 4);
  v4 = *v1;
  v5 = v2;
  return CC_SHA1_Update(a1, &v4, 0x14u);
}

Swift::Void __swiftcall StronglyHashableByBitPattern.hash(into:)(SwiftUI::StrongHasher *into)
{
  v5 = v1;
  v6 = into;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for closure #1 in StrongHasher.combineBitPattern<A>(_:), &v4, v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v2);
}

const void *closure #1 in StrongHasher.combineBitPattern<A>(_:)(const void *data, CC_SHA1_CTX *c, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA1_Update(c, data, v3);
  }

  __break(1u);
  return data;
}

uint64_t StrongHasher.combineType(_:)(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  AGTypeGetSignature();
  return CC_SHA1_Update(v1, &v3, 0x14u);
}

Swift::Void __swiftcall String.hash(into:)(SwiftUI::StrongHasher *into)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = String.utf8CString.getter();
    v6 = *(v5 + 16);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      CC_SHA1_Update(&into->state, (v5 + 32), v6);
    }
  }
}

Swift::Void __swiftcall Data.hash(into:)(SwiftUI::StrongHasher *into)
{
  data[2] = *MEMORY[0x1E69E9840];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      data[0] = v1;
      LOWORD(data[1]) = v2;
      BYTE2(data[1]) = BYTE2(v2);
      BYTE3(data[1]) = BYTE3(v2);
      BYTE4(data[1]) = BYTE4(v2);
      v4 = BYTE6(v2);
      BYTE5(data[1]) = BYTE5(v2);
LABEL_27:
      CC_SHA1_Update(&into->state, data, v4);
      return;
    }

    v15 = v1;
    v16 = (v1 >> 32) - v1;
    if (v1 >> 32 >= v1)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        MEMORY[0x193ABC2C0]();
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (!__OFSUB__(v15, v20))
      {
        v8 = (v15 - v20 + v19);
        v21 = MEMORY[0x193ABC2C0]();
        if (v8)
        {
          if (v21 >= v16)
          {
            LODWORD(v13) = v16;
          }

          else
          {
            LODWORD(v13) = v21;
          }

          v14 = into;
          goto LABEL_23;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (v3 != 2)
  {
    memset(data, 0, 14);
    v4 = 0;
    goto LABEL_27;
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v9 = __DataStorage._offset.getter();
    if (__OFSUB__(v6, v9))
    {
      goto LABEL_32;
    }

    v8 += v6 - v9;
  }

  v10 = __OFSUB__(v7, v6);
  v11 = v7 - v6;
  if (v10)
  {
    goto LABEL_29;
  }

  v12 = MEMORY[0x193ABC2C0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (v13 > 0xFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  v14 = into;
LABEL_23:

  CC_SHA1_Update(&v14->state, v8, v13);
}

Swift::Void __swiftcall Bool.hash(into:)(SwiftUI::StrongHasher *into)
{
  v3 = *MEMORY[0x1E69E9840];
  data = v1;
  CC_SHA1_Update(&into->state, &data, 1u);
}

uint64_t Optional<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v4, v7);
  v11 = *(v4 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    (*(a3 + 8))(a1, v11, a3);
    v6 = v12;
    v4 = v11;
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Float(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 4u);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Double(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

CC_SHA1_CTX *protocol witness for StronglyHashable.hash(into:) in conformance UUID(CC_SHA1_CTX *result, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return CC_SHA1_Update(result, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt(CC_SHA1_CTX *a1)
{

  return sub_18D3C064C(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt8(CC_SHA1_CTX *a1)
{

  return protocol witness for StronglyHashable.hash(into:) in conformance Bool(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt16(CC_SHA1_CTX *a1)
{

  return sub_18D3C06A8(a1);
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance UInt32(CC_SHA1_CTX *a1)
{

  return sub_18D3C0704(a1);
}

uint64_t View.contentShapeSecondaryView<A>(in:kind:fallbackKind:alignment:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a7;
  v34 = a4;
  v35 = a5;
  v33[1] = a9;
  v15 = *(a8 - 8);
  v33[0] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContentShapeSecondaryViewModifier(0, v20, v18, v19);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v33 - v24;
  v26 = *a2;
  v27 = *a3;
  (*(v15 + 16))(v17, a6, a8, v23);
  outlined init with copy of CoordinateSpace(a1, &v38);
  *&v37 = v26;
  *(&v37 + 1) = v27;
  (*(v15 + 32))(v25, v17, a8);
  v28 = &v25[*(v21 + 36)];
  v29 = v38;
  *v28 = v37;
  *(v28 + 1) = v29;
  *(v28 + 2) = v39[0];
  *(v28 + 41) = *(v39 + 9);
  v30 = &v25[*(v21 + 40)];
  v31 = v35;
  *v30 = v34;
  v30[1] = v31;
  View.modifier<A>(_:)();
  return (*(v22 + 8))(v25, v21);
}

__n128 ContentPathOptions.init(kind:fallbackKind:coordinateSpace:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  *(a4 + 8) = v4;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  result = *(a3 + 25);
  *(a4 + 41) = result;
  return result;
}

uint64_t ContentShapeChild.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  v8 = a4;
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v102 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a4);
  v10 = type metadata accessor for ObservationTracking._AccessList();
  v85 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v71 - v15;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v78 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v71 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v91 = AssociatedTypeWitness;
  v92 = v25;
  v80 = v26;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v90 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v88 = &v71 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v89 = &v71 - v32;
  v33 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v33 + 16))(v36, Value, a5);
  v95 = a5;
  v96 = a6;
  v97 = v36;
  v98 = v8;
  v99 = v9;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v87 = v33;
  v38 = static ObservationCenter._current;
  swift_beginAccess();
  v39 = pthread_getspecific(v38[2]);
  v40 = v10;
  if (!v39)
  {
    v41 = swift_slowAlloc();
    pthread_setspecific(v38[2], v41);
    v101 = type metadata accessor for ObservationCenter();
    *&v100 = v38[3];
    outlined init with take of Any(&v100, v41);

    v39 = v41;
    v40 = v10;
  }

  outlined init with copy of Any(v39, &v100);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v42 = v93;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v42 + 24) = v17;
    goto LABEL_9;
  }

  v44 = v21;
  v73 = CurrentAttribute;
  v77 = v36;
  swift_beginAccess();
  v76 = *(v42 + 24);
  *(v42 + 24) = MEMORY[0x1E69E7CC0];
  v45 = v85;
  v46 = (*(v85 + 56))(v21, 1, 1, v40);
  MEMORY[0x1EEE9AC00](v46);
  v10 = TupleTypeMetadata3;
  *(&v71 - 4) = TupleTypeMetadata3;
  *(&v71 - 3) = partial apply for closure #1 in ContentShapeChild.value.getter;
  *(&v71 - 2) = &v94;
  v47 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v71 - 6), v17, v47, v10, MEMORY[0x1E69E7288], &v93);
  v48 = v90 + 32;
  v75 = *(v90 + 32);
  v75(v88, v28, v10);
  v49 = v84;
  outlined init with take of ObservationTracking._AccessList?(v44, v84);
  v50 = v78;
  outlined init with copy of ObservationTracking._AccessList?(v49, v78);
  if ((*(v45 + 48))(v50, 1, v40) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v49);
    v51 = v50;
    v52 = v80;
    v54 = v91;
    v53 = v92;
    v33 = v87;
    goto LABEL_12;
  }

  v90 = v48;
  v21 = v72;
  v78 = *(v45 + 32);
  (v78)(v72, v50, v40);
  (*(v45 + 16))(v79, v21, v40);
  v17 = *(v42 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v42 + 24) = v17;
  v33 = v87;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v57 = v17[2];
  v56 = v17[3];
  if (v57 >= v56 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v17);
  }

  v17[2] = v57 + 1;
  v58 = v17 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57;
  v45 = v85;
  (v78)(v58, v79, v40);
  *(v42 + 24) = v17;
  (*(v45 + 8))(v21, v40);
  v52 = v80;
  v54 = v91;
  v53 = v92;
  v51 = v84;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v51);
  v75(v89, v88, v10);
  v59 = *(v42 + 24);
  v60 = *(v59 + 16);
  if (v60)
  {
    v88 = a5;
    v61 = v74;
    v63 = *(v45 + 16);
    v62 = v45 + 16;
    v90 = v63;
    v64 = v59 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v65 = *(v62 + 56);
    v85 = v59;

    v66 = v73;
    do
    {
      (v90)(v61, v64, v40);
      swift_getTupleTypeMetadata3();
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v66, v61);
      (*(v62 - 8))(v61, v40);
      v64 += v65;
      --v60;
    }

    while (v60);

    a5 = v88;
    v54 = v91;
    v53 = v92;
    v33 = v87;
    v10 = TupleTypeMetadata3;
  }

  *(v42 + 24) = v76;

  v67 = *(v10 + 48);
  v68 = *(v10 + 64);
  v69 = v89;
  (*(*(v54 - 8) + 32))(v81, v89, v54);
  (*(*(v53 - 8) + 32))(v82, &v69[v67], v53);
  (*(*(v52 - 8) + 32))(v83, &v69[v68], v52);
  return (*(v33 + 8))(v77, a5);
}

uint64_t closure #1 in ContentShapeChild.value.getter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  Value = AGGraphGetValue();
  v7 = *(Value + 32);
  v8 = *(Value + 16);
  v20[0] = *Value;
  v20[1] = v8;
  v21 = v7;
  v9 = a4[7];
  outlined init with copy of Path(v20, v24);
  v9(v20, a3, a4);
  outlined destroy of Path(v20);
  v10 = AGGraphGetValue();
  v11 = *(v10 + 32);
  v12 = *(v10 + 16);
  v22[0] = *v10;
  v22[1] = v12;
  v23 = v11;
  v13 = a4[8];
  outlined init with copy of Path(v22, v24);
  v13(v22, a3, a4);
  outlined destroy of Path(v22);
  v14 = AGGraphGetValue();
  v15 = *(v14 + 32);
  v16 = *(v14 + 16);
  v24[0] = *v14;
  v24[1] = v16;
  v25 = v15;
  v17 = a4[9];
  outlined init with copy of Path(v24, v19);
  v17(v24, a3, a4);
  return outlined destroy of Path(v24);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ContentShapeChild<A>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(*(TupleTypeMetadata3 - 8) + 56);

  return v4(a2, 1, 1, TupleTypeMetadata3);
}

uint64_t protocol witness for Rule.value.getter in conformance ContentShapeChild<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = a2 + *(TupleTypeMetadata3 + 48);
  v9 = a2 + *(TupleTypeMetadata3 + 64);

  return ContentShapeChild.value.getter(a2, v8, v9, v4, v6, v5);
}

void static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(__int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v66 = a6;
  v65 = a5;
  v68 = a4;
  v67 = a3;
  v83 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v80 = *a2;
  v10 = a2[2];
  v81 = v9;
  v82 = v10;
  v11 = *(a2 + 6);
  v12 = *(a2 + 14);
  v13 = *(a2 + 15);
  v15 = *(a2 + 16);
  v14 = *(a2 + 17);
  v16 = *(a2 + 18);
  v17 = *(a2 + 76);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v11))
  {
    v63 = v11;
    v64 = v12;
    v58 = v14;
    v60 = v17;
    v61 = a7;
    v19 = v65;
    type metadata accessor for ContentShapeSecondaryViewModifier(0, v65, v66, v18);
    v20 = v66;
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    v59 = v16;
    AGGraphCreateOffsetAttribute2();
    AGGraphCreateOffsetAttribute2();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v22 = *MEMORY[0x1E698D3F8];
    v56 = v13;
    v57 = v15;
    HIDWORD(v70) = v15;
    *&v71 = __PAIR64__(v22, OffsetAttribute2);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContentShapePath and conformance ContentShapePath();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v24 = AGGraphCreateOffsetAttribute2();
    LODWORD(v70) = v24;
    v55 = v23;
    *(&v70 + 4) = __PAIR64__(v13, v23);
    MEMORY[0x1EEE9AC00](v24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v62 = AssociatedTypeWitness;
    v51[2] = swift_getTupleTypeMetadata3();
    v52 = type metadata accessor for ContentShapeChild(0, v65, v66, v27);
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeChild<A>, v52);
    v53 = v28;
    v29 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, partial apply for closure #1 in Attribute.init<A>(_:), v51, v52, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
    v31 = v69[0];
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v54 = v32 + 16;
    *(v32 + 20) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = v19;
    *(v33 + 24) = v20;
    *(v33 + 32) = v31;
    *(v33 + 40) = v67;
    *(v33 + 48) = v68;
    *(v33 + 56) = v32;

    closure #2 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1, v19, v20, v34);
    v35 = AGGraphCreateOffsetAttribute2();
    v36 = v35;
    if (v26 == &type metadata for EmptyView)
    {
      v38 = partial apply for closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    }

    else
    {

      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v31;
      *(v37 + 36) = v36;
      *(v37 + 40) = partial apply for closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
      *(v37 + 48) = v33;

      v38 = partial apply for closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    }

    if (v62 == &type metadata for EmptyView)
    {
      v70 = v80;
      v71 = v81;
      v72 = v82;
      v73 = v63;
      v74 = v64;
      v75 = v56;
      v76 = v57;
      v77 = v58;
      v78 = v59;
      v79 = v60;
      v42 = (v38)(v69, v35, &v70);
    }

    else
    {
      v41 = v57;
      if (*(v62[-1].Description + 8))
      {
        closure #4 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1, v19, v20);
      }

      v43 = AGGraphCreateOffsetAttribute2();
      v70 = v80;
      v71 = v81;
      v72 = v82;
      v73 = v63;
      v74 = v64;
      v75 = v56;
      v76 = v41;
      v77 = v58;
      v78 = v59;
      v79 = v60;
      v44 = v62;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      LOBYTE(v69[0]) = 0;
      v42 = makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v43, v36, &v70, v38, 1, v44, AssociatedConformanceWitness, v69);
    }

    v46 = v69[0];
    v47 = v69[1];
    MEMORY[0x1EEE9AC00](v42);
    v53 = v54;
    MEMORY[0x1EEE9AC00](v48);
    v51[0] = partial apply for closure #5 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:);
    v51[1] = v49;
    AGGraphMutateAttribute();

    v50 = v61;
    *v61 = v46;
    v50[1] = v47;
  }

  else
  {
    v39 = a2[1];
    v70 = *a2;
    v40 = a2[2];
    v71 = v39;
    v72 = v40;
    v73 = v11;
    v74 = v12;
    v75 = v13;
    v76 = v15;
    v77 = v14;
    v78 = v16;
    v79 = v17;
    v67();
  }
}

void *closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v14 = a1[3];
  v45 = a1[2];
  v46 = v14;
  v47 = a1[4];
  v48 = *(a1 + 20);
  v15 = a1[1];
  v43 = *a1;
  v44 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64))
  {
    closure #1 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1, a6, a7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v26);
  v18 = v26;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  v40 = v48;
  v21 = v45;
  LODWORD(v35) = 0;
  v25 = v18;
  v39[0] = v43;
  v39[1] = v44;
  v39[3] = v46;
  v39[4] = v47;
  v39[2] = v35;
  v29 = v35;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v43, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v23(&v25, &v27, partial apply for closure #2 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:), v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t closure #1 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 64);
  v10[2] = TupleTypeMetadata3;
  v10[3] = AssociatedTypeWitness;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void closure #2 in closure #1 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 16);
  v37 = *(a1 + 32);
  v38 = v7;
  v9 = *(a1 + 48);
  v39 = *(a1 + 64);
  v10 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v10;
  v32 = v37;
  v33 = v9;
  v34 = *(a1 + 64);
  v40 = *(a1 + 80);
  v35 = *(a1 + 80);
  v30 = v36[0];
  v31 = v8;
  v11 = v9;
  *&v22[0] = v9;
  v12 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
  outlined init with copy of _ViewInputs(v36, &v24);

  v13 = *(v11 + 2);
  if (v12 != v13)
  {
    if (v12 >= v13)
    {
      goto LABEL_11;
    }

    if (*&v11[16 * v12 + 32] == &type metadata for ContentShapePathData)
    {
LABEL_9:
      v20[2] = v32;
      v20[3] = v33;
      v20[4] = v34;
      v21 = v35;
      v20[0] = v30;
      v20[1] = v31;
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v24 = v30;
      v25 = v31;
      v15 = outlined init with copy of _ViewInputs(v20, v22);
      a2(v19, v15, &v24);
      v22[3] = v27;
      v22[4] = v28;
      v23 = v29;
      v22[0] = v24;
      v22[1] = v25;
      v22[2] = v26;
      outlined destroy of _ViewInputs(v22);
      v16 = v19[0];
      v18 = v19[1];
      v17 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(v19[0]);
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v24 = v30;
      v25 = v31;
      outlined destroy of _ViewInputs(&v24);
      swift_beginAccess();
      *(a3 + 16) = v17;
      *(a3 + 20) = BYTE4(v17) & 1;
      *a4 = v16;
      a4[1] = v18;
      return;
    }
  }

  if (v13 >= v12)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 >= *(v11 + 3) >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v11);
      *&v33 = v11;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v12, 1, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
    *&v33 = v11;
    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t closure #2 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContentShapeSecondaryViewModifier(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v10, &type metadata for Alignment, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, unsigned int a3@<W3>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64))
  {
    closure #1 in closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(1, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v15 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v15;
  v19[4] = *(a1 + 64);
  v20 = *(a1 + 80);
  v16 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(OffsetAttribute2, a3, v19, a4, 0, AssociatedTypeWitness, AssociatedConformanceWitness, a7);
}

uint64_t closure #1 in closure #3 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v10[2] = TupleTypeMetadata3;
  v10[3] = AssociatedTypeWitness;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #4 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v8[2] = swift_getTupleTypeMetadata3();
  v8[3] = AssociatedTypeWitness;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t dispatch thunk of ContentShapeModifier.background(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t dispatch thunk of ContentShapeModifier.overlay(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t dispatch thunk of ContentShapeModifier.effect(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t destroy for ContentPathOptions(uint64_t result)
{
  if (!*(result + 56))
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for ContentPathOptions(_OWORD *result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 56))
  {
    v2 = *(a2 + 32);
    result[1] = *(a2 + 16);
    result[2] = v2;
    *(result + 41) = *(a2 + 41);
  }

  else
  {
    v3 = *(a2 + 40);
    *(result + 40) = v3;
    v4 = result;
    (**(v3 - 8))(result + 1, a2 + 16);
    result = v4;
    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t assignWithCopy for ContentPathOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    if (*(a2 + 56))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v4;
      *(a1 + 32) = v5;
    }

    else
    {
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      *(a1 + 48) = *(a2 + 48);
      (**(v6 - 8))(a1 + 16, a2 + 16);
      *(a1 + 56) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for ContentPathOptions(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentPathOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for ContentPathOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ContentShapeSecondaryViewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContentShapeSecondaryViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
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
    v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    if (*(v13 + 56))
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      *(v12 + 41) = *(v13 + 41);
      *(v12 + 16) = v14;
      *(v12 + 32) = v15;
    }

    else
    {
      v16 = *(v13 + 40);
      *(v12 + 40) = v16;
      *(v12 + 48) = *(v13 + 48);
      (**(v16 - 8))(v12 + 16, v13 + 16);
      *(v12 + 56) = 0;
    }

    *((v10 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 71) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  result = (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!*(v5 + 56))
  {

    return __swift_destroy_boxed_opaque_existential_1((v5 + 16));
  }

  return result;
}

uint64_t initializeWithCopy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (*(v10 + 56))
  {
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    *(v9 + 41) = *(v10 + 41);
    *(v9 + 16) = v11;
    *(v9 + 32) = v12;
  }

  else
  {
    v13 = *(v10 + 40);
    *(v9 + 40) = v13;
    *(v9 + 48) = *(v10 + 48);
    (**(v13 - 8))(v9 + 16, v10 + 16);
    *(v9 + 56) = 0;
  }

  *((v7 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v9 != v10)
  {
    outlined destroy of CoordinateSpace(v9 + 16);
    if (*(v10 + 56))
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 32);
      *(v9 + 41) = *(v10 + 41);
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
    }

    else
    {
      v13 = *(v10 + 40);
      *(v9 + 40) = v13;
      *(v9 + 48) = *(v10 + 48);
      (**(v13 - 8))(v9 + 16, v10 + 16);
      *(v9 + 56) = 0;
    }
  }

  v14 = ((v7 + 71) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  return a1;
}

uint64_t initializeWithTake for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v10[1];
  v11 = v10[2];
  v13 = *v10;
  *(v9 + 41) = *(v10 + 41);
  v9[1] = v12;
  v9[2] = v11;
  *v9 = v13;
  *((v7 + 71) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ContentShapeSecondaryViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v9 != v10)
  {
    outlined destroy of CoordinateSpace(v9 + 16);
    v11 = *(v10 + 41);
    v12 = *(v10 + 32);
    *(v9 + 16) = *(v10 + 16);
    *(v9 + 32) = v12;
    *(v9 + 41) = v11;
  }

  v13 = ((v7 + 71) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentShapeSecondaryViewModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = ((v6 + 71) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for ContentShapeSecondaryViewModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 71) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 71) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 71) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 71) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 71) & 0xFFFFFFFFFFFFFFF8) + 16);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
  if (v6 < 0xFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFD)
    {
      result = 0.0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 56) = 0;
      *v19 = a2 - 254;
    }

    else
    {
      *(v19 + 56) = -a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void partial apply for closure #5 in static ContentShapeSecondaryViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 4))
  {
    v4 = *MEMORY[0x1E698D3F8];
  }

  *(a1 + 20) = v4;
}

uint64_t EncodableAnimation.encodeAnimation(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 16))(a2, a3);
  if (v8)
  {
    return (*(*(a3 + 8) + 8))(a1, a2);
  }

  else
  {
    return ProtobufEncoder.messageField<A>(_:_:)(v7, v3, a2, *(a3 + 8));
  }
}

id withDelay(_:do:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v12[4] = _sIg_Ieg_TRTA_0;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v12[3] = &block_descriptor_27;
  v7 = _Block_copy(v12);
  v8 = objc_opt_self();

  v9 = [v8 timerWithTimeInterval:0 repeats:v7 block:a3];
  _Block_release(v7);

  v10 = [objc_opt_self() mainRunLoop];
  [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

  return v9;
}

uint64_t DynamicContentOffsetVisitor.offset.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DynamicContentOffsetVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  *v2 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdJ0V_Tt0B5(0, 1, *a2);
  *(v2 + 8) = v3 & 1;
  return 0;
}

void instantiation function for generic protocol witness table for <> ForEach<A, B, C>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getWitnessTable("A}b", a2, &v5);
  *(a1 + 8) = v4;
}

{
  v5 = *a3;
  swift_getWitnessTable("A}b", a2, &v5);
  *(a1 + 8) = v4;
}

void instantiation function for generic protocol witness table for <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[1];
  v6[0] = *(*a3 + 8);
  v6[1] = v4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, v6);
  *(a1 + 8) = v5;
}

{
  v4 = *(a3[1] + 8);
  v6[0] = *(*a3 + 8);
  v6[1] = v4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, a2, v6);
  *(a1 + 8) = v5;
}

uint64_t protocol witness for ViewListVisitor.visit(view:traits:) in conformance DynamicContentOffsetVisitor(uint64_t a1, uint64_t *a2)
{
  *v2 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdJ0V_Tt0B5(0, 1, *a2);
  *(v2 + 8) = v3 & 1;
  return 0;
}

uint64_t PreferencesInputs.init(hostKeys:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = result;
  return result;
}

double PreferencesInputs.keys.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void PreferencesInputs.keys.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

__n128 _IgnoredByLayoutEffect.effectValue(size:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v5, *(a1 + 16));
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t _IgnoredByLayoutEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _IgnoredByLayoutEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*_IgnoredByLayoutEffect.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _IgnoredByLayoutEffect.animatableData.modify;
}