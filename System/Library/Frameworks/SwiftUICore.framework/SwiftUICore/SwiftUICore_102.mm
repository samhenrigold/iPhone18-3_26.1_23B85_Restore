double one-time initialization function for thinSolidEdgeMatrix()
{
  static _ColorMatrix.thinSolidEdgeMatrix = xmmword_18DDC57E0;
  *algn_1EAB1C950 = xmmword_18DDC57F0;
  xmmword_1EAB1C960 = xmmword_18DDC5800;
  unk_1EAB1C970 = xmmword_18DDC5810;
  result = 0.0;
  xmmword_1EAB1C980 = xmmword_18DDC57D0;
  return result;
}

double one-time initialization function for linear()
{
  result = 0.0;
  static SIMD4<>.linear = xmmword_18DDBDEB0;
  return result;
}

void lazy protocol witness table accessor for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider()
{
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ExperimentalGlassMaterialProvider, &type metadata for ExperimentalGlassMaterialProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ExperimentalGlassMaterialProvider, &type metadata for ExperimentalGlassMaterialProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ExperimentalGlassMaterialProvider, &type metadata for ExperimentalGlassMaterialProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }
}

void type metadata accessor for _ContiguousArrayStorage<SIMD4<Float>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD4<Float>>)
  {
    type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(255, &lazy cache variable for type metadata for SIMD4<Float>, lazy protocol witness table accessor for type Float and conformance Float, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD4<Float>>);
    }
  }
}

void type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

SwiftUI::ToggleState_optional __swiftcall ToggleState.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToggleState.debugDescription.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

void lazy protocol witness table accessor for type ToggleState and conformance ToggleState()
{
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    swift_getWitnessTable(protocol conformance descriptor for ToggleState, &type metadata for ToggleState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }
}

{
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    swift_getWitnessTable(protocol conformance descriptor for ToggleState, &type metadata for ToggleState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }
}

void lazy protocol witness table accessor for type [ToggleState] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ToggleState] and conformance [A])
  {
    type metadata accessor for [ToggleState]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ToggleState] and conformance [A]);
  }
}

void type metadata accessor for [ToggleState]()
{
  if (!lazy cache variable for type metadata for [ToggleState])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ToggleState]);
    }
  }
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToggleState()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t AccessibilityNullableOptionSet.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of SetAlgebra.contains(_:)())
  {
    return 1;
  }

  if (dispatch thunk of SetAlgebra.contains(_:)())
  {
    return 0;
  }

  return 2;
}

uint64_t AccessibilityNullableOptionSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a6;
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  dispatch thunk of SetAlgebra.init()();
  dispatch thunk of SetAlgebra.init()();
  v21 = *(v15 + 32);
  v21(a9, v20, a1);
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = v25;
  v29[4] = a5;
  v29[5] = v26;
  v29[6] = v27;
  v29[7] = v28;
  v29[8] = a10;
  v22 = type metadata accessor for AccessibilityNullableOptionSet(0, v29);
  return (v21)(a9 + *(v22 + 92), v17, a1);
}

uint64_t AccessibilityNullableOptionSet.subscript.setter(unsigned __int8 a1, char *a2, uint64_t a3)
{
  LODWORD(v27) = a1;
  v5 = *(a3 + 48);
  v6 = *(a3 + 16);
  v30 = *(v5 + 16);
  v29 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v28 = (v12 + 8);
  if (v27 == 2)
  {
    dispatch thunk of SetAlgebra.remove(_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    dispatch thunk of SetAlgebra.remove(_:)();
    (*v28)(a2, AssociatedTypeWitness);
    return (v20)(v11, v8);
  }

  else
  {
    v26 = v8;
    v27 = a2;
    v22 = *(v12 + 16);
    v22(v15, a2, AssociatedTypeWitness, v17);
    dispatch thunk of SetAlgebra.insert(_:)();
    v23 = *(v12 + 8);
    v23(v19, AssociatedTypeWitness);
    if (a1)
    {
      v24 = v27;
      (v22)(v15, v27, AssociatedTypeWitness);
      dispatch thunk of SetAlgebra.insert(_:)();
      v23(v24, AssociatedTypeWitness);
      return (v23)(v19, AssociatedTypeWitness);
    }

    else
    {
      v25 = v27;
      dispatch thunk of SetAlgebra.remove(_:)();
      v23(v25, AssociatedTypeWitness);
      return (*(v9 + 8))(v11, v26);
    }
  }
}

uint64_t AccessibilityNullableOptionSet.subscript.getter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = AccessibilityNullableOptionSet.subscript.getter(a1, a3);
  if (v4 == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t AccessibilityNullableOptionSet.init(implying:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v30[0] = v20;
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v21);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of SetAlgebra.init()();
  v22 = *(v14 + 32);
  v22(a9, v19, a2);
  v30[0] = a2;
  v30[1] = v25;
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = a6;
  v30[5] = v28;
  v30[6] = v29;
  v30[7] = a10;
  v30[8] = a11;
  v23 = type metadata accessor for AccessibilityNullableOptionSet(0, v30);
  return (v22)(a9 + *(v23 + 92), v16, a2);
}

uint64_t AccessibilityNullableOptionSet.init(adding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v30[0] = v20;
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v21);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 16))(v16, v19, a2);
  v22 = *(v14 + 32);
  v22(a9, v16, a2);
  v30[0] = a2;
  v30[1] = v25;
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = a6;
  v30[5] = v28;
  v30[6] = v29;
  v30[7] = a10;
  v30[8] = a11;
  v23 = type metadata accessor for AccessibilityNullableOptionSet(0, v30);
  return (v22)(a9 + *(v23 + 92), v19, a2);
}

uint64_t AccessibilityNullableOptionSet.init(removing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  dispatch thunk of SetAlgebra.init()();
  v30[0] = a1;
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v21);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = *(v15 + 32);
  v22(a9, v20, a2);
  v30[0] = a2;
  v30[1] = v25;
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = a6;
  v30[5] = v28;
  v30[6] = v29;
  v30[7] = a10;
  v30[8] = a11;
  v23 = type metadata accessor for AccessibilityNullableOptionSet(0, v30);
  return (v22)(a9 + *(v23 + 92), v17, a2);
}

uint64_t AccessibilityNullableOptionSet.init(adding:removing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a6;
  v51 = a8;
  v44 = a7;
  v40 = a5;
  v38 = a4;
  v52 = a2;
  v48 = a9;
  v49 = a12;
  v15 = *(a3 - 8);
  v47 = a11;
  v39 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v46 = &v37 - v22;
  v53 = v24;
  v41 = *(v25 + 16);
  swift_getAssociatedTypeWitness();
  v43 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v43);
  v42 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v15;
  v27 = *(v15 + 16);
  v37 = v20;
  v27(v20, v23, a3);
  v27(v17, v23, a3);
  v28 = *(v15 + 32);
  v29 = v48;
  v28(v48, v20, a3);
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v31 = v50;
  v30 = v51;
  v32 = v44;
  v56 = v50;
  v57 = v44;
  v58 = v51;
  v59 = a10;
  v33 = v47;
  v34 = v49;
  v60 = v47;
  v61 = v49;
  v35 = type metadata accessor for AccessibilityNullableOptionSet(0, &v53);
  v28(v29 + *(v35 + 92), v17, a3);
  v53 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = a3;
  v54 = v38;
  v55 = v40;
  v56 = v31;
  v57 = v32;
  v58 = v30;
  v59 = v39;
  v60 = v33;
  v61 = v34;
  type metadata accessor for AccessibilityNullableOptionSet(0, &v53);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  return (*(v45 + 8))(v46, a3);
}

uint64_t key path getter for AccessibilityNullableOptionSet.subscript(_:) : <A>AccessibilityNullableOptionSet<A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + a2 - 8);
  v6 = *(a1 + a2 - 56);
  v10[0] = *(a1 + a2 - 72);
  v10[1] = v6;
  v7 = *(a1 + a2 - 24);
  v10[2] = *(a1 + a2 - 40);
  v10[3] = v7;
  v11 = v5;
  v8 = type metadata accessor for AccessibilityNullableOptionSet(0, v10);
  result = AccessibilityNullableOptionSet.subscript.getter(a1, v8);
  *a3 = result;
  return result;
}

uint64_t key path setter for AccessibilityNullableOptionSet.subscript(_:) : <A>AccessibilityNullableOptionSet<A>A(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 8);
  v19 = *(a3 + a4 - 72);
  v18 = *(a3 + a4 - 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  v12 = *(v11 + 16);
  v13 = *(v6 - 24);
  v16 = *(v6 - 56);
  v17 = v13;
  v12(v10, v4);
  LOBYTE(v4) = *a1;
  v20[0] = v19;
  v20[1] = v16;
  v20[2] = v18;
  v20[3] = v17;
  v21 = v7;
  v14 = type metadata accessor for AccessibilityNullableOptionSet(0, v20);
  return AccessibilityNullableOptionSet.subscript.setter(v4, v10, v14);
}

void (*AccessibilityNullableOptionSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v9[5] = v14;
  (*(v12 + 16))();
  *(v9 + 48) = AccessibilityNullableOptionSet.subscript.getter(a2, a3);
  return AccessibilityNullableOptionSet.subscript.modify;
}

void AccessibilityNullableOptionSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = *v2;
    (*(v2[3] + 32))((*a1)[4], v5, v2[2]);
    v7 = v3;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    v9 = *v2;
    v7 = *(*a1 + 48);
    v8 = v5;
  }

  AccessibilityNullableOptionSet.subscript.setter(v7, v8, v9);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t AccessibilityNullableOptionSet.isDefault.getter(uint64_t a1)
{
  if ((dispatch thunk of SetAlgebra.isEmpty.getter() & 1) == 0)
  {
    return 0;
  }

  return dispatch thunk of SetAlgebra.isEmpty.getter();
}

uint64_t static AccessibilityNullableOptionSet.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v19[0] = a3;
    v19[1] = a4;
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = a7;
    v19[5] = a8;
    v19[6] = a9;
    v19[7] = a10;
    v19[8] = a11;
    type metadata accessor for AccessibilityNullableOptionSet(0, v19);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t AccessibilityNullableOptionSet.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802723693 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AccessibilityNullableOptionSet.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1802723693;
  }

  else
  {
    return 0x65756C6176;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AccessibilityNullableOptionSet.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityNullableOptionSet<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityNullableOptionSet<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityNullableOptionSet<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityNullableOptionSet<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityNullableOptionSet.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 16);
  v13[0] = *(a2 + 32);
  v13[1] = v4;
  v14[0] = v4;
  v14[1] = v13[0];
  v5 = *(a2 + 64);
  v14[2] = *(a2 + 48);
  v14[3] = v5;
  v15 = v3;
  v6 = type metadata accessor for AccessibilityNullableOptionSet.CodingKeys(255, v14);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityNullableOptionSet<A>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14[0]) = 0;
  v11 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v14[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int AccessibilityNullableOptionSet.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a8;
  v48 = a6;
  v49 = a7;
  v61 = a1;
  v40 = a9;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v40 - v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  v56 = v22;
  v57 = v23;
  v58 = v24;
  v59 = a10;
  v60 = a11;
  v25 = type metadata accessor for AccessibilityNullableOptionSet.CodingKeys(255, &v52);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityNullableOptionSet<A>.CodingKeys, v25);
  v47 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v27 = &v40 - v26;
  v44 = a2;
  v52 = a2;
  v53 = a3;
  v46 = a3;
  v54 = a4;
  v55 = a5;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = a10;
  v28 = v61;
  v60 = a11;
  v29 = type metadata accessor for AccessibilityNullableOptionSet(0, &v52);
  v49 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v40 - v30;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v50 = v27;
  v32 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v51 = v29;
  v34 = v41;
  v33 = v42;
  v36 = v43;
  v35 = v44;
  LOBYTE(v52) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = *(v36 + 32);
  v48(v31, v45, v35);
  LOBYTE(v52) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v50, v47);
  v37 = v51;
  v48(&v31[*(v51 + 92)], v33, v35);
  v38 = v49;
  (*(v49 + 16))(v40, v31, v37);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return (*(v38 + 8))(v31, v37);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityNullableOptionSet<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AccessibilityNullableOptionSet.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet.merge(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v23 = &v20 - v12;
  v25 = v5;
  v13 = *(v5 + 16);
  v21 = a1;
  v13(v9, a1, v4, v11);
  v20 = a2;
  v22 = *(a2 + 92);
  dispatch thunk of SetAlgebra.subtracting(_:)();
  v14 = *(v20 + 92);
  (v13)(v9, a1 + v14, v4);
  v15 = v24;
  dispatch thunk of SetAlgebra.subtracting(_:)();
  v16 = v23;
  (v13)(v9, v21 + v14, v4);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  dispatch thunk of SetAlgebra.subtract(_:)();
  (v13)(v9, v16, v4);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v17 = 1;
  }

  else
  {
    v17 = dispatch thunk of SetAlgebra.isEmpty.getter();
  }

  v18 = *(v25 + 8);
  v18(v15, v4);
  v18(v16, v4);
  return v17 & 1;
}

void AccessibilityNullableOptionSet.encode(to:)(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = *(*(*(a2[9] + 8) + 24) + 16);
  v4 = *(a2[6] + 8);
  v34[5] = a2;
  v5 = a2[2];
  swift_getAssociatedTypeWitness();
  v38 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v34 - v7;
  v9 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v37 = v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v35 = v2;
  v34[3] = v5;
  v34[4] = v4;
  v16 = v15;
  v18 = v17;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v19 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v16 + 8))(v18, v9);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }
  }

  v34[0] = v8;
  v34[1] = AssociatedTypeWitness;
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v21 = v37;
  if (v20 > 63)
  {
    v39 = -1;
    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v24 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v16 + 8))(v18, v9);
        if ((v24 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }
    }

    else if (v23 < 65)
    {
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v16 + 8))(v18, v9);
    if ((v25 & 1) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v26 = dispatch thunk of BinaryInteger._lowWord.getter();
  v27 = *(v16 + 8);
  v27(v14, v9);
  if (v26)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v26);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v21 = v37;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v28 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v27(v18, v9);
    if ((v28 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
  {
    goto LABEL_25;
  }

  v39 = -1;
  v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v30 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v29 & 1) == 0)
  {
    if (v30 < 65)
    {
      goto LABEL_24;
    }

LABEL_22:
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    v27(v18, v9);
    if ((v32 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v30 > 64)
  {
    goto LABEL_22;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v21 = v37;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v31 = dispatch thunk of static Comparable.> infix(_:_:)();
  v27(v18, v9);
  if (v31)
  {
LABEL_24:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_25:
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  v27(v21, v9);
  if (v33)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v33);
  }
}

unint64_t AccessibilityNullableOptionSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a4;
  v60 = a8;
  v49 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v47 - v21;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v47 - v25;
  v55 = a11;
  v72 = a9;
  v61 = a2;
  v62 = a6;
  v54 = a3;
  v56 = a5;
  v26 = a6;
  v27 = v49;
  v57 = a7;
  result = AccessibilityNullableOptionSet.init()(a2, a3, v59, a5, v26, a7, v60, v49, a9, a11);
  v29 = a1[1];
  v30 = a1[2];
  if (v29 >= v30)
  {
LABEL_45:
    a1[3] = 0;
    return result;
  }

  v31 = (v48 + 40);
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v32 = a1[4];
      if (v29 < v32)
      {
        goto LABEL_11;
      }

      if (v32 < v29)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v11)
    {
      goto LABEL_44;
    }

    if (result <= 7)
    {
      goto LABEL_43;
    }

LABEL_11:
    v33 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v33 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v11)
        {
          goto LABEL_44;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v38 = a1[1] + result;
        if (v30 < v38)
        {
LABEL_43:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_44:
          v63 = v61;
          v64 = v54;
          v65 = v59;
          v66 = v56;
          v67 = v62;
          v68 = v57;
          v69 = v60;
          v70 = v27;
          v71 = v55;
          v46 = type metadata accessor for AccessibilityNullableOptionSet(0, &v63);
          return (*(*(v46 - 8) + 8))(v72, v46);
        }

        a1[3] = 16;
        a1[4] = v38;
      }

      v39 = ProtobufDecoder.decodeVarint()(result);
      if (v11)
      {
        goto LABEL_44;
      }

      v63 = v39;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v40 = v51;
      v41 = v61;
      v42 = v27;
      v43 = v62;
      dispatch thunk of OptionSet.init(rawValue:)();
      v63 = v41;
      v64 = v54;
      v65 = v59;
      v66 = v56;
      v67 = v43;
      v68 = v57;
      v27 = v42;
      v69 = v60;
      v70 = v42;
      v71 = v55;
      v44 = type metadata accessor for AccessibilityNullableOptionSet(0, &v63);
      result = (*v31)(v72 + *(v44 + 92), v40, v41);
      goto LABEL_4;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v33 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v11)
        {
          goto LABEL_44;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        v45 = a1[1] + result;
        if (v30 < v45)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v33 != 5)
        {
          goto LABEL_43;
        }

        v45 = a1[1] + 4;
        if (v30 < v45)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v33 != 1)
      {
        goto LABEL_43;
      }

      v45 = a1[1] + 8;
      if (v30 < v45)
      {
        goto LABEL_43;
      }

