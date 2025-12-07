uint64_t closure #1 in static SimultaneousGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for SimultaneousGesture(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t closure #2 in static SimultaneousGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for SimultaneousGesture(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

BOOL static SimultaneousGesture.Value<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[1] = a8;
  v55 = a7;
  v59 = a6;
  v57 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52[0] = v52 - v13;
  v67 = v14;
  v15 = type metadata accessor for Optional();
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v52 - v16;
  v65 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = v52 - v18;
  v58 = a5;
  v56 = a3;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v54 = v52 - v21;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v71 = v52 - v24;
  v25 = swift_getTupleTypeMetadata2();
  v68 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v52 - v27;
  v30 = *(v29 + 48);
  v69 = v23;
  v31 = *(v23 + 16);
  v60 = a1;
  v31(v52 - v27, a1, v22, v26);
  v61 = a2;
  (v31)(&v28[v30], a2, v22);
  v32 = *(v20 + 48);
  if (v32(v28, 1, v19) != 1)
  {
    (v31)(v71, v28, v22);
    if (v32(&v28[v30], 1, v19) != 1)
    {
      v33 = &v28[v30];
      v34 = v54;
      (*(v20 + 32))(v54, v33, v19);
      v35 = v71;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v20 + 8);
      v37(v34, v19);
      v37(v35, v19);
      (*(v69 + 8))(v28, v22);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v20 + 8))(v71, v19);
LABEL_6:
    (*(v68 + 8))(v28, v25);
    return 0;
  }

  if (v32(&v28[v30], 1, v19) != 1)
  {
    goto LABEL_6;
  }

  (*(v69 + 8))(v28, v22);
LABEL_8:
  v72[0] = v56;
  v72[1] = v57;
  v72[2] = v58;
  v72[3] = v59;
  v38 = *(type metadata accessor for SimultaneousGesture.Value(0, v72) + 52);
  v39 = *(TupleTypeMetadata2 + 48);
  v41 = v63;
  v40 = v64;
  v42 = *(v64 + 16);
  v43 = v65;
  v42(v63, v60 + v38, v65);
  v42(&v41[v39], v61 + v38, v43);
  v45 = v66;
  v44 = v67;
  v46 = *(v66 + 48);
  if (v46(v41, 1, v67) == 1)
  {
    if (v46(&v41[v39], 1, v44) == 1)
    {
      (*(v40 + 8))(v41, v43);
      return 1;
    }

    goto LABEL_13;
  }

  v42(v62, v41, v43);
  if (v46(&v41[v39], 1, v44) == 1)
  {
    (*(v45 + 8))(v62, v44);
LABEL_13:
    (*(v53 + 8))(v41, TupleTypeMetadata2);
    return 0;
  }

  v48 = v52[0];
  (*(v45 + 32))(v52[0], &v41[v39], v44);
  v49 = v62;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v45 + 8);
  v51(v48, v44);
  v51(v49, v44);
  (*(v40 + 8))(v41, v43);
  return (v50 & 1) != 0;
}

uint64_t SimultaneousGesture.Value<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  return Optional<A>.hash(into:)();
}

Swift::Int SimultaneousGesture.Value<>.hashValue.getter(void *a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  SimultaneousGesture.Value<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

uint64_t SimultaneousPhase.phase1.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v6, v7);
  Value = AGGraphGetValue();
  v10 = *(*(v8 - 8) + 16);

  return v10(a4, Value, v8);
}

uint64_t SimultaneousPhase.phase2.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v6, v7);
  Value = AGGraphGetValue();
  v10 = *(*(v8 - 8) + 16);

  return v10(a4, Value, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SimultaneousGesture<A, B>.Value(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  SimultaneousGesture.Value<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t SimultaneousPhase.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v68[0] = a2;
  v68[1] = a3;
  v68[2] = a4;
  v68[3] = a5;
  v64 = type metadata accessor for SimultaneousGesture.Value(255, v68);
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v54 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for GesturePhase(255, AssociatedTypeWitness, v18, v19);
  v21 = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for GesturePhase(255, v21, v22, v23);
  v65 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v54 - v25;
  v66 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v54 - v32;
  SimultaneousPhase.phase1.getter(&v54 - v32);
  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v34 = TupleTypeMetadata2;
  v62 = a5;
  SimultaneousPhase.phase2.getter(v29);
  v35 = *(v34 + 48);
  v36 = v33;
  v37 = v65;
  v38 = v66;
  (*(v30 + 32))(v26, v36, v65);
  (*(v38 + 32))(&v26[v35], v29, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_14:
      (*(v38 + 8))(&v26[v35], v24);
      (*(v30 + 8))(v26, v37);
      v47 = v57;
      getter of value #1 in SimultaneousPhase.value.getter(v58, v59, v60, v61, v62, v57);
      v48 = v64;
      v49 = *(v64 - 8);
      if ((*(v49 + 48))(v47, 1, v64) != 1)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v41 = swift_getEnumCaseMultiPayload();
    if (v41 == 3)
    {
LABEL_22:
      (*(v30 + 8))(v26, v37);
      goto LABEL_31;
    }

    if (v41)
    {
      goto LABEL_10;
    }

LABEL_21:
    (*(v38 + 8))(&v26[v35], v24);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_10;
  }

  v42 = swift_getEnumCaseMultiPayload();
  if (!v42)
  {
    goto LABEL_21;
  }

  if (v42 == 3)
  {
    type metadata accessor for GesturePhase(0, v64, v43, v44);
    swift_storeEnumTagMultiPayload();
    return (*(v30 + 8))(v26, v37);
  }

LABEL_10:
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 <= 1)
  {
    if (!v46)
    {
      if (v40 != 2)
      {
        goto LABEL_35;
      }

LABEL_28:
      (*(v30 + 8))(v26, v37);
      (*(v38 + 8))(&v26[v35], v24);
      if (specialized static SimultaneousGestureBeginsWhenChildEndsFeature.isEnabled.getter())
      {
        v47 = v55;
        getter of value #1 in SimultaneousPhase.value.getter(v58, v59, v60, v61, v62, v55);
        v48 = v64;
        v49 = *(v64 - 8);
        if ((*(v49 + 48))(v47, 1, v64) == 1)
        {
          __break(1u);
          goto LABEL_31;
        }

LABEL_26:
        (*(v49 + 32))(v63, v47, v48);
        type metadata accessor for GesturePhase(0, v48, v50, v51);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_31:
      getter of value #1 in SimultaneousPhase.value.getter(v58, v59, v60, v61, v62, v63);
      type metadata accessor for GesturePhase(0, v64, v52, v53);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_14;
  }

  if (v46 == 2)
  {
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        (*(v30 + 8))(v26, v37);
      }

      (*(v38 + 8))(&v26[v35], v24);
LABEL_25:
      v48 = v64;
      v47 = v56;
      getter of value #1 in SimultaneousPhase.value.getter(v58, v59, v60, v61, v62, v56);
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(v47, 1, v48) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }

    if (!v40)
    {
      goto LABEL_28;
    }
  }

  else if (v40 == 2)
  {
    (*(v30 + 8))(v26, v37);
    goto LABEL_25;
  }

LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t getter of value #1 in SimultaneousPhase.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a3;
  v65 = a5;
  v66 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = type metadata accessor for Optional();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v53 - v12;
  v56 = AssociatedTypeWitness;
  v15 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v13, v14);
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v53 - v18;
  v19 = a4;
  v20 = swift_getAssociatedTypeWitness();
  v63 = type metadata accessor for Optional();
  v21 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v28 = type metadata accessor for GesturePhase(0, v20, v26, v27);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v58 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v53 - v32;
  v69 = a1;
  v34 = v64;
  v35 = v19;
  v36 = v65;
  SimultaneousPhase.phase1.getter(&v53 - v32);
  GesturePhase.unwrapped.getter(v28, v25);
  v59 = *(v29 + 8);
  v59(v33, v28);
  v37 = *(*(v20 - 8) + 48);
  v38 = v20;
  v39 = a2;
  LODWORD(v33) = v37(v25, 1, v38);
  (*(v21 + 8))(v25, v63);
  v40 = v35;
  if (v33 == 1 && (v41 = v53, SimultaneousPhase.phase2.getter(v53), v42 = v54, v43 = v68, GesturePhase.unwrapped.getter(v68, v54), (*(v67 + 8))(v41, v43), LODWORD(v41) = (*(*(v56 - 8) + 48))(v42, 1), (*(v55 + 8))(v42, v57), v41 == 1))
  {
    v70 = v39;
    v71 = v34;
    v72 = v35;
    v73 = v36;
    v44 = type metadata accessor for SimultaneousGesture.Value(0, &v70);
    v45 = 1;
    v46 = v66;
  }

  else
  {
    v47 = v58;
    SimultaneousPhase.phase1.getter(v58);
    v48 = v60;
    GesturePhase.unwrapped.getter(v28, v60);
    v59(v47, v28);
    v49 = v61;
    SimultaneousPhase.phase2.getter(v61);
    v50 = v62;
    v51 = v68;
    GesturePhase.unwrapped.getter(v68, v62);
    (*(v67 + 8))(v49, v51);
    v46 = v66;
    SimultaneousGesture.Value.init(first:second:)(v48, v50, v39, v34, v40, v36, v66);
    v70 = v39;
    v71 = v34;
    v72 = v40;
    v73 = v36;
    v44 = type metadata accessor for SimultaneousGesture.Value(0, &v70);
    v45 = 0;
  }

  return (*(*(v44 - 8) + 56))(v46, v45, 1);
}

uint64_t SimultaneousPreference.value1.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = a1;
  v6 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = AssociatedTypeWitness;
  if (v6 == v4)
  {
    v9 = *(AssociatedTypeWitness - 8);
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v14 = *(v8 - 8);
    (*(v14 + 16))(a4, Value, v8);
    v9 = v14;
    v10 = 0;
  }

  v12 = *(v9 + 56);

  return v12(a4, v10, 1, v8);
}

uint64_t SimultaneousPreference.value2.getter@<X0>(unint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = HIDWORD(a1);
  v6 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = AssociatedTypeWitness;
  if (v6 == v5)
  {
    v9 = *(AssociatedTypeWitness - 8);
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v14 = *(v8 - 8);
    (*(v14 + 16))(a4, Value, v8);
    v9 = v14;
    v10 = 0;
  }

  v12 = *(v9 + 56);

  return v12(a4, v10, 1, v8);
}

uint64_t SimultaneousPreference.phase1.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v6, v7);
  Value = AGGraphGetValue();
  v10 = *(*(v8 - 8) + 16);

  return v10(a4, Value, v8);
}

uint64_t SimultaneousPreference.phase2.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v6, v7);
  Value = AGGraphGetValue();
  v10 = *(*(v8 - 8) + 16);

  return v10(a4, Value, v8);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SimultaneousPhase<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v3;
  v4 = type metadata accessor for SimultaneousGesture.Value(255, v9);
  v7 = type metadata accessor for GesturePhase(0, v4, v5, v6);
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

uint64_t SimultaneousPreference.mergedValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v101 = a8;
  v96 = a7;
  v98 = a4;
  v99 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v15, v16);
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v79 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v79 - v25;
  v26 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v81 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v84 = &v79 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v82 = &v79 - v32;
  v100 = a3;
  v33 = swift_getAssociatedTypeWitness();
  v36 = type metadata accessor for GesturePhase(0, v33, v34, v35);
  v37 = *(v36 - 8);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v79 - v39;
  v97 = v26;
  v41 = *(v26 + 56);
  v88 = v26 + 56;
  v89 = a9;
  v95 = v19;
  v87 = v41;
  (v41)(a9, 1, 1, v19, v38);
  v42 = a1;
  v43 = a6;
  SimultaneousPreference.phase1.getter(v40);
  LOBYTE(v19) = GesturePhase.isFailed.getter(v36);
  v44 = a5;
  v45 = v43;
  (*(v37 + 8))(v40, v36);
  if ((v19 & 1) == 0)
  {
    v46 = v85;
    v80 = a1;
    SimultaneousPreference.value1.getter(a1, v85);
    v47 = v97;
    v48 = v95;
    v49 = (*(v97 + 48))(v46, 1, v95);
    v50 = *(v93 + 8);
    if (v49 == 1)
    {
      v50(v46, v94);
    }

    else
    {
      v51 = v89;
      v50(v89, v94);
      v52 = *(v47 + 32);
      v53 = v45;
      v54 = v82;
      v52(v82, v46, v48);
      v55 = v54;
      v45 = v53;
      v52(v51, v55, v48);
      v87(v51, 0, 1, v48);
    }

    v42 = v80;
  }

  v56 = v90;
  SimultaneousPreference.phase2.getter(v90);
  v57 = v92;
  v58 = GesturePhase.isFailed.getter(v92);
  result = (*(v91 + 8))(v56, v57);
  if (!v58)
  {
    v60 = v86;
    v92 = v44;
    v99 = v45;
    SimultaneousPreference.value2.getter(v42, v86);
    v61 = v97;
    v62 = *(v97 + 48);
    v63 = v95;
    if (v62(v60, 1, v95) == 1)
    {
      return (*(v93 + 8))(v60, v94);
    }

    else
    {
      v64 = v84;
      v65 = v60;
      v66 = *(v61 + 32);
      v66(v84, v65, v63);
      v68 = v93;
      v67 = v94;
      v69 = v83;
      v70 = v89;
      (*(v93 + 16))(v83, v89, v94);
      if (v62(v69, 1, v63) == 1)
      {
        v71 = *(v68 + 8);
        v71(v70, v67);
        v71(v69, v67);
        v72 = v97;
        (*(v97 + 16))(v70, v64, v63);
      }

      else
      {
        v73 = v81;
        v74 = (v66)(v81, v69, v63);
        v75 = MEMORY[0x1EEE9AC00](v74);
        v76 = v101;
        v78 = v98;
        v77 = v99;
        *(&v79 - 8) = v100;
        *(&v79 - 7) = v78;
        *(&v79 - 6) = v92;
        *(&v79 - 5) = v77;
        *(&v79 - 4) = v96;
        *(&v79 - 3) = v76;
        *(&v79 - 2) = v64;
        (*(v76 + 24))(v73, partial apply for closure #1 in SimultaneousPreference.mergedValue(), v75);
        (*(v68 + 8))(v70, v67);
        v66(v70, v73, v63);
        v72 = v97;
      }

      v87(v70, 0, 1, v63);
      return (*(v72 + 8))(v64, v63);
    }
  }

  return result;
}

uint64_t static SimultaneousPreference.initialValue.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t SimultaneousPreference.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v90 = a5;
  v91 = a8;
  v89 = a2;
  v82 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v71 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v71 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for GesturePhase(255, v22, v23, v24);
  v26 = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for GesturePhase(255, v26, v27, v28);
  v88 = v25;
  v30 = v29;
  v83 = v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v84 = &v71 - v31;
  v86 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v71 - v33;
  v87 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v71 - v36;
  SimultaneousPreference.phase1.getter(&v71 - v36);
  v78 = a1;
  v79 = a3;
  v80 = a4;
  v38 = v83;
  v39 = a6;
  v40 = TupleTypeMetadata2;
  v41 = v87;
  SimultaneousPreference.phase2.getter(v34);
  v42 = *(v40 + 48);
  v43 = v84;
  v44 = v37;
  v45 = v86;
  v46 = v88;
  (*(v41 + 32))(v84, v44, v88);
  (*(v45 + 32))(&v43[v42], v34, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload && swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v41 + 8))(v43, v46);
      (*(v45 + 8))(&v43[v42], v38);
      goto LABEL_14;
    }

LABEL_13:
    (*(v45 + 8))(&v43[v42], v38);
    (*(v41 + 8))(v43, v46);
LABEL_14:
    v55 = v77;
    v56 = v90;
    v57 = v91;
    SimultaneousPreference.mergedValue()(v78, v89, v79, v80, v90, v39, a7, v91, v77);
    v58 = AssociatedTypeWitness;
    v59 = *(AssociatedTypeWitness - 8);
    v60 = *(v59 + 48);
    if (v60(v55, 1, AssociatedTypeWitness) != 1)
    {
      return (*(v59 + 32))(v82, v55, v58);
    }

    (*(v57 + 16))(v56, v57);
    result = (v60)(v55, 1, v58);
    if (result != 1)
    {
      return (*(v75 + 8))(v55, v76);
    }

    return result;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 == 2)
    {
      v49 = v90;
      v51 = v72;
      v52 = v91;
      SimultaneousPreference.value2.getter(v78, v72);
      goto LABEL_22;
    }

    if (v53 == 3)
    {
      (*(v91 + 16))();
      return (*(v41 + 8))(v43, v46);
    }

LABEL_12:
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      (*(v91 + 16))();
      return (*(v71 + 8))(v43, v40);
    }

    goto LABEL_13;
  }

  v48 = swift_getEnumCaseMultiPayload();
  if (v48 != 3)
  {
    if (v48 == 2)
    {
      v49 = v90;
      v50 = a7;
      v51 = v73;
      v52 = v91;
      SimultaneousPreference.mergedValue()(v78, v89, v79, v80, v90, v39, v50, v91, v73);
LABEL_22:
      v68 = AssociatedTypeWitness;
      v69 = *(AssociatedTypeWitness - 8);
      v70 = *(v69 + 48);
      if (v70(v51, 1, AssociatedTypeWitness) == 1)
      {
        (*(v52 + 16))(v49, v52);
        if (v70(v51, 1, v68) != 1)
        {
          (*(v75 + 8))(v51, v76);
        }
      }

      else
      {
        (*(v69 + 32))(v82, v51, v68);
      }

      (*(v86 + 8))(&v43[v42], v38);
      return (*(v87 + 8))(v43, v88);
    }

    goto LABEL_12;
  }

  v61 = v46;
  v62 = v90;
  v63 = v74;
  v64 = v91;
  SimultaneousPreference.value1.getter(v78, v74);
  v65 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  v67 = *(v66 + 48);
  if (v67(v63, 1, AssociatedTypeWitness) == 1)
  {
    (*(v64 + 16))(v62, v64);
    if (v67(v63, 1, v65) != 1)
    {
      (*(v75 + 8))(v63, v76);
    }
  }

  else
  {
    (*(v66 + 32))(v82, v63, v65);
  }

  return (*(v41 + 8))(v43, v61);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance SimultaneousPreference<A, B, C>(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  static SimultaneousPreference.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for SimultaneousPreference<A, B, C>, a2, v16);
  v19[-1] = v17;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v19[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

double base witness table accessor for Equatable in <> SimultaneousGesture<A, B>.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 16) + 8);
  v5[0] = *(*(a3 - 8) + 8);
  v5[1] = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> SimultaneousGesture<A, B>.Value, a1, v5);
}

