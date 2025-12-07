id ForEach<>.MakeList.value.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  *v28 = a1[2];
  v5 = *v28;
  *&v28[8] = v6;
  *&v28[16] = v7;
  *&v28[24] = v8;
  *&v28[32] = v9;
  v10 = type metadata accessor for ForEach();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = v2[1];
  v14 = v2[3];
  *&v28[32] = v2[2];
  *&v28[48] = v14;
  v15 = v2[3];
  *&v28[64] = v2[4];
  v16 = v2[1];
  *v28 = *v2;
  *&v28[16] = v16;
  v27[2] = *&v28[32];
  v27[3] = v15;
  v27[4] = v2[4];
  v27[0] = *v28;
  v27[1] = v13;
  ForEach<>.PreferenceTransform.forEach.getter(&v22 - v11);
  v25[0] = *&v28[8];
  v25[1] = *&v28[24];
  v26[0] = *&v28[40];
  *(v26 + 12) = *&v28[52];
  v17 = *v28;
  v23 = *&v28[72];
  v24[0] = v5;
  v18 = a1[7];
  v24[1] = v6;
  v24[2] = v7;
  v24[3] = v8;
  v24[4] = v9;
  v24[5] = v18;
  a2[3] = type metadata accessor for ForEach<>.Generator(0, v24);
  a2[4] = &protocol witness table for ForEach<A, B, C><>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  ForEach<>.Generator.init(forEach:inputs:attribute:parentSubgraph:)(v12, v25, v17, v23, v5, v6, v7, v8, boxed_opaque_existential_1, v9, v18);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v28[8], v27);
  v20 = v23;

  return v20;
}

double ForEach<>.Generator.init(forEach:inputs:attribute:parentSubgraph:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = a2[1];
  v31 = *a2;
  v32 = v19;
  v33[0] = a2[2];
  *(v33 + 12) = *(a2 + 44);
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a10;
  v20 = type metadata accessor for ForEach();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a10;
  v30 = a11;
  v21 = type metadata accessor for ForEach<>.Generator(0, &v25);
  v22 = (a9 + v21[17]);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  v22[2] = v33[0];
  result = *(v33 + 12);
  *(v22 + 44) = *(v33 + 12);
  *(a9 + v21[18]) = a3;
  *(a9 + v21[19]) = a4;
  return result;
}

void ForEach<>.Generator.forEachContentList(_:)(uint64_t (*a1)(_OWORD *), uint64_t a2, void *a3)
{
  v37 = a1;
  v38 = a2;
  v44 = a3[5];
  v5 = a3[2];
  v42 = *(*(*(v44 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getAssociatedTypeWitness();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = AGSubgraphGetGraph();
  v43 = AGSubgraphCreate2();

  v17 = a3[3];
  v18 = a3[4];
  v39 = a3;
  v19 = a3[6];
  v34 = v18;
  v35 = v17;
  *&v20 = v18;
  *(&v20 + 1) = v44;
  *&v21 = v5;
  *(&v21 + 1) = v17;
  v45[0] = v21;
  v45[1] = v20;
  v33 = v19;
  v46 = v19;
  type metadata accessor for ForEach();
  v40 = v3;
  ForEach.data.getter();
  dispatch thunk of Sequence.makeIterator()();
  v36 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v15;
  v42 = v13;
  v32 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v23 = v30;
  v24 = *(v30 + 48);
  if (v24(v11, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v31 + 8))(v41, v42);
  }

  else
  {
    v25 = *(v23 + 32);
    v26 = (v23 + 8);
    while (1)
    {
      v25(v8, v11, AssociatedTypeWitness);
      AGGraphClearUpdate();
      v27 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      closure #1 in ForEach<>.Generator.forEachContentList(_:)(v40, v8, v36, v35, v34, v44, v33, v39[7], v45);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v28 = v37(v45);
      outlined destroy of AccessibilityRelationshipScope.Key(v45);
      if ((v28 & 1) == 0)
      {
        break;
      }

      (*v26)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v24(v11, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v31 + 8))(v41, v42);

    (*v26)(v8, AssociatedTypeWitness);
  }
}

uint64_t closure #1 in ForEach<>.Generator.forEachContentList(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a1;
  v37 = a8;
  v35 = a7;
  v39 = a9;
  v50 = *MEMORY[0x1E69E9840];
  v38 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = v16;
  *(&v47 + 1) = v17;
  *&v48 = v18;
  *(&v48 + 1) = v19;
  *&v49[0] = v20;
  v21 = type metadata accessor for ForEach();
  v22 = specialized ForEach.content.getter(v21);

  v22(a2);

  *(&v41[2] + 4) = a5;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in Attribute.init(value:), v41 + 4, a5, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  _GraphValue.init(_:)();
  *&v47 = a3;
  *(&v47 + 1) = a4;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  v25 = v37;
  *&v49[0] = v35;
  *(&v49[0] + 1) = v37;
  v26 = type metadata accessor for ForEach<>.Generator(0, &v47);
  v27 = (v36 + *(v26 + 68));
  v28 = v27[1];
  v45[0] = *v27;
  v29 = *v27;
  v30 = v27[1];
  v31 = v27[2];
  v45[1] = v28;
  v46[0] = v31;
  *(v46 + 12) = *(v27 + 44);
  v42 = v29;
  v43 = v30;
  v44[0] = v27[2];
  *(v44 + 12) = *(v27 + 44);
  v32 = *(v25 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v45, &v47);
  v32(v41, &v40, &v42, a5, v25);
  v47 = v42;
  v48 = v43;
  v49[0] = v44[0];
  *(v49 + 12) = *(v44 + 12);
  outlined destroy of _AccessibilityRotorEntryInputs(&v47);
  Value = AGGraphGetValue();
  outlined init with copy of DropInfo(Value, v39);
  return (*(v38 + 8))(v15, a5);
}

uint64_t ForEach<>.Generator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 1;
  v16 = 0;
  v6[1] = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = a4;
  v9 = *(a3 + 40);
  v10 = *(a3 + 56);
  v11 = a5;
  v12 = a2;
  v13 = &v16;
  v14 = a1;
  v15 = &v17;
  ForEach<>.Generator.forEachContentList(_:)(partial apply for closure #1 in ForEach<>.Generator.visitEntries<A>(applying:from:), v6, a3);
  return v17;
}

uint64_t closure #1 in ForEach<>.Generator.visitEntries<A>(applying:from:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  result = (*(v19 + 16))(v18, v19);
  v21 = *a3;
  v22 = *a3 + result;
  v23 = __OFADD__(*a3, result);
  if (__OFADD__(*a3, result))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = *a2;
  if (*a2 >= v22)
  {
LABEL_11:
    if (!v23)
    {
      *a3 = v22;
      return 1;
    }

    goto LABEL_16;
  }

  if (__OFSUB__(v24, v21))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v25 = result;
  v28 = (v24 - v21) & ~((v24 - v21) >> 63);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  result = (*(v27 + 8))(a4, &v28, a9, a13, v26, v27);
  if (result)
  {
    v22 = *a3 + v25;
    v23 = __OFADD__(*a3, v25);
    goto LABEL_11;
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t ForEach<>.Generator.count.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(v7 + 68));
  v9 = v8[1];
  v25[0] = *v8;
  v25[1] = v9;
  v11 = *v8;
  v10 = v8[1];
  v26[0] = v8[2];
  *(v26 + 12) = *(v8 + 44);
  v12 = *(v7 + 32);
  v23 = v11;
  *v24 = v10;
  *&v24[16] = v8[2];
  *&v24[28] = *(v8 + 44);
  v13 = *(v7 + 56);
  v14 = *(v13 + 32);
  outlined init with copy of _AccessibilityRotorEntryInputs(v25, v27);
  v15 = v14(&v23, v12, v13);
  v17 = v16;
  v27[0] = v23;
  v27[1] = *v24;
  v28[0] = *&v24[16];
  *(v28 + 12) = *&v24[28];
  v18 = outlined destroy of _AccessibilityRotorEntryInputs(v27);
  if (v17)
  {
    *&v23 = 0;
    MEMORY[0x1EEE9AC00](v18);
    *(&v22 - 2) = &v23;
    ForEach<>.Generator.forEachContentList(_:)(partial apply for closure #1 in ForEach<>.Generator.count.getter, (&v22 - 2), a1);
    return v23;
  }

  else
  {
    v20 = *(a1 + 24);
    *&v23 = v3;
    *(&v23 + 1) = v20;
    *v24 = v12;
    v22 = *(a1 + 40);
    *&v24[8] = v22;
    type metadata accessor for ForEach();
    ForEach.data.getter();
    v21 = dispatch thunk of Collection.count.getter();
    (*(v4 + 8))(v6, v3);
    result = v21 * v15;
    if ((v21 * v15) >> 64 != (v21 * v15) >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in ForEach<>.Generator.count.getter(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  if (__OFADD__(*a2, result))
  {
    __break(1u);
  }

  else
  {
    *a2 += result;
    return 1;
  }

  return result;
}

uint64_t ForEach<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a2;
  v20[1] = a3;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a9;
  v20[9] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v15 + 8))(a1, a4);
}

uint64_t static AccessibilityRotorEntry._makeEntries(content:inputs:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 16);
  v16[0] = *a1;
  type metadata accessor for AccessibilityRotorEntry(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  swift_beginAccess();
  v10 = *(v8 + 16);
  v16[0] = v9;
  v16[1] = v10;
  List = type metadata accessor for AccessibilityRotorEntry.MakeList(0, a3, a4, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorEntry<A>.MakeList, List);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in Attribute.init<A>(_:)partial apply, v17, List, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  *a5 = v15;
  return result;
}

uint64_t AccessibilityRotorEntry.MakeList.entry.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for AccessibilityRotorEntry(0, a2, a3, x3_0);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, Value, v6);
}

double AccessibilityRotorEntry.MakeList.value.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for AccessibilityRotorEntry(0, a2, a3, x3_0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  AccessibilityRotorEntry.MakeList.entry.getter(a2, a3, &v19 - v10, v12);
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(&v20);
  v19 = v20;
  AccessibilityRotorEntry.resolveForList(in:)(&v19, v8, v21);

  (*(v9 + 8))(v11, v8);
  a4[3] = type metadata accessor for AccessibilityRotorEntry.Generator(0, a2, a3, v13);
  a4[4] = &protocol witness table for AccessibilityRotorEntry<A>.Generator;
  v14 = swift_allocObject();
  *a4 = v14;
  v15 = v25;
  *(v14 + 80) = v24;
  *(v14 + 96) = v15;
  *(v14 + 112) = v26;
  *(v14 + 128) = v27;
  v16 = v21[1];
  *(v14 + 16) = v21[0];
  *(v14 + 32) = v16;
  result = *&v22;
  v18 = v23;
  *(v14 + 48) = v22;
  *(v14 + 64) = v18;
  return result;
}

uint64_t AccessibilityRotorEntry.Generator.visitEntries<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 8))(v5, a4, a5);
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    return result & 1;
  }

  return result;
}

uint64_t AccessibilityOptionalRotorContent.content.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AccessibilityOptionalRotorContent.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t static AccessibilityOptionalRotorContent._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[1];
  v21 = *a2;
  v22 = v9;
  v23[0] = a2[2];
  *(v23 + 12) = *(a2 + 44);
  v16 = v8;
  type metadata accessor for AccessibilityOptionalRotorContent(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  v10 = _GraphValue.value.getter();
  v24 = v21;
  v25 = v22;
  *v26 = v23[0];
  *&v26[12] = *(v23 + 12);
  AccessibilityOptionalRotorContent.MakeList.init(optionalContent:inputs:)(v10, &v24, v20);
  List = type metadata accessor for AccessibilityOptionalRotorContent.MakeList(0, a3, a4, v11);
  v18 = List;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityOptionalRotorContent<A>.MakeList, List);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v21, &v24);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in Attribute.init<A>(_:)partial apply, v17, List, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  *v26 = v20[2];
  *&v26[16] = v20[3];
  v27 = v20[4];
  v24 = v20[0];
  v25 = v20[1];
  result = (*(*(List - 8) + 8))(&v24, List);
  *a5 = v16;
  return result;
}

id AccessibilityOptionalRotorContent.MakeList.init(optionalContent:inputs:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  *&v6[4] = *a2;
  *&v6[20] = a2[1];
  *&v6[36] = a2[2];
  *&v6[48] = *(a2 + 44);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *a3 = v3;
    *(a3 + 4) = *v6;
    *(a3 + 20) = *&v6[16];
    *(a3 + 36) = *&v6[32];
    *(a3 + 52) = *&v6[48];
    *(a3 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AccessibilityOptionalRotorContent.MakeList.optionalContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for AccessibilityOptionalRotorContent(0, *(a1 + 16), *(a1 + 24), a3);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, Value, v4);
}