LABEL_3:
      a1[1] = v45;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v11)
    {
      goto LABEL_44;
    }

LABEL_4:
    v29 = a1[1];
    if (v29 >= v30)
    {
      goto LABEL_45;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_19:
    v35 = ProtobufDecoder.decodeVarint()(result);
    if (v11)
    {
      goto LABEL_44;
    }

    v63 = v35;
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v36 = v50;
    v37 = v61;
    dispatch thunk of OptionSet.init(rawValue:)();
    result = (*v31)(v72, v36, v37);
    goto LABEL_4;
  }

  if (v33 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v11)
  {
    goto LABEL_44;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v34 = a1[1] + result;
    if (v30 < v34)
    {
      goto LABEL_43;
    }

    a1[3] = 8;
    a1[4] = v34;
    goto LABEL_19;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7710], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }
}

{
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    swift_getWitnessTable(MEMORY[0x1E69E7718], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }
}

uint64_t Comparable.clamp(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v10, v3, a2, v8);
  v11 = type metadata accessor for ClosedRange();
  Comparable.clamp(min:max:)(a1, a1 + *(v11 + 36), a2, a3);
  return (*(v7 + 8))(v10, a2);
}

uint64_t Comparable.clamp(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  min<A>(_:_:)();
  return (*(v5 + 8))(v7, a3);
}

uint64_t Comparable.formMin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  result = a4(a1, v5, a2, a3);
  if (result)
  {
    v10 = *(a2 - 8);
    (*(v10 + 8))(v5, a2);
    v9 = *(v10 + 16);

    return v9(v5, a1, a2);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v19 - v6;
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v8 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v9 = *(v5 + 8);
  v9(v7, AssociatedTypeWitness);
  if (v8 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v10 = dispatch thunk of static Comparable.< infix(_:_:)(), v9(v7, AssociatedTypeWitness), (v10))
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v13 = v12;
    v14 = swift_getAssociatedTypeWitness();
    v15 = *(v14 - 8);
    v16 = v20;
    (*(v15 + 16))(v20, v13, v14);
    v11(v21, 0);
    return (*(v15 + 56))(v16, 0, 1, v14);
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    return (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
  }
}

uint64_t Collection.index(atOffset:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)();
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t Collection.offset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  dispatch thunk of Collection.startIndex.getter();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v7;
}

float _AlphaThresholdEffect.resolve(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v10 = *a1;
  *a3 = (*(*a2 + 112))(&v10);
  *(a3 + 4) = v6;
  result = a4;
  *(a3 + 8) = v8;
  *(a3 + 12) = v9;
  *(a3 + 16) = result;
  return result;
}

float32x4_t _AlphaThresholdEffect._Resolved.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v3 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v4 = v8;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  result = vmulq_f32(v4, v5);
  *a1 = v3;
  *(a1 + 4) = result;
  return result;
}

void _AlphaThresholdEffect._Resolved.animatableData.setter(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 4);
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v9 = *(a1 + 4);
    swift_once();
    v3.i64[0] = 0x3C0000003C000000;
    v3.i64[1] = 0x3C0000003C000000;
    v2 = v9;
  }

  v8 = vmulq_f32(v2, v3);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8.f32[0];
    v6 = v8.i32[2];
    v5 = v8.i32[1];
    v7 = v8.i32[3];
  }

  else
  {
    v11 = 2;
    v10 = v8;
    v4 = ResolvedGradient.ColorSpace.convertOut(_:)(&v10);
  }

  *v1 = v4;
  *(v1 + 4) = v5;
  *(v1 + 8) = v6;
  *(v1 + 12) = v7;
}

void (*_AlphaThresholdEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  *(v4 + 72) = v5;
  *(v4 + 76) = vmulq_f32(v6, v7);
  return _AlphaThresholdEffect._Resolved.animatableData.modify;
}

void _AlphaThresholdEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 52;
  if (a2)
  {
    v3 = 32;
  }

  v4 = v2 + v3;
  *v4 = *(v2 + 72);
  *(v4 + 16) = *(v2 + 88);
  _AlphaThresholdEffect._Resolved.animatableData.setter(v2 + v3);

  free(v2);
}

double _AlphaThresholdEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = 2143289344;
  DWORD1(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _AlphaThresholdEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = 2143289344;
  DWORD1(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _AlphaThresholdEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  _AlphaThresholdEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _AlphaThresholdEffect._Resolved(uint64_t **a1))(void *a1)
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
  v2[4] = _AlphaThresholdEffect._Resolved.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

float protocol witness for EnvironmentalModifier.resolve(in:) in conformance _AlphaThresholdEffect@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v10 = *a1;
  *a2 = (*(**&v4 + 112))(&v10);
  *(a2 + 4) = v6;
  result = v5;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = result;
  return result;
}

void lazy protocol witness table accessor for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

double key path setter for _ViewInputs.textAlwaysOnProvider : _ViewInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.textAlwaysOnProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_ViewInputs.textAlwaysOnProvider.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.textAlwaysOnProvider.modify;
}

uint64_t (*_GraphInputs.textAlwaysOnProvider.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.textAlwaysOnProvider.modify;
}

void _ViewInputs.textAlwaysOnProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

float64x2_t static CGPoint.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGPoint.-= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vsubq_f64(*a1, a2);
  *a1 = result;
  return result;
}

CGPoint __swiftcall CGPoint.unapplying(_:)(CGAffineTransform *a1)
{
  v3 = v2;
  v4 = v1;
  tx = a1->tx;
  ty = a1->ty;
  v7 = *&a1->c;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&a1->a, xmmword_18DDAA020), vceqq_f64(v7, xmmword_18DDAB500))))))
  {
    *&v13.a = *&a1->a;
    *&v13.c = v7;
    v13.tx = tx;
    v13.ty = ty;
    CGAffineTransformInvert(&v12, &v13);
    v13 = v12;
    v14.x = v4;
    v14.y = v3;
    v10 = CGPointApplyAffineTransform(v14, &v13);
    y = v10.y;
    x = v10.x;
  }

  else
  {
    x = v4 - tx;
    y = v3 - ty;
  }

  result.y = y;
  result.x = x;
  return result;
}

CGPoint __swiftcall CGPoint.clamp(min:max:)(CGPoint min, CGPoint max)
{
  if (min.x <= v2)
  {
    min.x = v2;
  }

  if (min.x > max.x)
  {
    min.x = max.x;
  }

  if (min.y <= v3)
  {
    min.y = v3;
  }

  if (min.y > max.y)
  {
    min.y = max.y;
  }

  return min;
}

float64x2_t static CGPoint.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

double static CGSize.+ infix(_:_:)(double a1, double a2, double a3)
{
  return a1 + a3;
}

{
  return a1 + a3;
}

uint64_t SystemListStyleMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FontBox<Font.SystemProvider>(0);
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *a1 = result;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  return result;
}

double static SystemStyleMetrics.list.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_1EAB0F2A0;
  v3 = qword_1EAB0F2A8;
  *a1 = static SystemStyleMetrics.list;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double static SystemStyleMetrics.list.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SystemStyleMetrics.list = v1;
  byte_1EAB0F2A0 = v2;
  qword_1EAB0F2A8 = v3;

  return result;
}

uint64_t (*static SystemStyleMetrics.list.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

double key path getter for static SystemStyleMetrics.list : SystemStyleMetrics.Type@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_1EAB0F2A0;
  v3 = qword_1EAB0F2A8;
  *a1 = static SystemStyleMetrics.list;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double key path setter for static SystemStyleMetrics.list : SystemStyleMetrics.Type(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = a1[2];
  v4 = one-time initialization token for list;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SystemStyleMetrics.list = v1;
  byte_1EAB0F2A0 = v2;
  qword_1EAB0F2A8 = v3;

  return result;
}

double SystemListStyleMetrics.sidebar.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double key path setter for SystemListStyleMetrics.sidebar : SystemListStyleMetrics(uint64_t *a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v5 = a1[2];
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return result;
}

void SystemListStyleMetrics.sidebar.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

void (*SystemListStyleMetrics.sidebar.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v1;

  return SystemListStyleMetrics.sidebar.modify;
}

void SystemListStyleMetrics.sidebar.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }

  else
  {

    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SystemListStyleMetrics(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t *assignWithCopy for SystemListStyleMetrics(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithTake for SystemListStyleMetrics(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];

  return a1;
}

uint64_t initializeWithCopy for SystemShadowStyleMetrics.Separated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for SystemShadowStyleMetrics.Separated(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[4];
  v4 = a1[4];
  a1[4] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for SystemShadowStyleMetrics.Separated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unsigned __int8 *AccessibilityTraitSet.init(trait:)@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v2;
  }

  *a2 = v3;
  return result;
}

BOOL AccessibilityTraits.insert(_:)(void *a1, uint64_t *a2)
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

void *AccessibilityTraits.remove(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & ~*result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

void *AccessibilityTraits.update(with:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AccessibilityTraits@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & ~*result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

void *protocol witness for SetAlgebra.update(with:) in conformance AccessibilityTraits@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t AccessibilityTrait.displayDescription.getter()
{
  result = 0;
  if (((1 << *v0) & 0x23C07FFF) != 0)
  {
    v2 = String.init<A>(describing:)();
    MEMORY[0x193ABEDD0](v2);

    return 46;
  }

  return result;
}

uint64_t AccessibilityTrait.uiTrait.getter()
{
  result = 0;
  switch(*v0)
  {
    case 0:
      v2 = &AXSwiftUITraitsButton;
      goto LABEL_23;
    case 1:
      v2 = &AXSwiftUITraitsHeader;
      goto LABEL_23;
    case 2:
      v2 = &AXSwiftUITraitsSelected;
      goto LABEL_23;
    case 3:
      v2 = &AXSwiftUITraitsLink;
      goto LABEL_23;
    case 4:
      v2 = &AXSwiftUITraitsSearchField;
      goto LABEL_23;
    case 5:
      v2 = &AXSwiftUITraitsImage;
      goto LABEL_23;
    case 6:
      v2 = &AXSwiftUITraitsPlaysSound;
      goto LABEL_23;
    case 7:
      v2 = &AXSwiftUITraitsKeyboardKey;
      goto LABEL_23;
    case 8:
      v2 = &AXSwiftUITraitsStaticText;
      goto LABEL_23;
    case 9:
      v2 = &AXSwiftUITraitsSummaryElement;
      goto LABEL_23;
    case 0xA:
      v2 = &AXSwiftUITraitsUpdatesFrequently;
      goto LABEL_23;
    case 0xB:
      v2 = &AXSwiftUITraitsStartsMediaSession;
      goto LABEL_23;
    case 0xC:
      v2 = &AXSwiftUITraitsAllowsDirectInteraction;
      goto LABEL_23;
    case 0xD:
      v2 = &AXSwiftUITraitsCausesPageTurn;
      goto LABEL_23;
    case 0x11:
      v2 = &AXSwiftUITraitsRadioButton;
      goto LABEL_23;
    case 0x16:
      v2 = &AXSwiftUITraitsTabBar;
      goto LABEL_23;
    case 0x17:
      v2 = &AXSwiftUITraitsTabButton;
      goto LABEL_23;
    case 0x18:
      v2 = &AXSwiftUITraitsBackButton;
      goto LABEL_23;
    case 0x1B:
      v2 = &AXSwiftUITraitsPopupButton;
      goto LABEL_23;
    case 0x1D:
      v2 = &AXSwiftUITraitsToggle;
      goto LABEL_23;
    case 0x1E:
      v2 = &AXSwiftUITraitsMathEquation;
LABEL_23:
      result = *v2;
      break;
    default:
      return result;
  }

  return result;
}

SwiftUI::AccessibilityTrait_optional __swiftcall AccessibilityTrait.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 0;
  v3 = 14;
  switch(rawValue)
  {
    case 0uLL:
      goto LABEL_25;
    case 1uLL:
      v2 = 1;
      goto LABEL_25;
    case 2uLL:
      v2 = 2;
      goto LABEL_25;
    case 3uLL:
      v2 = 3;
      goto LABEL_25;
    case 4uLL:
      v2 = 4;
      goto LABEL_25;
    case 5uLL:
      v2 = 5;
      goto LABEL_25;
    case 6uLL:
      v2 = 6;
      goto LABEL_25;
    case 7uLL:
      v2 = 7;
      goto LABEL_25;
    case 8uLL:
      v2 = 8;
      goto LABEL_25;
    case 9uLL:
      v2 = 9;
      goto LABEL_25;
    case 0xAuLL:
      v2 = 10;
      goto LABEL_25;
    case 0xBuLL:
      v2 = 11;
      goto LABEL_25;
    case 0xCuLL:
      v2 = 12;
      goto LABEL_25;
    case 0xDuLL:
      v2 = 13;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 0xEuLL:
LABEL_26:
      *v1 = v3;
      break;
    case 0xFuLL:
      *v1 = 15;
      break;
    case 0x10uLL:
      *v1 = 16;
      break;
    case 0x11uLL:
      *v1 = 17;
      break;
    case 0x12uLL:
      *v1 = 18;
      break;
    case 0x13uLL:
      *v1 = 19;
      break;
    case 0x14uLL:
      *v1 = 20;
      break;
    case 0x15uLL:
      *v1 = 21;
      break;
    case 0x16uLL:
      *v1 = 22;
      break;
    case 0x17uLL:
      *v1 = 23;
      break;
    case 0x18uLL:
      *v1 = 24;
      break;
    case 0x19uLL:
      *v1 = 25;
      break;
    case 0x1AuLL:
      *v1 = 26;
      break;
    case 0x1BuLL:
      *v1 = 27;
      break;
    case 0x1CuLL:
      *v1 = 28;
      break;
    case 0x1DuLL:
      *v1 = 29;
      break;
    case 0x1EuLL:
      *v1 = 30;
      break;
    case 0x1FuLL:
      *v1 = 31;
      break;
    default:
      *v1 = 32;
      break;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityTrait()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityTrait(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v1);
  return Hasher._finalize()();
}

void AccessibilityTraitSet.init(traits:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = 1 << v6;
      v8 = v6 >= 0x40 ? 0 : v7;
      v9 = __CFADD__(v4, v8);
      v4 += v8;
      if (v9)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = 0;
LABEL_10:

    *a2 = v4;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityTraitSet()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityTraitSet(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v1);
  return Hasher._finalize()();
}

uint64_t *AccessibilityNullableOptionSet<>.init(adding:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t *AccessibilityNullableOptionSet<>.init(removing:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  a2[1] = v2;
  return result;
}

unsigned __int8 *AccessibilityNullableOptionSet<>.init(adding:)@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  a2[1] = v3;
  return result;
}

void AccessibilityNullableOptionSet<>.init(adding:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  AccessibilityTraitSet.init(traits:)(a1, &v4);
  v3 = v4;
  *a2 = v4;
  a2[1] = v3;
}

unsigned __int8 *AccessibilityNullableOptionSet<>.init(removing:)@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = 0;
  a2[1] = v3;
  return result;
}

void AccessibilityNullableOptionSet<>.init(removing:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  AccessibilityTraitSet.init(traits:)(a1, &v4);
  v3 = v4;
  *a2 = 0;
  a2[1] = v3;
}

BOOL AccessibilityNullableOptionSet<>.isSet(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v2;
  }

  return (v3 & ~*(v1 + 8)) == 0;
}

uint64_t AccessibilityNullableOptionSet<>.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 > 0x3F)
  {
    return 1;
  }

  v4 = 1 << v2;
  if ((*v1 & v4) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((v4 & v1[1]) == 0);
  }
}

uint64_t AccessibilityNullableOptionSet<>.subscript.setter(uint64_t result, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 0x40)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v3;
  }

  if (result == 2)
  {
    v5 = v2[1];
    if ((v5 & v4) != 0)
    {
      v2[1] = v5 & ~v4;
    }

    v6 = *v2;
    if ((*v2 & v4) == 0)
    {
      return result;
    }

LABEL_15:
    *v2 = v6 & ~v4;
    return result;
  }

  v7 = v2[1];
  if ((v4 & ~v7) != 0)
  {
    v2[1] = v7 | v4;
  }

  v6 = *v2;
  v8 = *v2 & v4;
  if ((result & 1) == 0)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v8 != v4)
  {
    *v2 = v6 | v4;
  }

  return result;
}

uint64_t (*AccessibilityNullableOptionSet<>.subscript.modify(uint64_t a1, unsigned __int8 *a2))(uint64_t a1)
{
  *a1 = v2;
  v3 = *a2;
  *(a1 + 9) = v3;
  if (v3 <= 0x3F)
  {
    v5 = 1 << v3;
    if ((*v2 & v5) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * ((v2[1] & v5) == 0);
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return AccessibilityNullableOptionSet<>.subscript.modify;
}

uint64_t AccessibilityNullableOptionSet<>.subscript.modify(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 >= 0x40)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << v1;
  }

  return specialized AccessibilityNullableOptionSet.subscript.setter(*(a1 + 8), v2);
}

