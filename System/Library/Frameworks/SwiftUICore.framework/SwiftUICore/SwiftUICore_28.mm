void (*protocol witness for Collection.subscript.read in conformance _VariadicView_Children(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  *a1 = v4;
  _VariadicView_Children.subscript.getter(*a2, v4);
  return protocol witness for Collection.subscript.read in conformance _VariadicView_Children;
}

void protocol witness for Collection.subscript.read in conformance _VariadicView_Children(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of _VariadicView_Children.Element(*a1);

  free(v1);
}

void _ViewList_View.viewID.getter()
{
  v1 = v0[8];
  v9 = v0[7];
  v10 = v1;

  v2 = _ViewList_ID.Canonical.init(id:)(&v9, v12);
  if (v0[10] == 1 && (v13 & 0x80000000) != 0)
  {
    if (v14)
    {
      (*(*v14 + 104))(&v9, v2);
      v3 = __swift_project_boxed_opaque_existential_1(&v9, v11);
      v4 = MEMORY[0x1EEE9AC00](v3);
      (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

      AnyHashable.init<A>(_:)();
      __swift_destroy_boxed_opaque_existential_1(&v9);

      return;
    }

    goto LABEL_11;
  }

  v7 = v0[9];
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = __PAIR64__(v13, v7);
  v10 = v14;
  lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();

  AnyHashable.init<A>(_:)();
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance _VariadicView_Children(uint64_t *a1)
{
  v3 = *a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v4 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = ViewList.count.getter(v5, v6);
  static Update.end()();
  result = _MovableLockUnlock(v4);
  if (v3 < 0 || v3 >= v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void *static ModifiedContent<>._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = a2[3];
  v52 = a2[2];
  v53 = v16;
  v54 = a2[4];
  v55 = *(a2 + 20);
  v17 = a2[1];
  v50 = *a2;
  v51 = v17;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v29[1] = v15;
  v18 = type metadata accessor for ModifiedContent(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v18, v19, v20);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a6, v29);
  v21 = v29[0];
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  *(v22 + 32) = a7;
  *(v22 + 40) = a8;
  *(v22 + 48) = v15;
  *(v22 + 56) = a3;
  *(v22 + 64) = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v40 = v50;
  v41 = v51;
  v24 = v52;
  LODWORD(v42) = 0;
  v28 = v21;
  v46[0] = v50;
  v46[1] = v51;
  v47 = v55;
  v46[3] = v53;
  v46[4] = v54;
  v46[2] = v42;
  v36 = v42;
  v37 = v53;
  v38 = v54;
  v39 = v55;
  v34 = v50;
  v35 = v51;
  v25 = *(a8 + 24);
  outlined init with copy of _ViewInputs(&v50, v48);
  outlined init with copy of _ViewInputs(v46, v48);
  v25(&v28, &v34, partial apply for closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), v22, a6, a8);
  v48[2] = v36;
  v48[3] = v37;
  v48[4] = v38;
  v49 = v39;
  v48[0] = v34;
  v48[1] = v35;
  outlined destroy of _ViewInputs(v48);
  LODWORD(v42) = v24;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v40);
    AGSubgraphEndTreeElement();
  }

  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  return outlined destroy of _ViewInputs(&v34);
}

uint64_t sub_18D1B5A58()
{

  return swift_deallocObject();
}

void protocol witness for static View._makeViewList(view:inputs:) in conformance _VariadicView_Children(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0);
  lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v5, a2, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v5, a2, a3);
  }
}

void *static _VariadicView_Children.Element._makeView(view:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v30[2] = a2[2];
  v30[3] = v5;
  v30[4] = a2[4];
  v31 = *(a2 + 20);
  v6 = a2[1];
  v30[0] = *a2;
  v30[1] = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = a2[3];
  v22 = a2[2];
  v23 = v9;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v10 = a2[1];
  v20 = *a2;
  v21 = v10;
  v27 = v25;
  v11 = v22;
  LODWORD(v22) = 0;
  v13 = OffsetAttribute2;
  v26[0] = v20;
  v26[1] = v10;
  v26[3] = v9;
  v26[4] = v24;
  v26[2] = v22;
  v16 = v22;
  v17 = v9;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v10;
  outlined init with copy of _ViewInputs(v30, v28);
  outlined init with copy of _ViewInputs(v26, v28);
  static _ViewList_View._makeView(view:inputs:)(&v13, &v14, a3);
  v28[2] = v16;
  v28[3] = v17;
  v28[4] = v18;
  v29 = v19;
  v28[0] = v14;
  v28[1] = v15;
  outlined destroy of _ViewInputs(v28);
  LODWORD(v22) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
    AGSubgraphEndTreeElement();
  }

  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  return outlined destroy of _ViewInputs(&v14);
}

uint64_t storeEnumTagSinglePayload for GestureLabelModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized static _ViewList_ID.Canonical.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5)
    {
      if (v4 != v5)
      {
        v6 = *(*v4 + 112);
        swift_retain_n();

        LOBYTE(v6) = v6(v7);

        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s2os6LoggerVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ViewList_ID.Canonical(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = *(*v3 + 120);

    v4(v6);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for _VariadicView_Children(uint64_t a1, int a2)
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

void lazy protocol witness table accessor for type PlaceholderInfo and conformance PlaceholderInfo()
{
  if (!lazy protocol witness table cache variable for type PlaceholderInfo and conformance PlaceholderInfo)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlaceholderInfo, &unk_1F00A0558, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlaceholderInfo and conformance PlaceholderInfo);
  }
}

uint64_t initializeWithCopy for PlaceholderInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 112);
  v5 = *(a2 + 120);
  *(a1 + 112) = v6;
  *(a1 + 120) = v5;
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  v8 = *(a2 + 168);

  v9 = v6;
  v10 = v5;

  if (v8)
  {
    v11 = *(a2 + 176);
    *(a1 + 168) = v8;
    *(a1 + 176) = v11;
    (**(v8 - 8))(a1 + 144, a2 + 144, v8);
  }

  else
  {
    v12 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v12;
    *(a1 + 176) = *(a2 + 176);
  }

  v13 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);

  v14 = v13;
  return a1;
}

void destroy for PlaceholderInfo(uint64_t a1)
{

  if (*(a1 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 144));
  }

  v2 = *(a1 + 192);
}

uint64_t assignWithCopy for _VariadicView_Children.Element(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;
  v7 = v6;

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

void *static _UnaryViewAdaptor._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v40 = a2[2];
  v41 = v9;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v10 = a2[1];
  v38 = *a2;
  v39 = v10;
  v20 = a3;
  v21 = a4;
  LODWORD(v36[0]) = v8;
  v11 = type metadata accessor for _UnaryViewAdaptor(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _UnaryViewAdaptor._makeView(view:inputs:), a3, v34);
  v14 = v34[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v28 = v38;
  v29 = v39;
  v16 = v40;
  LODWORD(v30) = 0;
  v19 = v14;
  v34[0] = v38;
  v34[1] = v39;
  v35 = v43;
  v34[3] = v41;
  v34[4] = v42;
  v34[2] = v30;
  v24 = v30;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  v17 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v38, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v17(&v19, &v22, a3, a4);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t closure #1 in static _UnaryViewAdaptor._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _UnaryViewAdaptor(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t key path getter for Identifiable.id : <A, B, C>A.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of Identifiable.id.getter();
}

{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of Identifiable.id.getter();
}

uint64_t assignWithCopy for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t type metadata completion function for ScaledMetric(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ScaledMetric.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v9 = type metadata accessor for ScaledMetric(0, a2, a3, v8);
  result = (*(*(a2 - 8) + 32))(a4 + *(v9 + 40), a1, a2);
  *(a4 + *(v9 + 44)) = 6;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance _PreferenceWritingModifier<A><>.ColorSchemeEnv@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DD85500;
  return result;
}

uint64_t storeEnumTagSinglePayload for SystemHoverEffect.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical()
{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  }
}

uint64_t static _ViewList_View._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v33 = a2[2];
  v34 = v4;
  v6 = a2[3];
  v35 = a2[4];
  v7 = a2[1];
  v31 = *a2;
  v32 = v7;
  *&v20[16] = v5;
  *&v20[32] = v33;
  v8 = a2[4];
  *&v20[48] = v6;
  *&v20[64] = v8;
  v9 = *a1;
  v36 = *(a2 + 20);
  *&v20[80] = *(a2 + 20);
  *v20 = v31;
  _ViewInputs.makeIndirectOutputs()(&v17);
  *&v20[40] = v33;
  *&v20[56] = v34;
  *&v20[72] = v35;
  *&v20[8] = v31;
  v10 = v17;
  v12 = v18;
  v11 = v19;
  *v20 = v9;
  v21 = v36;
  *&v20[24] = v32;
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v25 = v13;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, 28);
  v30[28] = 1;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(&v31, &v17);
  lazy protocol witness table accessor for type PlaceholderInfo and conformance PlaceholderInfo();

  Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of PlaceholderInfo(v20);
  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v10 + 48;
    do
    {
      v16 += 24;
      result = AGGraphSetIndirectDependency();
      --v15;
    }

    while (v15);
  }

  if (v11 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 12) = v11;
  return result;
}

int *PlaceholderInfo.updateValue()()
{
  v25 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v2 = *(OutputValue + 24);
    if (v2 == *(AGGraphGetValue() + 72))
    {
      result = AGGraphGetOutputValue();
      if (!result)
      {
        goto LABEL_21;
      }

      v5 = *result;
      v4 = result[1];
      v6 = *(result + 1);

      Value = AGGraphGetValue();
      if (v5 == *(Value + 56) && v4 == *(Value + 60))
      {
        v8 = *(Value + 64);

        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v6, v8);

        if (v9)
        {
          return result;
        }
      }

      else
      {
      }
    }

    result = AGGraphGetOutputValue();
    if (result)
    {
      v12 = *(result + 1);
      v13 = result[4];
      v14 = *(result + 3);
      v17 = *result;
      v18 = v12;
      v19 = v13;
      v20 = v14;

      v15 = AGGraphGetValue();
      outlined init with copy of _ViewList_View(v15, &v21);
      v16 = PlaceholderInfo.reuseItem(info:placeholder:)(&v17, &v21);
      outlined destroy of _ViewList_View(&v21);
      if (v16)
      {
        v21 = v17;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        goto LABEL_15;
      }

      result = AGGraphGetOutputValue();
      if (result)
      {
        v10 = result[4] + 1;
        if (!*(v0 + 120))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = 0;
  if (*(v0 + 120))
  {
LABEL_9:
    PlaceholderInfo.eraseItem()();
  }

LABEL_10:
  v11 = AGGraphGetValue();
  outlined init with copy of _ViewList_View(v11, &v21);
  PlaceholderInfo.makeItem(placeholder:seed:)(&v21, v10, &v17);
  outlined destroy of _ViewList_View(&v21);
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
LABEL_15:
  AGGraphSetOutputValue();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA04ViewD33ShouldParentToPlaceholderSubgraphV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ViewListShouldParentToPlaceholderSubgraph);
  ShouldParentToPlaceholderSubgraphV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS33ShouldParentToPlaceholderSubgraphV_Tt0B5(a1, v4);
  if (ShouldParentToPlaceholderSubgraphV_Tt0B5)
  {
    return *(ShouldParentToPlaceholderSubgraphV_Tt0B5 + 72);
  }

  else
  {
    return 1;
  }
}

void PlaceholderInfo.makeItem(placeholder:seed:)(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1[11];
  if (!v6 || !AGSubgraphIsValid())
  {
    *a3 = 0;
    *(a3 + 8) = MEMORY[0x1E69E7CC0];
    *(a3 + 16) = a2;
    *(a3 + 24) = 0x8000000000000000;
    return;
  }

  v8 = v3[14];
  v9 = AGSubgraphGetGraph();
  v10 = v6;
  v11 = AGSubgraphCreate();

  AGSubgraphAddChild();
  ShouldParentToPlaceholderSubgraphV_Tt2g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA04ViewD33ShouldParentToPlaceholderSubgraphV_Tt2g5(v3[1]);
  if (v8 != v10 && (ShouldParentToPlaceholderSubgraphV_Tt2g5 & 1) != 0)
  {
    AGSubgraphAddChild2();
  }

  AGGraphClearUpdate();
  v13 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in PlaceholderInfo.makeItem(placeholder:seed:)(v11, a1, v3);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v14 = v3[15];
  v15 = v11;

  v3[15] = v11;

  v16 = v3;
  v17 = _ViewList_SublistSubgraphStorage.retain()();

  v16[16] = v17;
  v28[3] = &type metadata for _ViewList_SubgraphElements;
  v28[4] = &protocol witness table for _ViewList_SubgraphElements;
  v28[0] = swift_allocObject();
  outlined init with copy of _ViewList_SubgraphElements(a1, v28[0] + 16);
  outlined assign with take of _ViewList_Elements?(v28, (v16 + 18));
  v18 = AGSubgraphGetGraph();
  v19 = AGSubgraphGetGraph();

  if (v18 == v19)
  {
  }

  else
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
      return;
    }

    v21 = CurrentAttribute;
    v22 = v16[14];
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    v24 = v22;
    v25 = AGSubgraphAddObserver();

    v16[24] = v6;
    v16[25] = v25;
  }

  v26 = a1[8];
  v27 = a1[9];
  *a3 = a1[7];
  *(a3 + 8) = v26;
  *(a3 + 16) = a2;
  *(a3 + 24) = v27;
}

uint64_t sub_18D1B7268()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18D1B72A8()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS33ShouldParentToPlaceholderSubgraphV_Tt0B5(uint64_t result, uint64_t a2)
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
        ShouldParentToPlaceholderSubgraphV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS33ShouldParentToPlaceholderSubgraphV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = ShouldParentToPlaceholderSubgraphV_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ViewListShouldParentToPlaceholderSubgraph)
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

double closure #1 in PlaceholderInfo.makeItem(placeholder:seed:)(void *a1, void *a2, uint64_t a3)
{
  v6 = &static GraphReuseOptions.overrideValue;
  v7 = swift_beginAccess();
  if (byte_1EAB273F0 != 1)
  {
    goto LABEL_4;
  }

  if (one-time initialization token for defaultsValue != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = &static GraphReuseOptions.defaultsValue;
LABEL_4:
    if ((*v6 & 4) != 0)
    {
      type metadata accessor for IndirectAttributeMap();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E7CC8];
      *(v8 + 16) = a1;
      *(v8 + 24) = v9;
      v7 = a1;
    }

    else
    {
      v8 = 0;
    }

    v10 = a2[9];
    v11 = *(a3 + 40);
    v12 = *(a3 + 72);
    v29 = *(a3 + 56);
    v30 = v12;
    v31 = *(a3 + 88);
    v26 = *(a3 + 8);
    v27 = *(a3 + 24);
    v28 = v11;
    MEMORY[0x1EEE9AC00](v7);
    v20[2] = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in closure #1 in PlaceholderInfo.makeItem(placeholder:seed:);
    *(v13 + 24) = v20;
    v25 = v10;
    MEMORY[0x1EEE9AC00](v13);
    v19[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
    v19[3] = v14;
    v24[0] = a2[5];
    outlined init with copy of _ViewInputs(&v26, v22);
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v21 = &v21;
      v15 = a2[3];
      v16 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v15);
      v22[2] = v28;
      v22[3] = v29;
      v22[4] = v30;
      v23 = v31;
      v22[0] = v26;
      v22[1] = v27;
      (*(v16 + 16))(v24, &v25, v22, v8, _s7SwiftUI18_ViewList_ElementsPAAE14makeOneElement2at6inputs11indirectMap4bodyAA01_C7OutputsVSgSi_AA01_C6InputsVAA017IndirectAttributeL0CSgAkM_AjMctXEtFA2kM_AjMctcXEfU_AK_SbtAM_AjMctXEfU_TA_0, v19, v15, v16);
      outlined destroy of _ViewInputs(&v26);
      a1 = v24[0];
      a2 = v24[1];
    }

    else
    {
      outlined destroy of _ViewInputs(&v26);
      a2 = 0;
      a1 = 0;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    v7 = swift_once();
  }

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12_ViewOutputsV_s5NeverOytTB503_s7c99UI15PlaceholderInfo33_9B09D1820E97ECBB666F7560EA2A2D2CLLV8makeItem11placeholder4seedAD5ValueVAA010_e35List_R0V_s6UInt32VtFyyXEfU_yAA01_R7F7VXEfU0_AD0J4Info02_9lmnopqrS1CLLVTf1cn_n(a1, a2, a3);

  *(a3 + 184) = v8;

  return result;
}

uint64_t closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t))
{
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  a5(v8, a3, a4);
  return 0;
}

uint64_t partial apply for closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v5(v9, a3, a4);
  return 0;
}