id AccessibilityOptionalRotorContent.MakeList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for AccessibilityOptionalRotorContent(0, v6, v7, a3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = v3[1];
  v12 = v3[3];
  *&v26[32] = v3[2];
  *&v26[48] = v12;
  v13 = v3[3];
  *&v26[64] = v3[4];
  v14 = v3[1];
  *v26 = *v3;
  *&v26[16] = v14;
  v25[2] = *&v26[32];
  v25[3] = v13;
  v25[4] = v3[4];
  v25[0] = *v26;
  v25[1] = v11;
  AccessibilityOptionalRotorContent.MakeList.optionalContent.getter(a1, &v21 - v9, v15);
  v23[0] = *&v26[8];
  v23[1] = *&v26[24];
  v24[0] = *&v26[40];
  *(v24 + 12) = *&v26[52];
  v16 = *v26;
  v22 = *&v26[72];
  a2[3] = type metadata accessor for AccessibilityOptionalRotorContent.Generator(0, v6, v7, v17);
  a2[4] = &protocol witness table for AccessibilityOptionalRotorContent<A>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  AccessibilityOptionalRotorContent.Generator.init(optionalContent:inputs:attribute:parentSubgraph:)(v10, v23, v16, v22, v6, v7, boxed_opaque_existential_1);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v26[8], v25);
  v19 = v22;

  return v19;
}

__n128 AccessibilityOptionalRotorContent.Generator.init(optionalContent:inputs:attribute:parentSubgraph:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = *a2;
  v19 = a2[1];
  *v20 = a2[2];
  *&v20[12] = *(a2 + 44);
  v13 = type metadata accessor for AccessibilityOptionalRotorContent(0, a5, a6, a4);
  (*(*(v13 - 8) + 32))(a7, a1, v13);
  v15 = type metadata accessor for AccessibilityOptionalRotorContent.Generator(0, a5, a6, v14);
  v16 = (a7 + v15[9]);
  *v16 = v18;
  v16[1] = v19;
  v16[2] = *v20;
  result = *&v20[12];
  *(v16 + 44) = *&v20[12];
  *(a7 + v15[10]) = a3;
  *(a7 + v15[11]) = a4;
  return result;
}

uint64_t AccessibilityOptionalRotorContent.Generator.someContentList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = *(a1 + 24);
  v12 = type metadata accessor for AccessibilityOptionalRotorContent(0, v5, v10, v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, v3, v17);
  (*(v7 + 32))(v9, v14, v6);
  if ((*(v15 + 48))(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v22 = v27;
    *(v27 + 32) = 0;
    *v22 = 0u;
    v22[1] = 0u;
  }

  else
  {
    (*(v15 + 32))(v19, v9, v5);
    v23 = AGSubgraphGetGraph();
    v24 = AGSubgraphCreate2();

    AGGraphClearUpdate();
    v25 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in AccessibilityOptionalRotorContent.Generator.someContentList.getter(v19, v3, v5, v10, v27);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    return (*(v15 + 8))(v19, v5);
  }

  return result;
}

uint64_t closure #1 in AccessibilityOptionalRotorContent.Generator.someContentList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[2] = a3;
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in Attribute.init(value:)partial apply, v19, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  _GraphValue.init(_:)();
  v13 = (a2 + *(type metadata accessor for AccessibilityOptionalRotorContent.Generator(0, a3, a4, v12) + 36));
  v14 = v13[1];
  v26[0] = v13[2];
  *(v26 + 12) = *(v13 + 44);
  v15 = v13[1];
  v25[0] = *v13;
  v25[1] = v15;
  v20 = v25[0];
  v21 = v14;
  *v22 = v13[2];
  *&v22[12] = *(v13 + 44);
  v16 = *(a4 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v25, v27);
  v16(&v24, v23, &v20, a3, a4);
  v27[0] = v20;
  v27[1] = v21;
  v28[0] = *v22;
  *(v28 + 12) = *&v22[12];
  outlined destroy of _AccessibilityRotorEntryInputs(v27);
  Value = AGGraphGetValue();
  return outlined init with copy of DropInfo(Value, a5);
}

uint64_t AccessibilityOptionalRotorContent.Generator.count.getter(uint64_t a1)
{
  AccessibilityOptionalRotorContent.Generator.someContentList.getter(a1, v8);
  if (v8[3])
  {
    outlined init with copy of _Benchmark(v8, v5);
    outlined destroy of AccessibilityRelationshipScope.Key(v8);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of AccessibilityRotorEntryList?(v8);
    return 0;
  }

  return v3;
}

uint64_t AccessibilityOptionalRotorContent.Generator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AccessibilityOptionalRotorContent.Generator.someContentList.getter(a3, v16);
  if (v16[3])
  {
    outlined init with copy of _Benchmark(v16, v13);
    outlined destroy of AccessibilityRelationshipScope.Key(v16);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = (*(v10 + 8))(a1, a2, a4, a5, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of AccessibilityRotorEntryList?(v16);
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t Group<A>.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  return Group.init(_content:)();
}

uint64_t static Group<A>._makeEntries(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v10 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 24))(v9, v11, a3, a4);
}

uint64_t closure #1 in static Group<A>._makeEntries(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for Group();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t CombineGenerator.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of DropInfo(i, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 16))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      outlined destroy of AccessibilityRelationshipScope.Key(v8);
      if (!--v1)
      {
        return v2;
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

uint64_t CombineGenerator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = *a2;
  for (i = a3 + 32; ; i += 40)
  {
    outlined init with copy of DropInfo(i, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v12 + 16))(v11, v12);
    v14 = v8 + result;
    if (__OFADD__(v8, result))
    {
      break;
    }

    if (v9 < v14)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      v18 = (v9 - v8) & ~((v9 - v8) >> 63);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (((*(v16 + 8))(a1, &v18, a4, a5, v15, v16) & 1) == 0)
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v19);
        return 0;
      }
    }

    outlined destroy of AccessibilityRelationshipScope.Key(v19);
    v8 = v14;
    if (!--v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ForEach<>.MakeList(uint64_t a1, uint64_t a2)
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t type metadata completion function for AccessibilityOptionalRotorContent(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityOptionalRotorContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for AccessibilityOptionalRotorContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for AccessibilityOptionalRotorContent(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for AccessibilityOptionalRotorContent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for AccessibilityOptionalRotorContent(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for AccessibilityOptionalRotorContent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for AccessibilityOptionalRotorContent(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void destroy for AccessibilityOptionalRotorContent.MakeList(void *a1)
{

  v2 = a1[9];
}

uint64_t initializeWithCopy for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for AccessibilityOptionalRotorContent.MakeList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityTupleRotorContent.MakeLists(uint64_t a1)
{
}

uint64_t initializeWithCopy for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t assignWithCopy for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
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
  return a1;
}

uint64_t assignWithTake for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
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
  return a1;
}

uint64_t initializeWithCopy for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, uint64_t *a2)
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
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t *assignWithCopy for AccessibilityTupleRotorContent.CountEntries(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  v4 = a2[8];
  *(a1 + 72) = *(a2 + 72);
  a1[8] = v4;
  return a1;
}

uint64_t *assignWithTake for AccessibilityTupleRotorContent.CountEntries(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 14) = *(a2 + 14);
  a1[8] = a2[8];
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for AccessibilityTupleRotorContent.CountEntries(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t base witness table accessor for _AttributeBody in ForEach<A, B, C><>.MakeList(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.MakeList, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.MakeList, a1);
}

uint64_t type metadata accessor for ForEach<>.Generator(uint64_t a1, uint64_t a2)
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

void outlined consume of AccessibilityRotorEntryRange(id a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }
}

unint64_t lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>)
  {
    type metadata accessor for Map<Never, Never>(255, &lazy cache variable for type metadata for Map<Never, Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityOptionalRotorContent.Generator(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityOptionalRotorContent.Generator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    *(v11 + 16) = *(v12 + 16);
    *(v11 + 24) = *(v12 + 24);
    *(v11 + 28) = *(v12 + 28);
    *(v11 + 32) = *(v12 + 32);
    *(v11 + 36) = *(v12 + 36);
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 48) = *(v12 + 48);
    *(v11 + 56) = *(v12 + 56);
    v13 = ((v11 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = ((v12 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *v14;
    v15 = ((v14 + 11) & 0xFFFFFFFFFFFFFFF8);
    v16 = *v15;
    *((v13 + 11) & 0xFFFFFFFFFFFFFFF8) = *v15;

    v17 = v16;
  }

  return a1;
}

void destroy for AccessibilityOptionalRotorContent.Generator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  v5 = a1 + *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *((((v6 + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
}

void *initializeWithCopy for AccessibilityOptionalRotorContent.Generator(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = (a1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 28) = *(v15 + 28);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 36) = *(v15 + 36);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 48) = *(v15 + 48);
  *(v14 + 56) = *(v15 + 56);
  v16 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  *((v16 + 11) & 0xFFFFFFFFFFFFFFF8) = *v18;

  v20 = v19;
  return a1;
}

void *assignWithCopy for AccessibilityOptionalRotorContent.Generator(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = v20;
  v22 = v20;

  return a1;
}

void *initializeWithTake for AccessibilityOptionalRotorContent.Generator(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  *(v14 + 44) = *(v15 + 44);
  v14[1] = v17;
  v14[2] = v18;
  *v14 = v16;
  v19 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for AccessibilityOptionalRotorContent.Generator(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  *v19 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent.Generator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AccessibilityOptionalRotorContent.Generator(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
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

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *(v22 + 56) = 0;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 16) = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

id outlined copy of AccessibilityRotorEntryRange(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  return result;
}

double destroy for AccessibilityRotorEntry.Generator(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v2 = *(a1 + 80);
  if (v2 != 255)
  {
    outlined consume of AccessibilityRotorEntryRange(*(a1 + 64), *(a1 + 72), v2);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityRotorEntry.Generator(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v6 = 1;
  }

  else
  {
    if (!*(a2 + 48))
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
      goto LABEL_7;
    }

    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 48);
  }

  *(a1 + 48) = v6;
LABEL_7:
  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = *(a2 + 80);
  v10 = v8;
  if (v9 == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 72);
    outlined copy of AccessibilityRotorEntryRange(v11, v12, v9);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    *(a1 + 80) = v9;
  }

  v13 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v13;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorEntry.Generator(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 4);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (*(a2 + 48))
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *a1 = v6;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 7);
  *(a1 + 56) = v10;
  v11 = v10;

  v12 = *(a2 + 80);
  if (*(a1 + 80) == 255)
  {
    if (v12 == 255)
    {
      v21 = a2[4];
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v21;
    }

    else
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 9);
      outlined copy of AccessibilityRotorEntryRange(v18, v19, *(a2 + 80));
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v12;
    }
  }

  else if (v12 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
    v20 = *(a2 + 80);
    *(a1 + 64) = a2[4];
    *(a1 + 80) = v20;
  }

  else
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    outlined copy of AccessibilityRotorEntryRange(v13, v14, *(a2 + 80));
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    *(a1 + 64) = v13;
    *(a1 + 72) = v14;
    v17 = *(a1 + 80);
    *(a1 + 80) = v12;
    outlined consume of AccessibilityRotorEntryRange(v15, v16, v17);
  }

  v22 = *(a2 + 12);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = v22;

  v23 = *(a2 + 13);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v23;
  return a1;
}

uint64_t outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(uint64_t a1)
{
  type metadata accessor for Map<Never, Never>(0, &lazy cache variable for type metadata for AccessibilityRotorEntryElementSpecifier<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AccessibilityRotorEntryElementSpecifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Map<Never, Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t assignWithTake for AccessibilityRotorEntry.Generator(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a1 + 80);
  if (v6 == 255)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 80);
  if (v7 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_8;
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  outlined consume of AccessibilityRotorEntryRange(v8, v9, v6);
LABEL_8:
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorEntry.Generator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityRotorEntry.Generator(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEach<>.Generator(uint64_t a1)
{
  result = type metadata accessor for ForEach();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEach<>.Generator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v7 = (((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v24 = *a2;
    *v3 = *a2;
    v3 = (v24 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    v8 = v7 + 8;
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
    *(v17 + 24) = *(v18 + 24);
    *(v17 + 28) = *(v18 + 28);
    *(v17 + 32) = *(v18 + 32);
    *(v17 + 36) = *(v18 + 36);
    *(v17 + 40) = *(v18 + 40);
    *(v17 + 48) = *(v18 + 48);
    *(v17 + 56) = *(v18 + 56);
    v19 = ((v17 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *v21;

    v23 = v22;
  }

  return v3;
}

void destroy for ForEach<>.Generator(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + 7;

  v5 = *((((((a1 + (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  *((v17 + 11) & 0xFFFFFFFFFFFFFFF8) = *v19;

  v21 = v20;
  return a1;
}

uint64_t assignWithCopy for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = v20;
  v22 = v20;

  return a1;
}

uint64_t initializeWithTake for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v15 + 44);
  v18 = v15[1];
  v17 = v15[2];
  *v14 = *v15;
  v14[1] = v18;
  v14[2] = v17;
  *(v14 + 44) = v16;
  v19 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  *(v14 + 24) = *(v15 + 24);
  *(v14 + 28) = *(v15 + 28);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 36) = *(v15 + 36);
  *(v14 + 40) = *(v15 + 40);

  *(v14 + 48) = *(v15 + 48);

  *(v14 + 56) = *(v15 + 56);
  v16 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  *v18 = *((v17 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ForEach<>.Generator(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ForEach<>.Generator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t outlined destroy of AccessibilityRotorEntryList?(uint64_t a1)
{
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for AccessibilityRotorEntryList?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Attribute<AccessibilityRotorEntryList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AccessibilityRotorEntryList);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for UIArrayInteractionRepresentable.makeUIInteractions() in conformance ScrollPocketElementInteractionRepresentable()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18CD69590;
  *(result + 32) = v3;
  return result;
}

Swift::Int BarMagicPocketStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle and conformance BarMagicPocketStyle()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarMagicPocketStyle, &type metadata for BarMagicPocketStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarMagicPocketStyle.Role, &type metadata for BarMagicPocketStyle.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarMagicPocketStyle.Role, &type metadata for BarMagicPocketStyle.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role);
  }

  return result;
}

void type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>)
  {
    v4 = type metadata accessor for CoreInteractionRepresentableAdaptor(0, &type metadata for ScrollPocketElementInteractionRepresentable, &protocol witness table for ScrollPocketElementInteractionRepresentable, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle.Role? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for BarMagicPocketStyle.Role?, &type metadata for BarMagicPocketStyle.Role, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?);
  }

  return result;
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a8 = 1;
  *(a8 + 8) = a10;
  *(a8 + 16) = a14;
  outlined init with copy of _Benchmark(a2, a8 + 24);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a15;
  v17[9] = a3;
  v17[10] = a4;
  v17[11] = a5;
  v38 = a9;
  v39 = a10;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v18 = type metadata accessor for DocumentGroupConfiguration.LazyViewerManagedDocumentContainer(255, &v38);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v19 = type metadata accessor for ModifiedContent();
  v20 = type metadata accessor for ModifiedContent();
  v37[0] = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.LazyViewerManagedDocumentContainer<A, B>, v18);
  v37[1] = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v21 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v37);
  v23 = *(a15 + 8);
  v36[0] = WitnessTable;
  v36[1] = v23;
  v24 = swift_getWitnessTable(v21, v20, v36);
  PlatformItemListTransformModifier.init(flags:transform:)(a10, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));

  v38 = a10;
  v39 = v20;
  v40 = a13;
  v41 = a14;
  v42 = v24;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v38);
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v25 = type metadata accessor for UTType();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63400;
  (*(v26 + 16))(v28 + v27, a1, v25);
  *(a8 + 88) = v28;

  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v26 + 8))(a1, v25);
  *(a8 + 96) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, void (*a3)(void, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v57 = a7;
  v47 = a4;
  v46 = a3;
  v45 = a1;
  v58 = a9;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for URLDocumentConfiguration(0);
  MEMORY[0x1EEE9AC00](v43);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v49 = a5;
  v18 = type metadata accessor for ModifiedContent();
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v43 - v22;
  v23 = type metadata accessor for _ConditionalContent();
  v55 = *(v23 - 8);
  v56 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v43 - v24;
  v25 = *(a10 + 24);
  swift_unknownObjectRetain();
  v26 = v25(a6, a10);
  swift_unknownObjectRelease();
  if (v26)
  {
    v27 = *(a10 + 56);
    swift_unknownObjectRetain();
    v27(a6, a10);
    swift_unknownObjectRelease();
    *v15 = 0;
    v28 = v44;
    v46(v15);
    outlined destroy of DocumentConfiguration?(v15, type metadata accessor for URLDocumentConfiguration);
    swift_getKeyPath();
    v29 = v51;
    v30 = v49;
    v31 = v57;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a6, v51, a10, type metadata accessor for DocumentConfiguration);
    v32 = type metadata accessor for DocumentConfiguration(0);
    (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v29, type metadata accessor for DocumentConfiguration?);
    (*(v48 + 8))(v28, v30);
    v33 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v59[0] = v31;
    v59[1] = v33;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v59);
    v35 = v52;
    static ViewBuilder.buildExpression<A>(_:)();
    v36 = *(v53 + 8);
    v36(v20, v18);
    static ViewBuilder.buildExpression<A>(_:)();
    v37 = v54;
    static ViewBuilder.buildEither<A, B>(first:)(v20, v18, MEMORY[0x1E69815C0], WitnessTable, MEMORY[0x1E6981580]);
    v36(v20, v18);
    v36(v35, v18);
  }

  else
  {
    v63 = static Color.clear.getter();
    v38 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v31 = v57;
    v62[0] = v57;
    v62[1] = v38;
    v39 = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v62);
    v37 = v54;
    static ViewBuilder.buildEither<A, B>(second:)(&v63, v18, MEMORY[0x1E69815C0], v39, MEMORY[0x1E6981580]);
  }

  v40 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
  v61[0] = v31;
  v61[1] = v40;
  v60[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v61);
  v60[1] = MEMORY[0x1E6981580];
  v41 = v56;
  swift_getWitnessTable(MEMORY[0x1E697F968], v56, v60);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v55 + 8))(v37, v41);
}

void DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.configuration.getter(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 56);
  type metadata accessor for DocumentConfiguration(0);
  v6 = *(a1 + 24);
  swift_unknownObjectRetain();
  v5(v6, v4);
  swift_unknownObjectRelease();
  *a2 = 0;
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a8 = 0;
  *(a8 + 8) = a10;
  *(a8 + 16) = a14;
  outlined init with copy of _Benchmark(a7, a8 + 24);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a15;
  v17[9] = a2;
  v17[10] = a3;
  v17[11] = a6;
  v40 = a9;
  v41 = a10;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v18 = type metadata accessor for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(255, &v40);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v19 = type metadata accessor for ModifiedContent();
  v20 = type metadata accessor for ModifiedContent();
  v39[0] = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer<A, B>, v18);
  v39[1] = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v21 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v39);
  v23 = *(a15 + 8);
  v38[0] = WitnessTable;
  v38[1] = v23;
  v24 = swift_getWitnessTable(v21, v20, v38);
  PlatformItemListTransformModifier.init(flags:transform:)(a10, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));

  v40 = a10;
  v41 = v20;
  v42 = a13;
  v43 = a14;
  v44 = v24;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v40);
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v25 = type metadata accessor for UTType();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63400;
  v29 = *(v26 + 16);
  v29(v28 + v27, a1, v25);
  *(a8 + 88) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18CD63400;
  v29(v30 + v27, a1, v25);

  __swift_destroy_boxed_opaque_existential_1(a7);
  result = (*(v26 + 8))(a1, v25);
  *(a8 + 96) = v30;
  return result;
}

double closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void, uint64_t *), const char *a14)
{
  v35 = a7;
  v36 = a4;
  v38 = a9;
  v32 = a8;
  v33 = a14;
  v34 = a12;
  v37 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();

  v44 = ObservedObject.init(wrappedValue:)();
  *&v45 = v20;
  *(&v45 + 1) = a2;
  v46 = a3;
  v40 = a5;
  *&v41 = a6;
  *(&v41 + 1) = v32;
  v42 = a10;
  v43 = a11;
  v21 = a13(0, &v40);
  WitnessTable = swift_getWitnessTable(v33, v21);
  View.styleContext<A>(_:)();

  swift_unknownObjectRelease();
  v44 = v40;
  v45 = v41;
  v46 = v42;
  v23 = v34;
  v24 = *(v34 + 16);
  v25 = swift_unknownObjectRetain();
  v26 = v35;
  v24(v25, a11, v35, v23);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v27 = type metadata accessor for ModifiedContent();
  v28 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v39[0] = WitnessTable;
  v39[1] = v28;
  v29 = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v39);
  MEMORY[0x18D00A570](v19, v27, v26, v29);
  (*(v37 + 8))(v19, v26);

  swift_unknownObjectRelease();
  return result;
}

uint64_t DocumentGroupConfiguration.LazyEditorManagedDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a8;
  v62 = a7;
  v51 = a4;
  v50 = a3;
  v49 = a1;
  v63 = a9;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLDocumentConfiguration(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v58 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v54 = a5;
  v20 = type metadata accessor for ModifiedContent();
  v57 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v56 = v46 - v24;
  v25 = type metadata accessor for _ConditionalContent();
  v60 = *(v25 - 8);
  v61 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v59 = v46 - v26;
  v27 = *(a10 + 24);
  swift_unknownObjectRetain();
  v28 = v27(a6, a10);
  swift_unknownObjectRelease();
  if (v28)
  {
    v48 = v20;
    v29 = v50;
    v46[1] = a2;
    v30 = v54;
    v47 = v22;
    v31 = v62;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a6, v17, a10, type metadata accessor for URLDocumentConfiguration);
    v29(v17);
    v20 = v48;
    outlined destroy of DocumentConfiguration?(v17, type metadata accessor for URLDocumentConfiguration);
    v46[2] = swift_getKeyPath();
    v32 = v53;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a6, v53, a10, type metadata accessor for DocumentConfiguration);
    v33 = type metadata accessor for DocumentConfiguration(0);
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v47;
    v35 = v58;
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v32, type metadata accessor for DocumentConfiguration?);
    (*(v52 + 8))(v35, v30);
    v36 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v64[0] = v31;
    v64[1] = v36;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v64);
    v38 = v56;
    static ViewBuilder.buildExpression<A>(_:)();
    v39 = *(v57 + 8);
    v39(v34, v20);
    static ViewBuilder.buildExpression<A>(_:)();
    v40 = v59;
    static ViewBuilder.buildEither<A, B>(first:)(v34, v20, MEMORY[0x1E69815C0], WitnessTable, MEMORY[0x1E6981580]);
    v39(v34, v20);
    v39(v38, v20);
  }

  else
  {
    v68 = static Color.clear.getter();
    v41 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v31 = v62;
    v67[0] = v62;
    v67[1] = v41;
    v42 = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v67);
    v40 = v59;
    static ViewBuilder.buildEither<A, B>(second:)(&v68, v20, MEMORY[0x1E69815C0], v42, MEMORY[0x1E6981580]);
  }

  v43 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
  v66[0] = v31;
  v66[1] = v43;
  v65[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v20, v66);
  v65[1] = MEMORY[0x1E6981580];
  v44 = v61;
  swift_getWitnessTable(MEMORY[0x1E697F968], v61, v65);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v60 + 8))(v40, v44);
}

void DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(uint64_t a2@<X5>, _BYTE *a3@<X8>, uint64_t a4, void (*a5)(void))
{
  v7 = *(a4 + 80);
  swift_unknownObjectRetain();
  v8 = v7(a2, a4);
  v9 = *(a4 + 56);
  a5(0);
  v9(a2, a4);
  swift_unknownObjectRelease();
  *a3 = v8 & 1;
}

uint64_t DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.body.getter@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v39 = a3;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v33 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v31 - v12;
  v13 = type metadata accessor for _ConditionalContent();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v31 - v14;
  v15 = a1[6];
  v16 = *(v15 + 24);
  v17 = a1[3];
  swift_unknownObjectRetain();
  LOBYTE(v7) = v16(v17, v15);
  swift_unknownObjectRelease();
  v18 = MEMORY[0x1E6981580];
  if (v7)
  {
    swift_getKeyPath();
    v32(a1);
    v19 = type metadata accessor for DocumentConfiguration(0);
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v20 = a1[4];
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v6, type metadata accessor for DocumentConfiguration?);
    v21 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v40[0] = v20;
    v40[1] = v21;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v40);
    v23 = v34;
    static ViewBuilder.buildExpression<A>(_:)();
    v24 = *(v35 + 8);
    v24(v10, v8);
    static ViewBuilder.buildExpression<A>(_:)();
    v25 = v36;
    static ViewBuilder.buildEither<A, B>(first:)(v10, v8, MEMORY[0x1E69815C0], WitnessTable, MEMORY[0x1E6981580]);
    v24(v10, v8);
    v24(v23, v8);
  }

  else
  {
    v44 = static Color.clear.getter();
    v20 = a1[4];
    v26 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
    v43[0] = v20;
    v43[1] = v26;
    v27 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v43);
    v25 = v36;
    static ViewBuilder.buildEither<A, B>(second:)(&v44, v8, MEMORY[0x1E69815C0], v27, MEMORY[0x1E6981580]);
  }

  v28 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
  v42[0] = v20;
  v42[1] = v28;
  v41[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v42);
  v41[1] = v18;
  v29 = v38;
  swift_getWitnessTable(MEMORY[0x1E697F968], v38, v41);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v37 + 8))(v25, v29);
}

void DocumentGroupConfiguration.EagerEditorManagedDocumentContainer.configuration.getter(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 80);
  v5 = *(a1 + 24);
  swift_unknownObjectRetain();
  v6 = v4(v5, v3);
  swift_unknownObjectRelease();
  v7 = *(v3 + 56);
  type metadata accessor for DocumentConfiguration(0);
  swift_unknownObjectRetain();
  v7(v5, v3);
  swift_unknownObjectRelease();
  *a2 = v6 & 1;
}