uint64_t AccessibilityNullableOptionSet<>.subscript.getter(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = *a1;
  if (v3 > 0x3F)
  {
    return 1;
  }

  v5 = 1 << v3;
  if ((*v2 & v5) != 0)
  {
    return 1;
  }

  else
  {
    return ((v5 & v2[1]) == 0) & a2;
  }
}

uint64_t AccessibilityProperties.isTabBar.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 42) & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 21) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isTabBar.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 21) & 2;
    if ((*(v1 + 42) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isTabBar.modify;
}

uint64_t AccessibilityProperties.isTabButton.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 42) & 0x80) != 0)
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 22) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isTabButton.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 22) & 2;
    if ((*(v1 + 42) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isTabButton.modify;
}

uint64_t AccessibilityProperties.isBackButton.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if (*(v0 + 43))
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 23) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isBackButton.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 23) & 2;
    if (*(v1 + 43))
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isBackButton.modify;
}

uint64_t AccessibilityProperties.excludeFromItemChooser.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 43) & 2) != 0)
    {
      return 1;
    }

    else
    {
      return ~BYTE3(*(v0 + 48)) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.excludeFromItemChooser.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~BYTE3(*(v1 + 48)) & 2;
    if ((*(v1 + 43) & 2) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.excludeFromItemChooser.modify;
}

double AccessibilityProperties.isTabBar.modify(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = a3;
    v4 = &v6;
  }

  else
  {
    v7 = a3;
    v4 = &v7;
  }

  return AccessibilityProperties.subscript.setter(v3, v4);
}

void lazy protocol witness table accessor for type AccessibilityTrait and conformance AccessibilityTrait()
{
  if (!lazy protocol witness table cache variable for type AccessibilityTrait and conformance AccessibilityTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTrait, &type metadata for AccessibilityTrait, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTrait and conformance AccessibilityTrait);
  }
}

void lazy protocol witness table accessor for type [AccessibilityTrait] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [AccessibilityTrait] and conformance [A])
  {
    type metadata accessor for [AccessibilityTrait]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [AccessibilityTrait] and conformance [A]);
  }
}

void type metadata accessor for [AccessibilityTrait]()
{
  if (!lazy cache variable for type metadata for [AccessibilityTrait])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AccessibilityTrait]);
    }
  }
}

void lazy protocol witness table accessor for type AccessibilityTraitSet and conformance AccessibilityTraitSet()
{
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTraitSet, &type metadata for AccessibilityTraitSet, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTraitSet, &type metadata for AccessibilityTraitSet, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTraitSet, &type metadata for AccessibilityTraitSet, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    swift_getWitnessTable("17\ra", &type metadata for AccessibilityTraitSet, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }
}

uint64_t getEnumTagSinglePayload for AccessibilityTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LocalizedStringKey.isStyled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)(0);
  v97 = v7;
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)?, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v85 - v10;
  type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator, MEMORY[0x1E6968788]);
  v94 = v11;
  v93 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v85 - v12;
  type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>, MEMORY[0x1E6968798]);
  v101 = v13;
  v100 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v85 - v16;
  v91 = type metadata accessor for AttributedString.Runs();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v85 - v19;
  v20 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v110 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v109 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v112 = &v85 - v26;
  v116 = type metadata accessor for LocalizedStringResource();
  v27 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString();
  v119 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v121 = &v85 - v32;
  v33 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a4 + 16);
  v122 = v29;
  v123 = v41;
  if (!v41)
  {
LABEL_22:
    (*(v106 + 104))(v108, *MEMORY[0x1E6968748], v107, v38);
    (*(v110 + 104))(v111, *MEMORY[0x1E6968728], v20);

    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v70 = type metadata accessor for URL();
    v71 = *(v70 - 8);
    (*(v71 + 56))(v113, 1, 1, v70);
    v72 = v112;
    AttributedString.init(markdown:options:baseURL:)();
    v73 = v119;
    v74 = v122;
    (*(v119 + 56))(v72, 0, 1, v122);
    (*(v73 + 32))(v98, v72, v74);
    v75 = v89;
    AttributedString.runs.getter();
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v76 = v99;
    AttributedString.Runs.subscript.getter();
    (*(v90 + 8))(v75, v91);
    (*(v100 + 16))(v92, v76, v101);
    lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>, MEMORY[0x1E6968798], MEMORY[0x1E69687A0]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice2<A, B>.Iterator, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator, MEMORY[0x1E6968788], MEMORY[0x1E6968790]);
    v77 = v118;
    v78 = v94;
    dispatch thunk of IteratorProtocol.next()();
    v79 = v77;
    v80 = *(v96 + 48);
    v81 = v97;
    v82 = v80(v79, 1, v97);
    v83 = v95;
    if (v82 == 1)
    {
LABEL_28:
      (*(v93 + 8))(v120, v78);
      (*(v100 + 8))(v99, v101);
      (*(v119 + 8))(v98, v122);
      return 0;
    }

    else
    {
      v84 = (v71 + 48);
      while (1)
      {
        outlined init with take of LocalizedStringKey.FormatArgument(v79, v83, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
        if ((v83[8] & 1) == 0 && (*v83 & 0x27) != 0)
        {
          break;
        }

        if ((*v84)(&v83[*(v81 + 48)], 1, v70) != 1)
        {
          break;
        }

        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v83, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
        dispatch thunk of IteratorProtocol.next()();
        v79 = v118;
        if (v80(v118, 1, v81) == 1)
        {
          goto LABEL_28;
        }
      }

      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v83, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
      (*(v93 + 8))(v120, v78);
      (*(v100 + 8))(v99, v101);
      (*(v119 + 8))(v98, v122);
      return 1;
    }
  }

  v42 = 0;
  v43 = a4 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v124 = *(v37 + 72);
  v125 = v43;
  v104 = (v27 + 32);
  v117 = (v119 + 8);
  v103 = (v27 + 8);
  v102 = (v119 + 32);
  v88 = a2;
  v87 = a1;
  v86 = v20;
  v105 = v33;
  while (1)
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v125 + v124 * v42, v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    outlined init with copy of LocalizedStringKey.FormatArgument(v40, v35, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v54 = v121;
      v55 = v122;
      v56 = (*v102)(v121, v35, v122);
      v51 = AttributedString.isStyled.getter(v56);
      (*v117)(v54, v55);
    }

    else
    {
      v44 = v20;
      v45 = a2;
      v46 = a1;
      v47 = v115;
      v48 = v116;
      (*v104)(v115, v35, v116);
      EnvironmentValues.init()(&v127);
      v126 = v127;
      v49 = v121;
      LocalizedStringResource.resolve(in:)(&v126, v121);

      v51 = AttributedString.isStyled.getter(v50);
      (*v117)(v49, v122);
      v52 = v47;
      a1 = v46;
      a2 = v45;
      v20 = v44;
      (*v103)(v52, v48);
    }

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    if (v51)
    {
      return 1;
    }

LABEL_5:
    if (++v42 == v123)
    {
      goto LABEL_22;
    }
  }

  if (!EnumCaseMultiPayload)
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_19:
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    goto LABEL_5;
  }

  v58 = *v35;
  v57 = *(v35 + 1);
  v59 = v35[16];
  v60 = *(v35 + 3);
  if (v59 == 1 && (*&v127 = 0, ((*(*v58 + 104))(&v127) & 1) != 0))
  {
    v66 = v58;
    v67 = v57;
    v68 = 1;
  }

  else
  {
    v114 = v57;
    v61 = (v60 + 40);
    v62 = *(v60 + 16) + 1;
    do
    {
      if (!--v62)
      {
        outlined consume of Text.Storage(v58, v114, v59);

        a2 = v88;
        a1 = v87;
        v20 = v86;
        goto LABEL_19;
      }

      if ((*v61 & 0xE0) != 0xC0)
      {
        break;
      }

      v63 = v61 + 16;
      v64 = *(v61 - 1);
      *&v127 = 0;
      v65 = (*(*v64 + 80))(&v127);
      v61 = v63;
    }

    while ((v65 & 1) == 0);
    v66 = v58;
    v67 = v114;
    v68 = v59;
  }

  outlined consume of Text.Storage(v66, v67, v68);

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
  return 1;
}

uint64_t LocalizedStringKey.resolve(in:table:bundle:)(uint64_t *a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v24 = a4;
  v25 = a5;
  v14 = type metadata accessor for Text.ResolvedString(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  Text.Style.init()(v17);
  v20 = &v17[v15[7]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v17[v15[8]];
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v17[v15[9]] = 0;
  specialized LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(v17, v18, v19, 0, a2, a3, v24, v25, a6, a7, a8);
  v22 = *v21;

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for Text.ResolvedString);
  return v22;
}

void specialized LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v135 = a8;
  v132 = a5;
  v140 = a1;
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v130 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v128 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v128 - v22;
  v23 = type metadata accessor for Locale();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v128 - v29;
  if (one-time initialization token for semantic != -1)
  {
    v125 = v28;
    swift_once();
    v28 = v125;
  }

  v136 = v28;
  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v133 = a11;
  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v32 = dyld_program_sdk_at_least();
  }

  else
  {
    v32 = static Semantics.forced >= v31;
  }

  v131 = a4;
  LODWORD(v134) = a10;
  if (v32 && (a4 & 0x100) == 0)
  {
    if (a7)
    {
      v33 = a7;
    }

    else
    {
      v33 = [objc_opt_self() mainBundle];
    }

    v42 = a7;
    v43 = MEMORY[0x193ABEC20](v135, a9);
    if (a6)
    {
      v44 = MEMORY[0x193ABEC20](v132, a6);
      if (a3)
      {
LABEL_24:
        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v26);
        v45 = v136;
LABEL_40:
        isa = Locale._bridgeToObjectiveC()().super.isa;
        v137 = v24;
        v132 = *(v24 + 8);
        v132(v26, v45);
        v59 = _LocalizeAttributedString(v33, v43, v44, isa);

        if (v134)
        {
          v60 = (v140 + *(v138 + 20));
          v61 = *v60;
          v62 = v60[1];
          outlined init with copy of LocalizedStringKey.FormatArgument(v140, v130, type metadata accessor for Text.Style);
          if (a3)
          {
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);

            v64 = *&v144[0];
            v65 = v131;
            v66 = v133;
          }

          else
          {
            v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
            v65 = v131;
            v66 = v133;
            if (v63)
            {
              v64 = *(v63 + 72);
            }

            else
            {
              v64 = 0;
            }
          }

          LOBYTE(v144[0]) = v64 == 0;
          MEMORY[0x1EEE9AC00](v63);
          *(&v128 - 12) = a2;
          *(&v128 - 11) = a3;
          *(&v128 - 10) = v61;
          *(&v128 - 9) = v62;
          *(&v128 - 8) = v144;
          *(&v128 - 7) = v59;
          *(&v128 - 6) = v135;
          *(&v128 - 5) = a9;
          *(&v128 - 32) = 1;
          v97 = v130;
          *(&v128 - 3) = v66;
          v126 = v97;
          v127 = v65;
          _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)partial apply, (&v128 - 14), v66);
          LODWORD(v138) = LOBYTE(v144[0]);
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v97, type metadata accessor for Text.Style);
          v139 = a2;
          if (a3)
          {
            v98 = v128;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v128);

            v100 = v136;
            v99 = v137;
          }

          else
          {
            v101 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
            v98 = v128;
            if (v101)
            {
              v100 = v136;
              v99 = v137;
              (*(v137 + 16))(v128, &v101[*(*v101 + 248)], v136);
            }

            else
            {
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v100 = v136;
              v102 = __swift_project_value_buffer(v136, static LocaleKey.defaultValue);
              v99 = v137;
              (*(v137 + 16))(v98, v102, v100);
            }
          }

          (*(v99 + 56))(v98, 0, 1, v100);
          v103 = getVaList(_:)();

          v104 = (*(v99 + 48))(v98, 1, v100);
          v105 = v59;
          if (v104 == 1)
          {
            v106 = 0;
          }

          else
          {
            v106 = Locale._bridgeToObjectiveC()().super.isa;
            v132(v98, v100);
          }

          v107 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initSwiftUIAttributedStringWithFormat:v105 options:0 locale:v106 arguments:v103];

          v108 = specialized LocalizedStringKey.getTextArguments()(v66);
          if (*(v108 + 16))
          {
            v109 = v108;
            v110 = [v107 string];
            v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v113 = v112;

            v114 = v139;
            *&v144[0] = v139;
            *(&v144[0] + 1) = a3;
            v143[0] = v65;
            MEMORY[0x1EEE9AC00](v115);
            v116 = v140;
            *(&v128 - 6) = v107;
            *(&v128 - 5) = v116;
            *(&v128 - 4) = v114;
            *(&v128 - 3) = v117;
            LOBYTE(v127) = v138;
            MEMORY[0x1EEE9AC00](v118);
            *(&v128 - 4) = v107;
            *(&v128 - 3) = v119;
            specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v111, v113, v144, v143, v109, partial apply for specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v120, partial apply for specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), (&v128 - 6));
          }

          else
          {

            v121 = [v107 string];
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            specialized ResolvedTextContainer.append<A>(_:in:with:)(v122, v124, v139, a3);
          }

          return;
        }

        if (a3)
        {
          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);
        }

        else
        {
          _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
        }

        v67 = [v59 string];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        specialized ResolvedTextContainer.append<A>(_:in:with:)(v68, v70, a2, a3);
LABEL_49:

        return;
      }
    }

    else
    {
      v44 = 0;
      if (a3)
      {
        goto LABEL_24;
      }
    }

    v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
    if (v46)
    {
      v45 = v136;
      (*(v24 + 16))(v26, &v46[*(*v46 + 248)], v136);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v45 = v136;
      v57 = __swift_project_value_buffer(v136, static LocaleKey.defaultValue);
      (*(v24 + 16))(v26, v57, v45);
    }

    goto LABEL_40;
  }

  v34 = v24;
  if (a7)
  {
    v35 = a7;
  }

  else
  {
    v35 = [objc_opt_self() mainBundle];
  }

  v36 = a7;
  v37 = MEMORY[0x193ABEC20](v135, a9);
  if (a6)
  {
    v38 = MEMORY[0x193ABEC20](v132, a6);
    v39 = v136;
    if (a3)
    {
LABEL_17:
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v30);

      v40 = v34;
      goto LABEL_31;
    }
  }

  else
  {
    v38 = 0;
    v39 = v136;
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
  if (v41)
  {
    v40 = v34;
    (*(v34 + 16))(v30, &v41[*(*v41 + 248)], v39);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v39, static LocaleKey.defaultValue);
    v40 = v34;
    (*(v34 + 16))(v30, v47, v39);
  }

LABEL_31:
  v48 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v40 + 8))(v30, v39);
  v49 = _LocalizeString(v35, v37, v38, v48);

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if ((v134 & 1) == 0)
  {

    specialized ResolvedTextContainer.append<A>(_:in:with:)(v50, v52, a2, a3);
    goto LABEL_49;
  }

  v134 = v50;
  v135 = v52;
  v139 = a2;
  if (a3)
  {
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);

    v53 = *&v144[0];
    v54 = v129;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v129);

    v55 = v133;
  }

  else
  {
    v56 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
    v55 = v133;
    v54 = v129;
    if (v56)
    {
      v53 = v56[9];
    }

    else
    {
      v53 = 0;
    }

    v71 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
    if (v71)
    {
      (*(v34 + 16))(v54, &v71[*(*v71 + 248)], v39);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v72 = __swift_project_value_buffer(v39, static LocaleKey.defaultValue);
      (*(v34 + 16))(v54, v72, v39);
    }
  }

  v73 = v53 == 0;
  (*(v34 + 56))(v54, 0, 1, v39);
  v74 = *(v55 + 16);
  if (v74)
  {
    v145 = MEMORY[0x1E69E7CC0];

    v75 = a3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
    v76 = v145;
    v77 = *(type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8);
    v78 = v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v79 = *(v77 + 72);
    do
    {
      v80 = v137;
      outlined init with copy of LocalizedStringKey.FormatArgument(v140, v137, type metadata accessor for Text.ResolvedString);
      v81 = (v80 + *(v138 + 20));
      v82 = *v81;
      v83 = v81[1];
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v80, type metadata accessor for Text.ResolvedString);
      v143[0] = v139;
      v143[1] = v75;
      v141 = v82;
      v142 = v83;
      v84 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(v144, v143);
      v145 = v76;
      v86 = *(v76 + 16);
      v85 = *(v76 + 24);
      if (v86 >= v85 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v76 = v145;
      }

      v73 |= v84;
      *(v76 + 16) = v86 + 1;
      outlined init with take of AnyTrackedValue(v144, v76 + 40 * v86 + 32);
      v78 += v79;
      --v74;
    }

    while (v74);
    a3 = v75;

    v87 = v131;
    v55 = v133;
    v54 = v129;
  }

  else
  {
    v87 = v131;
  }

  v88 = String.init(format:locale:arguments:)();
  v90 = v89;

  _sypSgWOhTm_3(v54, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
  v91 = specialized LocalizedStringKey.getTextArguments()(v55);
  if (*(v91 + 16))
  {
    *&v144[0] = v139;
    *(&v144[0] + 1) = a3;
    v143[0] = v87;
    MEMORY[0x1EEE9AC00](v91);
    *(&v128 - 6) = v140;
    *(&v128 - 5) = v92;
    *(&v128 - 4) = v93;
    *(&v128 - 3) = v87;
    MEMORY[0x1EEE9AC00](v94);
    v127 = v87;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v88, v90, v144, v143, v95, partial apply for specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v96, partial apply for specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), (&v128 - 4));
  }

  else
  {

    specialized ResolvedTextContainer.append<A>(_:in:with:)(v88, v90, v139, a3);
  }
}