uint64_t type metadata completion function for SimultaneousGesture.Value(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SimultaneousGesture.Value(uint64_t *a1, uint64_t *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  if (*(v9 + 84))
  {
    v12 = *(v9 + 64);
  }

  else
  {
    v12 = *(v9 + 64) + 1;
  }

  v13 = (*(v6 + 80) | *(v9 + 80));
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v7 + v10) & ~v10) + v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v13 + 16) & ~v13));
  }

  else
  {
    v17 = v8;
    v18 = ~v10;
    if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v19 = a1 + v11;
    v20 = a2 + v11;
    if ((*(v9 + 48))(v20 & v18, 1, v17))
    {
      memcpy((v19 & v18), (v20 & v18), v12);
    }

    else
    {
      (*(v9 + 16))(v19 & v18, v20 & v18, v17);
      (*(v9 + 56))(v19 & v18, 0, 1, v17);
    }
  }

  return a1;
}

uint64_t destroy for SimultaneousGesture.Value(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(a1, AssociatedTypeWitness);
  }

  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v5 == 0;
  v10 = *(v8 + 80);
  v11 = v6 + a1;
  if (v9)
  {
    ++v11;
  }

  v12 = v11 + v10;
  v15 = *(v7 - 8);
  result = (*(v8 + 48))((v11 + v10) & ~v10, 1, v7);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & ~v10, v7);
  }

  return result;
}

char *initializeWithCopy for SimultaneousGesture.Value(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
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
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, AssociatedTypeWitness);
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

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  if ((*(v14 + 48))(v18 & ~v15, 1, v13))
  {
    if (*(v14 + 84))
    {
      v19 = *(v14 + 64);
    }

    else
    {
      v19 = *(v14 + 64) + 1;
    }

    memcpy((v17 & ~v15), (v18 & ~v15), v19);
  }

  else
  {
    (*(v14 + 16))(v17 & ~v15, v18 & ~v15, v13);
    (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
  }

  return a1;
}

char *assignWithCopy for SimultaneousGesture.Value(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
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

  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16;
  v18 = &a1[v13 + v16];
  v19 = &a2[v17];
  v20 = *(v15 + 48);
  v21 = v20(v18 & ~v16, 1, v14);
  v22 = v20(v19 & ~v16, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 16))(v18 & ~v16, v19 & ~v16, v14);
      (*(v15 + 56))(v18 & ~v16, 0, 1, v14);
      return a1;
    }

    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v15 + 24))(v18 & ~v16, v19 & ~v16, v14);
      return a1;
    }

    v26 = *(v15 + 8);
    v25 = v15 + 8;
    v26(v18 & ~v16, v14);
    v23 = *(v25 + 76);
    v24 = *(v25 + 56);
  }

  if (v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 + 1;
  }

  memcpy((v18 & ~v16), (v19 & ~v16), v27);
  return a1;
}

char *initializeWithTake for SimultaneousGesture.Value(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(a2, 1, AssociatedTypeWitness))
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
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, AssociatedTypeWitness);
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

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  if ((*(v14 + 48))(v18 & ~v15, 1, v13))
  {
    if (*(v14 + 84))
    {
      v19 = *(v14 + 64);
    }

    else
    {
      v19 = *(v14 + 64) + 1;
    }

    memcpy((v17 & ~v15), (v18 & ~v15), v19);
  }

  else
  {
    (*(v14 + 32))(v17 & ~v15, v18 & ~v15, v13);
    (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
  }

  return a1;
}

char *assignWithTake for SimultaneousGesture.Value(char *a1, char *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, AssociatedTypeWitness);
  v9 = v7(a2, 1, AssociatedTypeWitness);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v6 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, AssociatedTypeWitness);
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

  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16;
  v18 = &a1[v13 + v16];
  v19 = &a2[v17];
  v20 = *(v15 + 48);
  v21 = v20(v18 & ~v16, 1, v14);
  v22 = v20(v19 & ~v16, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 32))(v18 & ~v16, v19 & ~v16, v14);
      (*(v15 + 56))(v18 & ~v16, 0, 1, v14);
      return a1;
    }

    v23 = *(v15 + 84);
    v24 = *(v15 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v15 + 40))(v18 & ~v16, v19 & ~v16, v14);
      return a1;
    }

    v26 = *(v15 + 8);
    v25 = v15 + 8;
    v26(v18 & ~v16, v14);
    v23 = *(v25 + 76);
    v24 = *(v25 + 56);
  }

  if (v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 + 1;
  }

  memcpy((v18 & ~v16), (v19 & ~v16), v27);
  return a1;
}

uint64_t getEnumTagSinglePayload for SimultaneousGesture.Value(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v6)
  {
    v13 = *(v5 + 64);
  }

  else
  {
    v13 = *(v5 + 64) + 1;
  }

  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  if (a2 <= v12)
  {
LABEL_40:
    if (v7 >= v11)
    {
      v25 = (*(v5 + 48))(a1, v6, AssociatedTypeWitness);
    }

    else
    {
      v25 = (*(v9 + 48))((a1 + v17) & ~v14);
    }

    if (v25 >= 2)
    {
      return v25 - 1;
    }

    else
    {
      return 0;
    }
  }

  v18 = v16 + (v17 & ~v14);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      if (v12)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
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

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for SimultaneousGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (!v13)
  {
    ++v18;
  }

  v19 = ((v16 + v17) & ~v17) + v18;
  if (a3 <= v15)
  {
LABEL_29:
    if (v15 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
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
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_29;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v8 + 56);

      v30(a1, a2 + 1, v9, v31);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v12 + 56);

      v29(a1, a2 + 1);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_48:
            *a1 = v25;
            return;
          }

LABEL_64:
          *a1 = v25;
          return;
        }

LABEL_83:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

uint64_t partial apply for closure #1 in SimultaneousPreference.mergedValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v3, AssociatedTypeWitness);
}

uint64_t ContainerBackgroundLuminance.navigationBar.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContainerBackgroundLuminance.bottomBar.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContainerBackgroundLuminance.container.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void ContainerBackgroundLuminance.init<A>(_:in:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v41[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  (*(v8 + 16))(v11, a1, v9);
  AnyShapeStyle.init<A>(_:)(v11, a2, a3);
  type metadata accessor for AnyGradientBox();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    type metadata accessor for ShapeStyleBox<AnyGradient>(0, &lazy cache variable for type metadata for ShapeStyleBox<AnyGradient>, &type metadata for AnyGradient, &protocol witness table for AnyGradient, type metadata accessor for ShapeStyleBox);
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
LABEL_9:

      goto LABEL_10;
    }

    v15 = *(v16 + 16);
  }

  v17 = *(*v15 + 104);

  v17(&v42, v18);

  v19 = v42;
  v20 = outlined consume of Gradient.ProviderTag(v42);
  if (v19 >> 62 != 1)
  {
    goto LABEL_9;
  }

  v41[0] = v14;
  v41[1] = v13;
  (*(*v15 + 112))(&v42, v41, v20);
  v21 = v42;
  v22 = *(v42 + 16);
  if (v22)
  {
    v40 = COERCE_UNSIGNED_INT(Color.Resolved.quantizedLuma.getter(*(v42 + 32), *(v42 + 36), *(v42 + 40)));
    v23 = v21 + 48 * v22;
    v24 = *(v23 - 16);
    v25 = *(v23 - 12);
    v26 = *(v23 - 8);

    v27 = Color.Resolved.quantizedLuma.getter(v24, v25, v26);

    v28 = 0;
    v29 = LODWORD(v27);
    goto LABEL_11;
  }

LABEL_10:
  v29 = 0;
  v40 = 0;
  v28 = 1;
LABEL_11:
  v42 = v14;
  v43 = v13;
  v30 = ShapeStyle.fallbackColor(in:level:)(&v42, 0, a2, a3);
  if (v30)
  {
    v42 = v14;
    v43 = v13;
    v31 = (*(*v30 + 112))(&v42);
    v33 = v32;
    v35 = v34;

    v36 = Color.Resolved.quantizedLuma.getter(v31, v33, v35);
    (*(v8 + 8))(a1, a2);
    v37 = 0;
    v38 = v36;
  }

  else
  {
    (*(v8 + 8))(a1, a2);

    if (v28)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 13) = 0;
      *(a4 + 21) = 1;
      return;
    }

    v38 = 0.0;
    v37 = 0x100000000;
  }

  v39 = 0x100000000;
  if (!v28)
  {
    v39 = 0;
  }

  *a4 = v39 | v40;
  *(a4 + 8) = v39 | v29;
  *(a4 + 20) = BYTE4(v37);
  *(a4 + 16) = v37 | LODWORD(v38);
  *(a4 + 21) = 0;
}

void EnvironmentValues.containerBackgroundLuminance.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(v2, a1);
  }
}

double key path getter for EnvironmentValues.containerBackgroundLuminance : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v3, &v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(*a1, &v8);
  }

  v4 = v9;
  v5 = v10;
  v6 = v11;
  result = *&v8;
  *a2 = v8;
  *(a2 + 20) = v5;
  *(a2 + 16) = v4;
  *(a2 + 21) = v6;
  return result;
}

double key path setter for EnvironmentValues.containerBackgroundLuminance : EnvironmentValues(uint64_t a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 20) << 32);
  v6 = *(a1 + 21);
  v7 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(a2, v3, v4, v5 | (v6 << 40));

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(v7, *a2);
  }

  return result;
}

double EnvironmentValues.containerBackgroundLuminance.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 20) << 32);
  v6 = *(a1 + 21);
  v7 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(v2, v3, v4, v5 | (v6 << 40));

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(v7, *v2);
  }

  return result;
}

void (*EnvironmentValues.containerBackgroundLuminance.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v5, v4 + 5);
  }

  else
  {
    type metadata accessor for ShapeStyleBox<AnyGradient>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(v5, v13);
    if (v8)
    {
      v9 = *(v8 + 92);
      v10 = *(v8 + 22);
      v11 = *(v8 + 93);
      *(v4 + 5) = *(v8 + 9);
      *(v4 + 14) = v10;
      *(v4 + 60) = v9;
      *(v4 + 61) = v11;
    }

    else
    {
      v4[5] = 0;
      v4[6] = 0;
      *(v4 + 53) = 0;
      *(v4 + 61) = 1;
    }
  }

  return EnvironmentValues.containerBackgroundLuminance.modify;
}

void EnvironmentValues.containerBackgroundLuminance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56) | (*(*a1 + 60) << 32);
  v5 = *(*a1 + 61);
  swift_retain_n();
  v6 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(*(v1 + 16), v2, v3, v4 | (v5 << 40));

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ContainerBackgroundLuminanceKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 21) = 1;
}

BOOL specialized static ContainerBackgroundLuminance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

void type metadata accessor for ShapeStyleBox<AnyGradient>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ContainerBackgroundLuminance(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundLuminance(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t RangeSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v30 = a1;
  v35 = a6;
  v36 = a4;
  v25 = type metadata accessor for Range();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v25 - v8;
  v31 = type metadata accessor for RangeSet();
  MEMORY[0x1EEE9AC00](v31);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v32 = a2;
  RangeSet.init()();
  v28 = v13;
  (*(v13 + 16))(v16, v30, a3);
  dispatch thunk of Sequence.makeIterator()();
  v29 = a3;
  swift_getAssociatedConformanceWitness();
  v33 = v19;
  v34 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v20 = v25;
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v12, 1, v25) != 1)
  {
    v23 = *(v21 + 32);
    do
    {
      v23(v9, v12, v20);
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v22(v12, 1, v20) != 1);
  }

  (*(v28 + 8))(v30, v29);
  return (*(v26 + 8))(v33, v34);
}

uint64_t RangeSet.overlaps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for RangeSet.Ranges();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-v8];
  RangeSet.ranges.getter();
  v13 = v4;
  v14 = v5;
  v15 = a1;
  swift_getWitnessTable(MEMORY[0x1E69E7BB8], v6);
  v10 = Sequence.contains(where:)();
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t partial apply for closure #1 in RangeSet.overlaps(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 32);
  v5 = type metadata accessor for Range();
  return a2(v4, v5) & 1;
}

uint64_t RangeSet.insert(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return RangeSet.formUnion(_:)();
}

uint64_t RangeSet.lowerBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  RangeSet.ranges.getter();
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v3);
  Collection.first.getter();
  (*(v4 + 8))(v6, v3);
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = *(v2 - 8);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    v13 = *(v2 - 8);
    v16 = v19;
    (*(v13 + 16))(v19, v11, v2);
    (*(v12 + 8))(v11, v7);
    v14 = 0;
    v15 = v16;
  }

  return (*(v13 + 56))(v15, v14, 1, v2);
}

uint64_t RangeSet.upperBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  RangeSet.ranges.getter();
  swift_getWitnessTable(MEMORY[0x1E69E7BB0], v3);
  BidirectionalCollection.last.getter();
  (*(v4 + 8))(v6, v3);
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = *(v2 - 8);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    v13 = *(v2 - 8);
    v16 = v19;
    (*(v13 + 16))(v19, &v11[*(v7 + 36)], v2);
    (*(v12 + 8))(v11, v7);
    v14 = 0;
    v15 = v16;
  }

  return (*(v13 + 56))(v15, v14, 1, v2);
}

uint64_t RangeSet<>.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v4 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v39 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v31 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v31 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Range();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v31 - v17;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of Strideable.advanced(by:)();
  v41[1](v11, AssociatedTypeWitness);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = v32;
    v20 = v36;
    v21 = v4;
    (*(v32 + 16))(v36, a1, v4);
    v22 = v39;
    v23 = *(v19 + 32);
    v23(&v20[*(v39 + 48)], v15, v4);
    v24 = v23;
    v41 = v23;
    v25 = v37;
    v26 = v38;
    (*(v38 + 16))(v37, v20, v22);
    v27 = *(v22 + 48);
    v28 = v33;
    v24(v33, v25, v21);
    v29 = *(v19 + 8);
    v29(&v25[v27], v21);
    (*(v26 + 32))(v25, v20, v22);
    v30 = v35;
    (v41)(&v28[*(v35 + 36)], &v25[*(v22 + 48)], v21);
    v29(v25, v21);
    RangeSet.insert(contentsOf:)();
    return (*(v34 + 8))(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangeSet<>.reduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v54 = a6;
  v47 = a4;
  v49 = a3;
  v52 = a1;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v11;
  v50 = type metadata accessor for Range();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v42 - v12;
  v14 = type metadata accessor for RangeSet.Ranges();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v14, v16);
  v20 = v19;
  v21 = type metadata accessor for IndexingIterator();
  v42 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v25 = *(v44 + 16);
  v26 = v52;
  v52 = a5;
  v25(a7, v26, a5, v22);
  RangeSet.ranges.getter();
  (*(v15 + 16))(v24, v18, v14);
  v43 = v21;
  v27 = *(v21 + 36);
  dispatch thunk of Collection.startIndex.getter();
  (*(v15 + 8))(v18, v14);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v24[v27] != v57[0])
  {
    v28 = v46++;
    v47 = (v28 + 2);
    v29 = (v44 + 8);
    v44 += 32;
    v45 = v29;
    v48 = a2;
    v55 = v27;
    do
    {
      v30 = dispatch thunk of Collection.subscript.read();
      v31 = v13;
      v32 = v20;
      v33 = v14;
      v34 = v13;
      v35 = v50;
      (*v47)(v31);
      v30(v57, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v56[0] = v53;
      v56[1] = v54;
      swift_getWitnessTable(MEMORY[0x1E69E66D0], v35, v56);
      v36 = v51;
      v37 = v52;
      Sequence.reduce<A>(_:_:)();
      v38 = v34;
      v39 = v35;
      v13 = v34;
      v14 = v33;
      v20 = v32;
      v40 = v55;
      (*v46)(v38, v39);
      (*v45)(a7, v37);
      (*v44)(a7, v36, v37);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v24[v40] != v57[0]);
  }

  return (*(v42 + 8))(v24, v43);
}

uint64_t RangeSet<>.indexSequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1, v6);
  return RangeSet<>.IndexSequence.init(_:)(v8, *(a1 + 16), a2);
}