void *closure #1 in closure #1 in PlaceholderInfo.makeItem(placeholder:seed:)@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v44 = a1[2];
  v45 = v7;
  v46 = a1[4];
  v47 = *(a1 + 20);
  v8 = a1[1];
  v42 = *a1;
  v43 = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type PlaceholderViewPhase and conformance PlaceholderViewPhase();
  *(a3 + 208) = Attribute.init<A>(body:value:flags:update:)();
  *(a3 + 212) = 0;
  v39 = v44;
  *v40 = v45;
  *&v40[16] = v46;
  v41 = v47;
  v37 = v42;
  v38 = v43;
  outlined init with copy of _ViewInputs(&v42, &v31);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD33ShouldParentToPlaceholderSubgraphV_Tt2g5(&v37, 1);
  v9 = v43;

  swift_beginAccess();
  v10 = v9[3];
  v30[1] = v9[2];
  v30[2] = v10;
  v11 = v9[5];
  v30[3] = v9[4];
  v30[4] = v11;
  v30[0] = v9[1];
  type metadata accessor for AnyHashable2?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v12 = swift_allocObject();
  memmove((v12 + 16), v9 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v30, &v31);

  *&v38 = v12;
  *&v40[12] = *(a3 + 68);
  LODWORD(v39) = v39 | 0x1C;
  v13 = *(a3 + 24);
  v28[0] = *(a3 + 8);
  v28[1] = v13;
  v28[2] = *(a3 + 40);
  v14 = *(a3 + 24);
  v31 = *(a3 + 8);
  v32 = v14;
  v33 = *(a3 + 40);
  outlined init with copy of _GraphInputs(v28, v26);
  _GraphInputs.merge(_:ignoringPhase:)(&v31, 1);
  v29[0] = v31;
  v29[1] = v32;
  v29[2] = v33;
  outlined destroy of _GraphInputs(v29);
  if (*(a3 + 212))
  {
    __break(1u);
  }

  DWORD2(v38) = *(a3 + 208);
  if ((v39 & 0x40) == 0)
  {
    LODWORD(v39) = v39 | 0x40;
  }

  specialized Set._Variant.insert(_:)(&v31, *(a3 + 32));
  v24[2] = v39;
  v24[3] = *v40;
  v24[4] = *&v40[16];
  v25 = v41;
  v24[0] = v37;
  v24[1] = v38;
  v20 = v39;
  v21 = *v40;
  v22 = *&v40[16];
  v23 = v41;
  v18 = v37;
  v19 = v38;
  outlined init with copy of _ViewInputs(v24, &v31);
  a2(v17, &v18);
  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v22;
  v27 = v23;
  v26[0] = v18;
  v26[1] = v19;
  outlined destroy of _ViewInputs(v26);
  v33 = v39;
  v34 = *v40;
  v35 = *&v40[16];
  v36 = v41;
  v31 = v37;
  v32 = v38;
  result = outlined destroy of _ViewInputs(&v31);
  v16 = v17[1];
  *a4 = v17[0];
  a4[1] = v16;
  return result;
}

void lazy protocol witness table accessor for type PlaceholderViewPhase and conformance PlaceholderViewPhase()
{
  if (!lazy protocol witness table cache variable for type PlaceholderViewPhase and conformance PlaceholderViewPhase)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlaceholderViewPhase, &unk_1F00A0748, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlaceholderViewPhase and conformance PlaceholderViewPhase);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD33ShouldParentToPlaceholderSubgraphV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListShouldParentToPlaceholderSubgraph);
  ShouldParentToPlaceholderSubgraphV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS33ShouldParentToPlaceholderSubgraphV_Tt0B5(v4, v7);
  if (!ShouldParentToPlaceholderSubgraphV_Tt0B5 || *(ShouldParentToPlaceholderSubgraphV_Tt0B5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ViewListShouldParentToPlaceholderSubgraph>, &type metadata for ViewListShouldParentToPlaceholderSubgraph, &protocol witness table for ViewListShouldParentToPlaceholderSubgraph, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ViewListShouldParentToPlaceholderSubgraph, 0, v6);
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12_ViewOutputsV_s5NeverOytTB503_s7c99UI15PlaceholderInfo33_9B09D1820E97ECBB666F7560EA2A2D2CLLV8makeItem11placeholder4seedAD5ValueVAA010_e35List_R0V_s6UInt32VtFyyXEfU_yAA01_R7F7VXEfU0_AD0J4Info02_9lmnopqrS1CLLVTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return a1 == 0;
  }

  v7[0] = a1;
  v7[1] = a2;

  closure #2 in closure #1 in PlaceholderInfo.makeItem(placeholder:seed:)(v7, a3);
  if (!v3)
  {

    return a1 == 0;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in PlaceholderInfo.makeItem(placeholder:seed:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a2 + 104);
  v6 = *(a2 + 108);
  v11 = *(a2 + 96);
  v12 = v5;
  v9 = v2;
  v10 = v3;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v9);

  if (v6 != *MEMORY[0x1E698D3F8] && v4 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }
}

uint64_t outlined destroy of _ViewList_Elements?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ViewList_Elements?, &lazy cache variable for type metadata for _ViewList_Elements, &protocol descriptor for _ViewList_Elements, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for PlaceholderInfo.Value(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  v13 = *a6;
  v14 = a6[1];
  v15 = *(a6 + 16);
  v16 = *(a6 + 5);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v17 = AGSubgraphGetCurrent();
    if (v17)
    {
      v19 = v17;
      v28[0] = v12;
      v28[1] = a4;
      v29 = v17;
      v25[0] = v13;
      v25[1] = v14;
      v26 = v15;
      v27 = v16;
      v20 = type metadata accessor for ViewRootBodyAccessor(0, a7, a8, v18);
      swift_getWitnessTable(protocol conformance descriptor for ViewRootBodyAccessor<A>, v20);
      BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, v28, a5, v25, v20, v21);

      return;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(75);
  MEMORY[0x193ABEDD0](0xD00000000000003DLL, 0x800000018DD7B600);
  v22 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v22);

  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_18D1B7FA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t ViewRootBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v114[5] = *MEMORY[0x1E69E9840];
  v94 = type metadata accessor for OSSignpostID();
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v78 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v85 = &v78 - v16;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for UncheckedSendable(0, a5, v21, v22);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v78 - v23;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  Value = AGGraphGetValue();
  v26 = v25;
  outlined init with copy of AnyTrackedValue(Value, v114);
  if ((a2 & 1) == 0 && (v26 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v114);
  }

  v80 = v15;
  v81 = AssociatedTypeWitness;
  outlined init with copy of AnyTrackedValue(v114, v110);
  v111 = a4;
  v112 = MEMORY[0x1E69E7CC0];
  v113 = 0;
  (*(v17 + 16))(v20, a1, a5);
  v82 = a5;
  UncheckedSendable.init(_:)(v20, a5, v87);
  v28 = one-time initialization token for bodyInvoke;
  v29 = a4;
  if (v28 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v30 = static Signpost.bodyInvoke;
    v31 = word_1ED539040;
    v32 = HIBYTE(word_1ED539040);
    v33 = byte_1ED539042;
    v34 = static os_signpost_type_t.begin.getter();
    v104 = v30;
    v105 = v31;
    v106 = v32;
    v107 = v33;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    LODWORD(v97) = v34;
    v79 = a6;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_18DDAB4C0;
    v36 = AGTypeID.description.getter();
    v38 = v37;
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v41 = v40;
    *(v35 + 64) = v40;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v42 = specialized static Tracing.libraryName(defining:)();
    *(v35 + 96) = v39;
    *(v35 + 104) = v41;
    *(v35 + 72) = v42;
    *(v35 + 80) = v43;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v32)
    {
      v103[0] = v97;
      v102 = &dword_18D018000;
      v101 = _signpostLog;
      v104 = v30;
      v105 = v31;
      v99[0] = "%{public}@.body [in %{public}@]";
      v99[1] = 31;
      v100 = 2;
      v98 = v35;
      v44 = v86;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v103, &v102, &v101, &v104, v86, v99, &v98);
      (*(v95 + 8))(v44, v94);
LABEL_37:

      a6 = v79;
      break;
    }

    if (v30 == 20)
    {
      v45 = 3;
    }

    else
    {
      v45 = 4;
    }

    v46 = bswap32(v30) | (4 * WORD1(v30));
    a6 = v97;
    v47 = v95 + 16;
    v88 = *(v95 + 16);
    v48 = v88(v96, v86, v94);
    v49 = 0;
    LOBYTE(v99[0]) = 1;
    v92 = 16 * v45;
    v95 = v47;
    v93 = (v47 - 8);
    v91 = v35 + 32;
    v90 = *(&v30 + 1);
    v89 = v45;
LABEL_14:
    v97 = &v78;
    MEMORY[0x1EEE9AC00](v48);
    v51 = &v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v51 + 8;
    v53 = v45;
    v54 = v51 + 8;
    do
    {
      *(v54 - 1) = 0;
      *v54 = 0;
      v54 += 16;
      --v53;
    }

    while (v53);
    v55 = v91 + 40 * v49;
    while (1)
    {
      v56 = *(v35 + 16);
      if (v49 == v56)
      {
        LOBYTE(v99[0]) = 0;
LABEL_22:
        v60 = v90;
        if (v90 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v51[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v51[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v51[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v60 != 20 && v51[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v61 = *v93;
        v62 = v96;
        v63 = v94;
        (*v93)(v96, v94);
        v64 = __swift_project_value_buffer(v63, static OSSignpostID.continuation);
        v48 = v88(v62, v64, v63);
        v45 = v89;
        if ((v99[0] & 1) == 0)
        {
          v65 = v94;
          v61(v96, v94);
          v61(v86, v65);
          goto LABEL_37;
        }

        goto LABEL_14;
      }

      if (v49 >= v56)
      {
        break;
      }

      ++v49;
      outlined init with copy of AnyTrackedValue(v55, &v104);
      v57 = v108;
      v58 = v109;
      __swift_project_boxed_opaque_existential_1(&v104, v108);
      *(v52 - 1) = CVarArg.kdebugValue(_:)(v46 | a6, v57, v58);
      *v52 = v59 & 1;
      v52 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v104);
      v55 += 40;
      if (!--v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  AGGraphClearUpdate();
  v66 = v85;
  v67 = v87;
  v68 = v82;
  closure #1 in ViewRootBodyAccessor.updateBody(of:changed:)(v110, v82, a6, v85);
  AGGraphSetUpdate();
  v69 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v69);
  v71 = type metadata accessor for ViewRootBodyAccessor(0, v68, a6, v70);
  *(&v78 - 2) = v71;
  swift_getWitnessTable(protocol conformance descriptor for ViewRootBodyAccessor<A>, v71);
  *(&v78 - 1) = v72;
  v73 = v81;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v66, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v78 - 4), v81, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v74);
  (*(v80 + 8))(v66, v73);
  __swift_destroy_boxed_opaque_existential_1(v114);
  (*(v83 + 8))(v67, v84);
  return outlined destroy of UncheckedSendable<_VariadicView_Children>(v110, v75, v76, v77);
}

uint64_t closure #1 in ViewRootBodyAccessor.updateBody(of:changed:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v10, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16[-v13];
  closure #1 in closure #1 in ViewRootBodyAccessor.updateBody(of:changed:)(a2, a3, a4, &v16[-v13]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a5, v14, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #1 in ViewRootBodyAccessor.updateBody(of:changed:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(a3 + 56))(a1, a2, a3, v9);
  return UncheckedSendable.init(_:)(v11, AssociatedTypeWitness, a4);
}

uint64_t outlined destroy of UncheckedSendable<_VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UncheckedSendable<_VariadicView_Children>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for UncheckedSendable<_VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for UncheckedSendable<_VariadicView_Children>)
  {
    v4 = type metadata accessor for UncheckedSendable(0, &type metadata for _VariadicView_Children, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for UncheckedSendable<_VariadicView_Children>);
    }
  }
}

Swift::Int __swiftcall _ViewList_Group.count(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *style.value;
    for (i = *v1 + 32; ; i += 48)
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(i, v11, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = v4;
      result = (*(v7 + 16))(&v10, v6, v7);
      v9 = __OFADD__(v3, result);
      v3 += result;
      if (v9)
      {
        break;
      }

      outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v11, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      if (!--v2)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for CountViews(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Map<ViewList, Int>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<ViewList, Int>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<ViewList, Int>);
    }
  }
}

void lazy protocol witness table accessor for type Map<ViewList, Int> and conformance Map<A, B>()
{
  if (!lazy protocol witness table cache variable for type Map<ViewList, Int> and conformance Map<A, B>)
  {
    type metadata accessor for Map<ViewList, Int>(255);
    swift_getWitnessTable(MEMORY[0x1E698D3A0], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Map<ViewList, Int> and conformance Map<A, B>);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v4 = 0;
      v15 = a2;
      do
      {
        v5 = *(v3 + v4 + 32);
        v6 = *(v3 + v4 + 40);
        v7 = *(v3 + v4 + 48);
        v8 = *(v3 + v4 + 52);
        v9 = *(a2 + v4 + 40);
        v10 = *(a2 + v4 + 48);
        v11 = *(a2 + v4 + 52);
        if (v5 == *(a2 + v4 + 32))
        {
          result = 0;
          v14 = v6 == v9 && v7 == v10;
          if (!v14 || ((v8 ^ v11) & 1) != 0)
          {
            return result;
          }
        }

        else
        {
          v17 = *(*v5 + 112);

          LOBYTE(v17) = v17(v12);

          result = 0;
          if ((v17 & 1) == 0)
          {
            return result;
          }

          if (v6 != v9)
          {
            return result;
          }

          if (v7 != v10)
          {
            return result;
          }

          a2 = v15;
          v3 = a1;
          if ((v8 ^ v11))
          {
            return result;
          }
        }

        v4 += 24;
        --v2;
      }

      while (v2);
    }
  }

  return 1;
}

double closure #2 in HostPreferencesTransform.updateValue()(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a1[1];
  *&v10 = *a1;
  *(&v10 + 1) = v7;
  v12 = merge32(_:_:)(*(a3 + 20), *(a3 + 16));
  *&v13 = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  PreferenceValues.Value.init(value:seed:)(&v10, &v12, FunctionTypeMetadata, &v13);
  v10 = v13;
  v11 = v14;

  PreferenceValues.modifyValue<A>(for:transform:)(a4, &v10, a4, a5);

  return result;
}

uint64_t PreferenceValues.modifyValue<A>(for:transform:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v31[-v11];
  v15 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v13, v14);
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-v16];
  v18 = *a2;
  v33 = *(a2 + 8);
  v34 = v18;
  v32 = *(a2 + 16);
  v36 = v4;
  v38[0] = *v4;
  v19 = v38[0];

  v37 = a1;
  v20 = PreferenceValues._index(of:)(a1);

  v22 = *(v19 + 16);
  if (v20 == v22)
  {
    goto LABEL_4;
  }

  if (v20 >= v22)
  {
    __break(1u);
    return result;
  }

  v23 = v19 + 56 * v20;
  v25 = *(v23 + 32);
  v24 = v23 + 32;
  if (v25 == v37)
  {
    outlined init with copy of PreferenceValues.Entry(v24, v38);
    PreferenceValues.Entry.subscript.getter(AssociatedTypeWitness, v17);
    outlined destroy of PreferenceValues.Entry(v38);
  }

  else
  {
LABEL_4:
    (*(a4 + 16))(a3, a4);
    (*(v10 + 32))(v17, v12, AssociatedTypeWitness);
    *&v17[*(v15 + 28)] = 0;
  }

  v26 = *(v15 + 28);
  v27 = *&v17[v26];
  v28 = v32;
  if (v27 != -1 && v32 != 0)
  {
    if (v27)
    {
      v30 = v32 == -1;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v28 = merge32(_:_:)(v27, v32);
    }

    *&v17[v26] = v28;
  }

  v34(v17);
  PreferenceValues.setValue<A>(_:of:at:)(v17, v37, a4, v20, AssociatedTypeWitness);
  return (*(v35 + 8))(v17, v15);
}

void lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID()
{
  if (!lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for Namespace.ID, &type metadata for Namespace.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for Namespace.ID, &type metadata for Namespace.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Namespace.ID and conformance Namespace.ID);
  }
}

uint64_t protocol witness for ResolvedTextContainer.append(_:in:with:isUniqueSizeVariant:) in conformance Text.ResolvedString(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = [a1 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  specialized ResolvedTextContainer.append<A>(_:in:with:)(v5, v7, v2, v3);
}

uint64_t specialized ResolvedTextContainer.append<A>(_:in:with:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a3, &v17);
  }

  else
  {
    _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a3);
  }

  v17 = a1;
  v18 = a2;

  v8 = String.init<A>(_:)();
  v17 = a3;
  v18 = a4;
  v10 = String.caseConvertedIfNeeded(_:)(&v17, v8, v9);
  v12 = v11;

  v17 = a3;
  v18 = a4;
  v13 = String.redactedIfNeeded(_:)(&v17, v10, v12);
  v15 = v14;

  type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x193ABEDD0](v13, v15);
}

