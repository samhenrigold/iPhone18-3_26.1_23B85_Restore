double protocol witness for Gesture.body.getter in conformance TransformBasedMagnifyGesture@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 4);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *a1 = 1;
  v5 = swift_allocObject();
  result = *(v1 + 1);
  *(v5 + 16) = v3;
  *(v5 + 24) = result;
  *(v5 + 32) = v4;
  *(a1 + 56) = partial apply for closure #1 in TransformBasedMagnifyGesture.body.getter;
  *(a1 + 64) = v5;
  return result;
}

void protocol witness for GestureStateProtocol.init() in conformance TouchBasedMagnifyGesture.StateType(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0x3FE8000000000000;
}

uint64_t TouchBasedMagnifyGesture.body.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v18 = 0u;
  v8 = HIDWORD(a1);
  v19 = 0u;
  v17 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 3842;
  outlined init with copy of DragGesture(&v17, v13);
  outlined init with copy of DragGesture(&v17, v15);
  v9 = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v13[2];
  *(a3 + 48) = v14;
  v10 = v15[1];
  *(a3 + 56) = v15[0];
  *(a3 + 72) = v10;
  *(a3 + 88) = v15[2];
  *(a3 + 104) = v16;
  type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>(0);
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  MapGesture.init(_:)();
  outlined destroy of DragGesture(&v17);
  *(a3 + 112) = v12;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = v5;
  *(result + 28) = v8;
  *(result + 32) = a2;
  *(a3 + 128) = partial apply for closure #2 in TouchBasedMagnifyGesture.body.getter;
  *(a3 + 136) = result;
  *(a3 + 144) = 1;
  *(a3 + 152) = 1;
  return result;
}

uint64_t closure #1 in TouchBasedMagnifyGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v8 = *(v7 + 48);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, a2, type metadata accessor for DragGesture.Value);
  type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>(0);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1 + *(v9 + 44), v6, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>);
  return _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v6, a2 + v8, type metadata accessor for DragGesture.Value);
}

uint64_t TouchBasedMagnifyGesture.update(state:childPhase:)(_BYTE *a1, uint64_t a2, double a3)
{
  v60 = a2;
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v51 - v6;
  v7 = type metadata accessor for Date();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v59 = v12;
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v51 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v51 - v33;
  v58 = a1;
  if (*a1)
  {
    outlined init with copy of MagnifyGesture.Value?(v60, v31, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      outlined init with copy of MagnifyGesture.Value?(v31, v25, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
      v28 = v25;
      v36 = v59;
      v37 = v54;
      v34 = v55;
LABEL_4:
      _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v28, v14, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v31, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
      _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v14, v34, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      (*(v37 + 56))(v34, 0, 1, v36);
LABEL_12:
      if ((*(v37 + 48))(v34, 1, v36) == 1)
      {
        v43 = &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?;
        v44 = MEMORY[0x1E69E6720];
        return outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v34, v43, type metadata accessor for (DragGesture.Value, DragGesture.Value), v44);
      }

      v45 = v34;
      v46 = v52;
      _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v45, v52, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v46, v19, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      v47 = *(v36 + 48);
      v48 = v53;
      v49 = static TouchBasedMagnifyGesture.scale(_:)(v53, v19, &v19[v47]);
      outlined destroy of DragGesture.Value(&v19[v47], type metadata accessor for DragGesture.Value);
      outlined destroy of DragGesture.Value(v19, type metadata accessor for DragGesture.Value);
      Date.timeIntervalSinceReferenceDate.getter();
      specialized VelocitySampler.addSample(_:time:)(v49, v50);
      (*(v56 + 8))(v48, v57);
      return outlined destroy of DragGesture.Value(v46, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    }

    v36 = v59;
    v37 = v54;
    v34 = v55;
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of MagnifyGesture.Value?(v31, v28, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
      if ((*(v37 + 48))(v28, 1, v36) != 1)
      {
        goto LABEL_4;
      }

      outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v28, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E69E6720]);
    }

    (*(v37 + 56))(v34, 1, 1, v36);
    outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v31, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
    goto LABEL_12;
  }

  outlined init with copy of MagnifyGesture.Value?(v60, &v51 - v33, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>;
    v44 = MEMORY[0x1E697DE58];
    return outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v34, v43, type metadata accessor for (DragGesture.Value, DragGesture.Value), v44);
  }

  _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v34, v22, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v22, v19, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v38 = *(v59 + 48);
  v39 = static TouchBasedMagnifyGesture.scale(_:)(v11, v19, &v19[v38]);
  outlined destroy of DragGesture.Value(&v19[v38], type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(v19, type metadata accessor for DragGesture.Value);
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = v58;
  specialized VelocitySampler.addSample(_:time:)(v39, v41);
  (*(v56 + 8))(v11, v57);
  result = outlined destroy of DragGesture.Value(v22, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  if (fabs(v39 + -1.0) > a3)
  {
    *v40 = 1;
  }

  return result;
}

uint64_t TouchBasedMagnifyGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>)
{
  v40 = a4;
  v39 = a3;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697DE58];
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = *(a1 + 80);
  v41[4] = *(a1 + 64);
  v41[5] = v21;
  v42 = *(a1 + 96);
  v22 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v22;
  v23 = *(a1 + 48);
  v41[2] = *(a1 + 32);
  v41[3] = v23;
  outlined init with copy of MagnifyGesture.Value?(a2, &v35 - v19, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v11);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v20, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v11);
  if (a1 == 3)
  {
    goto LABEL_2;
  }

  if ((v41[0] & 1) == 0)
  {
    outlined init with copy of MagnifyGesture.Value?(a2, v17, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v29 = MEMORY[0x1E697DE58];
        outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v17, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
        v30 = type metadata accessor for MagnifyGesture.Value(0);
        (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
        v31 = v29;
LABEL_17:
        type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, v31);
        return swift_storeEnumTagMultiPayload();
      }

      outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v17, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
    }

LABEL_2:
    type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697DE58]);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with copy of MagnifyGesture.Value?(a2, v14, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v28 = v38;
      _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v14, v38, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      closure #1 in TouchBasedMagnifyGesture.phase(state:childPhase:)(v28, v39, v40, v41, a5);
      outlined destroy of DragGesture.Value(v28, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697DE58]);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_2;
  }

  if (v25)
  {
    v32 = v38;
    _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v14, v38, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    closure #1 in TouchBasedMagnifyGesture.phase(state:childPhase:)(v32, v39, v40, v41, a5);
    outlined destroy of DragGesture.Value(v32, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697DE58]);
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v36 + 48))(v14, 1, v37) != 1)
  {
    v33 = v38;
    _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(v14, v38, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    closure #1 in TouchBasedMagnifyGesture.phase(state:childPhase:)(v33, v39, v40, v41, a5);
    outlined destroy of DragGesture.Value(v33, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v34 = type metadata accessor for MagnifyGesture.Value(0);
    (*(*(v34 - 8) + 56))(a5, 0, 1, v34);
    v31 = MEMORY[0x1E697DE58];
    goto LABEL_17;
  }

  v26 = type metadata accessor for MagnifyGesture.Value(0);
  (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697DE58]);
  swift_storeEnumTagMultiPayload();
  return outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(v14, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E69E6720]);
}

double static TouchBasedMagnifyGesture.scale(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v43 = type metadata accessor for Date();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a2, &v41 - v22, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a3, &v23[*(v10 + 56)], type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v20, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v24 = *(v10 + 56);
  type metadata accessor for DragGesture.Value(0);
  outlined destroy of DragGesture.Value(v20, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v17, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  outlined destroy of DragGesture.Value(&v17[*(v10 + 56)], type metadata accessor for DragGesture.Value);
  distance(_:_:)();
  v26 = v25;
  outlined destroy of DragGesture.Value(v17, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(&v20[v24], type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v20, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v27 = *(v10 + 56);
  outlined destroy of DragGesture.Value(v20, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v17, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  outlined destroy of DragGesture.Value(&v17[*(v10 + 56)], type metadata accessor for DragGesture.Value);
  distance(_:_:)();
  v29 = v28;
  outlined destroy of DragGesture.Value(v17, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(&v20[v27], type metadata accessor for DragGesture.Value);
  v41 = v14;
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v14, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v30 = *(v46 + 16);
  v31 = v43;
  v30(v8, v14, v43);
  outlined destroy of DragGesture.Value(v14, type metadata accessor for DragGesture.Value);
  v32 = v42;
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v23, v42, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v33 = *(v10 + 56);
  v34 = v44;
  v30(v44, (v32 + v33), v31);
  outlined destroy of DragGesture.Value(v32 + v33, type metadata accessor for DragGesture.Value);
  lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
  outlined destroy of DragGesture.Value(v23, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v36 = v46;
  if (v35)
  {
    v37 = v8;
  }

  else
  {
    v37 = v34;
  }

  if (v35)
  {
    v38 = v34;
  }

  else
  {
    v38 = v8;
  }

  (*(v46 + 8))(v37, v31);
  (*(v36 + 32))(v45, v38, v31);
  v39 = *(v10 + 56);
  outlined destroy of DragGesture.Value(v32, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(&v41[v39], type metadata accessor for DragGesture.Value);
  return v26 / v29;
}

int *closure #1 in TouchBasedMagnifyGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a4;
  v53 = a5;
  v51 = a3;
  v50 = a2;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v49 = type metadata accessor for Date();
  v13 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, v12, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v18 = *(v7 + 56);
  v19 = static TouchBasedMagnifyGesture.scale(_:)(v17, v12, &v12[v18]);
  outlined destroy of DragGesture.Value(&v12[v18], type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(v12, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, v12, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v20 = *(v7 + 56);
  v21 = type metadata accessor for DragGesture.Value(0);
  v22 = *&v12[*(v21 + 24)];
  outlined destroy of DragGesture.Value(v12, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, v9, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v23 = &v9[*(v7 + 56)];
  v24 = *(v23 + *(v21 + 24));
  outlined destroy of DragGesture.Value(v23, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(v9, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(&v12[v20], type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, v12, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v25 = *(v7 + 56);
  v26 = *&v12[*(v21 + 24) + 8];
  outlined destroy of DragGesture.Value(v12, type metadata accessor for DragGesture.Value);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, v9, type metadata accessor for (DragGesture.Value, DragGesture.Value));
  v27 = &v9[*(v7 + 56)];
  v28 = *(v21 + 24);
  v29 = v49;
  v30 = *(v27 + v28 + 8);
  outlined destroy of DragGesture.Value(v27, type metadata accessor for DragGesture.Value);
  outlined destroy of DragGesture.Value(v9, type metadata accessor for DragGesture.Value);
  v31 = v48;
  outlined destroy of DragGesture.Value(&v12[v25], type metadata accessor for DragGesture.Value);
  v32 = TransformGestureAnchorHelper.startPoints(_:)(v50, v51, (v22 + v24) * 0.5, (v26 + v30) * 0.5);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = *(v13 + 32);
  v39(v31, v17, v29);
  v40 = 0.0;
  if ((*(v52 + 24) & 1) == 0 && (*(v52 + 48) & 1) == 0)
  {
    v41 = *(v52 + 32);
    v42 = *(v52 + 40);
    v40 = (v41 - *(v52 + 8)) * (1.0 / (v42 - *(v52 + 16)));
    if ((*(v52 + 72) & 1) == 0)
    {
      v43 = (*(v52 + 56) - v41) * (1.0 / (*(v52 + 64) - v42));
      v40 = v43 + *(v52 + 96) * (v40 - v43);
    }
  }

  v44 = v53;
  v39(v53, v31, v29);
  result = type metadata accessor for MagnifyGesture.Value(0);
  *&v44[result[5]] = v19;
  *&v44[result[6]] = v40;
  v46 = &v44[result[7]];
  *v46 = v32;
  *(v46 + 1) = v34;
  v47 = &v44[result[8]];
  *v47 = v36;
  *(v47 + 1) = v38;
  return result;
}

BOOL specialized static MagnifyGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MagnifyGesture.Value(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = v4;
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  v11 = v7 == *v9;
  return v8 == v10 && v11;
}

void type metadata accessor for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>>)
  {
    type metadata accessor for CategoryGesture<MagnifyGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697E628]);
    type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>(255);
    lazy protocol witness table accessor for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>, MEMORY[0x1E697DDD8]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>>);
    }
  }
}

void type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MEMORY[0x1E697F818]);
    type metadata accessor for MagnifyGesture.Value(255);
    lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture> and conformance SimultaneousGesture<A, B>();
    v1 = type metadata accessor for _MapGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MagnifyGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedMagnifyGesture and conformance TransformBasedMagnifyGesture()
{
  result = lazy protocol witness table cache variable for type TransformBasedMagnifyGesture and conformance TransformBasedMagnifyGesture;
  if (!lazy protocol witness table cache variable for type TransformBasedMagnifyGesture and conformance TransformBasedMagnifyGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformBasedMagnifyGesture, &type metadata for TransformBasedMagnifyGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedMagnifyGesture and conformance TransformBasedMagnifyGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TouchBasedMagnifyGesture and conformance TouchBasedMagnifyGesture()
{
  result = lazy protocol witness table cache variable for type TouchBasedMagnifyGesture and conformance TouchBasedMagnifyGesture;
  if (!lazy protocol witness table cache variable for type TouchBasedMagnifyGesture and conformance TouchBasedMagnifyGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchBasedMagnifyGesture, &type metadata for TouchBasedMagnifyGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedMagnifyGesture and conformance TouchBasedMagnifyGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture> and conformance SimultaneousGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture> and conformance SimultaneousGesture<A, B>;
  if (!lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture> and conformance SimultaneousGesture<A, B>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>, MEMORY[0x1E697F818]);
    result = swift_getWitnessTable(MEMORY[0x1E697F820], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture> and conformance SimultaneousGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>)
  {
    type metadata accessor for CategoryGesture<MagnifyGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable(MEMORY[0x1E697E630], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagnifyGesture.Child and conformance MagnifyGesture.Child()
{
  result = lazy protocol witness table cache variable for type MagnifyGesture.Child and conformance MagnifyGesture.Child;
  if (!lazy protocol witness table cache variable for type MagnifyGesture.Child and conformance MagnifyGesture.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MagnifyGesture.Child, &unk_1EFFC7AE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MagnifyGesture.Child and conformance MagnifyGesture.Child);
  }

  return result;
}

uint64_t type metadata completion function for MagnifyGesture.Value(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _MapGesture<MagnifyGesture, CGFloat>()
{
  if (!lazy cache variable for type metadata for _MapGesture<MagnifyGesture, CGFloat>)
  {
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<MagnifyGesture, CGFloat>);
    }
  }
}

uint64_t partial apply for closure #2 in TouchBasedMagnifyGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(v3 + 24);
  TouchBasedMagnifyGesture.update(state:childPhase:)(a1, a2, v7);
  v10 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v10;
  v15 = *(a1 + 96);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v12 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v12;
  return TouchBasedMagnifyGesture.phase(state:childPhase:)(v14, a2, v9, v8, a3);
}

uint64_t outlined init with copy of MagnifyGesture.Value?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of GesturePhase<(DragGesture.Value, DragGesture.Value)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for CategoryGesture<MagnifyGesture.Value>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for SimultaneousGesture<TransformBasedMagnifyGesture, TouchBasedMagnifyGesture>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TransformBasedMagnifyGesture;
    v8[1] = &type metadata for TouchBasedMagnifyGesture;
    v8[2] = lazy protocol witness table accessor for type TransformBasedMagnifyGesture and conformance TransformBasedMagnifyGesture();
    v8[3] = lazy protocol witness table accessor for type TouchBasedMagnifyGesture and conformance TouchBasedMagnifyGesture();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for CategoryGesture<MagnifyGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s7SwiftUI11DragGestureV5ValueV_AEtWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TouchBasedMagnifyGesture.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[104])
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

uint64_t storeEnumTagSinglePayload for TouchBasedMagnifyGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>)
  {
    type metadata accessor for StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>(255);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>(255);
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>, MEMORY[0x1E697FCE8]);
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>)
  {
    type metadata accessor for MagnifyGesture.Value(255);
    lazy protocol witness table accessor for type TransformBasedMagnifyGesture.StateType and conformance TransformBasedMagnifyGesture.StateType();
    v1 = type metadata accessor for StateContainerGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateContainerGesture<TransformBasedMagnifyGesture.StateType, TransformEvent, MagnifyGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedMagnifyGesture.StateType and conformance TransformBasedMagnifyGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TransformBasedMagnifyGesture.StateType and conformance TransformBasedMagnifyGesture.StateType;
  if (!lazy protocol witness table cache variable for type TransformBasedMagnifyGesture.StateType and conformance TransformBasedMagnifyGesture.StateType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformBasedMagnifyGesture.StateType, &unk_1EFFC7CC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedMagnifyGesture.StateType and conformance TransformBasedMagnifyGesture.StateType);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>>)
  {
    type metadata accessor for CategoryGesture<MagnifyGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<MagnifyGesture.Value>, type metadata accessor for MagnifyGesture.Value, MEMORY[0x1E697E628]);
    type metadata accessor for ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>(255);
    lazy protocol witness table accessor for type CategoryGesture<MagnifyGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<MagnifyGesture.Value>, ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>)
  {
    type metadata accessor for StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>(255);
    type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>(255);
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, MEMORY[0x1E697FCE8]);
    lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>, MEMORY[0x1E697DDD8]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>)
  {
    type metadata accessor for (DragGesture.Value, DragGesture.Value)(255);
    type metadata accessor for MagnifyGesture.Value(255);
    lazy protocol witness table accessor for type TouchBasedMagnifyGesture.StateType and conformance TouchBasedMagnifyGesture.StateType();
    v1 = type metadata accessor for StateContainerGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TouchBasedMagnifyGesture.StateType and conformance TouchBasedMagnifyGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TouchBasedMagnifyGesture.StateType and conformance TouchBasedMagnifyGesture.StateType;
  if (!lazy protocol witness table cache variable for type TouchBasedMagnifyGesture.StateType and conformance TouchBasedMagnifyGesture.StateType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TouchBasedMagnifyGesture.StateType, &unk_1EFFC7D48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedMagnifyGesture.StateType and conformance TouchBasedMagnifyGesture.StateType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<TouchBasedMagnifyGesture.StateType, (DragGesture.Value, DragGesture.Value), MagnifyGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t SidebarButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SidebarButtonStyle._Body(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  if (specialized Environment.wrappedValue.getter(a2, a3 & 1) == 2)
  {
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v10, type metadata accessor for PrimitiveButtonStyleConfiguration);
    v18 = &v10[*(v8 + 20)];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    outlined init with take of SidebarButtonStyle._Body(v10, a4, type metadata accessor for SidebarButtonStyle._Body);
  }

  else
  {
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
    *v17 = *v13;
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v13[*(v11 + 24)], &v17[*(v15 + 36)], type metadata accessor for ButtonAction);
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
    outlined init with take of Button<PrimitiveButtonStyleConfiguration.Label>(v17, a4);
  }

  type metadata accessor for _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body>.Storage, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SidebarButtonStyle._Body.SidebarButtonContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(type metadata accessor for SidebarButtonStyle._Body.SidebarButtonContent(0) + 24);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(v1 + v6, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  outlined init with take of SidebarButtonStyle._Body(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  v23 = 0;
  v19 = swift_getKeyPath();
  v22 = 0;
  v9 = swift_getKeyPath();
  v21 = 0;
  v10 = v23;
  v11 = v22;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v25 = 0;
  v24 = 0;
  v14 = *(v1 + v6);
  v15 = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  result = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  if (!result)
  {
    result = static HierarchicalShapeStyle.sharedPrimary.getter();
  }

  *a1 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  *(a1 + 8) = v8;
  v17 = 256;
  *(a1 + 16) = 1;
  if ((v15 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v19;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = v18;
  *(a1 + 64) = 0;
  *(a1 + 65) = v11;
  *(a1 + 72) = v9;
  *(a1 + 80) = 0;
  *(a1 + 88) = v12;
  *(a1 + 96) = 0;
  *(a1 + 104) = v13;
  *(a1 + 112) = 0;
  *(a1 + 120) = v17 | v14;
  *(a1 + 128) = result;
  *(a1 + 136) = 0;
  return result;
}

void protocol witness for View.body.getter in conformance SidebarButtonStyle._Body(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for SidebarButtonStyle._Body.SidebarButtonContent(0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(v3, a2 + *(v6 + 24), type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  LOBYTE(a1) = (specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 20)), *(v3 + *(a1 + 20) + 8)) & 1) == 0;
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>>(0);
  *(a2 + *(v7 + 36)) = a1;
}

uint64_t outlined init with take of Button<PrimitiveButtonStyleConfiguration.Label>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for SidebarButtonStyle._Body(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v8 = v4 + v7;
    v9 = &a2[v7];
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 5);
      v30 = *(v9 + 24);
      *(v8 + 24) = v30;
      *(v8 + 5) = v29;
      v31 = v30;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v39 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v39);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v39;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v40 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v40);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v40;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v33 = *(a3 + 20);
        v34 = v4 + v33;
        v35 = &a2[v33];
        v36 = *v35;
        v37 = v35[8];
        outlined copy of Environment<Selector?>.Content(*v35, v37);
        *v34 = v36;
        v34[8] = v37;
        return v4;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_9;
  }

  v25 = *a2;
  *v4 = *a2;
  v4 = (v25 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for SidebarButtonStyle._Body(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = a1 + *(a2 + 20);
  v9 = *v8;
  v10 = *(v8 + 8);

  return outlined consume of Environment<Selector?>.Content(v9, v10);
}

_BYTE *initializeWithCopy for SidebarButtonStyle._Body(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a2;
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &v4[v6];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v38 = a3;
  v39 = v4;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v38;
  v4 = v39;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = *(a3 + 20);
  v33 = &a1[v32];
  v34 = &v4[v32];
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Selector?>.Content(*v34, v36);
  *v33 = v35;
  v33[8] = v36;
  return a1;
}

_BYTE *assignWithCopy for SidebarButtonStyle._Body(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 3);
      *(v8 + 3) = v29;
      v30 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v30;
      v31 = v29;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = a3;
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v9[34];
        v16 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v16, v15);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v16;
        v8[34] = v15;
        v17 = *(v9 + 5);
        v18 = *(v9 + 6);
        v19 = *(v9 + 7);
        v20 = *(v9 + 8);
        LOBYTE(v12) = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v14, v12);
        *(v8 + 5) = v17;
        *(v8 + 6) = v18;
        *(v8 + 7) = v19;
        *(v8 + 8) = v20;
        *(v8 + 36) = v14;
        v8[74] = v12;
        a3 = v41;
        v21 = *(type metadata accessor for LinkDestination() + 24);
        v22 = &v8[v21];
        v23 = &v9[v21];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(v22, v23, v24);
        v25 = type metadata accessor for LinkDestination.Configuration();
        v22[*(v25 + 20)] = v23[*(v25 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_8;
  }

LABEL_9:
  v33 = *(a3 + 20);
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *v35;
  v37 = v35[8];
  outlined copy of Environment<Selector?>.Content(*v35, v37);
  v38 = *v34;
  v39 = v34[8];
  *v34 = v36;
  v34[8] = v37;
  outlined consume of Environment<Selector?>.Content(v38, v39);
  return a1;
}

_BYTE *initializeWithTake for SidebarButtonStyle._Body(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v10;
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 71) = *(v8 + 71);
    v11 = *(type metadata accessor for LinkDestination() + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for LinkDestination.Configuration();
    v12[*(v15 + 20)] = v13[*(v15 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v16 = *(a3 + 20);
  v17 = &a1[v16];
  v18 = &a2[v16];
  *v17 = *v18;
  v17[8] = v18[8];
  return a1;
}

_BYTE *assignWithTake for SidebarButtonStyle._Body(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(&a1[v7], type metadata accessor for ButtonAction);
    v10 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v11;
      *(v8 + 31) = *(v9 + 31);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 71) = *(v9 + 71);
      v12 = *(type metadata accessor for LinkDestination() + 24);
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 32))(v13, v14, v15);
      v16 = type metadata accessor for LinkDestination.Configuration();
      v13[*(v16 + 20)] = v14[*(v16 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v17 = *(a3 + 20);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *v19;
  LOBYTE(v19) = v19[8];
  v21 = *v18;
  v22 = v18[8];
  *v18 = v20;
  v18[8] = v19;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  return a1;
}

uint64_t type metadata completion function for SidebarButtonStyle._Body(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type SidebarButtonStyle._Body and conformance SidebarButtonStyle._Body, type metadata accessor for SidebarButtonStyle._Body, protocol conformance descriptor for SidebarButtonStyle._Body);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<Button<PrimitiveButtonStyleConfiguration.Label>, SidebarButtonStyle._Body>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    v7 = v6;
    v8 = type metadata accessor for SidebarButtonStyle._Body(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>>)
  {
    type metadata accessor for _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>(255);
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(255, &lazy cache variable for type metadata for _TraitWritingModifier<SidebarButtonState.Key>, &type metadata for SidebarButtonState.Key, &protocol witness table for SidebarButtonState.Key, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>)
  {
    type metadata accessor for SidebarButtonStyle._Body.SidebarButtonContent(255);
    lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type SidebarButtonStyle._Body.SidebarButtonContent and conformance SidebarButtonStyle._Body.SidebarButtonContent, type metadata accessor for SidebarButtonStyle._Body.SidebarButtonContent, protocol conformance descriptor for SidebarButtonStyle._Body.SidebarButtonContent);
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>);
    }
  }
}