BOOL closure #1 in LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21[-2] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v17, v18, v14);
  (*(a6 + 56))(&v22, a5, a6);
  (*(v13 + 8))(v16, a5);
  v21[0] = a2;
  v21[1] = a3;
  v20 = v22;
  result = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(a7, v21);
  *a4 |= result;
  return result;
}

uint64_t closure #2 in closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)()
{
  v0 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return String.init<A>(_:)();
}

double specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v9 = String.init<A>(_:)();
  v18 = a6;
  v19 = a7;
  v11 = String.caseConvertedIfNeeded(_:)(&v18, v9, v10);
  v13 = v12;

  v18 = a6;
  v19 = a7;
  v14 = String.redactedIfNeeded(_:)(&v18, v11, v13);
  v16 = v15;

  type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x193ABEDD0](v14, v16);

  return result;
}

double specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(int a1, int a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = [a5 string];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = _NSRange.init<A, B>(_:in:)();
  v17 = [a5 attributedSubstringFromRange_];
  v18 = [v17 string];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  specialized ResolvedTextContainer.append<A>(_:in:with:)(v19, v21, a7, a8);

  return result;
}

double specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11)
{
  v15 = [a9 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v16 = _NSRange.init<A, B>(_:in:)();
  v18 = [a9 attributesAtIndex:v16 longestEffectiveRange:0 inRange:{v16, v17}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = Text.withInlinePresentationIntent(from:)(v19, a1, a2, a3 & 1, a4);
  v22 = v21;
  LOBYTE(a2) = v23;
  v25 = v24;

  specialized Text.resolve<A>(into:in:with:)(a10, a7, a8, a11, v20, v22, a2 & 1, v25);
  outlined consume of Text.Storage(v20, v22, a2 & 1);

  return result;
}

uint64_t closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues.CapitalizationContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  outlined init with copy of LocalizedStringKey.FormatArgument(a1, v4, type metadata accessor for EnvironmentValues.CapitalizationContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v4)();

    (*(v6 + 32))(v14, v11, v5);
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    v15(v14, v11, v5);
  }

  static FormatStyleCapitalizationContext.middleOfSentence.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext, MEMORY[0x1E6968F28], MEMORY[0x1E6968F40]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v18 = (v17)(v14, v5);
  if (v16)
  {
    return static FormatStyleCapitalizationContext.middleOfSentence.getter();
  }

  else
  {
    return MEMORY[0x193ABCD00](v18);
  }
}

uint64_t closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = String.subscript.getter();
  v8 = MEMORY[0x193ABED20](v7);
  v10 = v9;

  v11 = MEMORY[0x193ABEC20](a1, a2);
  v12 = MEMORY[0x193ABEC20](v8, v10);

  isa = Locale._bridgeToObjectiveC()().super.isa;
  isBeginningOfSentence = _isBeginningOfSentence(v11, v12, isa);

  if (isBeginningOfSentence)
  {

    JUMPOUT(0x193ABCD00);
  }

  return static FormatStyleCapitalizationContext.middleOfSentence.getter();
}

BOOL LocalizedStringKey.resolvesToEmpty(in:options:table:bundle:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v56) = a8;
  v54 = a3;
  v14 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = &v52 - v18;
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = a1[1];
  v57 = v23;
  if (a5)
  {
    v25 = a5;
  }

  else
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = a5;
  v27 = MEMORY[0x193ABEC20](a6, a7);
  if (a4)
  {
    v28 = MEMORY[0x193ABEC20](v54, a4);
    v29 = v20;
    if (v24)
    {
LABEL_6:

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v57, v22);

      goto LABEL_13;
    }
  }

  else
  {
    v28 = 0;
    v29 = v20;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v57);
  if (v30)
  {
    (*(v29 + 16))(v22, &v30[*(*v30 + 248)], v19);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v19, static LocaleKey.defaultValue);
    (*(v29 + 16))(v22, v31, v19);
  }

LABEL_13:
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v29 + 8))(v22, v19);
  v33 = _LocalizeString(v25, v27, v28, isa);

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v56)
  {
    if (v24)
    {

      v37 = v55;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v57, v55);
    }

    else
    {
      v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v57);
      v37 = v55;
      if (v38)
      {
        (*(v29 + 16))(v55, &v38[*(*v38 + 248)], v19);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v39 = __swift_project_value_buffer(v19, static LocaleKey.defaultValue);
        (*(v29 + 16))(v37, v39, v19);
      }
    }

    (*(v29 + 56))(v37, 0, 1, v19);
    v40 = *(a9 + 16);
    if (v40)
    {
      v54 = v36;
      v56 = v34;
      v62 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v42 = v41;
      v43 = v62;
      v44 = a9 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v45 = *(v53 + 72);
      do
      {
        outlined init with copy of LocalizedStringKey.FormatArgument(v44, v16, type metadata accessor for LocalizedStringKey.FormatArgument);
        v60[0] = v57;
        v60[1] = v24;
        v58 = v42;
        v59 = &protocol witness table for InterfaceIdiomBox<A>;
        LocalizedStringKey.FormatArgument.resolve(in:idiom:)(v61, v60);
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v16, type metadata accessor for LocalizedStringKey.FormatArgument);
        v62 = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
          v43 = v62;
        }

        *(v43 + 16) = v47 + 1;
        outlined init with take of AnyTrackedValue(v61, v43 + 40 * v47 + 32);
        v44 += v45;
        --v40;
      }

      while (v40);
      v37 = v55;
    }

    v34 = String.init(format:locale:arguments:)();
    v49 = v48;

    _sypSgWOhTm_3(v37, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
    v36 = v49;
  }

  v50 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v50 = v34 & 0xFFFFFFFFFFFFLL;
  }

  return v50 == 0;
}

uint64_t LocalizedStringKey.FormatArgument.init(value:formatter:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTrackedValue(a1, v8);
  if (a2)
  {
    [a2 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFormatter, 0x1E696AC40);
    swift_dynamicCast();
    v9 = v11[5];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = 0;
  }

  *(v8 + 5) = v9;
  swift_storeEnumTagMultiPayload();
  return outlined init with take of LocalizedStringKey.FormatArgument(v8, a3, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25[-1] - v16;
  (*(v7 + 16))(v9, a1, a3, v15);
  v25[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v25[4] = v18;
  swift_dynamicCast();
  v19 = a2;
  LocalizedStringKey.FormatArgument.init(value:formatter:)(v25, a2, v17);
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v17, v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  v20 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
  }

  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for LocalizedStringKey.FormatArgument);
  v20[2] = v22 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v13, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v3 + 16) = v20;
  return result;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23[-1] - v13;
  v23[3] = a3;
  swift_getWitnessTable(MEMORY[0x1E69E81C8], a3, v12);
  v23[4] = v15;
  v23[0] = a1;
  v16 = a2;
  v17 = a1;
  LocalizedStringKey.FormatArgument.init(value:formatter:)(v23, a2, v14);
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v14, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v18 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v14, type metadata accessor for LocalizedStringKey.FormatArgument);
  v18[2] = v20 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v10, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v3 + 16) = v18;
  return result;
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(a1, a2, a3, a4, a5, specialized Text.init<A>(_:format:));
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(a1, a2, a3, a4, a5, specialized Text.init<A>(_:format:));
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a6(a1, a2, a3, a4, a5);
  v8 = v7;
  v10 = v9;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6, v7, v9 & 1, v11);
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  return result;
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = formatSpecifier<A>(_:)(a2);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)(a1, v6, v7, a2, a3);

  return result;
}

uint64_t formatSpecifier<A>(_:)(uint64_t a1)
{
  v1 = 1684827173;
  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      return 25637;
    }

    else
    {
      v1 = 1970039845;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
        {
          return 29989;
        }

        else if (swift_dynamicCastMetatype())
        {
          return 26149;
        }

        else
        {
          v1 = 6712357;
          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            return 16421;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v9, v6, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v9, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11[2] = v13 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v1 + 16) = v11;
  return result;
}

{
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v9, v6);
  v11 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  outlined destroy of LocalizedStringKey.FormatArgument(v9, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11[2] = v13 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
  *(v1 + 16) = v11;
  return result;
}

double LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v2._countAndFlagsBits = String.init<A>(describing:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2);

  return result;
}

void *protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance LocalizedStringKey.StringInterpolation@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[3] = 0;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(result, 2 * a2);
    result = (result + 2 * a2);
    if (!v5)
    {
      MEMORY[0x193ABED40](result);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
      a3[2] = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

double protocol witness for StringInterpolationProtocol.appendLiteral(_:) in conformance LocalizedStringKey.StringInterpolation(void *a1)
{
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v1);

  return result;
}

uint64_t static LocalizedStringKey.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((a3 ^ a7))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(a4, a8);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalizedStringKey(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(v3, v5);
}

void *protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance LocalizedStringKey@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  *(a2 + 24) = v3;
  return result;
}

BOOL LocalizedTextStorage.resolvesToEmpty(in:with:)(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *a1;
  return LocalizedStringKey.resolvesToEmpty(in:options:table:bundle:)(&v7, a2, *(v2 + 48), *(v2 + 56), *(v2 + 64), v3, v4, v5, *(v2 + 40));
}

void LocalizedTextStorage.__ivar_destroyer()
{

  v1 = *(v0 + 64);
}

float protocol witness for _FormatSpecifiable._arg.getter in conformance Float@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a4;
  v14 = a4[1];
  v16 = *a5;
  v17 = specialized LocalizedStringKey.getTextArguments()(a7);
  if (*(v17 + 16))
  {
    v26 = v15;
    v27 = v14;
    v25[0] = v16;
    MEMORY[0x1EEE9AC00](v17);
    v22[8] = a8;
    v22[9] = a9;
    v22[10] = a3;
    v22[11] = v15;
    v22[12] = v14;
    v22[13] = v16;
    v23 = a6 & 1;
    MEMORY[0x1EEE9AC00](v18);
    v22[2] = a8;
    v22[3] = a9;
    v22[4] = a3;
    v22[5] = v16;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(a1, a2, &v26, v25, v19, partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v20, partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v22);
  }

  else
  {

    v26 = a1;
    v27 = a2;
    v25[0] = v15;
    v25[1] = v14;
    v24 = v16;
    lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v26, v25, &v24, a8, MEMORY[0x1E69E6158], a9, v21);
  }
}

void lazy protocol witness table accessor for type LocalizedStringKey and conformance LocalizedStringKey()
{
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for LocalizedStringKey, &type metadata for LocalizedStringKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for LocalizedStringKey, &type metadata for LocalizedStringKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for LocalizedStringKey, &type metadata for LocalizedStringKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }
}

void lazy protocol witness table accessor for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation()
{
  if (!lazy protocol witness table cache variable for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation)
  {
    swift_getWitnessTable(protocol conformance descriptor for LocalizedStringKey.StringInterpolation, &type metadata for LocalizedStringKey.StringInterpolation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation);
  }
}

uint64_t initializeWithCopy for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for LocalizedStringKey.FormatArgument(unint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v4 + 16) & ~v4);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = type metadata accessor for AttributedString();
      }

      else
      {
        v10 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }

    else if (EnumCaseMultiPayload)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v12, v13);
      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v13;
      v14 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v14;
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
  }

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = type metadata accessor for AttributedString();
      }

      else
      {
        v8 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v10, v11);
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      v7 = v6;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for LocalizedStringKey.FormatArgument(void *a1, const void *a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for LocalizedStringResource();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithTake for LocalizedStringKey.FormatArgument(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for LocalizedStringResource();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

double destroy for LocalizedStringKey.StringInterpolation(uint64_t a1)
{

  return result;
}

void *initializeWithCopy for LocalizedStringKey.StringInterpolation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for LocalizedStringKey.StringInterpolation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for LocalizedStringKey.StringInterpolation(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  a1[3] = *(a2 + 24);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for LocalizedStringKey.FormatArgument.Storage(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v11 = type metadata accessor for AttributedString();
      }

      else
      {
        v11 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v11 - 8) + 16))(a1, a2, v11);
    }

    else if (EnumCaseMultiPayload)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v13, v14);
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      v15 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v15;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 40);
      *(a1 + 40) = v8;
      v9 = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
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
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      v8 = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for LocalizedStringKey.FormatArgument.Storage(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for LocalizedStringResource();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for LocalizedStringKey.FormatArgument.Storage(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for LocalizedStringResource();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>))
  {
    type metadata accessor for NSInlinePresentationIntent?(255, &lazy cache variable for type metadata for NSInlinePresentationIntent?, type metadata accessor for NSInlinePresentationIntent);
    type metadata accessor for NSInlinePresentationIntent?(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    type metadata accessor for Range<AttributedString.Index>(255, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
    }
  }
}

void lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69684F8], MEMORY[0x1E6968508], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }
}

void lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E6968510], MEMORY[0x1E6968518], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }
}

void type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v7 = v6;
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v11[0] = MEMORY[0x1E6968508];
    v11[1] = MEMORY[0x1E6968518];
    v11[2] = v7;
    v11[3] = v8;
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  if (!*a1)
  {
    v4 = type metadata accessor for CAMediaTimingFunction(255, a2, a3);
    swift_getWitnessTable(MEMORY[0x1E69E81C8], v4);
    atomic_store(v5, a1);
  }
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)();
}

uint64_t partial apply for closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)()
{
  type metadata accessor for Locale();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v2, v3, v4, v5, v1);
}

uint64_t partial apply for closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)()
{
  v1 = *(type metadata accessor for EnvironmentValues.CapitalizationContext(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v2);
}

void lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute)
  {
    swift_getWitnessTable(MEMORY[0x1E69683E0], MEMORY[0x1E69683E8], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute);
  }
}

uint64_t partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v12[0] = a1;
  v12[1] = a2;
  v11 = *(v2 + 40);
  v10 = v5;
  v7 = *(v4 + 64);
  lazy protocol witness table accessor for type String and conformance String();
  return v7(v12, &v11, &v10, v6, MEMORY[0x1E69E6158], v8, v3, v4);
}

uint64_t partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v16 = *a7;
  v15 = v13;
  return Text.resolve<A>(into:in:with:)(v12, &v16, &v15, a1, a2, a3 & 1, a4, v10, v11);
}

void lazy protocol witness table accessor for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token()
{
  if (!lazy protocol witness table cache variable for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token)
  {
    swift_getWitnessTable(protocol conformance descriptor for LocalizedStringKey.FormatArgument.Token, &type metadata for LocalizedStringKey.FormatArgument.Token, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token);
  }
}

uint64_t DebugReplaceableView.init<A>(_erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *(v8 + 16);
  v13(v18 - v14, a1, a2, v12);
  if (swift_dynamicCast())
  {
    v16 = v18[1];
  }

  else
  {
    type metadata accessor for DebugReplaceableViewStorage(0, a2, a3, v15);
    (v13)(v10, a1, a2);
    v16 = _AnyMaterialCustomFillProvider.__allocating_init(_:)(v10);
  }

  result = (*(v8 + 8))(a1, a2);
  *a4 = v16;
  return result;
}

uint64_t DebugReplaceableView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  DebugReplaceableView.init<A>(_erasing:)(v11, a2, a3, &v14);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v14;
  return result;
}