uint64_t destroy for Text.ResolvedString(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));

  if ((*(a1 + 88) - 1) >= 2)
  {
  }

  if ((*(a1 + 104) - 1) >= 2)
  {
  }

  if (*(a1 + 176) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  if (*(a1 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(a1 + 264), *(a1 + 272), *(a1 + 280));
  }

  v3 = type metadata accessor for Text.Style(0);
  v4 = v3[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  if (!(*(*(v5 - 8) + 48))(a1 + v4, 2, v5))
  {
    v6 = type metadata accessor for Locale.Language();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = v3[23];
  v8 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 1, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = v3[24];
  v11 = type metadata accessor for AttributedString.TextAlignment();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = v3[26];
  v14 = type metadata accessor for AttributedString.LineHeight();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(a1 + v13, 1, v14))
  {
    (*(v15 + 8))(a1 + v13, v14);
  }
}

uint64_t LocationBox.isEqual(to:)(uint64_t *a1)
{
  v3 = *(*v1 + 168);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v11 = a1 == v1;
      return v11 & 1;
    }
  }

  else if (static Semantics.forced < v10)
  {
    goto LABEL_7;
  }

  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(*v1 + 184);
    swift_beginAccess();
    v15 = *(v4 + 16);
    v15(v9, v1 + v14, v3);
    v16 = *(*v13 + 184);
    swift_beginAccess();
    v15(v6, (v13 + v16), v3);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = *(v4 + 8);
    v17(v6, v3);
    v17(v9, v3);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL specialized static OptionalEdgeInsets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = *(a2 + 24);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v4 = *(a2 + 40);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t CollectionChanges.formChanges<A, B>(from:to:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v81 = a4;
  v82 = a5;
  v17 = a3[3];
  v18 = a3[4];
  v19 = a3[5];
  v89[0] = a3[2];
  v16 = v89[0];
  v89[1] = v17;
  v66 = v18;
  v89[2] = v18;
  v89[3] = v19;
  v65 = v19;
  v83 = type metadata accessor for CollectionChanges.Element(0, v89);
  MEMORY[0x1EEE9AC00](v83);
  v21 = &v60 - v20;
  v86 = v17;
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v60 - v25;
  v87 = v16;
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v85 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v60 - v29;
  v89[0] = *v9;

  v80 = a8;
  v30 = CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, 0x7FFFFFFFFFFFFFFFLL, a3, v81, v82, a6, a7, a8);
  v32 = v31;

  if (v30)
  {

    v84 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v30);

    v73 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v32);

    v77 = a6;
    v88 = dispatch thunk of Collection.count.getter();
    v78 = a7;
    v34 = dispatch thunk of Collection.count.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v76 = a1;
    dispatch thunk of Collection.startIndex.getter();
    v70 = a2;
    dispatch thunk of Collection.startIndex.getter();
    result = Array.init()();
    v79 = v9;
    *v9 = result;
    v75 = v34;
    v35 = v34 > 0;
    if (v88 > 0 || v75 >= 1)
    {
      LOBYTE(v40) = 0;
      v41 = 0;
      v42 = 0;
      v64 = 0;
      v43 = 0;
      v61 = v73 + 32;
      v67 = v84 + 32;
      do
      {
        v44 = (v67 + 16 * v42);
        v45 = v43;
        while ((v40 & 1) == 0 && v42 < *(v84 + 16) && *v44 == v41)
        {
          v46 = v44[1];
          v47 = (v46 - v41);
          if (__OFSUB__(v46, v41))
          {
            __break(1u);
            goto LABEL_34;
          }

          iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)(v85, v47, v81, v21, v77, v78, v77);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Array();
          result = Array.append(_:)();
          ++v42;
          v41 += v47;
          if (v41 >= v88)
          {
            v45 = v43;
          }

          v44 += 2;
          if (v41 >= v88 && !v35)
          {
            goto LABEL_4;
          }
        }

        v48 = v64;
        if ((v64 & 0x8000000000000000) != 0 || v64 >= *(v73 + 16) || (v49 = (v61 + 16 * v64), *v49 != v45))
        {
          v52 = v88;
          if ((v40 & 1) == 0)
          {
            v52 = v88;
            if (v42 < *(v84 + 16))
            {
              v52 = *v44;
            }
          }

          v53 = v75;
          if ((v64 & 0x8000000000000000) == 0)
          {
            v53 = v75;
            if (v64 < *(v73 + 16))
            {
              v53 = *(v61 + 16 * v64);
            }
          }

          v54 = (v52 - v41);
          v55 = (v53 - v45);
          if (v55 >= v54)
          {
            v56 = v54;
          }

          else
          {
            v56 = v55;
          }

          v68 = v56;
          type metadata accessor for Range();
          type metadata accessor for Range();
          v69 = *(swift_getTupleTypeMetadata2() + 48);
          v57 = v77;
          v58 = v78;
          v59 = v82;
          iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)(v85, v56, v81, v21, v77, v78, v77);
          v51 = v68;
          iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)(v74, v68, v59, &v21[v69], v57, v58, v58);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Array();
          result = Array.append(_:)();
          v41 += v51;
        }

        else
        {
          v50 = v49[1];
          v51 = (v50 - v45);
          result = v74;
          if (__OFSUB__(v50, v45))
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)(v74, v51, v82, v21, v77, v78, v78);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Array();
          result = Array.append(_:)();
          v64 = v48 + 1;
        }

        v43 = &v45[v51];
        v35 = v43 < v75;
        v40 = v42 >> 63;
      }

      while (v41 < v88 || v43 < v75);
    }

LABEL_4:

    v36 = *(v63 + 8);
    v37 = v86;
    v36(v74, v86);
    v38 = *(v62 + 8);
    v39 = v87;
    v38(v85, v87);
    v36(v72, v37);
    return (v38)(v71, v39);
  }

  else
  {
LABEL_35:
    __break(1u);
  }

  return result;
}

void type metadata accessor for ([Int], [Int])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([Int], [Int]))
  {
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([Int], [Int]));
    }
  }
}

void type metadata accessor for ([Int], [Int])?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([Int], [Int])?)
  {
    type metadata accessor for ([Int], [Int])(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ([Int], [Int])?);
    }
  }
}

void Collection.withContiguousStorage<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v42 = a6;
  v39 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Optional();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = v33 - v13;
  v41 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5;
  v19 = *(a5 + 8);
  v20 = a1;
  v21 = a2;
  v22 = v19;
  v23 = v43;
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (!v23)
  {
    v33[1] = v22;
    v34 = v20;
    v24 = v40;
    v25 = v41;
    v35 = v21;
    v36 = v18;
    v43 = 0;
    if ((*(v41 + 48))(v14, 1, a4) == 1)
    {
      (*(v24 + 8))(v14, v37);
      v26 = a3;
      (*(v39 + 16))(v38, v6, a3);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28 = Array.init<A>(_:)();
      MEMORY[0x1EEE9AC00](v28);
      v33[-6] = v26;
      v33[-5] = a4;
      v30 = v34;
      v29 = v35;
      v33[-4] = v36;
      v33[-3] = v30;
      v33[-2] = v29;
      v31 = type metadata accessor for Error();
      _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A.Sequence.Element>) -> (@out A1, @error @owned Error), &v33[-8], v28, AssociatedTypeWitness, a4, v31, MEMORY[0x1E69E7288], &v44);
    }

    else
    {
      v32 = *(v25 + 32);
      v32(v17, v14, a4);
      v32(v42, v17, a4);
    }
  }
}

__n128 partial apply for closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v11 = *(v3 + 16);
  v12 = v5;
  v13 = *(v3 + 40);
  v14 = *(v3 + 56);
  v15 = *(v3 + 72);
  v16 = a1;
  v17 = a2;
  v18 = v6;
  v19 = v7;
  type metadata accessor for ([Int], [Int])?(0);
  Collection.withContiguousStorage<A>(_:)(partial apply for closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), v10, v13, v8, *(v15 + 8), a3);
  return result;
}

uint64_t convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(uint64_t a1)
{

  result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:));
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = 0x8000000000000000;
    v7 = 1;
    while (1)
    {
      v11 = v6;
      v12 = *v4++;
      v6 = v12;
      v13 = v11 < (v12 - 1);
      v14 = v11 >= (v12 - 1);
      if (v11 < (v12 - 1))
      {
        v10 = v6;
      }

      else
      {
        v10 = v3;
      }

      v8 = v14 & v7;
      if (v13 && (v7 & 1) == 0)
      {
        v15 = v11 + 1;
        if (v11 + 1 < v3)
        {
          __break(1u);
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
          v5 = result;
        }

        v8 = 0;
        *(v5 + 16) = v17 + 1;
        v9 = v5 + 16 * v17;
        *(v9 + 32) = v3;
        *(v9 + 40) = v15;
        v10 = v6;
      }

      v3 = v10;
      v7 = v8;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v5;
}

void *Text._resolveText(in:)(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v20[-v12];
  if (a4)
  {
    v16 = a1;
    v14 = *a1;
    v15 = v16[1];
    Text.Style.init()(&v20[-v12]);
    v17 = &v13[v10[5]];
    *v17 = 0;
    v17[1] = 0;
    v18 = &v13[v10[6]];
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    v13[v10[7]] = 0;
    *v17 = 0;
    v17[1] = 0;
    specialized Text.resolve<A>(into:in:with:)(v13, v14, v15, 0, a2, a3, 1, a5);
    a2 = *v18;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(v13, type metadata accessor for Text.ResolvedString);
  }

  else
  {
  }

  return a2;
}

uint64_t type metadata completion function for CollectionChanges.Element(void *a1)
{
  result = type metadata accessor for Range();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Range();
    if (v3 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_getTupleTypeLayout2();
      v7 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t CollectionChanges.changedOffsets<A, B>(from:to:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a4 + 32);
  v16[1] = *(a4 + 16);
  v13 = *v9;
  v17 = a5;
  v18 = a6;
  v19 = v12;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a2;
  v24 = v13;
  v25 = a3;
  type metadata accessor for ([Int], [Int])?(0);
  Collection.withContiguousStorage<A>(_:)(partial apply for closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), v16, a5, v14, *(a7 + 8), &v26);
  return v26;
}

uint64_t closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, Swift::Int a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, Swift::Int a8@<X7>, char **a9@<X8>, char *a10, uint64_t a11, uint64_t a12, char *a13, char *a14, void (*a15)(char *, char *, uint64_t), uint64_t a16)
{
  v142 = a8;
  v131 = a7;
  v138 = a6;
  v143 = a5;
  v148 = a2;
  v150 = a1;
  v136 = a9;
  v141 = a14;
  v139 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = type metadata accessor for CollectionDifference();
  v132 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v140 = &v129 - v19;
  v146 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v129 - v27;
  v159 = Dictionary.init()();
  v151 = a16;
  v153 = type metadata accessor for Dictionary();
  Dictionary.reserveCapacity(_:)(a4);
  v147 = a3;
  v137 = a4;
  result = UnsafeBufferPointer.indices.getter();
  v145 = AssociatedTypeWitness;
  if (result != v29)
  {
    v30 = result;
    v31 = v29;
    if (v29 < result)
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (result >= v29)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v32 = *(v146 + 16);
    v33 = *(v146 + 72);
    v34 = v147 + result * v33;
    v35 = v145;
    v36 = v149;
    do
    {
      v32(v36, v34, v35);
      v156 = v30;
      LOBYTE(v157) = 0;
      Dictionary.subscript.setter();
      v34 += v33;
      ++v30;
    }

    while (v31 != v30);
  }

  v158 = Dictionary.init()();
  Dictionary.reserveCapacity(_:)(v148);
  result = UnsafeBufferPointer.indices.getter();
  if (result != v37)
  {
    v38 = result;
    v39 = v37;
    if (v37 >= result)
    {
      if (result < v37)
      {
        v40 = v145;
        v152 = *(v146 + 16);
        v41 = *(v146 + 72);
        v42 = v149;
        v43 = v150 + result * v41;
        do
        {
          v152(v42, v43, v40);
          v156 = v38;
          LOBYTE(v157) = 0;
          Dictionary.subscript.setter();
          v43 += v41;
          ++v38;
        }

        while (v39 != v38);
        goto LABEL_11;
      }

LABEL_77:
      __break(1u);
      return result;
    }

    goto LABEL_75;
  }

LABEL_11:
  v153 = v159;
  v44 = v151;
  v45 = MEMORY[0x193ABE6A0]();
  v46 = v137;
  if (v45 == v137 && (v130 = v158, MEMORY[0x193ABE6A0]() == v148))
  {
    v47 = UnsafeBufferPointer.endIndex.getter();
    v48 = UnsafeBufferPointer.endIndex.getter();
    LODWORD(v152) = v48 > 0;
    if (v47 > 0 || v48 >= 1)
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v131 = v146 + 16;
      v129 = v146 + 8;
      v50 = MEMORY[0x1E69E7CC0];
      v49 = MEMORY[0x1E69E7CC0];
      v51 = v138;
      v77 = v149;
      v137 = v47;
      v132 = v48;
LABEL_22:
      v139 = v49;
LABEL_23:
      v148 = v76;
      while (1)
      {
        v78 = *(v50 + 2);
        v79 = *(v49 + 2);
        v52 = v79 + v78;
        if (v79 + v78 > v51)
        {
          goto LABEL_17;
        }

        if (v48 == v74)
        {
          v80 = v47;
          v81 = v49;
          v82 = v48;
          v83 = v51;
          v84 = v77;
          v85 = v75;
          v86 = v50;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v50 = v86;
          }

          else
          {
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78 + 1, 1, v86);
          }

          v88 = *(v50 + 2);
          v87 = *(v50 + 3);
          if (v88 >= v87 >> 1)
          {
            v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v50);
            v89 = v85;
            v50 = v111;
          }

          else
          {
            v89 = v85;
          }

          v77 = v84;
          *(v50 + 2) = v88 + 1;
          *&v50[8 * v88 + 32] = v89;
          v51 = v83;
          v48 = v82;
          v49 = v81;
          v47 = v80;
          v90 = v148;
        }

        else
        {
          if (v47 == v75)
          {
            v112 = v50;
            v113 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79 + 1, 1, v49);
            }

            v115 = *(v49 + 2);
            v114 = *(v49 + 3);
            if (v115 >= v114 >> 1)
            {
              v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v49);
              v50 = v112;
              v49 = v125;
              v48 = v113;
            }

            else
            {
              v48 = v113;
              v50 = v112;
            }

            *(v49 + 2) = v115 + 1;
            *&v49[8 * v115 + 32] = v74++;
            v76 = v74;
            v75 = v47;
            goto LABEL_64;
          }

          v143 = v50;
          v144 = v75;
          v91 = v146;
          v92 = *(v146 + 72);
          v93 = v147 + v92 * v75;
          v94 = v74;
          v95 = *(v146 + 16);
          v96 = v145;
          v95(v77, v93, v145);
          v142 = v94;
          v97 = v135;
          v141 = v150 + v92 * v94;
          (v95)(v135);
          v98 = v151;
          v99 = v149;
          LOBYTE(v94) = dispatch thunk of static Equatable.== infix(_:_:)();
          v100 = *(v91 + 8);
          v100(v97, v96);
          v100(v99, v96);
          if (v94)
          {
            v50 = v143;
            v75 = v144 + 1;
            v74 = v142 + 1;
            v48 = v132;
            LODWORD(v152) = v142 + 1 < v132;
            v76 = v142 + 1;
            v47 = v137;
            v51 = v138;
            v49 = v139;
            v77 = v149;
            if (v144 + 1 < v137)
            {
              goto LABEL_23;
            }

            v76 = v142 + 1;
            if (v74 < v132)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          }

          v101 = v133;
          v95(v133, v93, v96);
          v102 = MEMORY[0x1E69E6530];
          MEMORY[0x193ABE750](&v156, v101, v130, v96, MEMORY[0x1E69E6530], v98);
          v100(v101, v96);
          v103 = v156;
          LODWORD(v140) = v157;
          v104 = v134;
          v95(v134, v141, v96);
          MEMORY[0x193ABE750](&v154, v104, v153, v96, v102, v98);
          v100(v104, v96);
          if (v140 != 1)
          {
            v77 = v149;
            v74 = v142;
            v49 = v139;
            if (v155 == 1)
            {
              v116 = v143;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51 = v138;
              v47 = v137;
              v118 = v132;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_55;
              }

LABEL_70:
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
LABEL_55:
              v120 = *(v49 + 2);
              v119 = *(v49 + 3);
              v75 = v144;
              if (v120 >= v119 >> 1)
              {
                v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v49);
                v50 = v116;
                v75 = v144;
                v49 = v126;
                v48 = v118;
              }

              else
              {
                v48 = v118;
                v50 = v116;
              }

              *(v49 + 2) = v120 + 1;
              *&v49[8 * v120 + 32] = v74++;
              v76 = v74;
            }

            else
            {
              v51 = v138;
              v47 = v137;
              v118 = v132;
              if (v103 >= v142 && (v154 < v144 || v154 - v144 >= v103 - v142))
              {
                v116 = v143;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_70;
                }

                goto LABEL_55;
              }

              v121 = v143;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
              }

              v50 = v121;
              v123 = *(v121 + 2);
              v122 = *(v121 + 3);
              v124 = v144;
              if (v123 >= v122 >> 1)
              {
                v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v121);
                v124 = v144;
                v50 = v127;
              }

              v48 = v118;
              v76 = v148;
              *(v50 + 2) = v123 + 1;
              *&v50[8 * v123 + 32] = v124;
              v75 = v124 + 1;
            }

LABEL_64:
            LODWORD(v152) = v76 < v48;
            if (v75 < v47)
            {
              goto LABEL_22;
            }

            v74 = v76;
            if (v76 < v48)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }

          v105 = v143;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v148;
          v77 = v149;
          v49 = v139;
          v74 = v142;
          if (v106)
          {
            v51 = v138;
            v47 = v137;
            v48 = v132;
            v50 = v105;
          }

          else
          {
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
            v51 = v138;
            v47 = v137;
            v48 = v132;
          }

          v108 = *(v50 + 2);
          v107 = *(v50 + 3);
          v89 = v144;
          if (v108 >= v107 >> 1)
          {
            v109 = v48;
            v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v50);
            v89 = v144;
            v50 = v110;
            v48 = v109;
            v90 = v148;
          }

          *(v50 + 2) = v108 + 1;
          *&v50[8 * v108 + 32] = v89;
        }

        v75 = v89 + 1;
        if (v75 >= v47)
        {
          v74 = v90;
        }

        if (!((v75 < v47) | v152 & 1))
        {
          goto LABEL_16;
        }
      }
    }

    v49 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v138;
LABEL_16:
    v52 = *(v49 + 2) + *(v50 + 2);