unint64_t initializeBufferWithCopyOfBuffer for SidebarButtonStyle._Body.SidebarButtonContent(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v35 = *a2;
    *a1 = *a2;
    a1 = v35 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    outlined copy of Environment<Selector?>.Content(*a2, v7);
    *a1 = v6;
    *(a1 + 8) = v7;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of Environment<Color?>.Content(v9);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v11 = *(a3 + 24);
    v12 = a1 + v11;
    v13 = a2 + v11;
    *(a1 + v11) = *(a2 + v11);
    v14 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v15 = v12 + v14;
    v16 = v13 + v14;
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v36 = *v16;
      v37 = *(v16 + 8);
      v38 = *(v16 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v16, v37, v38);
      *v15 = v36;
      *(v15 + 8) = v37;
      *(v15 + 16) = v38;
      v39 = *(v16 + 40);
      v40 = *(v16 + 24);
      *(v15 + 24) = v40;
      *(v15 + 40) = v39;
      v41 = v40;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      v19 = *(v16 + 8);
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);
      v22 = *(v16 + 34);
      v23 = *(v16 + 32);
      outlined copy of Environment<OpenURLAction>.Content(*v16, v19, v20, v21, v23, v22);
      *v15 = v18;
      *(v15 + 8) = v19;
      *(v15 + 16) = v20;
      *(v15 + 24) = v21;
      *(v15 + 32) = v23;
      *(v15 + 34) = v22;
      v24 = *(v16 + 40);
      v25 = *(v16 + 48);
      v26 = *(v16 + 56);
      v27 = *(v16 + 64);
      v28 = *(v16 + 74);
      v29 = *(v16 + 72);
      outlined copy of Environment<OpenURLAction>.Content(v24, v25, v26, v27, v29, v28);
      *(v15 + 40) = v24;
      *(v15 + 48) = v25;
      *(v15 + 56) = v26;
      *(v15 + 64) = v27;
      *(v15 + 72) = v29;
      *(v15 + 74) = v28;
      v30 = *(type metadata accessor for LinkDestination() + 24);
      v31 = v15 + v30;
      v32 = v16 + v30;
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 16))(v31, v32, v33);
      v34 = type metadata accessor for LinkDestination.Configuration();
      *(v31 + *(v34 + 20)) = *(v32 + *(v34 + 20));
    }

    else
    {
      v42 = *(v16 + 8);
      *v15 = *v16;
      *(v15 + 8) = v42;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 16), *(a1 + 24));
  v4 = a1 + *(a2 + 24);
  v5 = v4 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v5, *(v5 + 8), *(v5 + 16));

LABEL_9:

    return result;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      return result;
    }

    goto LABEL_9;
  }

  outlined consume of Environment<OpenURLAction>.Content(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 74));
  v8 = *(type metadata accessor for LinkDestination() + 24);
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 8);

  v10(v5 + v8, v9);
  return result;
}

uint64_t initializeWithCopy for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Color?>.Content(v8);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = (a2 + v10);
  *(a1 + v10) = *v12;
  v13 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v14 = v11 + v13;
  v15 = &v12[v13];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v33 = *v15;
    v34 = *(v15 + 1);
    v35 = v15[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v15, v34, v35);
    *v14 = v33;
    *(v14 + 8) = v34;
    *(v14 + 16) = v35;
    v36 = *(v15 + 5);
    v37 = *(v15 + 24);
    *(v14 + 24) = v37;
    *(v14 + 40) = v36;
    v38 = v37;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v39 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 8) = v39;
    goto LABEL_6;
  }

  v17 = *v15;
  v18 = *(v15 + 1);
  v19 = *(v15 + 2);
  v20 = *(v15 + 3);
  v21 = v15[34];
  v22 = *(v15 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v15, v18, v19, v20, v22, v21);
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 16) = v19;
  *(v14 + 24) = v20;
  *(v14 + 32) = v22;
  *(v14 + 34) = v21;
  v23 = *(v15 + 5);
  v24 = *(v15 + 6);
  v25 = *(v15 + 7);
  v26 = *(v15 + 8);
  LOBYTE(v20) = v15[74];
  v27 = *(v15 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v23, v24, v25, v26, v27, v20);
  *(v14 + 40) = v23;
  *(v14 + 48) = v24;
  *(v14 + 56) = v25;
  *(v14 + 64) = v26;
  *(v14 + 72) = v27;
  *(v14 + 74) = v20;
  v28 = *(type metadata accessor for LinkDestination() + 24);
  v29 = v14 + v28;
  v30 = &v15[v28];
  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 16))(v29, v30, v31);
  v32 = type metadata accessor for LinkDestination.Configuration();
  *(v29 + *(v32 + 20)) = v30[*(v32 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  outlined copy of Environment<Color?>.Content(v10);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<AnyShapeStyle?>.Content(v12, v13);
  v14 = *(a3 + 24);
  v15 = a1 + v14;
  v16 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v17 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v18 = *(v17 + 24);
    v19 = v15 + v18;
    v20 = v16 + v18;
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(v19, type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v38 = *v20;
      v39 = *(v20 + 8);
      v40 = *(v20 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v20, v39, v40);
      *v19 = v38;
      *(v19 + 8) = v39;
      *(v19 + 16) = v40;
      v41 = *(v20 + 24);
      *(v19 + 24) = v41;
      v42 = *(v20 + 40);
      *(v19 + 32) = *(v20 + 32);
      *(v19 + 40) = v42;
      v43 = v41;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = *v20;
        v23 = *(v20 + 8);
        v24 = *(v20 + 16);
        v25 = *(v20 + 24);
        v26 = *(v20 + 34);
        v27 = *(v20 + 32);
        outlined copy of Environment<OpenURLAction>.Content(*v20, v23, v24, v25, v27, v26);
        *v19 = v22;
        *(v19 + 8) = v23;
        *(v19 + 16) = v24;
        *(v19 + 24) = v25;
        *(v19 + 32) = v27;
        *(v19 + 34) = v26;
        v28 = *(v20 + 40);
        v29 = *(v20 + 48);
        v30 = *(v20 + 56);
        v31 = *(v20 + 64);
        LOBYTE(v25) = *(v20 + 74);
        v32 = *(v20 + 72);
        outlined copy of Environment<OpenURLAction>.Content(v28, v29, v30, v31, v32, v25);
        *(v19 + 40) = v28;
        *(v19 + 48) = v29;
        *(v19 + 56) = v30;
        *(v19 + 64) = v31;
        *(v19 + 72) = v32;
        *(v19 + 74) = v25;
        v33 = *(type metadata accessor for LinkDestination() + 24);
        v34 = v19 + v33;
        v35 = v20 + v33;
        v36 = type metadata accessor for URL();
        (*(*(v36 - 8) + 16))(v34, v35, v36);
        v37 = type metadata accessor for LinkDestination.Configuration();
        *(v34 + *(v37 + 20)) = *(v35 + *(v37 + 20));
LABEL_8:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v44 = *(v20 + 8);
      *v19 = *v20;
      *(v19 + 8) = v44;
    }

    goto LABEL_8;
  }

  return a1;
}

uint64_t initializeWithTake for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v8 = (v5 + v7);
  v9 = (v6 + v7);
  v10 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v9 + 1);
    *v8 = *v9;
    *(v8 + 1) = v11;
    *(v8 + 31) = *(v9 + 31);
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 56) = *(v9 + 56);
    *(v8 + 71) = *(v9 + 71);
    v12 = *(type metadata accessor for LinkDestination() + 24);
    v13 = &v8[v12];
    v14 = &v9[v12];
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 32))(v13, v14, v15);
    v16 = type metadata accessor for LinkDestination.Configuration();
    v13[*(v16 + 20)] = v14[*(v16 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v8, v9, *(*(v10 - 8) + 64));
  }

  return a1;
}

uint64_t assignWithTake for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v10;
  outlined consume of Environment<AnyShapeStyle?>.Content(v11, v12);
  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  *(a1 + v13) = *(a2 + v13);
  v16 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v17 = *(v16 + 24);
    v18 = (v14 + v17);
    v19 = &v15[v17];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(v18, type metadata accessor for ButtonAction);
    v20 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *(v19 + 1);
      *v18 = *v19;
      *(v18 + 1) = v21;
      *(v18 + 31) = *(v19 + 31);
      *(v18 + 40) = *(v19 + 40);
      *(v18 + 56) = *(v19 + 56);
      *(v18 + 71) = *(v19 + 71);
      v22 = *(type metadata accessor for LinkDestination() + 24);
      v23 = &v18[v22];
      v24 = &v19[v22];
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 32))(v23, v24, v25);
      v26 = type metadata accessor for LinkDestination.Configuration();
      v23[*(v26 + 20)] = v24[*(v26 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }
  }

  return a1;
}

uint64_t type metadata completion function for SidebarButtonStyle._Body.SidebarButtonContent(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, MEMORY[0x1E697F380]);
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SidebarButtonState.Key> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<SidebarButtonStyle._Body.SidebarButtonContent>, _TraitWritingModifier<SidebarButtonState.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SidebarButtonState.Key> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarButtonState.Key> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarButtonState.Key> and conformance _TraitWritingModifier<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(255, &lazy cache variable for type metadata for _TraitWritingModifier<SidebarButtonState.Key>, &type metadata for SidebarButtonState.Key, &protocol witness table for SidebarButtonState.Key, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarButtonState.Key> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with take of SidebarButtonStyle._Body(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>(255);
    type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ScrollEdgeEffectTagModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(255, &lazy cache variable for type metadata for BorderlessButtonLabelShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], type metadata accessor for BorderlessButtonLabelShapeStyle);
    v1 = type metadata accessor for _DefaultForegroundStyleModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
    v5[1] = lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>, type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>, MEMORY[0x1E6980AC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier()
{
  result = lazy protocol witness table cache variable for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier;
  if (!lazy protocol witness table cache variable for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListButtonStyleDisabledOpacityModifier, &type metadata for ListButtonStyleDisabledOpacityModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
  }

  return result;
}

uint64_t View.contextMenu<A, B>(menuItems:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v35 = a6;
  v32 = a5;
  v40 = a4;
  v41 = a3;
  v37 = a2;
  v36 = a1;
  v42 = a9;
  v33 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v14 = type metadata accessor for ModifiedContent();
  v15 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v52[0] = a10;
  v52[1] = v15;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v52);
  v16 = type metadata accessor for ZStack();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v20 = swift_getWitnessTable(MEMORY[0x1E6981880], v16, v17);
  v51[0] = v16;
  v51[1] = a7;
  v21 = a7;
  v31 = a7;
  v51[2] = v20;
  v51[3] = a11;
  v22 = type metadata accessor for ContextMenuPreviewModifier(0, v51);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v30 - v24;
  v43 = a5;
  v44 = v35;
  v26 = v38;
  v45 = v21;
  v46 = v38;
  v47 = v33;
  v48 = a11;
  v49 = v36;
  v50 = v37;
  static Alignment.center.getter();
  v27 = ZStack.init(alignment:content:)();
  v28 = v39;
  v41(v27);
  ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)(v19, v28, 0, 0, 0, 254, v16, v31, v25, v20, a11);
  MEMORY[0x18D00A570](v25, v32, v22, v26);
  return (*(v23 + 8))(v25, v22);
}

uint64_t View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v53 = a7;
  v50 = a6;
  v51 = a5;
  v48 = a4;
  v49 = a3;
  v46 = a2;
  v45 = a1;
  v52 = a9;
  v43 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v19 = type metadata accessor for ModifiedContent();
  v42 = v19;
  v20 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v65[0] = a13;
  v65[1] = v20;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v65);
  v21 = type metadata accessor for ZStack();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v39 = &v35 - v23;
  v40 = swift_getWitnessTable(MEMORY[0x1E6981880], v21, v22);
  v64[0] = v21;
  v64[1] = a10;
  v37 = a10;
  v38 = a11;
  v64[2] = a11;
  v64[3] = v40;
  v36 = a14;
  v64[4] = a14;
  v64[5] = a15;
  v24 = type metadata accessor for ContextMenuPreviewDestinationModifier(0, v64);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v35 - v26;
  v54 = v53;
  v55 = a8;
  v56 = a10;
  v57 = a11;
  v28 = v43;
  v58 = v43;
  v59 = a13;
  v60 = a14;
  v61 = a15;
  v62 = v45;
  v63 = v46;
  static Alignment.center.getter();
  v29 = v39;
  v30 = ZStack.init(alignment:content:)();
  v31 = v44;
  v32 = v49(v30);
  v33 = v47;
  v51(v32);
  ContextMenuPreviewDestinationModifier.init(menuView:preview:destination:)(v29, v31, v33, v21, v37, v38, v40, v36, v27, a15);
  MEMORY[0x18D00A570](v27, v53, v24, v28);
  return (*(v25 + 8))(v27, v24);
}

uint64_t closure #1 in View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v22[0] = a3;
  v22[1] = v18;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, v10);
}

uint64_t View.contextMenu<A, B>(menuItems:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v39 = a3;
  v37 = a2;
  v35 = a1;
  v42 = a9;
  v34 = a11;
  v32 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v16 = type metadata accessor for ModifiedContent();
  v17 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v52[0] = a12;
  v52[1] = v17;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v16, v52);
  v18 = type metadata accessor for ZStack();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v31 = swift_getWitnessTable(MEMORY[0x1E6981880], v18, v19);
  v51[0] = v18;
  v51[1] = a10;
  v30 = a10;
  v51[2] = v31;
  v51[3] = a13;
  v22 = type metadata accessor for ContextMenuPreviewModifier(0, v51);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v30 - v24;
  v43 = a7;
  v44 = a8;
  v26 = v34;
  v45 = a10;
  v46 = v34;
  v47 = v32;
  v48 = a13;
  v49 = v35;
  v50 = v37;
  static Alignment.center.getter();
  v27 = ZStack.init(alignment:content:)();
  v28 = v36;
  v39(v27);
  ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)(v21, v28, 0, v40, v41, 0, v18, v30, v25, v31, a13);

  MEMORY[0x18D00A570](v25, a7, v22, v26);
  return (*(v23 + 8))(v25, v22);
}

uint64_t closure #1 in View.contextMenu<A, B>(menuItems:preview:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v22[0] = a3;
  v22[1] = v18;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v17, v10);
}