uint64_t RangeSet<>.IndexSequence.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for RangeSet();
  RangeSet.ranges.getter();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t RangeSet<>.IndexSequence.Iterator.init(ranges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *a5 = 0;
  v10 = type metadata accessor for RangeSet<>.IndexSequence.Iterator(0, a2, a3, a4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  swift_checkMetadataState();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v11 = *(v10 + 48);
  v12 = type metadata accessor for RangeSet.Ranges();
  return (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
}

uint64_t RangeSet<>.IndexSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v55 - v9;
  v60 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = *(v60 + 16);
  v68 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v68);
  v67 = v55 - v10;
  v71 = v4;
  v62 = type metadata accessor for Range();
  v72 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v55 - v13;
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - v19;
  v21 = *v2;
  v63 = a1;
  v22 = *(a1 + 48);
  v23 = type metadata accessor for RangeSet.Ranges();
  if (v21 < RangeSet.Ranges.count.getter())
  {
    v55[2] = v22;
    v59 = v21;
    v55[3] = v23;
    RangeSet.Ranges.subscript.getter();
    (*(v73 + 16))(v17, v14, v5);
    v24 = *(v72 + 8);
    v72 += 8;
    v56 = v24;
    v25 = v62;
    v24(v14, v62);
    v26 = v63;
    v27 = *(v63 + 44);
    v58 = v20;
    dispatch thunk of Strideable.advanced(by:)();
    (*(v73 + 8))(v17, v5);
    v55[1] = swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v28 = v70;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v29 = v65;
    v60 = *(v65 + 8);
    v57 = v65 + 8;
    (v60)(v28, AssociatedTypeWitness);
    v30 = v61;
    RangeSet.Ranges.subscript.getter();
    v31 = *(v26 + 32);
    v75[0] = v71;
    v75[1] = v31;
    swift_getWitnessTable(MEMORY[0x1E69E66F0], v25, v75);
    v63 = Collection.count.getter();
    v56(v30, v25);
    v32 = *(v29 + 16);
    v72 = v27;
    v33 = v64;
    v32(v64, v2 + v27, AssociatedTypeWitness);
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v55[0] = v2;
    if (v34)
    {
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if (v35 < 64)
      {
        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v60)(v33, AssociatedTypeWitness);
LABEL_5:
        v38 = v70;
        v39 = v58;
        if (v37 < v63)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v47(v33, AssociatedTypeWitness);
    }

    else
    {
      v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if ((v43 & 1) == 0)
      {
        v39 = v58;
        if (v44 >= 64)
        {
          v29 = v65;
          if (v63 < 1)
          {
            (v60)(v33, AssociatedTypeWitness);
            v38 = v70;
          }

          else
          {
            v74 = v63;
            lazy protocol witness table accessor for type Int and conformance Int();
            v38 = v70;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            swift_getAssociatedConformanceWitness();
            v52 = dispatch thunk of static Comparable.< infix(_:_:)();
            v53 = v60;
            (v60)(v38, AssociatedTypeWitness);
            v53(v33, AssociatedTypeWitness);
            if (v52)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v48 = dispatch thunk of BinaryInteger._lowWord.getter();
          (v60)(v33, AssociatedTypeWitness);
          v29 = v65;
          v38 = v70;
          if (v48 < v63)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        v54 = v55[0];
        *v55[0] = v59 + 1;
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        (*(v29 + 40))(v54 + v72, v38, AssociatedTypeWitness);
        goto LABEL_27;
      }

      if (v44 <= 64)
      {
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v49 = v70;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        swift_getAssociatedConformanceWitness();
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v51 = v60;
        (v60)(v49, AssociatedTypeWitness);
        v29 = v65;
        if (v50)
        {
          v51(v33, AssociatedTypeWitness);
          v39 = v58;
LABEL_27:
          (*(v73 + 32))(v36, v39, v5);
          return (*(v73 + 56))(v36, 0, 1, v5);
        }

        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        v51(v33, AssociatedTypeWitness);
        goto LABEL_5;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v46 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v46(v33, AssociatedTypeWitness);
      v29 = v65;
    }

    v39 = v58;
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v40 = *(v73 + 56);
  v41 = v66;

  return v40(v41, 1, 1, v5);
}

uint64_t RangeSet<>.IndexSequence.makeIterator()@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = type metadata accessor for RangeSet.Ranges();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, v2, v8);
  return RangeSet<>.IndexSequence.Iterator.init(ranges:)(v10, v5, v6, a1[4], a2);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RangeSet<A><>.IndexSequence@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  RangeSet<>.IndexSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

uint64_t type metadata completion function for RangeSet<>.IndexSequence(uint64_t a1)
{
  result = type metadata accessor for RangeSet.Ranges();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = **(v5 - 8);

  return v6(a1, a2, v5);
}

uint64_t destroy for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t initializeWithCopy for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  return a1;
}

uint64_t assignWithCopy for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  return a1;
}

uint64_t initializeWithTake for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  return a1;
}

uint64_t assignWithTake for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  return a1;
}

uint64_t type metadata completion function for RangeSet<>.IndexSequence.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RangeSet.Ranges();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 44);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(&v3[v5], &a2[v5], AssociatedTypeWitness);
    v9 = *(a3 + 48);
    v10 = type metadata accessor for RangeSet.Ranges();
    (*(*(v10 - 8) + 16))(&v3[v9], &a2[v9], v10);
  }

  return v3;
}

uint64_t destroy for RangeSet<>.IndexSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1 + v4, AssociatedTypeWitness);
  v6 = *(a2 + 48);
  v7 = type metadata accessor for RangeSet.Ranges();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *assignWithCopy for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *initializeWithTake for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *assignWithTake for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV04Faili13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue;
  if (static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD77170);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD77170);
      v0 = [v5 BOOLForKey_];

      static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13LinkedOnCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD771A0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD771A0);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei6OptOutcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD77110);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD77110);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA028UnifiedSystemBackgroundColorcD033_C7D4771CFE453D905E7BCD5A907D32EBLLV_Ttg5()
{
  swift_beginAccess();
  v0 = static UnifiedSystemBackgroundColorUserDefault.cachedValue;
  if (static UnifiedSystemBackgroundColorUserDefault.cachedValue == 2)
  {
    if (one-time initialization token for uiKit != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.uiKit;
    if (static NSUserDefaults.uiKit)
    {
      v2 = static NSUserDefaults.uiKit;
      v3 = static NSUserDefaults.uiKit;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD770E0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD770E0);
      v0 = [v7 BOOLForKey_];

      static UnifiedSystemBackgroundColorUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static UnifiedSystemBackgroundColorUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5()
{
  swift_beginAccess();
  v0 = static ScrollEdgeEffectTag.Feature.cachedValue;
  if (static ScrollEdgeEffectTag.Feature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
      v0 = [v7 BOOLForKey_];

      static ScrollEdgeEffectTag.Feature.cachedValue = v0;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static ScrollEdgeEffectTag.Feature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5()
{
  swift_beginAccess();
  v0 = static UnaryGlassContainer.cachedValue;
  if (static UnaryGlassContainer.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD77020);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD77020);
      v0 = [v7 BOOLForKey_];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      if (one-time initialization token for defaultFeatureValue != -1)
      {
        swift_once();
      }

      v0 = static UnaryGlassContainer.defaultFeatureValue;
    }

    static UnaryGlassContainer.cachedValue = v0;
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5()
{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

double ScrollEdgeEffectTag.ID.base.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void ScrollEdgeEffectTag.ID.base.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void ScrollEdgeEffectTag.ID.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x193AC11A0](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int ScrollEdgeEffectTag.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrollEdgeEffectTag.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  ScrollEdgeEffectTag.ID.hash(into:)();
  return Hasher._finalize()();
}

double ScrollEdgeEffectTag.Item.id.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void ScrollEdgeEffectTag.Item.id.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void ScrollEdgeEffectTag.Item.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

double static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v15 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(0, a4, a5, v14);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v44 - v16;
  v17 = a2[3];
  v79 = a2[2];
  v80 = v17;
  v81 = a2[4];
  v82 = *(a2 + 20);
  v18 = a2[1];
  v77 = *a2;
  v78 = v18;
  if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5())
  {
    v19 = a2[3];
    v65 = a2[2];
    v66 = v19;
    v67 = a2[4];
    v68 = *(a2 + 20);
    v20 = a2[1];
    v63 = *a2;
    v64 = v20;
    outlined init with copy of _ViewInputs(&v77, &v71);
    _s7SwiftUI26MultiPlatformItemsStrategyPAAE10makeInputsyyAA05_ViewH0VzFZAA016ScrollEdgeEffectdeF0V_Tt0g5Tm(&v63);
    v69[2] = v65;
    v69[3] = v66;
    v69[4] = v67;
    v70 = v68;
    v69[0] = v63;
    v69[1] = v64;
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v57 = v63;
    v58 = v64;
    v21 = outlined init with copy of _ViewInputs(v69, &v71);
    a3(v56, v21, &v57);
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v71 = v57;
    v72 = v58;
    outlined destroy of _ViewInputs(&v71);
    v22 = v56[0];
    *&v23 = v56[1];
    v50 = v23;
    v24 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(v56[0]);
    if ((v24 & 0x100000000) != 0 || (v26 = v24, *MEMORY[0x1E698D3F8] == v24))
    {
      v59 = v65;
      v60 = v66;
      v61 = v67;
      v62 = v68;
      v57 = v63;
      v58 = v64;
      outlined destroy of _ViewInputs(&v57);
    }

    else
    {
      v49 = v22;
      if (*(*(a4 - 8) + 64))
      {
        closure #1 in static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)(1, a4, a5, v25);
      }

      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v31 = v78;
      v47 = HIDWORD(v78);
      v48 = OffsetAttribute2;
      swift_beginAccess();
      v32 = *(v31 + 16);
      v33 = v81;
      v45 = HIDWORD(v80);
      v46 = v32;
      v34 = DWORD2(v81);
      LODWORD(v31) = HIDWORD(v81);
      default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v57);
      v53 = v57;
      v54 = DWORD2(v57);
      v55 = BYTE12(v57);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
      v43 = a5;
      v36 = v51;
      v37 = ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(v26, v48, v47, v46, v34, v33, v45, v31, v51, &v53, v13, MEMORY[0x1E69E7CC0], 0, a4, v43);
      v38 = MEMORY[0x1EEE9AC00](v37);
      v42[2] = v15;
      swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTagReceiverModifier<A>.EnqueueUpdates, v15, v38);
      v43 = v39;
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v36, partial apply for closure #1 in Attribute.init<A>(_:), v42, v15, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
      (*(v52 + 8))(v36, v15);
      AGGraphSetFlags();
      v59 = v65;
      v60 = v66;
      v61 = v67;
      v62 = v68;
      v57 = v63;
      v58 = v64;
      outlined destroy of _ViewInputs(&v57);
      v22 = v49;
    }

    *a6 = v22;
    result = *&v50;
    a6[1] = v50;
  }

  else
  {
    v27 = a2[3];
    v73 = a2[2];
    v74 = v27;
    v75 = a2[4];
    v76 = *(a2 + 20);
    v28 = a2[1];
    v71 = *a2;
    v72 = v28;
    (a3)();
  }

  return result;
}

uint64_t closure #1 in static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ScrollEdgeEffectTagReceiverModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

char *ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a10 + 8);
  v17 = *(a10 + 12);
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  *(a9 + 32) = *a10;
  *(a9 + 40) = v16;
  *(a9 + 44) = v17;
  v18 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(0, a14, a15, a4);
  v19 = v18[17];
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  (*(*(v20 - 8) + 32))(a9 + v19, a11, v20);
  *(a9 + v18[18]) = a12;
  *(a9 + v18[19]) = a13;
  v21 = v18[20];
  type metadata accessor for ScrollEdgeEffectTagReceiverModifier.Updater(0, a14, a15, v22);
  v23 = swift_allocObject();
  result = ScrollEdgeEffectTagReceiverModifier.Updater.init()(v23, v24, v25, v26);
  *(a9 + v21) = result;
  return result;
}

double ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v192[1] = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = a1[3];
  v177 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, v6, v7, a4);
  v164 = *(v177 - 1);
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v149 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v151 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v169 = &v149 - v11;
  v168 = v10;
  v172 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v149 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v149 - v17;
  MEMORY[0x1EEE9AC00](v18);
  *&v183 = &v149 - v19;
  v20 = type metadata accessor for ObservationTracking._AccessList();
  *&v184 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v149 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v156 = &v149 - v26;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v160 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v154 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v149 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v165 = (&v149 - v32);
  v178 = AssociatedTypeWitness;
  v181 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v159 = &v149 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v171 = &v149 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v176 = &v149 - v40;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v163 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v149 - v45;
  Value = AGGraphGetValue();
  v48 = *Value;
  LODWORD(AssociatedTypeWitness) = *(Value + 8);

  *&v189 = v48;
  DWORD2(v189) = AssociatedTypeWitness;
  v190 = v49;
  v175 = v5;
  v158 = ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.tagItems(platformItems:)(&v189, v5);

  v182 = v4;
  v50 = AGGraphGetValue();
  v173 = v41;
  v51 = *(v41 + 16);
  v162 = v41 + 16;
  v161 = v51;
  v51(v46, v50, v6);
  v179 = v6;
  v186 = v6;
  v187 = v7;
  v170 = v7;
  v174 = v46;
  v188 = v46;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v52 = static ObservationCenter._current;
  swift_beginAccess();
  v53 = pthread_getspecific(v52[2]);
  if (!v53)
  {
    v54 = swift_slowAlloc();
    pthread_setspecific(v52[2], v54);
    v191 = type metadata accessor for ObservationCenter();
    v48 = v52[3];
    *&v189 = v48;
    outlined init with take of Any(&v189, v54);

    v53 = v54;
  }

  outlined init with copy of Any(v53, &v189);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v55 = v192[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v57 = v184;
  v58 = v157;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_49:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    v55[3] = v5;
    goto LABEL_9;
  }

  v48 = CurrentAttribute;
  swift_beginAccess();
  v153 = v55[3];
  v55[3] = MEMORY[0x1E69E7CC0];
  v59 = (*(v57 + 56))(v58, 1, 1, v20);
  MEMORY[0x1EEE9AC00](v59);
  v60 = v178;
  *(&v149 - 4) = v178;
  *(&v149 - 3) = partial apply for closure #1 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue();
  *(&v149 - 2) = &v185;
  v61 = type metadata accessor for Error();
  v62 = v159;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v58, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v149 - 6), v160, v61, v60, MEMORY[0x1E69E7288], v192);
  v63 = *(v181 + 32);
  v160 = (v181 + 32);
  v159 = v63;
  (v63)(v171, v62, v60);
  v64 = v165;
  outlined init with take of ObservationTracking._AccessList?(v58, v165);
  v65 = v154;
  outlined init with copy of ObservationTracking._AccessList?(v64, v154);
  v7 = v60;
  if ((*(v57 + 48))(v65, 1, v20) == 1)
  {
    _sypSgWOhTm_1(v64, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], _s11Observation0A8TrackingV11_AccessListVSgMaTm_0);
    v66 = v65;
    v67 = v169;
    v68 = v183;
    goto LABEL_12;
  }

  v46 = *(v57 + 32);
  v69 = v156;
  (v46)(v156, v65, v20);
  (*(v57 + 16))(v155, v69, v20);
  v5 = v55[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[3] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v72 = v5[2];
  v71 = v5[3];
  if (v72 >= v71 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v5);
  }

  v5[2] = v72 + 1;
  v73 = v184;
  (v46)(v5 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v184 + 72) * v72, v155, v20);
  v55[3] = v5;
  (*(v73 + 8))(v156, v20);
  v67 = v169;
  v68 = v183;
  v66 = v165;
LABEL_12:
  _sypSgWOhTm_1(v66, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], _s11Observation0A8TrackingV11_AccessListVSgMaTm_0);
  (v159)(v176, v171, v7);
  v74 = v55[3];
  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = *(v184 + 16);
    v77 = v74 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
    v78 = *(v184 + 72);
    v79 = (v184 + 8);
    *&v184 = v55[3];

    do
    {
      v76(v22, v77, v20);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v22);
      (*v79)(v22, v20);
      v77 += v78;
      --v75;
    }

    while (v75);

    v7 = v178;
    v67 = v169;
    v68 = v183;
  }

  v55[3] = v153;

  v80 = v181;
  (*(v181 + 16))(v68, v176, v7);
  (*(v80 + 56))(v68, 0, 1, v7);
  v81 = v172;
  v83 = v172 + 16;
  v82 = *(v172 + 16);
  v169 = *(v175 + 17);
  v84 = v7;
  v85 = v166;
  v86 = v168;
  v82(v166, &v169[v182], v168);
  v87 = *(TupleTypeMetadata2 + 48);
  v82(v67, v68, v86);
  v171 = v87;
  v82(&v87[v67], v85, v86);
  v88 = v68;
  v89 = *(v80 + 48);
  v90 = (v89)(v67, 1, v84);
  *&v184 = v83;
  v165 = v89;
  v157 = (v80 + 48);
  if (v90 == 1)
  {
    v160 = v82;
    v91 = *(v81 + 8);
    v91(v85, v86);
    v91(v88, v86);
    if ((v89)(&v171[v67], 1, v84) == 1)
    {
      v91(v67, v86);
      v92 = 1;
      v93 = v182;
      v82 = v160;
      v94 = v91;
      goto LABEL_24;
    }

    v93 = v182;
    v82 = v160;
    v94 = v91;
    goto LABEL_22;
  }

  v95 = v150;
  v82(v150, v67, v86);
  v96 = v171;
  v97 = v84;
  if ((v89)(&v171[v67], 1, v84) == 1)
  {
    v94 = *(v172 + 8);
    v94(v166, v86);
    v94(v183, v86);
    (*(v181 + 8))(v95, v97);
    v93 = v182;
LABEL_22:
    (*(v151 + 8))(v67, TupleTypeMetadata2);
    v92 = 0;
    goto LABEL_24;
  }

  v98 = v82;
  v99 = v149;
  (v159)(v149, &v96[v67], v84);
  swift_getAssociatedConformanceWitness();
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v100 = *(v181 + 8);
  v101 = v99;
  v82 = v98;
  v100(v101, v84);
  v94 = *(v172 + 8);
  v94(v166, v86);
  v94(v183, v86);
  v100(v95, v97);
  v93 = v182;
  v94(v67, v86);
LABEL_24:
  v102 = v163;
  v103 = v179;
  v161(v163, v174, v179);
  v104 = *(v173 + 32);
  v105 = v180;
  v104(v180, v102, v103);
  v106 = v177;
  v107 = MEMORY[0x1E69E7CC0];
  *&v105[v177[9]] = MEMORY[0x1E69E7CC0];
  *&v105[v106[10]] = v107;
  *&v105[v106[11]] = v107;
  *&v105[v106[12]] = 0;
  v108 = specialized UpdateCycleDetector.dispatch(label:isDebug:)(1, (v93 + 32));
  if ((v108 & 1) == 0)
  {
    v110 = v158;
    if (v92)
    {
      goto LABEL_47;
    }

    goto LABEL_28;
  }

  v109 = v105;
  v110 = v158;
  ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.resolveUpdates(_:newItems:)(v109, v158, v175);
  v93 = v182;
  if ((v92 & 1) == 0)
  {
LABEL_28:
    v111 = v152;
    v112 = v82;
    v113 = v168;
    v112(v152, &v169[v93], v168);
    v114 = (v165)(v111, 1, v178);
    v94(v111, v113);
    if (v114 == 1)
    {
      if ((v108 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v115 = v163;
      v116 = v179;
      v161(v163, v174, v179);
      v117 = v180;
      v118 = v177;
      (*(v164 + 8))(v180, v177);
      v104(v117, v115, v116);
      v119 = MEMORY[0x1E69E7CC0];
      *&v117[v118[9]] = MEMORY[0x1E69E7CC0];
      *&v117[v118[10]] = v119;
      *&v117[v118[11]] = v119;
      *&v117[v118[12]] = 0;
      v120 = *(v93 + *(v175 + 18));
      v121 = *(v120 + 16);
      if (v121)
      {
        v122 = v177[9];
        v172 = v177[10];
        v123 = *&v180[v172];
        v124 = *&v180[v122];
        v125 = (v120 + 48);
        do
        {
          v126 = *(v125 - 2);
          v127 = *(v125 - 8);
          v128 = *v125;
          v183 = v125[1];
          v184 = v128;
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
          }

          v130 = *(v123 + 2);
          v129 = *(v123 + 3);
          if (v130 >= v129 >> 1)
          {
            v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v123);
          }

          *(v123 + 2) = v130 + 1;
          *&v123[8 * v130 + 32] = v126;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
          }

          v132 = *(v124 + 2);
          v131 = *(v124 + 3);
          if (v132 >= v131 >> 1)
          {
            v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v124);
          }

          *(v124 + 2) = v132 + 1;
          v133 = &v124[48 * v132];
          *(v133 + 4) = v126;
          v133[40] = v127;
          v134 = v183;
          *(v133 + 3) = v184;
          *(v133 + 4) = v134;
          v125 += 3;
          --v121;
        }

        while (v121);
        v135 = v180;
        *&v180[v122] = v124;
        *&v135[v172] = v123;
        v93 = v182;
        v110 = v158;
      }
    }
  }

  AGGraphClearUpdate();
  closure #2 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v93, v179, v170, v192, v136);
  AGGraphSetUpdate();
  v137 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v192[0]);
  if (v137)
  {
    v138 = v137[9];
  }

  else
  {
    v138 = 0;
  }

  v139 = v180;
  v140 = v177[12];

  *(v139 + v140) = v138;
  v93 = v182;
  ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:)(v139, v175, v141, v142);