LABEL_17:
    if (v52 <= v51)
    {
      v128 = v136;
      *v136 = v50;
      v128[1] = v49;
    }

    else
    {

      v53 = v136;
      *v136 = 0;
      v53[1] = 0;
    }
  }

  else
  {
    v152 = a15;
    v149 = a13;
    v145 = a11;
    v146 = a12;
    v156 = v150;
    v157 = v148;
    v154 = v147;
    v155 = v46;
    v54 = type metadata accessor for UnsafeBufferPointer();
    swift_getWitnessTable(MEMORY[0x1E69E6050], v54);
    BidirectionalCollection<>.difference<A>(from:)();
    v55 = CollectionDifference.removals.getter();
    v150 = &v129;
    v156 = v55;
    MEMORY[0x1EEE9AC00](v55);
    v56 = v131;
    v57 = v142;
    *(&v129 - 10) = v131;
    *(&v129 - 9) = v57;
    *(&v129 - 8) = v139;
    *(&v129 - 7) = a11;
    *(&v129 - 6) = a12;
    *(&v129 - 5) = a13;
    v58 = v152;
    *(&v129 - 4) = v141;
    *(&v129 - 3) = v58;
    v59 = v143;
    *(&v129 - 2) = v44;
    *(&v129 - 1) = v59;
    type metadata accessor for CollectionDifference.Change();
    v60 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v60);
    v62 = v61;
    v148 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), (&v129 - 12), v60, MEMORY[0x1E69E6530], MEMORY[0x1E69E73E0], v61, MEMORY[0x1E69E7410], v63);

    v64 = v144;
    v65 = v140;
    v156 = CollectionDifference.insertions.getter();
    MEMORY[0x1EEE9AC00](v156);
    v66 = v142;
    *(&v129 - 10) = v56;
    *(&v129 - 9) = v66;
    v68 = v145;
    v67 = v146;
    *(&v129 - 8) = v139;
    *(&v129 - 7) = v68;
    *(&v129 - 6) = v67;
    v69 = v141;
    *(&v129 - 5) = v149;
    *(&v129 - 4) = v69;
    v70 = v151;
    *(&v129 - 3) = v152;
    *(&v129 - 2) = v70;
    *(&v129 - 1) = v143;
    v72 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), (&v129 - 12), v60, MEMORY[0x1E69E6530], MEMORY[0x1E69E73E0], v62, MEMORY[0x1E69E7410], v71);

    (*(v132 + 8))(v65, v64);
    v73 = v136;
    *v136 = v148;
    v73[1] = v72;
  }
}

Swift::Void __swiftcall AppearanceEffect.disappeared()()
{
  if (*(v0 + 40) == 1)
  {
    if (*(v0 + 8) != 1)
    {
      v1 = *(v0 + 24);
      if (v1)
      {
        v2 = *(v0 + 32);
        v3 = swift_allocObject();
        *(v3 + 16) = v1;
        *(v3 + 24) = v2;
        v4 = swift_allocObject();
        *(v4 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
        *(v4 + 24) = v3;
        v5 = 2;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);

        static Update.enqueueAction(reason:_:)(&v5, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v4);
      }
    }

    *(v0 + 40) = 0;
  }
}

uint64_t sub_18D1BBFF0()
{

  return swift_deallocObject();
}

double closure #1 in _AppearanceActionModifier.MergedBox.update()(uint64_t result)
{
  *(result + 64) = 0;
  v1 = *(result + 20);
  v2 = *(result + 24);
  *(result + 24) = v1;
  if (v2 <= 0)
  {
    if (v1 < 1)
    {
      return v7;
    }

    v3 = *(result + 32);
    if (!v3)
    {
      return v7;
    }

    v4 = 40;
  }

  else
  {
    if (v1 > 0)
    {
      return v7;
    }

    v3 = *(result + 48);
    if (!v3)
    {
      return v7;
    }

    v4 = 56;
  }

  v5 = *(result + v4);

  v3(v6);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v5);
}

uint64_t StoredLocationBase.get()@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 168);
  v6 = type metadata accessor for StoredLocationBase.Data(0, v5, a1, a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  StoredLocationBase.data.getter(&v11 - v8);
  (*(*(v5 - 8) + 16))(a3, v9, v5);
  return (*(v7 + 8))(v9, v6);
}

uint64_t implicit closure #2 in implicit closure #1 in _AppearanceActionModifier.MergedCallbacks.updateValue()(uint64_t result)
{
  v3 = *(result + 20);
  if (!v3)
  {
    if (*(result + 64))
    {
      v3 = 0;
    }

    else
    {
      v8 = v1;
      v9 = v2;
      *(result + 64) = 1;
      v7 = 17;
      v4 = result;

      static Update.enqueueAction(reason:_:)(&v7, closure #1 in _AppearanceActionModifier.MergedBox.update()partial apply, v4);

      result = v4;
      v3 = *(v4 + 20);
    }
  }

  v5 = __OFADD__(v3, 1);
  v6 = v3 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(result + 20) = v6;
  }

  return result;
}

double StoredLocationBase.set(_:transaction:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  if ((*(*v2 + 208))())
  {
    v6 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      v26 = v6;
      swift_once();
      v6 = v26;
    }

    v7 = static Log.runtimeIssuesLog;
    v8 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:_:_:)(v6, &dword_18D018000, v7, "Modifying state during view update, this will cause undefined behavior.", 71, 2, v8);
  }

  else if ((*(*v2 + 200))())
  {
    StoredLocationBase.$data.getter(&v28);
    v10 = v28;
    v11 = *(v5 + 168);
    v14 = *(type metadata accessor for StoredLocationBase.Data(0, v11, v12, v13) - 8);
    v15 = (*(v14 + 80) + 20) & ~*(v14 + 80);
    os_unfair_lock_lock(v10 + 4);
    closure #2 in StoredLocationBase.set(_:transaction:)(v10 + v15, a1, v11, &v27);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(v10 + 4);

    if (v27)
    {
      v16 = Transaction.current.getter(a2);
      LODWORD(v27) = _threadTransactionID();

      swift_weakInit();

      (*(*v2 + 216))(v16, &v27, &v28);

      v19 = type metadata accessor for StoredLocationBase.BeginUpdate(0, v11, v17, v18);
      (*(*(v19 - 8) + 8))(&v28, v19);
    }
  }

  else
  {
    StoredLocationBase.$data.getter(&v28);
    v20 = v28;
    v21 = *(v5 + 168);
    v24 = *(type metadata accessor for StoredLocationBase.Data(0, v21, v22, v23) - 8);
    v25 = (*(v24 + 80) + 20) & ~*(v24 + 80);
    os_unfair_lock_lock(v20 + 4);
    closure #1 in StoredLocationBase.set(_:transaction:)(v20 + v25, a1, v21);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(v20 + 4);
  }

  return result;
}

uint64_t StoredLocation.isUpdating.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v2;
      Counter = AGGraphGetCounter();

      return Counter != 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t StoredLocation.isValid.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 16);
    v3 = v2;

    if (v2)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void closure #2 in StoredLocationBase.set(_:transaction:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = v12;
  v21 = v11;
  v22 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in compareValues<A>(_:_:options:), v19, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v14);
  if (v23[0])
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v15 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      v16 = 0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = 0;
      if (static Semantics.forced < v15)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    (*(v8 + 16))(v10, a1, a3);
    type metadata accessor for StoredLocationBase.Data(0, a3, v17, v18);
    type metadata accessor for Array();
    Array.append(_:)();
    v16 = 1;
  }

  (*(v8 + 24))(a1, a2, a3);
LABEL_11:
  *a4 = v16;
}

void *Transaction.current.getter(void *a1)
{
  if (!_threadTransactionData())
  {
    if (!a1)
    {
      return a1;
    }

LABEL_7:

    return a1;
  }

  type metadata accessor for PropertyList.Element();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClassUnconditional();
  if (!a1)
  {
    return v2;
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (a1[3])
  {
    type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
    swift_allocObject();

    return PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v3, a1).value;
  }

  else
  {
    v4 = a1[4];
    v5 = *(*a1 + 216);

    a1 = v5(v6, v4);
  }

  return a1;
}

double StoredLocation.commit(transaction:id:mutation:)(unint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = *a2;
  if (swift_weakLoadStrong())
  {
    v14 = v8;
    v13 = 1;
    v12 = type metadata accessor for StoredLocationBase.BeginUpdate(0, *(v7 + 232), v9, v10);
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, &v14, a3, &v13, 1, v12, &protocol witness table for StoredLocationBase<A>.BeginUpdate);
  }

  return result;
}

uint64_t GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, _DWORD *a2, uint64_t a3, char *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v63 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = *a2;
  v15 = *a4;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v52 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v8 + 16))
  {
    goto LABEL_48;
  }

  v16 = (v15 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v8 + 168) &= a5 & 1;
  v17 = swift_beginAccess();
  v18 = *(v8 + 144);
  v19 = *(v18 + 2);
  if (v19)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v8 + 144) = v18;
    }

    if (v19 > *(v18 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v53[0]) = v14;
          AGGraphAddTraceEvent();
        }

        *(v8 + 144) = v18;
        swift_endAccess();
        if (v16)
        {
LABEL_46:
          v47 = *(v8 + 144);
          v48 = *(v47 + 16);
          if (v48)
          {
            v38 = *(v47 + 24 * v48 + 20);
            goto LABEL_49;
          }

LABEL_48:
          v38 = 0;
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v18 + 2))
        {
          specialized Array._customRemoveLast()(&v54);
          LODWORD(a1) = v55;
          a6 = v56;
          a7 = v54;
          if (v56)
          {
            v14 = HIDWORD(v55);
          }

          else
          {
            outlined consume of AsyncTransaction?(v54, v55, 0);
            specialized Array.remove(at:)(*(*(v8 + 144) + 16) - 1, &v54);
            a7 = v54;
            LODWORD(a1) = v55;
            LODWORD(v14) = HIDWORD(v55);
            a6 = v56;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          v19 = *(v8 + 144);

          v43 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 144) = v19;
          if (v43)
          {
LABEL_43:
            v45 = *(v19 + 2);
            v44 = *(v19 + 3);
            if (v45 >= v44 >> 1)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v19);
            }

            *(v19 + 2) = v45 + 1;
            v46 = &v19[24 * v45];
            *(v46 + 4) = a7;
            *(v46 + 10) = a1;
            *(v46 + 11) = v14;
            *(v46 + 6) = a6;
            *(v8 + 144) = v19;
            swift_endAccess();

            goto LABEL_46;
          }

LABEL_56:
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          *(v8 + 144) = v19;
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v21 = &v18[24 * v19];
    if (*(v21 + 4) == v14)
    {
      v22 = *(v21 + 1);
      if (v22)
      {
        if (a1)
        {
          v53[0] = MEMORY[0x1E69E7CC0];

          v51 = compareLists(_:_:ignoredTypes:)(v22, a1, v53);
          v50[1] = v53[0];

          if (v51)
          {
LABEL_15:
            v19 = v21 + 8;
            AsyncTransaction.append<A>(_:)(a3, a6, a7);
            LODWORD(v14) = *(v21 + 5);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v8 + 144) = v18;
    swift_endAccess();
    if (!v16)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v8 + 192))(v17))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 32))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  v57 = a6;
  v58 = a7;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(*(a6 - 8) + 16))(v26, a3, a6);
  v59 = a1;
  v60 = v14;
  swift_beginAccess();
  v27 = (static AsyncTransaction.nextTraceID >> 1) + 1;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  v61 = v27;
  outlined init with copy of AnyTrackedValue(&v54, v53);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v62 = v28;
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), (v30 + 1), 1, v28);
    v62 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(&v54);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v32);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v30, v34, &v62, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v36 = v59;
  v37 = v60;
  v38 = v61;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v54) = v38;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v30 = *(v8 + 144);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v30;
    if (v39)
    {
      goto LABEL_38;
    }
  }

  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  *(v8 + 144) = v30;
LABEL_38:
  v41 = *(v30 + 2);
  v40 = *(v30 + 3);
  if (v41 >= v40 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v30);
  }

  *(v30 + 2) = v41 + 1;
  v42 = &v30[24 * v41];
  *(v42 + 4) = v36;
  *(v42 + 10) = v37;
  *(v42 + 11) = v38;
  *(v42 + 6) = v28;
  *(v8 + 144) = v30;
  swift_endAccess();

LABEL_49:
  _MovableLockUnlock(v52);
  return v38;
}

uint64_t StoredLocationBase.beginUpdate()(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - v4;
  swift_beginAccess();
  v6 = v1[2];
  type metadata accessor for StoredLocationBase.Data(0, v2, v7, v8);

  os_unfair_lock_lock(v6 + 4);
  v9 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6348], v9);
  RangeReplaceableCollection.removeFirst()();
  (*(v3 + 8))(v5, v2);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v6 + 4);

  return (*(*v1 + 224))(v10);
}

double StoredLocationBase.BeginUpdate.apply()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    StoredLocationBase.beginUpdate()(Strong);
  }

  return result;
}

uint64_t StoredLocation.notifyObservers()()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {

    return AGGraphInvalidateValue();
  }

  return result;
}

uint64_t View.background<A>(_:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = a6;
  v23[1] = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _BackgroundModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  (*(v10 + 16))(v12, a1, a5, v18);
  (*(v10 + 32))(v20, v12, a5);
  v21 = &v20[*(v16 + 36)];
  *v21 = a2;
  *(v21 + 1) = a3;
  View.modifier<A>(_:)();
  return (*(v17 + 8))(v20, v16);
}

uint64_t partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)()
{
  return specialized ViewLayoutEngine.update(layout:context:children:)(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

{
  return specialized ViewLayoutEngine.update(layout:context:children:)(**(v0 + 16), *(*(v0 + 16) + 8), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t specialized ViewLayoutEngine.update(layout:context:children:)(unint64_t a1, Swift::UInt32 a2, int a3, uint64_t a4)
{
  v5 = v4;

  *v5 = a3;
  *(v5 + 8) = a4;
  *v12 = a2;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(a4) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v5 + 16) = a4;
  v11[0] = 1;
  v12[0] = 1;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 72) = 1;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 1;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 1;

  v9 = MEMORY[0x1E69E7CC0];
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  *(v5 + 224) = v9;
  *(v5 + 248) = 0;
  *(v5 + 249) = *v11;
  *(v5 + 252) = *&v11[3];
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 273) = *v12;
  *(v5 + 276) = *&v12[3];
  *(v5 + 296) = 0;
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;

  *(v5 + 304) = 0;
  return result;
}

uint64_t partial apply for closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  v10 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v10;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v11 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v11;
  return v9(a1, v13, a3, a4, a5, a6, a7, a8);
}

void *static IDView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  v16 = a6;
  v53 = type metadata accessor for IDPhase(0, a4, a6, v17);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v49 - v18;
  v58 = *a1;
  v19 = *(a2 + 48);
  *v93 = *(a2 + 32);
  *&v93[16] = v19;
  *&v93[32] = *(a2 + 64);
  *&v93[48] = *(a2 + 80);
  v20 = *(a2 + 16);
  v91 = *a2;
  v92 = v20;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v21 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v21)
    {
      goto LABEL_7;
    }

LABEL_10:
    *&v83 = a3;
    *(&v83 + 1) = a4;
    *&v84 = v57;
    *(&v84 + 1) = v16;
    v24 = type metadata accessor for IDView(0, &v83);
    LODWORD(v81[0]) = v58;
    v85[0] = *v93;
    v85[1] = *&v93[16];
    v85[2] = *&v93[32];
    LODWORD(v85[3]) = *&v93[48];
    v83 = v91;
    v84 = v92;
    return static View.makeImplicitRoot(view:inputs:)(v81, &v83, v24, &protocol witness table for IDView<A, B>, a7);
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

LABEL_7:
  v52 = a7;
  v90 = v92;
  v56 = HIDWORD(v92);
  v50 = *v93;
  v86 = *&v93[4];
  v87 = *&v93[20];
  v88 = *&v93[36];
  v89 = v91;
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  v51 = a3;
  outlined init with copy of _ViewInputs(&v91, &v83);
  if (v23)
  {
    closure #1 in static IDView._makeView(view:inputs:)(1, a3, a4, v57, v16);
  }

  v26 = DWORD2(v92);
  v49 = *v93;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  (*(v22 + 56))(v15, 1, 1, a4);
  v28 = v54;
  v29 = IDPhase.init(id:phase:lastID:delta:)(OffsetAttribute2, v26, v15, 0, a4, v16, v54);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = v53;
  *(&v49 - 2) = v53;
  swift_getWitnessTable(protocol conformance descriptor for IDPhase<A>, v31, v30);
  *(&v49 - 1) = v32;
  type metadata accessor for Attribute<_GraphInputs.Phase>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_16, (&v49 - 8), v31, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
  v35 = v55[1](v28, v31);
  v55 = &v49;
  v36 = v83;
  if ((v49 & 0x40) != 0)
  {
    v37 = v50;
  }

  else
  {
    v37 = v49 | 0x40;
  }

  MEMORY[0x1EEE9AC00](v35);
  v38 = v16;
  v39 = v51;
  *(&v49 - 4) = v51;
  *(&v49 - 3) = a4;
  v40 = v57;
  *(&v49 - 2) = v57;
  *(&v49 - 1) = v38;
  LODWORD(v81[0]) = v58;
  *&v83 = v39;
  *(&v83 + 1) = a4;
  *&v84 = v40;
  *(&v84 + 1) = v38;
  v41 = type metadata accessor for IDView(255, &v83);
  type metadata accessor for _GraphValue(0, v41, v42, v43);
  _GraphValue.subscript.getter(partial apply for closure #2 in static IDView._makeView(view:inputs:), v39, &v83);
  v58 = v83;
  v83 = v89;
  *&v84 = v90;
  LODWORD(v55) = v36;
  *(&v84 + 1) = __PAIR64__(v56, v36);
  LODWORD(v54) = v37;
  LODWORD(v85[0]) = v37;
  *(v85 + 4) = v86;
  *(&v85[1] + 4) = v87;
  *(&v85[2] + 4) = v88;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v45 = v40;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v75 = v85[0];
  v76 = v85[1];
  v77 = v85[2];
  v78 = v85[3];
  v73 = v83;
  v74 = v84;
  v46 = v85[0];
  LODWORD(v75) = 0;
  LODWORD(v59) = v58;
  v79[0] = v83;
  v79[1] = v84;
  v80 = v85[3];
  v79[3] = v85[1];
  v79[4] = v85[2];
  v79[2] = v75;
  v69 = v75;
  v70 = v85[1];
  v71 = v85[2];
  v72 = v85[3];
  v67 = v83;
  v68 = v84;
  v47 = *(v45 + 24);
  outlined init with copy of _ViewInputs(&v83, v81);
  outlined init with copy of _ViewInputs(v79, v81);
  v48 = v52;
  v47(&v59, &v67, v39, v45);
  v81[2] = v69;
  v81[3] = v70;
  v81[4] = v71;
  v82 = v72;
  v81[0] = v67;
  v81[1] = v68;
  outlined destroy of _ViewInputs(v81);
  LODWORD(v75) = v46;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v48, &v73);
    AGSubgraphEndTreeElement();
  }

  v59 = v89;
  v60 = v90;
  v61 = v55;
  v62 = v56;
  v63 = v54;
  v64 = v86;
  v65 = v87;
  v66 = v88;
  outlined destroy of _ViewInputs(&v59);
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v67 = v73;
  v68 = v74;
  return outlined destroy of _ViewInputs(&v67);
}