uint64_t View.contextMenu<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a6;
  v25 = a5;
  v26 = a1;
  v27 = a4;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v9 = type metadata accessor for ModifiedContent();
  v36[0] = a5;
  v36[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v36);
  v10 = type metadata accessor for ZStack();
  v11 = type metadata accessor for Optional();
  v12 = type metadata accessor for Group();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v10, v13);
  v34 = swift_getWitnessTable(MEMORY[0x1E6982090], v11, &WitnessTable);
  v16 = swift_getWitnessTable(MEMORY[0x1E6981600], v12, &v34);
  v18 = type metadata accessor for ContextMenuModifier(0, v12, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  v29 = a2;
  v30 = a3;
  v22 = v27;
  v31 = v27;
  v32 = v25;
  v33 = v26;
  Group<A>.init(content:)();
  ContextMenuModifier.init(menuView:)(v15, v12, v21, v16);
  MEMORY[0x18D00A570](v21, a2, v18, v22);
  return (*(v19 + 8))(v21, v18);
}

uint64_t closure #1 in View.contextMenu<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a1;
  v46 = a2;
  v54 = a6;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v8 = type metadata accessor for ModifiedContent();
  v56[0] = a5;
  v56[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v48 = v8;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v56);
  v9 = type metadata accessor for ZStack();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v40 - v12;
  v47 = a3;
  v45 = a5;
  v14 = type metadata accessor for ContextMenu(255, a3, a5, v13);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v40 - v21;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v53 = &v40 - v28;
  (*(v16 + 16))(v18, v50, v15, v27);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    (*(v52 + 56))(v25, 1, 1, v9);
    swift_getWitnessTable(MEMORY[0x1E6981880], v9);
    v29 = v53;
    static ToolbarContentBuilder.buildIf<A>(_:)(v25, v53);
    v30 = *(v23 + 8);
    v30(v25, v22);
  }

  else
  {
    v40 = v14;
    v41 = v19;
    v31 = v51;
    v32 = (*(v19 + 32))();
    MEMORY[0x1EEE9AC00](v32);
    v33 = v47;
    *(&v40 - 6) = v46;
    *(&v40 - 5) = v33;
    v34 = v45;
    *(&v40 - 4) = v49;
    *(&v40 - 3) = v34;
    *(&v40 - 2) = v31;
    static Alignment.center.getter();
    v35 = v44;
    ZStack.init(alignment:content:)();
    swift_getWitnessTable(MEMORY[0x1E6981880], v9);
    v36 = v43;
    static ViewBuilder.buildExpression<A>(_:)();
    v37 = v52;
    v38 = *(v52 + 8);
    v38(v35, v9);
    static ViewBuilder.buildExpression<A>(_:)();
    v38(v36, v9);
    (*(v37 + 32))(v25, v35, v9);
    (*(v37 + 56))(v25, 0, 1, v9);
    v29 = v53;
    static ToolbarContentBuilder.buildIf<A>(_:)(v25, v53);
    v30 = *(v23 + 8);
    v30(v25, v22);
    (*(v41 + 8))(v51, v40);
  }

  v55 = swift_getWitnessTable(MEMORY[0x1E6981880], v9);
  swift_getWitnessTable(MEMORY[0x1E6982090], v22, &v55);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v30)(v29, v22);
}

uint64_t closure #1 in closure #1 in View.contextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  View.styleContext<A>(_:)();
  v13 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v16[0] = a5;
  v16[1] = v13;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, v6);
}

uint64_t destroy for MenuBuilderContext()
{
}

uint64_t initializeWithCopy for MenuBuilderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for MenuBuilderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for MenuBuilderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *specialized Sequence.first(where:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - v7;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v23[1] = v3;
    v10 = 0;
    v3 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v12 = MEMORY[0x18D00E9C0](v10, a1, v6);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = *(v24 + 40);
      if (*(v15 + 16))
      {
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if (v17)
        {
          v18 = *(v15 + 56);
          v19 = v16;
          v20 = type metadata accessor for CommandOperation(0);
          v21 = *(v20 - 8);
          outlined init with copy of MenuVisitor.MenuStackGroup(v18 + *(v21 + 72) * v19, v8, type metadata accessor for CommandOperation);
          (*(v21 + 56))(v8, 0, 1, v20);
          outlined destroy of HashableCommandGroupPlacementWrapper?(v8, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          return v13;
        }
      }

      v11 = type metadata accessor for CommandOperation(0);
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      outlined destroy of HashableCommandGroupPlacementWrapper?(v8, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);

      ++v10;
      if (v14 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t MenuChangeDetectorHelper.startTrackingUpdatesIfNeeded(menuInteration:itemListAttr:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x18D00ABE0]();
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    if (AGWeakAttributeGetAttribute() != Attribute)
    {
      v5 = AGGraphGetAttributeSubgraph();
      AGGraphClearUpdate();
      v6 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      AGGraphClearUpdate();
      swift_unknownObjectWeakInit();
      v12 = a2;
      UpdateContextMenuInteraction.updateValue()();
      outlined init with copy of SafeAreaTransitionStateKey.Value(v11, v10);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UpdateContextMenuInteraction and conformance UpdateContextMenuInteraction();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of weak FallbackResponderProvider?(v10);
      outlined destroy of weak FallbackResponderProvider?(v11);
      AGGraphSetUpdate();
      AGGraphSetFlags();
      *v2 = AGCreateWeakAttribute();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
    }
  }

  else
  {
    AGGraphGetFlags();
    v7 = AGGraphSetFlags();
    MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    AGGraphMutateAttribute();
  }

  return static Update.end()();
}

void *PlatformItemList.Item.uiKeyCommand.getter()
{
  v1 = *(v0 + 488);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + 480);
    v15 = *(v0 + 504);
    v4 = one-time initialization token for keyEquivalentToKeyInputMap;

    if (v4 != -1)
    {
      swift_once();
    }

    if (*(keyEquivalentToKeyInputMap._rawValue + 2))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v3, v1);
    }

    v5 = Character.isUppercase.getter();

    if (v5)
    {
      static Semantics.v3.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        String.lowercased()();
      }
    }

    if (*v2)
    {
      v6 = [*v2 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    PlatformItemList.Item.image.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIKeyCommand, 0x1E69DCBA0);
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, type metadata accessor for (Any, Any), MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18CD63400;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = 0xD00000000000001ELL;
    *(v8 + 40) = 0x800000018CD4B7C0;
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(v8 + 88) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    *(v8 + 64) = v9;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    NSDictionary.init(dictionaryLiteral:)();
    v14 = MEMORY[0x1E69E7CC0];
    v10 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v7 = v10;
    v11 = *(v2 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        if (*(v2 + 936))
        {
LABEL_15:
          v12 = 0;
LABEL_18:
          [v10 setAttributes_];
          [v7 setState_];
          [v7 setAllowsAutomaticLocalization_];
          [v7 setAllowsAutomaticMirroring_];

          return v7;
        }
      }

      else if (*(v2 + 56) == 1)
      {
        goto LABEL_15;
      }
    }

    v12 = 1;
    goto LABEL_18;
  }

  return 0;
}

id UIKeyCommand.discoverabilityID.getter()
{
  if ([v0 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      *&v5 = 0xD00000000000001ELL;
      *(&v5 + 1) = 0x800000018CD4B7C0;
      v1 = [v4 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v1)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(&v5, v7);
        outlined init with copy of Any(v7, &v5);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        swift_dynamicCast();
        v2 = [v4 integerValue];

        __swift_destroy_boxed_opaque_existential_1(v7);
        return v2;
      }
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  return 0;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.DocumentCommandsKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.DocumentCommandsKey.defaultValue;

  return result;
}

void UpdateContextMenuInteraction.updateValue()()
{
  v0 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = aBlock - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = MEMORY[0x1E69E7CC0];
      aBlock[0] = MEMORY[0x1E69E7CC0];

      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v7);
      v9 = MEMORY[0x1E69E7CC8];
      v2[8] = 0;
      *(v2 + 2) = v9;
      *(v2 + 3) = v8;
      *(v2 + 4) = v7;
      *(v2 + 5) = v9;
      v2[48] = 0;
      type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
      v10 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
      v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18CD63400;
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v10, static MenuVisitor.MenuStackGroup.empty);
      outlined init with copy of MenuVisitor.MenuStackGroup(v13, v12 + v11, type metadata accessor for MenuVisitor.MenuStackGroup);
      *(v2 + 7) = v12;
      v14 = *(v0 + 32);
      v15 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
      (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
      *v2 = 0;
      MenuVisitor.visit(_:uniqueNames:)(v4, aBlock);

      v16 = *(v2 + 4);

      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v2, type metadata accessor for MenuVisitor);
      v23 = v16;
      v22 = 1;
      v17 = swift_allocObject();
      *(v17 + 16) = &v22;
      *(v17 + 24) = &v23;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in UpdateContextMenuInteraction.updateValue();
      *(v18 + 24) = v17;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      aBlock[3] = &block_descriptor_35;
      v19 = _Block_copy(aBlock);

      [v6 updateVisibleMenuWithBlock_];

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }
}

void closure #1 in UpdateContextMenuInteraction.updateValue()(void *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a2 = 0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 menuByReplacingChildren_];
  }

  else
  {
    v5 = *a3;
    if (*a3 >> 62)
    {
      goto LABEL_25;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      do
      {
        v30 = v5 & 0xC000000000000001;
        v27 = a3;
        v28 = v5 & 0xFFFFFFFFFFFFFF8;

        v7 = 0;
        v29 = v5;
        while (1)
        {
          if (v30)
          {
            v8 = MEMORY[0x18D00E9C0](v7, v5);
          }

          else
          {
            if (v7 >= *(v28 + 16))
            {
              goto LABEL_24;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            v31 = v11;
            v12 = [v11 identifier];
            v13 = a1;
            v14 = [a1 identifier];
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v16;
            if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
            {

              v21 = v31;
LABEL_22:

              v23 = [v21 children];
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
              v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              *v27 = v24;

              return;
            }

            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a1 = v13;
            v5 = v29;
            v21 = v31;
            if (v20)
            {
              goto LABEL_22;
            }
          }

          ++v7;
          if (v10 == v6)
          {

            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v25 = a3;
        v26 = __CocoaSet.count.getter();
        a3 = v25;
        v6 = v26;
      }

      while (v26);
    }

LABEL_20:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(MEMORY[0x1E69E7CC0], v22, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, MEMORY[0x1E69E7CC0], v27);
  }
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id thunk for @escaping @callee_guaranteed () -> (@owned String?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18D00C850](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for (key: UIMenuElement, value: CommandOperation)(0);
  v5 = *(v4 + 48);
  type metadata accessor for (UIMenuElement, CommandOperation)(0);
  v8 = *a1;
  outlined init with copy of MenuVisitor.MenuStackGroup(a1 + v5, a2 + *(v6 + 48), type metadata accessor for CommandOperation);
  *a2 = v8;

  return v8;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (key: UUID, value: PlatformItemList)(0);
  v5 = *(v4 + 48);
  type metadata accessor for (UUID, PlatformItemList)(0);
  v7 = *(v6 + 48);
  v8 = *(a1 + v5);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  *(a2 + v7) = v8;

  return result;
}

{
  v3 = *(a1 + 40);
  outlined init with copy of AnyHashable(a1, a2);
  *(a2 + 40) = v3;

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(a1 + 56);
    v37 = *(*(a1 + 48) + 8 * v15);
    v38 = *(v16 + 16 * v15);

    a2(&v35, &v37);

    v17 = v35;
    v34 = v36;
    v18 = *v39;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4 & 1);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v39;
    if (v24)
    {
      v12 = 16 * v20;
      v31 = *(v27[7] + v12);

      *(v27[7] + v12) = v31;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 16 * v20) = v34;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_25;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v39 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(a1 + 56);
    v37 = *(*(a1 + 48) + 8 * v15);
    v38 = *(v16 + 16 * v15);

    a2(&v35, &v37);

    v17 = v35;
    v34 = v36;
    v18 = *v39;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4 & 1);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v39;
    if (v24)
    {
      v12 = 16 * v20;
      v31 = *(v27[7] + v12);

      *(v27[7] + v12) = v31;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 16 * v20) = v34;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_25;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v61 = a4;
  v9 = type metadata accessor for CommandOperation(0);
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for (UIMenuElement, CommandOperation)?, type metadata accessor for (UIMenuElement, CommandOperation), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v59 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v65 = a1;
  v66 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v67 = v18;
  v68 = 0;
  v69 = v21 & v19;
  v70 = a2;
  v71 = a3;

  v62 = a3;

  specialized LazyMapSequence.Iterator.next()(v16);
  type metadata accessor for (UIMenuElement, CommandOperation)(0);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = v24 + 48;
  if (v25(v16, 1, v22) == 1)
  {
    goto LABEL_17;
  }

  v27 = *v16;
  outlined init with take of CommandOperation(v16 + *(v23 + 48), v13, type metadata accessor for CommandOperation);
  v28 = *a5;
  v60 = v27;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v34 = v29;
  if (v28[3] >= v33)
  {
    if (v61)
    {
      v37 = *a5;
      if (v29)
      {
        goto LABEL_12;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v37 = *a5;
      if (v34)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    v37[(v30 >> 6) + 8] |= 1 << v30;
    *(v37[6] + 8 * v30) = v60;
    outlined init with take of CommandOperation(v13, v37[7] + *(v72 + 72) * v30, type metadata accessor for CommandOperation);
    v40 = v37[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v37[2] = v42;
    goto LABEL_16;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v61 & 1);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
  if ((v34 & 1) == (v36 & 1))
  {
    v30 = v35;
    v37 = *a5;
    if ((v34 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v38 = *(v72 + 72) * v30;
    v39 = v64;
    outlined init with copy of MenuVisitor.MenuStackGroup(v37[7] + v38, v64, type metadata accessor for CommandOperation);
    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v13, type metadata accessor for CommandOperation);

    outlined assign with take of CommandOperation(v39, v37[7] + v38);
LABEL_16:
    specialized LazyMapSequence.Iterator.next()(v16);
    if (v25(v16, 1, v23) == 1)
    {
LABEL_17:
      outlined consume of Set<UIPress>.Iterator._Variant(v65);

      return;
    }

    v63 = v26;
    while (1)
    {
      v47 = *v16;
      outlined init with take of CommandOperation(v16 + *(v23 + 48), v13, type metadata accessor for CommandOperation);
      v48 = *a5;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
      v51 = v48[2];
      v52 = (v50 & 1) == 0;
      v41 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v41)
      {
        goto LABEL_27;
      }

      v54 = v50;
      if (v48[3] < v53)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, 1);
        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
        if ((v54 & 1) != (v55 & 1))
        {
          break;
        }
      }

      v56 = *a5;
      if (v54)
      {
        v43 = *(v72 + 72) * v49;
        v44 = v25;
        v45 = v64;
        outlined init with copy of MenuVisitor.MenuStackGroup(v56[7] + v43, v64, type metadata accessor for CommandOperation);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v13, type metadata accessor for CommandOperation);

        v46 = v45;
        v25 = v44;
        outlined assign with take of CommandOperation(v46, v56[7] + v43);
      }

      else
      {
        v56[(v49 >> 6) + 8] |= 1 << v49;
        *(v56[6] + 8 * v49) = v47;
        outlined init with take of CommandOperation(v13, v56[7] + *(v72 + 72) * v49, type metadata accessor for CommandOperation);
        v57 = v56[2];
        v41 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v41)
        {
          goto LABEL_28;
        }

        v56[2] = v58;
      }

      specialized LazyMapSequence.Iterator.next()(v16);
      if (v25(v16, 1, v23) == 1)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_29:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void type metadata accessor for (UIMenuElement, CommandOperation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIMenuElement, CommandOperation))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
    type metadata accessor for CommandOperation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIMenuElement, CommandOperation));
    }
  }
}

uint64_t outlined assign with take of CommandOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandOperation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: UIMenuElement, value: CommandOperation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: UIMenuElement, value: CommandOperation))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
    type metadata accessor for CommandOperation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: UIMenuElement, value: CommandOperation));
    }
  }
}

void type metadata accessor for (UUID, PlatformItemList)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UUID, PlatformItemList))
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID, PlatformItemList));
    }
  }
}

void type metadata accessor for (key: UUID, value: PlatformItemList)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: UUID, value: PlatformItemList))
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: UUID, value: PlatformItemList));
    }
  }
}

void type metadata accessor for (Any, Any)()
{
  if (!lazy cache variable for type metadata for (Any, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any, Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type UpdateContextMenuInteraction and conformance UpdateContextMenuInteraction()
{
  result = lazy protocol witness table cache variable for type UpdateContextMenuInteraction and conformance UpdateContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type UpdateContextMenuInteraction and conformance UpdateContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateContextMenuInteraction, &unk_1EFFC8278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateContextMenuInteraction and conformance UpdateContextMenuInteraction);
  }

  return result;
}

uint64_t assignWithCopy for UpdateContextMenuInteraction(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

double assignWithTake for UpdateContextMenuInteraction(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MenuVisitor.MenuStackGroup(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];

    return a1;
  }

  v8 = a2[1];
  v7 = a2[2];
  *(a1 + 1) = v8;
  *(a1 + 2) = v7;
  *(a1 + 3) = a2[3];
  a1[32] = *(a2 + 32);
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  a1[56] = *(a2 + 56);
  v10 = a2[24];
  v11 = v5;
  v12 = v8;

  if (v10 >> 1 != 4294967294)
  {
    v22 = *(a2 + 72);
    if (v22 == 255)
    {
      *(a1 + 8) = a2[8];
      a1[72] = *(a2 + 72);
    }

    else
    {
      v23 = a2[8];
      outlined copy of GraphicsImage.Contents(v23, *(a2 + 72));
      *(a1 + 8) = v23;
      a1[72] = v22;
      v10 = a2[24];
    }

    *(a1 + 10) = a2[10];
    *(a1 + 88) = *(a2 + 11);
    a1[104] = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 84) = *(a2 + 84);
    a1[170] = *(a2 + 170);
    a1[171] = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v24 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v24;
    }

    else
    {
      v25 = a2[22];
      v26 = a2[23];
      v27 = a2[25];
      outlined copy of AccessibilityImageLabel(v25, v26, v10, v27);
      *(a1 + 22) = v25;
      *(a1 + 23) = v26;
      *(a1 + 24) = v10;
      *(a1 + 25) = v27;
    }

    v28 = a2[27];
    *(a1 + 26) = a2[26];
    *(a1 + 27) = v28;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 57) = *(a2 + 57);
    a1[232] = *(a2 + 232);
    v29 = a2[30];
    *(a1 + 30) = v29;
    *(a1 + 124) = *(a2 + 124);
    a1[250] = *(a2 + 250);
    swift_unknownObjectRetain();

    v30 = v29;
    v18 = a2[33];
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v31 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v31;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_16;
  }

  v13 = *(a2 + 13);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = v13;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 9);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = v14;
  v15 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v15;
  v16 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v16;
  v17 = *(a2 + 7);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = v17;
  v18 = a2[33];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 32) = a2[32];
  *(a1 + 33) = v18;
  v19 = a2[34];

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 34) = v19;
  *(a1 + 70) = *(a2 + 70);
  a1[284] = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = a2[37];
  *(a1 + 36) = a2[36];
  *(a1 + 37) = v21;