uint64_t static DebugReplaceableView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5(v3, v7, a3);
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *&v21[48] = *(a2 + 48);
  *&v21[64] = v6;
  *&v21[80] = *(a2 + 80);
  v7 = *(a2 + 16);
  *v21 = *a2;
  *&v21[16] = v7;
  *&v21[32] = v5;
  _ViewInputs.makeIndirectOutputs()(v27);
  v8 = *v27;
  v9 = *&v27[8];
  v10 = *&v27[12];
  v11 = *(a2 + 48);
  *&v27[36] = *(a2 + 32);
  *&v27[52] = v11;
  *&v27[68] = *(a2 + 64);
  v12 = *(a2 + 16);
  *&v27[4] = *a2;
  *&v27[84] = *(a2 + 80);
  *&v27[20] = v12;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  *v21 = a1;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

  outlined init with copy of _ViewInputs(a2, v20);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>.Value, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer.Value);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  v15 = v9;
  lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewContainer<DebugReplaceableView> and conformance DynamicViewContainer<A>, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, type metadata accessor for DynamicViewContainer, protocol conformance descriptor for DynamicViewContainer<A>);
  Attribute.init<A>(body:value:flags:update:)();
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  *v21 = a1;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v14;
  outlined destroy of DynamicViewList<AnyView>(v21, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  result = AGGraphSetFlags();
  v17 = *(v8 + 16);
  if (v17)
  {
    v18 = v8 + 48;
    do
    {
      v18 += 24;
      result = AGGraphSetIndirectDependency();
      --v17;
    }

    while (v17);
  }

  if (v10 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a3 = v8;
  *(a3 + 8) = v15;
  *(a3 + 12) = v10;
  return result;
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA016DebugReplaceableD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[20] = *MEMORY[0x1E69E9840];
  v9 = a1;
  outlined init with copy of _ViewListInputs(a2, v10);
  v5 = AGSubgraphGetCurrent();
  if (!v5)
  {
    __break(1u);
  }

  v10[17] = v5;
  type metadata accessor for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>(0, &lazy cache variable for type metadata for MutableBox<[Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]>, type metadata accessor for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v10[18] = v6;
  v10[19] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ViewList();
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, type metadata accessor for DynamicViewList, protocol conformance descriptor for DynamicViewList<A>);
  v7 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of DynamicViewList<AnyView>(&v9, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

uint64_t static DebugReplaceableView._viewListCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(a1 + 64) == 1 && v1 != 0)
  {
    *v1 = 1;
  }

  return 0;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DebugReplaceableView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5(v3, v7, a3);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance DebugReplaceableView(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(a1 + 64) == 1 && v1 != 0)
  {
    *v1 = 1;
  }

  return 0;
}

uint64_t DebugReplaceableView.childInfo(metadata:)(uint64_t a1)
{
  result = (*(**v1 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t DebugReplaceableView.makeChildView(metadata:view:inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return (*(**v2 + 88))(a1, v6);
}

uint64_t protocol witness for DynamicView.childInfo(metadata:) in conformance DebugReplaceableView(uint64_t a1)
{
  result = (*(**v1 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t protocol witness for DynamicView.makeChildView(metadata:view:inputs:) in conformance DebugReplaceableView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v7[2] = *(a3 + 32);
  v7[3] = v4;
  v7[4] = *(a3 + 64);
  v8 = *(a3 + 80);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  return (*(**v3 + 88))(a2, v7);
}

void *DebugReplaceableViewStorage.makeChildView(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *v3;
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v70 = *(a2 + 32);
  v71 = v7;
  v9 = *(a2 + 48);
  v72 = *(a2 + 64);
  v10 = *(a2 + 16);
  v69[0] = *a2;
  v69[1] = v10;
  v65 = v70;
  v66 = v9;
  v67 = *(a2 + 64);
  v73 = *(a2 + 80);
  v68 = *(a2 + 80);
  v63 = v69[0];
  v64 = v8;
  v11 = v6;
  v12 = *(v5 + 128);
  v37 = a3;
  if ((WORD2(v70) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(v69, &v57);
    AGTypeGetSignature();
    v13 = specialized _GraphInputs.pushScope<A>(id:)(v57, *(&v57 + 1), v58);
  }

  else
  {
    v13 = outlined init with copy of _ViewInputs(v69, &v57);
  }

  v14 = *(v11 + 136);
  LODWORD(v57) = a1;
  MEMORY[0x1EEE9AC00](v13);
  v33 = v12;
  v34 = type metadata accessor for DebugReplaceableViewChild(0, v12, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for DebugReplaceableViewChild<A>, v34);
  v35 = v16;
  v17 = type metadata accessor for Attribute();
  v18 = MEMORY[0x1E69E73E0];
  v19 = MEMORY[0x1E69E7410];
  v21 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, &v32, v34, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v20);
  v22 = LODWORD(v55[0]);
  MEMORY[0x1EEE9AC00](v21);
  v35 = v12;
  v36 = v22;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v23, closure #1 in Attribute.setValue(_:)partial apply, &v33, v12, v18, MEMORY[0x1E69E6370], v19, v24);
  _GraphValue.init(_:)(v22, v38);
  v25 = v38[0];
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v47 = v57;
  v48 = v58;
  v27 = v59;
  LODWORD(v49) = 0;
  LODWORD(v39[0]) = v25;
  v53[0] = v57;
  v53[1] = v58;
  v54 = v62;
  v53[3] = v60;
  v53[4] = v61;
  v53[2] = v49;
  v43 = v49;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v41 = v57;
  v42 = v58;
  v28 = *(v14 + 24);
  outlined init with copy of _ViewInputs(&v57, v55);
  outlined init with copy of _ViewInputs(v53, v55);
  v29 = v14;
  v30 = v37;
  v28(v39, &v41, v12, v29);
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56 = v46;
  v55[0] = v41;
  v55[1] = v42;
  outlined destroy of _ViewInputs(v55);
  LODWORD(v49) = v27;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v30, &v47);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v49;
  v39[3] = v50;
  v39[4] = v51;
  v40 = v52;
  v39[0] = v47;
  v39[1] = v48;
  outlined destroy of _ViewInputs(v39);
  v43 = v65;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v41 = v63;
  v42 = v64;
  return outlined destroy of _ViewInputs(&v41);
}

double DebugReplaceableViewStorage.makeChildViewList(view:inputs:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *v3;
  v8 = outlined init with copy of _ViewListInputs(a2, v42);
  v9 = *(v6 + 128);
  if (v42[37])
  {
    AGTypeGetSignature();
    v8 = specialized _GraphInputs.pushScope<A>(id:)(v38, *(&v38 + 1), LODWORD(v39[0]));
  }

  v10 = *(v7 + 136);
  LODWORD(v38) = a1;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v9;
  v35 = type metadata accessor for DebugReplaceableViewChild(0, v9, v10, v11);
  swift_getWitnessTable(protocol conformance descriptor for DebugReplaceableViewChild<A>, v35);
  v36 = v12;
  v13 = type metadata accessor for Attribute();
  v14 = MEMORY[0x1E69E73E0];
  v15 = MEMORY[0x1E69E7410];
  v17 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v33, v35, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
  v18 = LODWORD(v41[0]);
  MEMORY[0x1EEE9AC00](v17);
  v36 = v9;
  v37 = v18;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v19, partial apply for closure #1 in Attribute.setValue(_:), &v34, v9, v14, MEMORY[0x1E69E6370], v15, v20);
  _GraphValue.init(_:)(v18, &v38);
  v21 = v38;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v41[0]) = v21;
  (*(v10 + 32))(v41, v42, v9, v10);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v21, v9, v10);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    outlined destroy of _ViewListInputs(v42);
    return result;
  }

  v23 = Strong;
  swift_beginAccess();
  if ((*(v23 + 24) & 1) == 0)
  {
    v25 = *(v23 + 16);
    if (*(a3 + 64))
    {
      outlined init with copy of _ViewListInputs(v42, &v38);
      v26 = v38;
      v27 = DWORD1(v39[1]);
      v28 = *(&v39[2] + 1);

      outlined destroy of _ViewListInputs(&v38);
      *&v38 = v26;
      *(&v38 + 1) = v28;
      LODWORD(v39[0]) = v27;
      *(v39 + 8) = 0u;
      *(&v39[1] + 8) = 0u;
      BYTE8(v39[2]) = 0;
      LOBYTE(v40) = 0;
      *(&v40 + 1) = 0;
      v29 = (*(v10 + 40))(&v38, v9, v10);
      v31 = v30;
      v41[2] = v39[1];
      v41[3] = v39[2];
      v41[4] = v40;
      v41[0] = v38;
      v41[1] = v39[0];
      outlined destroy of _ViewListCountInputs(v41);
      outlined destroy of _ViewListInputs(v42);
      if (v31)
      {
        *(v23 + 16) = v29;
        *(v23 + 24) = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v29 = *(a3 + 56);
      outlined destroy of _ViewListInputs(v42);
      v32 = v25 + v29;
      if (!__OFADD__(v25, v29))
      {
LABEL_16:
        *(v23 + 16) = v32;
        *(v23 + 24) = 0;
        goto LABEL_17;
      }

      __break(1u);
    }

    v32 = v25 + v29;
    if (__OFADD__(v25, v29))
    {
      __break(1u);
    }

    goto LABEL_16;
  }

  outlined destroy of _ViewListInputs(v42);
LABEL_17:

  return result;
}

double DebugReplaceableViewChild.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AGGraphGetValue();
  type metadata accessor for DebugReplaceableViewStorage(0, v2, v3, v4);

  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(*v5 + 144);
  v10[2] = a1;
  swift_getWitnessTable(protocol conformance descriptor for DebugReplaceableViewChild<A>, a1);
  v10[3] = v7;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5 + v6, partial apply for closure #1 in StatefulRule.value.setter, v10, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DebugReplaceableViewChild<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for DebugReplaceableViewChild<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void type metadata accessor for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>])
  {
    type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(255, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.Item, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]);
    }
  }
}

void lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for DynamicViewList<AnyView>.Item(255, a2, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

id PlatformTextRepresentableContext.text.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

double key path setter for _ViewInputs.requestedTextRepresentation : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.requestedTextRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_ViewInputs.requestedTextRepresentation.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedTextRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedTextRepresentation.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedTextRepresentation.modify;
}

void _ViewInputs.requestedTextRepresentation.modify(uint64_t ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void lazy protocol witness table accessor for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions()
{
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformTextRepresentationOptions, &type metadata for PlatformTextRepresentationOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformTextRepresentationOptions, &type metadata for PlatformTextRepresentationOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformTextRepresentationOptions, &type metadata for PlatformTextRepresentationOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for PlatformTextRepresentationOptions, &type metadata for PlatformTextRepresentationOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }
}

void **assignWithTake for PlatformTextRepresentableContext(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

double CoreInteractionRepresentableFeatureBufferProxy.base.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

double CoreInteractionRepresentableFeatureBufferProxy.base.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

uint64_t CoreInteractionRepresentableInteractionsProxy.Interaction.base.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t View.coreInteractionRepresentable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[2] = a4;
  v19[1] = a2;
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v20[0] = a3;
  v20[1] = MEMORY[0x1E69E6530];
  v11 = MEMORY[0x1E69E6540];
  v20[2] = a5;
  v20[3] = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CoreInteractionRepresentableModifier(0, v20);
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - v15;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v10, a1, a3, v14);
  (*(v17 + 56))(v10, 0, 1, a3);
  v20[0] = -1;
  CoreInteractionRepresentableModifier.init(representable:id:)(v10, v20, a3, MEMORY[0x1E69E6530], a5, v11, v16);
  View.modifier<A>(_:)();
  return (*(v13 + 8))(v16, v12);
}

uint64_t CoreInteractionRepresentableModifier.init(representable:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for CoreInteractionRepresentableModifier(0, v17);
  return (*(*(a4 - 8) + 32))(a7 + *(v15 + 52), a2, a4);
}

void CoreInteractionView.coreRemoveInteraction(_:)(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Expected implementation of coreRemoveInteraction", 48, 2, MEMORY[0x1E69E7CC0]);
}

{
  v1 = static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Expected implementation of coreRemoveInteraction", 48, 2, MEMORY[0x1E69E7CC0]);
}

void CoreInteractionView.coreSetParentGestureContainerProxy(_:)(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Expected implementation of coreSetParentGestureContainerProxy", 61, 2, MEMORY[0x1E69E7CC0]);
}

{
  v1 = static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)(v1, &dword_18D018000, v2, "Expected implementation of coreSetParentGestureContainerProxy", 61, 2, MEMORY[0x1E69E7CC0]);
}

uint64_t CoreInteractionViewParentGestureContainerProxy.parentGestureContainer.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    Strong = swift_weakLoadStrong();
    v6 = (*(v4 + 24))(v2, Strong, v3, v4);

    return v6;
  }

  return result;
}

uint64_t CoreInteractionRepresentableEffect.representable.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t CoreInteractionRepresentableEffect.representable.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

double CoreInteractionRepresentableEffect.interactions.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 36));

  return result;
}

void CoreInteractionRepresentableEffect.interactions.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);

  *(v2 + v4) = v3;
}

uint64_t CoreInteractionRepresentableEffect.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

uint64_t CoreInteractionRepresentableEffect.init(representable:interactions:view:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for CoreInteractionRepresentableEffect(0, a4, a5, v13);
  *(a6 + *(result + 36)) = v11;
  *(a6 + *(result + 40)) = a3;
  return result;
}

double CoreInteractionRepresentableEffect.makePlatformGroup()(uint64_t a1)
{
  specialized CoreInteractionRepresentableEffect.makePlatformGroup()(a1);

  swift_unknownObjectRetain();
  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v16[0]);
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
  v15 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v15);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, __n128 a7)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v12 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v12);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v76 = a3;
  v77 = a4;
  v131 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 48);
  v127 = *(a2 + 32);
  v128 = v15;
  v129 = *(a2 + 64);
  v130 = *(a2 + 80);
  v16 = *(a2 + 16);
  v125 = *a2;
  v126 = v16;
  v17 = v15;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v15) & 1) == 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v17) & 1) == 0)
  {
    v19 = *(a2 + 48);
    v85 = *(a2 + 32);
    v86 = v19;
    v87 = *(a2 + 64);
    v88 = *(a2 + 80);
    v20 = *(a2 + 16);
    v83 = *a2;
    v84 = v20;
    return v76();
  }

  v124 = 0uLL;
  (*(a7 + 24))(&v124, a5, a7);
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #1 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1, a5, a6, a7, a8, v18);
  }

  LODWORD(v72) = AGGraphCreateOffsetAttribute2();
  v23 = *(*(a6 - 8) + 64);
  v71 = a9;
  if (v23)
  {
    closure #2 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1, a5, a6, a7, a8, v22);
  }

  v24 = a6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v74 = v125;
  v26 = v124;
  v73 = HIDWORD(v124);
  v75 = &v66;
  *&v83 = __PAIR64__(OffsetAttribute2, v72);
  DWORD2(v83) = DWORD2(v126);
  v84 = v124;
  *&v85 = AnyCoreInteractionHelper.init<A, B>(for:idType:)(OffsetAttribute2, v27, a5, v24, a7, a8);
  MEMORY[0x1EEE9AC00](v85);
  v63 = type metadata accessor for CoreInteractionRepresentableEffect(0, a5, a7, v28);
  *&v119 = a5;
  v69 = v24;
  v70 = a8;
  *(&v119 + 1) = v24;
  *&v120 = a7;
  *(&v120 + 1) = a8;
  v64 = type metadata accessor for CoreInteractionEffect(0, &v119);
  swift_getWitnessTable(protocol conformance descriptor for CoreInteractionEffect<A, B>, v64);
  v65 = v29;
  v72 = v63;
  v30 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v83, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v62, v64, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);

  LODWORD(v75) = v119;
  CoreInteractionRepresentableFeatureProxy.init(base:)(v119, &v83);
  v32 = v83;
  v74 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v74);
  v67 = v33;
  v68 = 0;
  v121 = v127;
  v122[0] = v128;
  v122[1] = v129;
  v123 = v130;
  v119 = v125;
  v120 = v126;
  result = outlined init with copy of _ViewInputs(&v125, &v83);
  v34 = v73;
  if (v73)
  {
    if (!v26)
    {
      __break(1u);
      goto LABEL_41;
    }

    v35 = 0;
    v36 = v73 - 1;
    do
    {
      v38 = v26 + v35;
      if (v36)
      {
        v35 += *(v38 + 8);
      }

      else
      {
        v35 = 0;
      }

      v37 = v36 | v35;
      *&v83 = v38;
      LODWORD(v113) = v32;
      CoreInteractionRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(&v119, &v113, a5, a7);
      --v36;
    }

    while (v37);
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*&v122[0]) & 1) != 0 && v74)
  {
    *&v83 = *(v122 + 12);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform();
    HIDWORD(v122[0]) = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v121) = v121 | 4;
  }

  v39 = v72;
  _GraphValue.init(_:)(v75, &v79);
  v40 = v79;
  v115 = v121;
  v116 = v122[0];
  v117 = v122[1];
  v118 = v123;
  v113 = v119;
  v114 = v120;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v105 = v115;
  v106 = v116;
  v107 = v117;
  v108 = v118;
  v103 = v113;
  v104 = v114;
  v42 = v115;
  LODWORD(v105) = 0;
  LODWORD(v101[0]) = v40;
  v109[0] = v113;
  v109[1] = v114;
  v110 = v118;
  v109[3] = v116;
  v109[4] = v117;
  v109[2] = v105;
  v85 = v105;
  v86 = v116;
  v87 = v117;
  v88 = v118;
  v83 = v113;
  v84 = v114;
  outlined init with copy of _ViewInputs(&v113, v111);
  outlined init with copy of _ViewInputs(v109, v111);
  swift_getWitnessTable(protocol conformance descriptor for CoreInteractionRepresentableEffect<A>, v39);
  static RendererEffect._makeView(modifier:inputs:body:)(v101, &v83, v76, v77, v39, v43, v80);
  v111[2] = v85;
  v111[3] = v86;
  v111[4] = v87;
  v112 = v88;
  v111[0] = v83;
  v111[1] = v84;
  outlined destroy of _ViewInputs(v111);
  LODWORD(v105) = v42;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v80, &v103);
    AGSubgraphEndTreeElement();
  }

  v101[2] = v105;
  v101[3] = v106;
  v101[4] = v107;
  v102 = v108;
  v101[0] = v103;
  v101[1] = v104;
  result = outlined destroy of _ViewInputs(v101);
  if (!v34)
  {
    goto LABEL_29;
  }

  if (!v26)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v44 = 0;
  v45 = v34 - 1;
  do
  {
    v47 = v26 + v44;
    if (v45)
    {
      v44 += *(v47 + 8);
    }

    else
    {
      v44 = 0;
    }

    v46 = v45 | v44;
    *&v81[0] = v47;
    v97 = v121;
    v98 = v122[0];
    v99 = v122[1];
    v100 = v123;
    v95 = v119;
    v96 = v120;
    v91 = v121;
    v92 = v122[0];
    v93 = v122[1];
    v94 = v123;
    v89 = v119;
    v90 = v120;
    v78 = v32;
    outlined init with copy of _ViewInputs(&v95, &v83);
    CoreInteractionRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(inputs:outputs:proxy:)(&v89, v80, &v78, a5, a7);
    v85 = v91;
    v86 = v92;
    v87 = v93;
    v88 = v94;
    v83 = v89;
    v84 = v90;
    outlined destroy of _ViewInputs(&v83);
    --v45;
  }

  while (v46);