uint64_t type metadata completion function for IDPhase(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _ValueActionModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for _ValueActionModifier(255, a5, a6, a4);
  swift_getWitnessTable(protocol conformance descriptor for _ValueActionModifier<A>, v8);
  v10 = v9;
  v12 = type metadata accessor for ValueActionDispatcher(0, v8, v9, v11);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *a1;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v17 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v27 = v16;
      return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(&v27, a2, v25, v26, v8, &protocol witness table for _ValueActionModifier<A>);
    }
  }

  else if (static Semantics.forced < v17)
  {
    goto LABEL_7;
  }

  ValueActionDispatcher.init(modifier:phase:)(v16, *(a2 + 24), v8, v10, v15);
  v20 = MEMORY[0x1EEE9AC00](v19);
  *(&v25 - 2) = v12;
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher<A>, v12, v20, v25, v26);
  *(&v25 - 1) = v21;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, (&v25 - 4), v12, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v13 + 8))(v15, v12);
  v24 = AGGraphSetFlags();
  return (v25)(v24, a2);
}

uint64_t ObservableLocation.init(initialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = specialized ObservableLocation.init(initialValue:)(a1, a2, a3, a4);
  (*(*(*(v6 + 232) - 8) + 8))(a1);
  return v7;
}

uint64_t specialized ObservableLocation.init(initialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ObservableLocation.Observer(0, *(*v4 + 232), a3, a4);
  v4[4] = Array.init()();

  return specialized StoredLocationBase.init(initialValue:)(a1);
}

double ObservableLocation.addObserver(host:signal:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 232);

  swift_weakInit();

  swift_beginAccess();
  type metadata accessor for ObservableLocation.Observer(255, v3, v4, v5);
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  return result;
}

double static _AnchorTransformModifier.makeView(modifier:inputs:animated:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(uint64_t *__return_ptr, int *, __int128 *)@<X3>, uint64_t a5@<X5>, ValueMetadata *a6@<X6>, uint64_t a7@<X7>, double *a8@<X8>)
{
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v35 = a3;
  v43 = a8;
  v36 = *a1;
  v9 = *(a2 + 16);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v13 = *(a2 + 56);
  v12 = *(a2 + 60);
  v15 = *(a2 + 64);
  v14 = *(a2 + 68);
  v16 = *(a2 + 72);
  v17 = *(a2 + 76);
  v19 = (a2 + 24);
  v18 = *(a2 + 24);
  v44 = *a2;
  v45 = v9;
  v46 = v18;
  v20 = *(a2 + 36);
  v47 = *(a2 + 32);
  v48 = v20;
  v49 = v11;
  v50 = v10;
  v42 = v10;
  v40 = v13;
  v41 = v12;
  v51 = v13;
  v52 = v12;
  v53 = v15;
  v54 = v14;
  v55 = v16;
  v56 = v17;
  a4(&v57, a1, &v44);
  if ((v20 & 0x20) != 0)
  {
    if (v35)
    {
      v44 = *a2;
      v21 = *v19;
      v45 = v9;
      v46 = v21;
      v47 = *(v19 + 2);
      v48 = v20;
      v49 = v11;
      v50 = v42;
      v51 = v40;
      v52 = v41;
      v53 = v15;
      v54 = v14;
      v55 = v16;
      v56 = v17;
      swift_beginAccess();
      v35 = CachedEnvironment.animatedPosition(for:)(&v44);
      v44 = *a2;
      v22 = *v19;
      v45 = v9;
      v46 = v22;
      LODWORD(v22) = *(v19 + 2);
      v23 = v42;
      v47 = v22;
      v48 = v20;
      v24 = v40;
      v25 = v41;
      v49 = v11;
      v50 = v42;
      v51 = v40;
      v52 = v41;
      v53 = v15;
      v54 = v14;
      v55 = v16;
      v56 = v17;
      v26 = CachedEnvironment.animatedCGSize(for:)(&v44);
      OffsetAttribute2 = swift_endAccess();
      v15 = v35;
    }

    else
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v26 = OffsetAttribute2;
      v23 = v42;
      v24 = v40;
      v25 = v41;
    }

    *&v44 = v23;
    DWORD2(v44) = v24;
    MEMORY[0x1EEE9AC00](OffsetAttribute2);
    v30[2] = v37;
    v30[3] = v38;
    v30[4] = v39;
    v31 = v36;
    v32 = v15;
    v33 = v26;
    v34 = v25;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(&v44, v38, partial apply for implicit closure #1 in static _AnchorTransformModifier.makeView(modifier:inputs:animated:body:), v30, v38, v39);
  }

  v28 = v43;
  *v43 = v57;
  result = v58;
  v28[1] = v58;
  return result;
}

uint64_t implicit closure #1 in static _AnchorTransformModifier.makeView(modifier:inputs:animated:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  v12[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v15 = type metadata accessor for AnchorTransform(0, a3, a4, a5);
  swift_getWitnessTable(protocol conformance descriptor for AnchorTransform<A, B>, v15);
  v16 = v8;
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in Attribute.init<A>(_:), v13, v15, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return AssociatedTypeWitness;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnchorTransform<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnchorTransform<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

void *static ResettableLazyLayoutRoot._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v65 = a2[2];
  v66 = v9;
  v67 = a2[4];
  v68 = *(a2 + 20);
  v10 = a2[1];
  v63 = *a2;
  v64 = v10;
  v33 = a3;
  v34 = a4;
  LODWORD(v43) = v8;
  v11 = type metadata accessor for ResettableLazyLayoutRoot(255, a3, a4, a4);
  type metadata accessor for _GraphValue(0, v11, v12, v13);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ResettableLazyLayoutRoot._makeView(view:inputs:), a3, &v35);
  v14 = v35;
  swift_beginAccess();
  if ((static ResettableLazyLayoutsFeature.isEnabledForTesting & 1) != 0 || (v15 = getenv("XCODE_RUNNING_FOR_PREVIEWS")) != 0 && atoi(v15))
  {
    v45 = v65;
    v46 = v66;
    v47 = v67;
    LODWORD(v48) = v68;
    v43 = v63;
    v44 = v64;
    _ViewInputs.makeIndirectOutputs()(&v35);
    v16 = v35;
    v18 = DWORD2(v35);
    v17 = HIDWORD(v35);
    v45 = v65;
    v46 = v66;
    v47 = v67;
    LODWORD(v48) = v68;
    v43 = v63;
    v44 = v64;
    v57 = v35;
    outlined init with copy of _ViewInputs(&v63, &v35);

    v19 = ResettableContainer.init(content:inputs:outputs:)(v14, &v43, &v57, &v35);
    MEMORY[0x1EEE9AC00](v19);
    v21 = type metadata accessor for ResettableContainer(0, a3, a4, v20);
    v31[2] = v21;
    swift_getWitnessTable(protocol conformance descriptor for ResettableContainer<A>, v21);
    v31[3] = v22;
    type metadata accessor for Attribute<AGSubgraphRef>(0, &lazy cache variable for type metadata for Attribute<AGSubgraphRef>, type metadata accessor for AGSubgraphRef, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_14, v31, v21, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    (*(*(v21 - 8) + 8))(&v43, v21);
    result = AGGraphSetFlags();
    v26 = *(v16 + 16);
    if (v26)
    {
      v27 = v16 + 48;
      do
      {
        v27 += 24;
        result = AGGraphSetIndirectDependency();
        --v26;
      }

      while (v26);
    }

    if (v17 != *MEMORY[0x1E698D3F8])
    {
      result = AGGraphSetIndirectDependency();
    }

    *a5 = v16;
    *(a5 + 8) = v18;
    *(a5 + 12) = v17;
  }

  else
  {
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v59 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v57 = v63;
    v58 = v64;
    v29 = v65;
    LODWORD(v59) = 0;
    v32[0] = v14;
    v35 = v63;
    v36 = v64;
    LODWORD(v40) = v68;
    v38 = v66;
    v39 = v67;
    v37 = v59;
    v53 = v59;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    v30 = *(a4 + 24);
    outlined init with copy of _ViewInputs(&v63, &v43);
    outlined init with copy of _ViewInputs(&v35, &v43);
    v30(v32, &v51, a3, a4);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    LODWORD(v48) = v56;
    v43 = v51;
    v44 = v52;
    outlined destroy of _ViewInputs(&v43);
    LODWORD(v59) = v29;
    if (ShouldRecordTree)
    {
      specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v57);
      AGSubgraphEndTreeElement();
    }

    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    return outlined destroy of _ViewInputs(&v51);
  }

  return result;
}

void _LayoutTraits.idealSize.setter(double a1, double a2)
{
  v5 = *v2;
  v6 = *(v2 + 2);
  _LayoutTraits.Dimension._checkInvariant()();
  *v2 = v5;
  v2[1] = a1;
  *(v2 + 2) = v6;
  v7 = *(v2 + 3);
  v8 = *(v2 + 5);
  _LayoutTraits.Dimension._checkInvariant()();
  *(v2 + 3) = v7;
  v2[4] = a2;
  *(v2 + 5) = v8;
}

uint64_t specialized static SectionAccumulator.processUnsectionedContent(list:contentSubgraph:accumulationStrategy:)(void *a1, void *a2, char *a3)
{
  v5 = *a3;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 32))(&v16, v6, v7);
  v8 = v16;
  if (v16)
  {
    v9 = specialized Set.contains(_:)(&type metadata for IsSectionedTraitKey, v16);

    if (v9)
    {
      return 0;
    }

    else
    {
      v10 = a1[3];
      v11 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v10);
      v12 = (*(v11 + 40))(v10, v11);
      if (v12 && (v13 = (*(*v12 + 88))(v12), , !v13))
      {
        return MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.Item>, &type metadata for SectionAccumulator.Item);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_18DDA6EB0;
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        v14 = static Update._lock;
        _MovableLockLock(static Update._lock);
        specialized static Update.begin()();
        closure #1 in static SectionAccumulator.Item.implicitSentinel(_:contentSubgraph:accumulationStrategy:)(a1, a2, v5, v8 + 32);
        static Update.end()();
        _MovableLockUnlock(v14);
      }
    }
  }

  return v8;
}

uint64_t ForEachState.traitKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  protocol witness for Collection.endIndex.getter in conformance CollectionOfTwo<A>(&v6);
  ForEachState.forEachItem(from:style:do:)(&v7, &v6, partial apply for closure #1 in ForEachState.traitKeys.getter, &v5);
  if (v8 && (v2 = v9, (v9 & 1) == 0))
  {
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t closure #1 in View.resettableLazyLayoutRoot()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.CorePlatfromProvidersDefinitionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.CorePlatfromProvidersDefinitionKey.defaultValue;
  }

  return *v3;
}

void type metadata accessor for MutableBox<Int?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MutableBox<Int?>)
  {
    type metadata accessor for _ViewListOutputs?(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for MutableBox(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for MutableBox<Int?>);
    }
  }
}

uint64_t View.staticIf<A, B>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  closure #1 in View.staticIf<A, B>(_:then:)(a2, a3, v9, a4, a5, a6);
  type metadata accessor for StaticIf(0, a5, a6, a4);
  return closure #2 in View.staticIf<A, B>(_:then:)(v9, a4);
}

void closure #1 in ForEachState.traitKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), &v16);
  if (v17)
  {

    if (*(a5 + 172) == 1)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      InputValue = AGGraphGetInputValue();
      outlined init with copy of AnyTrackedValue(InputValue, v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v9 + 32))(&v11, v8, v9);
      v10 = v12;
      *a4 = v11;
      *(a4 + 8) = v10;

      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CD0];
    *(a4 + 8) = 0;

    outlined destroy of _ViewListOutputs.Views(&v16);
  }
}

uint64_t closure #1 in View.staticIf<A, B>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v13, a6);
}

uint64_t closure #2 in View.staticIf<A, B>(_:then:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

void specialized implicit closure #1 in _GraphInputs.isEnabled.getter(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v3);
  }

  else
  {

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v5);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      v4 = 1;
    }
  }

  *a2 = v4 & 1;
}

uint64_t one-time initialization function for isEnabled(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isEnabled = result;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollPhaseStateV033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollPhaseStateV033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollPhaseStateKey)
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

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE010ScrollableV033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE010ScrollableV033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ScrollableKey)
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

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollPhaseStateF033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt2g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPhaseStateKey);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollPhaseStateV033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt0B5(a1, v5);
  if (v4)
  {
  }

  *a2 = v4;
}

void *static ScrollPhaseStateConfigurationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v4;
  v6 = *(a2 + 48);
  v30 = *(a2 + 64);
  v7 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v7;
  v23 = v28;
  v24 = v6;
  v25 = *(a2 + 64);
  v31 = *(a2 + 80);
  v26 = *(a2 + 80);
  v21 = v27[0];
  v22 = v5;
  LOBYTE(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  outlined init with copy of _ViewInputs(v27, v38);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalV0VyAA0jkL0VGTt0g5(v8);
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v32 = v21;
  v33 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v9 = outlined init with copy of _ViewInputs(&v32, v38);
  a3(v9, &v15);
  v38[2] = v17;
  v38[3] = v18;
  v38[4] = v19;
  v39 = v20;
  v38[0] = v15;
  v38[1] = v16;
  outlined destroy of _ViewInputs(v38);
  v10 = v29;
  *&v15 = v29;
  v11 = PreferenceKeys._index(of:)(&type metadata for ScrollPhasePreferenceKey);
  v12 = *(v10 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    if (*(v10 + 16 * v11 + 32) == &type metadata for ScrollPhasePreferenceKey)
    {
      LODWORD(v15) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for _ContiguousArrayStorage<ScrollPhaseState>(0, &lazy cache variable for type metadata for [ScrollPhaseState], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type ScrollPhaseProvider and conformance ScrollPhaseProvider();
      v13 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v15) = 0;
      PreferencesOutputs.subscript.setter(v13, &type metadata for ScrollPhasePreferenceKey, &protocol witness table for ScrollPhasePreferenceKey);
    }
  }

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return outlined destroy of _ViewInputs(&v15);
}

unint64_t _GraphInputs.scrollPhaseState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  if ((result & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return result;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollableKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE010ScrollableV033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollableKey>, &type metadata for _GraphInputs.ScrollableKey, &protocol witness table for _GraphInputs.ScrollableKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollableKey, 0, v6);
  }
}

double _ViewInputs.scrollable.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v1, a1);

  return result;
}

uint64_t outlined destroy of AnyTrackedValue?(uint64_t a1)
{
  type metadata accessor for AnyTrackedValue?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsVisionEnabledKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsVisionEnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsVisionEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsVisionEnabledKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }
}

double PropertyList.Tracker.invalidateValue<A>(for:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);

  os_unfair_lock_lock((v8 + 16));
  v9 = *(v8 + 24);
  if (a2)
  {
    if (v9 != *(a2 + 64))
    {
      goto LABEL_22;
    }

    if (!a3)
    {
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = a3 == 0;
    }

    if (v11)
    {
      goto LABEL_22;
    }
  }

  if (v9 == *(a3 + 64))
  {
    goto LABEL_22;
  }

  v10 = 0;
LABEL_12:
  specialized Dictionary.removeValue(forKey:)(a4, &v18);
  if (v19)
  {
    outlined init with take of AnyTrackedValue(&v18, v20);
    outlined init with copy of AnyTrackedValue(v20, &v18);
    v12 = *(v8 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 48) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      *(v8 + 48) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      *(v8 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    v16 = *(v8 + 48);
    *(v16 + 16) = v15 + 1;
    outlined init with take of AnyTrackedValue(&v18, v16 + 40 * v15 + 32);
    *(v8 + 48) = v16;
  }

  else
  {
    outlined destroy of AnyTrackedValue?(&v18);
  }

  move(_:to:)((v8 + 40), (v8 + 48));
  if (v10)
  {
    *(v8 + 24) = 0;
  }

  else
  {
    *(v8 + 24) = *(a3 + 64);
  }

LABEL_22:
  os_unfair_lock_unlock((v8 + 16));

  return result;
}