LABEL_16:
  v32 = a2[42];
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    v33 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v33;
    *(a1 + 50) = a2[50];
    v34 = *(a2 + 20);
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 20) = v34;
    v35 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v35;
  }

  else
  {
    v36 = a2[38];
    v37 = a2[39];
    v38 = a2[40];
    v39 = a2[41];
    v40 = a2[43];
    v41 = a2[44];
    v42 = a2[45];
    v95 = a2[46];
    v97 = a2[47];
    v100 = a2[48];
    v102 = a2[49];
    __dsta = a2[50];
    outlined copy of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v32, v40, v41, v42, v95, v97, v100, v102, __dsta);
    *(a1 + 38) = v36;
    *(a1 + 39) = v37;
    *(a1 + 40) = v38;
    *(a1 + 41) = v39;
    *(a1 + 42) = v32;
    *(a1 + 43) = v40;
    *(a1 + 44) = v41;
    *(a1 + 45) = v42;
    *(a1 + 46) = v95;
    *(a1 + 47) = v97;
    *(a1 + 48) = v100;
    *(a1 + 49) = v102;
    *(a1 + 50) = __dsta;
  }

  v43 = a2[52];
  if (v43 == 1)
  {
    v44 = *(a2 + 57);
    *(a1 + 440) = *(a2 + 55);
    *(a1 + 456) = v44;
    a1[472] = *(a2 + 472);
    v45 = *(a2 + 53);
    *(a1 + 408) = *(a2 + 51);
    *(a1 + 424) = v45;
    goto LABEL_29;
  }

  *(a1 + 102) = *(a2 + 102);
  a1[412] = *(a2 + 412);
  if (v43)
  {
    v46 = a2[53];
    *(a1 + 52) = v43;
    *(a1 + 53) = v46;

    v47 = a2[54];
    if (v47)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 27) = *(a2 + 27);
    v49 = a2[56];
    if (v49)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 28) = *(a2 + 28);
    goto LABEL_28;
  }

  *(a1 + 26) = *(a2 + 26);
  v47 = a2[54];
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = a2[55];
  *(a1 + 54) = v47;
  *(a1 + 55) = v48;

  v49 = a2[56];
  if (!v49)
  {
    goto LABEL_27;
  }

LABEL_24:
  v50 = a2[57];
  *(a1 + 56) = v49;
  *(a1 + 57) = v50;

LABEL_28:
  *(a1 + 58) = a2[58];
  a1[472] = *(a2 + 472);
LABEL_29:
  v51 = a2[61];
  *(a1 + 60) = a2[60];
  *(a1 + 61) = v51;
  *(a1 + 62) = a2[62];
  a1[504] = *(a2 + 504);
  v52 = a2[64];

  if (v52)
  {
    v53 = a2[65];
    *(a1 + 64) = v52;
    *(a1 + 65) = v53;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  a1[528] = *(a2 + 528);
  if (!a2[102])
  {
    memcpy(a1 + 536, a2 + 67, 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 67) = a2[67];
  *(a1 + 68) = a2[68];
  a1[552] = *(a2 + 552);
  *(a1 + 70) = a2[70];
  a1[568] = *(a2 + 568);
  *(a1 + 36) = *(a2 + 36);
  a1[592] = *(a2 + 592);
  v54 = a1 + 600;
  v55 = a2 + 75;
  v56 = a2[78];

  if (!v56)
  {
    v58 = *(a2 + 77);
    *v54 = *v55;
    *(a1 + 616) = v58;
    *(a1 + 79) = a2[79];
LABEL_39:
    *(a1 + 80) = a2[80];

    goto LABEL_40;
  }

  if (v56 != 1)
  {
    *(a1 + 78) = v56;
    *(a1 + 79) = a2[79];
    (**(v56 - 1))(a1 + 600, a2 + 75, v56);
    goto LABEL_39;
  }

  v57 = *(a2 + 77);
  *v54 = *v55;
  *(a1 + 616) = v57;
  *(a1 + 632) = *(a2 + 79);
LABEL_40:
  *(a1 + 81) = a2[81];
  a1[656] = *(a2 + 656);
  v59 = a1 + 664;
  v60 = a2 + 83;
  v61 = a2[97];
  if (v61 == 1)
  {
    v62 = *(a2 + 97);
    *(a1 + 760) = *(a2 + 95);
    *(a1 + 776) = v62;
    *(a1 + 792) = *(a2 + 99);
    a1[808] = *(a2 + 808);
    v63 = *(a2 + 89);
    *(a1 + 696) = *(a2 + 87);
    *(a1 + 712) = v63;
    v64 = *(a2 + 93);
    *(a1 + 728) = *(a2 + 91);
    *(a1 + 744) = v64;
    v65 = *(a2 + 85);
    *v59 = *v60;
    *(a1 + 680) = v65;
  }

  else
  {
    *v59 = *v60;
    a1[672] = *(a2 + 672);
    *(a1 + 85) = a2[85];
    a1[688] = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    a1[691] = *(a2 + 691);
    a1[692] = *(a2 + 692);
    *(a1 + 87) = a2[87];
    v66 = *(a2 + 45);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 45) = v66;
    *(a1 + 92) = a2[92];
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 47) = *(a2 + 47);
    a1[768] = *(a2 + 768);
    *(a1 + 97) = v61;
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 100) = a2[100];
    a1[808] = *(a2 + 808);
  }

  *(a1 + 102) = a2[102];
  *(a1 + 103) = a2[103];
  *(a1 + 104) = a2[104];

LABEL_44:
  v67 = a1 + 840;
  v68 = a2 + 105;
  v69 = a2[108];
  if (!v69)
  {
    v71 = *(a2 + 107);
    *v67 = *v68;
    *(a1 + 856) = v71;
    *(a1 + 109) = a2[109];
    v72 = a2[110];
    if (!v72)
    {
LABEL_50:
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_51;
    }

LABEL_48:
    v73 = a2[111];
    *(a1 + 110) = v72;
    *(a1 + 111) = v73;

    goto LABEL_51;
  }

  if (v69 != 1)
  {
    *(a1 + 108) = v69;
    *(a1 + 109) = a2[109];
    (**(v69 - 1))(v67, v68);
    v72 = a2[110];
    if (!v72)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v70 = *(a2 + 107);
  *v67 = *v68;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 109);
  *(a1 + 111) = a2[111];
LABEL_51:
  v74 = a2[112];
  *(a1 + 112) = v74;
  *(a1 + 113) = a2[113];
  *(a1 + 114) = a2[114];
  *(a1 + 115) = a2[115];
  *(a1 + 116) = a2[116];
  *(a1 + 117) = a2[117];
  *(a1 + 118) = a2[118];
  *(a1 + 476) = *(a2 + 476);
  a1[954] = *(a2 + 954);
  v75 = type metadata accessor for PlatformItemList.Item(0);
  v76 = *(v75 + 112);
  v103 = v75;
  __dst = &a1[v76];
  v77 = a2 + v76;
  v78 = type metadata accessor for CommandOperation(0);
  v79 = *(v78 - 8);
  v98 = *(v79 + 48);
  v80 = v74;

  if (v98(v77, 1, v78))
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v77, *(*(v81 - 8) + 64));
  }

  else
  {
    *__dst = *v77;
    v82 = *(v78 + 20);
    v99 = v77;
    v101 = v78;
    v83 = &__dst[v82];
    v84 = &v77[v82];
    v85 = *&v77[v82];
    v86 = *(v84 + 1);
    v87 = v84[16];
    outlined copy of Text.Storage(v85, v86, v87);
    *v83 = v85;
    *(v83 + 1) = v86;
    v83[16] = v87;
    *(v83 + 3) = *(v84 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v96 = *(*(v89 - 8) + 16);

    v96(&v83[v88], &v84[v88], v89);
    v90 = *(v101 + 24);
    v91 = &__dst[v90];
    v92 = &v99[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      *(v91 + 1) = v93;
    }

    else
    {
      *v91 = *v92;
    }

    (*(v79 + 56))(__dst, 0, 1, v101);
  }

  a1[v103[29]] = *(a2 + v103[29]);
  a1[v103[30]] = *(a2 + v103[30]);
  a1[v103[31]] = *(a2 + v103[31]);
  a1[v103[32]] = *(a2 + v103[32]);
  a1[v103[33]] = *(a2 + v103[33]);
  *&a1[v103[34]] = *(a2 + v103[34]);
  *&a1[*(a3 + 20)] = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t assignWithCopy for MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 286;
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v12 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 192) >> 1 == 4294967294)
  {
    if (v12 == 0x1FFFFFFFCLL)
    {
      v13 = *(a2 + 64);
      v14 = *(a2 + 80);
      v15 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v15;
      *(a1 + 64) = v13;
      *(a1 + 80) = v14;
      v16 = *(a2 + 128);
      v17 = *(a2 + 144);
      v18 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v18;
      *(a1 + 128) = v16;
      *(a1 + 144) = v17;
      v19 = *(a2 + 192);
      v20 = *(a2 + 208);
      v21 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v20;
      *(a1 + 224) = v21;
      *(a1 + 192) = v19;
    }

    else
    {
      v31 = *(a2 + 72);
      if (v31 == 255)
      {
        v37 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v37;
      }

      else
      {
        v32 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v32, *(a2 + 72));
        *(a1 + 64) = v32;
        *(a1 + 72) = v31;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v38 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v38;
      v39 = *(a2 + 136);
      v40 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v40;
      *(a1 + 136) = v39;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v41 = *(a2 + 192);
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v42 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v42;
      }

      else
      {
        v43 = *(a2 + 176);
        v44 = *(a2 + 184);
        v45 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v43, v44, *(a2 + 192), v45);
        *(a1 + 176) = v43;
        *(a1 + 184) = v44;
        *(a1 + 192) = v41;
        *(a1 + 200) = v45;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v46 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v46;
      v47 = *(a2 + 240);
      *(a1 + 240) = v47;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v48 = v47;
    }
  }

  else if (v12 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    v22 = *(a2 + 112);
    v24 = *(a2 + 64);
    v23 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v22;
    *(a1 + 64) = v24;
    *(a1 + 80) = v23;
    v25 = *(a2 + 176);
    v27 = *(a2 + 128);
    v26 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v25;
    *(a1 + 128) = v27;
    *(a1 + 144) = v26;
    v29 = *(a2 + 208);
    v28 = *(a2 + 224);
    v30 = *(a2 + 192);
    *(a1 + 235) = *(a2 + 235);
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
    *(a1 + 192) = v30;
  }

  else
  {
    v33 = *(a2 + 72);
    if (*(a1 + 72) == 255)
    {
      if (v33 == 255)
      {
        v51 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v51;
      }

      else
      {
        v49 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v49, *(a2 + 72));
        *(a1 + 64) = v49;
        *(a1 + 72) = v33;
      }
    }

    else if (v33 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 64);
      v50 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v50;
    }

    else
    {
      v34 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v34, *(a2 + 72));
      v35 = *(a1 + 64);
      *(a1 + 64) = v34;
      v36 = *(a1 + 72);
      *(a1 + 72) = v33;
      outlined consume of GraphicsImage.Contents(v35, v36);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v52 = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 108) = v52;
    v53 = *(a2 + 136);
    v54 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v54;
    *(a1 + 136) = v53;
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    v55 = *(a2 + 192);
    v56 = v55 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
    {
      if (v56 == 0x1FFFFFFFELL)
      {
        v57 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v57;
      }

      else
      {
        v59 = *(a2 + 176);
        v60 = *(a2 + 184);
        v61 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v59, v60, *(a2 + 192), v61);
        *(a1 + 176) = v59;
        *(a1 + 184) = v60;
        *(a1 + 192) = v55;
        *(a1 + 200) = v61;
      }
    }

    else if (v56 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 176);
      v58 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v58;
    }

    else
    {
      v62 = *(a2 + 176);
      v63 = *(a2 + 184);
      v64 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v62, v63, *(a2 + 192), v64);
      v65 = *(a1 + 176);
      v66 = *(a1 + 184);
      v67 = *(a1 + 192);
      v68 = *(a1 + 200);
      *(a1 + 176) = v62;
      *(a1 + 184) = v63;
      *(a1 + 192) = v55;
      *(a1 + 200) = v64;
      outlined consume of AccessibilityImageLabel(v65, v66, v67, v68);
    }

    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    v69 = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 228) = v69;
    v70 = *(a1 + 240);
    v71 = *(a2 + 240);
    *(a1 + 240) = v71;
    v72 = v71;

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
  }

  v73 = *(a2 + 264);
  if (*(a1 + 264))
  {
    if (!v73)
    {
      outlined destroy of Image.NamedResolved(a1 + 256);
      v81 = *(a2 + 272);
      v80 = *(a2 + 288);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v81;
      *(a1 + 288) = v80;
      goto LABEL_44;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v74 = *(a1 + 272);
    v75 = *(a2 + 272);
    if (v74 >= 2)
    {
      if (v75 >= 2)
      {
        *(a1 + 272) = v75;
        v84 = v75;

        goto LABEL_43;
      }

      v75 = *(a2 + 272);
    }

    else if (v75 >= 2)
    {
      *(a1 + 272) = v75;
      v76 = v75;
LABEL_43:
      v85 = *(a2 + 280);
      *(a1 + 284) = *(a2 + 284);
      *(a1 + 280) = v85;
      *(a1 + 285) = *(a2 + 285);
      *(a1 + 286) = *v5;
      *(a1 + 288) = *(a2 + 288);

      *(a1 + 296) = *(a2 + 296);

      goto LABEL_44;
    }

    *(a1 + 272) = v75;
    goto LABEL_43;
  }

  if (v73)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    v77 = *(a2 + 272);

    if (v77 >= 2)
    {
      v78 = v77;
    }

    *(a1 + 272) = v77;
    v79 = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 280) = v79;
    *(a1 + 285) = *(a2 + 285);
    *(a1 + 286) = *(a2 + 286);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    v82 = *(a2 + 256);
    v83 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v83;
    *(a1 + 256) = v82;
  }

LABEL_44:
  v86 = *(a2 + 336);
  v87 = v86 & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 336) >> 2 == 0xFFFFFFFFLL)
  {
    if (v87 == 0x3FFFFFFFCLL)
    {
      v88 = *(a2 + 304);
      v89 = *(a2 + 336);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 336) = v89;
      *(a1 + 304) = v88;
      v90 = *(a2 + 352);
      v91 = *(a2 + 368);
      v92 = *(a2 + 384);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 368) = v91;
      *(a1 + 384) = v92;
      *(a1 + 352) = v90;
    }

    else
    {
      v98 = *(a2 + 304);
      v99 = *(a2 + 312);
      v100 = *(a2 + 320);
      v101 = *(a2 + 328);
      v282 = v5;
      v102 = *(a2 + 344);
      v103 = *(a2 + 352);
      v104 = *(a2 + 360);
      v270 = *(a2 + 368);
      v272 = *(a2 + 376);
      v274 = *(a2 + 384);
      v276 = *(a2 + 392);
      v279 = *(a2 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v98, v99, v100, v101, v86, v102, v103, v104, v270, v272, v274, v276, v279);
      *(a1 + 304) = v98;
      *(a1 + 312) = v99;
      *(a1 + 320) = v100;
      *(a1 + 328) = v101;
      *(a1 + 336) = v86;
      *(a1 + 344) = v102;
      *(a1 + 352) = v103;
      *(a1 + 360) = v104;
      *(a1 + 368) = v270;
      *(a1 + 376) = v272;
      *(a1 + 384) = v274;
      *(a1 + 392) = v276;
      v5 = v282;
      *(a1 + 400) = v279;
    }
  }

  else if (v87 == 0x3FFFFFFFCLL)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    v94 = *(a2 + 320);
    v93 = *(a2 + 336);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v94;
    *(a1 + 336) = v93;
    v96 = *(a2 + 368);
    v95 = *(a2 + 384);
    v97 = *(a2 + 352);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 368) = v96;
    *(a1 + 384) = v95;
    *(a1 + 352) = v97;
  }

  else
  {
    v105 = *(a2 + 304);
    v106 = *(a2 + 312);
    v283 = v5;
    v107 = *(a2 + 320);
    v108 = *(a2 + 328);
    v109 = *(a2 + 344);
    v110 = *(a2 + 352);
    v111 = *(a2 + 360);
    v271 = *(a2 + 368);
    v273 = *(a2 + 376);
    v275 = *(a2 + 384);
    v277 = *(a2 + 392);
    v280 = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v105, v106, v107, v108, v86, v109, v110, v111, v271, v273, v275, v277, v280);
    v112 = *(a1 + 304);
    v113 = *(a1 + 312);
    v114 = *(a1 + 320);
    v115 = *(a1 + 328);
    v116 = *(a1 + 336);
    v117 = *(a1 + 344);
    v118 = *(a1 + 352);
    v119 = *(a1 + 360);
    v120 = *(a1 + 368);
    v121 = *(a1 + 384);
    v122 = *(a1 + 400);
    *(a1 + 304) = v105;
    *(a1 + 312) = v106;
    *(a1 + 320) = v107;
    *(a1 + 328) = v108;
    *(a1 + 336) = v86;
    *(a1 + 344) = v109;
    *(a1 + 352) = v110;
    *(a1 + 360) = v111;
    *(a1 + 368) = v271;
    *(a1 + 376) = v273;
    *(a1 + 384) = v275;
    *(a1 + 392) = v277;
    v5 = v283;
    *(a1 + 400) = v280;
    outlined consume of PlatformItemList.Item.SystemItem(v112, v113, v114, v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, SBYTE8(v121), v122);
  }

  v123 = (a1 + 408);
  v124 = *(a1 + 416);
  v125 = *(a2 + 416);
  if (v124 == 1)
  {
    if (v125 == 1)
    {
      *v123 = *(v5 + 122);
      v126 = *(v5 + 138);
      v127 = *(v5 + 154);
      v128 = *(v5 + 170);
      *(a1 + 472) = *(v5 + 186);
      *(a1 + 440) = v127;
      *(a1 + 456) = v128;
      *(a1 + 424) = v126;
      goto LABEL_85;
    }

    *(a1 + 408) = *(a2 + 408);
    *(a1 + 409) = *(a2 + 409);
    *(a1 + 410) = *(a2 + 410);
    *(a1 + 411) = *(a2 + 411);
    *(a1 + 412) = *(a2 + 412);
    v132 = *(a2 + 416);
    if (v132)
    {
      v133 = *(a2 + 424);
      *(a1 + 416) = v132;
      *(a1 + 424) = v133;

      v134 = *(a2 + 432);
      if (v134)
      {
LABEL_58:
        v135 = *(a2 + 440);
        *(a1 + 432) = v134;
        *(a1 + 440) = v135;

        goto LABEL_64;
      }
    }

    else
    {
      *(a1 + 416) = *(a2 + 416);
      v134 = *(a2 + 432);
      if (v134)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 432) = *(a2 + 432);
LABEL_64:
    v138 = *(a2 + 448);
    if (!v138)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  if (v125 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    *v123 = *(v5 + 122);
    v129 = *(v5 + 154);
    v130 = *(v5 + 170);
    v131 = *(v5 + 138);
    *(a1 + 472) = *(v5 + 186);
    *(a1 + 440) = v129;
    *(a1 + 456) = v130;
    *(a1 + 424) = v131;
    goto LABEL_85;
  }

  *(a1 + 408) = *(v5 + 122);
  *(a1 + 409) = *(v5 + 123);
  *(a1 + 410) = *(v5 + 124);
  *(a1 + 411) = *(v5 + 125);
  *(a1 + 412) = *(a2 + 412);
  v136 = *(a2 + 416);
  if (v124)
  {
    if (v136)
    {
      v137 = *(a2 + 424);
      *(a1 + 416) = v136;
      *(a1 + 424) = v137;

      goto LABEL_70;
    }
  }

  else if (v136)
  {
    v139 = *(a2 + 424);
    *(a1 + 416) = v136;
    *(a1 + 424) = v139;

    goto LABEL_70;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_70:
  v140 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v140)
    {
      v141 = *(a2 + 440);
      *(a1 + 432) = v140;
      *(a1 + 440) = v141;

      goto LABEL_77;
    }
  }

  else if (v140)
  {
    v142 = *(a2 + 440);
    *(a1 + 432) = v140;
    *(a1 + 440) = v142;

    goto LABEL_77;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_77:
  v138 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v138)
    {
LABEL_81:
      v144 = *(a2 + 456);
      *(a1 + 448) = v138;
      *(a1 + 456) = v144;

      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_84;
  }

  if (!v138)
  {

    goto LABEL_83;
  }

  v143 = *(a2 + 456);
  *(a1 + 448) = v138;
  *(a1 + 456) = v143;