LABEL_29:
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*&v122[0]))
  {
    v48 = specialized static GestureContainerFeature.isEnabled.getter();
    v49 = v71;
    if ((v48 & 1) != 0 && v74)
    {
      closure #3 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1, a5, v69, a7);
      v50 = AGGraphCreateOffsetAttribute2();
      v97 = v121;
      v98 = v122[0];
      v99 = v122[1];
      v100 = v123;
      v95 = v119;
      v96 = v120;
      v91 = v121;
      v92 = v122[0];
      v93 = v122[1];
      v94 = v123;
      v89 = v119;
      v90 = v120;
      v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v80[0]);
      if ((v51 & 0x100000000) != 0)
      {
        outlined init with copy of _ViewInputs(&v95, &v83);
        specialized static GraphHost.currentHost.getter();
        type metadata accessor for ViewGraph();
        swift_dynamicCastClassUnconditional();
        type metadata accessor for [ViewResponder](0);
        v52 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v54, 0);
      }

      else
      {
        v52 = v51;
        outlined init with copy of _ViewInputs(&v95, &v83);
      }

      v55 = CoreInteractionResponderFilter.init(inputs:responderProvider:view:children:)(&v89, v74, v67, v50, v52, &v83);
      MEMORY[0x1EEE9AC00](v55);
      v57 = type metadata accessor for CoreInteractionResponderFilter(0, a5, a7, v56);
      *&v62[-16] = v57;
      swift_getWitnessTable(protocol conformance descriptor for CoreInteractionResponderFilter<A>, v57);
      *&v62[-8] = v58;
      _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v83, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v62[-32], v57, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v60);
      v61 = LODWORD(v81[0]);
      LOBYTE(v81[0]) = 0;
      PreferencesOutputs.subscript.setter(v61, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      (*(*(v57 - 8) + 8))(&v83, v57);
      v81[2] = v121;
      v81[3] = v122[0];
      v81[4] = v122[1];
      v82 = v123;
      v81[0] = v119;
      v81[1] = v120;
      v53 = v81;
    }

    else
    {
      v85 = v121;
      v86 = v122[0];
      v87 = v122[1];
      v88 = v123;
      v83 = v119;
      v84 = v120;
      v53 = &v83;
    }

    result = outlined destroy of _ViewInputs(v53);
  }

  else
  {
    v85 = v121;
    v86 = v122[0];
    v87 = v122[1];
    v88 = v123;
    v83 = v119;
    v84 = v120;
    result = outlined destroy of _ViewInputs(&v83);
    v49 = v71;
  }

  *v49 = v80[0];
  v49[1] = v80[1];
  return result;
}

uint64_t closure #1 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v10[2] = type metadata accessor for CoreInteractionRepresentableModifier(0, v12);
  v11 = type metadata accessor for Optional();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v11, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v12[0];
}

uint64_t closure #2 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v8 = type metadata accessor for CoreInteractionRepresentableModifier(0, v14);
  v9 = *(v8 + 52);
  v13[2] = v8;
  v13[3] = a3;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14[0];
}

uint64_t closure #3 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CoreInteractionRepresentableEffect(0, a2, a4, a4);
  v6 = *(v5 + 40);
  v10[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, partial apply for closure #1 in static PointerOffset.of(_:), v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v12;
}

void *CoreInteractionResponderFilter.init(inputs:responderProvider:view:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v12;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v13 = *(a1 + 16);
  v31 = *a1;
  v32 = v13;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *a6 = result;
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_weakInit();

    v15 = *(a1 + 16);
    *(a6 + 40) = *(a1 + 32);
    v16 = *(a1 + 32);
    *(a6 + 56) = *(a1 + 48);
    v17 = *(a1 + 48);
    *(a6 + 72) = *(a1 + 64);
    v18 = *(a1 + 16);
    *(a6 + 8) = *a1;
    v19 = *a1;
    *(a6 + 24) = v18;
    v27 = v16;
    v28 = v17;
    v29 = *(a1 + 64);
    *(a6 + 144) = 0;
    *(a6 + 152) = 0;
    *(a6 + 88) = *(a1 + 80);
    *(a6 + 96) = a2;
    *(a6 + 104) = a3;
    *(a6 + 112) = a4;
    v30 = *(a1 + 80);
    v25 = v19;
    v26 = v15;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(&v31, &v24);
    *(a6 + 116) = CachedEnvironment.animatedPosition(for:)(&v25);
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v20 = CachedEnvironment.animatedSize(for:)(&v25);
    swift_endAccess();
    v21 = HIDWORD(v34);
    *(a6 + 120) = v20;
    *(a6 + 124) = v21;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22, closure #1 in _GraphInputs.layoutDirection.getter, 0);
    swift_endAccess();
    result = outlined destroy of _ViewInputs(&v31);
    *(a6 + 128) = v23;
    *(a6 + 132) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreInteractionEffect.representable.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CoreInteractionEffect<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for CoreInteractionRepresentableEffect(0, *(a1 + 16), *(a1 + 32), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

void _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, unsigned int *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v163 = a7;
  v164 = a8;
  LODWORD(v144) = a4;
  v160 = a3;
  v150 = a2;
  v152 = a1;
  v157 = *v9;
  v12 = v157;
  v13 = v157[15];
  v162 = v157[17];
  v141 = type metadata accessor for CoreInteractionRepresentableEffect(255, v13, v162, a4);
  v14 = type metadata accessor for Optional();
  v143 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v122 - v15;
  v16 = type metadata accessor for Optional();
  v149 = type metadata accessor for UncheckedSendable(0, v16, v17, v18);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v155 = &v122 - v19;
  v20 = v12[16];
  v21 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v151 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v158 = *(v20 - 1);
  v26 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v156 = v16;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v122 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v122 - v44;
  v161 = v13;
  if (__PAIR128__(v20, v13) == __PAIR128__(a6, a5))
  {
    v123 = v41;
    v139 = v40;
    v128 = v39;
    v129 = v38;
    v140 = v35;
    v147 = v36;
    v133 = v37;
    v134 = v21;
    v131 = v43;
    v146 = v42;
    v127 = v14;
    v153 = *v160;
    MEMORY[0x1EEE9AC00](v35);
    v160 = v45;
    v46 = v161;
    *(&v122 - 8) = v161;
    *(&v122 - 7) = v20;
    *(&v122 - 6) = a5;
    *(&v122 - 5) = v47;
    v48 = v157[18];
    *(&v122 - 4) = v162;
    *(&v122 - 3) = v48;
    v154 = v47;
    v157 = v20;
    v49 = a5;
    v50 = v164;
    *(&v122 - 2) = v163;
    *(&v122 - 1) = v50;
    type metadata accessor for Optional();
    v51 = v159;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v122 - 10), MEMORY[0x1E69E73E0], v46, v52, v159);
    v53 = *(*v9 + 184);
    swift_beginAccess();
    v54 = *(v160 + 2);
    v132 = v53;
    v55 = v156;
    v137 = v160 + 4;
    v145 = v54;
    v56 = (v54)(v33, v9 + v53, v156);
    v136 = &v122;
    MEMORY[0x1EEE9AC00](v56);
    *(&v122 - 10) = v46;
    v57 = v160;
    *(&v122 - 9) = v157;
    *(&v122 - 8) = v49;
    v138 = v49;
    v58 = v154;
    *(&v122 - 7) = v154;
    *(&v122 - 6) = v162;
    *(&v122 - 5) = v48;
    v130 = v48;
    v59 = v164;
    *(&v122 - 4) = v163;
    *(&v122 - 3) = v59;
    *(&v122 - 2) = v51;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v122 - 12), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v60, v167);
    v62 = *(v57 + 1);
    v61 = v57 + 2;
    v135 = v33;
    v152 = v62;
    v62(v33, v55);
    v63 = v9 + *(*v9 + 200);
    if (*(v63 + 4))
    {
      v64 = 1;
    }

    else
    {
      v64 = (v153 != *v63) | v144;
    }

    v65 = v158;
    if (*(*(v58 - 8) + 64) != v26)
    {
      __break(1u);
      goto LABEL_32;
    }

    v124 = v64;
    v125 = v167[0] == 2;
    v126 = v167[0];
    v136 = 0;
    v160 = v61;
    v66 = *(v158 + 16);
    v67 = v146;
    v68 = v157;
    v66(v146, v150, v157);
    v69 = v139;
    v66(v139, v67, v68);
    (*(v65 + 56))(v69, 0, 1, v68);
    v70 = *(*v9 + 192);
    swift_beginAccess();
    v71 = *(v140 + 48);
    v72 = *(v147 + 16);
    v73 = v151;
    v74 = v134;
    v72(v151, v69, v134);
    v144 = v71;
    v150 = v9;
    v75 = v9 + v70;
    v76 = v68;
    v72(&v73[v71], v75, v74);
    v77 = *(v65 + 48);
    if (v77(v73, 1, v68) == 1)
    {
      v78 = *(v147 + 8);
      v78(v69, v74);
      v79 = v77(&v73[v144], 1, v68);
      v81 = v155;
      v80 = v156;
      v82 = v150;
      if (v79 == 1)
      {
        v78(v73, v74);
        v83 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v84 = v128;
      v72(v128, v73, v74);
      v85 = v144;
      if (v77(&v73[v144], 1, v76) != 1)
      {
        v86 = v158;
        v87 = &v73[v85];
        v88 = v123;
        (*(v158 + 32))(v123, v87, v76);
        v89 = v73;
        v83 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90 = *(v86 + 8);
        v90(v88, v76);
        v91 = *(v147 + 8);
        v91(v139, v74);
        v90(v84, v76);
        v91(v89, v74);
        v81 = v155;
        v80 = v156;
        v82 = v150;
LABEL_13:
        v92 = v153 >> 1;
        v93 = *(*v82 + 176);
        if (v153 >> 1 == *&v82[v93])
        {
          if ((v83 & 1) == 0)
          {
            _CoreInteractionHelperBox.resetInteractions()();
          }
        }

        else
        {
          _CoreInteractionHelperBox.resetInteractions()();
          *&v82[v93] = v92;
        }

        v94 = v133;
        v95 = v145;
        v145(v133, &v82[v132], v80);
        v96 = 1;
        v97 = (*(*(v161 - 8) + 48))(v94, 1);
        v152(v94, v80);
        v98 = *(*v82 + 160);
        v99 = *&v82[v98];
        v100 = v99 == 0;
        if (v99 && v97 == 1)
        {
          v100 = 0;
          v96 = (v125 | v126) ^ 1 | v124;
        }

        v101 = v135;
        v95(v135, v159, v80);
        UncheckedSendable.init(_:)(v101, v80, v81);
        if (v100)
        {
          v165 = MEMORY[0x1E69E7CC0];
          UncheckedSendable.init(_:)(&v165, &type metadata for CoreInteractionRepresentableInteractionsProxy, &v166);
          v102 = type metadata accessor for MainActor();
          v103.n128_f64[0] = MEMORY[0x1EEE9AC00](v102);
          v104 = v157;
          *(&v122 - 10) = v161;
          *(&v122 - 9) = v104;
          v105 = v154;
          *(&v122 - 8) = v138;
          *(&v122 - 7) = v105;
          v106 = v130;
          *(&v122 - 6) = v162;
          *(&v122 - 5) = v106;
          v107 = v164;
          *(&v122 - 4) = v163;
          *(&v122 - 3) = v107;
          *(&v122 - 2) = v81;
          *(&v122 - 1) = &v166;
          specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #3 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v122 - 12), "SwiftUICore/CoreInteractionRepresentable.swift", 46, 2, 452, v103);
          v95 = v145;
          *&v82[v98] = v166;
        }

        LODWORD(v160) = v96;
        if ((v96 & 1) == 0)
        {
          goto LABEL_29;
        }

        v108 = *(*v82 + 168);
        if (!*&v82[v108])
        {
          v109 = *&v82[v98];
          if (!v109)
          {
LABEL_34:
            __break(1u);
            return;
          }

          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v166 = v109;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v151 = *(AssociatedConformanceWitness + 24);

          *&v82[v108] = (v151)(&v166, AssociatedTypeWitness, AssociatedConformanceWitness);
          swift_unknownObjectRelease();
          v80 = v156;
          v95 = v145;
        }

        v95(v131, v81, v80);
        if (*&v82[v98])
        {
          v166 = *&v82[v98];
          v112 = *&v82[v108];
          v113 = v127;
          if (v112)
          {
            v114 = v142;
            CoreInteractionRepresentableEffect.init(representable:interactions:view:)(v131, &v166, v112, v161, v162, v142);
            (*(*(v141 - 8) + 56))(v114, 0, 1);
            v115 = *(*v82 + 152);
            swift_beginAccess();
            v116 = *(v143 + 40);

            swift_unknownObjectRetain();
            v116(&v82[v115], v114, v113);
            swift_endAccess();
            v81 = v155;
LABEL_29:
            (*(v148 + 8))(v81, v149);
            v117 = v146;
            v118 = $defer #3 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(v82, v146);
            (*(v158 + 8))(v117, v157, v118);
            v119 = &v82[*(*v82 + 200)];
            *v119 = v153;
            v119[4] = 0;
            v120 = v159;
            v121 = $defer #1 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(v82, v159);
            (v152)(v120, v80, v121);
            return;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      (*(v147 + 8))(v139, v74);
      (*(v158 + 8))(v84, v76);
      v81 = v155;
      v80 = v156;
      v82 = v150;
    }

    (*(v129 + 8))(v73, v140);
    v83 = 0;
    goto LABEL_13;
  }
}

uint64_t closure #2 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  v13 = *(a3 - 8);
  (*(v13 + 16))(&v16[-v11], a1, a3, v10);
  (*(v13 + 56))(v12, 0, 1, a3);
  v17 = v8;
  v18 = v12;
  v19 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in compareValues<A>(_:_:options:), v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v14);
  LOBYTE(a2) = v20;
  result = (*(v9 + 8))(v12, v8);
  *a4 = a2;
  return result;
}

double $defer #1 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  swift_endAccess();
  return result;
}

double $defer #3 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v13 - v8, a2, v4, v7);
  (*(v10 + 56))(v9, 0, 1, v4);
  v11 = *(*a1 + 192);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v11, v9, v5);
  swift_endAccess();
  return result;
}

uint64_t closure #3 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, BOOL *a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = *(a3 - 8);
  v16 = (*(v15 + 48))(v14, 1, a3);
  if (v16 == 1)
  {
    a3 = v10;
  }

  else
  {
    (*(a4 + 32))(a2, a3, a4);
    v11 = v15;
  }

  result = (*(v11 + 8))(v14, a3);
  *a5 = v16 == 1;
  return result;
}

uint64_t _CoreInteractionHelperBox.__ivar_destroyer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 152);
  type metadata accessor for CoreInteractionRepresentableEffect(255, *(*v4 + 120), *(*v4 + 136), a4);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  swift_unknownObjectRelease();
  v7 = *(*v4 + 184);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(*v4 + 192);
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 8);

  return v11(v4 + v9, v10);
}

void CoreInteractionChildTransform.value.getter(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  *(a2 + 32) = v7 - (*v9 - v5);
  *(a2 + 40) = v8 - (v11 - v6);
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  if (one-time initialization token for viewGraphHostContainerCoordinateSpace != -1)
  {
    swift_once();
  }

  v12 = static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace;
  ViewTransform.appendCoordinateSpace(id:)(&v12);
}