uint64_t Transaction.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransactionPropertyKey(0, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v5);

  return PropertyList.subscript.getter(v5, a2, v5, v6);
}

uint64_t View.containerContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContainerContextWritingModifier(0, a3, a5, a4);

  return View.modifier<A>(_:)();
}

double get_witness_table_7SwiftUI4ViewRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_D15WritingModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void _ViewList_Group.traitKeys.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = *v1;
  v15 = MEMORY[0x1E69E7CD0];
  v16 = 0;
  v6 = *(v5 + 16);
  if (v6)
  {
    goto LABEL_3;
  }

LABEL_2:
  v4 = v6;
  memset(v12, 0, 44);
  while (1)
  {
    *&v14[12] = *(&v12[1] + 12);
    v13 = v12[0];
    *v14 = v12[1];
    if (!*(&v12[1] + 1))
    {
      *a1 = v15;
      *(a1 + 8) = v3 & 1;
      return;
    }

    outlined init with take of AnyTrackedValue(&v13, v12);
    v7 = *(&v12[1] + 1);
    v8 = *&v12[2];
    __swift_project_boxed_opaque_existential_1(v12, *(&v12[1] + 1));
    (*(v8 + 32))(&v10, v7, v8);
    v9 = v11;
    if (!v10)
    {

      *a1 = 0;
      *(a1 + 8) = v9;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return;
    }

    specialized Set.formUnion<A>(_:)(v10);
    v3 |= v9;
    v16 = v3 & 1;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v4 == v6)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v4 >= *(v5 + 16))
    {
      goto LABEL_13;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v5 + 32 + 48 * v4++, v12, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t DynamicViewList.WrappedList.traitKeys.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 32))(&v10, v5, v6);
  result = (*(*(a1 + 24) + 40))();
  v8 = v10;
  if (result)
  {
    if (v10)
    {

      v9 = 1;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v9 = v11;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  return result;
}

double protocol witness for ViewList.traitKeys.getter in conformance BaseViewList@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;

  return result;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      outlined copy of AttributedString.AnyAttribute(*v10, v12);
      specialized Set._Variant.insert(_:)(v13, v11, v12);
      outlined consume of AttributedString.AnyAttribute(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      specialized Set._Variant.insert(_:)(v11, *v10, v10[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      specialized Set._Variant.insert(_:)(v11, *v10, v10[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t protocol witness for ViewList.traitKeys.getter in conformance ModifiedViewList()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

void one-time initialization function for search()
{
  v0 = MEMORY[0x193ABEC20](0x63696C7070414955, 0xED00006E6F697461);
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = [objc_opt_self() bundleForClass_];
    type metadata accessor for LocalizedTextStorage();
    v3 = swift_allocObject();
    *(v3 + 16) = 0x686372616553;
    *(v3 + 24) = 0xE600000000000000;
    *(v3 + 32) = 0;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 40) = MEMORY[0x1E69E7CC0];
    *(v3 + 48) = xmmword_18DE1F410;
    *(v3 + 64) = v2;
    static Text.System.search = v3;
    unk_1EAB0CDE0 = 0;
    byte_1EAB0CDE8 = 1;
    qword_1EAB0CDF0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Text.System.search.getter()
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v0 = static Text.System.search;
  outlined copy of Text.Storage(static Text.System.search, unk_1EAB0CDE0, byte_1EAB0CDE8);

  return v0;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrollPhaseStateConfigurationModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LazyContainerModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v23 = *(a2 + 32);
  v24 = v4;
  v6 = *(a2 + 48);
  v25 = *(a2 + 64);
  v7 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v7;
  v18 = v23;
  v19 = v6;
  v20 = *(a2 + 64);
  v26 = *(a2 + 80);
  v21 = *(a2 + 80);
  v16 = v22[0];
  v17 = v5;
  outlined init with copy of _ViewInputs(v22, v31);
  _ViewInputs.configureForLazyContainer()();
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v20;
  v28 = v21;
  v27[0] = v16;
  v27[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v8, &v10);
  v29[2] = v12;
  v29[3] = v13;
  v29[4] = v14;
  v30 = v15;
  v29[0] = v10;
  v29[1] = v11;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v32 = v21;
  v31[0] = v16;
  v31[1] = v17;
  return outlined destroy of _ViewInputs(v31);
}

Swift::Void __swiftcall _ViewInputs.configureForLazyContainer()()
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17IsInLazyContainerV_Tt2g5(v0, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(v0, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(*v0);
  static CorePlatformProvidersDefinition.providers.getter(v1);
  if (v2)
  {
    (*(v3 + 8))();
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17IsInLazyContainerV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17IsInLazyContainerV_Tt0B5(*a1, (1 << (&type metadata for IsInLazyContainer >> 4)) | (1 << (&type metadata for IsInLazyContainer >> 10)) | (1 << (&type metadata for IsInLazyContainer >> 16)));
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v5);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetScrollInputsModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t static ContainerContextWritingModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = outlined init with copy of _ViewListInputs(a2, v11);
  v12 = a5;
  v13 = a6;
  a3(v9, v11);
  return outlined destroy of _ViewListInputs(v11);
}

double Binding.zip<A>(with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v37 = a4;
  v9 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v34 - v12;
  _ViewInputs.base.modify();
  v35 = v15;
  v36 = v14;
  v16 = *(a2 + 32);
  v19 = *(type metadata accessor for Binding(0, a3, v17, v18) + 32);
  v20 = *(v11 + 56);
  (*(*(v9 - 8) + 16))(v13, &v5[v16], v9);
  (*(*(a3 - 8) + 16))(&v13[v20], a1 + v19, a3);
  v22 = type metadata accessor for ZipLocation(255, v9, a3, v21);
  swift_getWitnessTable(protocol conformance descriptor for ZipLocation<A, B>, v22);
  type metadata accessor for LocationBox(0, v22, v23, v24);
  v38[0] = v36;
  v38[1] = v35;

  v25 = LocationBox.__allocating_init(_:)(v38);
  v26 = *v25;
  v27 = v37;
  *v37 = *v5;
  *(v27 + 1) = v25;
  v28 = v27;
  v29 = *(v26 + 88);
  v32 = type metadata accessor for Binding(0, v29, v30, v31);
  (*(*(v29 - 8) + 32))(&v28[*(v32 + 32)], v13, v29);

  return result;
}

uint64_t ZipLocation.wasRead.getter(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))())
  {
    return 1;
  }

  else
  {
    return (*(*a2 + 96))() & 1;
  }
}

uint64_t protocol witness for Location.update() in conformance ZipLocation<A, B>(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = a1 + *(swift_getTupleTypeMetadata2() + 48);

  return ZipLocation.update()(a1, v8, v5, v4, v6, v7);
}

void *initializeWithCopy for StateOrBinding(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (((v7 + 16) & ~v7) + v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v8 = ((v7 + 16) & ~v7) + v6;
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  if (v8 <= 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 1)
  {
    v14 = ~v7;
    v16 = *a2;
    v15 = (a2 + 15);
    *a1 = v16;
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *(v15 & 0xFFFFFFFFFFFFFFF8);
    v18 = v17 + v7 + 8;
    v19 = (v15 & 0xFFFFFFFFFFFFFFF8) + v7 + 8;
    v20 = *(v5 + 16);

    v20(v18 & v14, v19 & v14, v4);
    v21 = 1;
  }

  else
  {
    (*(v5 + 16))(a1);
    *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v6 + 7] & 0xFFFFFFFFFFFFFFF8);

    v21 = 0;
  }

  *(a1 + v8) = v21;
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LazyContainerModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double _ViewInputs.implicitRootType.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t one-time initialization function for v4_4()
{
  result = swiftUI_v4_4_os_versions();
  static Semantics.v4_4 = HIDWORD(result);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LazyContainerContentModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double static CoreViewRepresentable.dynamicProperties.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

{
  return static CoreViewRepresentable.dynamicProperties.getter(a1, a2);
}

double destroy for StateOrBinding(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = *(v4 + 80);
  if (((v7 + 16) & ~v7) + v5 > v6)
  {
    v6 = ((v7 + 16) & ~v7) + v5;
  }

  v8 = a1[v6];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v6 <= 3)
    {
      v10 = v6;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_17;
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

    v12 = (v11 | (v9 << (8 * v6))) + 2;
    v8 = v11 + 2;
    if (v6 < 4)
    {
      v8 = v12;
    }
  }

LABEL_17:
  if (v8 == 1)
  {
    v15 = *(*(a2 + 16) - 8);

    v13 = *(v15 + 8);

    v13((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v3);
  }

  else
  {
    (*(v4 + 8))(a1, v3);
  }

  return result;
}

double ZipLocation.wasRead.setter(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(**v1 + 104);

  v4(a1);
  (*(*v3 + 104))(a1);

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityEnabledKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityEnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityEnabledKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t ZipLocation.update()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v42 = a1;
  v38 = a5;
  v43 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = swift_getTupleTypeMetadata2();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  v24 = *(v23 + 48);
  v25 = (*(*a3 + 144))(&v36 - v21, v20);
  v22[v24] = v25 & 1;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = (*(*a4 + 144))(v14);
  v28 = v39;
  v14[v26] = v27 & 1;
  (*(v16 + 32))(v18, v22, v15);
  v29 = v18;
  v30 = v41;
  (*(*(v38 - 8) + 32))(v42, v29);
  v31 = v40;
  (*(v28 + 16))(v40, v14, TupleTypeMetadata2);
  v32 = *(v30 - 8);
  (*(v32 + 32))(v43, v31, v30);
  if (v25)
  {
    (*(v28 + 8))(v14, TupleTypeMetadata2);
    return 1;
  }

  else
  {
    v34 = v37;
    (*(v28 + 32))(v37, v14, TupleTypeMetadata2);
    v33 = v34[*(TupleTypeMetadata2 + 48)];
    (*(v32 + 8))(v34, v30);
  }

  return v33;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018TextRepresentationV0018_03CAEBF34B5290A85J13CA97765182271LLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformTextRepresentable.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.TextRepresentationKey>, &type metadata for _GraphInputs.TextRepresentationKey, &protocol witness table for _GraphInputs.TextRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.TextRepresentationKey, 0, v7);
  }
}

double _ViewInputs.requestedTextRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v2, a1, a2);

  return result;
}

double _ViewInputs.requestedImageRepresentation.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t *))
{

  a3(v3, a1, a2, &v8);

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ImageRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019ImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformImageRepresentable.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ImageRepresentationKey>, &type metadata for _GraphInputs.ImageRepresentationKey, &protocol witness table for _GraphInputs.ImageRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ImageRepresentationKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE024NamedImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.NamedImageRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE024NamedImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformNamedImageRepresentable.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.NamedImageRepresentationKey>, &type metadata for _GraphInputs.NamedImageRepresentationKey, &protocol witness table for _GraphInputs.NamedImageRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.NamedImageRepresentationKey, 0, v7);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.SpacerRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020SpacerRepresentationV033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt0B5(v6, v9) || (type metadata accessor for PlatformSpacerRepresentable.Type?(0), !AGCompareValues()))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.SpacerRepresentationKey>, &type metadata for _GraphInputs.SpacerRepresentationKey, &protocol witness table for _GraphInputs.SpacerRepresentationKey, type metadata accessor for TypedElement);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.SpacerRepresentationKey, 0, v7);
  }
}

double _ViewInputs.requestedSpacerRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t initializeWithTake for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 32))((v7 + *(v10 + 80) + 8) & ~*(v10 + 80), (v8 + *(v10 + 80) + 8) & ~*(v10 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v5;
  *(a1 + 160) = *(a2 + 160);
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 80);
  v16 = v12 | v15 | 7;
  v17 = (v16 + 161 + a1) & ~v16;
  v18 = (v16 + 161 + a2) & ~v16;
  (*(v11 + 32))(v17, v18, v10);
  v19 = *(v11 + 64) + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  (*(v14 + 32))((v20 + v15 + 8) & ~v15, (v21 + v15 + 8) & ~v15, AssociatedTypeWitness);
  v22 = *(v14 + 64) + ((v15 + 8 + (v19 & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 3;
  v23 = ((v22 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  *v23 = *v24;
  *((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t ProjectedLocation.update()(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  LOBYTE(v3) = (*(v3 + 64))(&v11 - v8, v4, v3, v7);
  (*(a2[5] + 32))(v9, a2[3]);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t _ViewInputs.isEnabled.getter()
{
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, specialized implicit closure #1 in _GraphInputs.isEnabled.getter, 0);
  swift_endAccess();
  return v1;
}

void *Text.resolveString(in:with:idiom:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v28[-v16];
  if (a6)
  {
    v19 = *a3;
    v18 = a3[1];
    v20 = *a2;
    v23 = a1;
    v21 = *a1;
    v22 = v23[1];
    Text.Style.init()(&v28[-v16]);
    v24 = &v17[v14[5]];
    *v24 = 0;
    v24[1] = 0;
    v25 = a7;
    v26 = &v17[v14[6]];
    *v26 = 0;
    v26[1] = 0xE000000000000000;
    v17[v14[7]] = 0;
    *v24 = v19;
    v24[1] = v18;
    specialized Text.resolve<A>(into:in:with:)(v17, v21, v22, v20, a4, a5, 1, v25);
    a4 = *v26;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(v17, type metadata accessor for Text.ResolvedString);
  }

  else
  {
  }

  return a4;
}

uint64_t static AndOperationViewInputPredicate.evaluate(listInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a4 + 16))())
  {
    return (*(a5 + 16))(a1, a3, a5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance IsInGlassEffectContainerPredicate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;

  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

void lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key()
{
  if (!lazy protocol witness table cache variable for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerContextStylingFeatureEnabled.Key, &type metadata for ContainerContextStylingFeatureEnabled.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key);
  }
}

uint64_t static OrOperationViewInputPredicate.evaluate(listInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a4 + 16))())
  {
    return 1;
  }

  else
  {
    return (*(a5 + 16))(a1, a3, a5) & 1;
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA36ContainerContextStylingDisabledInputV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA36ContainerContextStylingDisabledInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ContainerContextStylingDisabledInput)
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

uint64_t static _ViewListOutputs.emptyViewList(inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 & 0x10) != 0)
  {

    return static _ViewListOutputs.nonEmptyParentViewList(inputs:)(a1, a2);
  }

  else
  {
    v32[3] = &type metadata for EmptyViewListElements;
    v32[4] = &protocol witness table for EmptyViewListElements;
    if (*(a1 + 37))
    {
      v9 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*a1);
      Attribute = AGWeakAttributeGetAttribute();
      v6 = *MEMORY[0x1E698D3F8];
      v7 = Attribute == *MEMORY[0x1E698D3F8];
      if (Attribute == *MEMORY[0x1E698D3F8])
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    else
    {
      v5 = 0;
      v6 = *MEMORY[0x1E698D3F8];
      v7 = 1;
    }

    v11 = *(a1 + 64);
    if (v11 != v6)
    {
      goto LABEL_17;
    }

    v12 = !v7;
    if ((v4 & 3) == 1)
    {
      v12 = 1;
    }

    if (v12 & 1) != 0 || (v13 = *(a1 + 128), v13 != 255) && ((v13 & 1) != 0 || (*(a1 + 120)))
    {
LABEL_17:
      outlined init with copy of AnyTrackedValue(v32, v21);
      v14 = *(a1 + 48);
      v15 = (v4 & 1) != 0 && (v4 & 2) == 0;
      v20 = *(a1 + 112);
      v16 = *(a1 + 128);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      if (v11 == v6)
      {
        v11 = v6;
      }

      outlined init with take of AnyTrackedValue(v21, v22);
      v23 = v14;
      v24 = v15;
      v25 = v5;
      v26 = v7;
      v27 = v20;
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v31 = v11;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

      v19 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of BaseViewList.Init(v22);
      *a2 = v19;
      *(a2 + 8) = 0;
      *(a2 + 40) = 1;
    }

    else
    {
      outlined init with copy of AnyTrackedValue(v32, a2);
      *(a2 + 40) = 0;
      v14 = *(a1 + 48);
    }

    *(a2 + 48) = v14;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }
}

uint64_t _ViewList_Backing.visitViews<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v10 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in _ViewList_Backing.visitViews<A>(applying:from:)(v5, a2, a1, a3, a4, &v13);
  static Update.end()();
  v11 = v13;
  _MovableLockUnlock(v10);
  return v11;
}

{
  v5 = a2;
  return _ViewList_Backing.visitViews<A>(applying:from:)(a1, &v5, a3, a4);
}

uint64_t closure #1 in _ViewList_Backing.visitViews<A>(applying:from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a1;
  v15[5] = a3;
  v16 = 1;
  result = ViewList.applySublists(from:list:to:)(a2, 0x100000000uLL, partial apply for closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:), v15, v12, v13);
  *a6 = result & 1;
  return result;
}

void closure #1 in closure #1 in _ViewList_Backing.visitViews<A>(applying:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 >= v5)
  {
    return;
  }

  v7 = a5;
  v8 = a1;
  v38 = *(a5 + 8);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a2 + 40);
  v36 = v11;
  v37 = a1[10];
  v34 = v10;
  v35 = a1[1];
  while (1)
  {
    if (v6 >= v5)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    outlined init with copy of _ViewList_SubgraphElements((v8 + 4), v41);
    outlined init with copy of _ViewList_SubgraphElements(v41, v43);
    v12 = v42;
    v40 = v42 >> 62;
    if (v42 >> 62)
    {
      break;
    }

    v13 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_40:

    v30 = v11;
    outlined destroy of _ViewList_SubgraphElements(v41);
    v29 = 0;
LABEL_41:
    v43[6] = v29;
    v43[7] = v9;
    v43[8] = v10;
    v43[9] = v6;
    v43[10] = v5;
    v43[11] = v11;
    v41[0] = v37;

    v31 = v38(v43, v41, a4, v7);

    outlined destroy of _ViewList_View(v43);
    if ((v31 & 1) != 0 && ++v6 != v5)
    {
      continue;
    }

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_40;
  }

  v13 = __CocoaSet.count.getter();