uint64_t DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.init(modelBox:viewer:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, char *a9@<X8>)
{
  *a9 = ObservedObject.init(wrappedValue:)();
  *(a9 + 1) = v17;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v18 = a8(0, v20);
  return (*(*(a3 - 8) + 32))(&a9[*(v18 + 60)], a2, a3);
}

uint64_t URLDocumentConfiguration.documentURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for URLDocumentConfiguration(0) + 20);

  return outlined init with copy of URL?(v4, a1);
}

uint64_t type metadata accessor for URLDocumentConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for URLDocumentConfiguration;
  if (!type metadata singleton initialization cache for URLDocumentConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLDocumentConfiguration.documentURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for URLDocumentConfiguration(0) + 20);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t DocumentGroup.init<A, B>(editing:newDocumentProvider:documentBoxType:contentModifierType:editor:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v25 = a7;
  v23 = a10;
  v24 = a9;
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = _typeName(_:qualified:)();
  v21 = v20;
  outlined init with copy of _Benchmark(a2, v29);
  DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(v18, v26, v27, v19, v21, v28, v29, v25, a6, a8, v24, *(&v24 + 1), v23, *(&v23 + 1), a11);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v15 + 8))(a1, v14);
}

{
  return DocumentGroup.init<A, B>(editing:newDocument:documentBoxType:contentModifierType:editor:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t DocumentGroup.init<A, B>(viewing:newDocumentProvider:documentBoxType:contentModifierType:viewer:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a4;
  v27 = a3;
  v25 = a10;
  v26 = a9;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  outlined init with copy of _Benchmark(a2, v30);
  v22 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(v21, v30, a5, v28, v29, v22, v23, a8, a7, v26, *(&v26 + 1), v25, *(&v25 + 1), a11, a12);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v18 + 8))(a1, v17);
}

{
  return DocumentGroup.init<A, B>(viewing:newDocument:documentBoxType:contentModifierType:viewer:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t DocumentGroup.init<A, B>(editing:newDocument:documentBoxType:contentModifierType:editor:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, uint64_t a10)
{
  v33 = a6;
  v34 = a3;
  v29 = a2;
  v27 = a1;
  v32 = a7;
  v30 = a9;
  v31 = a8;
  v13 = *(a5 - 8);
  v28 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);
  (*(v13 + 16))(v15, a4, a5);
  v21 = _typeName(_:qualified:)();
  v23 = v22;
  v24 = v29;
  outlined init with copy of _Benchmark(v29, v35);
  DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(v20, v15, v21, v23, v33, v34, v35, a5, v33, v31, *(&v31 + 1), v30, *(&v30 + 1), v28);
  (*(v13 + 8))(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return (*(v17 + 8))(v27, v16);
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v59 = a2;
  v60 = a7;
  v54 = a6;
  *&v58 = a4;
  v56 = a3;
  v61 = a1;
  v53 = a12;
  v52 = a11;
  v16 = *(a8 - 8);
  v17 = *(v16 + 64);
  v51[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v19;
  *v19 = 0;
  v19[1] = a9;
  v19[2] = a13;
  outlined init with copy of _Benchmark(v20, (v19 + 3));
  (*(v16 + 16))(v18, a2, a8);
  v21 = *(v16 + 80);
  v57 = v16;
  v22 = (v21 + 72) & ~v21;
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = a8;
  *(v24 + 2) = a8;
  *(v24 + 3) = a9;
  *(v24 + 4) = a10;
  v26 = v52;
  v27 = v53;
  *(v24 + 5) = v52;
  *(v24 + 6) = v27;
  *(v24 + 7) = a13;
  *(v24 + 8) = a14;
  v28 = *(v16 + 32);
  v29 = v25;
  v55 = v25;
  v28(&v24[v22], v18);
  *&v24[v23] = v54;
  v67 = v29;
  v68 = a9;
  v69 = v26;
  v70 = v27;
  v71 = a13;
  v30 = type metadata accessor for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(255, &v67);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v31 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer<A, B>, v30);
  v34 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v66[0] = WitnessTable;
  v66[1] = v34;
  v35 = MEMORY[0x1E697E858];
  v36 = swift_getWitnessTable(MEMORY[0x1E697E858], v31, v66);
  v37 = *(a14 + 8);
  v65[0] = v36;
  v65[1] = v37;
  v38 = swift_getWitnessTable(v35, v32, v65);
  v63 = PlatformItemListTransformModifier.init(flags:transform:)(a9, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
  v64 = v39;
  v67 = a9;
  v68 = v32;
  v69 = v27;
  v70 = a13;
  v71 = v38;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v67);
  v40 = AnyView.init<A>(_:)();
  v41 = v62;
  v42 = v56;
  v62[8] = v40;
  v41[9] = v42;
  v41[10] = v58;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v43 = type metadata accessor for UTType();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  v58 = xmmword_18CD63400;
  *(v46 + 16) = xmmword_18CD63400;
  v47 = *(v44 + 16);
  v48 = v61;
  v47(v46 + v45, v61, v43);
  v62[11] = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  v47(v49 + v45, v48, v43);
  __swift_destroy_boxed_opaque_existential_1(v60);
  (*(v57 + 8))(v59, v55);
  result = (*(v44 + 8))(v48, v43);
  v62[12] = v49;
  return result;
}

uint64_t DocumentGroup.init<A, B>(viewing:newDocument:documentBoxType:contentModifierType:viewer:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v28 = a8;
  v26 = a10;
  v27 = a9;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v20);
  outlined init with copy of _Benchmark(a2, v32);
  (*(v15 + 16))(v17, a5, a6);
  v23 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(v22, v32, v17, v31, v23, v24, a6, v28, v29, v27, *(&v27 + 1), v26, *(&v26 + 1), a11);
  (*(v15 + 8))(a5, a6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v19 + 8))(a1, v18);
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v55 = a5;
  v56 = a6;
  v57 = a3;
  v58 = a2;
  v52 = a12;
  v53 = a4;
  v51 = a11;
  v59 = a1;
  v60 = a14;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v50[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = 1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a13;
  outlined init with copy of _Benchmark(v20, a8 + 24);
  (*(v17 + 16))(v19, a3, a7);
  v21 = *(v17 + 80);
  v54 = v17;
  v22 = (v21 + 72) & ~v21;
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = a7;
  *(v24 + 2) = a7;
  *(v24 + 3) = a9;
  v26 = v51;
  *(v24 + 4) = a10;
  *(v24 + 5) = v26;
  v27 = v52;
  *(v24 + 6) = v52;
  *(v24 + 7) = a13;
  *(v24 + 8) = v60;
  v28 = *(v17 + 32);
  v29 = v25;
  v28(&v24[v22], v19);
  *&v24[v23] = v53;
  v65 = v29;
  v66 = a9;
  v67 = v26;
  v68 = v27;
  v69 = a13;
  v30 = type metadata accessor for DocumentGroupConfiguration.EagerViewerManagedDocumentContainer(255, &v65);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v31 = type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.EagerViewerManagedDocumentContainer<A, B>, v30);
  v34 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v64[0] = WitnessTable;
  v64[1] = v34;
  v35 = MEMORY[0x1E697E858];
  v36 = swift_getWitnessTable(MEMORY[0x1E697E858], v31, v64);
  v37 = *(v60 + 8);
  v63[0] = v36;
  v63[1] = v37;
  v38 = swift_getWitnessTable(v35, v32, v63);
  v61 = PlatformItemListTransformModifier.init(flags:transform:)(a9, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
  v62 = v39;
  v65 = a9;
  v66 = v32;
  v67 = v27;
  v68 = a13;
  v69 = v38;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v65);
  v40 = AnyView.init<A>(_:)();
  v42 = v55;
  v41 = v56;
  *(a8 + 64) = v40;
  *(a8 + 72) = v42;
  *(a8 + 80) = v41;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v43 = type metadata accessor for UTType();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_18CD63400;
  v47 = v46 + v45;
  v48 = v59;
  (*(v44 + 16))(v47, v59, v43);
  *(a8 + 88) = v46;
  (*(v54 + 8))(v57, v29);
  __swift_destroy_boxed_opaque_existential_1(v58);
  result = (*(v44 + 8))(v48, v43);
  *(a8 + 96) = MEMORY[0x1E69E7CC0];
  return result;
}

char *initializeBufferWithCopyOfBuffer for URLDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], &a2[v6], v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for URLDocumentConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for URL();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

_BYTE *initializeWithCopy for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithCopy for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

_BYTE *initializeWithTake for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithTake for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void type metadata completion function for URLDocumentConfiguration(uint64_t a1)
{
  _s10Foundation3URLVSgMaTm_2(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(uint64_t a1)
{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
}

{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
}

uint64_t closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void, void *), const char *a14)
{
  v51 = a7;
  v52 = a8;
  v58 = a6;
  v59 = a3;
  v50 = a5;
  v61 = a9;
  v54 = a13;
  v55 = a14;
  v60 = *(a6 - 8);
  v57 = a11;
  v49 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[0] = v23;
  v63[1] = v24;
  v63[2] = v25;
  v63[3] = v26;
  v63[4] = v27;
  v29 = v28(0, v63, v20);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v48 - v31;
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v33 = type metadata accessor for ModifiedContent();
  v53 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v48 - v35;
  (*(v18 + 16))(v22, a2, a4, v34);
  swift_unknownObjectRetain();
  v37 = v49;
  DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.init(modelBox:viewer:)(v22, a4, v50, v51, v52, v49, v54, v32);
  WitnessTable = swift_getWitnessTable(v55, v29);
  View.styleContext<A>(_:)();
  (*(v30 + 8))(v32, v29);
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = swift_unknownObjectRetain();
  v42 = v56;
  v43 = v37;
  v44 = v58;
  v40(v41, v43, v58, v39);
  v45 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v62[0] = WitnessTable;
  v62[1] = v45;
  v46 = swift_getWitnessTable(MEMORY[0x1E697E858], v33, v62);
  MEMORY[0x18D00A570](v42, v33, v44, v46);
  (*(v60 + 8))(v42, v44);
  return (*(v53 + 8))(v36, v33);
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(uint64_t a1)
{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
}

{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
}

double destroy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t initializeWithCopy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithTake for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(void *a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  v4 = *(a2 + 24);
  *(a1 + 1) = *(a2 + 8);
  a1[3] = v4;

  return a1;
}

uint64_t type metadata completion function for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);
    swift_unknownObjectRetain();
    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;
  swift_unknownObjectRetain();
  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *assignWithCopy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

void *assignWithTake for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  swift_unknownObjectRelease();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t outlined destroy of DocumentConfiguration?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void EnvironmentValues.presentationMode.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.presentationMode : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

double key path setter for EnvironmentValues.presentationMode : EnvironmentValues(uint64_t a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance PresentationModeKey@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EAA25328;
  v2 = byte_1EAA25330;
  *a1 = static PresentationModeKey.defaultValue;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;

  return result;
}

uint64_t PresentationMode.FromItem.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = (*(*(a2 - 8) + 48))(a1, 1, a2);
  *a3 = result != 1;
  return result;
}

double View.presentationMode(isPresented:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  View.environment<A>(_:_:)();

  return result;
}

double View.presentationMode<A>(item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v8 = type metadata accessor for PresentationMode.FromItem(0, a3, a5, v7);
  swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromItem<A>, v8);
  Binding.projecting<A>(_:)();
  View.environment<A>(_:_:)();

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>)
  {
    type metadata accessor for Binding<PresentationMode>();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>);
    }
  }
}

uint64_t specialized PresentationMode.FromItem.set(base:newValue:)(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    v4 = result;
    v6 = type metadata accessor for Optional();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = *(*(a3 - 8) + 56);

    return v7(v4, 1, 1, a3);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance InspectorPresentationKindInput(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t static AttachInspectorPresentationEnvironment._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v27 = a2[2];
  v28 = v4;
  v6 = a2[3];
  v29 = a2[4];
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v21 = v27;
  v22 = v6;
  v23 = a2[4];
  v30 = *(a2 + 20);
  v24 = *(a2 + 20);
  v19 = v25;
  v20 = v5;
  type metadata accessor for GraphHost();
  v8 = outlined init with copy of _ViewInputs(&v25, v35);
  MEMORY[0x18D00B7D0](v8);
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  LOBYTE(v35[0]) = 0;
  LOBYTE(v33[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LODWORD(v35[0]) = IndirectAttribute2;
  BYTE4(v35[0]) = 0;
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  PropertyList.subscript.setter();
  v10 = v26;
  swift_beginAccess();
  LODWORD(v35[0]) = *(v10 + 16);
  DWORD1(v35[0]) = IndirectAttribute2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v31[2] = v21;
  v31[3] = v22;
  v31[4] = v23;
  v32 = v24;
  v31[0] = v19;
  v31[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v31, v35);
  a3(v11, &v13);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v34 = v18;
  v33[0] = v13;
  v33[1] = v14;
  outlined destroy of _ViewInputs(v33);
  v35[2] = v21;
  v35[3] = v22;
  v35[4] = v23;
  v36 = v24;
  v35[0] = v19;
  v35[1] = v20;
  return outlined destroy of _ViewInputs(v35);
}

double AttachInspectorPresentationEnvironment.MakeInspectorEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t static PresentationEnvironmentWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *))
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 5);
  v16 = *(a2 + 3);
  v17 = v7;
  v18[0] = *(a2 + 7);
  *(v18 + 12) = *(a2 + 68);
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  v8 = PropertyList.subscript.getter();
  if ((v10 & 0x100000000) == 0)
  {
    swift_beginAccess();
    LODWORD(v10) = *(v6 + 16);
    v11 = partial apply for specialized closure #1 in Attribute.subscript.getter;
    KeyPath = swift_getKeyPath();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, PresentationKind>, MEMORY[0x1E697F230], &type metadata for PresentationKind, MEMORY[0x1E698D398]);
    lazy protocol witness table accessor for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>();

    Attribute.init<A>(body:value:flags:update:)();

    v8 = AGGraphSetIndirectAttribute();
  }

  v10 = v5;
  v11 = v4;
  KeyPath = v6;
  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 12) = *(v18 + 12);
  return a3(v8, &v10);
}