LABEL_47:
  v143 = (*(v164 + 8))(v180, v177);
  v144 = v176;
  v145 = v179;
  v146 = v170;
  $defer #2 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v93, v176, v179, v170, v143);
  (*(v181 + 8))(v144, v178);
  v147 = (*(v173 + 8))(v174, v145);
  $defer #1 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v93, v110, v145, v146, v147);

  return result;
}

char *ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.tagItems(platformItems:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 76);
  v34 = *(v2 + v4) + 1;
  *(v2 + v4) = v34;
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = AGCreateWeakAttribute();
    v7 = AGCreateWeakAttribute();
    v8 = AGCreateWeakAttribute();
    v9 = AGCreateWeakAttribute();
    v10 = AGCreateWeakAttribute();
    v11 = AGCreateWeakAttribute();
    v12 = *(v3 + 16);
    if (v12)
    {
      v30 = HIDWORD(v7);
      v31 = HIDWORD(v6);
      v32 = v10;
      v33 = v9;
      v28 = HIDWORD(v9);
      v29 = HIDWORD(v8);
      v27 = HIDWORD(v10);
      v13 = v7;
      v14 = v3 + 32;
      v15 = v11;
      v16 = HIDWORD(v11);

      v17 = MEMORY[0x1E69E7CC0];
      v25 = v13;
      v26 = v6;
      v18 = v8;
      v24 = v8;
      do
      {
        outlined init with copy of PlatformItem(v14, v54);
        outlined init with copy of PlatformItem(v54, v49);
        v37 = __PAIR64__(v31, v6);
        v38 = v13;
        v39 = v30;
        v40 = v18;
        v41 = v29;
        v42 = v33;
        v43 = v28;
        v44 = v32;
        v45 = v27;
        v46 = v15;
        v47 = v16;
        v48 = v34;
        ScrollEdgeEffectTag.Item.init(platformItem:proxy:)(v49, &v37, &v50);
        outlined destroy of PlatformItem(v54);
        v19 = v50;
        if (v50)
        {
          v20 = v51;
          v35 = v53;
          v36 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v22 = *(v17 + 2);
          v21 = *(v17 + 3);
          if (v22 >= v21 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          }

          *(v17 + 2) = v22 + 1;
          v23 = &v17[48 * v22];
          *(v23 + 4) = v19;
          v23[40] = v20 & 1;
          *(v23 + 3) = v36;
          *(v23 + 4) = v35;
          v13 = v25;
          LODWORD(v6) = v26;
          v18 = v24;
        }

        else
        {
        }

        v14 += 632;
        --v12;
      }

      while (v12);
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    return v17;
  }

  return result;
}

double $defer #1 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(a1 + *(type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(0, a3, a4, a4) + 72)) = a2;

  return result;
}

uint64_t $defer #2 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = *(type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(0, a3, a4, a4) + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(a1 + v7, v9);
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 16))(a1 + v7, a2, AssociatedTypeWitness);
  v10 = *(v12 + 56);

  return v10(a1 + v7, 0, 1, AssociatedTypeWitness);
}

void ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.resolveUpdates(_:newItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(a3 + 72));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v56 = v6;
  if (v7)
  {
    v62 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v62;
    v9 = (v6 + 32);
    do
    {
      v10 = *v9;
      v12 = *(v62 + 16);
      v11 = *(v62 + 24);

      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      *(v62 + 16) = v12 + 1;
      *(v62 + 8 * v12 + 32) = v10;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v53 = v13;
  if (v13)
  {
    v63 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v15 = v63;
    v16 = (a2 + 32);
    do
    {
      v17 = *v16;
      v18 = *(v63 + 16);
      v19 = *(v63 + 24);

      if (v18 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
      }

      *(v63 + 16) = v18 + 1;
      *(v63 + 8 * v18 + 32) = v17;
      v16 += 6;
      --v13;
    }

    while (v13);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v64 = v14;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v8, v15);

  v55 = *(v64 + 16);
  if (!v55)
  {
LABEL_59:

    return;
  }

  v21 = 0;
  v51 = a2 + 48;
  v52 = a1;
  while (v21 < *(v64 + 16))
  {
    v23 = v64 + 32 + 40 * v21;
    v24 = *v23;
    v25 = *(v23 + 8);
    if (*(v23 + 32))
    {
      if (*(v23 + 32) == 1)
      {
        if (v25 != v24)
        {
          if (v25 < v24)
          {
            goto LABEL_66;
          }

          v26 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, *(a3 + 16), *(a3 + 24), v20);
          v27 = v25 - v24;
          if (v25 <= v24)
          {
            goto LABEL_70;
          }

          if (v24 < 0)
          {
            goto LABEL_71;
          }

          if (v24 >= v53)
          {
            goto LABEL_73;
          }

          if (v25 - 1 >= v53)
          {
            goto LABEL_75;
          }

          v50 = *(v26 + 36);
          v28 = *(a1 + v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          }

          v29 = (v51 + 48 * v24);
          do
          {
            v30 = *(v29 - 2);
            v31 = *(v29 - 8);
            v57 = v29[1];
            v59 = *v29;
            v32 = *(v28 + 2);
            v33 = *(v28 + 3);

            if (v32 >= v33 >> 1)
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v28);
            }

            *(v28 + 2) = v32 + 1;
            v34 = &v28[48 * v32];
            *(v34 + 4) = v30;
            v34[40] = v31;
            *(v34 + 3) = v59;
            *(v34 + 4) = v57;
            v29 += 3;
            --v27;
          }

          while (v27);
          goto LABEL_15;
        }
      }

      else
      {
        v40 = *(v23 + 16);
        v41 = *(v23 + 24);
        if (v41 != v40)
        {
          if (v41 < v40)
          {
            goto LABEL_67;
          }

          v42 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, *(a3 + 16), *(a3 + 24), v20);
          v43 = v41 - v40;
          if (v41 <= v40)
          {
            goto LABEL_68;
          }

          if (v40 < 0)
          {
            goto LABEL_72;
          }

          if (v40 >= v53)
          {
            goto LABEL_74;
          }

          if (v41 - 1 >= v53)
          {
            goto LABEL_76;
          }

          v28 = *(a1 + *(v42 + 44));
          v50 = *(v42 + 44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          }

          v44 = (v51 + 48 * v40);
          do
          {
            v45 = *(v44 - 2);
            v46 = *(v44 - 8);
            v58 = v44[1];
            v61 = *v44;
            v47 = *(v28 + 2);
            v48 = *(v28 + 3);

            if (v47 >= v48 >> 1)
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v47 + 1, 1, v28);
            }

            *(v28 + 2) = v47 + 1;
            v49 = &v28[48 * v47];
            *(v49 + 4) = v45;
            v49[40] = v46;
            *(v49 + 3) = v61;
            *(v49 + 4) = v58;
            v44 += 3;
            --v43;
          }

          while (v43);
LABEL_15:
          a1 = v52;
          v22 = v50;
LABEL_16:
          *(a1 + v22) = v28;
        }
      }
    }

    else if (v25 != v24)
    {
      if (v25 < v24)
      {
        goto LABEL_65;
      }

      v35 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, *(a3 + 16), *(a3 + 24), v20);
      if (v25 <= v24)
      {
        goto LABEL_69;
      }

      v60 = *(v35 + 40);
      v28 = *(a1 + v60);
      v36 = (v56 + 32 + 48 * v24);
      while ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 >= *(v56 + 16))
        {
          goto LABEL_63;
        }

        v37 = *v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v39 = *(v28 + 2);
        v38 = *(v28 + 3);
        if (v39 >= v38 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v28);
        }

        ++v24;
        *(v28 + 2) = v39 + 1;
        *&v28[8 * v39 + 32] = v37;
        v36 += 6;
        if (v25 == v24)
        {
          v22 = v60;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
      break;
    }

    if (++v21 == v55)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t closure #2 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(0, a2, a3, x3_0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = *AGGraphGetValue();
  v14 = *(v9 + 8);

  result = v14(v12, v8);
  *a4 = v13;
  return result;
}

double ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = *(v4 + *(a2 + 80));
  (*(v11 + 16))(&v14[-v9 - 8], a1, v7, v8);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  v14[0] = 17;

  static Update.enqueueAction(reason:_:)(v14, partial apply for closure #1 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:), v10);

  return result;
}

void ScrollEdgeEffectTag.Item.init(platformItem:proxy:)(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = *(a2 + 1);
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v92 = a2[5];
  v93 = *(a2 + 12);
  v14 = a1[34];
  if (!v14)
  {
    goto LABEL_32;
  }

  v65 = v13;
  v66 = v12;
  v67 = v11;
  v68 = v10;
  v69 = v9;
  v70 = v8;
  v71 = v6;
  v72 = a1;
  v15 = a1[1];
  v16 = *(v15 + 16);

  if (!v16)
  {

    outlined destroy of PlatformItem(v72);

LABEL_33:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v62 = v4;
  v17 = 32;
  v18 = 1;
  v64 = v7;
  while (*(v15 + v17) <= 1u)
  {
    ++v17;
    if (!--v16)
    {
      v18 = 0;
      break;
    }
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v23 = *(v14 + 16);
  if (v23)
  {
    v59 = v18;
    v60 = a3;
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
    v58 = v5;
    v74 = v64 | (v71 << 32);
    v24 = *MEMORY[0x1E698D3F8];
    v73 = v70 | (v69 << 32);
    v63 = v68 | (v67 << 32);
    v61 = v66 | (v65 << 32);
    v25 = 32;
    v78[0] = x;
    *&v77 = y;
    v76 = width;
    v75 = height;
    while (1)
    {
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v27 = *WeakValue;

        specialized static Update.begin()();
        if (one-time initialization token for lockAssertionsAreEnabled != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        if (AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24)
        {
          (*(*v27 + 88))(&v81);
          v28 = *&v81;
          v29 = *&v82;
          v30 = *&v83;
          v31 = *&v84;
        }

        else
        {
          InputValue = AGGraphGetInputValue();
          v33 = *(InputValue + 8);
          v57 = *InputValue;
          v34 = *(InputValue + 16);
          v35 = *(InputValue + 24);
          v36 = *(InputValue + 32);
          v37 = *(InputValue + 40);
          type metadata accessor for CGPoint(0);
          v56[5] = v38;

          v39 = AGGraphGetInputValue();
          v40 = *v39;
          v41 = *(v39 + 8);
          *&v42 = v36 - (*v39 - v34);
          v81 = v57;
          v82 = v33;
          *&v83 = v40;
          *&v84 = v41;
          v85 = v42;
          v86 = v37 - (v41 - v35);
          (*(*v27 + 96))(v90, &v81);

          v28 = *v90;
          v29 = *&v90[1];
          v30 = *&v90[2];
          v31 = *&v90[3];
        }

        static Update.end()();

        v96.origin.x = x;
        v96.origin.y = y;
        v96.size.width = width;
        v96.size.height = height;
        v99.origin.x = v78[0];
        *&v99.origin.y = v77;
        v99.size.width = v76;
        v99.size.height = v75;
        if (CGRectEqualToRect(v96, v99))
        {
          x = v28;
          y = v29;
          width = v30;
          height = v31;
        }

        else
        {
          v94.origin.x = x;
          v94.origin.y = y;
          v94.size.width = width;
          v94.size.height = height;
          v98.origin.x = v28;
          v98.origin.y = v29;
          v98.size.width = v30;
          v98.size.height = v31;
          v95 = CGRectUnion(v94, v98);
          x = v95.origin.x;
          y = v95.origin.y;
          width = v95.size.width;
          height = v95.size.height;
        }
      }

      v25 += 8;
      if (!--v23)
      {

        a3 = v60;
        v18 = v59;
        LODWORD(v5) = v58;
        v43 = v78[0];
        v44 = *&v77;
        v45 = v76;
        v46 = v75;
        goto LABEL_30;
      }
    }
  }

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
LABEL_30:
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  if (CGRectEqualToRect(v97, *&v43))
  {
    a1 = v72;
LABEL_32:
    outlined destroy of PlatformItem(a1);
    goto LABEL_33;
  }

  if (one-time initialization token for viewGraphHost != -1)
  {
    swift_once();
  }

  v90[0] = static CoordinateSpace.ID.viewGraphHost;
  v91 = 1;
  specialized static Update.begin()();
  *&v88 = x;
  *(&v88 + 1) = y;
  *&v89 = width;
  *(&v89 + 1) = height;
  *&v81 = COERCE_DOUBLE(__PAIR64__(v62, v5));
  *&v82 = COERCE_DOUBLE(__PAIR64__(v71, v64));
  *&v83 = COERCE_DOUBLE(__PAIR64__(v69, v70));
  *&v84 = COERCE_DOUBLE(__PAIR64__(v67, v68));
  v85 = __PAIR64__(v65, v66);
  v86 = v92;
  v87 = v93;
  v47 = GeometryProxy.placementContext.getter(v80);
  MEMORY[0x1EEE9AC00](v47);
  v56[2] = &v88;
  v56[3] = v90;
  v79 = v48;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v56, v50, v51, v52, v49 | (v48 << 32));
  *v78 = v88;
  v77 = v89;
  static Update.end()();
  outlined destroy of CoordinateSpace(v90);
  v53 = v72;
  v54 = *v72;

  outlined destroy of PlatformItem(v53);
  *a3 = v54;
  *(a3 + 8) = v18;
  v55 = v77;
  *(a3 + 16) = *v78;
  *(a3 + 32) = v55;
}

void ScrollEdgeEffectTagReceiverModifier.Updater.flush()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, v5, v6, a4);
  v8 = *(v7 - 8);
  v17 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  swift_beginAccess();
  v18 = v4;
  v11 = v4[2];

  if (!MEMORY[0x193ABF2C0](v12, v7))
  {
LABEL_11:

    v18[2] = static Array._allocateUninitialized(_:)();

    return;
  }

  v13 = 0;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v7);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v16 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v17 != 8)
    {
      break;
    }

    v19 = v16;
    (*(v8 + 16))(v10, &v19, v7);
    swift_unknownObjectRelease();
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    specialized ScrollEdgeEffectTagReceiverModifier.Updater.handleUpdates(_:)(v10, v5, v6);
    (*(v8 + 8))(v10, v7);
    ++v13;
    if (v15 == MEMORY[0x193ABF2C0](v11, v7))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

char *ScrollEdgeEffectTagReceiverModifier.Updater.deinit()
{

  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.Updater.__deallocating_deinit()
{
  ScrollEdgeEffectTagReceiverModifier.Updater.deinit();

  return swift_deallocClassInstance();
}

char *ScrollEdgeEffectTagReceiverModifier.Updater.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, v5, *(*v4 + 88), a4);
  *(v4 + 2) = static Array._allocateUninitialized(_:)();
  (*(*(v5 - 8) + 56))(&v4[*(*v4 + 104)], 1, 1, v5);
  return v4;
}

uint64_t View.scrollEdgeEffectTagReceiver<A>(receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier(0, v8, v10, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, a3, v13);
  (*(v5 + 32))(v15, v7, a3);
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

id static ScrollEdgeEffectTag.Feature.defaults.getter()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  v2 = v0;
  return v1;
}

uint64_t specialized static ScrollEdgeEffectTag.ID.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *specialized static ScrollEdgeEffectTag.Item.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 8) == *(a2 + 8))
    {
      return CGRectEqualToRect(*(result + 2), *(a2 + 2));
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role()
{
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTag.Kind.Role, &type metadata for ScrollEdgeEffectTag.Kind.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role);
  }
}