LABEL_84:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_85:
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v145 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v145)
    {
      v146 = *(a2 + 520);
      *(a1 + 512) = v145;
      *(a1 + 520) = v146;

      goto LABEL_92;
    }
  }

  else if (v145)
  {
    v147 = *(a2 + 520);
    *(a1 + 512) = v145;
    *(a1 + 520) = v147;

    goto LABEL_92;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_92:
  *(a1 + 528) = *(a2 + 528);
  v148 = *(a2 + 816);
  if (*(a1 + 816))
  {
    if (v148)
    {
      *(a1 + 536) = *(a2 + 536);
      *(a1 + 544) = *(a2 + 544);

      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = *(a2 + 560);

      *(a1 + 568) = *(a2 + 568);
      v149 = *(a2 + 576);
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 576) = v149;
      v150 = (a1 + 600);
      v151 = (a2 + 600);
      v152 = *(a1 + 624);
      v153 = *(a2 + 624);
      if (v152 != 1)
      {
        if (v153 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 600);
          v163 = *(a2 + 616);
          v162 = *(a2 + 632);
          *v150 = *v151;
          *(a1 + 616) = v163;
          *(a1 + 632) = v162;
        }

        else
        {
          if (v152)
          {
            if (v153)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 600), (a2 + 600));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 600);
              v181 = *(a2 + 632);
              v182 = *(a2 + 616);
              *v150 = *v151;
              *(a1 + 616) = v182;
              *(a1 + 632) = v181;
            }
          }

          else if (v153)
          {
            *(a1 + 624) = v153;
            *(a1 + 632) = *(a2 + 632);
            (**(v153 - 8))(a1 + 600, a2 + 600);
          }

          else
          {
            v183 = *v151;
            v184 = *(a2 + 616);
            *(a1 + 632) = *(a2 + 632);
            *v150 = v183;
            *(a1 + 616) = v184;
          }

          *(a1 + 640) = *(a2 + 640);
        }

        goto LABEL_124;
      }

      if (v153)
      {
        if (v153 == 1)
        {
          v154 = *v151;
          v155 = *(a2 + 632);
          *(a1 + 616) = *(a2 + 616);
          *(a1 + 632) = v155;
          *v150 = v154;
LABEL_124:
          v185 = *(a2 + 648);
          *(a1 + 656) = *(a2 + 656);
          *(a1 + 648) = v185;
          v186 = (a1 + 664);
          v187 = (a2 + 664);
          v188 = *(a2 + 776);
          if (*(a1 + 776) == 1)
          {
            if (v188 == 1)
            {
              v189 = *(a2 + 680);
              *v186 = *v187;
              *(a1 + 680) = v189;
              v190 = *(a2 + 696);
              v191 = *(a2 + 712);
              v192 = *(a2 + 744);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 744) = v192;
              *(a1 + 696) = v190;
              *(a1 + 712) = v191;
              v193 = *(a2 + 760);
              v194 = *(a2 + 776);
              v195 = *(a2 + 792);
              *(a1 + 808) = *(a2 + 808);
              *(a1 + 776) = v194;
              *(a1 + 792) = v195;
              *(a1 + 760) = v193;
            }

            else
            {
              v203 = *v187;
              *(a1 + 672) = *(a2 + 672);
              *v186 = v203;
              v204 = *(a2 + 680);
              *(a1 + 688) = *(a2 + 688);
              *(a1 + 680) = v204;
              *(a1 + 689) = *(a2 + 689);
              *(a1 + 690) = *(a2 + 690);
              *(a1 + 691) = *(v5 + 405);
              *(a1 + 692) = *(a2 + 692);
              *(a1 + 696) = *(a2 + 696);
              *(a1 + 704) = *(a2 + 704);
              *(a1 + 712) = *(a2 + 712);
              *(a1 + 720) = *(a2 + 720);
              *(a1 + 728) = *(a2 + 728);
              *(a1 + 736) = *(a2 + 736);
              *(a1 + 744) = *(a2 + 744);
              *(a1 + 745) = *(a2 + 745);
              *(a1 + 752) = *(a2 + 752);
              *(a1 + 760) = *(a2 + 760);
              *(a1 + 768) = *(a2 + 768);
              *(a1 + 776) = *(a2 + 776);
              v205 = *(a2 + 784);
              *(a1 + 800) = *(a2 + 800);
              *(a1 + 784) = v205;
              *(a1 + 808) = *(a2 + 808);
            }
          }

          else if (v188 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
            v196 = *(a2 + 680);
            *v186 = *v187;
            *(a1 + 680) = v196;
            v197 = *(a2 + 744);
            v199 = *(a2 + 696);
            v198 = *(a2 + 712);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 744) = v197;
            *(a1 + 696) = v199;
            *(a1 + 712) = v198;
            v201 = *(a2 + 776);
            v200 = *(a2 + 792);
            v202 = *(a2 + 760);
            *(a1 + 808) = *(a2 + 808);
            *(a1 + 776) = v201;
            *(a1 + 792) = v200;
            *(a1 + 760) = v202;
          }

          else
          {
            v206 = *v187;
            *(a1 + 672) = *(a2 + 672);
            *v186 = v206;
            v207 = *(a2 + 680);
            *(a1 + 688) = *(a2 + 688);
            *(a1 + 680) = v207;
            *(a1 + 689) = *(a2 + 689);
            *(a1 + 690) = *(a2 + 690);
            *(a1 + 691) = *(v5 + 405);
            *(a1 + 692) = *(a2 + 692);
            *(a1 + 696) = *(a2 + 696);
            *(a1 + 704) = *(a2 + 704);
            *(a1 + 712) = *(a2 + 712);
            *(a1 + 720) = *(a2 + 720);
            *(a1 + 728) = *(a2 + 728);
            *(a1 + 736) = *(a2 + 736);
            *(a1 + 744) = *(v5 + 458);
            *(a1 + 745) = *(v5 + 459);
            *(a1 + 752) = *(a2 + 752);
            *(a1 + 760) = *(a2 + 760);
            *(a1 + 768) = *(a2 + 768);
            *(a1 + 776) = *(a2 + 776);

            v208 = *(a2 + 784);
            *(a1 + 800) = *(a2 + 800);
            *(a1 + 784) = v208;
            *(a1 + 808) = *(a2 + 808);
          }

          *(a1 + 816) = *(a2 + 816);

          *(a1 + 824) = *(a2 + 824);

          *(a1 + 832) = *(a2 + 832);

          goto LABEL_132;
        }

        *(a1 + 624) = v153;
        *(a1 + 632) = *(a2 + 632);
        (**(v153 - 8))(a1 + 600, a2 + 600);
      }

      else
      {
        v179 = *v151;
        v180 = *(a2 + 616);
        *(a1 + 632) = *(a2 + 632);
        *v150 = v179;
        *(a1 + 616) = v180;
      }

      *(a1 + 640) = *(a2 + 640);

      goto LABEL_124;
    }

    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
LABEL_103:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_132;
  }

  if (!v148)
  {
    goto LABEL_103;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v156 = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 576) = v156;
  v157 = (a1 + 600);
  v158 = (a2 + 600);
  v159 = *(a2 + 624);

  if (!v159)
  {
    v164 = *v158;
    v165 = *(a2 + 616);
    *(a1 + 632) = *(a2 + 632);
    *v157 = v164;
    *(a1 + 616) = v165;
LABEL_111:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_112;
  }

  if (v159 != 1)
  {
    *(a1 + 624) = v159;
    *(a1 + 632) = *(a2 + 632);
    (**(v159 - 8))(a1 + 600, a2 + 600, v159);
    goto LABEL_111;
  }

  v160 = *v158;
  v161 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v161;
  *v157 = v160;
LABEL_112:
  v166 = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 648) = v166;
  v167 = (a1 + 664);
  v168 = (a2 + 664);
  if (*(a2 + 776) == 1)
  {
    v169 = *(a2 + 680);
    *v167 = *v168;
    *(a1 + 680) = v169;
    v170 = *(a2 + 696);
    v171 = *(a2 + 712);
    v172 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v172;
    *(a1 + 696) = v170;
    *(a1 + 712) = v171;
    v173 = *(a2 + 760);
    v174 = *(a2 + 776);
    v175 = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 776) = v174;
    *(a1 + 792) = v175;
    *(a1 + 760) = v173;
  }

  else
  {
    v176 = *v168;
    *(a1 + 672) = *(a2 + 672);
    *v167 = v176;
    v177 = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 680) = v177;
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 690) = *(a2 + 690);
    *(a1 + 691) = *(v5 + 405);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 745) = *(a2 + 745);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    v178 = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 784) = v178;
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_132:
  v209 = (a1 + 840);
  v210 = (a2 + 840);
  v211 = *(a1 + 864);
  v212 = *(a2 + 864);
  if (v211 == 1)
  {
    if (v212)
    {
      if (v212 == 1)
      {
        v213 = *v210;
        v214 = *(a2 + 856);
        v215 = *(a2 + 872);
        *(a1 + 888) = *(a2 + 888);
        *(a1 + 856) = v214;
        *(a1 + 872) = v215;
        *v209 = v213;
        goto LABEL_156;
      }

      *(a1 + 864) = v212;
      *(a1 + 872) = *(a2 + 872);
      (**(v212 - 8))(a1 + 840, a2 + 840);
    }

    else
    {
      v219 = *v210;
      v220 = *(a2 + 856);
      *(a1 + 872) = *(a2 + 872);
      *v209 = v219;
      *(a1 + 856) = v220;
    }

    v221 = *(a2 + 880);
    if (!v221)
    {
      goto LABEL_155;
    }

LABEL_153:
    v227 = *(a2 + 888);
    *(a1 + 880) = v221;
    *(a1 + 888) = v227;

    goto LABEL_156;
  }

  if (v212 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    v217 = *(a2 + 856);
    v216 = *(a2 + 872);
    v218 = *v210;
    *(a1 + 888) = *(a2 + 888);
    *(a1 + 856) = v217;
    *(a1 + 872) = v216;
    *v209 = v218;
    goto LABEL_156;
  }

  if (v211)
  {
    if (v212)
    {
      __swift_assign_boxed_opaque_existential_1((a1 + 840), (a2 + 840));
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1 + 840);
      v222 = *(a2 + 872);
      v223 = *(a2 + 856);
      *v209 = *v210;
      *(a1 + 856) = v223;
      *(a1 + 872) = v222;
    }
  }

  else if (v212)
  {
    *(a1 + 864) = v212;
    *(a1 + 872) = *(a2 + 872);
    (**(v212 - 8))(a1 + 840, a2 + 840);
  }

  else
  {
    v224 = *v210;
    v225 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *v209 = v224;
    *(a1 + 856) = v225;
  }

  v221 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v221)
    {
      v226 = *(a2 + 888);
      *(a1 + 880) = v221;
      *(a1 + 888) = v226;

      goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v221)
  {
    goto LABEL_153;
  }

LABEL_155:
  *(a1 + 880) = *(a2 + 880);
LABEL_156:
  v228 = *(a1 + 896);
  v229 = *(a2 + 896);
  *(a1 + 896) = v229;
  v230 = v229;

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  *(a1 + 954) = *(a2 + 954);
  v231 = type metadata accessor for PlatformItemList.Item(0);
  v232 = v231[28];
  v233 = (a1 + v232);
  v234 = (a2 + v232);
  v235 = type metadata accessor for CommandOperation(0);
  v236 = *(v235 - 8);
  v237 = *(v236 + 48);
  LODWORD(v228) = v237(v233, 1, v235);
  v238 = v237(v234, 1, v235);
  if (!v228)
  {
    if (!v238)
    {
      *v233 = *v234;
      v253 = *(v235 + 20);
      v254 = &v233[v253];
      v285 = &v234[v253];
      v255 = *&v234[v253];
      v256 = *&v234[v253 + 8];
      v257 = v234[v253 + 16];
      outlined copy of Text.Storage(v255, v256, v257);
      v258 = *v254;
      v259 = *(v254 + 1);
      v260 = v254[16];
      *v254 = v255;
      *(v254 + 1) = v256;
      v254[16] = v257;
      outlined consume of Text.Storage(v258, v259, v260);
      *(v254 + 3) = *(v285 + 3);

      v261 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v262 = type metadata accessor for UUID();
      (*(*(v262 - 8) + 24))(&v254[v261], &v285[v261], v262);
      v263 = *(v235 + 24);
      v264 = &v233[v263];
      v265 = &v234[v263];
      v266 = *&v234[v263];
      if (*v264)
      {
        if (v266)
        {
          v267 = *(v265 + 1);
          *v264 = v266;
          v264[1] = v267;

          goto LABEL_168;
        }
      }

      else if (v266)
      {
        v269 = *(v265 + 1);
        *v264 = v266;
        v264[1] = v269;

        goto LABEL_168;
      }

      *v264 = *v265;
      goto LABEL_168;
    }

    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v233, type metadata accessor for CommandOperation);
    goto LABEL_162;
  }

  if (v238)
  {
LABEL_162:
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v233, v234, *(*(v252 - 8) + 64));
    goto LABEL_168;
  }

  *v233 = *v234;
  v239 = *(v235 + 20);
  v240 = v234;
  v281 = v234;
  v284 = v233;
  v241 = &v233[v239];
  v242 = &v240[v239];
  v243 = *&v240[v239];
  v244 = *&v240[v239 + 8];
  v245 = v240[v239 + 16];
  outlined copy of Text.Storage(v243, v244, v245);
  *v241 = v243;
  *(v241 + 1) = v244;
  v241[16] = v245;
  *(v241 + 3) = *(v242 + 3);
  v246 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v247 = type metadata accessor for UUID();
  v278 = *(*(v247 - 8) + 16);

  v278(&v241[v246], &v242[v246], v247);
  v248 = *(v235 + 24);
  v249 = &v284[v248];
  v250 = &v281[v248];
  if (*v250)
  {
    v251 = v250[1];
    *v249 = *v250;
    v249[1] = v251;
  }

  else
  {
    *v249 = *v250;
  }

  (*(v236 + 56))(v284, 0, 1, v235);
LABEL_168:
  *(a1 + v231[29]) = *(a2 + v231[29]);
  *(a1 + v231[30]) = *(a2 + v231[30]);
  *(a1 + v231[31]) = *(a2 + v231[31]);
  *(a1 + v231[32]) = *(a2 + v231[32]);
  *(a1 + v231[33]) = *(a2 + v231[33]);
  *(a1 + v231[34]) = *(a2 + v231[34]);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t initializeWithTake for MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v7;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  v11 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v14 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v16;
  *(a1 + 472) = *(a2 + 472);
  v17 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v17;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v18 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v18;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v19 = type metadata accessor for PlatformItemList.Item(0);
  v20 = v19[28];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = type metadata accessor for CommandOperation(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23))
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v21, v22, *(*(v25 - 8) + 64));
  }

  else
  {
    *v21 = *v22;
    v26 = *(v23 + 20);
    v27 = &v21[v26];
    v28 = &v22[v26];
    v29 = *&v22[v26 + 16];
    *v27 = *&v22[v26];
    v27[1] = v29;
    v35 = a3;
    v30 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v31 = type metadata accessor for UUID();
    v32 = v27 + v30;
    v33 = &v28[v30];
    a3 = v35;
    (*(*(v31 - 8) + 32))(v32, v33, v31);
    *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
    (*(v24 + 56))(v21, 0, 1, v23);
  }

  *(a1 + v19[29]) = *(a2 + v19[29]);
  *(a1 + v19[30]) = *(a2 + v19[30]);
  *(a1 + v19[31]) = *(a2 + v19[31]);
  *(a1 + v19[32]) = *(a2 + v19[32]);
  *(a1 + v19[33]) = *(a2 + v19[33]);
  *(a1 + v19[34]) = *(a2 + v19[34]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 286;
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v10 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v10;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    v12 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v12;
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    v14 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v14;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v15 = *(a1 + 72);
  if (v15 != 255)
  {
    v16 = *(a2 + 72);
    if (v16 != 255)
    {
      v17 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v16;
      outlined consume of GraphicsImage.Contents(v17, v15);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v18 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v18 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v20 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v20;
    goto LABEL_16;
  }

  v19 = *(a2 + 192);
  if (v19 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v21 = *(a2 + 200);
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  v24 = *(a1 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v19;
  *(a1 + 200) = v21;
  outlined consume of AccessibilityImageLabel(v22, v23, v18, v24);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v25 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v29 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v29;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v26 = *(a2 + 264);
  if (!v26)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v26;

  v27 = *(a1 + 272);
  v28 = *(a2 + 272);
  if (v27 >= 2)
  {
    if (v28 >= 2)
    {
      *(a1 + 272) = v28;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v28;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v5;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v30 = *(a1 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
    goto LABEL_31;
  }

  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v35 = *(a1 + 304);
  v36 = *(a1 + 312);
  v37 = *(a1 + 320);
  v38 = *(a1 + 328);
  v39 = *(a1 + 344);
  v40 = *(a1 + 352);
  v41 = *(a1 + 360);
  v42 = *(a1 + 368);
  v43 = *(a1 + 384);
  v44 = *(a1 + 400);
  v45 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v45;
  *(a1 + 336) = v31;
  v46 = *(v5 + 74);
  *(a1 + 344) = *(v5 + 58);
  *(a1 + 360) = v46;
  v47 = *(v5 + 106);
  *(a1 + 376) = *(v5 + 90);
  *(a1 + 392) = v47;
  outlined consume of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v30, v39, v40, v41, v42, *(&v42 + 1), v43, SBYTE8(v43), v44);
LABEL_31:
  v48 = *(a1 + 416);
  if (v48 == 1)
  {
LABEL_34:
    v50 = *(v5 + 138);
    v51 = *(v5 + 170);
    *(a1 + 440) = *(v5 + 154);
    *(a1 + 456) = v51;
    *(a1 + 472) = *(v5 + 186);
    *(a1 + 408) = *(v5 + 122);
    *(a1 + 424) = v50;
    goto LABEL_57;
  }

  v49 = *(a2 + 416);
  if (v49 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v5 + 122);
  *(a1 + 409) = *(v5 + 123);
  *(a1 + 410) = *(v5 + 124);
  *(a1 + 411) = *(v5 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v48)
  {
    if (v49)
    {
      v52 = *(a2 + 424);
      *(a1 + 416) = v49;
      *(a1 + 424) = v52;

      goto LABEL_42;
    }
  }

  else if (v49)
  {
    v53 = *(a2 + 424);
    *(a1 + 416) = v49;
    *(a1 + 424) = v53;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v54 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v54)
    {
      v55 = *(a2 + 440);
      *(a1 + 432) = v54;
      *(a1 + 440) = v55;

      goto LABEL_49;
    }
  }

  else if (v54)
  {
    v56 = *(a2 + 440);
    *(a1 + 432) = v54;
    *(a1 + 440) = v56;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v57 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v57)
    {
      v59 = *(a2 + 456);
      *(a1 + 448) = v57;
      *(a1 + 456) = v59;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v57)
  {

    goto LABEL_55;
  }

  v58 = *(a2 + 456);
  *(a1 + 448) = v57;
  *(a1 + 456) = v58;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v60 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v60;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v61 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v61)
    {
      v62 = *(a2 + 520);
      *(a1 + 512) = v61;
      *(a1 + 520) = v62;

      goto LABEL_64;
    }
  }

  else if (v61)
  {
    v63 = *(a2 + 520);
    *(a1 + 512) = v61;
    *(a1 + 520) = v63;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v64 = (a1 + 600);
  v65 = (a2 + 600);
  v66 = *(a1 + 624);
  if (v66 == 1)
  {
LABEL_69:
    v68 = *(a2 + 616);
    *v64 = *v65;
    *(a1 + 616) = v68;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v67 = *(a2 + 624);
  if (v67 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v66)
  {
    v69 = (a1 + 600);
    if (v67)
    {
      __swift_destroy_boxed_opaque_existential_1(v69);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v69);
    }
  }

  v70 = *(a2 + 616);
  *v64 = *v65;
  *(a1 + 616) = v70;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v71 = (a1 + 664);
  v72 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v73 = *(a2 + 776);
    if (v73 != 1)
    {
      *v71 = *v72;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v5 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v78 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v78;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v5 + 458);
      *(a1 + 745) = *(v5 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v73;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v74 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v74;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v75 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v75;
  v76 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v76;
  v77 = *(a2 + 680);
  *v71 = *v72;
  *(a1 + 680) = v77;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v79 = (a1 + 840);
  v80 = (a2 + 840);
  v81 = *(a1 + 864);
  if (v81 == 1)
  {
LABEL_86:
    v83 = *(a2 + 856);
    *v79 = *v80;
    *(a1 + 856) = v83;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v82 = *(a2 + 864);
  if (v82 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v81)
  {
    v102 = (a1 + 840);
    if (v82)
    {
      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v102);
    }
  }

  v116 = *(a2 + 856);
  *v79 = *v80;
  *(a1 + 856) = v116;
  *(a1 + 872) = *(a2 + 872);
  v117 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v117)
    {
      v118 = *(a2 + 888);
      *(a1 + 880) = v117;
      *(a1 + 888) = v118;

      goto LABEL_87;
    }
  }

  else if (v117)
  {
    v119 = *(a2 + 888);
    *(a1 + 880) = v117;
    *(a1 + 888) = v119;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v84 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v85 = type metadata accessor for PlatformItemList.Item(0);
  v86 = v85[28];
  v87 = (a1 + v86);
  v88 = (a2 + v86);
  v89 = type metadata accessor for CommandOperation(0);
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v92 = v91(v87, 1, v89);
  v93 = v91(v88, 1, v89);
  if (!v92)
  {
    if (!v93)
    {
      *v87 = *v88;
      v103 = *(v89 + 20);
      v104 = &v87[v103];
      v105 = &v88[v103];
      LOBYTE(v103) = v88[v103 + 16];
      v106 = *v104;
      v107 = *(v104 + 1);
      v108 = v104[16];
      *v104 = *v105;
      v104[16] = v103;
      outlined consume of Text.Storage(v106, v107, v108);
      *(v104 + 3) = *(v105 + 3);

      v109 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v110 = type metadata accessor for UUID();
      (*(*(v110 - 8) + 40))(&v104[v109], &v105[v109], v110);
      v111 = *(v89 + 24);
      v112 = &v87[v111];
      v113 = &v88[v111];
      v114 = *v113;
      if (*v112)
      {
        if (v114)
        {
          v115 = v113[1];
          *v112 = v114;
          v112[1] = v115;

          goto LABEL_93;
        }
      }

      else if (v114)
      {
        v120 = v113[1];
        *v112 = v114;
        v112[1] = v120;
        goto LABEL_93;
      }

      *v112 = *v113;
      goto LABEL_93;
    }

    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v87, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v93)
  {
LABEL_92:
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v87, v88, *(*(v100 - 8) + 64));
    goto LABEL_93;
  }

  *v87 = *v88;
  v94 = *(v89 + 20);
  v95 = &v87[v94];
  v96 = &v88[v94];
  v97 = *&v88[v94 + 16];
  *v95 = *&v88[v94];
  *(v95 + 1) = v97;
  v98 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v99 = type metadata accessor for UUID();
  (*(*(v99 - 8) + 32))(&v95[v98], &v96[v98], v99);
  *&v87[*(v89 + 24)] = *&v88[*(v89 + 24)];
  (*(v90 + 56))(v87, 0, 1, v89);
LABEL_93:
  *(a1 + v85[29]) = *(a2 + v85[29]);
  *(a1 + v85[30]) = *(a2 + v85[30]);
  *(a1 + v85[31]) = *(a2 + v85[31]);
  *(a1 + v85[32]) = *(a2 + v85[32]);
  *(a1 + v85[33]) = *(a2 + v85[33]);
  *(a1 + v85[34]) = *(a2 + v85[34]);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

void *initializeBufferWithCopyOfBuffer for MenuVisitor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v5 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v5;
    v6 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v6;
    *(a1 + 48) = *(a2 + 48);
    v7 = *(a3 + 32);
    __dst = (a1 + v7);
    v8 = a2 + v7;
    *(a1 + 56) = a2[7];
    v9 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
    v20 = *(v9 - 8);
    v10 = *(v20 + 48);

    if (v10(v8, 1, v9))
    {
      type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
      memcpy(__dst, v8, *(*(v11 - 8) + 64));
    }

    else
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = v8[16];
      outlined copy of Text.Storage(*v8, v14, v15);
      *__dst = v13;
      __dst[1] = v14;
      *(__dst + 16) = v15;
      __dst[3] = *(v8 + 3);
      v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v17 = type metadata accessor for UUID();
      v18 = *(*(v17 - 8) + 16);

      v18(__dst + v16, &v8[v16], v17);
      (*(v20 + 56))(__dst, 0, 1, v9);
    }
  }

  return v3;
}