uint64_t static ClearInspectorPresentationEnvironment._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v25 = a2[2];
  v26 = v4;
  v6 = a2[3];
  v27 = a2[4];
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v19 = v25;
  v20 = v6;
  v21 = a2[4];
  v28 = *(a2 + 20);
  v22 = *(a2 + 20);
  v17 = v23;
  v18 = v5;
  LODWORD(v31[0]) = 0;
  BYTE4(v31[0]) = 1;
  outlined init with copy of _ViewInputs(&v23, v33);
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  PropertyList.subscript.setter();
  v8 = v24;
  swift_beginAccess();
  LODWORD(v33[0]) = *(v8 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v30 = v22;
  v29[0] = v17;
  v29[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v29, v33);
  a3(v9, &v11);
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v32 = v16;
  v31[0] = v11;
  v31[1] = v12;
  outlined destroy of _ViewInputs(v31);
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v34 = v22;
  v33[0] = v17;
  v33[1] = v18;
  return outlined destroy of _ViewInputs(v33);
}

double ClearInspectorPresentationEnvironment.ResetInspectorEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;
  type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput()
{
  result = lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput;
  if (!lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorPresentationKindInput, &unk_1EFFBE090, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput;
  if (!lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InspectorPresentationKindInput, &unk_1EFFBE090, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>)
  {
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(255, &lazy cache variable for type metadata for Map<EnvironmentValues, PresentationKind>, MEMORY[0x1E697F230], &type metadata for PresentationKind, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment()
{
  result = lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment;
  if (!lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearInspectorPresentationEnvironment.ResetInspectorEnvironment, &unk_1EFFBE068, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment);
  }

  return result;
}

void type metadata accessor for Map<EnvironmentValues, PresentationKind>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment()
{
  result = lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment;
  if (!lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttachInspectorPresentationEnvironment.MakeInspectorEnvironment, &unk_1EFFBE128, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment);
  }

  return result;
}

uint64_t static PrimitiveButtonStyleConfiguration.Label._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(v4, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
}

_BYTE *ScrapeableContent.Content.Button.Role.init(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  if (*result == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

_BYTE *protocol witness for StyleableView.scrapeableContent.getter in conformance ResolvedButtonStyle@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v5 = *v1;
  result = ScrapeableContent.Content.Button.Role.init(_:)(&v5, &v6);
  *(v3 + 16) = v6;
  *a1 = v3 | 0x7000000000000000;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PrimitiveButtonStyleConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v26 = *a2;
    *v3 = *a2;
    v3 = (v26 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v7;
      v28 = *(v7 + 1);
      v29 = v7[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v28, v29);
      *v6 = v27;
      *(v6 + 1) = v28;
      v6[16] = v29;
      v30 = *(v7 + 5);
      v31 = *(v7 + 24);
      *(v6 + 24) = v31;
      *(v6 + 5) = v30;
      v32 = v31;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = *(v7 + 2);
      v12 = *(v7 + 3);
      v13 = v7[34];
      v14 = *(v7 + 16);
      outlined copy of Environment<OpenURLAction>.Content(*v7, v10, v11, v12, v14, v13);
      *v6 = v9;
      *(v6 + 1) = v10;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
      *(v6 + 16) = v14;
      v6[34] = v13;
      v15 = *(v7 + 5);
      v16 = *(v7 + 6);
      v17 = *(v7 + 7);
      v18 = *(v7 + 8);
      v19 = v7[74];
      v20 = *(v7 + 36);
      outlined copy of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
      *(v6 + 5) = v15;
      *(v6 + 6) = v16;
      *(v6 + 7) = v17;
      *(v6 + 8) = v18;
      *(v6 + 36) = v20;
      v6[74] = v19;
      v21 = *(type metadata accessor for LinkDestination() + 24);
      v22 = &v6[v21];
      v23 = &v7[v21];
      v24 = type metadata accessor for URL();
      (*(*(v24 - 8) + 16))(v22, v23, v24);
      v25 = type metadata accessor for LinkDestination.Configuration();
      v22[*(v25 + 20)] = v23[*(v25 + 20)];
    }

    else
    {
      v33 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v33;
    }

    swift_storeEnumTagMultiPayload();
  }

  return v3;
}

_BYTE *assignWithCopy for PrimitiveButtonStyleConfiguration(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = *(a3 + 24);
    v32 = result;
    v4 = &result[v3];
    v5 = &a2[v3];
    _s7SwiftUI12ButtonActionOWOhTm_0(&result[v3], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v24 = *v5;
      v25 = *(v5 + 1);
      v26 = v5[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v5, v25, v26);
      *v4 = v24;
      *(v4 + 1) = v25;
      v4[16] = v26;
      v27 = *(v5 + 3);
      *(v4 + 3) = v27;
      v28 = *(v5 + 4);
      v29 = *(v5 + 5);
      *(v4 + 4) = v28;
      *(v4 + 5) = v29;
      v30 = v27;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *v5;
        v8 = *(v5 + 1);
        v9 = *(v5 + 2);
        v10 = *(v5 + 3);
        v11 = v5[34];
        v12 = *(v5 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v5, v8, v9, v10, v12, v11);
        *v4 = v7;
        *(v4 + 1) = v8;
        *(v4 + 2) = v9;
        *(v4 + 3) = v10;
        *(v4 + 16) = v12;
        v4[34] = v11;
        v13 = *(v5 + 5);
        v14 = *(v5 + 6);
        v15 = *(v5 + 7);
        v16 = *(v5 + 8);
        v17 = v5[74];
        v18 = *(v5 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
        *(v4 + 5) = v13;
        *(v4 + 6) = v14;
        *(v4 + 7) = v15;
        *(v4 + 8) = v16;
        *(v4 + 36) = v18;
        v4[74] = v17;
        v19 = *(type metadata accessor for LinkDestination() + 24);
        v20 = &v4[v19];
        v21 = &v5[v19];
        v22 = type metadata accessor for URL();
        (*(*(v22 - 8) + 16))(v20, v21, v22);
        v23 = type metadata accessor for LinkDestination.Configuration();
        v20[*(v23 + 20)] = v21[*(v23 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        return v32;
      }

      v31 = *(v5 + 1);
      *v4 = *v5;
      *(v4 + 1) = v31;
    }

    goto LABEL_8;
  }

  return result;
}

_BYTE *initializeWithTake for PrimitiveButtonStyleConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v8;
    *(v5 + 31) = *(v6 + 31);
    *(v5 + 40) = *(v6 + 40);
    *(v5 + 56) = *(v6 + 56);
    *(v5 + 71) = *(v6 + 71);
    v9 = *(type metadata accessor for LinkDestination() + 24);
    v10 = &v5[v9];
    v11 = &v6[v9];
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 32))(v10, v11, v12);
    v13 = type metadata accessor for LinkDestination.Configuration();
    v10[*(v13 + 20)] = v11[*(v13 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  return a1;
}

_BYTE *assignWithTake for PrimitiveButtonStyleConfiguration(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = *(a3 + 24);
    v4 = result;
    v5 = &result[v3];
    v6 = &a2[v3];
    _s7SwiftUI12ButtonActionOWOhTm_0(&result[v3], type metadata accessor for ButtonAction);
    v7 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(v6 + 1);
      *v5 = *v6;
      *(v5 + 1) = v8;
      *(v5 + 31) = *(v6 + 31);
      *(v5 + 40) = *(v6 + 40);
      *(v5 + 56) = *(v6 + 56);
      *(v5 + 71) = *(v6 + 71);
      v9 = *(type metadata accessor for LinkDestination() + 24);
      v10 = &v5[v9];
      v11 = &v6[v9];
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 32))(v10, v11, v12);
      v13 = type metadata accessor for LinkDestination.Configuration();
      v10[*(v13 + 20)] = v11[*(v13 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v5, v6, *(*(v7 - 8) + 64));
    }

    return v4;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedButtonStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(v4 + 24);
    v7 = a1 + v6;
    v8 = a2 + v6;
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v8;
      v29 = *(v8 + 1);
      v30 = v8[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v29, v30);
      *v7 = v28;
      *(v7 + 1) = v29;
      v7[16] = v30;
      v31 = *(v8 + 5);
      v32 = *(v8 + 24);
      *(v7 + 24) = v32;
      *(v7 + 5) = v31;
      v33 = v32;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = *(v8 + 2);
      v13 = *(v8 + 3);
      v14 = v8[34];
      v15 = *(v8 + 16);
      outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v12, v13, v15, v14);
      *v7 = v10;
      *(v7 + 1) = v11;
      *(v7 + 2) = v12;
      *(v7 + 3) = v13;
      *(v7 + 16) = v15;
      v7[34] = v14;
      v16 = *(v8 + 5);
      v17 = *(v8 + 6);
      v18 = *(v8 + 7);
      v19 = *(v8 + 8);
      v20 = v8[74];
      v21 = *(v8 + 36);
      outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v21, v20);
      *(v7 + 5) = v16;
      *(v7 + 6) = v17;
      *(v7 + 7) = v18;
      *(v7 + 8) = v19;
      *(v7 + 36) = v21;
      v7[74] = v20;
      v22 = *(type metadata accessor for LinkDestination() + 24);
      v23 = &v7[v22];
      v24 = &v8[v22];
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 16))(v23, v24, v25);
      v26 = type metadata accessor for LinkDestination.Configuration();
      v23[*(v26 + 20)] = v24[*(v26 + 20)];
    }

    else
    {
      v34 = *(v8 + 1);
      *v7 = *v8;
      *(v7 + 1) = v34;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *initializeWithTake for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v8;
    *(v5 + 31) = *(v6 + 31);
    *(v5 + 40) = *(v6 + 40);
    *(v5 + 56) = *(v6 + 56);
    *(v5 + 71) = *(v6 + 71);
    v9 = *(type metadata accessor for LinkDestination() + 24);
    v10 = &v5[v9];
    v11 = &v6[v9];
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 32))(v10, v11, v12);
    v13 = type metadata accessor for LinkDestination.Configuration();
    v10[*(v13 + 20)] = v11[*(v13 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  return a1;
}

_BYTE *assignWithTake for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v5 = *(v4 + 24);
    v6 = &a1[v5];
    v7 = &a2[v5];
    _s7SwiftUI12ButtonActionOWOhTm_0(&a1[v5], type metadata accessor for ButtonAction);
    v8 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v9;
      *(v6 + 31) = *(v7 + 31);
      *(v6 + 40) = *(v7 + 40);
      *(v6 + 56) = *(v7 + 56);
      *(v6 + 71) = *(v7 + 71);
      v10 = *(type metadata accessor for LinkDestination() + 24);
      v11 = &v6[v10];
      v12 = &v7[v10];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(v11, v12, v13);
      v14 = type metadata accessor for LinkDestination.Configuration();
      v11[*(v14 + 20)] = v12[*(v14 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v8 - 8) + 64));
    }
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent, &type metadata for ListStyleContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>);
  }

  return result;
}

__n128 protocol witness for static PropertyKey.defaultValue.getter in conformance ButtonStyleInput@<Q0>(void *a1@<X2>, __n128 *a2@<X3>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions, &type metadata for EnvironmentValues.SearchSuggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>);
  }

  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in AccessibilityButtonModifier.init(_:)()
{
  type metadata accessor for PrimitiveButtonStyleConfiguration(0);

  implicit closure #2 in implicit closure #1 in AccessibilityButtonModifier.init(_:)();
}