id CoreInteractionResponderFilter.layoutResponder.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
LABEL_5:

    return v1;
  }

  v2 = *(v0 + 56);
  v9[2] = *(v0 + 40);
  v9[3] = v2;
  v9[4] = *(v0 + 72);
  v10 = *(v0 + 88);
  v3 = *(v0 + 24);
  v9[0] = *(v0 + 8);
  v9[1] = v3;
  type metadata accessor for DefaultLayoutViewResponder();
  v1 = swift_allocObject();
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 120) = *(v0 + 40);
  *(v1 + 136) = *(v0 + 56);
  *(v1 + 152) = *(v0 + 72);
  *(v1 + 168) = *(v0 + 88);
  *(v1 + 88) = *(v0 + 8);
  *(v1 + 104) = *(v0 + 24);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v5 = MEMORY[0x1E69E7CC0];
    *(v1 + 176) = result;
    *(v1 + 40) = v5;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = v5;
    *(v1 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(v9, v8);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v6 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v6 + 208);

    swift_beginAccess();
    *(v1 + 24) = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 144) = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t CoreInteractionResponderFilter.responder.getter(uint64_t a1)
{
  if (*(v1 + 152))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = closure #1 in CoreInteractionResponderFilter.responder.getter(v1, *(a1 + 16), *(a1 + 24));
    *(v1 + 152) = v2;
  }

  return v2;
}

uint64_t closure #1 in CoreInteractionResponderFilter.responder.getter(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in CoreInteractionResponderFilter.responder.getter(a1, a2, a3, &v11, v8);
  AGSubgraphSetCurrent();

  v9 = v11;
  AGGraphSetUpdate();

  return v9;
}

void closure #1 in closure #1 in CoreInteractionResponderFilter.responder.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *(a1 + 104);
  type metadata accessor for CoreInteractionResponderFilter(0, a2, a3, x3_0);
  CoreInteractionResponderFilter.layoutResponder.getter();
  v8 = (*(v7 + 8))();

  *a4 = v8;
}

void CoreInteractionResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v32 = v5;
  v6 = *Value;
  v7 = *(v1 + 104);
  v29 = *(v1 + 96);
  swift_unknownObjectRetain();
  v31 = CoreInteractionResponderFilter.responder.getter(a1);
  Strong = swift_weakLoadStrong();
  swift_unknownObjectRetain();
  v8 = AGGraphGetValue();
  v28 = v9;
  v10 = v8[1];
  v35[0] = *v8;
  v35[1] = v10;
  type metadata accessor for CGPoint(0);
  v11 = AGGraphGetValue();
  v13 = v12;
  v14 = *v11;
  v15 = v11[1];
  v16 = AGGraphGetValue();
  v18 = v17;
  v19 = *(v16 + 8);
  v36[0] = *v16;
  v36[1] = v19;
  v20 = *(v16 + 32);
  v37 = *(v16 + 16);
  v38 = v20;
  v21 = *(v7 + 16);

  v21(v31, Strong, v6, v32 & 1, v35, v28 & 1, v13 & 1, v36, v14, v15, v18 & 1, v29, v7);

  swift_unknownObjectRelease();

  v22 = CoreInteractionResponderFilter.layoutResponder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v23)
  {
    v24 = *(*v22 + 320);

    v24(v25);
  }

  CoreInteractionResponderFilter.responder.getter(a1);
  swift_weakLoadStrong();
  v33 = *(v2 + 96);
  swift_weakInit();

  swift_weakInit();

  v37 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(v36, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (AGGraphGetOutputValue())
  {
    outlined destroy of CoreInteractionViewParentGestureContainerProxy(v36);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18DDAB4D0;
    *(v27 + 32) = CoreInteractionResponderFilter.responder.getter(a1);
    *&v35[0] = v27;
    AGGraphSetOutputValue();
    swift_unknownObjectRelease();
    outlined destroy of CoreInteractionViewParentGestureContainerProxy(v36);
  }
}

double key path setter for _GraphInputs.coreInteractionResponderProvider : _GraphInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.coreInteractionResponderProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v2, a1, a2);

  return result;
}

void (*_GraphInputs.coreInteractionResponderProvider.modify(uint64_t **a1))(Swift::UInt ***a1)
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.coreInteractionResponderProvider.modify;
}

void _GraphInputs.coreInteractionResponderProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t *assignWithCopy for CoreInteractionRepresentableInteractionsProxy.Interaction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for CoreInteractionRepresentableInteractionsProxy.Interaction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for CoreInteractionViewParentGestureContainerProxy(uint64_t a1)
{
  swift_weakDestroy();

  return swift_weakDestroy();
}

uint64_t assignWithCopy for CoreInteractionViewParentGestureContainerProxy(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t initializeWithCopy for CoreInteractionViewParentGestureContainerProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a4(a1, a2, a3);
  (a4)(v7 + 8, a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t type metadata completion function for CoreInteractionRepresentableModifier(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreInteractionRepresentableModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = (*(v7 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v8 + v10) & ~v10) + *(*(v5 - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    (*(v9 + 16))((a1 + v11) & v16, (a2 + v11) & v16, v5);
  }

  return a1;
}

uint64_t destroy for CoreInteractionRepresentableModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for CoreInteractionRepresentableModifier(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 16))((a1 + v13 + *(v14 + 80)) & ~*(v14 + 80), (a2 + v13 + *(v14 + 80)) & ~*(v14 + 80));
  return a1;
}

void *assignWithCopy for CoreInteractionRepresentableModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  (*(v15 + 24))((a1 + v14 + *(v15 + 80)) & ~*(v15 + 80), (a2 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return a1;
}

void *initializeWithTake for CoreInteractionRepresentableModifier(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 32))((a1 + v13 + *(v14 + 80)) & ~*(v14 + 80), (a2 + v13 + *(v14 + 80)) & ~*(v14 + 80));
  return a1;
}

void *assignWithTake for CoreInteractionRepresentableModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  (*(v15 + 40))((a1 + v14 + *(v15 + 80)) & ~*(v15 + 80), (a2 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for CoreInteractionRepresentableModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v17 = (v15 & ~v13) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v27 = (*(v5 + 48))(a1, v6);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *(v10 + 48);
          v25 = (a1 + v15) & ~v13;

          return v24(v25, v11, v8);
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for CoreInteractionRepresentableModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v11 + 80);
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!v8)
  {
    ++v13;
  }

  v16 = ((v13 + v14) & ~v14) + *(*(v10 - 8) + 64);
  v17 = a3 >= v15;
  v18 = a3 - v15;
  if (v18 == 0 || !v17)
  {
LABEL_21:
    if (v15 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v16 > 3)
  {
    v6 = 1;
    if (v15 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v19 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
  if (!HIWORD(v19))
  {
    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v6 = v20;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  v6 = 4;
  if (v15 < a2)
  {
LABEL_22:
    v21 = ~v15 + a2;
    if (v16 < 4)
    {
      v22 = (v21 >> (8 * v16)) + 1;
      if (v16)
      {
        v23 = v21 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v23;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v16] = v22;
              }

              else
              {
                *&a1[v16] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v21;
      v22 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v16] = v22;
    }

    return;
  }

LABEL_31:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v16] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_37;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 >= v12)
  {
    if (v9 >= a2)
    {
      v28 = *(v7 + 56);
      v29 = a2 + 1;

      v28(a1, v29);
    }

    else
    {
      if (v13 <= 3)
      {
        v25 = ~(-1 << (8 * v13));
      }

      else
      {
        v25 = -1;
      }

      if (v13)
      {
        v26 = v25 & (~v9 + a2);
        if (v13 <= 3)
        {
          v27 = v13;
        }

        else
        {
          v27 = 4;
        }

        bzero(a1, v13);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *a1 = v26;
            a1[2] = BYTE2(v26);
          }

          else
          {
            *a1 = v26;
          }
        }

        else if (v27 == 1)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v26;
        }
      }
    }
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v13 + v14] & ~v14);
  }
}

void lazy protocol witness table accessor for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform()
{
  if (!lazy protocol witness table cache variable for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoreInteractionChildTransform, &unk_1F0067E58, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform);
  }
}

uint64_t partial apply for closure #1 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(v2 + 16) - 8);
  if (*(*(*(v2 + 32) - 8) + 64) == *(v3 + 64))
  {
    return (*(v3 + 16))(a2, result);
  }

  __break(1u);
  return result;
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

double destroy for CoreInteractionResponderFilter(id *a1)
{

  swift_weakDestroy();

  return result;
}

uint64_t initializeWithCopy for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(a2 + 128);
  v8 = v4;

  swift_weakCopyInit();
  v9 = *(a2 + 144);
  v10 = *(a2 + 152);
  *(a1 + 144) = v9;
  *(a1 + 152) = v10;

  return a1;
}

uint64_t assignWithCopy for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

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
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  swift_weakCopyAssign();
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t initializeWithTake for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeInit();
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeAssign();
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t getEnumTagSinglePayload for CoreInteractionResponderFilter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for CoreInteractionResponderFilter(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t outlined destroy of CoreInteractionViewParentGestureContainerProxy(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  return a1;
}

double key path setter for _ViewInputs.textSelectionRepresentation : _ViewInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _ViewInputs.textSelectionRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v2, a1, a2);

  return result;
}

double _GraphInputs.textSelectionRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_ViewInputs.textSelectionRepresentation.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.textSelectionRepresentation.modify;
}

uint64_t (*_GraphInputs.textSelectionRepresentation.modify(uint64_t **a1))()
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
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.textSelectionRepresentation.modify;
}

void _ViewInputs.textSelectionRepresentation.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t LocalizedStringResource.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for Locale();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = *(v7 + 16);
  v16(&v21 - v12, v23, v6, v11);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v5);
  }

  else
  {
    v17 = v22;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v18)
    {
      (*(v17 + 16))(v5, &v18[*(*v18 + 248)], v3);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v3, static LocaleKey.defaultValue);
      (*(v17 + 16))(v5, v19, v3);
    }
  }

  LocalizedStringResource.locale.setter();
  (v16)(v9, v13, v6);
  AttributedString.init(localized:)();
  return (*(v7 + 8))(v13, v6);
}

uint64_t type metadata accessor for LocalizedStringResourceStorage(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocalizedStringResourceStorage;
  if (!type metadata singleton initialization cache for LocalizedStringResourceStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void LocalizedStringResourceStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a1;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  type metadata accessor for NSAttributedString();
  v28 = v13;
  v29 = v14;
  LocalizedStringResource.resolve(in:)(&v28, v12);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v18 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v20 = v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v22);

  outlined destroy of LocalizedStringKey.FormatArgument(v9, type metadata accessor for TaskPriority?);
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v20;
  v23 = NSAttributedString.init(swiftUIAttributedString:in:)(v12, &v28);
  v28 = v13;
  v29 = v14;
  v27 = v15;
  ResolvedTextContainer.append(_:in:with:)(v23, &v28, &v27, v25, v26);
}

uint64_t LocalizedStringResourceStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;

    v5 = MEMORY[0x193ABCB30](v1 + v4, v3 + v4);

    return v5 & 1;
  }

  return result;
}

BOOL LocalizedStringResourceStorage.isStyled(options:)()
{
  v0 = type metadata accessor for AttributedString();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnvironmentValues.init()(v8);
  v7[0] = v8[0];
  v7[1] = v8[1];
  LocalizedStringResource.resolve(in:)(v7, v3);

  v5 = AttributedString.isStyled.getter(v4);
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t LocalizedStringResourceStorage.localizationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = LocalizedStringResource.key.getter();
  v8 = v7;
  v9 = LocalizedStringResource.table.getter();
  v11 = v10;
  LocalizedStringResource.bundle.getter();
  v12 = LocalizedStringResource.BundleDescription.swiftUI_resolvedBundle.getter();
  result = (*(v4 + 8))(v6, v3);
  *a1 = v15;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = 64;
  return result;
}

id LocalizedStringResource.BundleDescription.swiftUI_resolvedBundle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E6968E00])
  {
    (*(v7 + 96))(v10, v6);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    return [objc_opt_self() bundleForClass_];
  }

  else if (v11 == *MEMORY[0x1E6968DF8])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithURL_];

    (*(v3 + 8))(v5, v2);
    return v18;
  }

  else if (v11 == *MEMORY[0x1E6968DF0])
  {
    return [objc_opt_self() mainBundle];
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

uint64_t LocalizedStringResourceStorage.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t LocalizedStringResourceStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v2 = type metadata accessor for LocalizedStringResource();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LocalizedStringResourceStorage(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for TaskPriority?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TaskPriority?)
  {
    type metadata accessor for TaskPriority();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TaskPriority?);
    }
  }
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes()
{
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes)
  {
    v2 = type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    swift_getWitnessTable(protocol conformance descriptor for AttributeScopes.SwiftUIAttributes, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes);
  }
}

uint64_t outlined destroy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*ViewTraitCollection.isExpanded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  *a1 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(0, 0, 0, *v1);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return ViewTraitCollection.isExpanded.modify;
}

void ViewTraitCollection.isExpanded.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    outlined copy of Binding<Bool>?(*a1, v3);
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(v2, v3, v4);

    outlined consume of Binding<Bool>?(v2, v3);
  }

  else
  {
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(*a1, v3, v4);
  }
}

double outlined consume of Binding<Bool>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SectionConfiguration.isExpanded.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  IsExpandeddJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(0, 0, 0, v1);

  return IsExpandeddJ0V_Tt0B5;
}

double static View.makeMountableView(view:inputs:size:proposal:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a2[3];
  v57 = a2[2];
  v58 = v11;
  v12 = a2[3];
  v59 = a2[4];
  v13 = a2[1];
  v56[0] = *a2;
  v56[1] = v13;
  v54 = v56[0];
  v55 = v13;
  v53[0] = *(a2 + 36);
  v14 = *a1;
  v60 = *(a2 + 20);
  *(v53 + 12) = v12;
  v15 = v57;
  v16 = HIDWORD(v59);
  outlined init with copy of _ViewInputs(v56, &v48);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v17 = *(swift_dynamicCastClassUnconditional() + 248);

  *&v48 = __PAIR64__(a4, a3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MakeViewSize and conformance MakeViewSize();
  v18 = Attribute.init<A>(body:value:flags:update:)();
  v19 = v15 | 0x18;
  v20 = *MEMORY[0x1E698D3F8];
  v21 = a2[1];
  v48 = *a2;
  v49 = v21;
  *v50 = v15 | 0x18;
  *&v50[4] = *(a2 + 36);
  *&v50[16] = a2[3];
  LODWORD(v51) = v17;
  *(&v51 + 4) = __PAIR64__(v18, v17);
  v26 = v16;
  HIDWORD(v51) = v16;
  v52 = v20;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v40 = *v50;
  v41 = *&v50[16];
  v42 = v51;
  v43 = v52;
  v38 = v48;
  v39 = v49;
  v23 = *v50;
  LODWORD(v40) = 0;
  LODWORD(v31[0]) = v14;
  v44[0] = v48;
  v44[1] = v49;
  v45 = v52;
  v44[3] = *&v50[16];
  v44[4] = v51;
  v44[2] = v40;
  *v35 = v40;
  *&v35[16] = *&v50[16];
  v36 = v51;
  v37 = v52;
  v33 = v48;
  v34 = v49;
  v24 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v48, v46);
  outlined init with copy of _ViewInputs(v44, v46);
  v24(&v29, v31, &v33, a5, a6);
  v46[2] = *v35;
  v46[3] = *&v35[16];
  v46[4] = v36;
  v47 = v37;
  v46[0] = v33;
  v46[1] = v34;
  outlined destroy of _ViewInputs(v46);
  LODWORD(v40) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v29, &v38);
    AGSubgraphEndTreeElement();
  }

  v31[2] = v40;
  v31[3] = v41;
  v31[4] = v42;
  v32 = v43;
  v31[0] = v38;
  v31[1] = v39;
  outlined destroy of _ViewInputs(v31);
  v33 = v54;
  v34 = v55;
  *v35 = v19;
  *&v35[4] = v53[0];
  *&v35[16] = *(v53 + 12);
  LODWORD(v36) = v17;
  *(&v36 + 4) = __PAIR64__(v18, v17);
  HIDWORD(v36) = v26;
  v37 = v20;
  outlined destroy of _ViewInputs(&v33);
  *a7 = v29;
  result = v30;
  a7[1] = v30;
  return result;
}

unint64_t MountableViewOutputs.makeDisplayList()()
{
  v1 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(*v0);
  if ((v1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList();
    v2 = Attribute.init<A>(body:value:flags:update:)();
  }

  return v2 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t MountableViewOutputs.makeLayoutComputer()()
{
  v1 = *(v0 + 12);
  v2 = *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer();
    v3 = Attribute.init<A>(body:value:flags:update:)();
  }

  return v3 | ((v1 == v2) << 32);
}

void MountableViewOutputs.LayoutComputer.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *v4;
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
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
    v11 = a1;
    v12 = a2 & 1;
    v13 = a3;
    v14 = a4 & 1;
    (*(*v9 + 120))(&v11);
  }
}

unint64_t static MountableViewOutputs.DisplayListProxyView._makeView(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v5 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v15[0] = *(a2 + 56);
  *(v15 + 12) = *(a2 + 68);
  *a3 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v16 = *v3;
  v17 = v5;
  v18 = *(v3 + 24);
  v19 = *(v3 + 40);
  v20[0] = *(v3 + 56);
  *(v20 + 12) = *(v3 + 68);
  swift_beginAccess();
  v8 = CachedEnvironment.animatedPosition(for:)(&v16);
  v12 = v5;
  LODWORD(v3) = CachedEnvironment.animatedCGSize(for:)(&v11);
  swift_endAccess();
  *&v16 = __PAIR64__(v8, OffsetAttribute2);
  DWORD2(v16) = v3;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v16) = 0;
  return PreferencesOutputs.subscript.setter(v9, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
}