uint64_t initializeWithCopy for MenuVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a3 + 32);
  __dst = (a1 + v6);
  v7 = (a2 + v6);
  *(a1 + 56) = *(a2 + 56);
  v8 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v18 = *(v8 - 8);
  v9 = *(v18 + 48);

  if (v9(v7, 1, v8))
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
    memcpy(__dst, v7, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = *v7;
    v12 = *(v7 + 1);
    v13 = v7[16];
    outlined copy of Text.Storage(*v7, v12, v13);
    *__dst = v11;
    __dst[1] = v12;
    *(__dst + 16) = v13;
    __dst[3] = *(v7 + 3);
    v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 16);

    v16(__dst + v14, &v7[v14], v15);
    (*(v18 + 56))(__dst, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithCopy for MenuVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v22 = *v8;
      v23 = *(v8 + 8);
      v24 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v23, v24);
      v25 = *v7;
      v26 = *(v7 + 8);
      v27 = *(v7 + 16);
      *v7 = v22;
      *(v7 + 8) = v23;
      *(v7 + 16) = v24;
      outlined consume of Text.Storage(v25, v26, v27);
      *(v7 + 24) = *(v8 + 24);

      v28 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 24))(v7 + v28, v8 + v28, v29);
      return a1;
    }

    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v20 - 8) + 64));
    return a1;
  }

  v14 = *v8;
  v15 = *(v8 + 8);
  v16 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v15, v16);
  *v7 = v14;
  *(v7 + 8) = v15;
  *(v7 + 16) = v16;
  *(v7 + 24) = *(v8 + 24);
  v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 16);

  v19(v7 + v17, v8 + v17, v18);
  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

uint64_t initializeWithTake for MenuVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a3 + 32);
  v5 = (a2 + v4);
  v6 = (a1 + v4);
  *(a1 + 56) = *(a2 + 56);
  v7 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7))
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
    memcpy(v6, v5, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = v5[1];
    *v6 = *v5;
    v6[1] = v10;
    v11 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(v6 + v11, v5 + v11, v12);
    (*(v8 + 56))(v6, 0, 1, v7);
  }

  return a1;
}

uint64_t assignWithTake for MenuVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a3 + 32);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      v19 = *(v8 + 16);
      v20 = *v7;
      v21 = *(v7 + 1);
      v22 = *(v7 + 16);
      *v7 = *v8;
      *(v7 + 16) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(v7 + 3) = *(v8 + 3);

      v23 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 40))(v7 + v23, v8 + v23, v24);
      return a1;
    }

    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    return a1;
  }

  v14 = v8[1];
  *v7 = *v8;
  v7[1] = v14;
  v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(v7 + v15, v8 + v15, v16);
  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MenuBuilderContext.PlacementKind and conformance MenuBuilderContext.PlacementKind()
{
  result = lazy protocol witness table cache variable for type MenuBuilderContext.PlacementKind and conformance MenuBuilderContext.PlacementKind;
  if (!lazy protocol witness table cache variable for type MenuBuilderContext.PlacementKind and conformance MenuBuilderContext.PlacementKind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuBuilderContext.PlacementKind, &type metadata for MenuBuilderContext.PlacementKind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuBuilderContext.PlacementKind and conformance MenuBuilderContext.PlacementKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuVisitor.Options and conformance MenuVisitor.Options()
{
  result = lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options;
  if (!lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuVisitor.Options, &unk_1EFFC8378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options;
  if (!lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuVisitor.Options, &unk_1EFFC8378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options;
  if (!lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuVisitor.Options, &unk_1EFFC8378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options;
  if (!lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MenuVisitor.Options, &unk_1EFFC8378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MenuVisitor.Options and conformance MenuVisitor.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowToolbarFullScreenVisibility.Role and conformance WindowToolbarFullScreenVisibility.Role()
{
  result = lazy protocol witness table cache variable for type WindowToolbarFullScreenVisibility.Role and conformance WindowToolbarFullScreenVisibility.Role;
  if (!lazy protocol witness table cache variable for type WindowToolbarFullScreenVisibility.Role and conformance WindowToolbarFullScreenVisibility.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowToolbarFullScreenVisibility.Role, &type metadata for WindowToolbarFullScreenVisibility.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowToolbarFullScreenVisibility.Role and conformance WindowToolbarFullScreenVisibility.Role);
  }

  return result;
}

uint64_t UIViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  UIViewResponder.init()();
  return v0;
}

void *UIViewResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  if (MEMORY[0x18D008A80]())
  {
    return PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = 0.0;
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (v5)
  {

LABEL_8:
    dispatch thunk of ViewResponder.children.getter();
    swift_beginAccess();
    type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);
    ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)();
    swift_endAccess();

    v11 = v13;
    v8 = v14;

    if (v13)
    {
      v12 = 16.0;
      if (v14 > 16.0)
      {
        v12 = v14;
      }

      if ((v5 & 2) == 0)
      {
        v8 = v12;
      }
    }

    goto LABEL_13;
  }

  v9 = Strong;
  v10 = [Strong isUserInteractionEnabled];

  if (v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = 0;
LABEL_13:
  PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)();

  if (v8 <= v14)
  {
    v8 = v14;
  }

  result = dispatch thunk of ViewResponder.children.getter();
  *a4 = v13 | v11;
  *(a4 + 8) = v8;
  *(a4 + 16) = result;
  return result;
}

Swift::Void __swiftcall UIViewResponder.extendPrintTree(string:)(Swift::String *string)
{
  v5 = 91;
  v6 = 0xE100000000000000;
  swift_beginAccess();
  outlined init with copy of ContentResponderHelper<UIViewContentResponder>(v1 + 56, v4);
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);
  ContentResponderHelper.size.getter();
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v4, type metadata accessor for ContentResponderHelper<UIViewContentResponder>);
  v2 = Double.description.getter();
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
  outlined init with copy of ContentResponderHelper<UIViewContentResponder>(v1 + 56, v4);
  ContentResponderHelper.size.getter();
  outlined destroy of ContentResponderHelper<UIViewContentResponder>(v4, type metadata accessor for ContentResponderHelper<UIViewContentResponder>);
  v3 = Double.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  MEMORY[0x18D00C9B0](v5, v6);
}

__C::CGRect __swiftcall UIViewResponder.alignmentRect(hostView:)(UIView *hostView)
{
  [(UIView *)hostView bounds];

  [(UIView *)hostView alignmentRectForFrame:?];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t UIViewResponder.platformViewIsEnabled.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isUserInteractionEnabled];
  }

  else
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return 0;
    }

    v1 = v3;
    v2 = 1;
  }

  return v2;
}

void __swiftcall UIViewResponder.platformViewHitTest(globalPoint:cacheKey:)(UIView_optional *__return_ptr retstr, CGPoint globalPoint, Swift::UInt32_optional cacheKey)
{
  y = globalPoint.y;
  x = globalPoint.x;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong window];
    if (v8)
    {

      [v7 convertPoint:0 fromView:{x, y}];
      v10 = v9;
      v12 = v11;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong() && (v13 = *(v3 + 24), v14 = swift_getObjectType(), v15 = type metadata accessor for CurrentEventProvider(), (*(v13 + 16))(v19, v15, v15, v14, v13), swift_unknownObjectRelease(), v19[0]))
      {
        v16 = v19[1];
        ObjectType = swift_getObjectType();
        v18 = (*(v16 + 8))(ObjectType, v16);
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
      }

      [v7 hitTest:v18 withEvent:{v10, v12}];
    }

    else
    {
    }
  }
}

uint64_t UIViewResponder._shouldUsePlatformViewAsParentContainer.getter()
{
  v1 = *(v0 + 248);
  if (v1 == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong methodForSelector_];
    }

    else
    {
      v4 = 0;
    }

    if (one-time initialization token for uiViewGestureContainerIMP != -1)
    {
      swift_once();
    }

    if (v4)
    {
      v5 = static UIViewResponder.uiViewGestureContainerIMP == v4;
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(v1) = !v5;
    *(v0 + 248) = v1;
  }

  return v1 & 1;
}

void UIViewContentResponder.contains(points:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      v11 = a3;
      v13 = v12;
      specialized Collection.mapBool(_:)(partial apply for closure #1 in UIViewContentResponder.contains(points:size:), a1, a2, v11);

      return;
    }
  }

  v14 = 0;
  if (a1 && a2)
  {
    v15 = 0;
    v16 = 16 * a2;
    v17 = (a1 + 8);
    do
    {
      v18 = *(v17 - 1);
      v19 = fmin(v18, *v17);
      v20 = v18 < a4;
      if (*v17 >= a5)
      {
        v20 = 0;
      }

      if (v19 < 0.0)
      {
        v20 = 0;
      }

      if (v15 < 0x41)
      {
        if (v15 == 64)
        {
          v21 = 0;
          if (!v20)
          {
LABEL_18:
            v14 &= ~v21;
            goto LABEL_8;
          }
        }

        else
        {
          v21 = 1 << v15;
          if (!v20)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v21 = 0;
        if (!v20)
        {
          goto LABEL_18;
        }
      }

      v14 |= v21;
LABEL_8:
      v17 += 2;
      ++v15;
      v16 -= 16;
    }

    while (v16);
  }

  *a3 = v14;
}

uint64_t specialized Collection.mapBool(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a2 && a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = 16 * a3;
    while (1)
    {
      v11 = *(a2 + 16 * v8);
      result = v6(&v11);
      if (v8 < 0x40)
      {
        v10 = 1 << v8;
        if ((result & 1) == 0)
        {
LABEL_10:
          v7 &= ~v10;
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0;
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v7 |= v10;
LABEL_5:
      ++v8;
      v9 -= 16;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
LABEL_12:
  *a4 = v7;
  return result;
}

id closure #1 in UIViewContentResponder.contains(points:size:)(double *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(a3 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  v10 = [a2 pointInside:v9 withEvent:{v5, v6}];

  return v10;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance UIViewContentResponder@<D0>(uint64_t a1@<X8>)
{
  ContentResponder.contentPath(size:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance UIViewContentResponder@<D0>(uint64_t a1@<X8>)
{
  ContentResponder.contentPath(size:kind:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

id one-time initialization function for uiViewGestureContainerIMP()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  result = [swift_getObjCClassFromMetadata() instanceMethodForSelector_];
  if (result)
  {
    static UIViewResponder.uiViewGestureContainerIMP = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIViewResponder.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 240) = MEMORY[0x1E69E7CC0];
  *(v3 + 248) = 2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
  ContentResponderHelper.init()();
  *(v3 + 200) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 216) = 1;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t UIViewResponder.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 232);
}

uint64_t assignWithCopy for UIViewContentResponder(uint64_t a1, uint64_t a2)
{
  *(swift_unknownObjectWeakCopyAssign() + 8) = *(a2 + 8);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t outlined init with copy of ContentResponderHelper<UIViewContentResponder>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentResponderHelper<UIViewContentResponder>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for BorderedButtonColorSpec(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  v4 = a2[4];
  v5 = ~*(a2 + 32);

  if (v5)
  {
    v6 = a2[3];
    outlined copy of Material.ID(v6, v4);
    *(a1 + 24) = v6;
    *(a1 + 32) = v4;
    *(a1 + 36) = HIDWORD(v4);
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
  }

  *(a1 + 40) = *(a2 + 40);
  v7 = a2[6];
  if (v7 >= 3)
  {
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = *(a2 + 7);
  return a1;
}

uint64_t *assignWithCopy for BorderedButtonColorSpec(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  v4 = *(a2 + 32);
  if (*(a1 + 32) != 0xFF)
  {
    if (v4 != 255)
    {
      v6 = a2[3];
      outlined copy of Material.ID(v6, *(a2 + 32));
      v7 = a1[3];
      a1[3] = v6;
      v8 = *(a1 + 32);
      *(a1 + 32) = v4;
      outlined consume of Material.ID(v7, v8);
      goto LABEL_8;
    }

    outlined destroy of Material((a1 + 3));
LABEL_6:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_9;
  }

  if (v4 == 255)
  {
    goto LABEL_6;
  }

  v5 = a2[3];
  outlined copy of Material.ID(v5, *(a2 + 32));
  a1[3] = v5;
  *(a1 + 32) = v4;
LABEL_8:
  *(a1 + 9) = *(a2 + 9);
LABEL_9:
  v9 = a1 + 6;
  v10 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  v11 = a2[6];
  if (v10 >= 3)
  {
    if (v11 >= 3)
    {
      *v9 = v11;
    }

    else
    {
      outlined destroy of Color((a1 + 6));
      *v9 = a2[6];
    }
  }

  else
  {
    *v9 = v11;
    if (v11 >= 3)
    {
    }
  }

  a1[7] = a2[7];
  a1[8] = a2[8];
  return a1;
}

uint64_t *assignWithTake for BorderedButtonColorSpec(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  v4 = *(a1 + 32);
  if (v4 == 255)
  {
    goto LABEL_4;
  }

  v5 = a2[4];
  if (*(a2 + 32) == 0xFF)
  {
    outlined destroy of Material((a1 + 3));
LABEL_4:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_6;
  }

  v6 = HIDWORD(v5);
  v7 = a1[3];
  a1[3] = a2[3];
  *(a1 + 32) = v5;
  outlined consume of Material.ID(v7, v4);
  *(a1 + 9) = v6;
LABEL_6:
  v9 = a1 + 6;
  v8 = a1[6];
  *(a1 + 40) = *(a2 + 40);
  v10 = a2[6];
  if (v8 >= 3)
  {
    if (v10 >= 3)
    {
      *v9 = v10;

      goto LABEL_11;
    }

    outlined destroy of Color((a1 + 6));
  }

  *v9 = v10;
LABEL_11:
  *(a1 + 7) = *(a2 + 7);
  return a1;
}

uint64_t destroy for BorderedButtonSpec(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 41));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for BorderedButtonSpec(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 41);
  v10 = *(v2 + 40);
  outlined copy of Environment<KeyboardShortcut?>.Content(v6, v7, v8, v10, v9);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  v11 = *(v2 + 48);
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v11, v2);
  *(a1 + 48) = v11;
  *(a1 + 56) = v2;
  return a1;
}

uint64_t assignWithCopy for BorderedButtonSpec(uint64_t a1, uint64_t a2)
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
  v10 = *(v2 + 32);
  v11 = *(v2 + 41);
  v12 = *(v2 + 40);
  outlined copy of Environment<KeyboardShortcut?>.Content(v8, v9, v10, v12, v11);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 41);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  v17 = *(a1 + 40);
  *(a1 + 40) = v12;
  *(a1 + 41) = v11;
  outlined consume of Environment<KeyboardShortcut?>.Content(v13, v14, v15, v17, v16);
  v18 = *(v2 + 48);
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v18, v2);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  *(a1 + 48) = v18;
  *(a1 + 56) = v2;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  return a1;
}

uint64_t assignWithTake for BorderedButtonSpec(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 41);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  *(a1 + 41) = v10;
  outlined consume of Environment<KeyboardShortcut?>.Content(v11, v12, v13, v15, v14);
  v16 = *(a2 + 56);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