uint64_t partial apply for specialized closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent()
{
  result = lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent;
  if (!lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryBarContent, &type metadata for AccessoryBarContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent;
  if (!lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryBarContent, &type metadata for AccessoryBarContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<AccessoryBarContent>, lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent, &type metadata for AccessoryBarContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Suggestions>, lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions, &type metadata for SearchFieldConfiguration.Suggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Control>, lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control, &type metadata for SearchFieldConfiguration.Control, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListFirstRowHeightTemplateContent>, lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent, &type metadata for ListFirstRowHeightTemplateContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content, &type metadata for LabelGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel()
{
  result = lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel;
  if (!lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _DatePickerStyleLabel, &type metadata for _DatePickerStyleLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel;
  if (!lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _DatePickerStyleLabel, &type metadata for _DatePickerStyleLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_DatePickerStyleLabel>, lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel, &type metadata for _DatePickerStyleLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DatePickerStyleConfiguration.Label, &type metadata for DatePickerStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DatePickerStyleConfiguration.Label, &type metadata for DatePickerStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label, &type metadata for DatePickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Content>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content, &type metadata for _MenuButtonStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label, &type metadata for _MenuButtonStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleConfiguration.Content, &type metadata for GroupBoxStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleConfiguration.Content, &type metadata for GroupBoxStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Content>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content, &type metadata for GroupBoxStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleConfiguration.Label, &type metadata for GroupBoxStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupBoxStyleConfiguration.Label, &type metadata for GroupBoxStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Label>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label, &type metadata for GroupBoxStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleConfiguration.Label, &type metadata for ControlGroupStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleConfiguration.Label, &type metadata for ControlGroupStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label, &type metadata for ControlGroupStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleConfiguration.Content, &type metadata for ControlGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroupStyleConfiguration.Content, &type metadata for ControlGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content, &type metadata for ControlGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel)
  {
    result = swift_getWitnessTable("Q", &type metadata for GaugeStyleConfiguration.MarkedValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.MarkedValueLabel, &type metadata for GaugeStyleConfiguration.MarkedValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MarkedValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel, &type metadata for GaugeStyleConfiguration.MarkedValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.MaximumValueLabel, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.MaximumValueLabel, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.MinimumValueLabel, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.MinimumValueLabel, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.CurrentValueLabel, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.CurrentValueLabel, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.Label, &type metadata for GaugeStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleConfiguration.Label, &type metadata for GaugeStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.Label>, lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label, &type metadata for GaugeStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BadgeViewStyleConfiguration.Content, &type metadata for BadgeViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable("5o\tbHU\b", &type metadata for BadgeViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<BadgeViewStyleConfiguration.Content>, lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content, &type metadata for BadgeViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel, &type metadata for SliderStyleConfiguration.MaximumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel, &type metadata for SliderStyleConfiguration.MinimumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.Label>, lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label, &type metadata for SliderStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StepperStyleConfiguration.Label, &type metadata for StepperStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StepperStyleConfiguration.Label, &type metadata for StepperStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<StepperStyleConfiguration.Label>, lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label, &type metadata for StepperStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer()
{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormStyleConfiguration.Footer, &type metadata for FormStyleConfiguration.Footer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormStyleConfiguration.Footer, &type metadata for FormStyleConfiguration.Footer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Footer>, lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer, &type metadata for FormStyleConfiguration.Footer, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormStyleConfiguration.Content, &type metadata for FormStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FormStyleConfiguration.Content, &type metadata for FormStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Content>, lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content, &type metadata for FormStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Actions>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions, &type metadata for ProgressViewStyleConfiguration.Actions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Label>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label, &type metadata for ProgressViewStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_TextFieldStyleLabel>, lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel, &type metadata for _TextFieldStyleLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonBehaviorStyleConfiguration.Content, &type metadata for ButtonBehaviorStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonBehaviorStyleConfiguration.Content, &type metadata for ButtonBehaviorStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ButtonBehaviorStyleConfiguration.Content>, lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content, &type metadata for ButtonBehaviorStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationViewStyleConfiguration.Content, &type metadata for _NavigationViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationViewStyleConfiguration.Content, &type metadata for _NavigationViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_NavigationViewStyleConfiguration.Content>, lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content, &type metadata for _NavigationViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content, &type metadata for DisclosureGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label, &type metadata for DisclosureGroupStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<OutlineSubgroupChildren>, lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren, &type metadata for OutlineSubgroupChildren, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ColorPickerStyleConfiguration.Label>, lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label, &type metadata for ColorPickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<PreviewModifierContent>, lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent, &type metadata for PreviewModifierContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.InspectorContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent, &type metadata for InspectorStyleConfiguration.InspectorContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.MainContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent, &type metadata for InspectorStyleConfiguration.MainContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label;
  if (!lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TokenFieldConfiguration.Label, &type metadata for TokenFieldConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label;
  if (!lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TokenFieldConfiguration.Label, &type metadata for TokenFieldConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<TokenFieldConfiguration.Label>, lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label, &type metadata for TokenFieldConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomScopeBar>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar, &type metadata for EnvironmentValues.SearchCustomScopeBar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_SidebarConfiguration.Sidebar>, lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar, &type metadata for _SidebarConfiguration.Sidebar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ResolvedRadioGroupPicker.Label>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label, &type metadata for ResolvedRadioGroupPicker.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.TextInputSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions, &type metadata for EnvironmentValues.TextInputSuggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomAccessory>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory, &type metadata for EnvironmentValues.SearchCustomAccessory, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiDatePickerStyleConfiguration.Label, &type metadata for MultiDatePickerStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiDatePickerStyleConfiguration.Label, &type metadata for MultiDatePickerStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MultiDatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label, &type metadata for MultiDatePickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t type metadata accessor for PrimitiveButtonStyle.Type()
{
  result = lazy cache variable for type metadata for PrimitiveButtonStyle.Type;
  if (!lazy cache variable for type metadata for PrimitiveButtonStyle.Type)
  {
    type metadata accessor for PrimitiveButtonStyle();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PrimitiveButtonStyle.Type);
  }

  return result;
}

unint64_t type metadata accessor for PrimitiveButtonStyle()
{
  result = lazy cache variable for type metadata for PrimitiveButtonStyle;
  if (!lazy cache variable for type metadata for PrimitiveButtonStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PrimitiveButtonStyle);
  }

  return result;
}

void withBridgedAnimation<A>(_:_:completion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = static Transaction.current.getter();

  Transaction.animation.setter();
  type metadata accessor for _SemanticFeature<Semantics_v5>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  v14 = static SemanticFeature.isEnabled.getter();
  if (v14)
  {
    v17[1] = v17;
    MEMORY[0x1EEE9AC00](v14);
    v16[2] = a6;
    v16[3] = &v18;
    v16[4] = a2;
    v16[5] = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;

    static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(a1, partial apply for closure #1 in withBridgedAnimation<A>(_:_:completion:), v16, partial apply for closure #2 in withBridgedAnimation<A>(_:_:completion:), v15, a6, a7);
  }

  else
  {
    withTransaction<A>(_:_:)();
  }
}

double closure #1 in withBridgedAnimation<A>(_:_:completion:)(void *a1)
{

  withTransaction<A>(_:_:)();

  return result;
}

void destroy for AnyIdentifiableShareConfiguration(uint64_t a1)
{
  outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (*(a1 + 72))
  {
    outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  if (*(a1 + 104))
  {
    outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  }
}

uint64_t initializeWithCopy for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v9 = *(a2 + 72);
  if (!v9)
  {
    v17 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v17;
    v13 = *(a2 + 104);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v18;
    return a1;
  }

  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v9;

  v13 = *(a2 + 104);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  outlined copy of Text.Storage(v14, v15, v16);
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v13;

  return a1;
}

uint64_t assignWithCopy for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v13 = *(a1 + 40);
  *(a1 + 40) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v14)
    {
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(a2 + 64);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 64);
      *(a1 + 48) = v15;
      *(a1 + 56) = v16;
      *(a1 + 64) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v24 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 48);
    v22 = *(a2 + 56);
    v23 = *(a2 + 64);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 48) = v21;
    *(a1 + 56) = v22;
    *(a1 + 64) = v23;
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v25 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v25;
  }

  v26 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v26)
    {
      v27 = *(a2 + 80);
      v28 = *(a2 + 88);
      v29 = *(a2 + 96);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 80);
      v31 = *(a1 + 88);
      v32 = *(a1 + 96);
      *(a1 + 80) = v27;
      *(a1 + 88) = v28;
      *(a1 + 96) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      outlined destroy of Text(a1 + 80);
      v36 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 80);
    v34 = *(a2 + 88);
    v35 = *(a2 + 96);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 80) = v33;
    *(a1 + 88) = v34;
    *(a1 + 96) = v35;
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v37 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v37;
  }

  return a1;
}

uint64_t assignWithTake for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  v11 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of AnyShareConfiguration.Storage(v6, v7, v8, v9, v11);
  if (*(a1 + 72))
  {
    v12 = *(a2 + 72);
    if (v12)
    {
      v13 = *(a2 + 64);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 72) = v12;

      if (!*(a1 + 104))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 48);
  }

  v17 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v17;
  if (!*(a1 + 104))
  {
LABEL_10:
    v23 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v23;
    return a1;
  }

LABEL_7:
  v18 = *(a2 + 104);
  if (!v18)
  {
    outlined destroy of Text(a1 + 80);
    goto LABEL_10;
  }

  v19 = *(a2 + 96);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v19;
  outlined consume of Text.Storage(v20, v21, v22);
  *(a1 + 104) = v18;

  return a1;
}

uint64_t storeEnumTagSinglePayload for AnyIdentifiableShareConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

void destroy for AnyShareConfiguration(uint64_t a1)
{
  outlined consume of AnyShareConfiguration.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

uint64_t initializeWithCopy for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 64);
  if (!v9)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v13 = *(a2 + 96);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v9;

  v13 = *(a2 + 96);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  outlined copy of Text.Storage(v14, v15, v16);
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v13;

  return a1;
}

uint64_t assignWithCopy for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v14)
    {
      v15 = *(a2 + 40);
      v16 = *(a2 + 48);
      v17 = *(a2 + 56);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *(a1 + 40) = v15;
      *(a1 + 48) = v16;
      *(a1 + 56) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v24 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 40);
    v22 = *(a2 + 48);
    v23 = *(a2 + 56);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 40) = v21;
    *(a1 + 48) = v22;
    *(a1 + 56) = v23;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v25 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v25;
  }

  v26 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v26)
    {
      v27 = *(a2 + 72);
      v28 = *(a2 + 80);
      v29 = *(a2 + 88);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 72);
      v31 = *(a1 + 80);
      v32 = *(a1 + 88);
      *(a1 + 72) = v27;
      *(a1 + 80) = v28;
      *(a1 + 88) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v36 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 72);
    v34 = *(a2 + 80);
    v35 = *(a2 + 88);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 72) = v33;
    *(a1 + 80) = v34;
    *(a1 + 88) = v35;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v37 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v37;
  }

  return a1;
}

uint64_t assignWithTake for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of AnyShareConfiguration.Storage(v5, v6, v7, v8, v10);
  if (*(a1 + 64))
  {
    v11 = *(a2 + 64);
    if (v11)
    {
      v12 = *(a2 + 56);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(a1 + 64) = v11;

      if (!*(a1 + 96))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  if (!*(a1 + 96))
  {
LABEL_10:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

LABEL_7:
  v16 = *(a2 + 96);
  if (!v16)
  {
    outlined destroy of Text(a1 + 72);
    goto LABEL_10;
  }

  v17 = *(a2 + 88);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v17;
  outlined consume of Text.Storage(v18, v19, v20);
  *(a1 + 96) = v16;

  return a1;
}

uint64_t AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a12 - 8);
  v19 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a12;
  *(v20 + 3) = a13;
  *(v20 + 4) = a14;
  *(v20 + 5) = a15;
  *(v20 + 6) = a16;
  *(v20 + 7) = a17;
  (*(v18 + 32))(&v20[v19], a1, a12);
  v34[0] = a13;
  v34[1] = a14;
  v34[2] = a16;
  v34[3] = a17;
  v21 = type metadata accessor for SharePreview(0, v34);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a12;
  *(v24 + 3) = a13;
  *(v24 + 4) = a14;
  *(v24 + 5) = a15;
  *(v24 + 6) = a16;
  *(v24 + 7) = a17;
  result = (*(v22 + 32))(&v24[v23], a11, v21);
  *a9 = partial apply for closure #1 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:);
  *(a9 + 8) = v20;
  *(a9 + 16) = partial apply for closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:);
  *(a9 + 24) = v24;
  *(a9 + 32) = 1;
  *(a9 + 33) = v34[0];
  *(a9 + 36) = *(v34 + 3);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

double protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AnyShareConfiguration.Key(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v15);
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v3 = *v19;
  v26 = *&v19[8];
  v27 = *&v19[24];
  if (*v19 == 1)
  {
    v4 = a1[1];
    v22 = *a1;
    v23 = v4;
    v5 = a1[3];
    v24 = a1[2];
    v25 = v5;
    v3 = *(a1 + 8);
    v6 = *(a1 + 72);
    v7 = *(a1 + 88);
  }

  else
  {
    v8 = a1[5];
    *v19 = a1[4];
    *&v19[16] = v8;
    *&v19[32] = *(a1 + 12);
    v9 = a1[1];
    v15 = *a1;
    v16 = v9;
    v10 = a1[3];
    v17 = a1[2];
    v18 = v10;
    outlined destroy of AnyShareConfiguration?(&v15, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v6 = v26;
    v7 = v27;
  }

  v20 = v6;
  v21 = v7;
  v11 = v23;
  *a1 = v22;
  a1[1] = v11;
  v12 = v25;
  a1[2] = v24;
  a1[3] = v12;
  *(a1 + 8) = v3;
  result = *&v20;
  v14 = v21;
  *(a1 + 72) = v20;
  *(a1 + 88) = v14;
  return result;
}

uint64_t AnySharePreview.init<A, B>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a2;
  v41 = a3;
  v42[0] = a2;
  v42[1] = a3;
  v42[2] = a4;
  v42[3] = a5;
  v31 = a5;
  v29 = type metadata accessor for SharePreview(0, v42);
  v9 = *(v29 - 8);
  v30 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - v10;
  *(a6 + 64) = 0u;
  v38 = a6 + 64;
  *(a6 + 80) = 0u;
  v12 = a1[4];
  v36 = a1[5];
  v13 = v36;
  v37 = v12;
  v14 = a1[6];
  v34 = a1[7];
  v15 = v34;
  v35 = v14;
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  v32 = *(v9 + 16);
  v32(v11, a1);
  v16 = *(v9 + 80);
  v33 = v9;
  v17 = (v16 + 48) & ~v16;
  v18 = swift_allocObject();
  v19 = v41;
  *(v18 + 2) = v40;
  *(v18 + 3) = v19;
  *(v18 + 4) = v39;
  *(v18 + 5) = a5;
  v20 = *(v9 + 32);
  v21 = v29;
  v20(&v18[v17], v11, v29);
  *(a6 + 48) = partial apply for closure #1 in AnySharePreview.init<A, B>(_:);
  *(a6 + 56) = v18;
  (v32)(v11, a1, v21);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v23;
  v24 = v31;
  *(v22 + 4) = v39;
  *(v22 + 5) = v24;
  v25 = v21;
  v20(&v22[v17], v11, v21);
  *(a6 + 32) = partial apply for closure #2 in AnySharePreview.init<A, B>(_:);
  *(a6 + 40) = v22;
  outlined copy of Text?(v37, v36, v35, v34);
  v26 = v38;
  outlined destroy of AnyShareConfiguration?(v38, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  outlined init with copy of Any?(a1, v26);
  return (*(v33 + 8))(a1, v25);
}

uint64_t closure #1 in AnySharePreview.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for SharePreview(0, v13);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Optional();
  v9 = type metadata accessor for NSItemProvider();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in AnySharePreview.init<A, B>(_:), v12, MEMORY[0x1E69E73E0], v9, v10, v13);
  return v13[0];
}

uint64_t closure #1 in closure #1 in AnySharePreview.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15 = a4;
  v16 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for NSItemProvider();
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = v15;
  *(v13 + 5) = a5;
  (*(v10 + 32))(&v13[v12], &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = NSItemProvider.init<A>(transferable:)();
  *v16 = result;
  return result;
}

uint64_t closure #2 in AnySharePreview.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for SharePreview(0, v13);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Optional();
  v9 = type metadata accessor for NSItemProvider();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #2 in AnySharePreview.init<A, B>(_:), v12, MEMORY[0x1E69E73E0], v9, v10, v13);
  return v13[0];
}

uint64_t partial apply for closure #1 in AnySharePreview.init<A, B>(_:)(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for SharePreview(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t closure #1 in closure #2 in AnySharePreview.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16 = a5;
  v17 = a6;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for NSItemProvider();
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  v14 = v16;
  *(v13 + 4) = a4;
  *(v13 + 5) = v14;
  (*(v10 + 32))(&v13[v12], &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  result = NSItemProvider.init<A>(transferable:)();
  *v17 = result;
  return result;
}

uint64_t (*makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v24;
  *(v19 + 6) = v23;
  *(v19 + 7) = v20;
  *(v19 + 8) = v25;
  *(v19 + 9) = a9;
  *(v19 + 10) = a10;
  (*(v14 + 32))(&v19[v18], v17, a2);
  return partial apply for closure #1 in makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:);
}

uint64_t closure #1 in makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v33 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - v23;
  v25 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  (*(v17 + 16))(v20, v38, a2, v22);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v24;
  v38 = v21;
  v27 = v32;
  v36 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v35 = *(v27 + 48);
  if (v35(v16, 1, AssociatedTypeWitness) != 1)
  {
    v34 = a10;
    v29 = *(v27 + 32);
    v30 = (v27 + 8);
    do
    {
      v29(v13, v16, AssociatedTypeWitness);
      v31 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
      MEMORY[0x18D00CC30]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = v39;
      NSItemProvider.register<A>(shareItem:)(v13, AssociatedTypeWitness, v34);

      (*v30)(v13, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v35(v16, 1, AssociatedTypeWitness) != 1);
  }

  (*(v33 + 8))(v37, v38);
  return v25;
}

void NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v5 = type metadata accessor for TransferRepresentationVisibility();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v61 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 16);
  v63 = a1;
  v55 = v26;
  v56 = v21 + 16;
  (v26)(v25, a1, a2, v24);
  v27 = *(v21 + 80);
  v28 = (v27 + 32) & ~v27;
  v52 = v28 + v22;
  v54 = v27 | 7;
  v29 = swift_allocObject();
  v30 = v70;
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  v31 = *(v21 + 32);
  v57 = v28;
  v58 = v25;
  v60 = v21 + 32;
  v53 = v31;
  v31(v29 + v28, v25, a2);
  v67 = a2;
  v32 = v69;
  NSItemProvider.register<A>(_:)();

  v33 = [v32 registeredContentTypes];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0;
  v36 = *(v34 + 16);
  v71 = v8 + 16;
  while (1)
  {
    if (v36 == v35)
    {

      v39 = v64;
      v40 = v67;
      default argument 0 of static Transferable.exportedFileContentTypes(visibility:)(v67, v70);
      v41 = static Transferable.exportedFileContentTypes(visibility:)();
      (*(v65 + 8))(v39, v66);
      if (*(v41 + 16))
      {
        v42 = *(v8 + 80);
        v65 = *(v8 + 16);
        v43 = v59;
        (v65)(v59, v41 + ((v42 + 32) & ~v42), v7);

        v66 = *(v8 + 32);
        v44 = v68;
        v66(v68, v43, v7);
        static UTType.fileURL.getter();
        v45 = v58;
        v55(v58, v63, v40);
        v46 = v62;
        (v65)(v62, v44, v7);
        v47 = (v52 + v42) & ~v42;
        v48 = swift_allocObject();
        v49 = v70;
        *(v48 + 16) = v40;
        *(v48 + 24) = v49;
        v53(v48 + v57, v45, v40);
        v66((v48 + v47), v46, v7);
        NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

        v50 = *(v8 + 8);
        v50(v16, v7);
        v50(v68, v7);
        return;
      }

LABEL_8:

      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    (*(v8 + 16))(v20, v34 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35++, v7);
    static UTType.fileURL.getter();
    v37 = static UTType.== infix(_:_:)();
    v38 = *(v8 + 8);
    v38(v16, v7);
    v38(v20, v7);
    if (v37)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t closure #1 in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v27 = a6;
  v28 = a3;
  v29 = a2;
  v30 = a7;
  v31[0] = a5;
  v25 = a10;
  v23 = a1;
  v24 = a9;
  v31[1] = a6;
  v31[2] = a9;
  v31[3] = a10;
  v10 = type metadata accessor for SharePreview(0, v31);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v23 - v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v23 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  Collection.index(atOffset:)();
  v21 = dispatch thunk of Collection.subscript.read();
  (*(v18 + 16))(v20);
  v21(v31, 0);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  v29(v20);
  AnySharePreview.init<A, B>(_:)(v12, v26, v27, v24, v25, v30);
  return (*(v18 + 8))(v20, v17);
}

double closure #1 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  NSItemProvider.register<A>(shareItem:)(a1, a2, a5);
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_18CD69590;
  *(v9 + 32) = v8;
  return result;
}

uint64_t closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v12 = type metadata accessor for SharePreview(0, v18);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v18 - v14);
  (*(v16 + 16))(v18 - v14, a1, v13);
  return AnySharePreview.init<A, B>(_:)(v15, a2, a3, a4, a5, a6);
}

uint64_t closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a6;
  v31 = a1;
  v32 = a2;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, a5);
  v19 = v8;
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v8);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v30;
  *(v22 + 4) = a5;
  *(v22 + 5) = v23;
  (*(v11 + 32))(&v22[v20], v14, a5);
  (*(v9 + 32))(&v22[v21], v28, v19);
  v24 = &v22[(v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), v22);

  return 0;
}

uint64_t closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), 0, 0);
}

uint64_t closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = *(v0 + 56);
  *(v1 + 16) = *(v0 + 72);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);

  return MEMORY[0x1EEDBF588](v6, partial apply for closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), v1, v4, v5);
}

{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[13];
  v2 = v0[7];

  _StringGuts.grow(_:)(21);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x18D00C9B0](0x742064656C696146, 0xEF2064616F6C206FLL);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  v0[4] = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D009810](v0[2], v0[3]);

  v4 = v1;
  v2(0, 0xF000000000000000, v1);

  v5 = v0[1];

  return v5();
}

void closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (aBlock - v12);
  URL._bridgeToObjectiveC()(v12);
  v15 = v14;
  static UTType.fileURL.getter();
  v16 = UTType.identifier.getter();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  v19 = MEMORY[0x18D00C850](v16, v18);

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  v22 = [v15 loadDataWithTypeIdentifier:v19 forItemProviderCompletionHandler:v21];
  _Block_release(v21);
}

double static NSItemProvider.Handler.handle<A>(_:data:error:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t, double), uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    type metadata accessor for Error();
    _print_unlocked<A, B>(_:_:)();
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  if (a3 >> 60 == 15)
  {
    _StringGuts.grow(_:)(30);

    v13 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v13);

    MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v12, v11);

    MEMORY[0x18D009810](0xD000000000000018, 0x800000018CD48BC0);

    (a5)(a2, a3, a4);
    return result;
  }

  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
LABEL_13:
    outlined copy of Data?(a2, a3);
    if (v16 != v17)
    {
      goto LABEL_15;
    }

LABEL_14:
    _StringGuts.grow(_:)(42);

    v18 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v18);

    MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD48C00);
    MEMORY[0x18D00C9B0](v12, v11);

    MEMORY[0x18D009810](0xD000000000000014, 0x800000018CD48BE0);
    goto LABEL_15;
  }

  if (v15)
  {
    v16 = a2;
    v17 = a2 >> 32;
    goto LABEL_13;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:

  v19 = outlined copy of Data._Representation(a2, a3);
  a5(a2, a3, a4, v19);
  outlined consume of Data?(a2, a3);
  return outlined consume of Data?(a2, a3);
}

uint64_t specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v71[0] = v13;
  v71[1] = v14;
  v61 = v14;
  v62 = v15;
  v66 = v16;
  v67 = v17;
  v71[2] = v16;
  v71[3] = v18;
  v68 = v18;
  v71[4] = v15;
  v71[5] = v19;
  v63 = v19;
  v71[6] = v17;
  v71[7] = v20;
  v59 = v20;
  v60 = v21;
  v71[8] = v21;
  v22 = type metadata accessor for ShareLink(0, v71);
  v23 = *(v7 + 16);
  v23(v12, a1 + *(v22 + 92), a3);
  v64 = v22;
  v65 = a1;
  v24 = (a1 + *(v22 + 104));
  v26 = *v24;
  v25 = v24[1];
  v69 = v26;
  v70 = v25;
  if (v26)
  {
    v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23(v9, v12, a3);
    v58 = v7;
    v27 = (*(v7 + 80) + 88) & ~*(v7 + 80);
    v57 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v30 = v61;
    v29 = v62;
    *(v28 + 2) = a3;
    *(v28 + 3) = v30;
    v31 = v67;
    v32 = v68;
    *(v28 + 4) = v66;
    *(v28 + 5) = v32;
    v33 = v63;
    *(v28 + 6) = v29;
    *(v28 + 7) = v33;
    v35 = v59;
    v34 = v60;
    *(v28 + 8) = v31;
    *(v28 + 9) = v35;
    *(v28 + 10) = v34;
    (*(v58 + 32))(&v28[v27], v56, a3);
    v36 = &v28[v57];
    v37 = v70;
    *v36 = v69;
    *(v36 + 1) = v37;
    v38 = makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(v12, a3, v30, v66, v68, v29, v33, v67, v35, v34);
    v67 = v39;
    v68 = v38;
    LODWORD(v63) = 1;
    v66 = partial apply for closure #1 in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:);
    v40 = v58;
  }

  else
  {
    if (v57)
    {
      (v23)(v9, v12, a3, v66, v68);
      swift_getAssociatedTypeWitness();
      Array.init<A>(_:)();
      v68 = _arrayForceCast<A, B>(_:)();

      v66 = 0;
      v67 = 0;
      v28 = 0;
      LODWORD(v63) = 0;
    }

    else
    {
      v41 = makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(v12, a3, v61, v66, v68, v62, v63, v67, v59, v60);
      v67 = v42;
      v68 = v41;
      v66 = 0;
      v28 = 0;
      LODWORD(v63) = 1;
    }

    v40 = v7;
  }

  outlined copy of AppIntentExecutor?(v69, v70);
  (*(v40 + 8))(v12, a3);
  v43 = (v65 + *(v64 + 96));
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v47 = v43[3];
  v48 = (v65 + *(v64 + 100));
  v50 = *v48;
  v49 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  outlined copy of Text?(v44, v45, v46, v47);
  result = outlined copy of Text?(v50, v49, v51, v52);
  v54 = v67;
  *a4 = v68;
  *(a4 + 8) = v54;
  *(a4 + 16) = v66;
  *(a4 + 24) = v28;
  *(a4 + 32) = v63;
  *(a4 + 40) = v44;
  *(a4 + 48) = v45;
  *(a4 + 56) = v46;
  *(a4 + 64) = v47;
  *(a4 + 72) = v50;
  *(a4 + 80) = v49;
  *(a4 + 88) = v51;
  *(a4 + 96) = v52;
  return result;
}