LABEL_6:

  v14 = v11;
  if (!v13)
  {
LABEL_37:
    outlined destroy of _ViewList_SubgraphElements(v41);
    v29 = 0;
    v10 = v34;
    v5 = v35;
    goto LABEL_41;
  }

  v15 = v13;
  while (1)
  {
    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v17 = *(v12 + 32 + 8 * v16);

      v18 = *(v17 + 24);
      if (!v18)
      {
        break;
      }

      goto LABEL_13;
    }

    v17 = MEMORY[0x193AC03C0](v15 - 1, v12);
    v18 = *(v17 + 24);
    if (!v18)
    {
      break;
    }

LABEL_13:
    if (!AGSubgraphIsValid())
    {
      break;
    }

    *(v17 + 24) = v18 + 1;

    --v15;
    if (!v16)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  v8 = a1;
  v7 = a5;
  v11 = v36;
  if (v15 >= v13)
  {
    goto LABEL_37;
  }

  if (v40)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 < v15)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v15 < 0)
  {
    goto LABEL_50;
  }

  if (v40)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 >= v13)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == v13)
    {

      if (!v40)
      {
        goto LABEL_33;
      }
    }

    else
    {
      type metadata accessor for _ViewList_Subgraph();

      v21 = v15;
      do
      {
        v22 = v21 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v21);
        v21 = v22;
      }

      while (v13 != v22);
      if (!v40)
      {
LABEL_33:
        v23 = v12 & 0xFFFFFFFFFFFFFF8;
        v24 = v23 + 32;
        v25 = (2 * v13) | 1;
LABEL_36:
        outlined destroy of _ViewList_SubgraphElements(v41);
        type metadata accessor for _ViewList_SubgraphRelease();
        v29 = swift_allocObject();
        v29[2] = v23;
        v29[3] = v24;
        v29[4] = v15;
        v29[5] = v25;
        v10 = v34;
        v5 = v35;
        v11 = v36;
        goto LABEL_41;
      }
    }

    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v15 = v27;
    v25 = v28;
    goto LABEL_36;
  }

LABEL_51:
  __break(1u);
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA011IsSectioneddJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsSectionedTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07IsEmptycdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsEmptyViewTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v9);
      v5 = v10;
      v6 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      if ((*(v6 + 8))(v5, v6) == &type metadata for DepthTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v9);
      if (!--v2)
      {
        return v3;
      }
    }

    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v8 + 16))(&v12, MEMORY[0x1E69E6530], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v12;
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionFooterdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsSectionFooterTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionHeaderdJ0V_Tt0B5(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 32; ; i += 40)
    {
      outlined init with copy of AnyTrackedValue(i, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 8))(v5, v6) == &type metadata for IsSectionHeaderTraitKey)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (!--v3)
      {
        return a1 & 1;
      }
    }

    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v8 + 16))(&v13, MEMORY[0x1E69E6370], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a1 = v13;
  }

  return a1 & 1;
}

uint64_t Anchor.Source.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OptionalAnchorBox(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  type metadata accessor for ArrayAnchorBox(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TextForegroundStyleModifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ObservedObject.Wrapper.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

  v7 = static MainActor.shared.getter();
  v8 = MEMORY[0x1E69E85E0];

  return Binding.init<A>(_:keyPath:isolation:)(a2, a1, v7, v8, a3);
}

double EnvironmentValues.truncationMode.setter(unsigned __int8 *a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void, __n128))
{
  v6 = v3;
  v7 = *v3;
  v8 = *a1;
  swift_retain_n();
  a2(v6, v8, &v10);

  if (v6[1])
  {
    (a3)(v7, *v6);
  }

  return result;
}

double static Text.Sizing.standard.getter@<D0>(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  *(a5 + 8) = v6;

  return result;
}

double EnvironmentValues.textSizing.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *v1;
  v5 = *a1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(v2, v5, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(v4, *v2);
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalContent<A, B>.TrueChild(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.TrueChild, a1);

  return static AsyncAttribute.flags.getter();
}

Swift::Void __swiftcall _ConditionalContent.TrueChild.updateValue()()
{
  v3 = v0;
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = type metadata accessor for _ConditionalContent.Storage(0, v4, v5, v1);
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v11 = type metadata accessor for _ConditionalContent(0, v4, v5, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v16 = type metadata accessor for _ConditionalContent.Info(0, v4, v5, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v2;
  v33 = v3;
  _ConditionalContent.TrueChild.info.getter(v3, v22, v19);
  v23 = v34;
  (*(v12 + 16))(v14, v19, v11);
  v24 = v35;
  (*(v17 + 8))(v19, v16);
  (*(v24 + 32))(v9, v14, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v24 + 8))(v9, v23);
  }

  else
  {
    v26 = v31;
    v25 = v32;
    v27 = (*(v32 + 32))(v31, v9, v4);
    v28 = MEMORY[0x1EEE9AC00](v27);
    *(&v31 - 2) = v33;
    swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.TrueChild, v28);
    *(&v31 - 1) = v29;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, closure #1 in StatefulRule.value.setterpartial apply, (&v31 - 4), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v30);
    (*(v25 + 8))(v26, v4);
  }
}

uint64_t _ConditionalContent.TrueChild.info.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Info(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

char *storeEnumTagSinglePayload for CombinedKeyframes(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for _ViewList_ID.Explicit(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t specialized closure #1 in PropertyList.subscript.getter(uint64_t a1, Swift::Int a2)
{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:)) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA20DisableRemoteEffectsV_Ttg5) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:)) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), specialized static Semantics.UnifiedLayout.isEnabled.getter) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:)) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA020EnableScrollPrefetchF0V_Ttg5) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), specialized static UnifiedHitTestingFeature.isEnabled.getter) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA016GestureContainerC0V_Ttg5) & 1;
}

{
  return specialized closure #1 in PropertyList.subscript.getter(a1, a2, specialized find1<A>(_:key:filter:), _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5) & 1;
}

uint64_t (*protocol witness for Rule.value.getter in conformance AnchorTransform<A, B>@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = *v2;
  v4 = v2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = AnchorTransform.value.getter(v5, v4, v6, v7, v8);
  v11 = v10;
  result = swift_allocObject();
  *(result + 2) = v6;
  *(result + 3) = v7;
  *(result + 4) = v8;
  *(result + 5) = v9;
  *(result + 6) = v11;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18D1C4FB0()
{

  return swift_deallocObject();
}

uint64_t AnchorTransform.modifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _AnchorTransformModifier(0, a3, a4, a5);
  v5 = *AGGraphGetValue();

  return v5;
}

double (*AnchorTransform.value.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v8 = a2;
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v11 = AnchorTransform.modifier.getter(a1, a2, a3, a4, a5);
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = v15;
  *(v16 + 64) = v9;
  *(v16 + 68) = v8;
  *(v16 + 72) = v10;
  return partial apply for closure #1 in AnchorTransform.value.getter;
}

uint64_t sub_18D1C5100()
{

  return swift_deallocObject();
}

double partial apply for closure #1 in AnchorTransform.value.getter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 72);
  v8 = *(v1 + 64);
  v9 = v5;
  v6 = Anchor.Source.prepare(geometry:)(&v8, v3);
  v4(a1, v6);

  return result;
}

uint64_t OptionalAnchorBox.prepare(geometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(*v4 + 104);
  type metadata accessor for OptionalAnchorValueBox(0, v7, a3, a4);
  v18 = v4[2];
  v16[2] = v7;
  v16[3] = *a1;
  v17 = v6;
  type metadata accessor for Anchor.Source(255, v7, v8, v9);
  type metadata accessor for Optional();
  v12 = type metadata accessor for Anchor(0, v7, v10, v11);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OptionalAnchorBox.prepare(geometry:), v16, MEMORY[0x1E69E73E0], v12, v13, &v19);

  v14 = v19;
  result = swift_allocObject();
  *(result + 16) = v14;
  return result;
}

uint64_t View.styleContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StyleContextWriter(0, a3, a5, a4);

  return View.modifier<A>(_:)();
}

uint64_t getEnumTagSinglePayload for CombinedKeyframes(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void EnvironmentValues._openURL.getter(uint64_t a1@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013OpenURLActionI0VG_Tt1g5(v5, &v19);

    v6 = v19;
    v7 = v20;
    v9 = v21;
    v8 = v22;
    v10 = v23;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey);
    BloomFilter.init(hashValue:)(v11);
    v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(v5, v18);
    if (!v12)
    {
      goto LABEL_13;
    }

    v6 = v12[9];
    v7 = v12[10];
    v9 = v12[11];
    v8 = v12[12];
    v10 = *(v12 + 52);
    outlined copy of OpenURLAction?(v6, v7, v9, v8, v10);
  }

  if (v10 != 0xFF)
  {
    if ((v10 & 0x100) == 0)
    {
      if ((v10 & 1) == 0)
      {
        *a1 = v6;
        *(a1 + 8) = v7;
        *(a1 + 16) = v9;
        *(a1 + 24) = v8;
        *(a1 + 32) = 0;
        return;
      }

      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, v8);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9, v8);
      if (v4)
      {

        HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5);

        if (HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5)
        {
          goto LABEL_10;
        }
      }

      else if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v5))
      {
LABEL_10:
        EnvironmentValues.resolvedDefaultOpenURL.getter(&v19);
        outlined consume of OpenURLAction?(v6, v7, v9, v8, v10);
        v14 = v20;
        if (v23)
        {
          v15 = v21;
          v16 = v22;

          v14 = v16;
        }

        else
        {
          v15 = v19;
        }

        goto LABEL_22;
      }

      outlined consume of OpenURLAction?(v6, v7, v9, v8, v10);
      v15 = 0;
      v14 = 0;
LABEL_22:
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v15;
      *(a1 + 24) = v14;
      goto LABEL_23;
    }

    outlined consume of OpenURLAction?(v6, v7, v9, v8, v10);
  }

LABEL_13:
  if (v4)
  {

    v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5);

    if (v17)
    {
LABEL_15:
      v19 = v5;
      v20 = v4;
      EnvironmentValues.resolvedDefaultOpenURL.getter(a1);
      return;
    }
  }

  else if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v5))
  {
    goto LABEL_15;
  }

  *a1 = closure #1 in static OpenURLAction.invalidAction.getter;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
LABEL_23:
  *(a1 + 32) = 1;
}

double key path getter for EnvironmentValues.openURL : EnvironmentValues@<D0>(uint64_t a2@<X8>)
{
  EnvironmentValues._openURL.getter(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for EnvironmentPropertyKey(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022HasSystemOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

double EnvironmentValues.resolvedDefaultOpenURL.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  swift_beginAccess();
  v5 = static OpenURLAction.defaultAction;
  v6 = qword_1ED538190;
  v7 = unk_1ED538198;
  v8 = word_1ED5381A0;
  if (word_1ED5381A0 == 0xFF)
  {
    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v4, &v20);

      v9 = v23;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey);
      BloomFilter.init(hashValue:)(v10);
      v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v4, v20);
      v12 = closure #1 in static OpenURLAction.invalidAction.getter;
      if (!v11)
      {
        goto LABEL_8;
      }

      v13 = v11[10];
      v14 = v11[11];
      v15 = v11[12];
      v9 = *(v11 + 52);
      v20 = v11[9];
      *&v21 = v13;
      *(&v21 + 1) = v14;
      v22 = v15;
      outlined copy of OpenURLAction?(v20, v13, v14, v15, v9);
    }

    v12 = closure #1 in static OpenURLAction.invalidAction.getter;
    if (v9 != 0xFF)
    {
      v16 = v22;
      v18 = v21;
      v17 = (v9 >> 8) & 1;
      v12 = v20;
      goto LABEL_10;
    }

LABEL_8:
    v16 = 0;
    LOBYTE(v17) = 0;
    v18 = 0uLL;
    LOBYTE(v9) = 1;
LABEL_10:
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 24) = v16;
    *(a1 + 32) = v9 & 1;
    *(a1 + 33) = v17;
    return outlined copy of OpenURLAction?(v5, *(&v5 + 1), v6, v7, v8);
  }

  *a1 = static OpenURLAction.defaultAction;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
  *(a1 + 33) = HIBYTE(v8) & 1;
  return outlined copy of OpenURLAction?(v5, *(&v5 + 1), v6, v7, v8);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static _ViewListOutputs.groupViewList<A, B>(parent:footer:inputs:body:)@<X0>(unsigned int *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t, _BYTE *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  outlined init with copy of _ViewListInputs(a3, v49);
  v15 = *(a3 + 56);
  if ((v15 & 0x1000) == 0 && (v51 & 0x108) != 0)
  {
    v51 &= 0xFFFFFFFFFFFFFEF7;
  }

  if ((v15 & 4) != 0)
  {
    LODWORD(v39) = *(a3 + 64);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionedTrait and conformance SectionedTrait();
    v52 = Attribute.init<A>(body:value:flags:update:)();
    if (v53)
    {
      v39 = v53;
      v40 = v54 & 1;
      v53 = 0;
      v54 = 0;
      specialized Set._Variant.insert(_:)(&v46, &type metadata for IsSectionedTraitKey);

      v53 = v39;
      v54 = v40;
    }
  }

  outlined init with copy of _ViewListInputs(v49, &v39);
  if ((v15 & 8) != 0)
  {
    if ((v42 & 0x10) == 0)
    {
      v42 |= 0x10uLL;
    }

    LODWORD(v46) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    if (v44)
    {
      v46 = v44;
      v47 = v45 & 1;
      v44 = 0;
      v45 = 0;
      specialized Set._Variant.insert(_:)(v38, &type metadata for IsSectionHeaderTraitKey);
      v16 = v46;
      v17 = v47;

      v44 = v16;
      v45 = v17;
    }
  }

  if ((v15 & 0x20) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v18 = static StyleContextInput.defaultValue;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v39, v18, *(&v18 + 1));
  }

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v38[0]) = v14;
  (*(a7 + 32))(&v46, v38, &v39, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, a5, a7);
  v50 = v48;
  v20 = v51;
  if ((v51 & 0x10000) != 0)
  {
    _ViewListInputs.updateContentOffset(outputs:)(&v46);
  }

  v21 = outlined destroy of _ViewListInputs(&v39);
  if ((v15 & 4) != 0)
  {
    LODWORD(v39) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    v52 = v21;
    if (v53)
    {
      v39 = v53;
      v40 = v54 & 1;
      v53 = 0;
      v54 = 0;
      specialized Set._Variant.insert(_:)(v38, &type metadata for DepthTraitKey);
      v22 = v39;
      v23 = v40;

      v53 = v22;
      v54 = v23;
    }
  }

  a4(v38, v21, v49);
  v50 = v38[6];
  if ((v20 & 0x10000) != 0)
  {
    _ViewListInputs.updateContentOffset(outputs:)(v38);
  }

  outlined init with copy of _ViewListInputs(v49, &v39);
  if ((v15 & 8) != 0)
  {
    if ((v42 & 8) != 0)
    {
      v42 &= ~8uLL;
    }

    LODWORD(v35) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SectionFooterTrait and conformance SectionFooterTrait();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    if (v44)
    {
      v35 = v44;
      v36 = v45 & 1;
      v44 = 0;
      v45 = 0;
      specialized Set._Variant.insert(_:)(&v33, &type metadata for IsSectionFooterTraitKey);
      v24 = v35;
      v25 = v36;

      v44 = v24;
      v45 = v25;
    }
  }

  if ((v15 & 0x40) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v26 = static StyleContextInput.defaultValue;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17StyleContextInputV_Tt2B5(&v39, v26, *(&v26 + 1));
  }

  _GraphValue.init(_:)(a2, &v33);
  v27 = v33;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v34 = v27;
  (*(a9 + 32))(&v35, &v34, &v39, a6, a9);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v27, a6, a9);
  outlined destroy of _ViewListInputs(&v39);
  v28 = v37;
  v50 = v37;
  type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, &type metadata for _ViewListOutputs, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_18DDAF080;
  outlined init with copy of _ViewListOutputs(&v46, v29 + 32);
  outlined init with copy of _ViewListOutputs(v38, v29 + 104);
  outlined init with copy of _ViewListOutputs(&v35, v29 + 176);
  if ((v15 & 0x100) != 0)
  {
    static _ViewListOutputs.sectionListOutputs(_:inputs:)(v29, a3, a8);
  }

  else
  {
    outlined init with copy of _ViewListInputs(a3, &v39);
    v41 = v28;
    static _ViewListOutputs.concat(_:inputs:)(v29, &v39, a8);

    outlined destroy of _ViewListInputs(&v39);
  }

  outlined destroy of _ViewListOutputs(&v35);
  outlined destroy of _ViewListOutputs(v38);
  outlined destroy of _ViewListOutputs(&v46);
  return outlined destroy of _ViewListInputs(v49);
}