void lazy protocol witness table accessor for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind()
{
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTag.Kind, &type metadata for ScrollEdgeEffectTag.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind);
  }
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTag.ID(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ScrollEdgeEffectTag.ID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ScrollEdgeEffectTag.Item(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t *assignWithCopy for ScrollEdgeEffectTag.Item(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t *assignWithTake for ScrollEdgeEffectTag.Item(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 2);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = v4;
  return a1;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.Updater(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

double specialized static MultiPlatformItemsStrategy.makeInputs(_:)(Swift::UInt *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 2;
  }

  else
  {
    v7 = 2;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);

  return result;
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0xC6;
  }

  else
  {
    v7 = 198;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);

  return result;
}

double _s7SwiftUI26MultiPlatformItemsStrategyPAAE10makeInputsyyAA05_ViewH0VzFZAA016ScrollEdgeEffectdeF0V_Tt0g5Tm(Swift::UInt *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x21;
  }

  else
  {
    v7 = 33;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA020EnableScrollPrefetchF0V_Ttg5Tm()
{
  swift_beginAccess();
  v0 = static EnableScrollPrefetchFeature.cachedValue;
  if (static EnableScrollPrefetchFeature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76260);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v12, v13);
      _sypSgWOhTm_1(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76260);
      v0 = [v7 BOOLForKey_];

      v10 = &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      _sypSgWOhTm_1(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v10 = &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>;
      v0 = 1;
    }

    *(v10 + 344) = v0;
  }

  return v0 & 1;
}

uint64_t specialized static UserDefaultKeyedFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static ScrollEdgeEffectTag.Feature.cachedValue;
  if (static ScrollEdgeEffectTag.Feature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v11, v12);
      _sypSgWOhTm_1(v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
      v0 = [v7 BOOLForKey_];

      static ScrollEdgeEffectTag.Feature.cachedValue = v0;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      _sypSgWOhTm_1(v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static ScrollEdgeEffectTag.Feature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

{
  swift_beginAccess();
  v0 = static TapGestureUsesGesturesFrameworkFeature.cachedValue;
  if (static TapGestureUsesGesturesFrameworkFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
      v0 = [v5 BOOLForKey_];

      static TapGestureUsesGesturesFrameworkFeature.cachedValue = v0;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static TapGestureUsesGesturesFrameworkFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = *(v6 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || ((((((v9 + 7 + ((v8 + 45) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    *a1 = *a2;
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v16;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v18;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v20;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v23 = *v22;
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v25 = *v24;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v27 = *v26;
    v28 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = ((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v29 = *v28;
    v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = ((v28 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v32 = *v31;
    *(v30 + 5) = *(v31 + 5);
    *v30 = v32;
    v33 = ((v30 + v8 + 13) & ~v8);
    v34 = ((v31 + v8 + 13) & ~v8);
    if ((*(v6 + 48))((v31 + v8 + 13) & ~v8, 1, AssociatedTypeWitness))
    {
      memcpy(v33, v34, v9);
    }

    else
    {
      (*(v6 + 16))(v33, v34, v15);
      (*(v6 + 56))(v33, 0, 1, v15);
    }

    v35 = ((v33 + v10) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v34 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v36;
    v37 = ((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v36 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    *((v37 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double destroy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(uint64_t a1, uint64_t a2)
{
  v2 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (v2 + *(v4 + 80) + 13) & ~*(v4 + 80);
  if (!(*(v4 + 48))(v5, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v5, AssociatedTypeWitness);
  }

  return result;
}

_DWORD *initializeWithCopy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2, uint64_t a3)
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
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  *(v18 + 5) = *(v19 + 5);
  *v18 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 80);
  v24 = ((v18 + v23 + 13) & ~v23);
  v25 = ((v19 + v23 + 13) & ~v23);
  if ((*(v22 + 48))(v25, 1, AssociatedTypeWitness))
  {
    v26 = *(v22 + 84);
    v27 = *(v22 + 64);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v22 + 16))(v24, v25, AssociatedTypeWitness);
    v30 = *(v22 + 56);
    v29 = v22 + 56;
    v30(v24, 0, 1, AssociatedTypeWitness);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 11) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2, uint64_t a3)
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
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 12) = *(v19 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v22 + 13 + v18) & ~v22);
  v24 = ((v22 + 13 + v19) & ~v22);
  v25 = *(v21 + 48);
  v26 = v25(v23, 1, AssociatedTypeWitness);
  v27 = v25(v24, 1, AssociatedTypeWitness);
  if (v26)
  {
    if (!v27)
    {
      (*(v21 + 16))(v23, v24, AssociatedTypeWitness);
      (*(v21 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v28 = *(v21 + 84);
    v29 = *(v21 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v21 + 24))(v23, v24, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v21 + 8))(v23, AssociatedTypeWitness);
    v28 = *(v21 + 84);
    v29 = *(v21 + 64);
  }

  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 + 1;
  }

  memcpy(v23, v24, v30);
LABEL_12:
  if (*(v21 + 84))
  {
    v31 = *(v21 + 64);
  }

  else
  {
    v31 = *(v21 + 64) + 1;
  }

  v32 = v23 + v31 + 7;
  v33 = v24 + v31 + 7;
  v34 = (v33 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v32 & 0xFFFFFFFFFFFFFFF8) = *(v33 & 0xFFFFFFFFFFFFFFF8);
  v35 = (v32 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v35 & 0xFFFFFFFFFFFFFFF8) = *(v34 & 0xFFFFFFFFFFFFFFF8);
  *(((v35 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v34 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2, uint64_t a3)
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
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  *(v18 + 5) = *(v19 + 5);
  *v18 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 80);
  v24 = ((v18 + v23 + 13) & ~v23);
  v25 = ((v19 + v23 + 13) & ~v23);
  if ((*(v22 + 48))(v25, 1, AssociatedTypeWitness))
  {
    v26 = *(v22 + 84);
    v27 = *(v22 + 64);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v22 + 32))(v24, v25, AssociatedTypeWitness);
    v30 = *(v22 + 56);
    v29 = v22 + 56;
    v30(v24, 0, 1, AssociatedTypeWitness);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 11) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2, uint64_t a3)
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
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v15;
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 12) = *(v19 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v22 + 13 + v18) & ~v22);
  v24 = ((v22 + 13 + v19) & ~v22);
  v25 = *(v21 + 48);
  v26 = v25(v23, 1, AssociatedTypeWitness);
  v27 = v25(v24, 1, AssociatedTypeWitness);
  if (v26)
  {
    if (!v27)
    {
      (*(v21 + 32))(v23, v24, AssociatedTypeWitness);
      (*(v21 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v28 = *(v21 + 84);
    v29 = *(v21 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v21 + 40))(v23, v24, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v21 + 8))(v23, AssociatedTypeWitness);
    v28 = *(v21 + 84);
    v29 = *(v21 + 64);
  }

  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 + 1;
  }

  memcpy(v23, v24, v30);
LABEL_12:
  if (*(v21 + 84))
  {
    v31 = *(v21 + 64);
  }

  else
  {
    v31 = *(v21 + 64) + 1;
  }

  v32 = v23 + v31 + 7;
  v33 = (v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  v33 += 11;
  *(v32 & 0xFFFFFFFFFFFFFFF8) = v34;
  v35 = (v32 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v35 & 0xFFFFFFFFFFFFFFF8) = *(v33 & 0xFFFFFFFFFFFFFFF8);
  *(((v35 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v33 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 80);
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v12 + 7;
  if (v10 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((((((v13 + ((v11 + 45) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v10 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  v23 = (((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 13) & ~v11;
  if (v9 < 0x7FFFFFFF)
  {
    v25 = *((v13 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  else
  {
    v24 = (*(v7 + 48))(v23);
    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((((((v13 + 7 + ((v11 + 45) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 < a3)
  {
    if (((((((v13 + 7 + ((v11 + 45) & ~v11)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v12)
  {
    if (((((((v13 + 7 + ((v11 + 45) & ~v11)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v12;
    }

    else
    {
      v17 = 1;
    }

    if (((((((v13 + 7 + ((v11 + 45) & ~v11)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v12 + a2;
      bzero(a1, ((((((v13 + 7 + ((v11 + 45) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v18;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + v14) = v17;
      }

      else
      {
        *(a1 + v14) = v17;
      }
    }

    else if (v7)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v14) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v19 = ((((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 13) & ~v11);
  if (v10 < 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *(&v19[v13 + 7] & 0xFFFFFFFFFFFFFFF8) = v23;
  }

  else if (v10 >= a2)
  {
    v24 = *(v8 + 56);

    v24(v19, a2 + 1);
  }

  else
  {
    if (v13 <= 3)
    {
      v20 = ~(-1 << (8 * v13));
    }

    else
    {
      v20 = -1;
    }

    if (v13)
    {
      v21 = v20 & (~v10 + a2);
      if (v13 <= 3)
      {
        v22 = v13;
      }

      else
      {
        v22 = 4;
      }

      bzero(v19, v13);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          v19[2] = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

uint64_t specialized ScrollEdgeEffectTagReceiverModifier.Updater.handleUpdates(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v11 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(0, a2, a3, v10);
  (*(a3 + 32))(*(a1 + v11[12]), a2, a3);
  v12 = *(a1 + v11[10]);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(a3 + 56);
    v15 = (v12 + 32);
    do
    {
      v16 = *v15++;
      v30 = v16;
      v14(&v30, a2, a3);
      --v13;
    }

    while (v13);
  }

  v17 = *(a1 + v11[9]);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(a3 + 48);
    v20 = (v17 + 64);
    do
    {
      v21 = *(v20 - 24);
      v30 = *(v20 - 4);
      v31 = v21;
      v22 = *v20;
      v32 = *(v20 - 1);
      v33 = v22;
      v19(&v30, a2, a3);
      v20 += 3;
      --v18;
    }

    while (v18);
  }

  v23 = *(a1 + v11[11]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(a3 + 64);
    v26 = (v23 + 64);
    do
    {
      v27 = *(v26 - 24);
      v30 = *(v26 - 4);
      v31 = v27;
      v28 = *v26;
      v32 = *(v26 - 1);
      v33 = v28;
      v25(&v30, a2, a3);
      v26 += 3;
      --v24;
    }

    while (v24);
  }

  (*(a3 + 40))(a2, a3);
  return (*(v6 + 8))(v9, a2);
}

double LazyScrollable.parent.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Scrollable();
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

double LazyScrollable.children.getter()
{
  type metadata accessor for CGRect?(0, &lazy cache variable for type metadata for [Scrollable], type metadata accessor for Scrollable, MEMORY[0x1E69E62F8]);
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

uint64_t LazyScrollable.allowsContentOffsetAdjustments.getter()
{
  LazyScrollable.parent.getter(v4);
  v0 = v5;
  if (v5)
  {
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = (*(v1 + 24))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of _LazyLayout_PlacedSubview?(v4, &lazy cache variable for type metadata for Scrollable?, type metadata accessor for Scrollable, MEMORY[0x1E69E6720], type metadata accessor for CGRect?);
    v2 = 1;
  }

  return v2 & 1;
}

void (*LazyScrollable.makeTarget<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    IsValid = AGSubgraphIsValid();
    if (IsValid && (MEMORY[0x1EEE9AC00](IsValid), v19[2] = a3, v19[3] = a4, v19[4] = v9, v19[5] = a1, type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]), _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.makeTarget<A>(for:), v19, &v20), (v21 & 1) == 0))
    {
      v11 = v20;
      if (_threadTransactionData())
      {
        type metadata accessor for PropertyList.Element();
        swift_unknownObjectRetain();
        v12 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v12 = 0;
      }

      v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v12);
      v15 = v14;
      v17 = v16;

      v18 = LazyScrollable.makeTarget(at:anchor:)(v11, v13, v15, v17 & 1, a2);

      return v18;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in LazyScrollable.makeTarget<A>(for:)@<X0>(const void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a2;
  memcpy(v15, a1, 0x129uLL);
  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v16);
  v11 = (*(*(v10 + 448) + 104))(a3, v16, v15, a4, a5, *(v10 + 440));
  v13 = v12;
  result = outlined destroy of _LazyLayout_Subviews(v16);
  *a6 = v11;
  *(a6 + 8) = v13 & 1;
  return result;
}

void (*LazyScrollable.makeTarget(at:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))(uint64_t a1@<X8>)
{
  v11 = swift_allocObject();
  v13 = *v5;
  v12 = v5[1];
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = *(a5 + 16);
  *(v14 + 32) = v11;
  *(v14 + 40) = a1;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  *(v14 + 64) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4 & 1;
  return partial apply for closure #1 in LazyScrollable.makeTarget(at:anchor:);
}

void closure #1 in LazyScrollable.makeTarget(at:anchor:)(uint64_t a2@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, char a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v13 = Strong;
  IsValid = AGSubgraphIsValid();
  if (!IsValid || (MEMORY[0x1EEE9AC00](IsValid), v30[2] = v13, v30[3] = a2, type metadata accessor for CGRect?(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]), _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in closure #1 in LazyScrollable.makeTarget(at:anchor:), v30, &v31), (LOBYTE(v33) & 1) != 0) || (v37 = v31, v38 = v32, (WeakValue = AGGraphGetWeakValue()) == 0))
  {
LABEL_9:

LABEL_10:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 256;
    return;
  }

  v16 = *WeakValue;
  v17 = *(WeakValue + 8);
  v18 = *(WeakValue + 16);
  v19 = *(WeakValue + 24);
  v20 = *(WeakValue + 32);
  v21 = *(WeakValue + 40);
  type metadata accessor for CGPoint(0);

  v22 = AGGraphGetWeakValue();
  if (!v22)
  {

    goto LABEL_9;
  }

  v24 = *v22;
  v23 = *(v22 + 8);
  v25 = v20 - (*v22 - v18);
  v26 = v21 - (v23 - v19);
  if (one-time initialization token for content != -1)
  {
    v28 = *v22;
    v29 = *(v22 + 8);
    swift_once();
    v23 = v29;
    v24 = v28;
  }

  v35[0] = static ScrollCoordinateSpace.content;
  v36 = 1;
  v31.f64[0] = v16;
  v31.f64[1] = v17;
  *&v32 = v24;
  *(&v32 + 1) = v23;
  v33 = v25;
  v34 = v26;

  CGRect.convert(to:transform:)(v35, &v31);

  outlined destroy of CoordinateSpace(v35);

  LOBYTE(v31.f64[0]) = a8 & 1;
  LOBYTE(v35[0]) = 0;
  v27 = v38;
  *a7 = v37;
  *(a7 + 16) = v27;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = a8 & 1;
  *(a7 + 49) = 0;
}

uint64_t closure #1 in closure #1 in LazyScrollable.makeTarget(at:anchor:)@<X0>(double *a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a3;
  v6 = *(*a2 + 448);
  v7 = *(*a2 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = *(a1 + 1);
  v30 = *a1;
  v31 = v12;
  v13 = a1[4];
  memcpy(v29, a1 + 5, sizeof(v29));
  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v26);
  _LazyLayoutViewCache.copyCacheState<A>(type:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v23[0] = v30;
  v23[1] = v31;
  v24 = v13;
  memcpy(v25, v29, sizeof(v25));
  (*(v6 + 112))(v27, v22, v26, v23, v11, v7, v6);
  v14 = *v27;
  v15 = *&v27[1];
  v16 = *&v27[2];
  v17 = *&v27[3];
  LOBYTE(v23[0]) = v28;
  if ((v28 & 1) != 0 || *AGGraphGetValue() != 1)
  {
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    result = outlined destroy of _LazyLayout_Subviews(v26);
  }

  else
  {
    v32.origin.y = v15;
    v32.size.width = v16;
    v32.size.height = v17;
    v32.origin.x = v14;
    MaxX = CGRectGetMaxX(v32);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    result = outlined destroy of _LazyLayout_Subviews(v26);
    v14 = v13 - MaxX;
  }

  v20 = v23[0];
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v20;
  return result;
}

void LazyScrollable.subviewClosestTo(rect:)(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v12 = Strong;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_5;
  }

  LazyScrollable.transform.getter(&v58);
  if (v58 == 1)
  {

LABEL_6:
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v58);
    v13 = v63;
    a1[4] = v62;
    a1[5] = v13;
    v14 = v65;
    a1[6] = v64;
    a1[7] = v14;
    v15 = v59;
    *a1 = v58;
    a1[1] = v15;
    v16 = v61;
    a1[2] = v60;
    a1[3] = v16;
    return;
  }

  v17 = v60;
  v18 = v59;
  v53 = v58;
  *&v19 = COERCE_DOUBLE(LazyScrollable.position.getter());
  if (v21)
  {

LABEL_5:

    goto LABEL_6;
  }

  v44 = *(&v17 + 1);
  v22 = *&v19;
  v43 = v20;
  v23 = v19;
  v24 = v20;
  v25 = *AGGraphGetValue();

  v56 = *&v17 - (v22 - *&v18);
  v57 = v44 - (v43 - *(&v18 + 1));
  v54 = v23;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v34[2] = v23;
  *&v34[3] = v24;
  v35 = v25;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v12;
  v41 = v5;
  v42 = &v53;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for ScrollableCollectionSubview?, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6720]);
  _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.subviewClosestTo(rect:), v34, &v45);

  v28 = v51;
  v27 = v52;
  v64 = v51;
  v65 = v52;
  v29 = v50;
  v62 = v49;
  v63 = v50;
  v31 = v45;
  v30 = v46;
  v58 = v45;
  v59 = v46;
  v32 = v47;
  v33 = v48;
  v60 = v47;
  v61 = v48;
  a1[4] = v49;
  a1[5] = v29;
  a1[6] = v28;
  a1[7] = v27;
  *a1 = v31;
  a1[1] = v30;
  a1[2] = v32;
  a1[3] = v33;
}

uint64_t closure #1 in LazyScrollable.subviewClosestTo(rect:)@<X0>(const void *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, CGFloat a7@<D0>, double a8@<D1>, double a9@<D2>, CGFloat a10@<D3>, CGFloat a11@<D4>, CGFloat a12@<D5>)
{
  v72 = a4;
  v73 = a5;
  v82 = a9;
  v83 = a8;
  v75 = a6;
  v18 = *(*a3 + 448);
  v78 = *(*a3 + 440);
  v79 = v18;
  *&v19 = COERCE_DOUBLE(swift_getAssociatedTypeWitness());
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70[-v20];
  memcpy(v124, a1, 0x129uLL);
  v22 = *&v124[25];
  v23 = *&v124[26];
  v80 = *&v124[32];
  v81 = *&v124[31];
  v24 = v124[35];
  v25 = v124[36];
  v71 = a2;
  if (a2)
  {
    *&v125.size.height = v124[5];
    *&v125.size.width = v124[4];
    v77 = a10;
    v26 = a11;
    v27 = a12;
    v28 = *&v124[23];
    v125.origin.x = a7;
    v125.origin.y = v83;
    a7 = v28 - CGRectGetMaxX(v125);
    a12 = v27;
    a11 = v26;
    a10 = v77;
  }

  v126.origin.x = v82;
  v126.origin.y = a10;
  v126.size.width = a11;
  v126.size.height = a12;
  v127 = CGRectOffset(v126, -a7, -v83);
  v128 = CGRectOffset(v127, -v23, -v22);
  *&v29 = v128.origin.x - v81;
  *&v30 = v128.origin.y - v80;
  memcpy(v123, a1, 0x129uLL);
  ScrollGeometry.translate(by:limit:)(__PAIR128__(v30, v29), __PAIR128__(v25, v24));
  ScrollGeometry.translate(by:limit:)(__PAIR128__(v30, v29), __PAIR128__(v25, v24));
  LODWORD(v83) = *MEMORY[0x1E698D3F8];
  LazyLayoutViewCache.subviews(context:)(LODWORD(v83), v122);
  v77 = *&v19;
  _LazyLayoutViewCache.copyCacheState<A>(type:)(v19, v19);
  v111 = v123[12];
  v112 = v123[13];
  v113 = v123[14];
  v114 = v123[15];
  v107 = v123[8];
  v108 = v123[9];
  v109 = v123[10];
  v110 = v123[11];
  v103 = v123[4];
  v104 = v123[5];
  v105 = v123[6];
  v106 = v123[7];
  v99 = v123[0];
  v100 = v123[1];
  v101 = v123[2];
  v102 = v123[3];
  v116 = *(&v123[16] + 8);
  v117 = *(&v123[17] + 8);
  v118 = BYTE8(v123[18]);
  v119 = 0;
  v120 = 1;
  v121 = MEMORY[0x1E69E7CC0];
  v82 = *(&v123[15] + 1);
  v31 = *&v123[16];
  v115 = *&v123[16];
  v32 = *(v79 + 72);
  v74 = v21;
  v32(v122, &v99, v21, &v119, v78);
  v33 = v121;
  v34 = *(*&v121 + 16);
  if (v34)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    if (*(*&v121 + 16))
    {
      v35 = 0;
      *&v80 = v34 - 1;
      v81 = v121;
      v36 = INFINITY;
      v37 = 32;
      while (1)
      {
        v89 = *(*&v33 + v37);
        v38 = *(*&v33 + v37 + 16);
        v39 = *(*&v33 + v37 + 32);
        v40 = *(*&v33 + v37 + 64);
        v92 = *(*&v33 + v37 + 48);
        v93 = v40;
        v90 = v38;
        v91 = v39;
        v41 = v89;
        if (*(v89 + 44) == LODWORD(v83))
        {
          outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v99);
          Value = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            Value = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v99);
          Value = AGGraphGetValue();
        }

        v43 = *Value;
        v44 = *(&v89 + 1);
        v45 = v90;
        v46 = *(&v90 + 1);
        v47 = v91;
        v48 = *(&v91 + 1);
        v50 = v92;
        v49 = *&v93;
        v51 = one-time initialization token for lockAssertionsAreEnabled;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = lockAssertionsAreEnabled;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        *&v99 = v44;
        BYTE8(v99) = v45;
        *&v100 = v46;
        BYTE8(v100) = v47;
        v53 = (*(*v43 + 120))(&v99);
        v55 = v54;

        if (*(v41 + 44) == LODWORD(v83))
        {
          v56 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v56 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v56 = AGGraphGetValue();
        }

        v57 = *v56;
        if (v52)
        {
          v58 = one-time initialization token for _lock;

          if (v58 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        *&v99 = v44;
        BYTE8(v99) = v45;
        *&v100 = v46;
        BYTE8(v100) = v47;
        (*(*v57 + 120))(&v99);

        v59 = sqrt((v82 - (*(&v50 + 1) - v48 * v53)) * (v82 - (*(&v50 + 1) - v48 * v53)) + (v31 - (v49 - *&v50 * v55)) * (v31 - (v49 - *&v50 * v55)));
        if (v59 >= v36)
        {
          outlined destroy of _LazyLayout_PlacedSubview(&v89);
          v60 = &v94;
        }

        else
        {
          outlined destroy of _LazyLayout_PlacedSubview?(&v94, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_PlacedSubview]);
          v60 = &v89;
          v36 = v59;
        }

        v61 = v60[3];
        v86 = v60[2];
        v87 = v61;
        v88 = v60[4];
        v62 = v60[1];
        v84 = *v60;
        v85 = v62;
        v33 = v81;
        if (*&v80 == v35)
        {

          v101 = v86;
          v102 = v87;
          v103 = v88;
          v99 = v84;
          v100 = v85;
          goto LABEL_34;
        }

        ++v35;
        v96 = v86;
        v97 = v87;
        v98 = v88;
        v94 = v84;
        v95 = v85;
        v37 += 80;
        if (v35 >= *(*&v81 + 16))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
LABEL_34:
    v92 = v102;
    v93 = v103;
    v90 = v100;
    v91 = v101;
    v89 = v99;
    MEMORY[0x1EEE9AC00](v63);
    v64 = v79;
    *&v70[-48] = v78;
    *&v70[-40] = v64;
    *&v70[-32] = v72;
    v70[-24] = v71 & 1;
    v68 = v124;
    v69 = v73;
    outlined init with copy of _LazyLayout_PlacedSubview?(&v99, &v94);
    v65 = MEMORY[0x1E69E6720];
    type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in LazyScrollable.subviewClosestTo(rect:), &v70[-64], MEMORY[0x1E69E73E0], &type metadata for ScrollableCollectionSubview, v66, v75);
    outlined destroy of _LazyLayout_PlacedSubview?(&v99, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v65, type metadata accessor for [_LazyLayout_PlacedSubview]);
    v96 = v91;
    v97 = v92;
    v98 = v93;
    v94 = v89;
    v95 = v90;
    outlined destroy of _LazyLayout_PlacedSubview?(&v94, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v65, type metadata accessor for [_LazyLayout_PlacedSubview]);
    (*(v76 + 8))(v74, COERCE_DOUBLE(*&v77));
    return outlined destroy of _LazyLayout_Subviews(v122);
  }

  return result;
}

void closure #1 in closure #1 in LazyScrollable.subviewClosestTo(rect:)(uint64_t *a1@<X0>, char a2@<W2>, const void *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *v35 = *(a1 + 1);
  *&v35[16] = *(a1 + 3);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v16 = *(a1 + 7);
  v17 = *(a1 + 8);
  v18 = a1[9];
  v19 = *(*&v13 + 152);
  v40[0] = *(*&v13 + 144);
  v40[1] = v19;
  *__dst = v13;
  v20 = *(a1 + 3);
  *&__dst[8] = *(a1 + 1);
  *&__dst[24] = v20;
  *&__dst[40] = v14;
  *&__dst[48] = v15;
  *&__dst[56] = v16;
  *&__dst[64] = v17;
  *&__dst[72] = v18;

  _LazyLayout_PlacedSubview.size.getter();
  v23 = v16 - v14 * v21;
  v34 = v13;
  *&v35[32] = v14;
  v36 = v15;
  v24 = v17 - v15 * v22;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  _LazyLayout_PlacedSubview.size.getter();
  v26 = v25;
  v28 = v27;
  v33 = a2 & 1;
  memcpy(__dst, a3, sizeof(__dst));
  v29 = a4[1];
  v34 = *a4;
  *v35 = v29;
  v30 = *(a4 + 2);
  *&v35[8] = *(a4 + 1);
  *&v35[24] = v30;
  type metadata accessor for LazyScrollable(0, a5, a6, v31);

  LazyScrollable.collectionSubview(id:frame:layoutDirection:context:transform:)(v40, &v33, __dst, &v34, a7, v23, v24, v26, v28);
}

uint64_t LazyScrollable.visibleCollectionViewIDs.getter()
{
  Strong = swift_weakLoadStrong();
  v1 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    if (AGSubgraphIsValid())
    {
      type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

      v2 = *AGGraphGetValue();

      v3 = *(v2 + 16);
      if (v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v4 = 32;
        do
        {
          v5 = *(v2 + v4);
          v6 = *(v5 + 144);
          v7 = *(v5 + 148);
          v8 = *(v5 + 152);
          v9 = *(v8 + 16);
          swift_bridgeObjectRetain_n();

          if (v9)
          {
            v9 = *(v8 + 32);
            v10 = *(v8 + 52);

            swift_bridgeObjectRelease_n();

            if (v10)
            {
              v7 = -1;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v12 = *(v1 + 16);
          v11 = *(v1 + 24);
          if (v12 >= v11 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          }

          *(v1 + 16) = v12 + 1;
          v13 = v1 + 16 * v12;
          *(v13 + 32) = v6;
          *(v13 + 36) = v7;
          *(v13 + 40) = v9;
          v4 += 80;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
    }
  }

  return v1;
}

void LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)(uint64_t *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>, double a4@<D2>, double a5@<D3>)
{
  v8 = *a1;
  v45 = a1[1];
  v9 = *a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v11 = Strong;
  if (!AGSubgraphIsValid())
  {

LABEL_15:
    *a3 = xmmword_18DD85550;
    return;
  }

  v43 = v9;
  v44 = a3;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

  v12 = *(*AGGraphGetValue() + 16);
  if (!v12)
  {
LABEL_12:

LABEL_13:
    *v44 = xmmword_18DD85550;
    return;
  }

  v13 = 0;
  v14 = 32;
  while (1)
  {
    Value = AGGraphGetValue();
    if (v13 >= *(*Value + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = *(*Value + v14);
    v17 = *(v16 + 144);
    v18 = *(v16 + 148);
    v19 = *(v16 + 152);
    v20 = *(v19 + 16);
    swift_bridgeObjectRetain_n();
    if (v20)
    {
      v20 = *(v19 + 32);
      v21 = v11;
      v22 = *(v19 + 52);

      swift_bridgeObjectRelease_n();
      v23 = v22 == 0;
      v11 = v21;
      if (!v23)
      {
        v18 = -1;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    *&v51 = __PAIR64__(v18, v17);
    *(&v51 + 1) = v20;
    *&v46 = v8;
    *(&v46 + 1) = v45;
    v24 = specialized static _ViewList_ID.Canonical.== infix(_:_:)(&v51, &v46);

    if (v24)
    {
      break;
    }

    ++v13;
    v14 += 80;
    if (v12 == v13)
    {
      goto LABEL_12;
    }
  }

  v25 = *AGGraphGetValue();

  if (v13 >= *(v25 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v51 = *(v25 + v14);
  v26 = *(v25 + v14 + 16);
  v27 = *(v25 + v14 + 32);
  v28 = *(v25 + v14 + 64);
  v54 = *(v25 + v14 + 48);
  v55 = v28;
  v52 = v26;
  v53 = v27;
  outlined init with copy of _LazyLayout_PlacedSubview(&v51, &v46);

  v29 = *(&v53 + 1);
  v31 = v54;
  v30 = *&v55;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v47 = v52;
  v46 = v51;
  _LazyLayout_PlacedSubview.size.getter();
  v34 = *(&v31 + 1) - v29 * v32;
  v35 = v30 - *&v31 * v33;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v47 = v52;
  v46 = v51;
  _LazyLayout_PlacedSubview.size.getter();
  v37 = v36;
  v39 = v38;
  outlined destroy of _LazyLayout_PlacedSubview(&v51);
  v56.origin.x = v34;
  v56.origin.y = v35;
  v56.size.width = v37;
  v56.size.height = v39;
  CGRectInset(v56, -a4, -a5);
  LODWORD(v46) = v43;
  MEMORY[0x1EEE9AC00](v40);
  v41 = specialized LazyScrollable.bestIndex(target:border:fromIndex:ignoredViews:distance:)(v13, 0, &v46, partial apply for closure #1 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:), a4, a5);
  if (v42)
  {

    goto LABEL_13;
  }

  *&v46 = v41;
  closure #2 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)(&v46, v44);
}

BOOL distance(from:to:along:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = a7;
  v11 = a5;
  v12 = a3;
  v13 = a1;
  v14 = a10;
  if (a10 == 0.0)
  {
    v14 = a9;
    v30 = a7;
    v31 = a5;
    v11 = a6;
    v10 = a8;
    v13 = a2;
    v12 = a4;
  }

  else
  {
    v30 = a8;
    v31 = a6;
    a1 = a2;
    a3 = a4;
    if (a9 != 0.0)
    {
      return 0;
    }
  }

  v28 = a3;
  v29 = a1;
  v15 = v13;
  v16 = v12;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    v20 = v13 + v12;
    if (v13 + v12 >= v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = v13 + v12;
    }

    if (v13 > v20)
    {
      v20 = v13;
    }

    if (v21 > v20)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v20;
    }

    if (v21 > v20)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v21;
    }
  }

  v32.size.width = v30;
  v32.origin.x = v31;
  v32.origin.y = v11;
  v32.size.height = v10;
  result = CGRectIsNull(v32);
  v23 = 0.0;
  if (!result)
  {
    v23 = v11 + v10;
    if (v11 + v10 >= v11)
    {
      v24 = v11;
    }

    else
    {
      v24 = v11 + v10;
    }

    if (v11 > v23)
    {
      v23 = v11;
    }

    if (v24 <= v23)
    {
      v17 = v24;
    }

    else
    {
      v23 = 0.0;
      v17 = 0.0;
    }
  }

  if (v18 > v17)
  {
    v25 = v18;
  }

  else
  {
    v25 = v17;
  }

  if (v23 >= v19)
  {
    v23 = v19;
  }

  if (v25 >= v23)
  {
    return 0;
  }

  if (v25 > v23)
  {
    __break(1u);
  }

  else
  {
    v33.size.width = v30;
    v33.origin.x = v31;
    v33.origin.y = v11;
    v33.size.height = v10;
    MidX = CGRectGetMidX(v33);
    v34.size.width = v28;
    v34.origin.x = v29;
    v34.origin.y = v13;
    v34.size.height = v12;
    v27 = MidX - CGRectGetMidX(v34);
    if (v14 < 0.0)
    {
      v27 = -v27;
    }

    return *&v27;
  }

  return result;
}

uint64_t closure #2 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(*result + 16))
  {
    v6 = *(*result + 80 * v4 + 32);
    v7 = *(v6 + 152);
    v8[0] = *(v6 + 144);
    v8[1] = v7;

    return _ViewList_ID.Canonical.init(id:)(v8, a3);
  }

  __break(1u);
  return result;
}

uint64_t LazyScrollable.applyCollectionViewIDs(from:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  if (!AGSubgraphIsValid())
  {

LABEL_5:
    v7 = 1;
    return v7 & 1;
  }

  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v11);
  MEMORY[0x1EEE9AC00](v6);
  v9[2] = a2;
  v9[3] = a3;
  v10 = 2;
  v7 = _LazyLayout_Subviews.apply(from:style:to:)(a1, &v10, partial apply for closure #1 in LazyScrollable.applyCollectionViewIDs(from:to:), v9);

  outlined destroy of _LazyLayout_Subviews(v11);
  return v7 & 1;
}

double closure #1 in LazyScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v5;

  _ViewList_ID.Canonical.init(id:)(&v7, v9);
  v7 = v9[0];
  v8 = v9[1];
  a3(&v7, a2);

  return result;
}

void LazyScrollable.collectionViewID(for:)(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (!AGSubgraphIsValid() || (LazyLayoutViewCache.item(for:)(a1), !v4))
  {

LABEL_6:
    v8 = xmmword_18DD85550;
    goto LABEL_7;
  }

  v5 = *(v4 + 152);
  v6 = v4;

  v7 = *(v6 + 144);

  v9[0] = v7;
  v9[1] = v5;
  _ViewList_ID.Canonical.init(id:)(v9, &v10);

  v8 = v10;
LABEL_7:
  *a2 = v8;
}

uint64_t LazyScrollable.firstCollectionViewIndex(of:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_weakLoadStrong();
  if (result)
  {
    if (AGSubgraphIsValid())
    {
      LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v10);
      v9 = 0;
      MEMORY[0x1EEE9AC00](v4);
      v6[2] = v1;
      v6[3] = v2;
      v6[4] = &v9;
      v7 = 2;
      v8 = 0;
      v5 = _LazyLayout_Subviews.apply(from:style:to:)(&v8, &v7, closure #1 in _LazyLayout_Subviews.firstIndex(of:style:)partial apply, v6);

      outlined destroy of _LazyLayout_Subviews(v10);
      if (v5)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t LazyScrollable.scroll(toCollectionViewID:anchor:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  if (!AGSubgraphIsValid())
  {
    goto LABEL_8;
  }

  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v22);
  v21 = 0;
  MEMORY[0x1EEE9AC00](v11);
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = &v21;
  v20 = 0;
  v19 = 2;
  if (_LazyLayout_Subviews.apply(from:style:to:)(&v20, &v19, partial apply for closure #1 in _LazyLayout_Subviews.firstIndex(of:style:), v18))
  {

    outlined destroy of _LazyLayout_Subviews(v22);
LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  v12 = LazyScrollable.makeTarget(at:anchor:)(v21, a2, a3, a4 & 1, a5);
  if (!v12)
  {
    outlined destroy of _LazyLayout_Subviews(v22);
LABEL_8:

    goto LABEL_9;
  }

  v14 = v12;
  v15 = v13;
  v16 = ScrollableContainer.setParentTarget(_:)(v12, v13, a5, &protocol witness table for LazyScrollable<A>);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v14, v15);

  outlined destroy of _LazyLayout_Subviews(v22);
  return v16 & 1;
}

_DWORD *assignWithCopy for LazyScrollable(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  swift_weakCopyAssign();
  return a1;
}

_OWORD *initializeWithTake for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakTakeInit();
  return a1;
}

_OWORD *assignWithTake for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyScrollable(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyScrollable(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t partial apply for closure #1 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)(double a1, double a2, double a3, double a4)
{
  result = distance(from:to:along:)(v4[2], v4[3], v4[4], v4[5], a1, a2, a3, a4, v4[6], v4[7]);
  if (*&result >= 0.0)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  return result;
}

unint64_t specialized LazyScrollable.bestIndex(target:border:fromIndex:ignoredViews:distance:)(uint64_t a1, char a2, int *a3, uint64_t (*a4)(__n128, __n128, __n128, __n128), double a5, double a6)
{
  v11 = *a3;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!AGSubgraphIsValid())
  {

    return 0;
  }

  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

  v13 = *(*AGGraphGetValue() + 16);
  if (!v13)
  {

    return 0;
  }

  swift_beginAccess();
  v60 = 0;
  v14 = 0;
  v61 = *MEMORY[0x1E698D3F8];
  dx = -a5;
  v15 = -a6;
  v59 = 1;
  v16 = INFINITY;
  v17 = 32;
  v57 = a4;
  v56 = a1;
  v55 = v11;
  while (1)
  {
    if ((a2 & 1) == 0 && a1 == v14)
    {
      goto LABEL_5;
    }

    Value = AGGraphGetValue();
    if (v14 >= *(*Value + 16))
    {
      break;
    }

    v19 = *(*Value + v17);
    if ((*(v19 + 173) != 1 || (v11 & 1) == 0) && (*(v19 + 174) != 1 || (v11 & 2) == 0))
    {
      v22 = AGGraphGetValue();
      if (v14 >= *(*v22 + 16))
      {
        goto LABEL_53;
      }

      v23 = (*v22 + v17);
      v68 = *v23;
      v24 = v23[1];
      v25 = v23[2];
      v26 = v23[4];
      v71 = v23[3];
      v72 = v26;
      v69 = v24;
      v70 = v25;
      v27 = v68;
      if (*(v68 + 44) == v61)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v68, &v64);
        v28 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v28 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v68, &v64);
        v28 = AGGraphGetValue();
      }

      v29 = *v28;
      v30 = *(&v68 + 1);
      v31 = *(&v69 + 1);
      v62 = v70;
      v63 = v69;
      v32 = *(&v70 + 1);
      v34 = v71;
      v33 = *&v72;
      v35 = one-time initialization token for lockAssertionsAreEnabled;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_54;
        }
      }

      v64 = v30;
      v65 = v63;
      v66 = v31;
      v67 = v62;
      v37 = (*(*v29 + 120))(&v64);
      v39 = v38;

      if (*(v27 + 44) == v61)
      {
        v40 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v40 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v40 = AGGraphGetValue();
      }

      v41 = *v40;
      if (v36)
      {
        v42 = one-time initialization token for _lock;

        if (v42 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

      v43 = *&v34 * v39;
      v44 = *(&v34 + 1) - v32 * v37;
      v45 = v33 - v43;
      v64 = v30;
      v65 = v63;
      v66 = v31;
      v67 = v62;
      v46 = (*(*v41 + 120))(&v64);
      v48 = v47;

      outlined destroy of _LazyLayout_PlacedSubview(&v68);
      v49 = *AGGraphGetValue();
      v50 = AGGraphGetValue();
      if (v49 == 1)
      {
        v51 = *v50;
        v73.origin.x = v44;
        v73.origin.y = v45;
        v73.size.width = v46;
        v73.size.height = v48;
        v44 = v51 - CGRectGetMaxX(v73);
      }

      a1 = v56;
      LOBYTE(v11) = v55;
      v74.origin.x = v44;
      v74.origin.y = v45;
      v74.size.width = v46;
      v74.size.height = v48;
      v75 = CGRectInset(v74, dx, v15);
      v52 = v57(v75.origin, *&v75.origin.y, v75.size, *&v75.size.height);
      if ((v53 & 1) == 0)
      {
        v54 = v60;
        if (COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) < v16)
        {
          v54 = v14;
        }

        v60 = v54;
        v59 &= COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) >= v16;
        if (COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) < v16)
        {
          *&v16 = v52 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

LABEL_5:
    ++v14;
    v17 += 80;
    if (v13 == v14)
    {

      return v60;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of _LazyLayout_PlacedSubview?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for Scrollable()
{
  result = lazy cache variable for type metadata for Scrollable;
  if (!lazy cache variable for type metadata for Scrollable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Scrollable);
  }

  return result;
}

void type metadata accessor for CGRect?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double key path setter for _GraphInputs.hasWidgetMetadata : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(a2, v3);

  return result;
}

double _GraphInputs.hasWidgetMetadata.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1, a1);

  return result;
}

uint64_t (*_GraphInputs.hasWidgetMetadata.modify(uint64_t *a1))()
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
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.hasWidgetMetadata.modify;
}

double _ViewInputs.hasWidgetMetadata.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1, a1);

  return result;
}

uint64_t (*_ViewInputs.hasWidgetMetadata.modify(uint64_t *a1))()
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
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewInputs.hasWidgetMetadata.modify;
}

void _GraphInputs.hasWidgetMetadata.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t CodableAttributedString.Range.extent.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void CodableAttributedString.encode(to:)(uint64_t a1)
{
  v47 = a1;
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = [*v1 string];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v39 = v47;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    static String.Encoding.utf8.getter();
    v40 = String.data(using:allowLossyConversion:)();
    v42 = v41;

    (*(v4 + 8))(v7, v3);
    if (v42 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v40, v42, v39);
    outlined consume of Data?(v40, v42);
  }

  v45 = v2;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v15 = one-time initialization token for resolvableTextSegment;
  v16 = v14;
  if (v15 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v46 = static NSAttributedStringKey.resolvableTextSegment;
    v17 = [v16 length];
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:);
    *(v19 + 24) = v18;
    v53 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    v54 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v52 = &block_descriptor_1;
    v20 = _Block_copy(&aBlock);
    v21 = v16;

    [v21 enumerateAttribute:v46 inRange:0 options:v17 usingBlock:{0, v20}];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      break;
    }

    v48 = MEMORY[0x1E69E7CC0];
    v22 = [v21 &selRef_setTextGraphicsContextProviderClass_];

    v23 = swift_allocObject();
    *(v23 + 16) = &v48;
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in CodableAttributedString.encode(to:);
    *(v24 + 24) = v23;
    v53 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
    v54 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v52 = &block_descriptor_12_0;
    v25 = _Block_copy(&aBlock);

    [v21 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v25}];
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      goto LABEL_28;
    }

    v26 = v45;
    v43 = v23;
    v44 = v21;
    v27 = v48;
    v28 = *(v48 + 16);

    v46 = v28;
    if (!v28)
    {
LABEL_20:

      return;
    }

    v29 = 0;
    v16 = (v27 + 48);
    v30 = v47;
    while (v29 < *(v27 + 16))
    {
      v31 = *(v16 - 1);
      v32 = *v16;
      v33 = *(v16 - 2);

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      aBlock = v33;
      v50 = v31;
      v51 = v32;
      v34 = *(v30 + 8);
      v35 = *(v30 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      *&v35[8 * v37 + 32] = v34;
      v38 = v47;
      *(v47 + 24) = v35;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_25;
      }

      *(v38 + 8) = v34 + 1;
      CodableAttributedString.Range.encode(to:)(v38);

      if (!v26)
      {
        v30 = v38;
        ++v29;
        ProtobufEncoder.endLengthDelimited()();
        v16 += 3;
        if (v46 != v29)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

char *closure #1 in CodableAttributedString.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a5 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(v13 + 6) = a1;
  return result;
}

void CodableAttributedString.Range.encode(to:)(__int128 *a1)
{
  v250 = a1;
  v243 = type metadata accessor for String.Encoding();
  v2 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v237 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvableTextSegmentAttribute.Value?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v237 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 1);
    v248 = *(v1 + 2);
    if (v7)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v7);
    }

    v1 = v250;
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v8);
        v1 = v250;
      }

      v9 = *(v1 + 2);
      v10 = *(v1 + 24);
      v247 = (v1 + 24);
      v251 = *v1;
      *v252 = v9;
      *&v252[8] = v10;
      v244 = ProtobufEncoder.preferredBundleLanguage.getter();
      v245 = v11;
      v12 = v248;
      v13 = v248 + 64;
      v14 = 1 << *(v248 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v248 + 64);
      v17 = (v14 + 63) >> 6;
      v241 = (v2 + 8);

      v18 = 0;
      v246 = v6;
      while (1)
      {
        if (v16)
        {
          v21 = v18;
          goto LABEL_24;
        }

        if (v17 <= v18 + 1)
        {
          v22 = v18 + 1;
        }

        else
        {
          v22 = v17;
        }

        v23 = v22 - 1;
        do
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_330;
          }

          if (v21 >= v17)
          {
            v16 = 0;
            v18 = v23;
            memset(v252, 0, sizeof(v252));
            v251 = 0u;
            goto LABEL_25;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
        }

        while (!v16);
        v18 = v21;
LABEL_24:
        v24 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v25 = v24 | (v21 << 6);
        v26 = *(v12[6] + 8 * v25);
        outlined init with copy of Any(v12[7] + 32 * v25, &v259);
        *&v251 = v26;
        outlined init with take of Any(&v259, (&v251 + 8));
        v27 = v26;
LABEL_25:
        v261[0] = v251;
        v261[1] = *v252;
        v262 = *&v252[16];
        v28 = v251;
        if (!v251)
        {

          v226 = v245;
          if (!v245)
          {
            return;
          }

          v227 = *(v250 + 2);
          v251 = *v250;
          *v252 = v227;
          *&v252[8] = *(v250 + 24);

          v228 = ProtobufEncoder.preferredBundleLanguage.getter();
          if (!v229)
          {

            v230 = v244;
            goto LABEL_323;
          }

          v230 = v244;
          if (v244 == v228 && v226 == v229)
          {
            swift_bridgeObjectRelease_n();

            return;
          }

          v231 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v231)
          {
LABEL_326:

            return;
          }

LABEL_323:
          if (!v230 && v226 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_326;
          }

LABEL_330:
          v232 = v250;
          ProtobufEncoder.encodeVarint(_:)(0x7AuLL);
          v233 = v242;
          static String.Encoding.utf8.getter();
          v234 = String.data(using:allowLossyConversion:)();
          v236 = v235;

          (*v241)(v233, v243);
          if (v236 >> 60 == 15)
          {
            lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
            swift_allocError();
            swift_willThrow();
          }

          else
          {
            specialized Data._Representation.withUnsafeBytes<A>(_:)(v234, v236, v232);
            outlined consume of Data?(v234, v236);
          }

          return;
        }

        outlined init with take of Any((v261 + 8), &v259);
        LODWORD(v1) = GetAttributedStringKey(v28);
        type metadata accessor for _AttributedStringKey(0);
        switch(v1)
        {
          case 0:
          case 19:
          case 20:
            goto LABEL_13;
          case 1:
            __swift_project_boxed_opaque_existential_1(&v259, v260);
            v93 = _bridgeAnythingToObjectiveC<A>(_:)();
            v240 = specialized Color.Resolved.init(platformColor:)(v93);
            v239 = v94;
            if (v95)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v96 = *(v250 + 1);
            v97 = *(v250 + 2);
            if (v96 >= v97)
            {
              v203 = v96 + 1;
              v99 = v247;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_367;
              }

              if (v97 < v203)
              {
                v204 = ProtobufEncoder.growBufferSlow(to:)(v203);
                v1 = v250;
              }

              else
              {
                *(v250 + 1) = v203;
                v204 = (*v1 + v96);
              }

              *v204 = 34;
              v98 = *(v1 + 1);
            }

            else
            {
              *(*v250 + v96) = 34;
              v98 = v96 + 1;
              *(v1 + 1) = v96 + 1;
              v99 = v247;
            }

            v100 = *v99;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
            }

            v102 = *(v100 + 2);
            v101 = *(v100 + 3);
            v103 = v102 + 1;
            v1 = v250;
            if (v102 >= v101 >> 1)
            {
              v209 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v100);
              v103 = v102 + 1;
              v1 = v250;
              v100 = v209;
            }

            *(v100 + 2) = v103;
            *&v100[8 * v102 + 32] = v98;
            *v247 = v100;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_348;
            }

            *(v1 + 1) = v98 + 1;
            v104 = v240;
            v12 = v248;
            v6 = v246;
            if ((v240 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0xDuLL);
              v1 = v250;
              v105 = *(v250 + 1);
              v106 = v105 + 4;
              if (__OFADD__(v105, 4))
              {
                goto LABEL_355;
              }

              if (*(v250 + 2) < v106)
              {
                v107 = ProtobufEncoder.growBufferSlow(to:)(v106);
              }

              else
              {
                *(v250 + 1) = v106;
                v107 = (*v1 + v105);
              }

              *v107 = v104;
            }

            v108 = HIDWORD(v104);
            if ((v108 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x15uLL);
              v1 = v250;
              v109 = *(v250 + 1);
              v110 = v109 + 4;
              if (__OFADD__(v109, 4))
              {
                goto LABEL_356;
              }

              if (*(v250 + 2) < v110)
              {
                v111 = ProtobufEncoder.growBufferSlow(to:)(v110);
              }

              else
              {
                *(v250 + 1) = v110;
                v111 = (*v1 + v109);
              }

              *v111 = v108;
            }

            v112 = v239;
            if ((v239 & 0x7FFFFFFF) != 0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
              v1 = v250;
              v113 = *(v250 + 1);
              v114 = v113 + 4;
              if (__OFADD__(v113, 4))
              {
                goto LABEL_357;
              }

              if (*(v250 + 2) < v114)
              {
                v115 = ProtobufEncoder.growBufferSlow(to:)(v114);
              }

              else
              {
                *(v250 + 1) = v114;
                v115 = (*v1 + v113);
              }

              *v115 = v112;
            }

            v116 = HIDWORD(v112);
            if (*&v116 != 1.0)
            {
              ProtobufEncoder.encodeVarint(_:)(0x25uLL);
              v1 = v250;
              v117 = *(v250 + 1);
              v118 = v117 + 4;
              if (__OFADD__(v117, 4))
              {
                goto LABEL_358;
              }

              if (*(v250 + 2) < v118)
              {
                v119 = ProtobufEncoder.growBufferSlow(to:)(v118);
              }

              else
              {
                *(v250 + 1) = v118;
                v119 = (*v1 + v117);
              }

              *v119 = v116;
            }

            ProtobufEncoder.endLengthDelimited()();

            goto LABEL_255;
          case 2:
            outlined init with copy of Any(&v259, &v251);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle, 0x1E69DB7D0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v74 = v257;
            v75 = v250;
            ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
            v76 = *(v75 + 1);
            v1 = *(v75 + 3);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v240 = v74;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v79 = *(v1 + 2);
            v78 = *(v1 + 3);
            v80 = v250;
            if (v79 >= v78 >> 1)
            {
              v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v1);
              v80 = v250;
              v1 = v202;
            }

            *(v1 + 2) = v79 + 1;
            *&v1[8 * v79 + 32] = v76;
            *v247 = v1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_350;
            }

            *(v80 + 1) = v76 + 1;
            v81 = v240;
            v82 = v249;
            CodableNSParagraphStyle.encode(to:)(v80, v240);
            goto LABEL_167;
          case 3:
            type metadata accessor for CTFontRef(0);
            __swift_project_boxed_opaque_existential_1(&v259, v260);
            v130 = _bridgeAnythingToObjectiveC<A>(_:)();
            v131 = static CTFontRef.make(platformFont:)(v130);
            swift_unknownObjectRelease();
            if (!v131)
            {
              goto LABEL_264;
            }

            v1 = v250;
            v132 = *(v250 + 1);
            v133 = *(v250 + 2);
            if (v132 >= v133)
            {
              v198 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                goto LABEL_366;
              }

              if (v133 < v198)
              {
                v199 = ProtobufEncoder.growBufferSlow(to:)(v198);
                v1 = v250;
              }

              else
              {
                *(v250 + 1) = v198;
                v199 = (*v1 + v132);
              }

              *v199 = 26;
              v134 = *(v1 + 1);
            }

            else
            {
              *(*v250 + v132) = 26;
              v134 = v132 + 1;
              *(v1 + 1) = v132 + 1;
            }

            v1 = *v247;
            v135 = swift_isUniquelyReferenced_nonNull_native();
            v240 = v131;
            if ((v135 & 1) == 0)
            {
              v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
              v1 = v135;
            }

            v137 = *(v1 + 2);
            v136 = *(v1 + 3);
            v138 = v250;
            if (v137 >= v136 >> 1)
            {
              v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1, v1);
              v138 = v250;
              v1 = v135;
            }

            *(v1 + 2) = v137 + 1;
            *&v1[8 * v137 + 32] = v134;
            *v247 = v1;
            if (__OFADD__(v134, 1))
            {
              goto LABEL_343;
            }

            v239 = &v237;
            *(v138 + 1) = v134 + 1;
            *&v251 = v240;
            v139 = *(v138 + 4);
            MEMORY[0x1EEE9AC00](v135);
            *(&v237 - 2) = v139;
            *(&v237 - 1) = &v251;
            v141 = v140;

            v142 = v249;
            specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v141, partial apply for specialized closure #1 in ProtobufEncoder.encodeAttachedMessage<A, B>(_:for:));
            if (v142)
            {

              goto LABEL_339;
            }

            ProtobufEncoder.endLengthDelimited()();

            __swift_destroy_boxed_opaque_existential_1(&v259);
            v249 = 0;
            goto LABEL_170;
          case 4:
            outlined init with copy of Any(&v259, &v251);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment, 0x1E69DB7F0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v147 = v257;
            v1 = v250;
            v148 = *(v250 + 1);
            v149 = *(v250 + 2);
            if (v148 >= v149)
            {
              v207 = v148 + 1;
              if (__OFADD__(v148, 1))
              {
                goto LABEL_368;
              }

              if (v149 < v207)
              {
                v208 = ProtobufEncoder.growBufferSlow(to:)(v207);
                v1 = v250;
              }

              else
              {
                *(v250 + 1) = v207;
                v208 = (*v1 + v148);
              }

              *v208 = 50;
              v150 = *(v1 + 1);
            }

            else
            {
              *(*v250 + v148) = 50;
              v150 = v148 + 1;
              *(v1 + 1) = v148 + 1;
            }

            v1 = *v247;
            v151 = swift_isUniquelyReferenced_nonNull_native();
            v240 = v147;
            if ((v151 & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v153 = *(v1 + 2);
            v152 = *(v1 + 3);
            v154 = v250;
            if (v153 >= v152 >> 1)
            {
              v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v1);
              v154 = v250;
              v1 = v210;
            }

            *(v1 + 2) = v153 + 1;
            *&v1[8 * v153 + 32] = v150;
            *v247 = v1;
            if (__OFADD__(v150, 1))
            {
              goto LABEL_349;
            }

            *(v154 + 1) = v150 + 1;
            v81 = v240;
            v82 = v249;
            CodableTextAttachment.encode(to:)(v154, v240);
LABEL_167:
            if (v82)
            {

              goto LABEL_338;
            }

            v249 = 0;
            ProtobufEncoder.endLengthDelimited()();

            goto LABEL_169;
          case 5:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v88 = *&v257;
            if (*&v257 == 0.0)
            {
              goto LABEL_13;
            }

            v120 = fabs(*&v257);
            if (v120 >= 65536.0)
            {
              v121 = 57;
            }

            else
            {
              v121 = 61;
            }

            v1 = v250;
            ProtobufEncoder.encodeVarint(_:)(v121);
            if (v120 < 65536.0)
            {
              v91 = *(v1 + 1);
              v92 = v91 + 4;
              if (__OFADD__(v91, 4))
              {
                goto LABEL_360;
              }

              goto LABEL_184;
            }

            v177 = *(v1 + 1);
            v126 = v177 + 8;
            if (__OFADD__(v177, 8))
            {
              goto LABEL_361;
            }

            goto LABEL_244;
          case 6:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v88 = *&v257;
            if (*&v257 == 0.0)
            {
              goto LABEL_13;
            }

            v157 = fabs(*&v257);
            if (v157 >= 65536.0)
            {
              v158 = 65;
            }

            else
            {
              v158 = 69;
            }

            v1 = v250;
            ProtobufEncoder.encodeVarint(_:)(v158);
            if (v157 >= 65536.0)
            {
              v177 = *(v1 + 1);
              v126 = v177 + 8;
              if (__OFADD__(v177, 8))
              {
                goto LABEL_363;
              }

LABEL_244:
              if (*(v1 + 2) < v126)
              {
LABEL_270:
                v127 = ProtobufEncoder.growBufferSlow(to:)(v126);
LABEL_131:
                *v127 = v88;
              }

              else
              {
                *(v1 + 1) = v126;
                *(*v1 + v177) = v88;
              }
            }

            else
            {
              v91 = *(v1 + 1);
              v92 = v91 + 4;
              if (__OFADD__(v91, 4))
              {
                goto LABEL_362;
              }

LABEL_184:
              v159 = v88;
              if (*(v1 + 2) < v92)
              {
                *ProtobufEncoder.growBufferSlow(to:)(v92) = v159;
              }

              else
              {
                *(v1 + 1) = v92;
                *(*v1 + v91) = v159;
              }
            }

            goto LABEL_13;
          case 7:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v88 = *&v257;
            if (*&v257 == 0.0)
            {
              goto LABEL_13;
            }

            v89 = fabs(*&v257);
            if (v89 >= 65536.0)
            {
              v90 = 73;
            }

            else
            {
              v90 = 77;
            }

            v1 = v250;
            ProtobufEncoder.encodeVarint(_:)(v90);
            if (v89 < 65536.0)
            {
              v91 = *(v1 + 1);
              v92 = v91 + 4;
              if (__OFADD__(v91, 4))
              {
                goto LABEL_364;
              }

              goto LABEL_184;
            }

            v177 = *(v1 + 1);
            v126 = v177 + 8;
            if (__OFADD__(v177, 8))
            {
              goto LABEL_359;
            }

            goto LABEL_244;
          case 8:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v83 = v257;
            if (*&v257 == 0.0)
            {
              goto LABEL_211;
            }

            v1 = v250;
            v84 = *(v250 + 1);
            v155 = *(v250 + 2);
            if (v84 >= v155)
            {
              v217 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_372;
              }

              if (v155 < v217)
              {
                v215 = ProtobufEncoder.growBufferSlow(to:)(v217);
              }

              else
              {
                v218 = v250;
                *(v250 + 1) = v217;
                v215 = (*v218 + v84);
              }

              v216 = 80;
LABEL_303:
              *v215 = v216;
              v12 = v248;
              v6 = v246;
            }

            else
            {
              v86 = *v250;
              v87 = 80;
LABEL_175:
              *(v86 + v84) = v87;
              *(v1 + 1) = v84 + 1;
            }

            v156 = (2 * v83) ^ (v83 >> 63);
LABEL_189:
            ProtobufEncoder.encodeVarint(_:)(v156);

            goto LABEL_255;
          case 9:
            __swift_project_boxed_opaque_existential_1(&v259, v260);
            v66 = _bridgeAnythingToObjectiveC<A>(_:)();
            v67 = specialized Color.Resolved.init(platformColor:)(v66);
            if (v69)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v70 = *(v250 + 1);
            v71 = *(v250 + 2);
            if (v70 < v71)
            {
              v72 = *v250;
              v73 = 90;
              goto LABEL_155;
            }

            v200 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_370;
            }

            if (v71 < v200)
            {
              v220 = v67;
              v221 = v68;
              v222 = ProtobufEncoder.growBufferSlow(to:)(v70 + 1);
              v68 = v221;
              v12 = v248;
              v201 = v222;
              v67 = v220;
            }

            else
            {
              *(v250 + 1) = v200;
              v201 = (*v1 + v70);
            }

            *v201 = 90;
            goto LABEL_156;
          case 10:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v83 = v257;
            if (*&v257 == 0.0)
            {
              goto LABEL_211;
            }

            v1 = v250;
            v84 = *(v250 + 1);
            v85 = *(v250 + 2);
            if (v84 < v85)
            {
              v86 = *v250;
              v87 = 96;
              goto LABEL_175;
            }

            v213 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              goto LABEL_371;
            }

            if (v85 < v213)
            {
              v215 = ProtobufEncoder.growBufferSlow(to:)(v213);
            }

            else
            {
              v214 = v250;
              *(v250 + 1) = v213;
              v215 = (*v214 + v84);
            }

            v216 = 96;
            goto LABEL_303;
          case 11:
            __swift_project_boxed_opaque_existential_1(&v259, v260);
            v143 = _bridgeAnythingToObjectiveC<A>(_:)();
            v67 = specialized Color.Resolved.init(platformColor:)(v143);
            if (v144)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v70 = *(v250 + 1);
            v145 = *(v250 + 2);
            if (v70 >= v145)
            {
              v205 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_369;
              }

              if (v145 < v205)
              {
                v223 = v67;
                v224 = v68;
                v225 = ProtobufEncoder.growBufferSlow(to:)(v70 + 1);
                v68 = v224;
                v12 = v248;
                v206 = v225;
                v67 = v223;
              }

              else
              {
                *(v250 + 1) = v205;
                v206 = (*v1 + v70);
              }

              *v206 = 106;
            }

            else
            {
              v72 = *v250;
              v73 = 106;
LABEL_155:
              *(v72 + v70) = v73;
              *(v1 + 1) = v70 + 1;
            }

LABEL_156:
            v146 = v249;
            specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v67, *(&v67 + 1), *&v68, *(&v68 + 1));
            v249 = v146;
            if (!v146)
            {
              goto LABEL_13;
            }

            goto LABEL_334;
          case 12:
            outlined init with copy of Any(&v259, &v251);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v52 = v257;
            CoreShadowGetOffset(v52);
            v54 = v53;
            v56 = v55;
            CoreShadowGetBlurRadius(v52);
            v58 = v57;
            v59 = CoreShadowGetPlatformColor(v52);
            v60 = v59;
            if (v54 < 0.0 || v56 < 0.0)
            {
              v61 = v59;
              v60 = v52;
LABEL_218:

LABEL_219:
              v28 = v52;
              v52 = v60;
LABEL_220:

              goto LABEL_265;
            }

            if (v58 < 0.0)
            {
              v61 = v52;
              goto LABEL_218;
            }

            if (!v59)
            {
              v61 = v28;
              v60 = v52;
              goto LABEL_219;
            }

            v172 = v59;
            v173 = specialized Color.Resolved.init(platformColor:)(v172);
            v240 = v174;
            v176 = v175;

            if (v176)
            {
              v6 = v246;
              goto LABEL_220;
            }

            v238 = HIDWORD(v173);
            v189 = v240;
            v239 = HIDWORD(v240);
            v190 = v250;
            ProtobufEncoder.encodeVarint(_:)(0x72uLL);
            *&v251 = __PAIR64__(v238, v173);
            *(&v251 + 1) = __PAIR64__(v239, v189);
            *v252 = 2143289344;
            *&v252[8] = v58;
            *&v252[16] = v54;
            v253 = v56;
            v254 = 1056964608;
            v255 = 0;
            v240 = *(v190 + 1);
            v1 = *(v190 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v192 = *(v1 + 2);
            v191 = *(v1 + 3);
            v193 = v250;
            if (v192 >= v191 >> 1)
            {
              v219 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v191 > 1), v192 + 1, 1, v1);
              v193 = v250;
              v1 = v219;
            }

            *(v1 + 2) = v192 + 1;
            v194 = v240;
            *&v1[8 * v192 + 32] = v240;
            *v247 = v1;
            if (__OFADD__(v194, 1))
            {
              goto LABEL_365;
            }

            *(v193 + 1) = v194 + 1;
            v195 = v249;
            ResolvedShadowStyle.encode(to:)(v193);
            v6 = v246;
            v249 = v195;
            if (v195)
            {

LABEL_334:

              __swift_destroy_boxed_opaque_existential_1(&v259);
              return;
            }

            ProtobufEncoder.endLengthDelimited()();

LABEL_264:
LABEL_265:
            __swift_destroy_boxed_opaque_existential_1(&v259);
            v12 = v248;
            continue;
          case 13:

            outlined init with take of Any(&v259, &v251);
            if (swift_dynamicCast())
            {

              v244 = v257;
              v245 = v258;
            }

            continue;
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 21:
          case 33:
            outlined init with copy of Any(&v259, &v257);
            type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
            if ((swift_dynamicCast() & 1) == 0)
            {
              memset(v252, 0, sizeof(v252));
              v251 = 0u;
            }

            if (one-time initialization token for resolvableTextSegment == -1)
            {
              if (!v12[2])
              {
                goto LABEL_267;
              }
            }

            else
            {
              swift_once();
              if (!v12[2])
              {
                goto LABEL_267;
              }
            }

            v29 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.resolvableTextSegment);
            if (v30)
            {
              outlined init with copy of Any(v12[7] + 32 * v29, v256);
              v31 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
              v32 = swift_dynamicCast();
              (*(*(v31 - 8) + 56))(v6, v32 ^ 1u, 1, v31);
              goto LABEL_268;
            }

LABEL_267:
            v196 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
            (*(*(v196 - 8) + 56))(v6, 1, 1, v196);
LABEL_268:
            v197 = v249;
            specialized static CodableAttributedString.Range.encodeResolvable(_:textSegment:to:)(&v251, v6, v250);
            v249 = v197;
            if (v197)
            {

              __swift_destroy_boxed_opaque_existential_1(&v259);
              outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
              outlined destroy of _DisplayList_AnyEffectAnimator?(&v251, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
              return;
            }

            __swift_destroy_boxed_opaque_existential_1(&v259);
            outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for ResolvableTextSegmentAttribute.Value?);
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v251, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation, &protocol descriptor for ResolvableStringAttributeRepresentation);
            continue;
          case 22:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v161 = *(v250 + 1);
            v162 = v161 + 2;
            if (__OFADD__(v161, 2))
            {
              goto LABEL_347;
            }

            v64 = v257;
            if (*(v250 + 2) < v162)
            {
              v212 = v257;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v161 + 2);
              v64 = v212;
            }

            else
            {
              *(v250 + 1) = v162;
              v19 = (*v1 + v161);
            }

            v20 = 424;
            goto LABEL_12;
          case 23:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v128 = *(v250 + 1);
            v129 = v128 + 2;
            if (__OFADD__(v128, 2))
            {
              goto LABEL_344;
            }

            v64 = v257;
            if (*(v250 + 2) < v129)
            {
              v211 = v257;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v128 + 2);
              v64 = v211;
            }

            else
            {
              *(v250 + 1) = v129;
              v19 = (*v1 + v128);
            }

            v20 = 432;
            goto LABEL_12;
          case 24:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v122 = *(v250 + 1);
            v123 = v122 + 2;
            if (__OFADD__(v122, 2))
            {
              goto LABEL_351;
            }

            v88 = *&v257;
            if (*(v250 + 2) < v123)
            {
              v124 = ProtobufEncoder.growBufferSlow(to:)(v123);
              v1 = v250;
            }

            else
            {
              *(v250 + 1) = v123;
              v124 = (*v1 + v122);
            }

            *v124 = 441;
            v125 = *(v1 + 1);
            v126 = v125 + 8;
            if (__OFADD__(v125, 8))
            {
              goto LABEL_353;
            }

            if (*(v1 + 2) < v126)
            {
              goto LABEL_270;
            }

            *(v1 + 1) = v126;
            v127 = (*v1 + v125);
            goto LABEL_131;
          case 25:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v257 == 0.0 && v258 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 202;
            goto LABEL_247;
          case 26:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v257 == 0.0 && v258 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 210;
            goto LABEL_247;
          case 27:
            outlined init with copy of Any(&v259, &v251);
            if (swift_dynamicCast())
            {
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_216;
              }

              ProtobufEncoder.encodeVarint(_:)(0xC2uLL);
              v166 = v242;
              static String.Encoding.utf8.getter();
              v167 = String.data(using:allowLossyConversion:)();
              v169 = v168;

              (*v241)(v166, v243);
              if (v169 >> 60 == 15)
              {
                goto LABEL_333;
              }

              v170 = v249;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v167, v169, v250);
              v249 = v170;

              v171 = v167;
              goto LABEL_253;
            }

            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if ((*&v257 != 0.0 || v258 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v33 = 194;
              goto LABEL_247;
            }

            goto LABEL_216;
          case 28:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_201;
            }

            if (v257 > 3u)
            {
              v163 = "extualContextWordProcessing";
              if (v257 != 6)
              {
                v163 = "LogForEachSlowPath";
              }

              v164 = "extualContextSourceCode";
              if (v257 != 4)
              {
                v164 = "extualContextSpreadsheet";
              }

              if (v257 <= 5u)
              {
                v165 = v164;
              }

              else
              {
                v165 = v163;
              }

              goto LABEL_250;
            }

            if (v257 > 1u)
            {
              if (v257 == 2)
              {
                v165 = "extualContextMessaging";
              }

              else
              {
                v165 = "extualContextNarrative";
              }

              goto LABEL_250;
            }

            if (v257)
            {
              v165 = "extualContextFileSystem";
LABEL_250:
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_216;
              }

              v240 = v165;
              v184 = v250;
              ProtobufEncoder.encodeVarint(_:)(0xE2uLL);
              v185 = v242;
              static String.Encoding.utf8.getter();
              v186 = String.data(using:allowLossyConversion:)();
              v169 = v187;

              (*v241)(v185, v243);
              if (v169 >> 60 == 15)
              {
LABEL_333:

                lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
                swift_allocError();
                swift_willThrow();

                goto LABEL_339;
              }

              v188 = v249;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v186, v169, v184);
              v249 = v188;

              v171 = v186;
LABEL_253:
              v183 = v169;
              goto LABEL_254;
            }

LABEL_201:
            outlined init with copy of Any(&v259, &v251);
            if (swift_dynamicCast())
            {
              if (*&v257 == 0.0 && v258 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_216:

                v12 = v248;
                goto LABEL_255;
              }

              v33 = 226;
LABEL_247:
              ProtobufEncoder.encodeVarint(_:)(v33);
              v178 = v242;
              static String.Encoding.utf8.getter();
              v179 = String.data(using:allowLossyConversion:)();
              v181 = v180;

              (*v241)(v178, v243);
              if (v181 >> 60 == 15)
              {
                goto LABEL_333;
              }

              v182 = v249;
              specialized Data._Representation.withUnsafeBytes<A>(_:)(v179, v181, v250);
              v249 = v182;

              v171 = v179;
              v183 = v181;
LABEL_254:
              outlined consume of Data?(v171, v183);
              v12 = v248;
              v6 = v246;
LABEL_255:
              __swift_destroy_boxed_opaque_existential_1(&v259);
            }

            else
            {
LABEL_13:

              __swift_destroy_boxed_opaque_existential_1(&v259);
            }

            break;
          case 29:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v160 = v257;
            if (*&v257 != 0.0)
            {
              ProtobufEncoder.encodeVarint(_:)(0xD8uLL);
              v156 = v160;
              goto LABEL_189;
            }

LABEL_211:

            goto LABEL_255;
          case 30:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v257 == 0.0 && v258 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 234;
            goto LABEL_247;
          case 31:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            if (*&v257 == 0.0 && v258 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_216;
            }

            v33 = 242;
            goto LABEL_247;
          case 32:
            outlined init with copy of Any(&v259, &v251);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v62 = *(v250 + 1);
            v63 = v62 + 2;
            if (__OFADD__(v62, 2))
            {
              goto LABEL_345;
            }

            v64 = v257;
            if (*(v250 + 2) >= v63)
            {
              *(v250 + 1) = v63;
              v19 = (*v1 + v62);
            }

            else
            {
              v65 = v257;
              v19 = ProtobufEncoder.growBufferSlow(to:)(v62 + 2);
              v64 = v65;
            }

            v20 = 640;
LABEL_12:
            *v19 = v20;
            ProtobufEncoder.encodeVarint(_:)(v64);
            goto LABEL_13;
          case 34:
            outlined init with copy of Any(&v259, &v251);
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph, 0x1E69DB780);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_13;
            }

            v1 = v250;
            v34 = *(v250 + 1);
            v35 = v34 + 2;
            if (__OFADD__(v34, 2))
            {
              goto LABEL_346;
            }

            v240 = v257;
            if (*(v250 + 2) < v35)
            {
              v36 = ProtobufEncoder.growBufferSlow(to:)(v35);
              v1 = v250;
            }

            else
            {
              *(v250 + 1) = v35;
              v36 = (*v1 + v34);
            }

            v37 = v247;
            *v36 = 674;
            v38 = *(v1 + 1);
            LODWORD(v1) = v37;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = *(*(v250 + 3) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v39);
            v40 = v250;
            v41 = *(v250 + 3);
            *(v41 + 16) = v39 + 1;
            *(v41 + 8 * v39 + 32) = v38;
            *(v40 + 3) = v41;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_352;
            }

            *(v40 + 1) = v38 + 1;
            v1 = [v240 imageContent];
            v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v239 = v43;

            ProtobufEncoder.encodeVarint(_:)(0xAuLL);
            v44 = *(v250 + 1);
            LODWORD(v1) = v37;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v45 = *(*(v250 + 3) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v45);
            v46 = v250;
            v47 = *(v250 + 3);
            *(v47 + 16) = v45 + 1;
            *(v47 + 8 * v45 + 32) = v44;
            *(v46 + 3) = v47;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_354;
            }

            *(v46 + 1) = v44 + 1;
            v48 = v42;
            v49 = v42;
            v50 = v239;
            v51 = v249;
            Data.encode(to:)(v46, v49, v239);
            if (v51)
            {
              outlined consume of Data._Representation(v48, v50);

LABEL_338:

LABEL_339:
              __swift_destroy_boxed_opaque_existential_1(&v259);
              return;
            }

            v249 = 0;
            ProtobufEncoder.endLengthDelimited()();
            outlined consume of Data._Representation(v48, v50);
            ProtobufEncoder.endLengthDelimited()();

LABEL_169:
            __swift_destroy_boxed_opaque_existential_1(&v259);
LABEL_170:
            v12 = v248;
            v6 = v246;
            continue;
          default:
            goto LABEL_373;
        }
      }
    }
  }

  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  LODWORD(v251) = v1;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}