unint64_t *assignWithTake for BorderedButtonColorSpec.LabelStyle(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

void *destructiveInjectEnumTag for BorderedButtonColorSpec.LabelStyle(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityCombinedLabeledContent(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabelPresentation and conformance AccessibilityLabelPresentation()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabelPresentation and conformance AccessibilityLabelPresentation;
  if (!lazy protocol witness table cache variable for type AccessibilityLabelPresentation and conformance AccessibilityLabelPresentation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelPresentation, &type metadata for AccessibilityLabelPresentation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabelPresentation and conformance AccessibilityLabelPresentation);
  }

  return result;
}

void *AccessibilityLabeledContentLabelModifier.Transform.value.getter@<X0>(uint64_t *a2@<X8>)
{
  AccessibilityProperties.init()();
  v9 = vdupq_n_s64(0x80000uLL);
  v10 = 0;
  if (*AGGraphGetValue() == 1)
  {
    v11 = 0x400000004;
    v12 = 0;
  }

  outlined init with copy of AccessibilityProperties(v8, v7);
  outlined init with copy of AccessibilityProperties(v7, v5);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v7);
  outlined destroy of AccessibilityProperties(v8);
  type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v3 = swift_allocObject();
  result = memcpy((v3 + 16), __src, 0x128uLL);
  *a2 = v3;
  a2[1] = 0;
  return result;
}

uint64_t closure #1 in static AccessibilityLabeledContentContentModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for AccessibilityLabeledContentContentModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

double AccessibilityLabeledContentContentModifier.Attachment.updateValue()(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 112);
  if (*AGGraphGetValue() != 1)
  {
    AccessibilityProperties.init()();
    outlined init with copy of AccessibilityProperties(&v53, __dst);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(&v53);
    type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v5 = swift_allocObject();
    memcpy((v5 + 16), __src, 0x128uLL);
    *__src = v5;
    *&__src[8] = 0;
    AGGraphSetOutputValue();
LABEL_21:

    return result;
  }

  if (AGGraphGetOutputValue() && (v3 & 1) != 0)
  {
    v4 = *(v1 + 2);
  }

  else
  {
    v6 = v1[5];
    v7 = v1[3];
    v57 = v1[4];
    v58 = v6;
    v8 = v1[5];
    v59 = v1[6];
    v9 = v1[1];
    v53 = *v1;
    v54 = v9;
    v10 = v1[3];
    v12 = *v1;
    v11 = v1[1];
    v55 = v1[2];
    v56 = v10;
    __dst[4] = v57;
    __dst[5] = v8;
    __dst[6] = v1[6];
    __dst[0] = v12;
    __dst[1] = v11;
    LOBYTE(v60) = *(v1 + 112);
    LOBYTE(__dst[7]) = *(v1 + 112);
    __dst[2] = v55;
    __dst[3] = v7;
    v13 = implicit closure #2 in AccessibilityLabeledContentContentModifier.Attachment.updateValue()(__dst, *(a1 + 16), *(a1 + 24));
    *&__src[64] = __dst[4];
    *&__src[80] = __dst[5];
    *&__src[96] = __dst[6];
    __src[112] = __dst[7];
    *__src = __dst[0];
    *&__src[16] = __dst[1];
    *&__src[32] = __dst[2];
    *&__src[48] = __dst[3];
    v14 = *(a1 - 8);
    (*(v14 + 16))(v49, &v53, a1);
    (*(v14 + 8))(__src, a1);
    AGGraphClearUpdate();
    v15 = AGSubgraphGetCurrent();
    v16 = AGSubgraphSetCurrent();
    v4 = (v13)(v16);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    *(v1 + 2) = v4;
    *(v1 + 112) = 1;
  }

  if (v4 == *MEMORY[0x1E698D3F8])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 2;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v17 = v39;
    outlined init with copy of AccessibilityAttachment.Tree(Value, __src);
    v19 = *__src;
    v20 = *&__src[16];
    v21 = *&__src[32];
    v23 = *&__src[48];
    v24 = *&__src[64];
    v25 = *&__src[80];
    v26 = *&__src[96];
    v27 = *&__src[112];
    v28 = *&__src[128];
    v29 = *&__src[144];
    v30 = *&__src[160];
    v31 = *&__src[176];
    v32 = *&__src[192];
    v33 = *&__src[208];
    v34 = *&__src[224];
    v35 = *&__src[240];
    v36 = *&__src[256];
    v37 = *&__src[272];
    v18 = *&__src[288];
    v22 = v52;
  }

  v53 = v19;
  v54 = v20;
  v55 = v21;
  v56 = v23;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v61 = v28;
  v62 = v29;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v66 = v33;
  v67 = v34;
  v68 = v35;
  v69 = v36;
  v70 = v37;
  v71 = v18;
  v72 = v22;
  if ((v17 & 1) == 0 && AGGraphGetOutputValue())
  {
    outlined destroy of AccessibilityAttachment.Tree(&v53);
    return result;
  }

  AccessibilityAttachment.Tree.properties.getter(__src);
  if (!*&__src[280])
  {
    _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_1(__src, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    AccessibilityProperties.init()();
    outlined init with copy of AccessibilityProperties(__dst, v49);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(__dst);
    type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v46 = swift_allocObject();
    memcpy((v46 + 16), __src, 0x128uLL);
    *__src = v46;
    *&__src[8] = 0;
    AGGraphSetOutputValue();
    outlined destroy of AccessibilityAttachment.Tree(&v53);
    goto LABEL_21;
  }

  memcpy(__dst, __src, sizeof(__dst));
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v41 = *(*__src + 16);

  AccessibilityProperties.init(reserving:)();
  v42 = *(&__dst[1] + 1);
  if (*(&__dst[1] + 1))
  {
    v43 = 0;
  }

  else
  {
    v43 = __dst[2];
  }

  swift_bridgeObjectRetain_n();

  v49[3] = v42;
  v50 = v43;
  if (v41)
  {
    AccessibilityProperties.subscript.getter();
    v44 = specialized Sequence.compactMap<A>(_:)(*__src, 0, 0, 0, 0, v49);

    *__src = v44;
    AccessibilityProperties.subscript.setter();
  }

  outlined init with copy of AccessibilityProperties(v49, v48);
  outlined init with copy of AccessibilityProperties(v48, v47);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v48);
  type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v45 = swift_allocObject();
  memcpy((v45 + 16), __src, 0x128uLL);
  *__src = v45;
  *&__src[8] = 0;
  AGGraphSetOutputValue();
  outlined destroy of AccessibilityProperties(__dst);
  outlined destroy of AccessibilityAttachment.Tree(&v53);

  outlined destroy of AccessibilityProperties(v49);
  return result;
}

uint64_t (*implicit closure #2 in AccessibilityLabeledContentContentModifier.Attachment.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v19[5] = *(a1 + 80);
  v19[6] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v19[1] = v8;
  v19[2] = v9;
  v20 = *(a1 + 112);
  v19[3] = v10;
  v19[4] = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 80);
  *(v11 + 96) = *(a1 + 64);
  *(v11 + 112) = v12;
  *(v11 + 128) = *(a1 + 96);
  *(v11 + 144) = *(a1 + 112);
  v13 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  v14 = *(a1 + 48);
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 80) = v14;
  v16 = type metadata accessor for AccessibilityLabeledContentContentModifier.Attachment(0, a2, a3, v15);
  (*(*(v16 - 8) + 16))(v18, v19, v16);
  return partial apply for implicit closure #3 in implicit closure #2 in AccessibilityLabeledContentContentModifier.Attachment.updateValue();
}

uint64_t AccessibilityLabeledContentContentModifier.Attachment.makeAttachment()(uint64_t a1)
{
  _ViewInputs.withoutGeometryDependencies.getter();
  DWORD1(v13) &= ~0x40u;
  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.setter();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.add(_:)();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v18 = v16;
  v17[0] = v11;
  v17[1] = v12;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(a1 + 24);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v6 = type metadata accessor for AccessibilityAttachmentChild(0, v2, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityAttachmentChild<A>, v6);
  _GraphValue.init<A>(_:)();
  v9[0] = v4;
  v9[1] = lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier();
  swift_getWitnessTable(MEMORY[0x1E697E858], v3, v9);
  static View.makeDebuggableView(view:inputs:)();
  *&v11 = v9[3];
  DWORD2(v11) = v10;
  v7 = PreferencesOutputs.subscript.getter();

  if ((v7 & 0x100000000) != 0)
  {
    v7 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v7 = v7;
  }

  outlined destroy of _ViewInputs(v17);
  return v7;
}

uint64_t AccessibilityLabeledContentRootModifier.ResolvedPresentation.value.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for AccessibilityLabelPresentation?, &type metadata for AccessibilityLabelPresentation, MEMORY[0x1E69E6720]);
  v2 = *AGGraphGetValue();
  if (v2 == 2)
  {
    LOBYTE(v2) = *MEMORY[0x1E698D3F8] != v1 && *AGGraphGetValue() == 2;
  }

  return v2 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation@<X0>(_BYTE *a1@<X8>)
{
  result = AccessibilityLabeledContentRootModifier.ResolvedPresentation.value.getter(*v1);
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance AccessibilityPresentation@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static AccessibilityPresentation.defaultValue;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityClearLabeledContentModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityClearLabeledContentModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

char *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v36 = a2;
  *(&v36 + 1) = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a5;
    v8 = a4;
    v9 = MEMORY[0x1E69E7CC0];
    for (i = (a1 + 32); ; i += 6)
    {
      v45 = v9;
      v41 = v36;
      *&v42[0] = v8;
      *(&v42[0] + 1) = v7;
      v11 = i[3];
      v12 = i[4];
      __swift_project_boxed_opaque_existential_1(i, v11);
      v13 = *(v12 + 80);
      v14 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
      if ((v13(&v41, &type metadata for AccessibilityVoidAction, v14, v11, v12) & 1) == 0)
      {
        break;
      }

      v35 = v6;
      v15 = i[3];
      v16 = i[4];
      __swift_project_boxed_opaque_existential_1(i, v15);
      (*(v16 + 24))(&v41, v15, v16);
      v37 = *(&v41 + 1);
      v38 = v41;
      v17 = *(&v42[0] + 1);
      v39 = *&v42[0];
      v18 = *(a6 + 24);
      if (v18 && *(v18 + 16))
      {
        v19 = *(v18 + 56);
        v20 = *(v18 + 32);
        v21 = *(v18 + 40);
        v22 = *(v18 + 48);
        outlined copy of Text.Storage(v20, v21, *(v18 + 48));
        v23 = v19;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
      }

      v24 = i[3];
      v25 = i[4];
      __swift_project_boxed_opaque_existential_1(i, v24);
      v40[0] = v38;
      v40[1] = v37;
      v40[2] = v39;
      v40[3] = v17;
      (*(v25 + 64))(&v43, v40, v20, v21, v22, v23, v24, v25);
      outlined consume of Text?(v20, v21, v22, v23);
      outlined consume of AccessibilityActionCategory?(v38, v37, v39, v17);
      v8 = a4;
      v7 = a5;
      v6 = v35;
      if (*&v44[8])
      {
        goto LABEL_12;
      }

      _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_1(&v43, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      v9 = v45;
LABEL_4:
      if (!--v6)
      {
        return v9;
      }
    }

    outlined init with copy of AnyAccessibilityAction(i, &v43);
LABEL_12:
    v41 = v43;
    v42[0] = *v44;
    *(v42 + 9) = *&v44[9];
    v9 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    if (v27 >= v26 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
    }

    *(v9 + 2) = v27 + 1;
    v28 = &v9[48 * v27];
    v29 = v41;
    v30 = v42[0];
    *(v28 + 57) = *(v42 + 9);
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t assignWithCopy for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for AccessibilityLabeledContentContentModifier.Attachment(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t outlined consume of AccessibilityActionCategory?(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return outlined consume of AccessibilityActionCategory.Category(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t outlined consume of AccessibilityActionCategory.Category(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for AccessibilityLabelPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRepresentableStyleModifier, &type metadata for AccessibilityRepresentableStyleModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier);
  }

  return result;
}

void *ViewTraitCollection.insertInteraction(for:)(char a1)
{
  v2 = 1;
  result = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v5)
  {
    return v2;
  }

  if (!__OFADD__(v4, a1 & 1))
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return v4;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall OnInsertInteraction.canInsert(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  rawValue = a1._rawValue;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 16);
  v15[2] = v6 + 16;
  v16 = v9;

  v15[1] = v3;

  v10 = 0;
  do
  {
    v11 = v16 != v10;
    if (v16 == v10)
    {
      break;
    }

    v12 = (*(v6 + 16))(v8, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10++, v5);
    MEMORY[0x1EEE9AC00](v12);
    v15[-2] = v8;
    v13 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in OnInsertInteraction.canInsert(_:), &v15[-4], rawValue);
    (*(v6 + 8))(v8, v5);
  }

  while ((v13 & 1) == 0);

  return v11;
}

uint64_t DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;

  v16[0] = static Transferable.readableContentTypes.getter();
  v16[1] = partial apply for closure #1 in DynamicViewContent.dropDestination<A>(for:action:);
  v16[2] = v13;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  MEMORY[0x18D00A570](v16, a4, v14, *(a6 + 8));
}

void closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v52 = a5;
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  v56 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  AtomicBox.init(wrappedValue:)();
  v19 = a2;
  v20 = aBlock[0];
  v53 = a2;
  v50 = v12;
  v51 = v11;
  v48 = v14;
  v49 = v15;
  v47 = v16;
  if (a2 >> 62)
  {
    v42 = __CocoaSet.count.getter();
    v19 = v53;
    v21 = v42;
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v54;
  v23 = v52;
  if (!v21)
  {
    goto LABEL_11;
  }

  if (v21 >= 1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      v23 = v52;
      do
      {
        MEMORY[0x18D00E9C0](v24++, v53);
        dispatch_group_enter(v18);
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a6;
        v25[4] = v22;
        v25[5] = a8;
        v25[6] = v18;
        v25[7] = v20;
        v26 = v18;

        v27 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v22 = v54;
      }

      while (v21 != v24);
    }

    else
    {
      v28 = (v19 + 32);
      v23 = v52;
      do
      {
        v29 = *v28++;
        v30 = v29;
        dispatch_group_enter(v18);
        v31 = swift_allocObject();
        v31[2] = v23;
        v31[3] = a6;
        v31[4] = v22;
        v31[5] = a8;
        v31[6] = v18;
        v31[7] = v20;
        v32 = v18;

        v33 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        v22 = v54;

        --v21;
      }

      while (v21);
    }

LABEL_11:
    type metadata accessor for OS_dispatch_queue();
    v34 = static OS_dispatch_queue.main.getter();
    v35 = swift_allocObject();
    v35[2] = v23;
    v35[3] = a6;
    v35[4] = v22;
    v35[5] = a8;
    v36 = v44;
    v37 = v45;
    v35[6] = v43;
    v35[7] = v37;
    v35[8] = v20;
    v35[9] = v36;
    aBlock[4] = partial apply for closure #2 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:);
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_37;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type _TraitWritingModifier<OnInsertTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v40 = v48;
    v41 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v38);

    (*(v50 + 8))(v40, v41);
    (*(v47 + 8))(v39, v49);

    return;
  }

  __break(1u);
}

void type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<OnInsertTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<OnInsertTraitKey>);
    }
  }
}

void closure #1 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(v9, a4);
}

uint64_t DynamicViewContent.onInsert(of:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  return MEMORY[0x18D00A570](v9, a4, v7, *(a5 + 8));
}

uint64_t DynamicViewContent.onInsert(of:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v29 = a6;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (v12 + 48);
    v32 = v12;
    v16 = (v12 + 32);
    v17 = a1 + 40;
    v18 = MEMORY[0x1E69E7CC0];
    v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v15)(v9, 1, v10) == 1)
      {
        outlined destroy of UTType?(v9);
      }

      else
      {
        v19 = *v16;
        (*v16)(v13, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v22 = v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
        v13 = v31;
        v19(v22, v31, v10);
      }

      v17 += 16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v33[0] = v18;
  v33[1] = v26;
  v33[2] = v27;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  MEMORY[0x18D00A570](v33, v30, v23, *(v28 + 8));
}

id closure #1 in closure #1 in OnInsertInteraction.canInsert(_:)(void **a1, double a2)
{
  v2 = *a1;
  v3 = UTType.identifier.getter();
  v4 = MEMORY[0x18D00C850](v3);

  v5 = [v2 hasItemConformingToTypeIdentifier_];

  return v5;
}

Swift::Void __swiftcall OnInsertInteraction.insert(_:)(Swift::OpaquePointer a1)
{
  v5 = v4;
  if (v1)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v10 = swift_allocObject();
    v10[2]._rawValue = v8;
    v10[3]._rawValue = v7;
    v10[4]._rawValue = v6;
    v10[5]._rawValue = v8;
    v10[6]._rawValue = v7;
    v10[7]._rawValue = v6;
    v10[8]._rawValue = v5;
    v10[9]._rawValue = a1._rawValue;
    outlined copy of PasteHelper?(v8, v7, v6);
    outlined copy of PasteHelper?(v8, v7, v6);

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    _StringGuts.grow(_:)(76);
    MEMORY[0x18D00C9B0](0xD000000000000027, 0x800000018CD4B9C0);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD4B9F0);
    MEMORY[0x18D009810](0, 0xE000000000000000);
  }
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<OnInsertTraitKey> and conformance _TraitWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double View.popoverEdgeAppearance(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  View.transformPreference<A>(_:_:)();

  return result;
}

Swift::Int PopoverEdgeAppearance.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance()
{
  result = lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance;
  if (!lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PopoverEdgeAppearance, &type metadata for PopoverEdgeAppearance, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind()
{
  result = lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind;
  if (!lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PopoverEdgeAppearance.Kind, &type metadata for PopoverEdgeAppearance.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind);
  }

  return result;
}

double protocol witness for View.body.getter in conformance IndexView@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  outlined init with copy of _VariadicView_Children((v1 + 3), (a1 + 3));
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

BOOL ViewGraphBridgePropertiesFeature.needsUpdate(graph:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v33 = *(v1 + 48);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a1 + 208);
    v10 = v6;
    v11 = v4;
    v12 = v5;
    ObjectType = swift_getObjectType();
    v14 = type metadata accessor for ViewGraphBridgePropertiesDelegate();
    (*(v9 + 16))(&v34, v14, v14, ObjectType, v9);
    swift_unknownObjectRelease();
    if (v34)
    {
      swift_unknownObjectRelease();
      v15 = *MEMORY[0x1E698D3F8];
      outlined copy of EnvironmentValues?(v8, v7);
      if (v3 == v15)
      {
        if (v8 != 1)
        {
          goto LABEL_16;
        }

LABEL_14:
        v21 = 0;
        goto LABEL_20;
      }

      Value = AGGraphGetValue();
      v20 = *Value;
      v19 = Value[1];

      if (v8 == 1)
      {
        if (v20 != 1)
        {
          v22 = v20;
          v23 = v19;
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (v20 == 1)
      {
LABEL_16:
        v22 = v8;
LABEL_17:
        v23 = v7;
LABEL_19:
        outlined consume of EnvironmentValues?(v22, v23);
        v21 = 1;
        goto LABEL_20;
      }

      if (v8)
      {
        if (!v20)
        {
          outlined consume of EnvironmentValues?(0, v19);
          goto LABEL_16;
        }

        outlined consume of EnvironmentValues?(v20, v19);
        outlined consume of EnvironmentValues?(v8, v7);
        v21 = v8 != v20;
      }

      else
      {
        if (v20)
        {
          outlined consume of EnvironmentValues?(v20, v19);
          v22 = 0;
          goto LABEL_17;
        }

        outlined consume of EnvironmentValues?(0, v19);
        outlined consume of EnvironmentValues?(0, v7);
        v21 = 0;
      }

LABEL_20:
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v26 = *WeakValue;
        v25 = WeakValue[1];
        v28 = WeakValue[2];
        v27 = WeakValue[3];

        if (v28)
        {
          if (v10)
          {
            if (v26 == v11)
            {
              if (v25 == v12)
              {

                if (_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v28, v10))
                {
                  v29 = _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v27, v33);

                  outlined consume of ViewGraphBridgeProperties?(v11, v12, v28);
                  result = v21;
                  if (v29)
                  {
                    return result;
                  }

                  return 1;
                }

                v30 = v11;
                v31 = v12;
                goto LABEL_38;
              }

              v30 = v11;
            }

            else
            {
              v30 = v26;
            }

            v31 = v25;
LABEL_38:
            v32 = v28;
            goto LABEL_39;
          }

LABEL_31:
          outlined copy of ViewGraphBridgeProperties?(v11, v12, v10);
          outlined consume of ViewGraphBridgeProperties?(v26, v25, v28);
          v30 = v11;
          v31 = v12;
          v32 = v10;
LABEL_39:
          outlined consume of ViewGraphBridgeProperties?(v30, v31, v32);
          return 1;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      result = v21;
      if (!v10)
      {
        return result;
      }

      v28 = 0;
      goto LABEL_31;
    }
  }

  return AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8] || v3 != *MEMORY[0x1E698D3F8];
}