uint64_t partial apply for closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for UTType() - 8);
  v10 = v2 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #2 in NSItemProvider.register<A>(shareItem:)(a1, a2, v2 + v8, v10, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = *(type metadata accessor for UTType() - 8);
  v8 = (v6 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(a1, v9, v10, v1 + v6, v1 + v8, v12, v13, v4);
}

double specialized AnyIdentifiableShareConfiguration.init<A, B, C, D>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  *&v22 = a6;
  *(&v22 + 1) = a7;
  *&v23 = a8;
  *(&v23 + 1) = a11;
  *&v24 = a12;
  type metadata accessor for ShareLink(0, &v20);
  v19 = ShareLink.namespace.getter();
  specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(a1, 1, a2, &v20);
  v15 = v22;
  *(a9 + 56) = v23;
  v16 = v25;
  *(a9 + 72) = v24;
  *(a9 + 88) = v16;
  result = *&v20;
  v18 = v21;
  *(a9 + 8) = v20;
  *(a9 + 24) = v18;
  *a9 = v19;
  *(a9 + 104) = v26;
  *(a9 + 40) = v15;
  return result;
}

uint64_t partial apply for closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 48);
  v8[0] = *(v1 + 24);
  v6 = v8[0];
  v8[1] = v7;
  v3 = *(type metadata accessor for SharePreview(0, v8) - 8);
  v4 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(v4, v6, *(&v6 + 1), v7, *(&v7 + 1), a1);
}

void destroy for AnySharePreview(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 88))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }
}

uint64_t initializeWithCopy for AnySharePreview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v9;
  v10 = *(a2 + 88);

  if (v10)
  {
    *(a1 + 88) = v10;
    (**(v10 - 8))(a1 + 64, a2 + 64, v10);
  }

  else
  {
    v11 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v11;
  }

  return a1;
}

uint64_t assignWithCopy for AnySharePreview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v16;

  v17 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v17;

  v19 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (v19)
    {
      *(a1 + 88) = v19;
      (**(v19 - 8))(a1 + 64, a2 + 64);
      return a1;
    }

LABEL_14:
    v21 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v21;
    return a1;
  }

  v20 = (a1 + 64);
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v20, (a2 + 64), v18);
  return a1;
}

uint64_t assignWithTake for AnySharePreview(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      goto LABEL_6;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }

  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnySharePreview(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AnySharePreview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of AnyShareConfiguration.Storage(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of AnyShareConfiguration.Storage(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RemoteDeviceIdentifier and conformance RemoteDeviceIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t initializeBufferWithCopyOfBuffer for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for RemoteDeviceIdentifier(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for RemoteDeviceIdentifier(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<InternalControlGroupStyle>, lazy protocol witness table accessor for type InternalControlGroupStyle and conformance InternalControlGroupStyle, &type metadata for InternalControlGroupStyle);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>)
  {
    v4 = type metadata accessor for ControlGroup(0, &type metadata for ControlGroupStyleConfiguration.Content, &protocol witness table for ControlGroupStyleConfiguration.Content, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<MenuControlGroupStyle>, lazy protocol witness table accessor for type MenuControlGroupStyle and conformance MenuControlGroupStyle, &type metadata for MenuControlGroupStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuControlGroupStyle and conformance MenuControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle;
  if (!lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuControlGroupStyle, &type metadata for MenuControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListControlGroupStyle and conformance ListControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle;
  if (!lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListControlGroupStyle, &type metadata for ListControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3, a4);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<ListControlGroupStyle>, lazy protocol witness table accessor for type ListControlGroupStyle and conformance ListControlGroupStyle, &type metadata for ListControlGroupStyle);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<ToolbarControlGroupStyle>, lazy protocol witness table accessor for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle, &type metadata for ToolbarControlGroupStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle;
  if (!lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarControlGroupStyle, &type metadata for ToolbarControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle);
  }

  return result;
}

void type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ControlGroupStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InternalControlGroupStyle and conformance InternalControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle;
  if (!lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternalControlGroupStyle, &type metadata for InternalControlGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v8[4] = v0;
    v8[5] = v1;
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    v4 = v3;
    v8[0] = lazy protocol witness table accessor for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>(v3, v5, v6, v7);
    v8[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v8);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>;
  if (!lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>)
  {
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for ControlGroup<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UseToolbarStyle and conformance UseToolbarStyle();
    v5[1] = &protocol witness table for ControlGroupStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseToolbarStyle and conformance UseToolbarStyle()
{
  result = lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle;
  if (!lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseToolbarStyle, &unk_1EFFBE9D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseToolbarStyle(_OWORD *a1)
{
  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t EnvironmentValues.searchTextClearAction.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

double View.onSearchTextClear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return result;
}

double key path getter for EnvironmentValues.searchTextClearAction : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.searchTextClearAction : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();

  outlined copy of AppIntentExecutor?(v3, v4);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, MEMORY[0x1E697FE40]);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchTextClearAction?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchTextClearAction?>)
  {
    type metadata accessor for SearchTextClearAction?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchTextClearAction?>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (a3)
  {

    v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

LABEL_4:
      if (v11 < *(a5 + 16))
      {
        v14 = *(a5 + 8 * v11 + 32);
        return;
      }

      goto LABEL_16;
    }
  }

  else if (v9)
  {
    v11 = 0;
    for (i = (a4 + 40); ; i += 2)
    {
      v16 = *(i - 1) == a1 && *i == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

BOOL TabItem.pinned.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v4 = static TabOptions.TraitKey.defaultValue;
  v5[0] = unk_1EAB09380;
  *(v5 + 9) = *(&word_1EAB09388 + 1);
  v8 = static TabOptions.TraitKey.defaultValue;
  v9[0] = unk_1EAB09380;
  *(v9 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v4, &v6);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v6 = v8;
  v7[0] = v9[0];
  *(v7 + 9) = *(v9 + 9);
  outlined destroy of TabOptions(&v6);
  v8 = v2;
  v9[0] = *v3;
  *(v9 + 9) = *&v3[9];
  v0 = TabOptions.pinned.getter();
  outlined destroy of TabOptions(&v8);
  return v0;
}

BOOL TabItem.sidebarOnly.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  v8[0] = unk_1EAB09380;
  *(v8 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = v8[0];
  *(v6 + 9) = *(v8 + 9);
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  v8[0] = *v2;
  *(v8 + 9) = *&v2[9];
  outlined destroy of TabOptions(&v7);
  return v7 == 2;
}

uint64_t TabItem.isGroupChild.getter()
{
  v4 = *(v0 + 96);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v1 = *(v5 + 16);

  if (v1)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL TabItem.isSearchItem.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  *v8 = unk_1EAB09380;
  *&v8[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = *v8;
  *(v6 + 9) = *&v8[9];
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  *v8 = *v2;
  *&v8[9] = *&v2[9];
  outlined destroy of TabOptions(&v7);
  return (v8[24] & 1) == 0;
}

uint64_t TabItem.resolvedCustomizationID.getter(uint64_t a1)
{
  if (!TabItem.needsCustomizationIDForEnablement.getter())
  {
    return TabItem.platformIdentifier.getter();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v8 = static TabOptions.TraitKey.defaultValue;
  v9[0] = unk_1EAB09380;
  *(v9 + 9) = *(&word_1EAB09388 + 1);
  v4 = static TabOptions.TraitKey.defaultValue;
  *v5 = unk_1EAB09380;
  *&v5[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v8, &v6);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v10 = v4;
  v11[0] = *v5;
  *(v11 + 9) = *&v5[9];
  outlined destroy of TabOptions(&v10);
  v12 = v6;
  v13[0] = v7[0];
  *(v13 + 9) = *(v7 + 9);
  v1 = BYTE8(v7[0]);
  v2 = *(&v6 + 1);
  outlined copy of TabCustomizationID?(*(&v6 + 1), *&v7[0], SBYTE8(v7[0]));
  outlined destroy of TabOptions(&v12);
  if (v1 == 255)
  {
    return TabItem.platformIdentifier.getter();
  }

  else
  {
    return v2;
  }
}

BOOL TabItem.needsCustomizationIDForEnablement.getter()
{
  *&v9 = *(v0 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v13 = static TabOptions.TraitKey.defaultValue;
  v14[0] = unk_1EAB09380;
  *(v14 + 9) = *(&word_1EAB09388 + 1);
  v17 = static TabOptions.TraitKey.defaultValue;
  v18[0] = unk_1EAB09380;
  *(v18 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v13, &v15);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = v17;
  v16[0] = v18[0];
  *(v16 + 9) = *(v18 + 9);
  outlined destroy of TabOptions(&v15);
  v17 = v11;
  v18[0] = v12[0];
  *(v18 + 9) = *(v12 + 9);
  outlined destroy of TabOptions(&v17);
  v1 = !BYTE10(v18[0]) || (v7 = static TabOptions.TraitKey.defaultValue, v8[0] = unk_1EAB09380, *(v8 + 9) = *(&word_1EAB09388 + 1), v3 = static TabOptions.TraitKey.defaultValue, *v4 = unk_1EAB09380, *&v4[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v7, &v5), ViewTraitCollection.value<A>(for:defaultValue:)(), v9 = v3, v10[0] = *v4, *(v10 + 9) = *&v4[9], outlined destroy of TabOptions(&v9), v11 = v5, v12[0] = v6[0], *(v12 + 9) = *(v6 + 9), outlined destroy of TabOptions(&v11), !BYTE9(v12[0])) || TabItem.alwaysRequiresCustomizationID.getter();
  return v1;
}

BOOL TabItem.hasCustomizationID.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  *v8 = unk_1EAB09380;
  *&v8[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = *v8;
  *(v6 + 9) = *&v8[9];
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  *v8 = *v2;
  *&v8[9] = *&v2[9];
  outlined copy of TabCustomizationID?(*(&v1 + 1), *v2, v2[8]);
  outlined destroy of TabOptions(&v7);
  if (v2[8] != 255)
  {
    outlined consume of TabCustomizationID?(*(&v1 + 1), *v2, v2[8]);
  }

  return v2[8] != 255;
}

BOOL TabItem.alwaysRequiresCustomizationID.getter()
{
  if (TabItem.sidebarOnly.getter() || TabItem.pinned.getter())
  {
    v0 = 0;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v4 = static TabOptions.TraitKey.defaultValue;
    v5[0] = unk_1EAB09380;
    *(v5 + 9) = *(&word_1EAB09388 + 1);
    v8 = static TabOptions.TraitKey.defaultValue;
    *v9 = unk_1EAB09380;
    *&v9[9] = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v4, &v6);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v6 = v8;
    v7[0] = *v9;
    *(v7 + 9) = *&v9[9];
    outlined destroy of TabOptions(&v6);
    v8 = v2;
    *v9 = *v3;
    *&v9[9] = *&v3[9];
    outlined destroy of TabOptions(&v8);
    v0 = v9[10] == 1;
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v4 = static TabOptions.TraitKey.defaultValue;
  v5[0] = unk_1EAB09380;
  *(v5 + 9) = *(&word_1EAB09388 + 1);
  v8 = static TabOptions.TraitKey.defaultValue;
  *v9 = unk_1EAB09380;
  *&v9[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v4, &v6);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v6 = v8;
  v7[0] = *v9;
  *(v7 + 9) = *&v9[9];
  outlined destroy of TabOptions(&v6);
  v8 = v2;
  *v9 = *v3;
  *&v9[9] = *&v3[9];
  outlined destroy of TabOptions(&v8);
  return v9[9] == 1 || v0;
}