void MountableViewOutputs.DisplayListProxyView.MakeDisplayList.value.getter(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 12);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  type metadata accessor for CGPoint(0);

  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  v9 = ++static DisplayList.Version.lastValue;
  DisplayList.translate(by:version:)(__PAIR128__(v8, v7), &v9);
}

uint64_t MakeViewSize.value.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  result = AGGraphGetValue();
  v7 = *result;
  v8 = *(result + 16);
  if (*(result + 8))
  {
    v7 = NAN;
  }

  if (*(result + 24))
  {
    v8 = NAN;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

double protocol witness for Rule.value.getter in conformance MakeMountableViewLayoutComputer@<D0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  return result;
}

double protocol witness for Rule.value.getter in conformance MakeMountableViewDisplayList@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 12);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;

  return result;
}

void lazy protocol witness table accessor for type MakeViewSize and conformance MakeViewSize()
{
  if (!lazy protocol witness table cache variable for type MakeViewSize and conformance MakeViewSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for MakeViewSize, &unk_1F00685F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MakeViewSize and conformance MakeViewSize);
  }
}

void lazy protocol witness table accessor for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList()
{
  if (!lazy protocol witness table cache variable for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for MakeMountableViewDisplayList, &unk_1F0068578, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList);
  }
}

void lazy protocol witness table accessor for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for MakeMountableViewLayoutComputer, &unk_1F0068550, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer);
  }
}

void lazy protocol witness table accessor for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList()
{
  if (!lazy protocol witness table cache variable for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for MountableViewOutputs.DisplayListProxyView.MakeDisplayList, &unk_1F0068520, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList);
  }
}

uint64_t *assignWithCopy for MountableViewOutputs.LayoutComputer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for MountableViewOutputs.LayoutComputer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void NSMutableAttributedString.resolveAttributes(in:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableStringResolutionContext(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v6 = static NSAttributedStringKey.resolvableTextSegment;
  v7 = [v1 length];
  outlined init with copy of ResolvableAttributeConfiguration(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  outlined init with take of ResolvableStringResolutionContext(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:);
  *(v10 + 24) = v9;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v12 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{2, v11}];
  _Block_release(v11);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

id makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(double *a1, uint64_t a2, char *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v81 = a2;
  v82 = a6;
  v79 = a4;
  v87 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v74 - v12;
  v13 = type metadata accessor for AttributedString.LineHeight();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6965580];
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AttributedString.TextAlignment();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v74 - v33;
  v35 = *a3;
  v78 = *a5;
  v36 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v81, v18, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v15, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of TimelineSchedule?(v18, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    v37 = type metadata accessor for ParagraphStyleResolutionContext(0);
    if (*(a1 + *(v37 + 84)) == 2)
    {
      v38 = v35;
    }

    else
    {
      v38 = *(a1 + *(v37 + 84));
    }

    v39 = *(a1 + *(v37 + 80));
    if (v38)
    {
      if (*(a1 + *(v37 + 80)))
      {
        v41 = v85;
        v40 = v86;
        v42 = v83;
        if (v39 == 1)
        {
          v43 = 4;
        }

        else
        {
          v43 = 1;
        }

        [v36 setHorizontalAlignment_];
        goto LABEL_41;
      }

      v51 = v36;
      v52 = 0;
      goto LABEL_39;
    }

    if (a1[2])
    {
      v47 = v77;
      v48 = v75;
      if (*(a1 + *(v37 + 80)))
      {
        if (v39 == 1)
        {
          v49 = MEMORY[0x1E6965578];
        }

        else
        {
          v49 = MEMORY[0x1E6965570];
        }
      }

      else
      {
        v49 = MEMORY[0x1E6965568];
      }

      goto LABEL_32;
    }

    v47 = v77;
    v48 = v75;
    if (*(a1 + *(v37 + 80)))
    {
      if (v39 == 1)
      {
        v49 = MEMORY[0x1E6965578];
LABEL_32:
        (*(v20 + 104))(v75, *v49, v19);
        (*(v20 + 32))(v47, v48, v19);
        v53 = v76;
        (*(v20 + 16))(v76, v47, v19);
        v54 = (*(v20 + 88))(v53, v19);
        if (v54 == *MEMORY[0x1E6965568])
        {
          v55 = 2;
LABEL_38:
          (*(v20 + 8))(v47, v19);
          v51 = v36;
          v52 = v55;
LABEL_39:
          [v51 setHorizontalAlignment_];
          goto LABEL_40;
        }

        if (v54 == *MEMORY[0x1E6965578])
        {
          v55 = 4;
          goto LABEL_38;
        }

        if (v54 == *MEMORY[0x1E6965570])
        {
          v55 = 3;
          goto LABEL_38;
        }

LABEL_70:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (*(a1 + 18))
      {
LABEL_31:
        v49 = MEMORY[0x1E6965568];
        goto LABEL_32;
      }
    }

    else if ((*(a1 + 18) & 1) == 0)
    {
      goto LABEL_31;
    }

    v49 = MEMORY[0x1E6965570];
    goto LABEL_32;
  }

  (*(v20 + 32))(v34, v18, v19);
  v44 = *(v20 + 16);
  v44(v31, v34, v19);
  v44(v28, v31, v19);
  v45 = (*(v20 + 88))(v28, v19);
  if (v45 == *MEMORY[0x1E6965568])
  {
    v46 = 2;
  }

  else if (v45 == *MEMORY[0x1E6965578])
  {
    v46 = 4;
  }

  else
  {
    if (v45 != *MEMORY[0x1E6965570])
    {
      goto LABEL_70;
    }

    v46 = 3;
  }

  v50 = *(v20 + 8);
  v50(v31, v19);
  [v36 setHorizontalAlignment_];
  v50(v34, v19);
LABEL_40:
  v41 = v85;
  v40 = v86;
  v42 = v83;
LABEL_41:
  v56 = *(a1 + 2);
  v57 = *a1;
  if (v57 == 2)
  {
    [v36 setFullyJustified_];
  }

  else
  {
    [v36 setFullyJustified_];
    v56 |= v57;
  }

  [v36 setSpansAllLines_];
  v58 = type metadata accessor for ParagraphStyleResolutionContext(0);
  [v36 setLineBreakMode_];
  [v36 setLineSpacing_];
  [v36 setLineBreakStrategy_];
  if ((*(a1 + 3) & 1) == 0)
  {
    [v36 setLineBreakStrategy_];
  }

  [v36 setLineHeightMultiple_];
  [v36 setMaximumLineHeight_];
  [v36 setMinimumLineHeight_];
  if (*(a1 + v58[19]))
  {
    v59 = 0.0;
    v60 = 2;
  }

  else
  {
    v60 = 0;
    v59 = *(a1 + v58[18]);
    *&v59 = v59;
  }

  [v36 setHyphenationFactor_];
  [v36 setSecondaryLineBreakMode_];
  v61 = a1[1];
  [v36 setFirstLineHeadIndent_];
  v62 = *(a1 + 16);
  if (v61 <= 0.0)
  {
    if (v79 == 2)
    {
      v64 = *(a1 + 17);
      if (v64 == 2)
      {
        LOBYTE(v64) = v78;
      }

      if (v64)
      {
        v63 = -1;
      }

      else
      {
        v63 = (v62 ^ 1) & *(a1 + 18);
      }
    }

    else
    {
      v63 = v79 & 1;
    }
  }

  else if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(a1 + 18);
  }

  [v36 setBaseWritingDirection_];
  [v36 setAllowsDefaultTighteningForTruncation_];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v82, v42, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v65 = *(v41 + 48);
  if (v65(v42, 1, v40) == 1)
  {
    v66 = a1 + v58[12];
    v67 = v84;
    _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v66, v84, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    if (v65(v42, 1, v40) != 1)
    {
      outlined destroy of TimelineSchedule?(v42, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    }
  }

  else
  {
    v67 = v84;
    (*(v41 + 32))(v84, v42, v40);
    (*(v41 + 56))(v67, 0, 1, v40);
  }

  if (v65(v67, 1, v40) == 1)
  {
    outlined destroy of TimelineSchedule?(v67, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  }

  else
  {
    v68 = v80;
    (*(v41 + 32))(v80, v67, v40);
    v69 = CTLineHeightToNSParagraphStyleBaselineIntervalType();
    if (v69 < 0)
    {
      __break(1u);
    }

    v70 = v69;
    CTLineHeightToNSParagraphStyleBaselineInterval();
    v72 = v71;
    [v36 setBaselineIntervalType_];
    [v36 setBaselineInterval_];
    (*(v41 + 8))(v68, v40);
  }

  return v36;
}

id makeParagraphStyle(environment:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v12 = type metadata accessor for ParagraphStyleResolutionContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[1];
  LOBYTE(a3) = *a3;
  LOBYTE(a5) = *a5;
  v20[0] = *a1;
  v20[1] = v15;

  ParagraphStyleResolutionContext.init(_:)(v20, v14);
  LOBYTE(v20[0]) = a3;
  v19 = a5;
  v16 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v14, a2, v20, a4, &v19, a6);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v14, type metadata accessor for ParagraphStyleResolutionContext);
  return v16;
}

uint64_t ParagraphStyleResolutionContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v8, &v58);

    v49 = v58;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5(v8, &v57);

    v51 = v57;

    v50 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v9 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v8, v56);

    v48 = v56[0];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v8, &v55);

    v10 = v55;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v8, &v54);

    v11 = v54;

    v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5(v8, v6);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8, v53);

    v13 = v6;
    v14 = LOBYTE(v53[0]);

    v15 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v8);

    v18 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v8);

    v19 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);
  }

  else
  {
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
    if (v21)
    {
      v22 = *(v21 + 36);
    }

    else
    {
      v22 = 2;
    }

    type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v23);
    v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(v8, v53[0]);
    if (v24)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v8);
    v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v27)
    {
      v9 = v27[9];
    }

    else
    {
      v9 = 0.0;
    }

    v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v8);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v30);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v8, v53[0]);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 2;
    }

    v51 = v25;
    v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v8);
    v47 = v32;
    v50 = v26;
    if (v33)
    {
      v11 = *(v33 + 72);
    }

    else
    {
      v11 = 0;
    }

    v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v8);
    v13 = v6;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v8, v6);
    v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v34)
    {
      v14 = *(v34 + 72);
    }

    else
    {
      v14 = 3;
    }

    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    v16 = 0.0;
    v15 = 0.0;
    if (v35)
    {
      v15 = v35[9];
    }

    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v36)
    {
      v16 = v36[9];
    }

    v37 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v8);
    v18 = 0.0;
    v17 = 0.0;
    if (v37)
    {
      v17 = v37[9];
    }

    v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v8);
    if (v38)
    {
      v18 = v38[9];
    }

    v39 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v39)
    {
      v19 = v39[9];
    }

    else
    {
      v19 = 0.0;
    }

    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    v48 = v29;
    v49 = v22;
    if (v40)
    {
      v20 = *(v40 + 72);
    }

    else
    {
      v20 = 0;
    }

    v10 = v47;
  }

  if (v14 == 3)
  {
    LOBYTE(v14) = 1;
  }

  v53[0] = v8;
  v53[1] = v7;
  v41 = EnvironmentValues.multilineTextAlignment.getter();
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5(v8, v7, &v52);

  v42 = v52;
  *a2 = v49;
  v43 = v50;
  *(a2 + 2) = v51;
  *(a2 + 3) = v43 & 1;
  *(a2 + 8) = v9;
  *(a2 + 16) = v48;
  *(a2 + 17) = v10;
  *(a2 + 18) = v11;
  *(a2 + 19) = v12 & 1;
  v44 = type metadata accessor for ParagraphStyleResolutionContext(0);
  result = outlined init with take of AttributedString.LineHeight?(v13, a2 + v44[12]);
  *(a2 + v44[13]) = v14;
  *(a2 + v44[14]) = v15;
  *(a2 + v44[15]) = v16;
  *(a2 + v44[16]) = v17;
  *(a2 + v44[17]) = v18;
  *(a2 + v44[18]) = v19;
  *(a2 + v44[19]) = v20 & 1;
  *(a2 + v44[20]) = v41;
  *(a2 + v44[21]) = v42;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineHeight.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ParagraphStyleResolutionContext(0) + 48);

  return outlined assign with take of AttributedString.LineHeight?(a1, v3);
}

uint64_t ParagraphStyleResolutionContext.truncationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t ParagraphStyleResolutionContext.truncationMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineSpacing.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineHeightMultiple.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.maximumLineHeight.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.minimumLineHeight.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.hyphenationFactor.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.hyphenationDisabled.setter(char a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.multilineTextAlignment.setter(char a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.textAlignmentStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t ParagraphStyleResolutionContext.textAlignmentStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParagraphStyleResolutionContext(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t one-time initialization function for resolvableAttributeConfiguration()
{
  result = MEMORY[0x193ABEC20](0xD000000000000028, 0x800000018DD79F30);
  static NSAttributedStringKey.resolvableAttributeConfiguration = result;
  return result;
}

uint64_t one-time initialization function for _textScaleStaticWeightMatching()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD79F10);
  static NSAttributedStringKey._textScaleStaticWeightMatching = result;
  return result;
}

id static NSAttributedStringKey.resolvableAttributeConfiguration.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void NSAttributedString.firstAttribute<A>(_:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = static ResolvableStringAttributeRepresentation.attribute.getter(a2, *(a3 + 16));
  NSAttributedString.firstAttribute<A>(_:name:)(v6, a2, x8_0);
}

uint64_t NSMutableAttributedString.addResolvableAttributes(with:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  outlined init with copy of ResolvableAttributeConfiguration(a1, &v13 - v8, type metadata accessor for ResolvableAttributeConfiguration);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      goto LABEL_9;
    }

    v11 = type metadata accessor for DateInterval();
    goto LABEL_8;
  }

  if (result)
  {
    v11 = type metadata accessor for Date();
LABEL_8:
    (*(*(v11 - 8) + 8))(v9, v11);
  }

LABEL_9:
  if (one-time initialization token for resolvableAttributeConfiguration != -1)
  {
    swift_once();
  }

  v12 = static NSAttributedStringKey.resolvableAttributeConfiguration;
  outlined init with copy of ResolvableAttributeConfiguration(a1, v6, type metadata accessor for ResolvableAttributeConfiguration);
  [v2 addAttribute:v12 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() range:{0, objc_msgSend(v2, sel_length)}];
  return swift_unknownObjectRelease();
}

id EnvironmentValues.resolveNSAttributes(includeDefaultAttributes:options:)(int a1, uint64_t *a2)
{
  v5 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *v2;
  v10 = v2[1];
  LOWORD(v19) = 0;
  v17 = 0u;
  v18 = 0u;
  v11 = MEMORY[0x1E69E7CC0];
  *(&v19 + 1) = MEMORY[0x1E69E7CC0];
  *&v20[0] = MEMORY[0x1E69E7CC0];
  *(v20 + 8) = 0u;
  *(&v20[1] + 8) = 0u;
  *(&v20[2] + 1) = 0;
  v21 = xmmword_18DD85510;

  v22 = v11;
  *&v23[1] = 0;
  v23[0] = MEMORY[0x1E69E7CD0];
  BYTE8(v23[1]) = 3;
  Text.Style.init()(v7);
  v16[0] = v9;
  v16[1] = v10;
  v15 = v8;
  v12 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, v16, a1, &v15, &v17);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v7, type metadata accessor for Text.Style);
  v24[6] = v21;
  v24[7] = v22;
  v25[0] = v23[0];
  *(v25 + 9) = *(v23 + 9);
  v24[2] = v19;
  v24[3] = v20[0];
  v24[4] = v20[1];
  v24[5] = v20[2];
  v24[0] = v17;
  v24[1] = v18;
  outlined destroy of Text.ResolvedProperties(v24);
  return v12;
}

id NSAttributedString.scaled(by:)(double a1)
{
  if (a1 == 1.0)
  {

    return v1;
  }

  else
  {
    v3 = [v1 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

    return v3;
  }
}

void NSAttributedString.EncodedFontMetrics.outsets.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

BOOL closure #1 in Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for Text.Style(0) + 108));
  v4 = (*(*v2 + 112))();
  if (!specialized Set.contains(_:)(v4, v3))
  {
    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier);
    v6 = swift_dynamicCastClass();
    if (!v6 || *(v6 + 16) < 0.3)
    {
      return 1;
    }

    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v8 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        return 1;
      }
    }

    else if (static Semantics.forced >= v8)
    {
      return 1;
    }

    return !specialized Set.contains(_:)(&type metadata for Font.BoldModifier, v3);
  }

  return 0;
}

double _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    v8 = a1;
    v9 = a2;
    (*(v6 + 8))(&type metadata for Text.AlignmentStrategy.EnvironmentKey, &v8, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey);
  }

  else if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA4TextVAAE17AlignmentStrategyV0jI0VG_Tt1g5(a1, a3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2g5(a1, a3);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}