uint64_t ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v4 = *(a1 + 208), v5 = swift_getObjectType(), v6 = type metadata accessor for ViewGraphBridgePropertiesDelegate(), (*(v4 + 16))(&v33, v6, v6, v5, v4), swift_unknownObjectRelease(), v33))
  {
    v7 = v34;
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v9 = *WeakValue;
      v10 = WeakValue[1];
      v12 = WeakValue[2];
      v11 = WeakValue[3];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 0;
    }

    ObjectType = swift_getObjectType();
    v14 = (*(v7 + 8))(v9, v10, v12, v11, 3, ObjectType, v7);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    outlined consume of ViewGraphBridgeProperties?(v9, v10, v12);
    v21 = v2[7];
    v22 = v2[8];
    v23 = v2[10];
    v30 = v21;
    v31 = v2[9];
    v32 = v22;
    if (!v31)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      outlined consume of ViewGraphBridgeProperties?(v14, v16, v18);
      outlined consume of ViewGraphBridgeProperties?(v21, v22, 0);
      v26 = v14;
      v24 = v16;
      v27 = 0;
      goto LABEL_17;
    }

    if (v14 != v21)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v25 = v21;
      v26 = v14;
      v27 = v31;
      outlined copy of ViewGraphBridgeProperties?(v25, v32, v31);

      v24 = v16;
      goto LABEL_17;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v24 = v16;
    if (v16 != v22)
    {
      outlined copy of ViewGraphBridgeProperties?(v14, v22, v31);

      v26 = v14;
      v27 = v31;
      goto LABEL_17;
    }

    outlined copy of ViewGraphBridgeProperties?(v14, v16, v31);
    if ((_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v18, v31) & 1) == 0)
    {

      v27 = v31;
      v26 = v14;
      goto LABEL_17;
    }

    v29 = _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v20, v23);

    v27 = v31;
    v26 = v14;
    if ((v29 & 1) == 0)
    {
LABEL_17:
      v33 = v2[1];
      v34 = v26;
      v35 = v24;
      v36 = v18;
      v37 = v20;
      lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();

      swift_unknownObjectRelease();
      outlined consume of ViewGraphBridgeProperties?(v30, v32, v27);
      v2[7] = v26;
      v2[8] = v24;
      v2[9] = v18;
      v2[10] = v20;
      return $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(v2);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = *MEMORY[0x1E698D3F8];
  }

  return $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(v2);
}

uint64_t $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v15 = *WeakValue;
    v3 = *(WeakValue + 16);
    v4 = *(WeakValue + 24);

    v5 = v15;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *(a1 + 24) = v5;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  outlined consume of ViewGraphBridgeProperties?(v6, v7, v8);
  if (*(a1 + 16) == *MEMORY[0x1E698D3F8])
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v9 = Value[1];
  }

  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  *(a1 + 88) = v10;
  *(a1 + 96) = v9;

  return outlined consume of EnvironmentValues?(v12, v13);
}

uint64_t ViewGraphBridgePropertiesFeature.MakeBridgeProperties.value.getter(__n128 a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  if (v4)
  {
    v5 = v1[1];
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v5 = *WeakValue;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v5 = static ViewGraphBridgeProperties.defaultValue;
    }
  }

  outlined copy of ViewGraphBridgeProperties?(v2, v3, v4);
  return v5;
}

uint64_t protocol witness for Rule.value.getter in conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties@<X0>(uint64_t *a1@<X8>)
{
  result = ViewGraphBridgePropertiesFeature.MakeBridgeProperties.value.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double closure #1 in ViewGraphBridgePropertiesFeature.BridgePropertiesMutation.apply()(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  outlined init with copy of ViewGraphBridgeProperties?(&v10, &v9);
  outlined consume of ViewGraphBridgeProperties?(v4, v5, v6);
  result = *&v10;
  v8 = v11;
  *(a1 + 1) = v10;
  *(a1 + 3) = v8;
  return result;
}

uint64_t ViewGraphBridgePropertiesFeature.BridgePropertiesMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if (swift_dynamicCast())
  {
    v6 = v11[2];
    v8 = v11[3];
    v7 = v11[4];
    v9 = v11[5];
    if (static WeakAttribute.== infix(_:_:)())
    {
      outlined consume of ViewGraphBridgeProperties?(v2[1], v2[2], v2[3]);
      v2[1] = v6;
      v2[2] = v8;
      result = 1;
      v2[3] = v7;
      v2[4] = v9;
      return result;
    }

    outlined consume of ViewGraphBridgeProperties?(v6, v8, v7);
  }

  return 0;
}

uint64_t protocol witness for GraphMutation.apply() in conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v1);
    return AGGraphMutateAttribute();
  }

  return result;
}

void protocol witness for ViewGraphFeature.uninstantiate(graph:) in conformance ViewGraphBridgePropertiesFeature()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = *MEMORY[0x1E698D3F8];
}

uint64_t _UIHostingView.updateRequiredBridges(bridgeProperties:allowedActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a5;
  v11 = MEMORY[0x1E69E7D40];
  v29 = *MEMORY[0x1E69E7D40] & *v5;
  if (one-time initialization token for defaultValue == -1)
  {
    if (a3)
    {
LABEL_3:
      v12 = a1;
      v13 = a2;
      v14 = a3;
      v15 = a4;
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v13 = *(&static ViewGraphBridgeProperties.defaultValue + 1);
  v12 = static ViewGraphBridgeProperties.defaultValue;
  v14 = qword_1ED5A7320;
  v15 = unk_1ED5A7328;

LABEL_6:
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  if (_UIHostingView.delegate.getter())
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    v20 = outlined copy of ViewGraphBridgeProperties?(a1, a2, a3);
    v19(v6, &v31, *(v29 + 80), *(v29 + 88), ObjectType, v17, v20);
    v11 = MEMORY[0x1E69E7D40];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined copy of ViewGraphBridgeProperties?(a1, a2, a3);
  }

  v21 = _UIHostingView.viewController.getter();
  if (v21)
  {
    v22 = v21;
    UIHostingController.resolveRequiredBridges(_:allowedActions:)(v31, v32, v33, v34, v30);
  }

  v23 = _UIHostingView.viewController.getter();
  if (v23)
  {
    v25 = v23;
    UIHostingController.updateViewGraphBridges(_:)(&v31);
  }

  v26 = _UIHostingView.sheetBridge.getter(v23, v24);
  if (v26)
  {
    v27 = v26;
    (*((*v11 & *v26) + 0x220))(&v31);
  }

  return v31;
}

double outlined copy of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

double destroy for ViewGraphBridgePropertiesFeature(void *a1)
{
  if (a1[5])
  {
  }

  if (a1[9])
  {
  }

  if (a1[11] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;

    v6 = *(a2 + 72);
    if (v6)
    {
LABEL_3:
      *(a1 + 56) = *(a2 + 56);
      v7 = *(a2 + 80);
      *(a1 + 72) = v6;
      *(a1 + 80) = v7;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 72);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_6:
  v8 = *(a2 + 88);
  if (v8 == 1)
  {
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v9 = *(a2 + 96);
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
  }

  return a1;
}

uint64_t assignWithCopy for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 24);
      v5 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
  }

  v7 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v7)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 56);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v9 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v9;
  }

  v10 = *(a2 + 88);
  if (*(a1 + 88) != 1)
  {
    if (v10 != 1)
    {
      *(a1 + 88) = v10;

      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of EnvironmentValues(a1 + 88);
    goto LABEL_20;
  }

  if (v10 == 1)
  {
LABEL_20:
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  *(a1 + 88) = v10;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 40))
  {
LABEL_6:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    if (!*(a1 + 72))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v4 = *(a2 + 40);
  if (!v4)
  {
    outlined destroy of ViewGraphBridgeProperties(a1 + 24);
    goto LABEL_6;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;

  *(a1 + 48) = *(a2 + 48);

  if (!*(a1 + 72))
  {
    goto LABEL_10;
  }

LABEL_7:
  v5 = *(a2 + 72);
  if (v5)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v5;

    *(a1 + 80) = *(a2 + 80);

    goto LABEL_11;
  }

  outlined destroy of ViewGraphBridgeProperties(a1 + 56);
LABEL_10:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  v6 = *(a2 + 88);
  if (*(a1 + 88) != 1)
  {
    if (v6 != 1)
    {
      *(a1 + 88) = v6;

      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of EnvironmentValues(a1 + 88);
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewGraphBridgePropertiesFeature(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ViewGraphBridgePropertiesFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for ViewGraphBridgePropertiesDelegate()
{
  result = lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate;
  if (!lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate);
  }

  return result;
}

uint64_t outlined consume of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesFeature.BridgePropertiesMutation, &unk_1EFFC8F00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation);
  }

  return result;
}

uint64_t specialized ViewGraphBridgePropertiesFeature.modifyViewInputs(inputs:graph:)(uint64_t *a1)
{
  v2 = a1[2];
  lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();

  PropertyList.subscript.getter();

  AGWeakAttributeGetAttribute();
  *v1 = AGCreateWeakAttribute();
  swift_beginAccess();
  *(v1 + 16) = *(v2 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties();
  Attribute.init<A>(body:value:flags:update:)();
  *(v1 + 8) = AGCreateWeakAttribute();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewGraphBridgePropertiesFeature.MakeBridgeProperties, &type metadata for ViewGraphBridgePropertiesFeature.MakeBridgeProperties, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties);
  }

  return result;
}

uint64_t destroy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
  }

  return result;
}

__n128 initializeWithCopy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 24);
  if (v2)
  {
    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
  }

  else
  {
    result = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a1 + 8) = result;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t assignWithCopy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 8);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t assignWithTake for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of ViewGraphBridgeProperties(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t outlined init with copy of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewGraphBridgeProperties?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ViewGraphBridgeProperties?()
{
  if (!lazy cache variable for type metadata for ViewGraphBridgeProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewGraphBridgeProperties?);
    }
  }
}

uint64_t NewDocumentButton.body.getter@<X0>(_BYTE *a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  *a2 = 4;
  type metadata accessor for Button<Text>(0, x1_0, a3, a4);
  v8 = v7;
  v9 = &a2[*(v7 + 36)];
  *v9 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v9[1] = 0;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #2 in NewDocumentButton.body.getter(v5, &a2[*(v8 + 40)]);
  type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>(0, v10, v11, v12);
  v14 = *(v13 + 36);

  return outlined init with copy of _Benchmark((v5 + 4), &a2[v14]);
}

uint64_t closure #2 in NewDocumentButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    v7 = *a1;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;

  return outlined copy of Text?(v3, v4, v5, v6);
}

void type metadata accessor for Button<Text>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Button<Text>)
  {
    v4 = type metadata accessor for Button(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Button<Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>)
  {
    type metadata accessor for Button<Text>(255, a2, a3, a4);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>);
    }
  }
}

uint64_t NewDocumentButton<>.init(_:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v26 = a4;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  outlined init with copy of UTType?(a5, &v25 - v19);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    (*(v12 + 32))(v17, v20, v11);
    (*(v12 + 16))(v14, v17, v11);
    *(&v28 + 1) = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
    v29 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy, protocol conformance descriptor for ContentTypeDocumentCreationStrategy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    ContentTypeDocumentCreationStrategy.init(_:)(v14, boxed_opaque_existential_1);
    (*(v12 + 8))(v17, v11);
    if (*(&v28 + 1))
    {
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v30);
      goto LABEL_7;
    }
  }

  v31 = type metadata accessor for DefaultDocumentCreationStrategy(0);
  v32 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy, protocol conformance descriptor for DefaultDocumentCreationStrategy);
  v22 = __swift_allocate_boxed_opaque_existential_1(&v30);
  DefaultDocumentCreationStrategy.init()(v22);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (*(&v28 + 1))
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(&v27, &lazy cache variable for type metadata for DocumentCreationStrategy?, type metadata accessor for DocumentCreationStrategy);
  }

LABEL_7:
  *a6 = a1;
  a6[1] = a2;
  v23 = v26;
  a6[2] = a3;
  a6[3] = v23;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, (a6 + 4));
}

uint64_t makeStrategy(contentType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  outlined init with copy of UTType?(a1, &v17 - v12);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    *(&v18 + 1) = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
    v19 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy, protocol conformance descriptor for ContentTypeDocumentCreationStrategy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    ContentTypeDocumentCreationStrategy.init(_:)(v7, boxed_opaque_existential_1);
    (*(v5 + 8))(v10, v4);
    if (*(&v18 + 1))
    {
      return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, a2);
    }
  }

  a2[3] = type metadata accessor for DefaultDocumentCreationStrategy(0);
  a2[4] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy, protocol conformance descriptor for DefaultDocumentCreationStrategy);
  v16 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = DefaultDocumentCreationStrategy.init()(v16);
  if (*(&v18 + 1))
  {
    return _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(&v17, &lazy cache variable for type metadata for DocumentCreationStrategy?, type metadata accessor for DocumentCreationStrategy);
  }

  return result;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t NewDocumentButton<>.init(_:contentType:)@<X0>(uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13 & 1;
  makeStrategy(contentType:)(a5, a6 + 4);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *a6 = v8;
  a6[1] = v10;
  a6[2] = v14;
  a6[3] = v12;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  makeStrategy(contentType:)(a2, a5 + 4);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a2, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  result = (*(v9 + 8))(a1, a3);
  *a5 = v12;
  a5[1] = v14;
  a5[2] = v18;
  a5[3] = v16;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25 = a3;
  v26 = a4;
  v16 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - v18;
  outlined init with copy of UTType?(a5, &v25 - v18);
  v21 = type metadata accessor for FileDocumentCreationStrategy(0, a9, a10, v20);
  a8[7] = v21;
  a8[8] = swift_getWitnessTable(protocol conformance descriptor for FileDocumentCreationStrategy<A>, v21);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v19, a6, a7, a9, a10, boxed_opaque_existential_1);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, v16);
  *a8 = a1;
  a8[1] = a2;
  v24 = v26;
  a8[2] = v25;
  a8[3] = v24;
  return result;
}

{
  v25 = a3;
  v26 = a4;
  v16 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - v18;
  v21 = type metadata accessor for ReferenceFileDocumentCreationStrategy(0, a9, a10, v20);
  outlined init with copy of UTType?(a5, v19);

  v22 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v19, a6, a7);
  a8[7] = v21;
  a8[8] = swift_getWitnessTable("\b6\n", v21);

  a8[4] = v22;
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, v16);
  *a8 = a1;
  a8[1] = a2;
  v24 = v26;
  a8[2] = v25;
  a8[3] = v24;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v12 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  v22 = v21 & 1;
  outlined init with copy of UTType?(a5, v15);
  v24 = type metadata accessor for FileDocumentCreationStrategy(0, a9, a10, v23);
  a8[7] = v24;
  a8[8] = swift_getWitnessTable(protocol conformance descriptor for FileDocumentCreationStrategy<A>, v24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v15, v28, v29, a9, a10, boxed_opaque_existential_1);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, v12);
  *a8 = v16;
  a8[1] = v18;
  a8[2] = v22;
  a8[3] = v20;
  return result;
}

{
  v28 = a5;
  v29 = a6;
  v12 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  v22 = v21 & 1;
  v23 = type metadata accessor for ReferenceFileDocumentCreationStrategy(0, a9, a10, v19);
  v24 = v28;
  outlined init with copy of UTType?(v28, v15);

  v25 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v15, v29, a7);
  a8[7] = v23;
  a8[8] = swift_getWitnessTable("\b6\n", v23);

  a8[4] = v25;
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(v24, &lazy cache variable for type metadata for UTType?, v12);
  *a8 = v16;
  a8[1] = v18;
  a8[2] = v22;
  a8[3] = v20;
  return result;
}

uint64_t NewDocumentButton<>.init<A, B>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v36 = a5;
  v37 = a7;
  v39 = a3;
  v40 = a4;
  v35 = a1;
  v38 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = *(a6 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v16 + 16))(&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6, v18);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v34 = v23;
  v25 = v24 & 1;
  outlined init with copy of UTType?(a2, v15);
  v26 = v36;
  v27 = v37;
  v29 = type metadata accessor for FileDocumentCreationStrategy(0, v36, v37, v28);
  a8[7] = v29;
  a8[8] = swift_getWitnessTable(protocol conformance descriptor for FileDocumentCreationStrategy<A>, v29);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v15, v39, v40, v26, v27, boxed_opaque_existential_1);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a2, &lazy cache variable for type metadata for UTType?, v38);
  result = (*(v16 + 8))(v35, a6);
  *a8 = v20;
  a8[1] = v22;
  v32 = v34;
  a8[2] = v25;
  a8[3] = v32;
  return result;
}

{
  v35 = a7;
  v36 = a3;
  v33 = a1;
  v34 = a2;
  v37 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = *(a6 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v17 + 16))(&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6, v19);
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v32 = v24;
  v26 = v25 & 1;
  v27 = type metadata accessor for ReferenceFileDocumentCreationStrategy(0, a5, v35, v24);
  v28 = v34;
  outlined init with copy of UTType?(v34, v16);

  v29 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v16, v36, a4);
  a8[7] = v27;
  a8[8] = swift_getWitnessTable("\b6\n", v27);

  a8[4] = v29;
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(v28, &lazy cache variable for type metadata for UTType?, v37);
  result = (*(v17 + 8))(v33, a6);
  *a8 = v21;
  a8[1] = v23;
  v31 = v32;
  a8[2] = v26;
  a8[3] = v31;
  return result;
}

uint64_t NewDocumentButton<>.init(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v24 = a4;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a5, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  a8[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a8[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy, "$6\n");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v17, a6, a7, boxed_opaque_existential_1);
  result = (*(v19 + 8))(a5, v18);
  *a8 = a1;
  a8[1] = a2;
  v22 = v24;
  a8[2] = a3;
  a8[3] = v22;
  return result;
}

uint64_t NewDocumentButton<>.init(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v25 = a7;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19 & 1;
  v21 = type metadata accessor for UTType();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, a5, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  a8[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a8[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy, "$6\n");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v13, a6, v25, boxed_opaque_existential_1);
  result = (*(v22 + 8))(a5, v21);
  *a8 = v14;
  a8[1] = v16;
  a8[2] = v20;
  a8[3] = v18;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v16);
  v28 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22 & 1;
  v24 = type metadata accessor for UTType();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, a2, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  a7[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a7[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy, "$6\n");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v13, v30, v31, boxed_opaque_existential_1);
  (*(v25 + 8))(a2, v24);
  result = (*(v14 + 8))(v29, a5);
  *a7 = v28;
  a7[1] = v19;
  a7[2] = v23;
  a7[3] = v21;
  return result;
}