void lazy protocol witness table accessor for type SectionedTrait and conformance SectionedTrait()
{
  if (!lazy protocol witness table cache variable for type SectionedTrait and conformance SectionedTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionedTrait, &unk_1F005B538, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionedTrait and conformance SectionedTrait);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RequiresSourceModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  outlined init with copy of _ViewListInputs(a2, v7);
  v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v7[0]);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(v7, v4 | 1);

  a3(v5, v7);
  return outlined destroy of _ViewListInputs(v7);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for CountViewsOptions);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(a1, v3);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for CountViewsOptions)
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

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17CountViewsOptions022_0A5F33F1FD54F6946F5E3L9CF78D7A25LLV_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for CountViewsOptions);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17CountViewsOptions33_0A5F33F1FD54F6946F5E3F1CF78D7A25LLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<CountViewsOptions>, &type metadata for CountViewsOptions, &protocol witness table for CountViewsOptions, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for CountViewsOptions, 0, v6);
  }
}

uint64_t _ViewListInputs.pushModifierBody<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 1;
  v4 = type metadata accessor for BodyInput(0, a4, a3, a4);
  return _GraphInputs.append<A, B>(_:to:)(v6, v4, v4, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CountViews<A, B>.MakeDynamicContent(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CountViews<A, B>.MakeDynamicContent, a1);

  return static AsyncAttribute.flags.getter();
}

void specialized _NativeSet.copy()(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for _SetStorage<ObjectIdentifier>(0, a1, a2, a3);
  v5 = *v3;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + 8 * v17) = *(*(v5 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

uint64_t ChildValueTransaction.value.getter(void *a1, unint64_t a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v3 = HIDWORD(a2);
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v43 - v11;
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = *AGGraphGetValue();
  v56[0] = v17;

  v18 = AGGraphClearUpdate();
  v19 = *AGGraphGetValue();
  AGGraphSetUpdate();
  v20 = *AGGraphGetValue();
  v51 = v19;
  if (v20 != v19)
  {
    return v17;
  }

  v47 = v3;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v55 = type metadata accessor for ObservationCenter();
    *&v54 = *(v21 + 3);
    outlined init with take of Any(&v54, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_25;
  }

  v44 = CurrentAttribute;
  swift_beginAccess();
  v46 = v24[3];
  v24[3] = MEMORY[0x1E69E7CC0];
  v26 = (*(v5 + 7))(v16, 1, 1, v4);
  v45 = &v43;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v18 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  MEMORY[0x1EEE9AC00](v26);
  *(&v43 - 2) = v56;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v29 = *Value;
  a1 = *(Value + 8);
  v52[0] = *Value;
  v52[1] = a1;
  if ((v30 & 2) == 0)
  {
    v29(v56);
    goto LABEL_11;
  }

  v43 = v5;
  v53 = 1;
  MEMORY[0x1EEE9AC00](Value);
  *(&v43 - 4) = &v53;
  *(&v43 - 3) = partial apply for closure #1 in closure #2 in ChildValueTransaction.value.getter;
  *(&v43 - 2) = (&v43 - 4);
  *(&v43 - 1) = v52;

  result = specialized static Update.syncMain(_:)(partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:), (&v43 - 6));
  if ((v53 & 1) == 0)
  {

    v5 = v43;
LABEL_11:
    v32 = v48;
    *(StatusReg + 848) = v18;
    outlined init with copy of ObservationTracking._AccessList?(v16, v32);
    if ((*(v5 + 6))(v32, 1, v4) != 1)
    {
      v18 = *(v5 + 4);
      v33 = v50;
      (v18)(v50, v32, v4);
      (*(v5 + 2))(v49, v33, v4);
      a1 = v24[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[3] = a1;
      v21 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

    outlined destroy of ObservationTracking._AccessList?(v16);
    v16 = v32;
    while (1)
    {
      outlined destroy of ObservationTracking._AccessList?(v16);
      v21 = v24[3];
      v38 = *(v21 + 2);
      if (v38)
      {
        v41 = *(v5 + 2);
        v39 = v5 + 16;
        v40 = v41;
        v16 = &v21[(v39[64] + 32) & ~v39[64]];
        v18 = v44;
        a1 = v24;
        v42 = *(v39 + 7);
        v50 = v21;

        do
        {
          v40(v7, v16, v4);
          specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v7);
          (*(v39 - 1))(v7, v4);
          v16 += v42;
          --v38;
        }

        while (v38);

        v21 = a1[3];
        v24 = a1;
      }

      v24[3] = v46;

      if (*AGGraphGetValue() == v51)
      {
        break;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
      v24[3] = a1;
LABEL_14:
      v36 = a1[2];
      v35 = a1[3];
      if (v36 >= v35 >> 1)
      {
        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, a1);
      }

      a1[2] = v36 + 1;
      v37 = a1 + ((v21[80] + 32) & ~v21[80]) + *(v21 + 9) * v36;
      v5 = v21;
      (v18)(v37, v49, v4);
      v24[3] = a1;
      (*(v21 + 1))(v50, v4);
    }

    return v56[0];
  }

  __break(1u);
  return result;
}

void specialized Attribute.syncMainIfReferences<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v16[0] = *Value;
  v16[1] = v6;
  if ((v8 & 2) != 0)
  {
    v17 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v15[2] = &v17;
    v15[3] = partial apply for closure #1 in ChildTransaction.value.getter;
    v15[4] = &v18;
    v15[5] = v16;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      v21 = v7;
      v22 = v6;
      closure #1 in ChildTransaction.value.getter(&v21, a2, a3);
      v17 = 0;
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v10 + 24) = v15;
      v11 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v21 = thunk for @callee_guaranteed () -> ()partial apply;
      v22 = v10;
      v23 = v11;
      v24 = CurrentAttribute;
      v13 = one-time initialization token for _lock;

      if (v13 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, &v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v14 = v23;

      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    if (v17)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    closure #1 in ChildTransaction.value.getter(v16, a2, a3);
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v16[0] = *Value;
  v16[1] = v6;
  if ((v8 & 2) != 0)
  {
    v17 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v15[2] = &v17;
    v15[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
    v15[4] = &v18;
    v15[5] = v16;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
      v17 = 0;
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v10 + 24) = v15;
      v11 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v21[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v21[1] = v10;
      v22 = v11;
      v23 = CurrentAttribute;
      v13 = one-time initialization token for _lock;

      if (v13 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v14 = v22;

      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    if (v17)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v16[0] = *Value;
  v16[1] = v6;
  if ((v8 & 2) != 0)
  {
    v17 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v15[2] = &v17;
    v15[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
    v15[4] = &v18;
    v15[5] = v16;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
      v17 = 0;
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v10 + 24) = v15;
      v11 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v21[0] = partial apply for thunk for @callee_guaranteed () -> ();
      v21[1] = v10;
      v22 = v11;
      v23 = CurrentAttribute;
      v13 = one-time initialization token for _lock;

      if (v13 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v14 = v22;

      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    if (v17)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  v16[0] = *Value;
  v16[1] = v6;
  if ((v8 & 2) != 0)
  {
    v17 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v15[2] = &v17;
    v15[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
    v15[4] = &v18;
    v15[5] = v16;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
      v17 = 0;
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v10 + 24) = v15;
      v11 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v21[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v21[1] = v10;
      v22 = v11;
      v23 = CurrentAttribute;
      v13 = one-time initialization token for _lock;

      if (v13 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v14 = v22;

      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    if (v17)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3, specialized ObservationCenter.invalidate<A>(_:onChangeIn:));
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a3;
  type metadata accessor for (_:)();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v16[0] = *Value;
  v16[1] = v6;
  if ((v8 & 2) != 0)
  {
    v17 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v15[2] = &v17;
    v15[3] = partial apply for specialized closure #1 in PreferenceTransform.value.getter;
    v15[4] = &v18;
    v15[5] = v16;
    v9 = objc_opt_self();

    if ([v9 isMainThread])
    {
      specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3);
      v17 = 0;
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for specialized closure #1 in Attribute.syncMainIfReferences<A>(do:);
      *(v10 + 24) = v15;
      v11 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v21[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v21[1] = v10;
      v22 = v11;
      v23 = CurrentAttribute;
      v13 = one-time initialization token for _lock;

      if (v13 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v21, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v14 = v22;

      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    if (v17)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {

    specialized closure #1 in PreferenceTransform.value.getter(v7, v6, a2, a3);
  }
}

uint64_t closure #1 in ChildTransaction.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48[-v12];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48[-v18];
  v20 = *a1;
  v21 = a1[1];
  v51 = v20;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(v22[2]);
  if (!v23)
  {
    v24 = swift_slowAlloc();
    v53 = v21;
    v25 = v6;
    v26 = a3;
    v27 = v24;
    pthread_setspecific(v22[2], v24);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v22[3];
    outlined init with take of Any(&v55, v27);

    v23 = v27;
    a3 = v26;
    v6 = v25;
    v21 = v53;
  }

  outlined init with copy of Any(v23, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(v51 + 24) = v21;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v19, 1, 1, v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v53 = v6;
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v19;
  (v51)(a3);
  *(StatusReg + 848) = v31;
  v32 = v53;
  outlined init with copy of ObservationTracking._AccessList?(v19, v16);
  if ((v32[6])(v16, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v19);
    v19 = v16;
    goto LABEL_12;
  }

  v22 = v32[4];
  (v22)(v13, v16, v5);
  (v32[2])(v52, v13, v5);
  v21 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v28;
  *(v28 + 24) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v21[2];
  v34 = v21[3];
  if (v35 >= v34 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v21);
  }

  v21[2] = v35 + 1;
  v36 = v21 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v35;
  v32 = v53;
  (v22)(v36, v52, v5);
  v28 = v51;
  *(v51 + 24) = v21;
  (v32[1])(v13, v5);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v19);
  v37 = *(v28 + 24);
  v38 = v37[2];
  if (v38)
  {
    v41 = v32[2];
    v40 = v32 + 2;
    v39 = v41;
    v42 = v28;
    v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = v40[7];
    v45 = (v40 - 1);
    v53 = v37;

    v46 = v49;
    do
    {
      v39(v8, v43, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v46, v8);
      (*v45)(v8, v5);
      v43 += v44;
      --v38;
    }

    while (v38);

    v28 = v42;
  }

  *(v28 + 24) = v50;
}

void EnvironmentValues.override(with:)(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  value = *a1;
  v7 = *v4;
  if (*v4)
  {
    if (value)
    {
      if (v7[3])
      {
        type metadata accessor for TypedElement<EmptyKey>(0, a2, a3, a4);
        swift_allocObject();

        value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, value, v7).value;
      }

      else
      {
        v9 = v7[4];
        v10 = *(*v7 + 216);

        v12 = v10(v11, v9);

        value = v12;
      }
    }

    else
    {

      value = v7;
    }

    v8 = v7[8];
  }

  else
  {
    if (!value)
    {
      return;
    }

    v8 = 0;
  }

  if (v8 == *(value + 64))
  {
  }

  else
  {
    if (v5[1])
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(v7, value);
    }

    *v5 = value;
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018TintAdjustmentModeF033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(*a1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v4 + 72);
  if (a2 != 2 && v5 != 2)
  {
    if (((v5 ^ a2) & 1) == 0)
    {
      return;
    }

LABEL_8:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);

    return;
  }

  if (a2 != 2 || v5 != 2)
  {
    goto LABEL_8;
  }
}

uint64_t one-time initialization function for presentation()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.presentation);
  v5 = __swift_project_value_buffer(v1, static Log.presentation);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD83880);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _SafeAreaIgnoringLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _SafeAreaIgnoringLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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

void lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout()
{
  if (!lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout);
  }
}

_DWORD *initializeWithCopy for PreferenceBinder(_DWORD *a1, _DWORD *a2, uint64_t a3)
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
  v10 = *v9;
  *(v8 + 5) = *(v9 + 5);
  *v8 = v10;
  v11 = ((v6 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 80);
  v16 = v11 + v15 + 4;
  v17 = v12 + v15 + 4;
  if ((*(v14 + 48))(v17 & ~v15, 1, AssociatedTypeWitness))
  {
    if (*(v14 + 84))
    {
      v18 = *(v14 + 64);
    }

    else
    {
      v18 = *(v14 + 64) + 1;
    }

    memcpy((v16 & ~v15), (v17 & ~v15), v18);
  }

  else
  {
    (*(v14 + 16))(v16 & ~v15, v17 & ~v15, AssociatedTypeWitness);
    (*(v14 + 56))(v16 & ~v15, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t destroy for PreferenceBinder(uint64_t a1, uint64_t a2)
{
  v2 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v2 + v5 + 4;
  v9 = v4;
  result = (*(v4 + 48))(v6 & ~v5, 1, AssociatedTypeWitness);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, AssociatedTypeWitness);
  }

  return result;
}

_OWORD *initializeWithCopy for NamedCoordinateSpace(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AccessibilityTraits(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *v2 & *a2;
  if (v5 != *a2)
  {
    v4 |= v3;
    *v2 = v4;
  }

  *a1 = v4;
  return v5 != v3;
}

uint64_t outlined init with copy of PreferenceValues.Entry?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t EnvironmentValues.isVisionEnabled.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v1) & 1;
  }

  IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v1);

  return IsVisionEnabledI0VG_Tt1g5 & 1;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015IsVisionEnabledV0VG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  if (v6 != -1 && v5 != 0)
  {
    if (v6)
    {
      v8 = v5 == -1;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = a1;
      v10 = a2;
      v11 = merge32(_:_:)(*(a1 + 16), *(a2 + 16));
      a2 = v10;
      v5 = v11;
      a1 = v9;
    }

    *(a1 + 16) = v5;
  }

  outlined init with copy of Any(a2 + 24, &v13);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t View.overlayPreferenceValue<A, B>(_:alignment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void, void *))
{
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a2;
  v13[7] = a3;
  v13[0] = a7;
  v13[1] = a8;
  v13[2] = a10;
  v13[3] = a11;
  a12(0, v13);
  return View.modifier<A>(_:)();
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintAdjustmentModeKey>>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in DelayedPreferenceChild.value.getter(uint64_t (**a1)(uint64_t *))
{
  v1 = *a1;
  v3 = AGCreateWeakAttribute();
  return v1(&v3);
}

void lazy protocol witness table accessor for type DepthTrait and conformance DepthTrait()
{
  if (!lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for DepthTrait, &type metadata for DepthTrait, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DepthTrait and conformance DepthTrait);
  }
}

uint64_t static _ViewListOutputs.sectionListOutputs(_:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v34);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = a1 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of _ViewListOutputs(v9, &v28);
      v11 = _ViewListOutputs.makeAttribute(inputs:)(v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      *&v10[4 * v13 + 32] = v11;
      v35 = v31;
      if (v8)
      {
        outlined destroy of _ViewListOutputs(&v28);
      }

      else
      {
        v14 = v32;
        v15 = v33;
        outlined destroy of _ViewListOutputs(&v28);
        if ((v15 & 1) == 0)
        {
          v8 = 0;
          v7 += v14;
          goto LABEL_5;
        }
      }

      v7 = 0;
      v8 = 1;
LABEL_5:
      v9 += 72;
      if (!--v6)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = 0;
  v8 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v16 = *(a2 + 56);
  if ((v16 & 0x2000) != 0)
  {
    v17 = *(v10 + 2);
    if (v17)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v10, (v10 + 32), 1, (2 * v17) | 1);
      v18 = v27;
    }

    else
    {

      v18 = v10;
    }

    v28 = v18;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    v19 = type metadata accessor for ViewList();
    lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init();
    v20 = Attribute.init<A>(body:value:flags:update:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    if (*(v10 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      *(v10 + 9) = v20;
      v21 = specialized static GraphHost.currentHost.getter();
      v22 = specialized GraphHost.intern<A>(_:for:id:)(v19, 0, v21);

      if (*(v10 + 2) >= 3uLL)
      {
        *(v10 + 10) = v22;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

LABEL_22:
  v23 = *(a2 + 64);
  v28 = v10;
  v29 = (v16 & 0x8000) != 0;
  v30 = v23;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ViewList();
  lazy protocol witness table accessor for type MakeSection and conformance MakeSection();
  v24 = Attribute.init<A>(body:value:flags:update:)();

  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  v25 = v35;
  result = outlined destroy of _ViewListInputs(v34);
  *(a3 + 48) = v25;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  return result;
}

void lazy protocol witness table accessor for type MakeSection and conformance MakeSection()
{
  if (!lazy protocol witness table cache variable for type MakeSection and conformance MakeSection)
  {
    swift_getWitnessTable(protocol conformance descriptor for MakeSection, &unk_1F005B5E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MakeSection and conformance MakeSection);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MakeSection(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 3);

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ViewList_ID(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AGSubgraphRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for AGSubgraphRef, a3);

  return static _CFObject.== infix(_:_:)();
}

unint64_t ScrollAnchorStorage.init()@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 1;
  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  v12 = v11;
  BloomFilter.init(hashValue:)(v11);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v10, v20);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13[10];
  v15 = v13[11];
  v16 = *(v13 + 96);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(a2, *(v13 + 9)) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a5)
  {
    if (v16)
    {
      return;
    }

LABEL_11:
    v18 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>(0);
    v19 = swift_allocObject();
    *(v19 + 72) = a2;
    *(v19 + 80) = *&a3;
    *(v19 + 88) = *&a4;
    *(v19 + 96) = a5 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v18);

    return;
  }

  if (v16)
  {
    goto LABEL_11;
  }

  if (v14 != *&a3 || v15 != *&a4)
  {
    goto LABEL_11;
  }
}

double EnvironmentValues.scrollAnchors.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v2, v3, v4, v5, v6);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v7, *v2);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ScrollAnchorsKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>);
  }
}